-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2020 at 03:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('5fb3d6d45b324', '5fb3d6d45d37c'),
('5fb3d6d463096', '5fb3d6d46403b'),
('5fb3d6d46717c', '5fb3d6d46779d'),
('5fb3d6d46c665', '5fb3d6d46d067'),
('5fb3d6d46e547', '5fb3d6d46fbcd'),
('5fb3d6d474ffe', '5fb3d6d47554b'),
('5fb3d6d4788ce', '5fb3d6d47924a'),
('5fb3d6d47b536', '5fb3d6d47b743'),
('5fb3d6d47feb0', '5fb3d6d480645'),
('5fb3d6d482170', '5fb3d6d48231a'),
('5fb3e54258073', '5fb3e54258911'),
('5fb3e5425ac8b', '5fb3e5425b43f');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('student1@vitstudent.ac.in', '5589222f16b93', -2, 2, 0, 2, '2020-11-16 18:31:54'),
('student1@vitstudent.ac.in', '558922ec03021', 1, 2, 1, 1, '2020-11-17 12:05:45'),
('rahi@vitstudent.ac.in', '5fb3d1bf867ee', 6, 10, 6, 4, '2020-11-17 14:00:03'),
('rahi@vitstudent.ac.in', '5589222f16b93', 1, 2, 1, 1, '2020-11-17 14:00:31'),
('student1@vitstudent.ac.in', '5fb3d1bf867ee', 0, 1, 0, 1, '2020-11-17 14:52:20'),
('dhruv@vitstudent.ac.in', '5fb3d1bf867ee', 8, 10, 8, 2, '2020-11-17 14:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('5fb3d6d45b324', ' Information', '5fb3d6d45d377'),
('5fb3d6d45b324', ' Valuable information', '5fb3d6d45d37b'),
('5fb3d6d45b324', ' Database', '5fb3d6d45d37c'),
('5fb3d6d45b324', 'Metadata', '5fb3d6d45d37d'),
('5fb3d6d463096', ' True', '5fb3d6d46403b'),
('5fb3d6d463096', 'False', '5fb3d6d46403f'),
('5fb3d6d463096', '-', '5fb3d6d464040'),
('5fb3d6d463096', '-', '5fb3d6d464041'),
('5fb3d6d46717c', 'Users', '5fb3d6d467799'),
('5fb3d6d46717c', 'Clients', '5fb3d6d46779c'),
('5fb3d6d46717c', 'End Users', '5fb3d6d46779d'),
('5fb3d6d46717c', 'Stake Holders', '5fb3d6d46779e'),
('5fb3d6d46c665', 'End Users', '5fb3d6d46d061'),
('5fb3d6d46c665', 'Data', '5fb3d6d46d065'),
('5fb3d6d46c665', 'Application Request', '5fb3d6d46d066'),
('5fb3d6d46c665', 'HTML', '5fb3d6d46d067'),
('5fb3d6d46e547', 'System-centered', '5fb3d6d46fbc9'),
('5fb3d6d46e547', 'User-centered', '5fb3d6d46fbcd'),
('5fb3d6d46e547', 'Company-centered', '5fb3d6d46fbce'),
('5fb3d6d46e547', 'Data-centered', '5fb3d6d46fbcf'),
('5fb3d6d474ffe', 'Relation', '5fb3d6d475548'),
('5fb3d6d474ffe', 'Attribute', '5fb3d6d47554b'),
('5fb3d6d474ffe', 'Parameter', '5fb3d6d47554c'),
('5fb3d6d474ffe', 'Constraint', '5fb3d6d47554d'),
('5fb3d6d4788ce', 'Relation', '5fb3d6d479243'),
('5fb3d6d4788ce', 'Attribute', '5fb3d6d479248'),
('5fb3d6d4788ce', 'Parameter', '5fb3d6d479249'),
('5fb3d6d4788ce', 'Constraint', '5fb3d6d47924a'),
('5fb3d6d47b536', 'Information Mastering System', '5fb3d6d47b73e'),
('5fb3d6d47b536', 'Instruction Management System', '5fb3d6d47b741'),
('5fb3d6d47b536', 'Instruction Manipulating System', '5fb3d6d47b742'),
('5fb3d6d47b536', 'Information Management System', '5fb3d6d47b743'),
('5fb3d6d47feb0', 'SDM', '5fb3d6d480645'),
('5fb3d6d47feb0', 'OODBM', '5fb3d6d480649'),
('5fb3d6d47feb0', 'DDM', '5fb3d6d48064a'),
('5fb3d6d47feb0', 'RDM', '5fb3d6d48064b'),
('5fb3d6d482170', 'data', '5fb3d6d482316'),
('5fb3d6d482170', 'attributes', '5fb3d6d482319'),
('5fb3d6d482170', 'entity', '5fb3d6d48231a'),
('5fb3d6d482170', 'constraints', '5fb3d6d48231b'),
('5fb3e54258073', '', '5fb3e54258911'),
('5fb3e54258073', '', '5fb3e54258914'),
('5fb3e54258073', '', '5fb3e54258915'),
('5fb3e54258073', '', '5fb3e54258916'),
('5fb3e5425ac8b', '', '5fb3e5425b43f'),
('5fb3e5425ac8b', '', '5fb3e5425b443'),
('5fb3e5425ac8b', '', '5fb3e5425b444'),
('5fb3e5425ac8b', '', '5fb3e5425b445');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('5fb3d1bf867ee', '5fb3d6d45b324', 'A collection of related data.', 4, 1),
('5fb3d1bf867ee', '5fb3d6d463096', 'DBMS is software.', 4, 2),
('5fb3d1bf867ee', '5fb3d6d46717c', 'DBMS manages the interaction between __________ and database.', 4, 3),
('5fb3d1bf867ee', '5fb3d6d46c665', 'Which of the following is not involved in DBMS?', 4, 4),
('5fb3d1bf867ee', '5fb3d6d46e547', 'Database is generally _________.', 4, 5),
('5fb3d1bf867ee', '5fb3d6d474ffe', 'A characteristic of an entity.', 4, 6),
('5fb3d1bf867ee', '5fb3d6d4788ce', 'The restrictions placed on the data.', 4, 7),
('5fb3d1bf867ee', '5fb3d6d47b536', ' IMS stands for?', 4, 8),
('5fb3d1bf867ee', '5fb3d6d47feb0', 'A model developed by Hammer and Mc Leod in 1981.', 4, 9),
('5fb3d1bf867ee', '5fb3d6d482170', ' Object=_________+relationships.', 4, 10),
('5fb3e52cc6ffb', '5fb3e54258073', '', 4, 1),
('5fb3e52cc6ffb', '5fb3e5425ac8b', '', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 03:39:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 03:42:12'),
('5fb3d1bf867ee', 'Computer Fundamentals - Dbms', 1, 0, 10, 10, '', '#DBMS #basic', '2020-11-17 13:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('student1@vitstudent.ac.in', -1, '2020-11-17 12:05:45'),
('rahi@vitstudent.ac.in', 7, '2020-11-17 14:00:31'),
('dhruv@vitstudent.ac.in', 8, '2020-11-17 14:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Dhruv', 'M', 'VIT', 'dhruv@vitstudent.ac.in', 9889977665, 'bb977e9278bd0d66b1d9657ef5356df9'),
('Rahi', 'M', 'VIT', 'rahi@vitstudent.ac.in', 9887766554, 'ce27dfcac89dc98846964d798e309fd0'),
('Student1', 'M', 'VIT', 'student1@vitstudent.ac.in', 9889989976, '5e5545d38a68148a2d5bd5ec9a89e327');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
