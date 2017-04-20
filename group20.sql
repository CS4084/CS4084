-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 04:13 PM
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
(12, 'uploads/tasks/12/Design Deliverable.docx', 'uploads/tasks/12/sample/Database Tables 2-2.docx'),
(13, 'uploads/tasks/13/Database Tables 2-2.docx', 'uploads/tasks/13/sample/attributions.txt'),
(14, 'uploads/tasks/14/Deliverable2_Group20.pdf', 'uploads/tasks/14/sample/attributions.txt'),
(15, 'uploads/tasks/15/attributions.txt', 'uploads/tasks/15/sample/DatabaseDesign.txt'),
(16, 'uploads/tasks/16/test.txt', 'uploads/tasks/16/sample/test.txt'),
(17, 'uploads/tasks/17/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/17/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(18, 'uploads/tasks/18/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/18/sample/20170130-0340_CS4416_-_Tutorial_1.pdf');

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
(5, 'Computer Systems'),
(11, 'Science & Engineering'),
(17, 'Science and Engineering'),
(18, 'Science and Engineering'),
(19, 'Science and Engineering'),
(20, 'Education and Health Sciences'),
(21, 'Science and Engineering'),
(22, 'Arts and Humanities'),
(0, 'Arts and Humanities'),
(23, 'Business'),
(24, 'Science and Engineering');

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
('android', 14),
('test', 15);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `taskTitle` varchar(32) NOT NULL,
  `taskDate` datetime NOT NULL,
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
(1, 5, 'MA-4410', '2017-03-23 00:00:00', 'sfdsdf', 'Maths', 'Education and Health Sciences', 100, 100, '2017-03-24', '2017-03-31'),
(2, 5, 'CS-4012', '2017-03-23 00:00:00', '', 'Representation and modelling', 'Education and Health Sciences', 100, 200, '2017-03-24', '2017-03-31'),
(3, 7, 'CS-4027', '2017-03-27 00:00:00', 'Project', 'Information and computer knowledge retrieval', 'Science and Engineering', 100, 10000, '2017-03-29', '2017-04-05'),
(4, 7, 'CS4014 Project', '2017-03-27 00:00:00', 'Project', 'Design and create a functional website', 'Science and Engineering', 100, 10000, '2017-03-29', '2017-04-05'),
(5, 7, 'CS-4051', '2017-03-27 00:00:00', 'Project', 'Medical support systems', 'Education and Health Sciences', 100, 10000, '2017-03-29', '2017-04-05'),
(6, 5, 'Web Project', '2017-03-27 00:00:00', 'Project', 'Cs4014 Web project', 'Science and Engineering', 10, 100, '2017-03-30', '2017-04-02'),
(7, 5, 'CS-4052', '2017-03-27 00:00:00', 'thrth', 'Interaction Design', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(8, 5, 'CS-2911', '2017-03-27 00:00:00', 'thrth', 'Introduction to IT', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(9, 5, 'CS-4061', '2017-03-27 00:00:00', 'thrth', 'Media Programming', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(10, 5, 'CS-4031', '2017-03-27 00:00:00', 'gfhfgh', 'Introduction to digital media', 'Education and Health Sciences', 10, 100, '2017-03-30', '2017-04-02'),
(11, 7, 'testing', '2017-03-27 00:00:00', 'project', 'software testing', 'Science and Engineering', 5, 500, '2017-05-05', '2017-06-07'),
(12, 11, 'CS4084 App Development Project', '2017-03-27 00:00:00', 'Project', 'Create an android app.', 'Science and Engineering', 10, 1000, '2017-03-31', '2017-04-02'),
(13, 11, 'Test', '2017-03-29 00:00:00', 'Project', 'Project', 'Education and Health Sciences', 1, 1, '2017-03-30', '2017-04-01'),
(14, 11, 'Test', '2017-04-05 00:00:00', 'test', 'test', 'Education and Health Sciences', 1, 1, '2017-04-29', '2017-04-30'),
(15, 11, 'Test2', '2017-04-05 12:16:19', 'test', 'test', 'Education and Health Sciences', 1, 1, '2017-04-28', '2017-04-30'),
(16, 20, 'Database Systems', '2017-04-20 12:10:10', 'Project', 'SQL Project', 'Education and Health Sciences', 5, 1000, '2017-04-30', '2017-05-01'),
(17, 15, 'Android Project', '2017-04-20 12:19:22', 'Project', 'sdfhsd', 'Education and Health Sciences', 500, 50000, '2017-04-30', '2017-05-01'),
(18, 11, 'asdasd', '2017-04-20 15:32:12', 'asdasd', 'asdasd', 'Education and Health Sciences', 1, 1, '2017-04-30', '2017-05-11');

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
(1, 5),
(11, 11),
(14, 20),
(15, 20),
(16, 11),
(17, 21),
(18, 22);

-- --------------------------------------------------------

--
-- Table structure for table `task_completed`
--

CREATE TABLE `task_completed` (
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `feedbackGiven` tinyint(1) NOT NULL DEFAULT '0',
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_completed`
--

INSERT INTO `task_completed` (`taskId`, `userId`, `feedbackGiven`, `review`) VALUES
(16, 11, 0, 'sadasdasd'),
(18, 22, 0, 'well');

-- --------------------------------------------------------

--
-- Table structure for table `task_flagged`
--

CREATE TABLE `task_flagged` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `taskDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_flagged`
--

INSERT INTO `task_flagged` (`taskId`, `userId`, `taskDate`) VALUES
(16, 11, '2017-04-20 00:00:00');

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
(12, 14),
(13, 2),
(14, 15),
(15, 15),
(16, 7),
(17, 7),
(17, 13),
(18, 13);

-- --------------------------------------------------------

--
-- Table structure for table `unpublished_tasks`
--

CREATE TABLE `unpublished_tasks` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unpublished_tasks`
--

INSERT INTO `unpublished_tasks` (`taskId`, `userId`) VALUES
(2, 5),
(3, 7),
(4, 7),
(5, 7),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 7),
(12, 11),
(13, 11);

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
  `dateJoined` date NOT NULL,
  `hashing` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `studentId`, `email`, `password`, `repScore`, `dateJoined`, `hashing`, `active`) VALUES
(11, 'Colm', 'Le Gear', 15148823, '15148823@studentmail.ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 106, '2017-03-27', '', 0),
(13, 'ryan', 'harris', 13150154, '13150154@studentmail.ul.ie', 'a0e64640593ea157387b9fccccc7a31e54e9ecc382381011c8a1b9bbf2e958c5', 0, '2017-03-27', '', 0),
(17, 'David', 'Kearney', 15169235, '15169235@studentmail.ul.ie', 'b822f1cd2dcfc685b47e83e3980289fd5d8e3ff3a82def24d7d1d68bb272eb32', 0, '2017-04-05', '', 0),
(18, 'Michael', 'Egan', 98765432, 'michael.egan@ul.ie', '95bfb24de17d285d734b9eaa9109bfe922adc85f20d2e5e66a78bddb4a4ebddb', 0, '2017-04-10', '', 0),
(19, 'Michael', 'Egan', 98765432, '98765432@studentmail.ul.ie', '95bfb24de17d285d734b9eaa9109bfe922adc85f20d2e5e66a78bddb4a4ebddb', 0, '2017-04-10', '', 0),
(20, 'John', 'Smith', 15168743, '12345678@studentmail.ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-18', '', 0),
(21, 'Abel', 'Johnson', 14164736, '15148828@studentmail.ul.ie', '40768446a23d945e217719d09ca512ae31845c9b19fa10d8048f9974689c0c20', 10, '2017-04-20', '', 0),
(22, 'Joe', 'Bloggs', 15168654, '15151515@studentmail.ul.ie', 'afd25087b9a776c47c41315fe8d04dbd38f5a33b32b6e2b5f7bc5f0f4e692c8e', 10, '2017-04-20', '', 0),
(24, 'Liam', 'Horgan', 14164766, '14164736@studentmail.ul.ie', '67c71e1abdad9713c147b2c36d12f2af2e36e63a4c02602a6d35c747967b838b', 0, '2017-04-20', 'f29c21d4897f78948b91f03172341b7b', 1);

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

--
-- Dumping data for table `user_favourite_tags`
--

INSERT INTO `user_favourite_tags` (`userId`, `tagId`, `viewCount`) VALUES
(15, 7, 3),
(15, 13, 1),
(11, 7, 23),
(11, 13, 5),
(21, 7, 1),
(21, 13, 1),
(11, 3, 1),
(11, 4, 1),
(22, 7, 4),
(22, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribed_tags`
--

CREATE TABLE `user_subscribed_tags` (
  `userId` mediumint(9) NOT NULL,
  `tagId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_subscribed_tags`
--

INSERT INTO `user_subscribed_tags` (`userId`, `tagId`) VALUES
(15, 4),
(15, 7),
(11, 13),
(22, 4),
(22, 13),
(22, 7);

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
  MODIFY `tagId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `task_claimed`
--
ALTER TABLE `task_claimed`
  ADD CONSTRAINT `task_claimed_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `task` (`taskId`);

--
-- Constraints for table `task_flagged`
--
ALTER TABLE `task_flagged`
  ADD CONSTRAINT `task_flagged_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `task` (`taskId`);

--
-- Constraints for table `unpublished_tasks`
--
ALTER TABLE `unpublished_tasks`
  ADD CONSTRAINT `unpublished_tasks_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `task` (`taskId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
