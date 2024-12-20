-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 01:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizsystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_tbl`
--

CREATE TABLE `account_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`id`, `username`, `password`, `token`) VALUES
(0, 'Anna', '$2y$10$P23BI3MMSwlJlpBgCMoFbu3beUm1UCAdpMuPi.EtoLGuPppcyXKVW', 'ulVGAJJS4y64199/ZB75T8VZ/eNTXtz4tE5H9AbuMAI='),
(105, 'matthew supot', '$2y$10$4SDMCnvXKrI6aCyjOnyba.Ikpt8JPDT1aRzzpnEN4gczz71FtZyNK', 'Bp5TvlReQopPqP3N+kH7gtl85ATLHjtNpo+jR5r/jHg='),
(108, 'tekla', '$2y$10$azbIMRSNlsDEU3zahXL94OwISBSJF3Vec2RDgAtRvox2DV4ZjezrW', 'UFsBEIcuF3en3HHstwPmGIgfvy+BQW4UIkQdVQ0j0GU=');

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `adminID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`adminID`, `username`, `admin_email`, `admin_password`) VALUES
(0, 'Anna', 'annasabanal@gmail.com', 'anna123'),
(2, 'Matmat', 'Matchew@gmail.com', 'matmat123'),
(3, 'kapitantutan', 'pukenaenae@gmail.com', 'shet123'),
(4, 'longgadog', 'longlong@gmail.com', 'dogdog123'),
(5, 'hans', 'hanspogi@gmail.com', 'hans123');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_text` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `is_correct`) VALUES
(206, 55, '$', 1),
(207, 55, '&', 0),
(208, 55, '#', 0),
(209, 55, '@', 0),
(210, 56, 'define(\'CONSTANT_NAME\', \'value\');', 1),
(211, 56, 'constant(\'CONSTANT_NAME\', \'value\');', 0),
(212, 56, 'const CONSTANT_NAME = \'value\';', 1),
(213, 56, 'createConstant(\'CONSTANT_NAME\', \'value\');', 0),
(214, 57, 'echo', 1),
(215, 57, 'print', 1),
(216, 57, 'printf', 1),
(217, 57, 'out', 0),
(218, 58, 'If a variable has been set and is not NULL', 1),
(219, 58, 'If a variable is an array', 0),
(220, 58, 'If a variable is a string', 0),
(221, 58, 'If a variable is declared', 0),
(222, 59, 'session_start();', 1),
(223, 59, 'start_session();', 0),
(224, 59, 'begin_session();', 0),
(225, 59, 'sessionBegin();', 0),
(226, 60, '$_POST', 1),
(227, 60, '$_GET', 0),
(228, 60, '$_REQUEST', 1),
(229, 60, '$_FORM', 0),
(230, 61, 'session_start();', 1),
(231, 61, 'start_session();', 0),
(232, 61, 'begin_session();', 0),
(233, 61, 'sessionBegin();', 0),
(234, 62, '$_POST', 1),
(235, 62, '$_GET', 0),
(236, 62, '$_REQUEST', 1),
(237, 62, '$_FORM', 0),
(238, 63, 'session_start();', 1),
(239, 63, 'start_session();', 0),
(240, 63, 'begin_session();', 0),
(241, 63, 'sessionBegin();', 0),
(242, 64, '$_POST', 1),
(243, 64, '$_GET', 0),
(244, 64, '$_REQUEST', 1),
(245, 64, '$_FORM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proftable`
--

CREATE TABLE `proftable` (
  `profID` int(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proftable`
--

INSERT INTO `proftable` (`profID`, `fname`, `lname`, `email`, `password`, `isdeleted`) VALUES
(10, 'Colby', 'Dalton', 'colbydalton@gmailcom', 'colby123', 0),
(11, 'Mollie', 'Gina', 'molliegina@gmail.com', 'mollie123', 0),
(12, 'Cliff', 'May', 'cliffmay@gmail.com', 'cliff123', 0),
(13, 'Edie', 'Davie', 'ediedavie@gmail.com', 'edie123', 0),
(14, 'Ferdy', 'Dana', 'ferdydana@gmail.com', 'ferdy123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_text`) VALUES
(55, 28, 'Which symbol is used to declare a variable in PHP?'),
(56, 28, 'How do you declare a constant in PHP?'),
(57, 29, 'Which of the following is used to output data in PHP?'),
(58, 29, 'What does the PHP function isset() check?'),
(59, 30, 'How do you start a session in PHP?'),
(60, 30, 'Which PHP function is used to retrieve data from a form via POST?'),
(61, 30, 'How do you start a session in PHP?'),
(62, 30, 'Which PHP function is used to retrieve data from a form via POST?'),
(63, 30, 'How do you start a session in PHP?'),
(64, 30, 'Which PHP function is used to retrieve data from a form via POST?');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`) VALUES
(28, 'php basic quiz', 'php basic quiz ba'),
(29, 'basic php language quiz', 'quiz quiz quiz'),
(30, 'basic java', 'basic java program');

-- --------------------------------------------------------

--
-- Table structure for table `studentable`
--

CREATE TABLE `studentable` (
  `studentID` int(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gradeLVL` int(2) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentable`
--

INSERT INTO `studentable` (`studentID`, `fname`, `lname`, `gradeLVL`, `email`, `password`, `isdeleted`) VALUES
(10, 'John', 'Smith', 10, 'johnsmith@gmail.com', '123', 0),
(11, 'Julie ', 'Ericka', 10, 'julieericka@gmail.com', 'julie123', 0),
(19, 'Trey', 'Holand', 11, 'treyholland@gmail.com', 'trey123', 0),
(20, 'Ash', 'Irving', 11, 'ashirving@gmail.com', 'ash123', 0),
(29, 'Dorris', 'Karolyn', 12, 'dorriskarolyn@gmail.com', 'dorris123', 0),
(30, 'elena', 'gilbert', 11, 'burikat1@gmail.com', '123', 0),
(33, 'John', 'Smith', 10, 'johnsmith@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `proftable`
--
ALTER TABLE `proftable`
  ADD PRIMARY KEY (`profID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentable`
--
ALTER TABLE `studentable`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `proftable`
--
ALTER TABLE `proftable`
  MODIFY `profID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `studentable`
--
ALTER TABLE `studentable`
  MODIFY `studentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
