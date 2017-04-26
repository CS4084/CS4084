-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2017 at 05:20 PM
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
(20, 'uploads/tasks/20/20170130-0340_CS4416_-_Tutorial_1.pdf', 'uploads/tasks/20/sample/20170130-0340_CS4416_-_Tutorial_1.pdf'),
(21, 'uploads/tasks/21/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/21/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(22, 'uploads/tasks/22/CS4004 Assignment.docx', 'uploads/tasks/22/sample/CS4004 Assignment.docx'),
(23, 'uploads/tasks/23/CS4028-1617-COBOLWebPageModernization.docx', 'uploads/tasks/23/sample/CS4028-1617-COBOLWebPageModernization.docx'),
(24, 'uploads/tasks/24/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/24/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(25, 'uploads/tasks/25/1st December 2016.pdf', 'uploads/tasks/25/sample/20170314-1253_CS4416_-_Lab_5.pdf'),
(26, 'uploads/tasks/26/20170130-0340_CS4416_-_Tutorial_1 (2).pdf', 'uploads/tasks/26/sample/20170130-0340_CS4416_-_Tutorial_1 (2).pdf'),
(27, 'uploads/tasks/27/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/27/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(28, 'uploads/tasks/28/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/28/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(29, 'uploads/tasks/29/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/29/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(30, 'uploads/tasks/30/20170130-0340_CS4416_-_Tutorial_1 (2).pdf', 'uploads/tasks/30/sample/20170130-0340_CS4416_-_Tutorial_1 (2).pdf'),
(31, 'uploads/tasks/31/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/31/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(32, 'uploads/tasks/32/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/32/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(33, 'uploads/tasks/33/MAGA.txt', 'uploads/tasks/33/sample/MAGA.txt'),
(34, 'uploads/tasks/34/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/34/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(35, 'uploads/tasks/35/20170130-0340_CS4416_-_Tutorial_1.pdf', 'uploads/tasks/35/sample/20170130-0340_CS4416_-_Tutorial_1.pdf'),
(36, 'uploads/tasks/36/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/36/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(37, 'uploads/tasks/37/CS4123-Exam-2013-2014-Solutions.pdf', 'uploads/tasks/37/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(38, 'uploads/tasks/38/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/38/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(39, 'uploads/tasks/39/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/39/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(40, 'uploads/tasks/40/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/40/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(41, 'uploads/tasks/41/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/41/sample/20170307-1235_CS4416_-_Lab_4 (1).pdf'),
(42, 'uploads/tasks/42/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/42/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(43, 'uploads/tasks/43/20170131-1157_CS4416_-_Lab_1 (4).pdf', 'uploads/tasks/43/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(44, 'uploads/tasks/44/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/44/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(45, 'uploads/tasks/45/Tutorial1.docx', 'uploads/tasks/45/sample/CS4004Assignment.pdf'),
(46, 'uploads/tasks/46/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/46/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(47, 'uploads/tasks/47/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/47/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(48, 'uploads/tasks/48/Tutorial6.docx', 'uploads/tasks/48/sample/Lab6 (1).docx'),
(50, 'uploads/tasks/50/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/50/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(51, 'uploads/tasks/51/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/51/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(52, 'uploads/tasks/52/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/52/sample/20170214-1340_CS4416_-_Lab_3 (2).pdf'),
(53, 'uploads/tasks/53/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/53/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(54, 'uploads/tasks/54/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/54/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(0, 'uploads/tasks/0/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/0/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(55, 'uploads/tasks/55/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/55/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(56, 'uploads/tasks/56/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/56/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(57, 'uploads/tasks/57/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/57/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(59, 'uploads/tasks/59/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/59/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(60, 'uploads/tasks/60/20170131-1157_CS4416_-_Lab_1 (4).pdf', 'uploads/tasks/60/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(61, 'uploads/tasks/61/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/61/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(62, 'uploads/tasks/62/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/62/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(63, 'uploads/tasks/63/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/63/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(64, 'uploads/tasks/64/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/64/sample/20170131-1157_CS4416_-_Lab_1 (4).pdf'),
(65, 'uploads/tasks/65/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/65/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(66, 'uploads/tasks/66/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/66/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(67, 'uploads/tasks/67/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/67/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(0, 'uploads/tasks/0/CS4004Assignment.pdf', 'uploads/tasks/0/sample/20170314-1253_CS4416_-_Lab_5.pdf'),
(68, 'uploads/tasks/68/20170131-1157_CS4416_-_Lab_1 (1).pdf', 'uploads/tasks/68/sample/20170204-2022_CS4416_-_Tutorial_2 (1).pdf'),
(0, 'uploads/tasks/0/CS4004Assignment.pdf', 'uploads/tasks/0/sample/20170314-1253_CS4416_-_Lab_5.pdf'),
(69, 'uploads/tasks/69/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/69/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf'),
(70, 'uploads/tasks/70/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/70/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(0, 'uploads/tasks/0/CS4004Assignment.pdf', 'uploads/tasks/0/sample/20170314-1253_CS4416_-_Lab_5.pdf'),
(71, 'uploads/tasks/71/CS4004Assignment.pdf', 'uploads/tasks/71/sample/20170314-1253_CS4416_-_Lab_5.pdf'),
(72, 'uploads/tasks/72/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/72/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(73, 'uploads/tasks/73/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/73/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(74, 'uploads/tasks/74/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/74/sample/20170204-2022_CS4416_-_Tutorial_2 (1).pdf'),
(75, 'uploads/tasks/75/20170131-1157_CS4416_-_Lab_1 (4).pdf', 'uploads/tasks/75/sample/20170131-1157_CS4416_-_Lab_1 (4).pdf'),
(76, 'uploads/tasks/76/Excel+exercise+2.docx', 'uploads/tasks/76/sample/CS4004 Assignment - Colm Le Gear 15148823.docx'),
(77, 'uploads/tasks/77/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/77/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(78, 'uploads/tasks/78/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/78/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(79, 'uploads/tasks/79/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/79/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(80, 'uploads/tasks/80/20170131-1157_CS4416_-_Lab_1 (4).pdf', 'uploads/tasks/80/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(81, 'uploads/tasks/81/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/81/sample/20170204-2012_CS4416_-_Lab_2.pdf'),
(82, 'uploads/tasks/82/20130923-1112_Word_exercise_1.pdf', 'uploads/tasks/82/sample/CS4004 Assignment - Colm Le Gear 15148823.docx'),
(83, 'uploads/tasks/83/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/83/sample/20170131-1157_CS4416_-_Lab_1 (2).pdf'),
(84, 'uploads/tasks/84/20170130-0340_CS4416_-_Tutorial_1.pdf', 'uploads/tasks/84/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(85, 'uploads/tasks/85/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/85/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(86, 'uploads/tasks/86/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/86/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(87, 'uploads/tasks/87/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/87/sample/CS4004 Assignment.docx'),
(88, 'uploads/tasks/88/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/88/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(89, 'uploads/tasks/89/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/89/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(90, 'uploads/tasks/90/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/90/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(91, 'uploads/tasks/91/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/91/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(92, 'uploads/tasks/92/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/92/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(93, 'uploads/tasks/93/CS4123-Exam-2014-2015-Repeat-Solutions.pdf', 'uploads/tasks/93/sample/CS4004 Assignment.docx'),
(94, 'uploads/tasks/94/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/94/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(95, 'uploads/tasks/95/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/95/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(96, 'uploads/tasks/96/20170204-2012_CS4416_-_Lab_2.pdf', 'uploads/tasks/96/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(97, 'uploads/tasks/97/CS4123-Exam-2014-2015-Repeat-Solutions.pdf', 'uploads/tasks/97/sample/20170314-1253_CS4416_-_Lab_5 (1).pdf'),
(98, 'uploads/tasks/98/20170131-1157_CS4416_-_Lab_1 (3).pdf', 'uploads/tasks/98/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(99, 'uploads/tasks/99/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/99/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(100, 'uploads/tasks/100/20170131-1157_CS4416_-_Lab_1.pdf', 'uploads/tasks/100/sample/20170131-1157_CS4416_-_Lab_1 (3).pdf'),
(101, 'uploads/tasks/101/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/101/sample/20170131-1157_CS4416_-_Lab_1.pdf'),
(102, 'uploads/tasks/102/20170131-1157_CS4416_-_Lab_1 (2).pdf', 'uploads/tasks/102/sample/20170131-1157_CS4416_-_Lab_1 (1).pdf');

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
(0, 'Education and Health Sciences'),
(0, 'Science and Engineering'),
(0, 'Science and Engineering'),
(0, 'Education and Health Sciences'),
(0, 'Arts and Humanities'),
(28, 'Science and Engineering'),
(29, 'Science and Engineering'),
(30, 'Science and Engineering'),
(31, 'Arts and Humanities'),
(32, 'Business'),
(33, 'Education and Health Sciences'),
(34, 'Business'),
(35, 'Arts and Humanities'),
(36, 'Education and Health Sciences'),
(37, 'Arts and Humanities'),
(38, 'Science and Engineering'),
(39, 'Arts and Humanities'),
(40, 'Education and Health Sciences'),
(41, 'Business'),
(42, 'Business'),
(43, 'Business'),
(44, 'Arts and Humanities'),
(45, 'Education and Health Sciences'),
(46, 'Arts and Humanities'),
(47, 'Science and Engineering'),
(48, 'Education and Health Sciences'),
(49, 'Science and Engineering'),
(50, 'Education and Health Sciences');

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
('french', 16),
('project', 17),
('french revolution', 18),
('php', 19),
('css', 20),
('html', 21),
('sql', 22),
('java', 23),
('programming', 24),
('android', 25),
('history', 26),
('geography', 27),
('business', 28),
('science', 29),
('biology', 30),
('chemistry', 31),
('physics', 32),
('animals', 33),
('primatology', 34),
('english', 35),
('essay', 36),
('bridges', 37),
('architecture', 38),
('engineering', 39),
('politics', 40),
('lorem ipsum', 41),
('law', 42),
('rocks', 43),
('skin', 44),
('c++', 45),
('spanish', 46),
('languages', 47),
('barcelona', 48),
('c#', 49),
('journalism', 50),
('japanese', 51),
('clans', 52),
('typing', 53),
('entertainment', 54),
('netflix', 55),
('pirates', 56),
('construction management', 57),
('food', 58),
('pyramids', 59),
('thesis', 60),
('masters', 61),
('ai', 62),
('junit', 63),
('bugzilla', 64),
('selenium', 65),
('testing', 66),
('irish', 67),
('bread', 68),
('yeast', 69),
('nationalism', 70),
('language', 71),
('pizza', 72),
('german', 73),
('python', 74),
('guinness', 75),
('pints', 76),
('crips', 77),
('fry', 78),
('c', 79),
('mechanical', 80),
('ul', 81),
('price', 82),
('proofreaders', 83),
('study', 84),
('injection', 85),
('hacking', 86),
('house', 87),
('ireland', 88),
('arms', 89),
('xss', 90),
('javascript', 91),
('phone', 92),
('psychology', 93),
('music', 94),
('rap', 95);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `taskTitle` varchar(255) NOT NULL,
  `taskDate` datetime NOT NULL,
  `taskType` varchar(32) NOT NULL,
  `taskDesc` longtext NOT NULL,
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
(20, 30, 'Software Development Project', '2017-04-26 16:09:44', 'Project', 'Design a functional proofreading website', 'Science and Engineering', 5, 5000, '2017-04-30', '2017-05-05'),
(21, 29, 'Alarm Clock Android', '2017-04-26 16:10:33', 'Project', 'An alarm clock running on Android 5.0 and up is to be built utilising a database and a language of your choice.', 'Education and Health Sciences', 20, 30000, '2017-05-06', '2017-05-31'),
(22, 28, 'Languages Project', '2017-04-26 16:10:38', 'Project', 'A a project researching the use of different languages around the world.', 'Education and Health Sciences', 10, 10, '2017-04-28', '2017-05-24'),
(23, 30, 'Fitness Android App', '2017-04-26 16:11:53', 'Project', 'Design a functional android fitness application.', 'Education and Health Sciences', 5, 5000, '2017-04-29', '2017-05-07'),
(24, 29, 'Airplane Flight Paths', '2017-04-26 16:13:56', 'Project', 'Design a program that tracks airplanes.', 'Education and Health Sciences', 1, 900, '2017-04-29', '2017-05-01'),
(25, 28, 'MolÃ­ere and the French Revolution', '2017-04-26 16:14:18', 'Dissertation', 'Describing MolÃ­ere\'s role in the french revolution.', 'Education and Health Sciences', 20, 2000, '2017-05-17', '2017-06-30'),
(26, 30, 'Task', '2017-04-26 16:14:28', 'Thesis', 'test', 'Education and Health Sciences', 50, 15000, '2017-04-29', '2017-05-06'),
(27, 30, 'abcd', '2017-04-26 16:15:31', 'abcd', 'abcd', 'Education and Health Sciences', 5, 5, '2017-05-15', '2017-05-20'),
(28, 29, 'A study on Chimp Mating Habits', '2017-04-26 16:16:10', 'Thesis', 'A in depth study on how chimps mate in the wild.', 'Arts and Humanities', 60, 568980, '2017-05-19', '2017-10-31'),
(29, 30, 'asdf', '2017-04-26 16:16:11', 'asdf', 'asdf', 'Education and Health Sciences', 55, 55, '2017-05-16', '2017-05-26'),
(30, 30, 'English Essay', '2017-04-26 16:17:43', 'Essay', 'Essay on social media', 'Arts and Humanities', 5, 1000, '2017-04-29', '2017-05-03'),
(31, 30, 'Essay', '2017-04-26 16:18:37', 'Essay', 'History essay', 'Arts and Humanities', 5, 5000, '2017-05-31', '2017-06-05'),
(32, 29, 'Pros and Cons of Bridges', '2017-04-26 16:20:13', 'Thesis', 'A document detailing the pros and cons of bridges.', 'Science and Engineering', 590, 700000, '2017-04-30', '2017-05-07'),
(33, 43, 'Make America Great Again', '2017-04-26 16:21:56', 'Politics Plan', 'Please help me make America great again.', 'Business', 5555, 5000000, '2017-05-02', '2021-01-20'),
(34, 30, 'Law Essay', '2017-04-26 16:22:59', 'Essay', 'Essay', 'Arts and Humanities', 5, 1000, '2017-06-20', '2017-06-25'),
(35, 30, 'Java Calculator', '2017-04-26 16:24:35', 'Project', 'Java simple calculator project', 'Science and Engineering', 50, 50000, '2017-04-30', '2017-05-07'),
(36, 30, 'C++ Calculator', '2017-04-26 16:26:04', 'Project', 'C++', 'Science and Engineering', 50, 50000, '2018-02-05', '2018-03-09'),
(37, 28, 'Spanish Project', '2017-04-26 16:26:15', 'Languages Project', 'Project about Barcelona.', 'Arts and Humanities', 12, 2500, '2017-05-27', '2017-05-31'),
(38, 29, 'Exfoliation Endurance', '2017-04-26 16:26:21', 'Study', 'The subject will be exfoliating their skin with quality organic conflict free pumice from Pompeii.', 'Education and Health Sciences', 18, 59000, '2017-04-29', '2017-05-05'),
(39, 30, 'C# Calculator', '2017-04-26 16:26:50', 'Project', 'C# Project', 'Science and Engineering', 5, 555, '2017-05-30', '2017-06-05'),
(40, 30, 'Journalism', '2017-04-26 16:27:41', 'Essay', 'Essay', 'Arts and Humanities', 5, 1500, '2017-05-31', '2017-06-05'),
(41, 29, 'Study of the Hojo clan', '2017-04-26 16:28:45', 'Thesis', 'A in depth study of important people in the clan.', 'Arts and Humanities', 100, 5555555, '2017-05-04', '2017-06-09'),
(42, 30, 'html ', '2017-04-26 16:29:22', 'project', 'Create a simple website', 'Science and Engineering', 5, 5000, '2017-04-30', '2017-05-05'),
(43, 29, 'Doctors', '2017-04-26 16:30:39', 'Project', 'Make a program that heals you as you use it.', 'Education and Health Sciences', 1, 109, '2017-04-30', '2017-06-15'),
(44, 30, 'Populate a Proofreading Website with Tasks', '2017-04-26 16:31:04', 'Project', 'Complete the mundane task of populating a website\'s database.', 'Science and Engineering', 1, 100, '2017-04-26', '2017-04-27');
INSERT INTO `task` (`taskId`, `userId`, `taskTitle`, `taskDate`, `taskType`, `taskDesc`, `taskSubject`, `pageCount`, `wordCount`, `taskClaimDeadline`, `taskCompletionDeadline`) VALUES
(45, 28, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a scelerisque purus. Nulla cursus tempus odio vitae pulvinar. Duis interdum hendrerit mauris at euismod. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus amet', '2017-04-26 16:31:19', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt diam eu porttitor vehicula. Maecenas nec elit justo. Phasellus neque lacus, aliquam ut nunc sed, egestas finibus quam. Praesent placerat dui vitae rutrum gravida. Suspendisse nec mi risus. Nulla lorem orci, pellentesque non odio ac, tincidunt egestas nisl. Pellentesque nec enim sit amet sapien posuere suscipit ac vitae eros. Aenean suscipit gravida mauris, et finibus ipsum maximus et. Integer sed eros at tellus dictum condimentum a quis nisi. Nunc porta et orci ut viverra.\r\n\r\nNam auctor mollis mi quis fermentum. Aenean imperdiet condimentum convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In et dui pellentesque velit varius mollis sit amet sit amet ligula. Etiam purus ipsum, faucibus ut volutpat ut, elementum luctus diam. Donec convallis accumsan nisi vel porttitor. Nunc consectetur neque id lacus euismod, et volutpat leo posuere. Mauris in iaculis magna. Nam in molestie augue, sed vulputate nulla. Aenean sit amet magna volutpat est rhoncus dignissim non in purus. In a magna nulla.\r\n\r\nSuspendisse rhoncus felis at erat ultricies tristique. Aenean et nibh consectetur, hendrerit quam eget, bibendum leo. Donec id tortor tristique felis maximus consequat sed pharetra lorem. Sed non elementum lectus. Sed leo magna, tempor aliquet finibus et, sodales non risus. Aenean lobortis rhoncus risus, a scelerisque lectus vulputate a. Mauris nisl diam, tincidunt non faucibus sed, ornare vel lacus. In posuere feugiat ipsum.\r\n\r\nNullam volutpat nulla lorem, et scelerisque elit pulvinar et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque a faucibus justo, nec interdum ligula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed molestie, dui sed ornare rutrum, eros ligula maximus mi, non feugiat est ligula vel diam. Curabitur dictum diam vitae massa blandit, et interdum purus euismod. Pellentesque dignissim congue neque, ac blandit risus. Integer diam nisi, porttitor non consectetur a, mollis at dolor. Donec nec aliquet tellus. Duis malesuada ligula interdum velit congue lobortis facilisis et elit. Nam eget nisi eget neque vestibulum sollicitudin ut quis velit. Sed vel eleifend urna, tempor bibendum ante.\r\n\r\nMauris nulla tellus, fringilla et rhoncus eget, venenatis et felis. Ut eget arcu eget elit eleifend dapibus eget auctor magna. Suspendisse potenti. Sed tempor pulvinar lacus vel pharetra. Ut rhoncus tellus sem, a consectetur tortor vulputate ut. Proin auctor accumsan massa, ut hendrerit ligula. Ut id augue eros. Maecenas metus elit, facilisis sed sodales id, molestie a risus. Pellentesque porttitor, ante porta mollis porta, mauris est pellentesque turpis, vitae faucibus nulla mauris in nisi. Ut vel metus eget neque varius lobortis vehicula non sapien. Praesent vel porttitor diam. Nam tincidunt dictum massa id sagittis. Vivamus eget odio luctus, ullamcorper metus id, imperdiet dui.\r\n\r\nMauris tincidunt tortor at hendrerit fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam aliquet velit at mauris condimentum fermentum. Morbi efficitur ornare enim, in suscipit quam laoreet id. Sed massa mi, rutrum et tellus ut, faucibus varius felis. In sit amet bibendum enim. Sed volutpat, felis quis tristique faucibus, quam augue feugiat leo, nec feugiat urna nibh eget purus. Nullam ullamcorper diam odio, non imperdiet augue sollicitudin nec. Curabitur sed nisi id turpis accumsan maximus. Nulla facilisi. Duis dictum malesuada efficitur.\r\n\r\nFusce sodales vitae tellus id iaculis. In tincidunt nulla a fermentum venenatis. Maecenas sagittis nec orci quis tincidunt. Aliquam quam libero, porta vitae dictum vel, mattis at purus. Fusce sed quam at nisl aliquam fermentum. Praesent lobortis sed tellus at aliquam. Donec in sodales orci.\r\n\r\nPraesent ultrices rhoncus magna congue tempor. Suspendisse vestibulum est ex, vel hendrerit elit mollis eu. Fusce porta ipsum sit amet auctor aliquam. In ultricies tempus auctor. Proin tempus erat sit amet orci aliquam, semper malesuada lorem accumsan. Aliquam eu nulla ac lacus placerat porttitor eu at metus. In sagittis nunc sollicitudin nisi efficitur blandit. Etiam rutrum bibendum eros. Suspendisse nec libero rhoncus elit hendrerit maximus vitae quis lorem. In ex ante, interdum a sodales eu, vestibulum id dolor. Aliquam tincidunt nunc porttitor lectus sodales, in tincidunt mi dignissim. In commodo eros nec dolor semper finibus. Etiam sed tellus mi.\r\n\r\nUt ullamcorper massa odio, eu bibendum felis vulputate et. Sed bibendum vulputate erat vel facilisis. Mauris in mauris eu purus accumsan placerat sed sit amet justo. Suspendisse vel facilisis augue. Mauris laoreet tortor eu fermentum tincidunt. Aliquam luctus libero nulla, in tincidunt elit elementum vitae. Ut gravida tellus sem, vel dapibus arcu pretium nec. Integer augue urna, finibus at metus dictum, tempor placerat ipsum. Fusce tincidunt, dui sit amet tempus interdum, velit quam tristique arcu, ac rutrum nunc metus sodales ipsum. Aliquam sit amet sagittis augue. Proin sit amet metus scelerisque, gravida massa et, pulvinar nisl. Etiam imperdiet vel ex vel luctus. Suspendisse scelerisque magna a ex placerat condimentum.\r\n\r\nInteger id elit non massa finibus cursus. Suspendisse in interdum lectus. Aliquam erat volutpat. Ut non aliquet enim. In id turpis sapien. Aenean mattis elit et posuere tincidunt. Donec facilisis, odio at sagittis dapibus, ante tortor feugiat purus, eu rutrum odio tortor vel libero. Donec nibh dolor, imperdiet sed vulputate eget, scelerisque id lorem. Duis sed neque eget augue laoreet suscipit.\r\n\r\nAenean auctor egestas orci, eu finibus lectus cursus eu. Sed laoreet pulvinar justo, at ultrices purus molestie sed. In facilisis sit amet est a interdum. Aenean vulputate ultrices orci, eget condimentum tortor posuere porttitor. Mauris posuere in ex dapibus sodales. Nunc condimentum velit ut venenatis fermentum. Duis sed sapien pretium, bibendum ante id, vestibulum tellus. Nulla finibus, nisl tincidunt posuere cursus, odio lectus egestas nibh, non faucibus elit nulla et ex. Pellentesque facilisis scelerisque est, ac placerat velit tristique ut.\r\n\r\nFusce bibendum tortor in arcu ornare maximus. Mauris facilisis metus sit amet hendrerit varius. Quisque euismod lacus ut metus varius mattis in vel mauris. Pellentesque urna tellus, mattis et lacinia eu, tincidunt sed ligula. Quisque vitae aliquam risus, ac ultrices ante. Sed pharetra arcu ut metus fringilla malesuada. Duis sodales viverra tristique.\r\n\r\nVestibulum sapien massa, vehicula ac maximus vitae, sollicitudin non lorem. Aliquam nibh odio, sagittis condimentum turpis ut, hendrerit finibus elit. Nam pulvinar eget lacus id malesuada. Nulla facilisi. Maecenas lobortis volutpat nibh, at eleifend dolor fringilla vel. Morbi aliquet varius eleifend. Donec vitae efficitur lectus, ac bibendum purus. Mauris lobortis non nibh vitae auctor.\r\n\r\nNam iaculis, eros quis elementum ultrices, sem magna pellentesque lorem, vel luctus neque massa quis sapien. Quisque eu dictum enim. Nam non lectus non est cursus laoreet. Maecenas accumsan aliquet maximus. Suspendisse potenti. Nulla mi purus, varius ut purus non, blandit maximus odio. Vivamus efficitur auctor hendrerit.\r\n\r\nNulla ac purus bibendum, ultrices arcu sit amet, eleifend erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus tincidunt porta nunc quis pretium. Sed varius efficitur orci ac iaculis. Sed euismod gravida velit. Aliquam ornare auctor neque, ut pharetra nibh pellentesque eget. Aliquam fermentum neque eu tellus blandit, non suscipit diam dignissim.\r\n\r\nPellentesque accumsan, quam sit amet gravida rhoncus, orci est lobortis justo, eu egestas elit metus scelerisque nunc. Nam aliquam lobortis nulla, nec mollis dui imperdiet ut. Vivamus non laoreet lacus. Fusce ultricies felis vel urna malesuada suscipit. Vestibulum nulla tortor, sagittis tincidunt mauris eu, commodo eleifend tellus. Quisque vulputate nec metus eget commodo. Etiam eget scelerisque sapien. Nunc facilisis nec nulla vel pellentesque.\r\n\r\nProin ac diam eu risus malesuada rhoncus. Donec ac felis vehicula, dignissim dolor vel, ornare dui. Aliquam euismod ultricies accumsan. Nunc suscipit luctus augue id imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus feugiat felis nisi, non elementum diam hendrerit eget. Etiam a purus quis nisl vehicula venenatis. Ut malesuada mollis risus a eleifend. Sed libero tellus, congue id magna in, cursus ultrices enim. Nunc eu tincidunt urna, non vestibulum nulla.\r\n\r\nSed tincidunt purus est, eu interdum augue finibus et. Fusce sit amet dictum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non nisl eu odio imperdiet fringilla quis quis arcu. Proin interdum odio ut aliquet commodo. Maecenas lacinia consectetur tincidunt. Donec nec malesuada dui, et lacinia quam. Nam nec mauris lorem. Nulla viverra consequat lacus quis scelerisque. Vivamus accumsan magna sit amet faucibus commodo. Aliquam ac egestas augue. Nunc in purus vestibulum, vestibulum lacus sed, pretium elit.\r\n\r\nMorbi maximus nulla id sagittis condimentum. Nam vitae ante sodales, viverra neque quis, rhoncus ligula. Suspendisse ullamcorper mi nulla, non ultrices risus gravida ac. Donec eu tempor metus, vel tincidunt nibh. Donec tempus diam ipsum, vitae hendrerit tellus luctus at. Nam tempus purus lobortis, suscipit elit sit amet, molestie libero. Nullam id neque vitae arcu feugiat pellentesque. Nullam in neque eget nulla posuere maximus. Curabitur scelerisque, nulla bibendum ultricies cursus, velit nibh porta nisl, ut feugiat lectus erat id tellus. Vestibulum cursus, dui eu sagittis porta, neque mi facilisis neque, a condimentum velit justo id nibh.\r\n\r\nNulla aliquam est varius augue iaculis, a tincidunt lacus tristique. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed ut dolor dui. Integer bibendum elit id augue luctus, molestie vestibulum urna tincidunt. Vivamus commodo libero in sapien imperdiet fringilla. Sed sollicitudin feugiat urna non gravida. Aliquam pellentesque tincidunt viverra. Morbi et dictum libero, eget viverra mauris. Ut euismod arcu vitae consectetur rutrum. Aliquam efficitur at elit venenatis vulputate. Quisque commodo iaculis lorem, in tempus erat molestie a. Nullam laoreet ullamcorper mauris, a maximus odio commodo a. Suspendisse nec egestas orci, sit amet commodo sem. Phasellus feugiat sem non est suscipit, in congue orci egestas. Proin vel mi volutpat, congue orci at, feugiat quam.\r\n\r\nVivamus quis eros in sapien aliquet molestie eget tempus nisi. Proin varius risus eget elit pharetra, interdum suscipit tellus accumsan. Aenean efficitur lectus quis elementum egestas. Nullam sodales, nisi vitae luctus elementum, tortor dui vehicula dui, et volutpat enim ipsum vitae quam. Aliquam erat volutpat. Vivamus faucibus eleifend mi et mollis. Integer commodo sapien a massa ullamcorper porttitor a sed enim. Mauris ipsum orci, suscipit non tincidunt ut, consequat et velit. Nunc hendrerit mauris vitae mollis finibus.\r\n\r\nNullam erat augue, pulvinar at porttitor ut, tincidunt vitae magna. Nulla vehicula diam non turpis efficitur efficitur. Sed mattis augue et pretium vestibulum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec diam massa, convallis at orci non, auctor sollicitudin sem. Donec lobortis faucibus nunc, ut cursus lectus elementum in. Vestibulum varius est orci, eget finibus lectus imperdiet vitae. Sed ut quam aliquet, vehicula nisl quis, efficitur nulla. Sed sed tincidunt ante. Nulla quis libero ut tellus placerat pharetra. Maecenas auctor mollis lorem eu pretium. Curabitur a arcu eu leo varius scelerisque. Duis lobortis vulputate malesuada.\r\n\r\nMauris tempor luctus orci, et finibus libero consectetur at. Praesent pharetra dolor eu felis viverra, quis iaculis quam dignissim. Duis augue elit, blandit vitae tincidunt faucibus, auctor eget augue. Integer vitae erat erat. Etiam ornare lacus non sodales vulputate. Proin laoreet dolor nec turpis convallis, nec euismod turpis interdum. Nulla leo felis, eleifend eget interdum eget, egestas eget arcu. Vivamus rhoncus sapien risus, convallis vehicula tortor pharetra vulputate. Pellentesque fringilla erat turpis, vitae faucibus nisl volutpat gravida. Phasellus ligula arcu, dignissim nec finibus non, molestie in erat. Maecenas quis elementum ex. Sed mollis tincidunt accumsan. Nunc finibus diam augue, nec hendrerit ex vehicula ut. Integer magna nibh, condimentum eget sodales quis, venenatis ac sapien.\r\n\r\nPellentesque eget viverra nibh. Cras vel fringilla risus. Nulla id rhoncus metus. Quisque blandit leo ipsum, at ultrices metus imperdiet ac. Donec tempor quam tellus, ornare posuere nunc bibendum at. Donec cursus, nunc vel sollicitudin vestibulum, augue urna pellentesque magna, eu cursus velit nulla at dui. Sed tincidunt euismod libero, id imperdiet purus dapibus nec. Curabitur tincidunt massa mi, porttitor blandit risus tincidunt et. Aliquam feugiat sem sit amet orci pretium, in pellentesque libero eleifend. Praesent sagittis varius urna eget blandit. Aenean at tempor magna. Morbi feugiat posuere leo, pulvinar cursus neque mollis vel. Nulla dictum eros eget diam malesuada dapibus. Morbi ut tellus vitae mauris porttitor pretium quis ac turpis.\r\n\r\nNam fringilla, quam ut finibus auctor, libero justo dictum dolor, eget rutrum nulla est sit amet nisl. Fusce gravida elit iaculis, varius velit non, laoreet libero. Mauris rhoncus vestibulum ante eget auctor. In iaculis posuere eros, a dapibus mi feugiat ac. Sed egestas sodales dui eu aliquet. Maecenas imperdiet magna turpis, tempus varius tellus aliquam non. Integer mollis non sem suscipit varius. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer pretium ipsum sit amet augue aliquet tristique. Nam porttitor consectetur commodo. Ut est ante, porttitor ac pellentesque sit amet, tincidunt sed libero.\r\n\r\nDonec orci arcu, bibendum id nulla at, dictum lobortis justo. Integer pulvinar imperdiet quam, ut fermentum quam tincidunt in. Etiam condimentum pellentesque elit, quis lobortis arcu dignissim quis. Duis faucibus malesuada sem ornare ornare. Nunc et iaculis urna. Donec mauris odio, fringilla non metus sit amet, dapibus dignissim nisi. Duis in ultricies dolor, sed euismod augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent laoreet pellentesque mi et tincidunt. Curabitur sit amet elit quam. Praesent tempus elementum libero, ut molestie mauris vestibulum non.\r\n\r\nCras luctus sem vitae arcu mollis lacinia. Curabitur quis mauris ante. Fusce elit nibh, eleifend sit amet sapien ac, condimentum rhoncus dui. Pellentesque ac est vel lorem fringilla pellentesque quis ac purus. Mauris varius, sem vitae porttitor auctor, nibh augue maximus sapien, viverra maximus ligula odio nec tortor. Maecenas ornare risus nisi, quis mollis sem fringilla vel. Vivamus eget porttitor risus.\r\n\r\nAliquam non diam sit amet justo malesuada maximus. Aliquam elementum mollis ante. Cras laoreet lacinia velit eu venenatis. Sed tincidunt eu eros et aliquet. Etiam eget lacinia velit. Aenean non velit molestie, convallis diam at, vehicula lectus. Maecenas quis dignissim augue. Cras at enim ex. Etiam malesuada urna turpis, eu euismod quam pretium eget. Nullam id mauris velit.\r\n\r\nDonec eget dolor a tellus tincidunt mollis. Sed cursus venenatis eros nec vulputate. In dictum rhoncus nisl nec volutpat. Cras mattis velit eget nisi commodo, in tempor quam mollis. Nunc at arcu sit amet mi ultricies volutpat non eu orci. Ut et nulla id ligula vulputate consectetur a vitae dui. Nunc vitae diam odio. Morbi ac rutrum nibh. Duis luctus, dolor eget bibendum efficitur, enim mi sollicitudin diam, quis ultricies tellus magna eu arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat. Donec laoreet arcu tempor tortor cursus, varius laoreet mauris ultrices. Nullam varius consequat est sed porttitor. Vivamus finibus leo nec ex euismod feugiat.\r\n\r\nQuisque quis dapibus magna. In a tortor tempus, mattis enim a, suscipit ligula. Duis id rhoncus est. Nulla sollicitudin felis sed metus hendrerit aliquet. Integer tempor, lacus id sagittis porta, ligula nunc ultricies nisi, non rhoncus augue lacus vel purus. Pellentesque tincidunt, lacus ut molestie ultricies, sapien tortor bibendum magna, sed sodales nisl mauris nec nunc. Aenean tristique sem ut eros accumsan, sit amet gravida odio rutrum. Vivamus dignissim porttitor elementum. Quisque ligula nisl, ornare vehicula viverra non, varius in lacus. Curabitur blandit consectetur turpis ut auctor. Donec dignissim, risus in pulvinar vulputate, ante neque ullamcorper metus, ut cursus quam purus at tortor. Aenean enim urna, hendrerit molestie magna vulputate, porttitor auctor lacus.\r\n\r\nInteger consectetur felis id arcu consequat, ut luctus lacus congue. Suspendisse potenti. Vestibulum faucibus enim id consequat pellentesque. Aliquam sit amet porttitor elit. Morbi ultricies mauris et aliquet semper. Fusce ut diam neque. Vivamus consectetur magna sit amet sollicitudin euismod. Mauris eu erat tempus, laoreet dui ac, hendrerit nisi. Suspendisse congue semper justo, non ornare est vestibulum malesuada. In hac habitasse platea dictumst. Etiam justo purus, feugiat at dolor imperdiet, euismod scelerisque ante. Donec commodo dapibus volutpat.\r\n\r\nProin nec gravida tortor, et euismod arcu. Nullam arcu orci, lacinia in accumsan ut, aliquet vitae lectus. Aliquam egestas iaculis velit, nec viverra augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce viverra volutpat justo, in tincidunt nulla accumsan lacinia. Donec pulvinar tempus metus, ut facilisis ipsum commodo vel. Nullam a purus blandit, mollis felis ac, fermentum orci. Praesent semper, arcu eget congue facilisis, quam velit faucibus erat, a volutpat metus erat eu ante. Ut ut tempor dui, eu faucibus dolor. Vestibulum efficitur porta pretium.\r\n\r\nNulla vitae nibh ut quam iaculis pretium at facilisis nisl. Vivamus blandit eget neque at elementum. Vestibulum arcu dui, viverra sed arcu ut, suscipit mollis nisl. Nulla sed dignissim eros. Sed quis maximus quam. Vivamus laoreet tortor ornare vehicula vehicula. Duis vulputate massa sed feugiat finibus.\r\n\r\nSed bibendum efficitur lacus, eu sodales elit ultrices at. Pellentesque scelerisque ex id erat placerat commodo. Praesent scelerisque, mauris et tempor sodales, est lacus dictum nunc, accumsan consectetur ipsum tortor sed orci. Ut fermentum mauris bibendum sapien feugiat finibus. Sed condimentum risus magna, vel viverra est ornare ac. Suspendisse consectetur tortor vel ipsum ultrices, id rutrum risus lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vel condimentum tellus, eu aliquam neque. Nunc et nibh vulputate, tincidunt lectus tempus, hendrerit lacus. Morbi nec dolor vel magna tristique suscipit. Morbi mattis urna eget ex fermentum, quis imperdiet sem finibus. Nam pharetra nisi non tortor rhoncus luctus. Pellentesque gravida pretium diam. Nunc nec rhoncus mauris.\r\n\r\nDuis dignissim massa ac blandit viverra. Aliquam eget lacus sit amet nunc mollis scelerisque vitae ut urna. Etiam aliquam euismod erat, at efficitur nibh bibendum at. Nullam et laoreet turpis, eget sodales nisi. Phasellus gravida libero id odio posuere euismod. Praesent rutrum interdum lacinia. Vestibulum sit amet tincidunt nunc. Aliquam erat volutpat.\r\n\r\nDonec vitae orci at neque ullamcorper vulputate eu et ipsum. Pellentesque sodales vitae sem vitae consequat. Phasellus accumsan lacus eu ligula tristique, in malesuada metus semper. Sed facilisis hendrerit diam, sit amet dignissim purus mollis et. Maecenas pellentesque nisi sit amet eros rhoncus, eu sodales mauris sodales. Vestibulum sodales ante sed volutpat bibendum. Sed rhoncus mi tellus, sit amet ultrices neque placerat a. Mauris facilisis lacinia tortor, in tincidunt sapien finibus nec. Mauris maximus turpis nec leo iaculis, vel mattis velit mattis. Sed congue, metus ac sollicitudin tempus, nisl lorem placerat turpis, et vulputate tortor ligula nec risus.\r\n\r\nAliquam eu justo sagittis, accumsan nunc sed, fringilla diam. Ut at sollicitudin sapien. Etiam ut accumsan neque. Integer mattis mauris non ultricies commodo. In sed arcu et massa accumsan accumsan id mollis diam. Sed gravida dignissim urna dapibus vehicula. Vestibulum in dolor cursus ante feugiat finibus nec quis purus. Nulla aliquam vulputate tortor, sed commodo lectus tincidunt nec. Nullam porttitor magna metus, tempus aliquam tellus suscipit quis. Vestibulum nisi nunc, tincidunt at ligula at, mollis feugiat sapien. Donec lobortis pretium lorem, a rutrum diam elementum vel. Proin odio nunc, lobortis id orci vitae, varius ornare augue. Nunc dictum, magna id porttitor aliquam, arcu lectus interdum erat, id varius enim ipsum vitae velit.\r\n\r\nEtiam et neque ut erat laoreet pulvinar. Aenean convallis scelerisque sagittis. Duis a justo vehicula, faucibus augue sed, iaculis eros. Etiam sem nibh, aliquet vitae purus nec, varius vestibulum purus. Sed ullamcorper lectus imperdiet, auctor quam dignissim, vulputate massa. Maecenas ac odio nulla. Vestibulum ullamcorper nisl ut velit tempus sollicitudin. Aenean semper dolor vel est condimentum venenatis.\r\n\r\nMaecenas elit massa, aliquam ac diam eu, rhoncus aliquet enim. Maecenas sit amet nisl iaculis, sodales augue ut, vulputate turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum id neque non ante posuere venenatis a sed dui. Sed nec efficitur turpis, id dignissim neque. Praesent et risus nibh. Proin nec ex turpis. In cursus lacus quis eros hendrerit aliquet. In ullamcorper leo diam, sit amet dictum justo porta vel.\r\n\r\nProin feugiat nibh at leo interdum, eget porta quam eleifend. Pellentesque vel erat ut urna tempor commodo. Curabitur leo sapien, auctor sed congue quis, facilisis quis risus. Curabitur et auctor enim. Proin eu dapibus erat. Praesent feugiat gravida fringilla. Quisque efficitur auctor dui sit amet sodales. Mauris rhoncus velit nec leo gravida varius. Sed rhoncus sollicitudin commodo.\r\n\r\nUt non arcu fringilla, pellentesque sem sed, aliquam ligula. Suspendisse euismod magna a nisi dapibus feugiat. Aenean eu imperdiet nisi. Aliquam turpis nunc, tincidunt vitae metus a, ultrices sodales ante. Proin erat est, rutrum ac orci nec, porttitor cursus leo. Aliquam tincidunt condimentum elit, nec volutpat odio sollicitudin ut. Aliquam erat volutpat.\r\n\r\nNullam mattis magna eu justo varius viverra a ut ex. Nulla sed tortor sit amet ante venenatis mattis a ut est. Ut condimentum nibh turpis. Quisque pharetra efficitur volutpat. Fusce volutpat ante vitae pulvinar hendrerit. Morbi urna nisi, lobortis eu ornare vitae, accumsan in lacus. Nulla dui dui, posuere sed tincidunt sit amet, gravida commodo felis. Sed pellentesque augue et egestas congue. Praesent non ex accumsan enim hendrerit vulputate sed sed nulla. Aenean fringilla consequat tellus, eget laoreet lacus fringilla in. Praesent consectetur, velit sed convallis aliquet, metus justo egestas erat, nec porttitor turpis nulla a quam. Nunc vestibulum elementum quam non condimentum. Aliquam quis augue rhoncus, bibendum velit quis, aliquam risus.\r\n\r\nPellentesque facilisis id leo eget consectetur. Fusce facilisis lectus sem, sed laoreet leo elementum eget. Vestibulum nisl nunc, auctor ac ullamcorper vitae, mattis eget nisl. Duis pretium a quam facilisis ornare. Proin tristique lobortis nisi, eget porttitor leo tristique sed. Morbi feugiat condimentum mi ac accumsan. Aliquam in suscipit nulla, sit amet faucibus neque. Nulla vel quam dui. Suspendisse viverra commodo mi, sit amet sollicitudin felis. Etiam a lorem enim. Nulla vulputate, sapien et pretium hendrerit, elit magna elementum magna, eget mattis nulla nibh sit amet eros. Sed eleifend risus ac nunc pellentesque, ac dictum odio molestie. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam ac tincidunt leo.\r\n\r\nPraesent metus augue, volutpat a quam ut, fermentum vestibulum magna. Nam tincidunt sit amet eros at mollis. Curabitur interdum vehicula erat, sed bibendum arcu gravida a. Nulla bibendum lectus eget ante lobortis, nec imperdiet lectus efficitur. Donec egestas tincidunt magna vitae lobortis. In enim tortor, accumsan sed lectus ut, fermentum tempor felis. Phasellus augue metus, pharetra eget turpis id, ultricies congue justo. Nulla elementum metus at sapien ornare, quis semper augue faucibus. Vestibulum auctor eu mi ut porta. Mauris vel libero ut ligula sollicitudin aliquam sed eleifend lectus. In aliquam leo quis justo gravida, id dictum felis condimentum. Sed justo tortor, facilisis pretium maximus porta, dignissim rhoncus ligula. Cras condimentum, ex a faucibus porttitor, nisi augue ullamcorper turpis, eu elementum est turpis id leo. Maecenas sed ligula ipsum. Duis pulvinar ornare gravida.\r\n\r\nDonec orci quam, ornare eu fermentum ac, interdum sed turpis. Vestibulum nisl metus, interdum blandit ex non, lacinia efficitur risus. Praesent venenatis egestas nunc. Phasellus est augue, pulvinar consequat ultricies eu, tempor vel elit. Maecenas sit amet nibh neque. Nulla dignissim cursus quam, et vestibulum nibh lacinia in. Fusce tempor erat nec enim vulputate feugiat.\r\n\r\nIn ac urna in nibh porttitor scelerisque a sit amet lacus. Ut tempor dui ac dui euismod hendrerit. Nullam id urna tellus. Vestibulum condimentum sapien non turpis tempus, id lobortis tellus accumsan. Etiam aliquet ut ante nec ullamcorper. Vivamus laoreet massa velit, quis sollicitudin mi porta suscipit. Curabitur fringilla viverra dapibus. Quisque sit amet leo enim.\r\n\r\nEtiam ac cursus dui. Nullam in pretium lacus. Fusce placerat, nibh sed pretium pretium, justo massa iaculis augue, eget auctor quam eros ullamcorper tellus. Quisque nec leo lacus. Praesent id arcu id nunc mattis pulvinar a sit amet diam. Etiam feugiat tristique arcu. Maecenas sed ipsum in dolor lacinia accumsan. Praesent at felis a risus viverra semper. Ut ultricies aliquam metus. Phasellus semper, nibh non tempus tempus, risus massa ultricies nulla, a pharetra nisi risus eu felis. Mauris tortor erat, convallis eu elementum sit amet, mollis eget odio. In ultrices pharetra lorem et luctus.\r\n\r\nDuis nec cursus arcu. Nulla diam nunc, rhoncus eget velit id, mattis fringilla libero. Sed ullamcorper dolor et neque accumsan dignissim. Pellentesque laoreet non ipsum vel vulputate. Nulla sodales blandit finibus. Aenean molestie dui a risus egestas, quis venenatis nunc vulputate. Phasellus eu blandit diam, ac scelerisque elit. Ut lorem urna, convallis quis odio eu, rutrum varius est. Vestibulum quis condimentum elit, a lacinia ante. Donec a tincidunt sapien, ut aliquam sem. Quisque mattis libero vitae urna viverra, rhoncus pulvinar libero aliquet. Phasellus nec urna lectus. Nam malesuada hendrerit sapien, ac vulputate elit vehicula cursus.\r\n\r\nFusce sodales leo est, sed consequat tellus elementum nec. Nunc elit sapien, dapibus eget sem et, sodales gravida sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc sed rhoncus felis, vitae congue nisl. Suspendisse fringilla facilisis arcu, quis vulputate quam faucibus et. Fusce quis tincidunt mauris, nec egestas urna. In fermentum elit et ornare malesuada. Integer semper lobortis tincidunt. Vestibulum nec purus nunc. Mauris eu urna dignissim, porta turpis eu, bibendum enim. Nullam volutpat, eros non tempus malesuada, ante sapien viverra dolor, non ullamcorper dui dolor at ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam efficitur dapibus tempor. Quisque ut diam eu eros maximus accumsan. Aenean vestibulum, quam eu pulvinar porta, felis velit pellentesque mi, eu hendrerit dui dui volutpat arcu. Phasellus sed augue risus.\r\n\r\nVestibulum sapien ipsum, hendrerit nec interdum et, sagittis eget mi. Etiam et faucibus purus. Praesent ultricies ornare augue id imperdiet. Aenean ut neque eget ligula lacinia commodo. Duis interdum leo nec metus sollicitudin volutpat. Vestibulum rutrum, risus sed semper gravida, risus nisl congue nisl, et fermentum lorem nibh et lacus. Nullam dictum iaculis dolor, non placerat ipsum commodo in. Aliquam quam purus, mollis et ligula quis, varius pharetra urna. Fusce eget velit rutrum, vestibulum nunc in, accumsan neque. In vel ullamcorper sem. In lacinia consectetur eleifend. Morbi lobortis lorem eros, vel condimentum diam malesuada sit amet. Praesent posuere eleifend ante molestie vulputate.\r\n\r\nNunc eget laoreet lacus. Nulla facilisi. Duis ut porta odio. Nullam blandit diam eu condimentum faucibus. Cras eu nisl at dui volutpat blandit. Sed congue risus nec ipsum rutrum rhoncus. Fusce vitae commodo tortor, at bibendum mi. Cras venenatis hendrerit mattis. Phasellus nec bibendum augue. Praesent non lacus orci. Aenean rutrum, turpis id commodo rutrum, velit enim facilisis tortor, quis sodales enim augue sit amet risus. Maecenas mollis nunc vel neque cursus, in elementum enim auctor. Aliquam erat volutpat. Cras rhoncus augue odio, quis efficitur nisl faucibus quis. Cras et lectus id arcu dignissim tempus nec id risus. In fringilla in leo in hendrerit.\r\n\r\nProin non urna lectus. Pellentesque efficitur augue vel nunc varius faucibus. Aenean sed lacus luctus, cursus ante eget, bibendum massa. Vestibulum accumsan mi sit amet semper sagittis. Phasellus vulputate vestibulum mauris, sed semper lacus pulvinar non. Vestibulum eget lectus in lacus tincidunt ullamcorper. Vivamus cursus vehicula tincidunt. Sed dui leo, condimentum ac ullamcorper consectetur, tincidunt quis quam. Mauris quis felis ligula. Vivamus ultrices, leo non elementum facilisis, orci tortor commodo ligula, et vestibulum dui urna vel sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ut nibh vitae mi feugiat bibendum gravida ac augue. Donec quis ante dignissim, sollicitudin justo in, sollicitudin metus.\r\n\r\nInteger lacinia metus mauris, nec rhoncus metus aliquet ac. Pellentesque suscipit posuere sollicitudin. Donec a mi turpis. Nam maximus consectetur ante. Sed eu augue dolor. In pulvinar congue tellus in volutpat. Mauris malesuada odio nisl, nec dapibus tellus venenatis vel. Ut tincidunt arcu vel neque pretium, sit amet eleifend ex molestie. Sed et porta leo, sed consectetur enim. Donec ornare eros nibh, eget consectetur ipsum accumsan vitae. Cras aliquam orci a neque finibus, ut lobortis erat iaculis. Integer ac condimentum justo.\r\n\r\nDonec consectetur auctor erat, sit amet rutrum urna congue eu. Ut tempus eros condimentum magna vulputate, ac mattis odio rhoncus. Quisque in urna imperdiet, tincidunt lorem eget, lacinia tortor. Suspendisse tristique enim diam, sed porta velit commodo sed. Fusce tempus bibendum massa, in molestie lectus. Proin viverra tortor ac eros ornare, eu eleifend orci elementum. Curabitur lacinia elit tempus enim placerat, id ultrices metus sagittis. Nulla id ex porttitor, rutrum est id, eleifend ex.\r\n\r\nNullam elementum tempor lorem, a hendrerit libero hendrerit venenatis. Aliquam aliquet justo ut malesuada lacinia. In suscipit arcu vitae eros auctor aliquam. Cras eu est orci. Curabitur euismod et mauris eget ultricies. Etiam egestas massa sit amet volutpat blandit. Vestibulum at augue purus. Aliquam sed nunc enim. Integer ut placerat felis, eu lacinia massa. Vivamus a sodales urna. Nam nec libero lobortis, porta eros ut, ullamcorper orci.\r\n\r\nPhasellus id ligula rutrum, semper risus sed, dignissim diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent viverra ac risus consectetur sodales. Vestibulum sagittis lorem sed risus interdum, et bibendum dui condimentum. Donec nec dolor lectus. Quisque sagittis nunc nec metus lacinia, at luctus magna aliquet. Aenean in rutrum justo, in viverra sem.\r\n\r\nMaecenas eleifend eu turpis id iaculis. Pellentesque euismod gravida accumsan. Donec varius, nisi nec eleifend pulvinar, nisl est pharetra risus, a posuere urna nulla non elit. Fusce varius sapien nec risus laoreet, vel pharetra elit malesuada. Aenean eget gravida augue. In blandit mattis nisl, sit amet aliquet quam tempus ut. Nullam orci quam, viverra ut luctus vel, porta at neque. Cras iaculis semper eros, in aliquet ipsum eleifend sit amet.\r\n\r\nNunc sed auctor risus. Phasellus ut egestas risus. Curabitur maximus commodo augue nec pulvinar. Quisque convallis augue a dignissim consectetur. Nam lobortis nec nisl consequat ultricies. Integer accumsan porta lectus sed pharetra. Phasellus at sapien dignissim, tempus purus et, aliquam justo. Donec pharetra, justo id lacinia iaculis, ante quam molestie mi, at vulputate nunc nisi a neque. Fusce cursus eros risus, eu dapibus magna porta ac. Pellentesque sit amet tincidunt felis, non venenatis justo. Nullam commodo nibh urna, a sodales ipsum sagittis a. Sed vitae semper mi, nec tempor neque. Aenean sapien dui, consequat a hendrerit ac, ultricies ut nisi. Quisque eu purus id justo vehicula ornare ut vitae arcu.\r\n\r\nProin urna odio, pharetra a arcu ut, porta facilisis dui. Sed in lacus nibh. Curabitur sit amet bibendum ex, nec maximus magna. Nullam fringilla orci varius sapien rhoncus vulputate. Fusce ut magna at diam finibus mollis ut non odio. Etiam feugiat, nisi eu placerat consequat, quam erat consectetur sem, a aliquam leo mi id ante. Mauris porta felis et augue varius venenatis. In pharetra ultrices nisl, eget venenatis lorem tempor lobortis. Vivamus metus ligula, pharetra non lobortis in, placerat in erat. Phasellus libero neque, iaculis convallis felis eget, hendrerit aliquam purus. Aliquam at metus pulvinar metus tincidunt egestas quis sit amet erat. Phasellus id orci fringilla, interdum leo quis, semper arcu.\r\n\r\nNulla faucibus tortor neque, nec euismod justo ullamcorper in. Duis quis ultrices erat. Etiam sed faucibus lorem. Proin a justo nec velit cursus auctor a sed dui. Nulla facilisi. Phasellus laoreet laoreet eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed euismod ullamcorper euismod. Praesent dignissim efficitur elementum.\r\n\r\nInteger turpis enim, vulputate non nibh in, consequat cursus dolor. Nullam egestas sed sapien sit amet dapibus. Nullam iaculis iaculis dolor eu luctus. Cras dignissim, justo sit amet porttitor malesuada, nunc mi venenatis elit, nec porttitor erat massa vitae purus. Maecenas auctor ornare enim eu accumsan. Nunc id nunc sed est dictum scelerisque. Suspendisse potenti. Ut at enim sapien. Praesent consectetur mi nec lorem mollis, at pulvinar nibh blandit. Vivamus vehicula augue at enim viverra fringilla. Maecenas sed pretium neque. Cras vitae vulputate tellus. Cras finibus turpis lorem, ac luctus sapien rhoncus eu.\r\n\r\nSuspendisse ultricies lectus a nisl ultrices tincidunt. Nulla id mi venenatis, mollis metus nec, elementum dolor. Etiam rhoncus, ante at gravida tincidunt, mi ipsum feugiat turpis, vel egestas mauris nibh a lectus. Maecenas bibendum, erat sit amet venenatis mattis, lectus erat tempor ante, in dapibus dolor dui sit amet enim. Cras viverra tortor sed libero maximus, sed malesuada leo consectetur. Integer bibendum convallis maximus. Etiam vehicula auctor erat dignissim rhoncus. Vivamus ipsum elit, bibendum et neque et, aliquam viverra ipsum. Suspendisse quis venenatis sem. Phasellus sit amet velit sed turpis auctor porta. Suspendisse potenti. In vitae pretium augue, non tincidunt leo.\r\n\r\nMaecenas id euismod leo, ac efficitur turpis. Nulla consequat accumsan neque id gravida. Sed aliquet sapien laoreet libero eleifend, eget volutpat sapien feugiat. Aliquam libero lectus, egestas efficitur pretium ut, dictum in massa. Praesent vitae mauris rutrum, scelerisque nibh sed, tristique elit. Suspendisse mollis dictum tempus. Fusce vitae ligula quis erat interdum dapibus iaculis a est.\r\n\r\nPhasellus a facilisis metus. Fusce a mattis metus, in vulputate nisi. Fusce vel dolor ullamcorper, varius nunc et, porttitor enim. Sed mi augue, viverra ut efficitur vitae, pellentesque eget erat. Praesent euismod, nisi non consectetur sagittis, massa libero tempus purus, eget ultrices lectus enim at sapien. Mauris sit amet feugiat ipsum. Proin sed fermentum leo. Nunc suscipit eu ante ut dictum. Quisque tincidunt mauris nec nunc ullamcorper, non gravida dui mollis. In sodales tincidunt ex non porttitor. Suspendisse quis purus et sapien consectetur mollis.\r\n\r\nSed aliquam ornare felis, vel posuere tortor finibus a. Etiam non tellus urna. In non nisl libero. Cras laoreet sagittis nulla eget eleifend. Phasellus egestas purus sed nulla lobortis egestas. Vivamus molestie placerat elit, ut consequat mauris gravida sed. Pellentesque et dictum neque. Nulla feugiat rhoncus dolor sit amet blandit.\r\n\r\nPellentesque rutrum nisi pellentesque, mollis justo id, finibus quam. In suscipit massa non ex molestie, et posuere lorem luctus. Vivamus tristique odio eu tortor bibendum auctor sed non eros. Curabitur vitae lacus quam. Donec iaculis ipsum vel nisi pretium, eget efficitur erat bibendum. Praesent scelerisque ullamcorper felis, non dictum leo placerat in. Quisque semper, augue vel consequat elementum, risus mi gravida dui, sit amet laoreet ex lectus non mauris. Nullam pellentesque, felis varius sodales fringilla, ligula dolor venenatis lacus, ullamcorper volutpat nisl diam et augue. Aliquam velit ex, cursus id tortor vel, lobortis aliquet arcu. Proin ut varius felis. Ut quis sem ut diam porttitor faucibus. Curabitur mi arcu, consequat fringilla justo in, tempus molestie neque. Cras lacinia fermentum velit, sed dapibus magna placerat blandit. Nulla pharetra quam nec urna maximus venenatis.\r\n\r\nDonec ac bibendum mi, nec ornare neque. Fusce ipsum risus, tempus a dui vitae, sollicitudin aliquet elit. Integer erat nisl, condimentum sed volutpat nec, eleifend sit amet velit. Proin in odio tincidunt, iaculis odio vel, volutpat arcu. Phasellus aliquet luctus risus, eget ornare nibh. In consectetur suscipit libero, id gravida erat venenatis at. Donec ullamcorper nibh ac magna mollis, nec varius mi egestas. Sed venenatis eleifend ex, eget condimentum tellus vestibulum vitae. Aliquam tincidunt gravida placerat. In hac habitasse platea dictumst. Quisque tristique arcu eu lacinia vehicula. Nam ullamcorper nisl at eros bibendum vulputate.\r\n\r\nNunc imperdiet convallis dui non iaculis. Proin lectus erat, tincidunt quis nibh rhoncus, pharetra sagittis libero. Suspendisse in malesuada turpis. Donec nec augue orci. Quisque at finibus mi. Nullam nec nisi ex. Pellentesque quis nibh aliquam, varius odio quis, eleifend purus. Integer id dapibus justo, eget dignissim tortor. Donec vestibulum ullamcorper nisi.\r\n\r\nProin turpis purus, cursus at maximus quis, ullamcorper vel justo. Donec eget lectus vitae turpis tempus consequat. Sed semper finibus ante sit amet dictum. Donec ut quam eget lorem congue aliquet quis eget ligula. Nullam congue est nec suscipit tempor. Praesent sem dolor, eleifend vitae nisl sit amet, vestibulum molestie massa. Nunc elementum nisi eget nisl sodales facilisis. Phasellus tincidunt felis sed luctus scelerisque. Curabitur facilisis dui in aliquet iaculis. Cras bibendum convallis consequat. Etiam vitae sem nisi. Proin mi ante, blandit id neque at, pretium bibendum nulla. In quis mi in dolor consectetur ullamcorper. Praesent commodo, orci eget faucibus venenatis, augue enim aliquam magna, ut feugiat magna arcu nec mauris. Phasellus molestie mollis ante.\r\n\r\nIn lorem ipsum, lobortis dignissim pellentesque in, lobortis sit amet turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In congue fermentum porttitor. Sed vel molestie lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce gravida blandit mauris eget ornare. Ut dignissim, mauris vitae ullamcorper viverra, mi dui fringilla purus, sed tincidunt libero ex quis libero. Morbi nec leo arcu. Sed pulvinar laoreet pulvinar. Donec eget risus elit.\r\n\r\nProin in elementum eros, a blandit urna. Mauris elit tortor, imperdiet non ornare non, tincidunt id ligula. Nam mauris leo, maximus eu nisi sit amet, aliquet vulputate ipsum. Praesent iaculis dignissim nunc. Mauris a varius sem. Pellentesque sit amet sapien orci. Mauris neque ipsum, pretium et nisi non, aliquet vehicula turpis. Donec at lacus ut sem convallis tempor. Integer in massa at nisl faucibus fermentum. Pellentesque aliquet augue id nisl tempor, ut euismod velit aliquam. Proin non varius mi, nec interdum est. Nam scelerisque dolor at lacus rutrum tincidunt. Nam accumsan risus dolor, in fermentum justo vestibulum vitae.\r\n\r\nFusce sodales egestas nulla vitae laoreet. Nulla eu orci non quam rutrum commodo eu eget turpis. Sed id dolor id leo viverra faucibus sit amet quis sem. Nulla tristique libero sit amet sapien dignissim posuere. Cras ac risus ut elit accumsan dapibus posuere ut urna. Maecenas eleifend libero quis velit accumsan consequat. Duis et semper sapien. Fusce vitae varius erat, at accumsan tortor. Morbi nec ligula pulvinar, consequat lectus eget, tincidunt nisl. Fusce dapibus lacus turpis, id hendrerit nisl efficitur id. Praesent feugiat malesuada aliquam.\r\n\r\nCurabitur a mattis arcu. Nulla in justo sapien. Donec pretium dolor nisl. Donec nec malesuada erat. Fusce urna purus, ultrices id nisl sed, venenatis condimentum leo. Sed sagittis velit lorem. Duis porttitor urna in lacus sodales, eu porttitor justo scelerisque. Integer facilisis magna a felis dapibus, ac egestas leo venenatis. Morbi nisl purus, ornare eget fringilla ut, consectetur eget eros. Phasellus vitae sem felis. In euismod posuere nibh non venenatis. Etiam lacinia ligula et lorem sollicitudin, vel vehicula sapien rhoncus. Aenean dictum orci vitae pharetra dignissim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vulputate sollicitudin felis in scelerisque. Curabitur placerat convallis sapien, sed dapibus dolor consequat et. Phasellus consectetur a risus a fermentum. Integer a diam maximus, commodo sem id, dictum quam. Morbi semper tempus enim eget venenatis. Donec aliquam justo mi, dapibus aliquam neque venenatis nec. In porta, orci et suscipit finibus, eros magna aliquam sapien, a tristique nibh mi ac lacus. Ut nec porta felis.\r\n\r\nMauris pulvinar augue tortor, ut porta ligula euismod id. In quis ullamcorper justo, sed ultrices purus. Donec tempus risus libero, ac molestie lectus fringilla in. Ut finibus leo non eros accumsan pretium. Praesent tristique dui ac consectetur laoreet. Proin at augue nec mauris tristique tincidunt. Pellentesque ut odio id diam volutpat porta. Sed eget nunc et nisl consectetur aliquet. Quisque vitae arcu accumsan, interdum mauris quis, ultrices nunc. Sed suscipit sit amet erat ac iaculis. Integer hendrerit, ipsum ultrices sollicitudin luctus, mauris sem placerat tortor, et ultrices enim eros placerat erat. In pellentesque dolor nibh, ut condimentum dui finibus a.\r\n\r\nMauris placerat quis massa eu condimentum. Nunc scelerisque, ipsum non vehicula faucibus, ante mauris semper tellus, at bibendum lacus ligula nec risus. Suspendisse eu ultrices magna, vitae pellentesque neque. Ut pellentesque libero tincidunt leo bibendum, id egestas lacus vulputate. Ut sed lorem lacinia, bibendum magna non, efficitur risus. Integer sagittis vel leo a posuere. Nulla a mauris vitae sapien vestibulum rutrum. Pellentesque interdum faucibus erat, eu fringilla ligula.\r\n\r\nVivamus condimentum euismod tincidunt. Etiam tristique sapien sit amet luctus aliquam. Sed feugiat nisl eu dolor efficitur luctus eget ac erat. Quisque nec sollicitudin enim. Cras eget dapibus enim. Pellentesque eget aliquam nisi. Nunc eget metus dictum, auctor nunc id, imperdiet velit. Duis sem ante, aliquam sit amet ligula in, pharetra molestie magna. Sed fringilla quam non consequat placerat. Cras et lacus hendrerit, scelerisque urna vitae, fringilla eros. Etiam congue convallis nisi a elementum. In hendrerit euismod nisl quis porttitor.\r\n\r\nInteger ornare diam eget laoreet porttitor. Nullam porttitor convallis elementum. Cras a efficitur tortor. Aliquam rutrum velit quis augue sollicitudin semper. Etiam neque orci, vulputate vitae libero non, rhoncus euismod tellus. Etiam tincidunt nibh a arcu feugiat laoreet. Sed rutrum sem in ante elementum pretium. Donec et malesuada elit. Maecenas feugiat, nisi ut laoreet tempus, magna lorem pharetra ante, sed viverra nunc tellus id libero. Maecenas vitae ipsum consequat mi ultrices blandit. Curabitur iaculis quam sed rutrum fermentum. Sed eu diam nec ante eleifend placerat. Ut tristique facilisis lacus, in egestas magna bibendum vel. Sed porttitor, turpis id consectetur aliquam, augue dui ultricies nisi, ac ultricies nisi risus eu neque.\r\n\r\nAliquam commodo massa in commodo sagittis. Aliquam pulvinar velit magna, ac lacinia lacus lacinia non. Quisque ac magna id nisl auctor consequat. Nulla purus neque, egestas in eleifend sit amet, vehicula non leo. Maecenas dolor magna, tincidunt ac nisl sed, consequat consequat dolor. Cras vitae leo scelerisque, laoreet magna et, elementum velit. Suspendisse rutrum finibus eros a viverra. Mauris interdum enim eget feugiat ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque pulvinar, leo vitae finibus pulvinar, quam sem elementum libero, et viverra dui mauris ut lectus. Donec dictum orci bibendum, vestibulum lorem eu, tristique ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam nunc nisl, ultrices vitae leo at, sollicitudin luctus nunc. Fusce eget sapien commodo, maximus sapien nec, lacinia urna. Sed nisl mauris, condimentum nec urna nec, lobortis fringilla justo. Proin vehicula scelerisque nunc nec lacinia. Vivamus quis turpis mauris. Donec lacinia bibendum tortor. Donec interdum augue diam, eu lacinia nunc finibus quis. Nulla efficitur eros diam, nec mollis eros iaculis nec. Aliquam erat volutpat.\r\n\r\nMauris vitae massa augue. Nam vitae arcu et dui pellentesque blandit. Aenean hendrerit sem blandit nibh luctus, in hendrerit ante faucibus. Nunc vel turpis facilisis, eleifend ipsum quis, pellentesque velit. Morbi accumsan massa ex, sed tempus velit mollis at. Nunc ut mauris hendrerit elit auctor molestie vel eget lacus. Curabitur ullamcorper tempus scelerisque. Maecenas commodo consequat dolor, vel feugiat urna sodales id. In hac habitasse platea dictumst. Sed dignissim lectus vitae consectetur blandit. Nullam nec bibendum purus. Quisque diam urna, finibus ut tellus id, mattis sagittis nunc.\r\n\r\nCurabitur ante lorem, ultricies sed viverra et, finibus at lacus. Duis gravida magna eget augue posuere, non laoreet elit sagittis. Nam fermentum eleifend leo, et aliquet sem. Integer pulvinar facilisis ligula ut posuere. Ut egestas tellus eros, non interdum magna hendrerit in. Aliquam sagittis magna eget tempus tincidunt. Mauris vestibulum, velit a interdum finibus, lectus nisi luctus leo, sed tempor nulla nisl nec eros. Aliquam mollis ex et neque congue, et congue tellus condimentum. Duis et enim sed augue ullamcorper tempus vel ut libero. Aenean at felis diam. Maecenas elit nulla, posuere eget vestibulum non, tincidunt rhoncus dui.\r\n\r\nEtiam varius, purus sed molestie tristique, neque ante mattis enim, id tristique enim odio sed est. In hendrerit ligula sit amet dui sagittis, at faucibus diam semper. Ut non dignissim massa. Etiam id elit est. Ut et ante bibendum, aliquam dui ac, mollis enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque in orci ut metus euismod pulvinar a et est. Morbi lobortis est quis lorem rutrum, ut suscipit lorem aliquet. Sed ut leo ultrices, tempor mi vitae, egestas orci.\r\n\r\nSed sem nunc, pellentesque sit amet urna in, posuere eleifend nunc. Integer a orci a ante vulputate sollicitudin. Sed iaculis quam in nisi auctor, sit amet dignissim risus facilisis. Donec sed purus pellentesque, volutpat metus at, ornare nisi. Sed viverra tristique metus eu dictum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce eget ultricies neque. Nam aliquet ultrices nisi vel bibendum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam accumsan vulputate massa, id cursus quam volutpat eget. Praesent eu sem gravida, placerat ante vel, finibus metus.\r\n\r\nProin aliquet massa lectus, eu fringilla felis feugiat quis. In at lorem lorem. Quisque id diam varius, consequat felis quis, ultricies leo. Integer fringilla egestas lacinia. Quisque et blandit erat, at luctus lacus. Sed ut orci vitae sem scelerisque commodo. Cras laoreet erat non massa tempus posuere.\r\n\r\nSuspendisse eu orci in enim dictum suscipit. Quisque condimentum, lacus sit amet blandit egestas, dui mi pharetra eros, id elementum felis tortor sit amet purus. Quisque consequat risus sed est laoreet rutrum. Nunc ut laoreet nibh. Cras risus ligula, fringilla sit amet sodales vitae, dignissim id ante. Morbi vulputate ultricies nulla, eu sagittis diam facilisis interdum. Donec vestibulum mi leo, at rhoncus lacus mattis a.\r\n\r\nAenean mi arcu, placerat sed aliquam in, auctor a dolor. Nunc nisl ligula, volutpat et malesuada eleifend, malesuada eget lacus. Mauris laoreet tristique turpis, vitae rutrum purus. Sed vel est sit amet quam pellentesque feugiat. Suspendisse vulputate gravida rhoncus. In pellentesque mauris lacus, ac lacinia turpis lobortis at. Nulla molestie dapibus augue.\r\n\r\nNullam quam ante, pulvinar blandit efficitur et, aliquam in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ut velit feugiat, lacinia orci non, lacinia elit. Donec sed rutrum velit. Nam nec libero sed nisl semper sollicitudin nec sed lectus. Maecenas consectetur ultricies orci vel vestibulum. Sed in ipsum ut neque consectetur egestas. Donec facilisis magna ipsum, et lobortis nulla tempus vel. Integer felis nulla, hendrerit sit amet porttitor et, faucibus eu massa.\r\n\r\nFusce molestie malesuada mi laoreet tincidunt. Sed a libero in risus vestibulum vehicula eget ac ex. Sed pulvinar nisi sit amet libero bibendum, eget gravida turpis ultrices. Nulla nisl tellus, suscipit vel iaculis in, tristique non odio. Etiam eget eleifend ipsum. Aliquam at fermentum purus. Aliquam ac iaculis neque, a euismod ante. Sed ullamcorper dui in dui volutpat accumsan.\r\n\r\nDonec rutrum dui et velit placerat, ac dignissim neque accumsan. Proin ullamcorper tincidunt scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac lacus dolor. Donec euismod turpis vel ligula dignissim maximus. Integer hendrerit urna vel enim condimentum, commodo dignissim nunc imperdiet. Nunc maximus eros id lacus tempus pretium. Curabitur condimentum lorem ac mauris condimentum fringilla. Proin sed urna feugiat, pellentesque nulla vitae, volutpat leo. Aliquam sit amet enim vitae libero maximus tincidunt nec vel elit. Nulla purus erat, venenatis id erat ut, tincidunt blandit lacus.\r\n\r\nMauris ac arcu nec quam feugiat mollis molestie ut ex. Ut interdum, erat commodo varius varius, metus lacus elementum nisi, a porta nulla elit at nibh. Sed interdum tincidunt efficitur. Mauris pharetra placerat vulputate. Fusce ac arcu hendrerit, pharetra lorem a, iaculis ex. Cras eu cursus dolor. Mauris placerat arcu et magna tincidunt, sit amet dictum risus imperdiet. Etiam non tempor odio. Nam dui tortor, hendrerit sed lobortis vitae, eleifend vitae lorem. Nam vel volutpat quam.\r\n\r\nInteger faucibus id diam a lobortis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed congue augue eu est bibendum, eu aliquet purus fringilla. Ut ullamcorper odio non sapien molestie dictum. Duis accumsan orci ut velit posuere, id cursus orci efficitur. Nam vulputate sit amet erat maximus ornare. Suspendisse eu risus vitae tellus laoreet euismod sit amet nec erat. Morbi bibendum posuere commodo. Suspendisse potenti.\r\n\r\nSed odio lacus, finibus rhoncus felis tristique, gravida blandit purus. Suspendisse consectetur et nisl in rhoncus. In blandit pulvinar eleifend. Mauris libero quam, faucibus eu odio et, aliquet pellentesque nisi. Nulla facilisi. Nulla id nisi sit amet lectus laoreet molestie. Pellentesque eu ante vitae magna cursus posuere. Integer sed lorem ut dolor maximus interdum non tristique mauris. Sed finibus vulputate fringilla. Aliquam vel viverra erat. Suspendisse mi felis, ultricies vitae massa eu, ultricies feugiat sapien. Vivamus eleifend tellus at velit pretium euismod. Aenean vitae augue pharetra, sodales sapien ac, aliquet mauris. Nulla id cursus tellus.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi eget nisi a tellus luctus accumsan. Donec maximus dui id eros sodales, quis rutrum est condimentum. Sed at tortor lectus. Phasellus sapien velit, tristique sed porttitor in, scelerisque volutpat risus. Nunc vitae volutpat justo. Nunc at odio et risus suscipit faucibus. Donec dictum pellentesque elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec condimentum ex id leo posuere tempor.\r\n\r\nFusce vestibulum, nunc vel faucibus sagittis, neque velit pharetra metus, sit amet semper purus justo eget turpis. Sed a tortor id dolor feugiat eleifend. Morbi lectus orci, egestas ac molestie vitae, sagittis at odio. Donec nec volutpat purus. Fusce cursus vehicula condimentum. Nam non leo quis magna sollicitudin lacinia. Praesent mollis nulla id risus laoreet venenatis. Sed lobortis fringilla ornare. Sed tincidunt purus eu magna rutrum sollicitudin. Donec justo nunc, finibus sed elit sed, suscipit vestibulum mauris. Nam cursus justo nec quam feugiat, a rutrum justo lacinia.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis in mi vel imperdiet. Aenean pharetra iaculis ante a tempus. Phasellus imperdiet enim quis diam ultrices aliquet. Vivamus tincidunt ipsum eu libero efficitur, dictum rutrum nunc pretium. Phasellus molestie scelerisque facilisis. Duis quis ipsum velit. Phasellus non diam vel magna fermentum consectetur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam posuere, mauris ac blandit egestas, augue ipsum ultricies justo, et sodales dui sem ut diam. Nunc eget erat sit amet odio rutrum venenatis ultrices non libero. Donec id sem et erat interdum cursus. Maecenas consequat leo et nisi malesuada mattis. Fusce ut semper odio, at imperdiet mauris. Aenean enim diam, varius sit amet lorem vel, posuere porta nisl.\r\n\r\nMaecenas facilisis porta eros, id sollicitudin ipsum congue viverra. Nulla tempus, neque eget convallis imperdiet, lorem orci posuere magna, eu sagittis turpis arcu a mauris. Etiam mollis lacus nisl, eget semper lectus tristique a. Cras at tellus sit amet magna bibendum sodales sollicitudin ut leo. Cras convallis eget felis sit amet ultricies. Pellentesque congue consectetur mi in elementum. Phasellus felis nulla, consectetur at ipsum eu, lacinia blandit odio. Phasellus laoreet consectetur congue. Mauris malesuada mi at varius malesuada. Quisque congue lectus quam, a lacinia nisl elementum vitae. Pellentesque a ligula ut magna condimentum eleifend at a risus. Donec augue sapien, faucibus at purus vel, sollicitudin congue nisl. Mauris maximus feugiat dolor, et maximus massa facilisis id. Vivamus pharetra bibendum urna ut egestas.\r\n\r\nDonec cursus leo eu odio lacinia congue. Nulla ultrices dapibus lacus at condimentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sollicitudin sollicitudin dapibus. Donec faucibus dui magna, id gravida eros blandit sit amet. Praesent varius, orci at elementum porta, augue metus mattis ante, id porta est odio quis quam. Proin ultrices risus eu sodales pellentesque. Maecenas fringilla scelerisque diam sit amet sodales. Cras congue sollicitudin gravida. Aliquam vitae lobortis ipsum. Proin et ultricies eros.\r\n\r\nVestibulum rutrum mauris sit amet dui tempus viverra. Ut faucibus arcu posuere lectus imperdiet venenatis. Morbi convallis sit amet orci a commodo. Sed lacus enim, cursus quis auctor non, lacinia ut enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque nibh nisl, fringilla et lacus vel, feugiat dignissim justo. Integer ullamcorper bibendum mi in scelerisque. Praesent ac interdum quam. Mauris augue lacus, auctor eu aliquam luctus, luctus at quam. Fusce imperdiet est id purus malesuada posuere. Vestibulum quis facilisis magna. Nunc viverra nunc tellus, a ultrices turpis eleifend vitae. Sed id urna blandit, semper eros nec, faucibus libero. Morbi a dui eget sem imperdiet maximus. Integer lacinia nisi vel augue sodales, eget finibus ligula aliquet.\r\n\r\nQuisque fringilla vitae ex in maximus. Donec placerat elit id luctus rhoncus. Nam scelerisque metus imperdiet lacus auctor, ut tempor mauris fermentum. Integer ut quam semper, fringilla tortor et, iaculis dui. Duis tristique, est at facilisis dapibus, tortor urna iaculis felis, a porttitor sapien felis a tellus. Mauris dignissim diam in justo pretium, non faucibus risus viverra. Pellentesque molestie ut nulla at blandit. Suspendisse at fermentum nisl. Aliquam faucibus libero id nibh condimentum, vitae dignissim odio congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla sed hendrerit dui, non bibendum justo. Cras lacus elit, interdum sit amet quam et, sodales vehicula elit. Mauris tincidunt in ligula id sodales. Maecenas sed leo ante. Fusce sit amet mauris pretium elit commodo hendrerit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nVestibulum maximus ante a lacus mattis, porta volutpat nibh efficitur. Praesent tellus orci, mattis lacinia dui vitae, laoreet consequat tellus. Fusce tristique at justo eu eleifend. Donec viverra magna nec bibendum cursus. Etiam rutrum libero maximus elit vehicula tempus. Sed bibendum est consectetur, eleifend tellus ut, fermentum ligula. Suspendisse facilisis aliquet dictum. Nullam nec dolor vitae orci commodo cursus a eu urna. Suspendisse placerat nibh diam, in ornare magna hendrerit in. Suspendisse iaculis justo leo, et laoreet metus vehicula ac.\r\n\r\nDonec pharetra eros metus, quis ullamcorper felis molestie non. Maecenas tempus laoreet lacus, nec scelerisque quam mattis et. Aenean justo mauris, accumsan vitae pharetra non, dapibus nec dolor. Mauris convallis quis orci sed viverra. Proin consectetur ligula sit amet elit mattis rutrum. Nam cursus dictum sem, eu semper neque vestibulum vel. Nullam at iaculis nulla. Aenean varius quam in est imperdiet, eu auctor lorem porttitor. Etiam lacus nisi, fermentum non finibus eget, pulvinar vitae neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas maximus, ligula sit amet ornare rhoncus, lacus augue convallis tortor, interdum bibendum urna elit vitae metus. Vestibulum dignissim magna et turpis placerat, sed volutpat arcu iaculis.\r\n\r\nNullam mauris nulla, iaculis vitae urna id, ultricies dapibus justo. Curabitur eu est posuere nisi vehicula condimentum at quis diam. Duis vulputate hendrerit tortor sit amet maximus. Cras accumsan, purus hendrerit sollicitudin tempus, tortor leo consequat felis, et commodo sapien erat sit amet ante. Integer molestie ac sapien vel sollicitudin. Vestibulum et viverra nibh. In dapibus fermentum ipsum, ac placerat odio elementum a. Duis non purus quis mi tincidunt convallis. Donec mollis vestibulum imperdiet. Vestibulum et ipsum sit amet quam facilisis accumsan.\r\n\r\nVestibulum nec nisl vitae enim laoreet viverra vitae quis tortor. In mollis nisi neque, vitae tempus purus pellentesque in. Nam tempus eleifend leo sit amet euismod. Vestibulum quis ante maximus turpis vulputate egestas eget semper libero. In at ante vel nunc iaculis feugiat vitae ultricies augue. Quisque vel cursus leo, sit amet pharetra felis. Morbi rhoncus sapien a dictum facilisis. Suspendisse potenti. Pellentesque feugiat, mauris eget sollicitudin tincidunt, libero neque condimentum metus, quis feugiat nulla ante non velit. Ut at porttitor tortor, eu maximus turpis.\r\n\r\nMauris convallis ex nec ipsum pellentesque, ac placerat tellus venenatis. Integer vel egestas sem. Nunc at nunc eu sapien blandit eleifend. Fusce in dapibus est. Vivamus pharetra interdum commodo. Vivamus laoreet lacus et justo commodo, et ullamcorper erat condimentum. Vestibulum facilisis ante vel orci pretium accumsan. Sed interdum nunc nunc, ac posuere quam accumsan eget. In sollicitudin augue et molestie posuere. In hac habitasse platea dictumst. Suspendisse eu mattis sem. Donec semper odio tempus ex euismod, quis posuere sem hendrerit. Etiam consectetur tempus quam.\r\n\r\nAliquam eget tempus urna. Quisque consequat sagittis sem, id vehicula nunc pulvinar nec. Mauris consectetur fermentum felis nec finibus. Curabitur ullamcorper hendrerit metus, sed gravida lacus sollicitudin ac. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu iaculis ipsum. Aliquam aliquet arcu orci, quis auctor ante suscipit sed. Quisque luctus ex ut iaculis condimentum. Nunc quis urna non turpis tempus euismod ac vel dui.\r\n\r\nDonec tempor dignissim sapien, et mattis risus pulvinar sit amet. Nunc quis elit tempus, fermentum lorem a, consequat enim. Vivamus aliquet maximus mauris, vitae finibus ex blandit sed. Mauris maximus justo non lectus cursus, sit amet blandit ipsum varius. Ut libero sem, accumsan et maximus a, aliquet sed erat. Nullam ornare sodales orci in ullamcorper. Etiam nec lacus egestas, lobortis nunc quis, pretium massa. Nulla imperdiet iaculis orci, id sagittis enim sollicitudin eget. Pellentesque pulvinar leo est, quis aliquet lacus dictum non. Proin ut dui dictum eros ultricies fringilla id congue nisi. Etiam ornare tellus rhoncus convallis finibus.\r\n\r\nSed nec placerat tellus, ac mattis mauris. Etiam sollicitudin lorem magna, nec lacinia tortor laoreet vitae. Sed vel pellentesque magna. Ut dignissim orci libero, a posuere mauris commodo a. Etiam non velit lectus. Pellentesque sit amet nunc vel neque sagittis tempor. Aenean id cursus orci. Nulla facilisi. Phasellus nunc lectus, aliquet ac ultricies congue, hendrerit sagittis urna. Quisque vel pretium ligula, quis aliquet nisl. Morbi vestibulum et felis sit amet bibendum. Pellentesque dignissim ligula non elementum porttitor. Donec luctus id lorem sed posuere. Integer et congue neque.\r\n\r\nMaecenas velit turpis, volutpat ac condimentum at, ornare sed leo. Sed vitae ex auctor orci commodo sodales. Fusce consectetur sapien cursus felis ullamcorper, sit amet varius quam ultricies. Maecenas varius a ex in vehicula. Pellentesque semper non ipsum sed tincidunt. Nulla at ipsum sollicitudin, viverra nulla eget, dapibus orci. Nulla metus lacus, sollicitudin id mauris molestie, gravida venenatis enim. Proin pretium ultricies laoreet. Maecenas tristique malesuada elit, nec sollicitudin risus congue gravida. Nullam sed nibh mauris. Nunc risus metus, egestas nec enim in, tempus molestie sem. Morbi pretium neque eu vestibulum porta. Vivamus aliquet dolor eu odio dignissim, et commodo sem efficitur. Fusce luctus nisl sit amet mauris eleifend fermentum.\r\n\r\nFusce sed ligula et urna vehicula accumsan id vel leo. Ut laoreet lorem in sapien sollicitudin, in pulvinar enim placerat. Ut quis congue mi. Integer ullamcorper urna a ipsum venenatis sagittis. In egestas scelerisque fringilla. Sed sed massa ac augue fringilla malesuada eget et leo. Aliquam elit velit, faucibus id leo id, volutpat gravida eros. Pellentesque volutpat varius ullamcorper. Etiam condimentum velit quam, id tempor velit placerat eu. Morbi faucibus non dui efficitur porttitor. Ut nec est nec orci convallis luctus. Integer tincidunt dui a quam pharetra, posuere dignissim est tempor.\r\n\r\nSuspendisse sed interdum velit. Duis ut augue eleifend, vestibulum enim vel, mollis enim. Aenean commodo tincidunt nisl auctor iaculis. Mauris porttitor urna sed enim tristique, at volutpat odio maximus. Etiam eros augue, ultrices ut leo in, auctor suscipit mi. Duis ornare a purus eu commodo. Ut consectetur consectetur ante, eu tristique lectus. Fusce in libero at orci elementum facilisis sit amet id dui. Vestibulum a ex semper, condimentum lorem aliquet, aliquet magna. Vivamus id dui iaculis, condimentum nisl at, vestibulum est. Nullam ornare dapibus erat, at eleifend lacus mattis id. Etiam non elit viverra, dictum justo sit amet, volutpat turpis. Quisque cursus lobortis semper. Etiam vel magna at lectus mattis scelerisque eu at urna.\r\n\r\nDonec est eros, varius efficitur enim convallis, venenatis vehicula massa. In pulvinar, ante id accumsan egestas, augue turpis eleifend purus, quis dignissim velit mi eu augue. Nulla non turpis aliquam, aliquam nunc in, finibus ante. Mauris efficitur dui vitae nisi fringilla mollis. Donec rutrum varius est, ut vehicula libero posuere eu. Donec pharetra nulla vulputate urna pulvinar condimentum. Suspendisse sapien lorem, bibendum quis nulla id, commodo porta lorem. Maecenas gravida metus id bibendum efficitur. Donec lacinia quis velit quis gravida.\r\n\r\nMauris dapibus porttitor convallis. Praesent euismod viverra mauris, cursus pellentesque urna dignissim eget. Phasellus sagittis ex vitae interdum dapibus. Aenean ut neque metus. Etiam sed sollicitudin magna, sit amet placerat mi. Donec ut pulvinar enim. In vel risus vitae ipsum vehicula efficitur. Pellentesque tincidunt nisi a sapien lacinia, nec tempus ante vulputate. Vestibulum suscipit ut massa et efficitur. Maecenas venenatis purus tortor, eu feugiat elit malesuada ac. Quisque efficitur, justo ut sollicitudin fringilla, eros dui eleifend mauris, vel maximus metus nisl vitae felis.\r\n\r\nSed quis lacus viverra, consectetur neque nec, consequat nibh. Praesent convallis elit in egestas faucibus. Aenean dignissim maximus ultrices. Ut egestas placerat nunc vitae tristique. Fusce sapien risus, commodo quis maximus vitae, convallis nec nulla. Donec porttitor, turpis nec finibus porta, orci arcu feugiat nunc, id rhoncus lorem lacus vel neque. Pellentesque id ornare ipsum. Quisque congue hendrerit ullamcorper. Mauris quam ante, tincidunt vitae iaculis at, ornare nec massa. Ut enim purus, pharetra eget tincidunt a, maximus eu orci. Vivamus sed urna nulla. Etiam porta mauris eget ante cursus, et laoreet nulla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam erat volutpat.\r\n\r\nSed vitae mi et felis maximus hendrerit quis in massa. Etiam in urna nec ligula lacinia consectetur vel non quam. Vestibulum finibus quam a ultrices dictum. Curabitur vitae bibendum metus. Donec tristique lorem ut odio venenatis, ac fermentum diam ultrices. Pellentesque rutrum dapibus egestas. Vivamus lacinia velit vel convallis posuere. Etiam aliquet nisl tempus tincidunt rhoncus. Curabitur euismod, elit eu iaculis dignissim, sapien sem convallis velit, non sollicitudin lectus dui ac ante. Nullam pulvinar imperdiet justo in congue. Sed eu dolor ut risus viverra ultrices at ac nulla. Ut vestibulum, tortor nec ultrices varius, arcu nisi convallis ligula, vel interdum ipsum lectus in ipsum. Aenean vulputate arcu sed blandit mollis.\r\n\r\nDonec accumsan, dolor sit amet ultricies egestas, erat magna tristique est, vitae suscipit odio nunc nec odio. Pellentesque a orci non tortor posuere malesuada. Proin ullamcorper, leo eget pulvinar porttitor, tortor urna aliquam lectus, vehicula fringilla quam nulla et lacus. Suspendisse aliquet dui a odio facilisis, et efficitur sapien interdum. Donec id justo tincidunt, eleifend felis imperdiet, tincidunt sem. Praesent ut libero tempor, lobortis purus a, elementum augue. Proin facilisis lacus quis congue finibus. Vestibulum ac ante eu dolor congue faucibus nec sit amet orci. Aliquam odio eros, pellentesque ac pulvinar nec, varius non diam. Sed at tempor sapien, in rhoncus metus. Integer elementum, diam ut vestibulum finibus, nisi velit rutrum turpis, quis porta lectus neque non lorem. Sed finibus interdum arcu, vitae finibus libero consectetur molestie. Cras aliquet eu quam a aliquam. Duis eleifend pharetra euismod. Nullam tincidunt tristique ante, et auctor tortor bibendum non.\r\n\r\nDuis eu est luctus justo maximus vehicula. Aliquam in imperdiet lacus. Donec tempus eget ligula et fringilla. Praesent eleifend, nunc luctus aliquam lobortis, tortor orci interdum orci, non consequat risus justo id enim. Fusce fermentum ligula sit amet erat pellentesque accumsan. Etiam nec varius tortor. Maecenas quis posuere mauris. Maecenas eget felis ut enim consectetur accumsan. Vivamus porta metus purus, vel aliquam sem laoreet eget. Praesent nec dolor imperdiet, vestibulum libero in, vehicula elit. Ut vitae tincidunt felis, sed volutpat purus. Etiam congue tincidunt sapien nec luctus. In eu luctus neque, nec elementum velit. Aenean vestibulum ex id mauris tincidunt, eget dapibus ligula venenatis.\r\n\r\nMorbi lobortis erat et risus condimentum efficitur. Donec dapibus posuere pretium. Etiam eget libero in augue ultricies pretium sit amet ut orci. Proin dictum nisi quam, ut ornare ante suscipit at. Quisque eget ligula nec est faucibus faucibus. Curabitur ut est ultricies, pharetra risus ut, fermentum metus. Pellentesque id augue nec leo tristique sodales ut a nisi. Aliquam finibus velit ac felis commodo varius. Phasellus sodales leo ac lacus ullamcorper fermentum. Duis est orci, rhoncus pellentesque blandit ut, placerat quis est. Maecenas luctus ligula quis purus varius mollis. Proin ut condimentum nisl, quis imperdiet ipsum. Donec eleifend cursus fermentum. Fusce nibh nisl, luctus quis ullamcorper ornare, ultrices at lectus. Integer at nibh eu orci rutrum rhoncus a sit amet ipsum.\r\n\r\nProin massa urna, egestas id ante vel, placerat suscipit felis. Vestibulum ornare lorem nec tortor ultrices, id facilisis justo sollicitudin. Sed venenatis urna sed sagittis dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed a egestas velit, ac posuere velit. Vivamus iaculis interdum turpis, et sagittis nisi eleifend vitae. Integer pellentesque nibh quis dictum fermentum. Aliquam erat volutpat. Vivamus viverra magna orci, varius ullamcorper nulla scelerisque id. Etiam placerat venenatis hendrerit. Curabitur id sagittis dui. In hac habitasse platea dictumst.\r\n\r\nProin ornare porta pharetra. Aliquam eleifend a dui quis laoreet. Cras felis arcu, semper et laoreet finibus, varius vitae nulla. In aliquam risus hendrerit massa commodo sodales. Donec sed lectus nibh. Vivamus suscipit augue ac leo placerat, eget auctor massa suscipit. Quisque et ipsum sed erat elementum tincidunt. Aenean tincidunt, velit non feugiat vulputate, nisi sapien posuere magna, quis congue turpis risus at lectus. Integer nisi sem, laoreet a augue vel, sagittis facilisis augue.\r\n\r\nUt quis eleifend urna. In id malesuada leo. Fusce at ultrices neque. Aenean suscipit risus ut purus lacinia, non laoreet mauris dapibus. Ut tincidunt nec lacus vel tempus. Nam gravida arcu ac velit lobortis ullamcorper. Curabitur sodales fringilla lorem nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nEtiam consequat tellus a dolor accumsan malesuada. Etiam maximus augue vel erat egestas, sit amet vulputate nulla dignissim. Pellentesque quam neque, blandit eget urna in, ultricies egestas diam. Proin aliquet nunc vitae luctus elementum. Nam ligula tortor, viverra id semper ac, vehicula eu nunc. Sed a tempus enim. Praesent metus.', 'Education and Health Sciences', 100, 1000, '2017-05-04', '2017-06-20');
INSERT INTO `task` (`taskId`, `userId`, `taskTitle`, `taskDate`, `taskType`, `taskDesc`, `taskSubject`, `pageCount`, `wordCount`, `taskClaimDeadline`, `taskCompletionDeadline`) VALUES
(46, 30, 'Web Design', '2017-04-26 16:31:59', 'Project', 'Design a site', 'Science and Engineering', 50, 5000, '2017-05-05', '2017-05-10'),
(47, 30, 'Netflix Task', '2017-04-26 16:33:41', 'Project', 'Find good shows for me to watch on Netflix', 'Arts and Humanities', 1, 1, '2017-05-04', '2017-12-31'),
(48, 29, 'Pirates', '2017-04-26 16:34:20', 'Thesis', 'Are they good or bad, you decide.', 'Business', 100, 50, '2017-04-26', '2017-04-30'),
(50, 30, 'Android app', '2017-04-26 16:35:16', 'Project', 'app', 'Education and Health Sciences', 5, 555, '2017-05-05', '2017-05-10'),
(51, 30, 'HTML CSS', '2017-04-26 16:38:09', 'Project', 'Web Design', 'Science and Engineering', 5, 555, '2017-06-05', '2018-06-05'),
(52, 29, 'Food Pyramid', '2017-04-26 16:39:13', 'Project', 'Design a food pyramid that is not a pyramid.', 'Science and Engineering', 1, 7000, '2017-04-30', '2017-05-31'),
(53, 30, 'English Tutorial', '2017-04-26 16:39:34', 'Tutorial', 'Please help me with my english tutorial I don\'t speak the language (Google translate)', 'Education and Health Sciences', 555, 5555, '2017-06-06', '2017-06-09'),
(54, 30, 'Irish Mammy\'s Study', '2017-04-26 16:41:19', 'Thesis', 'Need assistance with my Masters Thesis on Irish mammies', 'Education and Health Sciences', 50, 5000, '2017-05-05', '2017-05-09'),
(55, 30, 'Software Testing Project', '2017-04-26 16:42:32', 'Project', 'Complete a project using JUnit, bugzilla and Selenium', 'Science and Engineering', 10, 5000, '2017-04-29', '2017-04-30'),
(56, 30, 'Irish Essay', '2017-04-26 16:43:41', 'Essay', 'Please proofread my Irish essay. Go raibh maith agat.\r\n', 'Education and Health Sciences', 5, 1000, '2017-05-30', '2017-06-01'),
(57, 29, 'Bread', '2017-04-26 16:43:55', 'Thesis', 'Please help me prove that Irish bread is superior to any other cultures bread.', 'Business', 40, 58075, '2017-04-29', '2020-06-11'),
(59, 30, 'Business Essay', '2017-04-26 16:45:01', 'Essay', 'Business Essay', 'Business', 5, 5000, '2017-04-28', '2017-04-30'),
(60, 29, 'Fast Food', '2017-04-26 16:45:35', 'Order', 'Hi can I have two large pizzas, one with pepperoni and the other with ham and pineapple.', 'Education and Health Sciences', 1, 800, '2017-04-30', '2017-05-01'),
(61, 30, 'Germany Essa', '2017-04-26 16:45:37', 'Essay', 'essay', 'Education and Health Sciences', 5, 5555, '2017-05-05', '2017-06-10'),
(62, 30, 'Project', '2017-04-26 16:46:11', 'Project', 'Project', 'Arts and Humanities', 5, 5555, '2017-10-10', '2017-11-11'),
(63, 30, 'Java', '2017-04-26 16:46:48', 'Project', 'Create a calculator', 'Science and Engineering', 5, 5, '2017-05-04', '2017-05-05'),
(64, 29, 'Calculator', '2017-04-26 16:48:02', 'Project', 'Design a full fledged calculator calculator capable of performing advanced function,.', 'Science and Engineering', 1, 1000, '2017-04-30', '2017-05-11'),
(65, 30, 'Software Testing and Inspection', '2017-04-26 16:48:57', 'Project', 'Project', 'Science and Engineering', 5, 5, '2017-08-08', '2017-09-08'),
(66, 30, 'Python', '2017-04-26 16:49:57', 'Project', 'Automation with Python', 'Science and Engineering', 55, 5555, '2017-05-04', '2017-05-05'),
(67, 29, 'Pintmen', '2017-04-26 16:50:15', 'Project', 'A study on the great pintmen of Ireland to see how many pints of Guinness they can put away in a day. And one for yourself as well.', 'Arts and Humanities', 55, 790846, '2017-04-30', '2017-05-12'),
(68, 30, 'Java', '2017-04-26 16:51:58', 'Project', 'yeah', 'Science and Engineering', 5, 55, '2017-05-05', '2017-06-05'),
(69, 30, 'C', '2017-04-26 16:52:27', 'Project', 'Operating Systems C Project', 'Science and Engineering', 5, 55, '2017-05-01', '2017-05-05'),
(70, 30, 'Essay', '2017-04-26 16:53:18', 'Essay', 'Essay', 'Arts and Humanities', 55, 5555, '2017-05-05', '2017-05-06'),
(71, 28, 'Water Quality Analysis', '2017-04-26 16:53:56', 'Project', 'An analysis of water quality in UL buildings.', 'Science and Engineering', 8388607, 8388607, '2017-05-11', '2017-05-27'),
(72, 30, 'Build a car', '2017-04-26 16:54:25', 'Project', 'Build me a car', 'Science and Engineering', 5, 555, '2017-05-05', '2017-06-10'),
(73, 29, 'Search Engine Optimisation', '2017-04-26 16:54:45', 'Project', 'Please help me optimise my site SEO.\r\nhttps://www.google.nl/', 'Education and Health Sciences', 40, 679045, '2017-04-29', '2017-04-30'),
(74, 30, 'Engineering', '2017-04-26 16:57:07', 'Project', 'Mechanical Engineer', 'Science and Engineering', 5, 555, '2018-02-05', '2018-03-09'),
(75, 29, 'Food Price in UL', '2017-04-26 16:57:15', 'Study', 'Analysis of the price of foods offered in UL cafes and restaurants.', 'Education and Health Sciences', 10, 16000, '2017-07-13', '2019-07-19'),
(76, 28, 'Task creation quality study.', '2017-04-26 16:57:52', 'Study', 'A study of the quality of tasks created by users of this site.', 'Education and Health Sciences', 8388607, 8388607, '2017-08-09', '2018-02-28'),
(77, 30, 'Java', '2017-04-26 16:58:34', 'Thesis', 'Prove Java is better than Python', 'Education and Health Sciences', 555, 5555, '2017-04-29', '2018-02-01'),
(78, 30, 'C++ Hotel App', '2017-04-26 16:59:35', 'Project', 'Hotel Reservation System', 'Science and Engineering', 5, 55, '2017-05-05', '2017-10-05'),
(79, 30, 'Englsih Essay', '2017-04-26 17:00:18', 'Essay', 'Personal Essay', 'Arts and Humanities', 5, 5000, '2017-05-05', '2017-05-11'),
(80, 29, 'Programming Language Analysis', '2017-04-26 17:00:18', 'Proejct', 'Write some programs that add together 10 numbers and time how long it takes thwem', 'Science and Engineering', 3, 786786, '2017-05-13', '2017-06-09'),
(81, 30, 'French Essay', '2017-04-26 17:00:51', 'Essay', 'Essay', 'Arts and Humanities', 5, 500, '2018-05-05', '2018-05-10'),
(82, 28, 'SQL injection testing; DROP TABLE users', '2017-04-26 17:00:55', 'SQL Injection test', 'Testing whether or not SQL injection is possible on the task creation page.', 'Science and Engineering', 1, 20, '2017-06-17', '2017-08-17'),
(83, 29, 'House', '2017-04-26 17:01:04', 'Thesis', 'Write a thesis on the availability of houses i n ireland', 'Business', 56, 700000, '2017-05-14', '2017-08-13'),
(84, 30, 'English Essay', '2017-04-26 17:01:51', 'Essay', 'Proofread', 'Arts and Humanities', 5, 5000, '2017-06-05', '2017-06-09'),
(85, 30, 'Selenium', '2017-04-26 17:02:24', 'Project', 'Conduct tests', 'Science and Engineering', 5, 555, '2017-05-04', '2017-05-09'),
(86, 29, 'Arm Length ', '2017-04-26 17:02:43', 'Thesis', 'How long are the users of different programming languages arms. Is arm length affecting code quality?', 'Science and Engineering', 89, 8388607, '2017-04-30', '2017-05-20'),
(87, 28, 'XSS testing', '2017-04-26 17:02:47', 'Test', 'Test whether or not XSS works on the task page. ', 'Science and Engineering', 1, 20, '2017-04-30', '2017-05-26'),
(88, 30, 'Java App', '2017-04-26 17:03:37', 'Project', 'Java', 'Science and Engineering', 5, 555, '2017-08-08', '2017-09-09'),
(89, 30, 'Language Study', '2017-04-26 17:04:14', 'Thesis', 'study', 'Education and Health Sciences', 555, 5555, '2018-05-05', '2018-06-06'),
(90, 30, 'C++ App', '2017-04-26 17:04:42', 'Project', 'C++', 'Science and Engineering', 5, 55, '2017-08-08', '2018-09-09'),
(91, 29, 'Jva', '2017-04-26 17:04:53', 'Project', 'Design a new java language', 'Science and Engineering', 676, 8388607, '2017-04-30', '2017-09-01'),
(92, 30, 'Database Design', '2017-04-26 17:05:20', 'Project', 'Check if my database is normalised', 'Science and Engineering', 5, 555, '2017-04-29', '2018-05-05'),
(93, 28, 'XSS testing 2', '2017-04-26 17:05:51', 'Testing again', '&lt;script&gt;alert(\'test\');&lt;/script&gt;', 'Science and Engineering', 1, 20, '2017-05-28', '2017-05-30'),
(94, 29, 'Relations', '2017-04-26 17:06:04', 'Thesis', 'Write a study on the different RDMS in use in UL.', 'Science and Engineering', 1, 1677, '2017-04-30', '2017-05-20'),
(95, 30, 'Java Pedometer App', '2017-04-26 17:06:15', 'Project', 'Step counter for android', 'Education and Health Sciences', 555, 5555, '2017-04-29', '2017-05-01'),
(96, 30, 'Software Development Project', '2017-04-26 17:07:39', 'Project', 'Test our website!', 'Science and Engineering', 5, 500, '2017-05-01', '2017-05-05'),
(97, 28, 'Study of mobile phone usage habits', '2017-04-26 17:07:53', 'Thesis', 'A study of mobile phone usage habits', 'Education and Health Sciences', 1, 100, '2017-04-29', '2017-05-20'),
(98, 30, 'Android Calendar App', '2017-04-26 17:08:11', 'Project', 'Java app', 'Science and Engineering', 5, 55, '2017-05-05', '2017-10-05'),
(99, 29, 'Kanye West', '2017-04-26 17:08:50', 'Thesis', 'Study on Kanye Wests influence on popular music in the last 20 years.', 'Arts and Humanities', 1000, 56567, '2017-04-26', '2017-05-20'),
(100, 30, 'Bridge Study', '2017-04-26 17:09:16', 'Thesis', 'Thesis on the dodginess of bridges these days. Calling all bridge lovers, please proofread my thesis for my Masters in Bridge Science.', 'Science and Engineering', 5, 55, '2017-05-05', '2017-05-09'),
(101, 30, 'Java Project ', '2017-04-26 17:09:57', 'Java', 'help', 'Science and Engineering', 555, 555, '2017-09-05', '2018-09-05'),
(102, 29, 'Bridge Materials', '2017-04-26 17:10:55', 'Thesis', 'A in depth study on which material is best suited to different types of bridges.', 'Education and Health Sciences', 4, 7, '2017-04-29', '2017-05-05');

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
(44, 28),
(48, 28);

-- --------------------------------------------------------

--
-- Table structure for table `task_completed`
--

CREATE TABLE `task_completed` (
  `taskId` mediumint(9) NOT NULL,
  `userId` int(11) NOT NULL,
  `feedbackGiven` tinyint(1) NOT NULL DEFAULT '0',
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(68, 28, '2017-04-26 00:00:00'),
(86, 30, '2017-04-26 00:00:00');

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
(0, 16),
(0, 17),
(0, 18),
(20, 19),
(20, 20),
(20, 21),
(20, 22),
(21, 22),
(21, 23),
(21, 24),
(21, 25),
(22, 20),
(22, 19),
(22, 23),
(23, 23),
(24, 23),
(25, 26),
(25, 16),
(26, 26),
(26, 27),
(26, 28),
(27, 29),
(27, 30),
(27, 31),
(27, 32),
(28, 33),
(28, 34),
(29, 35),
(30, 35),
(30, 36),
(31, 36),
(31, 26),
(32, 37),
(32, 38),
(32, 39),
(33, 40),
(0, 41),
(34, 42),
(34, 36),
(0, 43),
(0, 44),
(35, 23),
(0, 41),
(36, 45),
(37, 46),
(37, 47),
(37, 48),
(38, 43),
(38, 44),
(0, 41),
(39, 49),
(40, 50),
(40, 36),
(0, 41),
(41, 51),
(41, 52),
(42, 21),
(42, 20),
(42, 19),
(43, 23),
(43, 21),
(43, 20),
(0, 41),
(44, 53),
(45, 41),
(46, 21),
(46, 20),
(47, 54),
(47, 55),
(48, 56),
(49, 57),
(50, 23),
(50, 25),
(51, 21),
(51, 20),
(52, 58),
(52, 59),
(53, 35),
(54, 60),
(54, 61),
(0, 62),
(0, 49),
(55, 63),
(55, 64),
(55, 65),
(55, 66),
(56, 67),
(56, 36),
(57, 68),
(57, 69),
(57, 70),
(58, 71),
(59, 28),
(59, 36),
(60, 72),
(60, 58),
(61, 73),
(61, 36),
(62, 17),
(63, 23),
(64, 23),
(64, 22),
(65, 66),
(66, 74),
(67, 75),
(67, 76),
(67, 77),
(67, 78),
(0, 29),
(0, 31),
(68, 23),
(0, 29),
(0, 31),
(69, 79),
(70, 36),
(0, 29),
(0, 31),
(71, 29),
(71, 31),
(72, 39),
(72, 80),
(73, 21),
(73, 20),
(74, 39),
(75, 81),
(75, 58),
(75, 82),
(76, 83),
(76, 84),
(77, 23),
(78, 79),
(79, 35),
(79, 36),
(80, 24),
(80, 23),
(80, 74),
(80, 79),
(81, 16),
(81, 36),
(82, 22),
(82, 85),
(82, 86),
(83, 87),
(83, 88),
(84, 35),
(84, 36),
(85, 65),
(85, 66),
(86, 89),
(87, 90),
(87, 91),
(87, 86),
(88, 23),
(89, 16),
(89, 73),
(89, 67),
(90, 45),
(91, 23),
(92, 22),
(93, 90),
(93, 91),
(93, 86),
(94, 22),
(95, 23),
(95, 25),
(96, 21),
(96, 20),
(96, 66),
(97, 92),
(97, 93),
(97, 84),
(98, 23),
(98, 25),
(99, 94),
(99, 95),
(100, 37),
(101, 23),
(102, 37),
(102, 39);

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
(68, 28);

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
(28, 'Colm', 'Le Gear', 15148823, '15148823@studentmail.ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 52, '2017-04-26'),
(29, 'Liam', 'Horgan', 14164736, '14164736@studentmail.ul.ie', '67c71e1abdad9713c147b2c36d12f2af2e36e63a4c02602a6d35c747967b838b', 100, '2017-04-26'),
(30, 'David', 'Kearney', 15169235, '15169235@studentmail.ul.ie', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 1000000, '2017-04-26'),
(31, 'Joe', 'Bloggs', 15148824, 'joebloggs@ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 0, '2017-04-26'),
(32, 'John', 'Smith', 15151515, '15151515@ul.ie', '42ad28944380f770cf17432c3494c07c32f680173b42c3562888f096e738ef7a', 0, '2017-04-26'),
(33, 'Rambo', 'John', 11164736, '11164736@studentmail.ul.ie', '67c71e1abdad9713c147b2c36d12f2af2e36e63a4c02602a6d35c747967b838b', 0, '2017-04-26'),
(34, 'Tim', 'Smith', 15184432, 'timsmith@ul.ie', 'a0eda2c5ce24b78dd287e9909956776befe9ba7f4ce0bbf84cccee1a536390fd', 0, '2017-04-26'),
(35, 'Bill', 'Murray', 15176832, '15176832@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(36, 'James', 'Burke', 12138876, 'jamesburke@ul.ie', '47c5e9e29dd048511ccc9681865dcf50b35c1ec8c3b60bf62bd16d5d7b6e3c07', 0, '2017-04-26'),
(37, 'Jane', 'Pot', 12164736, '12164736@studentmail.ul.ie', '6f29078e55141e0cef539cbd10d13bc0123cf6073859d32845aaba70084ba776', 0, '2017-04-26'),
(38, 'Mary', 'Buckley', 15168273, '15168273@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(39, 'Greg', 'Walsh', 14156789, '14156789@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(40, 'Ãine', 'O\'Connell', 18132345, 'aineoconnell@ul.ie', '9942dedeab5235c29f505eb2d0e7c1c0aa90724eac9cf41df54576dcdf40bcc9', 0, '2017-04-26'),
(41, 'Ãlain', 'Dejoure', 13164736, '13164736@studentmail.ul.ie', '826f71d9af118c6ce6cf973fda2846bc0e92a0fdfcdb7671fa86c69bd4706eaa', 0, '2017-04-26'),
(42, 'Paul', 'Browne', 15167689, '15167689@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(43, 'Donald', 'Trump', 15136785, '15136785@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(44, 'Sharon', 'Stokes', 16178323, '16178323@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(45, 'Eamon', 'Giles', 15154321, '15154321@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(46, 'Mary', 'Gas', 14164737, 'gasmary@ul.ie', 'eeb81b61dfcd29b413e4f567e91549073eaf433a5e86682190cf8643bf504c1c', 0, '2017-04-26'),
(47, 'Hans', 'GÃ¼ber', 16157789, 'hansguber@ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 0, '2017-04-26'),
(48, 'Tim', 'Casserly', 15149865, '15149865@ul.ie', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 0, '2017-04-26'),
(49, 'Mike', 'Hunt', 17165543, 'mikehunt@ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 0, '2017-04-26'),
(50, 'Mary', 'Jane', 14156780, 'janemary@ul.ie', 'f30569a2806d794ce796e0ab0d74359383e76b45d3316211f3e5d2bddf72d872', 0, '2017-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `user_banned`
--

CREATE TABLE `user_banned` (
  `moderatorId` mediumint(9) NOT NULL,
  `bannedUserId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_banned`
--

INSERT INTO `user_banned` (`moderatorId`, `bannedUserId`) VALUES
(28, 43);

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
(30, 19, 4),
(30, 20, 7),
(30, 21, 5),
(30, 22, 2),
(28, 19, 3),
(28, 20, 3),
(28, 21, 1),
(28, 22, 4),
(29, 22, 3),
(29, 23, 6),
(29, 24, 2),
(29, 25, 1),
(28, 23, 4),
(30, 23, 12),
(28, 26, 1),
(28, 16, 1),
(30, 26, 2),
(30, 27, 1),
(30, 28, 2),
(30, 29, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(29, 33, 1),
(29, 34, 1),
(30, 35, 5),
(30, 36, 12),
(30, 33, 1),
(30, 34, 1),
(29, 37, 2),
(29, 38, 1),
(29, 39, 2),
(30, 40, 1),
(30, 42, 2),
(29, 40, 1),
(30, 45, 2),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(29, 43, 2),
(29, 44, 2),
(30, 49, 1),
(28, 45, 1),
(30, 50, 1),
(29, 51, 1),
(29, 52, 1),
(29, 21, 3),
(29, 20, 3),
(30, 53, 1),
(28, 41, 2),
(30, 54, 1),
(30, 55, 1),
(29, 56, 2),
(28, 57, 1),
(30, 25, 3),
(30, 56, 2),
(29, 58, 5),
(29, 59, 1),
(28, 56, 1),
(30, 60, 1),
(30, 61, 1),
(30, 63, 1),
(30, 64, 1),
(30, 65, 2),
(30, 66, 4),
(30, 67, 2),
(29, 68, 1),
(29, 69, 1),
(29, 70, 1),
(28, 71, 2),
(29, 72, 3),
(30, 73, 2),
(30, 17, 1),
(30, 74, 1),
(29, 75, 1),
(29, 76, 1),
(29, 77, 1),
(29, 78, 1),
(30, 79, 2),
(28, 29, 2),
(28, 31, 2),
(30, 39, 2),
(30, 80, 1),
(29, 81, 1),
(29, 82, 1),
(28, 83, 1),
(28, 84, 2),
(29, 74, 1),
(29, 79, 1),
(30, 16, 2),
(28, 85, 3),
(28, 86, 11),
(29, 87, 1),
(29, 88, 1),
(29, 89, 1),
(28, 90, 8),
(28, 91, 8),
(29, 53, 1),
(28, 92, 1),
(28, 93, 1),
(29, 94, 1),
(29, 95, 1),
(28, 53, 3),
(30, 37, 1),
(28, 94, 3),
(28, 95, 3),
(28, 35, 1),
(28, 36, 2),
(28, 50, 1),
(28, 89, 1),
(28, 40, 3);

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
(28, 19),
(28, 38),
(29, 37),
(28, 91),
(28, 23),
(30, 53),
(30, 94),
(30, 95),
(30, 19),
(30, 20);

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
  MODIFY `tagId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
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
