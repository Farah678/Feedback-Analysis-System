-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 04:23 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `acr_master`
--

CREATE TABLE `acr_master` (
  `acrId` int(10) NOT NULL,
  `ans_1` int(1) NOT NULL,
  `ans_2` int(1) NOT NULL,
  `ans_3` int(1) NOT NULL,
  `ans_4` int(1) NOT NULL,
  `ans_5` int(1) NOT NULL,
  `ans_6` int(1) NOT NULL,
  `ans_7` int(1) NOT NULL,
  `ans_8` int(1) NOT NULL,
  `ans_9` int(1) NOT NULL,
  `ans_10` int(1) NOT NULL,
  `ans_11` int(1) NOT NULL,
  `ans_12` int(1) NOT NULL,
  `ans_13` int(1) NOT NULL,
  `ans_14` int(1) NOT NULL,
  `ans_15` int(1) NOT NULL,
  `ans_16` int(1) NOT NULL,
  `ans_17` int(1) NOT NULL,
  `ans_18` int(1) NOT NULL,
  `ans_19` int(1) NOT NULL,
  `ans_20` int(1) NOT NULL,
  `ans_21` int(1) NOT NULL,
  `ans_22` int(1) NOT NULL,
  `ans_23` int(1) NOT NULL,
  `ans_24` int(1) NOT NULL,
  `ans_25` int(1) NOT NULL,
  `ans_26` varchar(10) NOT NULL,
  `ans_27` varchar(10) DEFAULT NULL,
  `ans_28` varchar(10) DEFAULT NULL,
  `remark` text,
  `feed_date` date NOT NULL,
  `pers_id` varchar(500) NOT NULL,
  `depId` int(10) NOT NULL,
  `desId` int(10) NOT NULL,
  `empId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acr_ques`
--

CREATE TABLE `acr_ques` (
  `que_id` int(11) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `one_word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acr_ques`
--

INSERT INTO `acr_ques` (`que_id`, `ques`, `one_word`) VALUES
(1, 'Intelligence', 'PERSONAL QUALITIES'),
(2, 'Confidence and will power ', 'PERSONAL QUALITIES'),
(3, 'Emotional stability ', 'PERSONAL QUALITIES'),
(4, 'Understanding and tolerance ', 'PERSONAL QUALITIES'),
(5, 'Appearance and bearing', 'PERSONAL QUALITIES'),
(6, 'Attitude towards profession of education', 'ATTITUDES'),
(7, 'Integrity', 'ATTITUDES'),
(8, 'Intellectual', 'ATTITUDES'),
(9, 'Financial', 'ATTITUDES'),
(10, 'Ability to produce constructive ideas', 'ATTITUDES'),
(11, 'Foresight', 'ATTITUDES'),
(12, 'Initiative and preserverence', 'ATTITUDES'),
(13, 'Reliability under pressure', 'ATTITUDES'),
(14, 'Acceptance of responsibility', 'ATTITUDES'),
(15, 'Judgement ', 'ATTITUDES'),
(16, 'Relation with superiors', 'ATTITUDES'),
(17, 'Relation with collegues', 'ATTITUDES'),
(18, 'Relation with subordinates ', 'ATTITUDES'),
(19, 'Class room teaching ', 'Proficiency In Job'),
(20, 'Student advising ', 'Proficiency In Job'),
(21, 'Supervision of graduate study ', 'Proficiency In Job'),
(22, 'Supervision of other academic programmes ', 'Proficiency In Job'),
(23, 'Research', 'Proficiency In Job'),
(24, 'Publications ', 'Proficiency In Job'),
(25, 'Contributes to the supportive environment ', 'Proficiency In Job');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(3) NOT NULL,
  `pers_id` varchar(500) NOT NULL,
  `desId` int(10) NOT NULL,
  `depId` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `pers_id`, `desId`, `depId`) VALUES
(1, 'NEDEMP10', 1, 1),
(2, 'NEDEMP11', 1, 2),
(3, 'NEDEMP12', 2, 3),
(4, 'NEDEMP13', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `administrative`
--

CREATE TABLE `administrative` (
  `aid` int(10) NOT NULL,
  `atitle` varchar(50) NOT NULL,
  `ajournals` varchar(60) NOT NULL,
  `adate` date NOT NULL,
  `avolume` varchar(20) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrative`
--

INSERT INTO `administrative` (`aid`, `atitle`, `ajournals`, `adate`, `avolume`, `pers_id`) VALUES
(1, 'def', 'ghi', '2017-07-07', '2', 'def');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `cid` int(10) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `assignments` varchar(100) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depId` int(10) NOT NULL,
  `depName` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depId`, `depName`) VALUES
(1, 'Research & Development'),
(2, 'Cinetic'),
(3, 'Industrial Liaison'),
(4, 'NES');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `desId` int(10) NOT NULL,
  `desName` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`desId`, `desName`) VALUES
(1, 'Manager'),
(2, 'Director'),
(3, 'President'),
(4, 'Assistant Manager'),
(5, 'Administrative Assistant'),
(6, 'Computer Attendant'),
(7, 'Director HR'),
(8, 'Director Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empId` int(10) NOT NULL,
  `pers_id` varchar(500) NOT NULL,
  `emp_name` varchar(500) DEFAULT NULL,
  `depId` int(10) NOT NULL,
  `desId` int(10) DEFAULT NULL,
  `empStaff` varchar(100) DEFAULT NULL,
  `empCategory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empId`, `pers_id`, `emp_name`, `depId`, `desId`, `empStaff`, `empCategory`) VALUES
(1, 'NEDEMP1', 'Elga Biesinger', 4, 5, 'teaching', 'regular'),
(2, 'NEDEMP2', 'Vivienne Caffery', 1, 8, 'non-teaching', 'regular'),
(3, 'NEDEMP3', 'Ebenezer Headingham', 4, 6, 'teaching', 'regular'),
(4, 'NEDEMP4', 'Darryl Suckling', 2, 4, 'non-teaching', 'regular'),
(5, 'NEDEMP5', 'Aleda Darkin', 3, 5, 'non-teaching', 'regular'),
(6, 'NEDEMP6', 'Marcelo Crosgrove', 4, 6, 'non-teaching', 'contractual'),
(7, 'NEDEMP7', 'Gabbi de\'-Ancy Willis', 2, 3, 'non-teaching', 'contractual'),
(8, 'NEDEMP8', 'Wait Greenless', 3, 1, 'non-teaching', 'contractual'),
(9, 'NEDEMP9', 'Tobe Brugden', 4, 2, 'teaching', 'contractual'),
(10, 'NEDEMP10', 'Raynor Hammett', 1, 2, 'teaching', 'contractual'),
(11, 'NEDEMP11', 'Marchall Hunting', 2, 7, 'teaching', 'contractual'),
(12, 'NEDEMP12', 'Edith Hoggan', 1, 3, 'non-teaching', 'contractual'),
(13, 'NEDEMP13', 'Vale Joddens', 4, 8, 'non-teaching', 'contractual'),
(14, 'NEDEMP14', 'Kendrick Capelow', 3, 4, 'non-teaching', 'contractual'),
(15, 'NEDEMP15', 'Emmalynn Gillyatt', 1, 4, 'teaching', 'regular'),
(16, 'NEDEMP16', 'Madelene Billows', 4, 1, 'teaching', 'contractual'),
(17, 'NEDEMP17', 'Elwin Harberer', 3, 4, 'teaching', 'regular'),
(18, 'NEDEMP18', 'Vic Knibley', 3, 4, 'teaching', 'contractual'),
(19, 'NEDEMP19', 'Audre Batkin', 1, 8, 'teaching', 'contractual'),
(20, 'NEDEMP20', 'Shae Fulford', 3, 6, 'non-teaching', 'contractual'),
(21, 'NEDEMP21', 'Vernice Crighton', 4, 8, 'teaching', 'regular'),
(22, 'NEDEMP22', 'Opaline Hyne', 4, 3, 'non-teaching', 'contractual'),
(23, 'NEDEMP23', 'Keenan Whetton', 4, 5, 'non-teaching', 'regular'),
(24, 'NEDEMP24', 'Francis Keen', 1, 7, 'teaching', 'regular'),
(25, 'NEDEMP25', 'James Mumford', 3, 7, 'teaching', 'regular'),
(26, 'NEDEMP26', 'Sidonia Brobak', 3, 7, 'teaching', 'contractual'),
(27, 'NEDEMP27', 'Boigie Massot', 2, 5, 'teaching', 'regular'),
(28, 'NEDEMP28', 'Ferdinande Argyle', 4, 6, 'teaching', 'regular'),
(29, 'NEDEMP29', 'Audrie McLeish', 4, 8, 'non-teaching', 'contractual'),
(30, 'NEDEMP30', 'Kimmy Brundell', 1, 3, 'non-teaching', 'contractual'),
(31, 'NEDEMP31', 'Danya Shurrocks', 4, 7, 'teaching', 'regular'),
(32, 'NEDEMP32', 'Raimund Godlonton', 2, 8, 'non-teaching', 'regular'),
(33, 'NEDEMP33', 'Freddie Bolter', 3, 1, 'non-teaching', 'regular'),
(34, 'NEDEMP34', 'Kennedy Speller', 3, 2, 'non-teaching', 'contractual'),
(35, 'NEDEMP35', 'Antin Hairon', 1, 4, 'non-teaching', 'regular'),
(36, 'NEDEMP36', 'Lorne Woolford', 4, 2, 'teaching', 'contractual'),
(37, 'NEDEMP37', 'Jocelyn Brion', 1, 1, 'non-teaching', 'regular'),
(38, 'NEDEMP38', 'Diena Louthe', 3, 1, 'teaching', 'contractual'),
(39, 'NEDEMP39', 'Janessa Reams', 3, 6, 'teaching', 'contractual'),
(40, 'NEDEMP40', 'Kerwin Kelling', 4, 2, 'teaching', 'contractual'),
(41, 'NEDEMP41', 'Delbert Hurl', 2, 6, 'non-teaching', 'contractual'),
(42, 'NEDEMP42', 'Giffard Clemmen', 2, 7, 'teaching', 'contractual'),
(43, 'NEDEMP43', 'Tedman Rubinovitsch', 3, 2, 'non-teaching', 'contractual'),
(44, 'NEDEMP44', 'Bank Bowley', 4, 5, 'non-teaching', 'contractual'),
(45, 'NEDEMP45', 'Seamus Flanner', 1, 3, 'teaching', 'contractual'),
(46, 'NEDEMP46', 'Tailor Beynke', 4, 1, 'non-teaching', 'contractual'),
(47, 'NEDEMP47', 'Maggy Viggers', 4, 3, 'non-teaching', 'contractual'),
(48, 'NEDEMP48', 'Padraig Poppleston', 3, 8, 'non-teaching', 'contractual'),
(49, 'NEDEMP49', 'Gideon Napoli', 1, 6, 'non-teaching', 'regular'),
(50, 'NEDEMP50', 'Bentlee Nannizzi', 4, 1, 'teaching', 'regular');

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `eid` int(10) NOT NULL,
  `ectitle` varchar(100) NOT NULL,
  `eclass` varchar(50) NOT NULL,
  `estudents` int(10) NOT NULL,
  `edate` varchar(50) NOT NULL,
  `esubmission` varchar(50) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`eid`, `ectitle`, `eclass`, `estudents`, `edate`, `esubmission`, `pers_id`) VALUES
(1, 'Object Oriented Programming', 'second year', 74, '10-10-2017', '10-12-2017', 'NEDEMP10'),
(2, 'Database Management System', 'second year', 74, '7-10-2017', '10-12-2017', 'NEDEMP10');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` int(5) NOT NULL,
  `desId` int(10) NOT NULL,
  `depId` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `desId`, `depId`) VALUES
(1, 5, 1),
(2, 7, 4),
(3, 8, 4),
(4, 5, 3),
(5, 6, 3),
(6, 1, 1),
(7, 1, 2),
(8, 3, 4),
(9, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form`
--

CREATE TABLE `feedback_form` (
  `formId` int(3) NOT NULL,
  `formName` varchar(500) NOT NULL,
  `activate` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_form`
--

INSERT INTO `feedback_form` (`formId`, `formName`, `activate`) VALUES
(1, 'Peer Evaluation Form', 'enabled'),
(2, 'ACR Form', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `feedId` int(100) NOT NULL,
  `ans_1` int(50) NOT NULL,
  `ans_2` int(50) NOT NULL,
  `ans_3` int(50) NOT NULL,
  `ans_4` int(50) NOT NULL,
  `ans_5` int(50) NOT NULL,
  `ans_6` int(50) NOT NULL,
  `ans_7` int(50) NOT NULL,
  `ans_8` int(50) NOT NULL,
  `ans_9` int(50) NOT NULL,
  `ans_10` int(50) NOT NULL,
  `ans_11` int(50) NOT NULL,
  `ans_12` int(50) NOT NULL,
  `remark` text,
  `feed_date` date NOT NULL,
  `pers_id` varchar(500) NOT NULL,
  `depId` int(10) NOT NULL,
  `desId` int(10) NOT NULL,
  `empId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`feedId`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `ans_5`, `ans_6`, `ans_7`, `ans_8`, `ans_9`, `ans_10`, `ans_11`, `ans_12`, `remark`, `feed_date`, `pers_id`, `depId`, `desId`, `empId`) VALUES
(1, 3, 8, 3, 9, 4, 9, 4, 10, 5, 10, 5, 10, 'good coperative communicative', '2013-05-13', 'NEDEMP3', 1, 4, 29),
(2, 2, 5, 7, 10, 3, 6, 9, 2, 5, 8, 1, 4, 'coperative', '2015-01-27', 'NEDEMP1', 2, 2, 11),
(3, 5, 2, 9, 6, 3, 10, 7, 4, 1, 8, 5, 2, 'polite communicative', '2016-10-31', 'NEDEMP5', 3, 3, 13),
(4, 8, 10, 2, 5, 7, 9, 1, 3, 5, 7, 10, 2, NULL, '2016-12-01', 'NEDEMP7', 4, 1, 38),
(5, 7, 2, 6, 1, 5, 10, 4, 9, 3, 8, 2, 7, NULL, '2014-09-29', 'NEDEMP6', 5, 4, 49),
(6, 5, 4, 2, 1, 10, 9, 7, 6, 5, 3, 2, 1, NULL, '2015-03-11', 'NEDEMP4', 6, 2, 34),
(7, 4, 9, 3, 7, 2, 6, 1, 5, 10, 4, 9, 3, NULL, '2013-04-28', 'NEDEMP4', 7, 2, 32),
(8, 10, 5, 10, 5, 10, 5, 10, 5, 10, 5, 10, 5, NULL, '2014-11-25', 'NEDEMP9', 8, 3, 49),
(9, 2, 3, 4, 5, 6, 8, 9, 10, 1, 3, 4, 5, 'good communicative hadworking', '2016-11-08', 'NEDEMP1', 1, 1, 42),
(10, 7, 1, 4, 8, 2, 5, 9, 3, 6, 10, 4, 7, NULL, '2013-09-19', 'NEDEMP6', 2, 3, 41),
(11, 1, 8, 6, 3, 10, 8, 5, 2, 10, 7, 4, 2, 'good coperative good communicative hadworking punctual hadworking communicative good hadworking', '2013-05-05', 'NEDEMP1', 3, 1, 18),
(12, 3, 1, 9, 6, 4, 2, 10, 8, 5, 3, 1, 9, NULL, '2016-11-10', 'NEDEMP3', 4, 3, 9),
(13, 4, 1, 7, 4, 1, 8, 5, 2, 9, 6, 2, 9, 'punctual polite', '2015-07-21', 'NEDEMP3', 5, 1, 48),
(14, 10, 6, 1, 6, 1, 6, 2, 7, 2, 7, 2, 8, 'punctual good', '2016-03-14', 'NEDEMP9', 6, 2, 14),
(15, 7, 4, 1, 8, 5, 2, 9, 6, 3, 10, 7, 4, 'hadworking', '2013-10-01', 'NEDEMP7', 7, 4, 25),
(16, 7, 3, 10, 6, 2, 8, 5, 1, 7, 3, 10, 6, NULL, '2013-02-11', 'NEDEMP6', 8, 2, 20),
(17, 3, 8, 2, 6, 10, 4, 9, 3, 7, 1, 5, 10, 'punctual good', '2015-05-18', 'NEDEMP3', 1, 4, 9),
(18, 7, 3, 9, 5, 1, 8, 4, 10, 6, 2, 9, 5, NULL, '2016-09-08', 'NEDEMP6', 2, 4, 15),
(19, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 1, NULL, '2013-06-19', 'NEDEMP7', 3, 1, 5),
(20, 8, 1, 5, 9, 3, 7, 1, 5, 8, 2, 6, 10, 'communicative hadworking polite', '2015-01-24', 'NEDEMP7', 4, 3, 7),
(21, 10, 1, 3, 4, 5, 7, 8, 9, 1, 2, 3, 5, 'communicative', '2016-10-18', 'NEDEMP9', 5, 2, 41),
(22, 1, 4, 6, 9, 1, 4, 6, 9, 1, 4, 6, 8, 'hadworking', '2016-02-13', 'NEDEMP1', 6, 1, 27),
(23, 2, 4, 5, 7, 9, 1, 2, 4, 6, 7, 9, 1, NULL, '2015-10-23', 'NEDEMP2', 7, 2, 27),
(24, 4, 8, 1, 5, 8, 2, 5, 9, 2, 6, 9, 3, NULL, '2015-07-07', 'NEDEMP4', 8, 2, 14),
(25, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, NULL, '2014-02-04', 'NEDEMP8', 1, 3, 9),
(26, 2, 9, 5, 1, 8, 4, 1, 7, 4, 10, 7, 3, NULL, '2016-04-17', 'NEDEMP2', 2, 3, 9),
(27, 8, 7, 6, 4, 3, 1, 10, 9, 7, 6, 4, 3, 'punctual hadworking', '2015-10-15', 'NEDEMP8', 3, 4, 42),
(28, 4, 10, 6, 2, 8, 5, 1, 7, 3, 9, 6, 2, NULL, '2015-06-07', 'NEDEMP3', 4, 3, 50),
(29, 9, 1, 4, 7, 10, 3, 5, 8, 1, 4, 6, 9, 'hadworking communicative', '2016-11-21', 'NEDEMP8', 5, 2, 35),
(30, 9, 7, 5, 4, 2, 10, 8, 6, 4, 2, 10, 8, NULL, '2016-11-22', 'NEDEMP8', 6, 2, 9),
(31, 6, 10, 3, 7, 1, 5, 8, 2, 6, 9, 3, 7, 'coperative good', '2013-05-26', 'NEDEMP6', 7, 3, 37),
(32, 8, 10, 3, 6, 8, 1, 3, 6, 9, 1, 4, 7, NULL, '2015-09-12', 'NEDEMP7', 8, 3, 21),
(33, 7, 2, 6, 10, 4, 8, 2, 6, 10, 4, 8, 2, 'punctual punctual hadworking punctual good hadworking coperative', '2015-12-13', 'NEDEMP7', 1, 2, 17),
(34, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 'polite good communicative hadworking', '2014-08-01', 'NEDEMP1', 2, 1, 19),
(35, 10, 4, 7, 1, 4, 8, 1, 5, 8, 2, 5, 9, 'polite communicative communicative communicative polite', '2013-12-10', 'NEDEMP9', 3, 1, 45),
(36, 9, 9, 9, 10, 10, 1, 1, 2, 2, 2, 3, 3, NULL, '2014-11-07', 'NEDEMP8', 4, 4, 21),
(37, 9, 7, 6, 4, 2, 1, 9, 7, 5, 4, 2, 10, NULL, '2014-02-28', 'NEDEMP8', 5, 2, 23),
(38, 1, 8, 5, 2, 8, 5, 2, 9, 6, 2, 9, 6, 'punctual coperative', '2014-03-01', 'NEDEMP1', 6, 2, 31),
(39, 6, 7, 9, 1, 2, 4, 6, 8, 9, 1, 3, 4, NULL, '2013-05-10', 'NEDEMP5', 7, 4, 46),
(40, 6, 1, 7, 3, 8, 4, 10, 5, 1, 7, 3, 8, 'good communicative coperative', '2013-03-11', 'NEDEMP5', 8, 2, 24),
(41, 3, 1, 9, 6, 4, 2, 9, 7, 5, 2, 10, 8, NULL, '2016-03-06', 'NEDEMP3', 1, 4, 2),
(42, 10, 3, 6, 9, 2, 4, 7, 10, 3, 5, 8, 1, NULL, '2013-09-01', 'NEDEMP9', 2, 3, 45),
(43, 7, 3, 9, 5, 10, 6, 2, 7, 3, 9, 5, 10, NULL, '2014-02-12', 'NEDEMP7', 3, 3, 36),
(44, 4, 5, 7, 8, 9, 10, 1, 2, 3, 5, 6, 7, 'communicative communicative', '2013-05-11', 'NEDEMP4', 4, 4, 49),
(45, 5, 10, 5, 1, 6, 1, 6, 2, 7, 2, 8, 3, 'punctual good hadworking', '2014-05-25', 'NEDEMP4', 5, 2, 41),
(46, 7, 6, 5, 4, 2, 1, 10, 9, 8, 7, 5, 4, NULL, '2016-07-25', 'NEDEMP7', 6, 4, 1),
(47, 7, 1, 4, 7, 1, 4, 8, 1, 4, 8, 1, 5, 'good punctual communicative communicative', '2016-02-24', 'NEDEMP7', 7, 2, 23),
(48, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 'communicative punctual', '2015-11-09', 'NEDEMP5', 8, 1, 35),
(49, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, NULL, '2015-11-12', 'NEDEMP3', 1, 1, 31),
(50, 4, 5, 7, 8, 9, 1, 2, 3, 5, 6, 7, 9, 'coperative', '2014-05-15', 'NEDEMP4', 2, 4, 11),
(51, 6, 7, 8, 9, 10, 2, 3, 4, 5, 6, 7, 9, NULL, '2014-02-06', 'NEDEMP5', 3, 1, 8),
(52, 2, 7, 1, 6, 10, 5, 9, 4, 8, 3, 7, 2, 'hadworking polite polite', '2016-09-29', 'NEDEMP2', 4, 2, 24),
(53, 4, 1, 9, 6, 3, 10, 8, 5, 2, 9, 7, 4, NULL, '2014-01-06', 'NEDEMP4', 5, 4, 27),
(54, 7, 9, 1, 4, 6, 8, 10, 2, 4, 6, 8, 10, 'punctual coperative', '2016-01-06', 'NEDEMP7', 6, 3, 28),
(55, 4, 6, 8, 10, 2, 4, 6, 8, 10, 2, 4, 6, 'hadworking', '2014-08-14', 'NEDEMP4', 7, 1, 10),
(56, 2, 5, 8, 10, 3, 6, 9, 1, 4, 7, 10, 3, NULL, '2014-04-09', 'NEDEMP2', 8, 3, 2),
(57, 10, 1, 2, 4, 5, 6, 7, 9, 10, 1, 2, 4, 'communicative good good', '2016-04-16', 'NEDEMP9', 1, 1, 35),
(58, 1, 5, 8, 2, 5, 9, 2, 6, 9, 3, 6, 10, NULL, '2014-05-05', 'NEDEMP1', 2, 1, 50),
(59, 10, 1, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, NULL, '2015-11-06', 'NEDEMP9', 3, 3, 30),
(60, 5, 3, 2, 10, 8, 6, 4, 2, 10, 8, 6, 4, NULL, '2015-06-23', 'NEDEMP5', 4, 1, 41),
(61, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 'communicative', '2016-06-06', 'NEDEMP6', 5, 2, 42),
(62, 1, 9, 8, 6, 4, 2, 1, 9, 7, 6, 4, 2, 'good polite punctual punctual hadworking good polite', '2014-12-02', 'NEDEMP1', 6, 3, 33),
(63, 2, 4, 6, 8, 1, 3, 5, 7, 10, 2, 4, 7, 'polite communicative punctual punctual polite coperative coperative', '2015-01-14', 'NEDEMP2', 7, 1, 14),
(64, 3, 6, 9, 2, 5, 9, 2, 5, 8, 1, 4, 8, NULL, '2016-12-26', 'NEDEMP2', 8, 4, 34),
(65, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2013-05-05', 'NEDEMP1', 1, 1, 5),
(66, 4, 8, 3, 8, 3, 7, 2, 7, 1, 6, 1, 6, NULL, '2014-09-02', 'NEDEMP3', 2, 3, 47),
(67, 6, 10, 4, 7, 1, 5, 9, 2, 6, 10, 4, 8, NULL, '2013-12-07', 'NEDEMP5', 3, 1, 43),
(68, 4, 10, 7, 3, 10, 7, 3, 10, 7, 3, 10, 6, 'good hadworking coperative hadworking', '2013-12-29', 'NEDEMP3', 4, 4, 29),
(69, 10, 2, 4, 6, 7, 9, 1, 2, 4, 6, 8, 9, NULL, '2015-04-13', 'NEDEMP9', 5, 2, 20),
(70, 9, 6, 2, 9, 6, 2, 9, 5, 2, 8, 5, 1, NULL, '2015-12-05', 'NEDEMP8', 6, 1, 4),
(71, 8, 6, 4, 2, 10, 8, 6, 4, 2, 10, 8, 6, NULL, '2015-12-25', 'NEDEMP8', 7, 4, 48),
(72, 3, 10, 7, 5, 2, 10, 7, 4, 2, 9, 7, 4, NULL, '2014-03-28', 'NEDEMP2', 8, 2, 29),
(73, 2, 6, 10, 5, 9, 4, 8, 3, 7, 2, 6, 1, 'communicative coperative polite', '2016-05-09', 'NEDEMP1', 1, 1, 20),
(74, 2, 7, 1, 6, 1, 5, 10, 4, 9, 4, 8, 3, NULL, '2013-04-18', 'NEDEMP2', 2, 3, 31),
(75, 5, 1, 7, 3, 10, 6, 2, 8, 4, 1, 7, 3, NULL, '2015-11-29', 'NEDEMP4', 3, 4, 6),
(76, 10, 9, 7, 6, 4, 3, 1, 10, 8, 7, 6, 4, NULL, '2016-02-25', 'NEDEMP9', 4, 4, 47),
(77, 5, 1, 8, 5, 1, 8, 5, 2, 8, 5, 2, 9, 'coperative polite', '2015-01-10', 'NEDEMP4', 5, 2, 42),
(78, 8, 9, 9, 10, 10, 1, 2, 2, 3, 3, 4, 4, NULL, '2015-06-22', 'NEDEMP7', 6, 3, 28),
(79, 10, 8, 6, 5, 3, 1, 9, 8, 6, 4, 2, 10, NULL, '2014-02-21', 'NEDEMP9', 7, 1, 23),
(80, 2, 4, 6, 8, 10, 3, 5, 7, 9, 1, 3, 6, 'coperative', '2014-07-22', 'NEDEMP2', 8, 4, 9),
(81, 5, 8, 1, 5, 8, 1, 4, 7, 10, 3, 6, 9, NULL, '2013-03-03', 'NEDEMP5', 1, 2, 37),
(82, 4, 2, 1, 9, 7, 6, 4, 3, 1, 10, 8, 7, 'punctual punctual', '2016-12-15', 'NEDEMP3', 2, 3, 7),
(83, 1, 6, 2, 7, 2, 7, 2, 8, 3, 8, 3, 9, 'good punctual', '2016-08-04', 'NEDEMP1', 3, 3, 19),
(84, 5, 7, 8, 10, 1, 2, 4, 5, 7, 8, 10, 1, 'punctual communicative', '2015-07-19', 'NEDEMP5', 4, 3, 25),
(85, 4, 1, 8, 5, 2, 9, 5, 2, 9, 6, 3, 10, NULL, '2015-10-26', 'NEDEMP4', 5, 1, 1),
(86, 4, 4, 3, 2, 1, 10, 9, 9, 8, 7, 6, 5, 'communicative communicative', '2013-09-05', 'NEDEMP4', 6, 2, 13),
(87, 4, 10, 5, 10, 6, 1, 6, 2, 7, 2, 8, 3, NULL, '2014-09-14', 'NEDEMP4', 7, 3, 45),
(88, 1, 3, 5, 7, 9, 10, 2, 4, 6, 8, 10, 2, NULL, '2016-12-16', 'NEDEMP1', 8, 3, 40),
(89, 7, 5, 3, 1, 10, 8, 6, 4, 3, 1, 9, 7, 'coperative punctual', '2016-12-27', 'NEDEMP6', 1, 1, 9),
(90, 9, 10, 10, 1, 2, 2, 3, 4, 5, 5, 6, 7, NULL, '2016-09-12', 'NEDEMP8', 2, 2, 43),
(91, 9, 8, 7, 7, 6, 5, 4, 3, 3, 2, 1, 10, 'communicative', '2015-08-03', 'NEDEMP8', 3, 4, 37),
(92, 8, 3, 8, 3, 7, 2, 7, 2, 7, 1, 6, 1, 'punctual punctual', '2016-11-04', 'NEDEMP7', 4, 1, 24),
(93, 1, 7, 3, 8, 4, 10, 5, 1, 7, 2, 8, 4, 'polite communicative', '2015-05-06', 'NEDEMP1', 5, 4, 1),
(94, 1, 4, 8, 2, 5, 9, 3, 6, 10, 3, 7, 1, NULL, '2014-11-27', 'NEDEMP1', 6, 4, 6),
(95, 9, 5, 10, 6, 2, 7, 3, 8, 4, 9, 5, 10, 'communicative punctual communicative', '2013-10-15', 'NEDEMP8', 7, 1, 32),
(96, 3, 2, 2, 1, 10, 10, 9, 9, 8, 7, 7, 6, 'polite good', '2014-04-14', 'NEDEMP3', 8, 1, 19),
(97, 9, 10, 10, 1, 1, 2, 2, 3, 3, 4, 4, 5, 'punctual communicative hadworking good hadworking communicative', '2015-08-29', 'NEDEMP8', 1, 2, 31),
(98, 5, 8, 10, 3, 5, 8, 10, 3, 6, 8, 1, 3, 'hadworking hadworking punctual polite punctual', '2014-02-26', 'NEDEMP5', 2, 4, 2),
(99, 4, 5, 6, 7, 8, 9, 10, 1, 3, 4, 5, 6, NULL, '2013-01-15', 'NEDEMP3', 3, 4, 45),
(100, 2, 2, 3, 3, 4, 4, 5, 5, 6, 7, 7, 8, NULL, '2016-10-01', 'NEDEMP2', 4, 4, 44),
(101, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 'punctual hadworking', '2015-08-28', 'NEDEMP2', 5, 3, 8),
(102, 4, 1, 8, 5, 1, 8, 5, 2, 8, 5, 2, 9, 'hadworking', '2015-03-07', 'NEDEMP4', 6, 3, 44),
(103, 5, 4, 2, 1, 9, 7, 6, 4, 3, 1, 10, 8, 'hadworking', '2013-08-07', 'NEDEMP5', 7, 4, 15),
(104, 4, 9, 3, 7, 2, 6, 1, 5, 9, 4, 8, 3, NULL, '2016-12-18', 'NEDEMP4', 8, 4, 28),
(105, 6, 9, 3, 6, 10, 3, 6, 10, 3, 6, 10, 3, 'punctual polite good communicative', '2015-06-01', 'NEDEMP6', 1, 1, 14),
(106, 4, 7, 1, 5, 9, 2, 6, 10, 4, 8, 1, 5, NULL, '2016-11-21', 'NEDEMP3', 2, 4, 30),
(107, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'communicative polite', '2013-05-31', 'NEDEMP1', 3, 1, 5),
(108, 2, 5, 8, 10, 3, 6, 8, 1, 4, 6, 9, 2, 'polite hadworking', '2013-09-29', 'NEDEMP2', 4, 2, 46),
(109, 3, 9, 5, 1, 6, 2, 8, 4, 10, 6, 2, 7, NULL, '2013-02-16', 'NEDEMP3', 5, 4, 23),
(110, 5, 8, 2, 5, 9, 2, 6, 9, 3, 6, 9, 3, 'punctual polite polite', '2015-06-29', 'NEDEMP4', 6, 2, 14),
(111, 8, 4, 10, 6, 2, 8, 4, 10, 6, 2, 8, 4, 'communicative polite', '2016-04-09', 'NEDEMP7', 7, 2, 11),
(112, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, NULL, '2013-11-03', 'NEDEMP2', 8, 3, 7),
(113, 2, 7, 2, 8, 3, 8, 4, 9, 4, 9, 5, 10, 'hadworking hadworking', '2013-03-23', 'NEDEMP2', 1, 4, 27),
(114, 9, 8, 7, 6, 5, 4, 3, 2, 1, 10, 9, 8, NULL, '2014-04-25', 'NEDEMP8', 2, 4, 22),
(115, 10, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 'good good punctual punctual', '2015-05-01', 'NEDEMP9', 3, 4, 4),
(116, 4, 5, 7, 9, 10, 2, 4, 6, 7, 9, 1, 2, NULL, '2016-07-01', 'NEDEMP3', 4, 3, 35),
(117, 10, 3, 6, 10, 3, 6, 9, 2, 5, 8, 1, 4, 'polite coperative punctual good polite coperative', '2015-05-10', 'NEDEMP9', 5, 1, 14),
(118, 7, 8, 9, 9, 10, 1, 2, 3, 4, 4, 5, 6, 'good polite communicative', '2016-07-07', 'NEDEMP6', 6, 3, 40),
(119, 9, 5, 2, 8, 4, 1, 7, 3, 9, 6, 2, 8, NULL, '2014-03-12', 'NEDEMP8', 7, 3, 34),
(120, 7, 8, 9, 10, 1, 2, 2, 3, 4, 5, 6, 6, NULL, '2016-09-08', 'NEDEMP7', 8, 3, 42),
(121, 10, 9, 9, 8, 7, 7, 6, 5, 5, 4, 4, 3, NULL, '2016-12-29', 'NEDEMP9', 1, 4, 3),
(122, 6, 8, 10, 1, 3, 5, 7, 9, 10, 2, 4, 6, NULL, '2013-12-31', 'NEDEMP5', 2, 2, 4),
(123, 7, 6, 4, 3, 1, 9, 8, 6, 4, 3, 1, 10, NULL, '2014-01-11', 'NEDEMP7', 3, 3, 21),
(124, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 'polite polite', '2015-08-11', 'NEDEMP2', 4, 1, 28),
(125, 1, 8, 5, 3, 10, 8, 5, 2, 10, 7, 4, 2, 'good hadworking', '2013-05-13', 'NEDEMP1', 5, 1, 18),
(126, 1, 4, 7, 10, 3, 7, 10, 3, 6, 9, 2, 6, NULL, '2016-02-29', 'NEDEMP1', 6, 3, 24),
(127, 2, 4, 5, 7, 9, 10, 2, 4, 6, 7, 9, 1, 'hadworking', '2015-12-02', 'NEDEMP2', 7, 3, 28),
(128, 1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 1, 'communicative communicative punctual punctual', '2014-06-21', 'NEDEMP1', 8, 2, 14),
(129, 3, 2, 2, 1, 10, 9, 8, 7, 6, 5, 4, 3, NULL, '2016-07-13', 'NEDEMP3', 1, 3, 49),
(130, 3, 9, 6, 3, 10, 7, 3, 10, 7, 4, 1, 7, 'communicative', '2014-08-26', 'NEDEMP2', 2, 3, 37),
(131, 1, 9, 7, 5, 3, 1, 9, 8, 6, 4, 2, 10, 'punctual hadworking good', '2013-07-08', 'NEDEMP1', 3, 2, 17),
(132, 10, 4, 8, 2, 7, 1, 5, 9, 3, 8, 2, 6, 'polite polite communicative good good', '2013-11-22', 'NEDEMP9', 4, 2, 40),
(133, 5, 5, 4, 4, 3, 2, 2, 1, 1, 10, 9, 9, 'punctual good communicative punctual good polite', '2015-06-16', 'NEDEMP5', 5, 3, 34),
(134, 9, 6, 4, 2, 9, 7, 5, 3, 10, 8, 6, 3, NULL, '2014-06-02', 'NEDEMP8', 6, 2, 29),
(135, 10, 8, 5, 2, 9, 6, 3, 1, 8, 5, 2, 9, 'punctual good good polite good', '2015-12-05', 'NEDEMP9', 7, 1, 1),
(136, 2, 8, 4, 10, 7, 3, 9, 5, 2, 8, 4, 10, NULL, '2015-01-07', 'NEDEMP2', 8, 4, 44),
(137, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, NULL, '2016-05-18', 'NEDEMP8', 1, 4, 42),
(138, 7, 8, 9, 10, 1, 1, 2, 3, 4, 5, 6, 6, 'punctual good', '2016-08-26', 'NEDEMP7', 2, 3, 42),
(139, 10, 8, 6, 4, 2, 10, 8, 6, 4, 2, 10, 9, 'punctual polite coperative', '2013-02-26', 'NEDEMP9', 3, 3, 12),
(140, 1, 4, 7, 10, 4, 7, 10, 3, 6, 9, 2, 5, 'coperative communicative', '2015-12-15', 'NEDEMP1', 4, 2, 22),
(141, 4, 3, 2, 1, 10, 10, 9, 8, 7, 6, 5, 5, NULL, '2013-04-15', 'NEDEMP3', 5, 1, 8),
(142, 3, 5, 8, 1, 3, 6, 9, 1, 4, 7, 9, 2, NULL, '2013-12-25', 'NEDEMP2', 6, 2, 49),
(143, 8, 4, 10, 6, 3, 9, 5, 1, 7, 3, 9, 6, 'polite hadworking punctual', '2016-11-08', 'NEDEMP7', 7, 4, 18),
(144, 2, 7, 2, 7, 1, 6, 1, 6, 1, 5, 10, 5, NULL, '2014-07-10', 'NEDEMP2', 8, 3, 45),
(145, 1, 6, 1, 5, 10, 5, 9, 4, 9, 3, 8, 3, 'polite communicative polite', '2013-06-13', 'NEDEMP1', 1, 1, 32),
(146, 7, 6, 4, 3, 1, 10, 8, 7, 5, 4, 2, 1, NULL, '2014-10-08', 'NEDEMP7', 2, 2, 30),
(147, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 'hadworking', '2016-08-22', 'NEDEMP6', 3, 1, 48),
(148, 3, 10, 6, 3, 10, 6, 3, 10, 6, 3, 10, 6, 'communicative punctual polite', '2014-01-20', 'NEDEMP3', 4, 4, 30),
(149, 1, 9, 8, 7, 5, 4, 2, 1, 9, 8, 7, 5, NULL, '2016-08-08', 'NEDEMP1', 5, 1, 2),
(150, 6, 10, 4, 8, 2, 5, 9, 3, 7, 1, 5, 8, 'polite polite hadworking good polite', '2014-04-25', 'NEDEMP6', 6, 2, 47),
(151, 3, 9, 6, 2, 8, 5, 1, 7, 4, 10, 6, 3, 'hadworking polite', '2015-12-15', 'NEDEMP3', 7, 1, 5),
(152, 3, 2, 2, 2, 2, 1, 1, 1, 10, 10, 10, 10, NULL, '2016-03-02', 'NEDEMP2', 8, 4, 41),
(153, 7, 3, 9, 5, 2, 8, 4, 10, 7, 3, 9, 5, 'good coperative', '2016-12-27', 'NEDEMP6', 1, 1, 19),
(154, 7, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 'communicative', '2013-05-18', 'NEDEMP6', 2, 1, 3),
(155, 2, 3, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 'punctual communicative communicative polite', '2016-10-13', 'NEDEMP2', 3, 4, 42),
(156, 6, 10, 3, 6, 9, 2, 6, 9, 2, 5, 9, 2, 'good punctual', '2014-09-05', 'NEDEMP6', 4, 2, 5),
(157, 7, 6, 4, 3, 1, 9, 8, 6, 5, 3, 1, 10, 'polite hadworking good polite', '2014-03-05', 'NEDEMP7', 5, 4, 23),
(158, 4, 1, 9, 6, 3, 1, 8, 6, 3, 1, 8, 6, 'coperative hadworking polite', '2015-01-06', 'NEDEMP3', 6, 4, 38),
(159, 4, 1, 8, 5, 2, 9, 6, 3, 10, 7, 4, 1, 'hadworking punctual communicative hadworking hadworking communicative', '2016-08-16', 'NEDEMP4', 7, 4, 10),
(160, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, NULL, '2016-04-11', 'NEDEMP5', 8, 2, 40),
(161, 2, 4, 6, 8, 10, 2, 5, 7, 9, 1, 3, 5, 'polite polite polite', '2013-12-29', 'NEDEMP2', 1, 1, 2),
(162, 10, 10, 9, 8, 7, 6, 5, 5, 4, 3, 2, 1, 'coperative hadworking', '2015-12-21', 'NEDEMP9', 2, 4, 42),
(163, 9, 3, 6, 10, 4, 7, 1, 5, 8, 2, 5, 9, 'good hadworking', '2014-03-28', 'NEDEMP8', 3, 3, 48),
(164, 1, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, NULL, '2015-07-03', 'NEDEMP1', 4, 2, 36),
(165, 4, 9, 5, 10, 6, 1, 7, 2, 7, 3, 8, 4, 'hadworking good communicative', '2014-12-31', 'NEDEMP4', 5, 4, 48),
(166, 9, 1, 2, 4, 6, 8, 10, 2, 4, 5, 7, 9, NULL, '2015-05-28', 'NEDEMP8', 6, 4, 21),
(167, 8, 9, 10, 1, 3, 4, 5, 6, 8, 9, 10, 1, NULL, '2015-05-31', 'NEDEMP7', 7, 4, 24),
(168, 4, 1, 9, 6, 4, 2, 9, 7, 4, 2, 10, 7, 'good coperative polite communicative polite', '2015-11-01', 'NEDEMP3', 8, 3, 48),
(169, 9, 1, 3, 5, 6, 8, 10, 2, 4, 6, 7, 9, NULL, '2015-05-31', 'NEDEMP8', 1, 4, 21),
(170, 9, 8, 7, 6, 4, 3, 2, 1, 10, 8, 7, 6, 'punctual coperative coperative coperative polite communicative', '2013-05-03', 'NEDEMP8', 2, 1, 10),
(171, 5, 7, 9, 10, 2, 4, 5, 7, 9, 1, 2, 4, NULL, '2013-02-21', 'NEDEMP5', 3, 4, 43),
(172, 3, 6, 8, 10, 2, 5, 7, 9, 1, 4, 6, 8, NULL, '2015-09-23', 'NEDEMP3', 4, 2, 23),
(173, 8, 1, 3, 6, 9, 2, 4, 7, 10, 2, 5, 8, 'polite good hadworking', '2016-05-20', 'NEDEMP7', 5, 1, 29),
(174, 9, 2, 5, 8, 1, 4, 8, 1, 4, 7, 10, 3, NULL, '2015-04-07', 'NEDEMP8', 6, 2, 13),
(175, 4, 6, 8, 9, 1, 3, 4, 6, 7, 9, 1, 2, NULL, '2016-06-03', 'NEDEMP4', 7, 2, 35),
(176, 8, 5, 1, 8, 5, 1, 8, 5, 1, 8, 5, 1, NULL, '2016-01-13', 'NEDEMP7', 8, 2, 5),
(177, 8, 4, 10, 5, 1, 7, 2, 8, 4, 9, 5, 1, NULL, '2014-03-03', 'NEDEMP8', 1, 3, 37),
(178, 6, 9, 3, 6, 10, 3, 7, 1, 4, 8, 1, 5, NULL, '2016-07-14', 'NEDEMP5', 2, 1, 26),
(179, 1, 8, 4, 10, 7, 3, 9, 5, 2, 8, 4, 1, NULL, '2015-03-08', 'NEDEMP1', 3, 4, 46),
(180, 4, 3, 2, 1, 9, 8, 7, 6, 5, 4, 3, 1, NULL, '2015-08-15', 'NEDEMP4', 4, 4, 39),
(181, 4, 8, 2, 5, 9, 3, 6, 10, 4, 7, 1, 5, NULL, '2016-07-19', 'NEDEMP4', 5, 2, 26),
(182, 9, 4, 10, 5, 10, 5, 10, 5, 10, 5, 10, 5, 'hadworking', '2014-11-20', 'NEDEMP9', 6, 3, 49),
(183, 1, 3, 6, 8, 10, 2, 5, 7, 9, 1, 4, 6, 'good punctual', '2014-11-22', 'NEDEMP1', 7, 1, 12),
(184, 8, 3, 8, 3, 9, 4, 9, 4, 10, 5, 10, 5, 'hadworking', '2015-03-29', 'NEDEMP7', 8, 2, 2),
(185, 10, 1, 1, 2, 2, 2, 3, 3, 4, 4, 5, 5, NULL, '2015-09-21', 'NEDEMP9', 1, 2, 32),
(186, 9, 7, 6, 4, 2, 1, 9, 7, 6, 4, 2, 1, NULL, '2014-05-17', 'NEDEMP8', 2, 3, 26),
(187, 4, 1, 9, 7, 5, 3, 1, 9, 7, 5, 3, 1, 'hadworking', '2013-12-05', 'NEDEMP3', 3, 1, 22),
(188, 9, 8, 7, 7, 6, 5, 4, 3, 2, 1, 10, 9, 'hadworking', '2015-02-06', 'NEDEMP8', 4, 2, 31),
(189, 7, 3, 10, 6, 3, 9, 6, 3, 9, 6, 2, 9, NULL, '2014-08-29', 'NEDEMP6', 5, 3, 38),
(190, 5, 9, 2, 6, 10, 4, 8, 2, 6, 10, 4, 8, NULL, '2014-04-10', 'NEDEMP4', 6, 3, 46),
(191, 5, 3, 1, 8, 6, 4, 2, 10, 8, 6, 3, 1, 'polite communicative coperative hadworking coperative', '2013-11-12', 'NEDEMP4', 7, 4, 22),
(192, 6, 8, 1, 3, 6, 9, 1, 4, 6, 9, 1, 4, NULL, '2014-05-22', 'NEDEMP5', 8, 4, 5),
(193, 4, 8, 1, 5, 9, 3, 7, 10, 4, 8, 2, 5, NULL, '2013-01-19', 'NEDEMP4', 1, 4, 32),
(194, 4, 2, 10, 8, 6, 4, 2, 10, 7, 5, 3, 1, 'communicative', '2013-11-26', 'NEDEMP4', 2, 1, 22),
(195, 9, 10, 1, 3, 4, 5, 6, 7, 8, 9, 10, 1, NULL, '2014-12-25', 'NEDEMP8', 3, 1, 20),
(196, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, NULL, '2014-05-06', 'NEDEMP3', 4, 2, 17),
(197, 4, 3, 2, 1, 10, 9, 8, 7, 6, 5, 5, 4, 'communicative', '2016-10-09', 'NEDEMP3', 5, 4, 2),
(198, 7, 4, 2, 9, 6, 3, 10, 7, 4, 1, 8, 5, 'communicative', '2014-05-18', 'NEDEMP7', 6, 2, 32),
(199, 9, 8, 7, 7, 6, 6, 5, 4, 4, 3, 2, 2, NULL, '2016-07-19', 'NEDEMP8', 7, 3, 48),
(200, 3, 6, 9, 2, 4, 7, 10, 3, 6, 9, 1, 4, 'good hadworking good', '2015-01-27', 'NEDEMP3', 8, 1, 12),
(201, 10, 8, 5, 2, 9, 6, 4, 1, 8, 5, 3, 10, NULL, '2016-05-20', 'NEDEMP9', 1, 2, 6),
(202, 4, 6, 8, 9, 1, 3, 5, 7, 9, 1, 3, 5, NULL, '2013-10-30', 'NEDEMP3', 2, 3, 1),
(203, 4, 9, 4, 9, 4, 9, 3, 8, 3, 8, 3, 8, NULL, '2015-09-02', 'NEDEMP4', 3, 1, 9),
(204, 2, 2, 2, 1, 1, 1, 1, 10, 10, 10, 10, 10, NULL, '2016-04-16', 'NEDEMP2', 4, 1, 42),
(205, 1, 4, 6, 8, 10, 2, 4, 6, 9, 1, 3, 5, 'coperative', '2014-03-12', 'NEDEMP1', 5, 3, 4),
(206, 10, 4, 8, 2, 6, 10, 4, 9, 3, 7, 1, 5, NULL, '2013-04-02', 'NEDEMP9', 6, 4, 33),
(207, 5, 2, 9, 6, 3, 10, 7, 4, 1, 8, 5, 2, NULL, '2016-10-22', 'NEDEMP5', 7, 3, 13),
(208, 9, 2, 5, 8, 1, 4, 7, 10, 3, 6, 9, 3, 'polite good coperative', '2014-09-30', 'NEDEMP8', 8, 4, 7),
(209, 3, 1, 10, 9, 7, 6, 5, 3, 2, 1, 9, 8, 'hadworking polite punctual', '2013-12-24', 'NEDEMP2', 1, 3, 19),
(210, 5, 9, 4, 8, 3, 7, 2, 6, 1, 5, 10, 4, NULL, '2013-10-09', 'NEDEMP4', 2, 2, 37),
(211, 8, 6, 4, 1, 9, 6, 4, 1, 9, 6, 4, 2, 'punctual polite', '2013-07-13', 'NEDEMP8', 3, 4, 19),
(212, 2, 7, 2, 7, 2, 6, 1, 6, 1, 6, 10, 5, 'punctual punctual', '2014-09-01', 'NEDEMP2', 4, 4, 47),
(213, 3, 4, 5, 6, 7, 9, 10, 1, 2, 3, 4, 5, 'coperative', '2016-11-09', 'NEDEMP3', 5, 4, 43),
(214, 1, 9, 7, 5, 3, 1, 10, 8, 6, 4, 2, 10, NULL, '2014-01-10', 'NEDEMP1', 6, 4, 22),
(215, 2, 9, 5, 2, 8, 5, 1, 8, 4, 1, 7, 4, NULL, '2016-10-03', 'NEDEMP2', 7, 1, 15),
(216, 3, 10, 7, 4, 1, 8, 5, 2, 9, 6, 3, 10, 'punctual polite', '2016-02-18', 'NEDEMP3', 8, 3, 4),
(217, 10, 7, 4, 1, 8, 4, 1, 8, 5, 2, 9, 6, NULL, '2014-02-06', 'NEDEMP9', 1, 3, 30),
(218, 2, 10, 9, 7, 6, 4, 2, 1, 9, 8, 6, 4, 'punctual punctual punctual', '2016-01-09', 'NEDEMP2', 2, 2, 46),
(219, 1, 10, 9, 7, 6, 4, 3, 1, 10, 9, 7, 6, NULL, '2016-10-21', 'NEDEMP1', 3, 1, 5),
(220, 5, 3, 10, 7, 4, 1, 8, 5, 2, 9, 7, 4, NULL, '2013-08-24', 'NEDEMP5', 4, 2, 23),
(221, 6, 10, 4, 7, 1, 5, 9, 3, 7, 1, 5, 9, NULL, '2014-07-01', 'NEDEMP5', 5, 3, 49),
(222, 9, 1, 3, 5, 7, 10, 2, 4, 6, 8, 10, 3, NULL, '2013-05-02', 'NEDEMP8', 6, 2, 44),
(223, 7, 8, 9, 10, 2, 3, 4, 5, 6, 7, 8, 9, NULL, '2014-03-13', 'NEDEMP7', 7, 4, 10),
(224, 5, 3, 1, 9, 7, 4, 2, 10, 8, 6, 4, 2, NULL, '2014-02-28', 'NEDEMP5', 8, 1, 25),
(225, 5, 6, 7, 8, 9, 10, 1, 2, 2, 3, 4, 5, 'coperative', '2016-06-30', 'NEDEMP4', 1, 1, 39),
(226, 10, 9, 8, 7, 7, 6, 5, 4, 3, 2, 2, 1, 'communicative', '2015-10-13', 'NEDEMP9', 2, 4, 39),
(227, 10, 8, 7, 5, 4, 2, 1, 9, 8, 6, 5, 3, 'coperative punctual', '2015-09-12', 'NEDEMP9', 3, 3, 41),
(228, 4, 9, 4, 9, 3, 8, 3, 8, 3, 8, 3, 7, NULL, '2015-07-04', 'NEDEMP4', 4, 1, 7),
(229, 10, 2, 4, 6, 8, 10, 2, 4, 7, 9, 1, 3, 'polite communicative', '2013-04-22', 'NEDEMP9', 5, 1, 44),
(230, 1, 3, 4, 6, 8, 9, 1, 3, 4, 6, 7, 9, NULL, '2015-02-07', 'NEDEMP1', 6, 1, 18),
(231, 5, 2, 10, 7, 5, 3, 10, 8, 5, 3, 1, 8, 'coperative communicative communicative', '2016-04-14', 'NEDEMP4', 7, 3, 3),
(232, 2, 10, 9, 7, 6, 4, 3, 2, 10, 9, 7, 6, NULL, '2016-10-25', 'NEDEMP1', 8, 1, 5),
(233, 7, 2, 6, 10, 4, 8, 3, 7, 1, 5, 9, 4, 'hadworking', '2017-01-04', 'NEDEMP7', 1, 2, 29),
(234, 9, 2, 6, 9, 3, 6, 10, 3, 6, 10, 3, 7, 'coperative hadworking polite', '2013-02-18', 'NEDEMP8', 2, 4, 35),
(235, 4, 6, 7, 9, 1, 2, 4, 6, 7, 9, 10, 2, 'coperative', '2016-04-05', 'NEDEMP4', 3, 2, 33),
(236, 1, 3, 5, 6, 8, 10, 2, 3, 5, 7, 9, 10, NULL, '2015-09-28', 'NEDEMP1', 4, 3, 26),
(237, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 'hadworking', '2016-03-30', 'NEDEMP5', 5, 2, 40),
(238, 9, 2, 4, 7, 9, 2, 4, 7, 9, 2, 4, 7, NULL, '2015-08-18', 'NEDEMP8', 6, 1, 20),
(239, 7, 10, 3, 6, 9, 2, 5, 8, 1, 5, 8, 1, 'hadworking', '2014-01-25', 'NEDEMP6', 7, 4, 48),
(240, 1, 7, 3, 10, 6, 3, 9, 5, 2, 8, 5, 1, 'hadworking', '2015-06-30', 'NEDEMP1', 8, 2, 49),
(241, 4, 6, 7, 8, 10, 1, 2, 4, 5, 6, 8, 9, NULL, '2014-08-05', 'NEDEMP4', 1, 4, 13),
(242, 5, 10, 5, 10, 5, 10, 5, 9, 4, 9, 4, 9, NULL, '2016-03-16', 'NEDEMP5', 2, 2, 16),
(243, 7, 7, 8, 8, 9, 9, 10, 10, 10, 1, 1, 2, NULL, '2014-02-22', 'NEDEMP6', 3, 3, 12),
(244, 3, 5, 7, 9, 1, 3, 5, 7, 9, 1, 3, 5, 'coperative', '2013-11-29', 'NEDEMP2', 4, 1, 2),
(245, 7, 3, 9, 6, 2, 9, 5, 1, 8, 4, 10, 7, NULL, '2013-10-06', 'NEDEMP6', 5, 4, 28),
(246, 3, 6, 9, 2, 5, 8, 1, 4, 7, 10, 3, 6, NULL, '2016-03-23', 'NEDEMP3', 6, 1, 25),
(247, 3, 5, 6, 8, 9, 10, 2, 3, 5, 6, 7, 9, 'good communicative coperative good communicative', '2014-07-22', 'NEDEMP3', 7, 1, 13),
(248, 4, 9, 5, 1, 6, 2, 8, 3, 9, 4, 10, 6, 'good communicative punctual punctual', '2016-01-19', 'NEDEMP4', 8, 4, 10),
(249, 3, 4, 6, 7, 8, 10, 1, 2, 4, 5, 7, 8, NULL, '2014-03-05', 'NEDEMP3', 1, 4, 8),
(250, 6, 1, 5, 9, 3, 7, 1, 5, 9, 3, 7, 1, 'polite coperative punctual hadworking communicative', '2015-11-17', 'NEDEMP6', 2, 3, 16),
(251, 4, 7, 10, 4, 7, 10, 3, 6, 9, 2, 5, 9, NULL, '2013-04-08', 'NEDEMP4', 3, 3, 38),
(252, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, 'polite polite', '2013-10-09', 'NEDEMP2', 4, 2, 7),
(253, 6, 5, 3, 2, 1, 9, 8, 6, 5, 3, 2, 10, 'hadworking', '2014-08-07', 'NEDEMP6', 5, 2, 28),
(254, 4, 6, 8, 1, 3, 5, 7, 10, 2, 4, 6, 9, 'polite coperative', '2015-12-05', 'NEDEMP3', 6, 2, 25),
(255, 8, 7, 6, 5, 4, 3, 1, 10, 9, 8, 7, 6, 'communicative communicative', '2013-08-06', 'NEDEMP7', 7, 3, 13),
(256, 2, 7, 2, 7, 2, 7, 2, 8, 3, 8, 3, 8, 'punctual coperative hadworking punctual', '2016-01-28', 'NEDEMP2', 8, 1, 13),
(257, 7, 8, 9, 10, 10, 1, 2, 3, 4, 5, 5, 6, 'polite communicative', '2016-08-29', 'NEDEMP6', 1, 3, 42),
(258, 10, 7, 4, 1, 8, 5, 2, 9, 6, 3, 9, 6, NULL, '2014-07-13', 'NEDEMP9', 2, 1, 35),
(259, 8, 7, 5, 4, 3, 2, 1, 9, 8, 7, 6, 5, NULL, '2016-10-27', 'NEDEMP7', 3, 4, 4),
(260, 2, 5, 8, 1, 4, 7, 10, 3, 6, 9, 2, 5, 'punctual good communicative', '2015-06-10', 'NEDEMP2', 4, 3, 16),
(261, 1, 6, 2, 7, 3, 9, 4, 10, 5, 1, 6, 2, NULL, '2014-07-31', 'NEDEMP1', 5, 2, 42),
(262, 2, 4, 6, 8, 10, 2, 5, 7, 9, 1, 3, 5, 'polite punctual', '2014-04-30', 'NEDEMP2', 6, 3, 6),
(263, 10, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'polite polite coperative', '2014-06-19', 'NEDEMP9', 7, 3, 14),
(264, 2, 9, 6, 3, 10, 7, 4, 1, 8, 5, 3, 10, 'coperative good coperative', '2015-11-27', 'NEDEMP2', 8, 3, 1),
(265, 1, 8, 5, 1, 8, 5, 2, 9, 6, 3, 10, 7, 'polite polite punctual good good', '2014-07-06', 'NEDEMP1', 1, 4, 35),
(266, 7, 6, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 'communicative', '2013-09-27', 'NEDEMP7', 2, 4, 14),
(267, 5, 6, 7, 7, 8, 8, 9, 10, 10, 1, 2, 2, 'good polite', '2014-09-06', 'NEDEMP5', 3, 3, 18),
(268, 5, 2, 10, 8, 5, 3, 1, 8, 6, 4, 1, 9, NULL, '2016-09-30', 'NEDEMP4', 4, 1, 9),
(269, 7, 4, 10, 7, 3, 10, 6, 3, 9, 6, 2, 9, 'polite punctual', '2014-10-16', 'NEDEMP6', 5, 3, 40),
(270, 1, 6, 1, 6, 10, 5, 10, 5, 10, 4, 9, 4, 'good polite', '2014-01-14', 'NEDEMP1', 6, 2, 39),
(271, 8, 5, 2, 9, 5, 2, 9, 6, 3, 9, 6, 3, NULL, '2016-11-29', 'NEDEMP7', 7, 1, 15),
(272, 1, 5, 10, 4, 9, 3, 7, 2, 6, 10, 5, 9, 'punctual communicative punctual polite polite communicative polite good coperative', '2015-07-02', 'NEDEMP1', 8, 2, 10),
(273, 6, 1, 6, 2, 7, 2, 8, 3, 8, 4, 9, 4, NULL, '2014-12-23', 'NEDEMP5', 1, 3, 48),
(274, 1, 4, 6, 8, 10, 2, 4, 7, 9, 1, 3, 5, NULL, '2014-05-02', 'NEDEMP1', 2, 3, 6),
(275, 2, 7, 3, 9, 5, 10, 6, 2, 8, 4, 9, 5, NULL, '2016-01-30', 'NEDEMP2', 3, 2, 10),
(276, 1, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 10, 'hadworking communicative', '2015-04-26', 'NEDEMP1', 4, 1, 34),
(277, 2, 4, 6, 8, 9, 1, 3, 4, 6, 8, 10, 1, 'punctual hadworking', '2016-03-20', 'NEDEMP2', 5, 3, 32),
(278, 5, 4, 3, 2, 1, 1, 10, 9, 8, 7, 6, 5, NULL, '2013-04-23', 'NEDEMP5', 6, 4, 9),
(279, 9, 10, 2, 3, 5, 6, 8, 9, 1, 2, 4, 5, NULL, '2013-06-02', 'NEDEMP8', 7, 2, 48),
(280, 2, 10, 8, 6, 4, 2, 10, 8, 6, 4, 2, 9, 'good punctual', '2013-04-17', 'NEDEMP2', 8, 1, 14),
(281, 7, 5, 2, 10, 8, 6, 4, 1, 9, 7, 5, 2, NULL, '2014-04-02', 'NEDEMP6', 1, 3, 27),
(282, 7, 9, 2, 5, 8, 1, 4, 7, 10, 2, 5, 8, NULL, '2016-09-02', 'NEDEMP6', 2, 3, 32),
(283, 2, 5, 9, 2, 6, 9, 3, 6, 10, 3, 6, 10, 'polite hadworking', '2014-05-09', 'NEDEMP2', 3, 1, 50),
(284, 4, 2, 10, 8, 6, 4, 2, 10, 8, 6, 4, 2, NULL, '2014-06-15', 'NEDEMP3', 4, 3, 28),
(285, 7, 6, 4, 3, 1, 10, 8, 7, 5, 4, 2, 1, 'hadworking', '2014-11-10', 'NEDEMP7', 5, 2, 31),
(286, 3, 10, 7, 4, 1, 7, 4, 1, 8, 5, 2, 9, NULL, '2015-07-15', 'NEDEMP3', 6, 1, 47),
(287, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 'punctual polite', '2015-03-30', 'NEDEMP5', 7, 3, 28),
(288, 4, 6, 8, 10, 2, 4, 6, 8, 10, 2, 3, 5, NULL, '2014-02-09', 'NEDEMP4', 8, 4, 4),
(289, 1, 6, 10, 5, 9, 4, 9, 3, 8, 2, 7, 1, NULL, '2016-07-24', 'NEDEMP1', 1, 2, 22),
(290, 3, 9, 6, 2, 9, 5, 2, 9, 5, 2, 8, 5, NULL, '2013-03-18', 'NEDEMP2', 2, 2, 20),
(291, 5, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 'polite coperative hadworking', '2016-02-09', 'NEDEMP4', 3, 4, 34),
(292, 6, 9, 3, 6, 9, 2, 6, 9, 2, 5, 9, 2, NULL, '2014-09-26', 'NEDEMP6', 4, 2, 6),
(293, 2, 6, 10, 3, 7, 1, 4, 8, 2, 5, 9, 3, 'polite coperative', '2015-10-31', 'NEDEMP2', 5, 1, 17),
(294, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 'coperative', '2015-08-28', 'NEDEMP5', 6, 1, 33),
(295, 1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 'communicative', '2013-12-08', 'NEDEMP1', 7, 1, 8),
(296, 3, 2, 1, 1, 10, 9, 8, 8, 7, 6, 5, 4, NULL, '2013-04-15', 'NEDEMP3', 8, 2, 8),
(297, 6, 10, 4, 8, 2, 6, 10, 4, 8, 1, 5, 9, NULL, '2014-10-06', 'NEDEMP6', 1, 3, 3),
(298, 5, 9, 2, 6, 9, 2, 6, 9, 2, 6, 9, 3, 'polite polite hadworking', '2015-04-07', 'NEDEMP5', 2, 1, 12),
(299, 2, 7, 2, 8, 3, 8, 3, 8, 3, 8, 3, 9, NULL, '2016-06-04', 'NEDEMP2', 3, 1, 17),
(300, 10, 7, 5, 2, 9, 7, 4, 2, 9, 6, 4, 1, 'punctual coperative communicative', '2013-01-18', 'NEDEMP9', 4, 1, 14),
(301, 8, 1, 3, 5, 8, 10, 3, 5, 8, 10, 2, 5, NULL, '2014-07-27', 'NEDEMP7', 5, 3, 8),
(302, 9, 3, 7, 10, 4, 8, 2, 5, 9, 3, 6, 10, NULL, '2014-11-01', 'NEDEMP8', 6, 1, 5),
(303, 7, 6, 5, 5, 4, 3, 2, 1, 10, 9, 8, 7, NULL, '2014-04-14', 'NEDEMP7', 7, 1, 21),
(304, 2, 9, 5, 2, 8, 5, 1, 8, 5, 1, 8, 4, 'polite punctual', '2013-02-27', 'NEDEMP2', 8, 2, 19),
(305, 9, 6, 3, 1, 8, 5, 2, 10, 7, 4, 2, 9, 'communicative', '2015-12-28', 'NEDEMP8', 1, 2, 1),
(306, 4, 2, 1, 10, 9, 7, 6, 5, 4, 2, 1, 10, NULL, '2014-10-17', 'NEDEMP3', 2, 1, 29),
(307, 7, 2, 8, 3, 9, 4, 9, 5, 10, 5, 1, 6, 'coperative punctual punctual', '2015-10-28', 'NEDEMP6', 3, 4, 9),
(308, 5, 2, 8, 5, 1, 7, 4, 10, 7, 3, 9, 6, 'hadworking', '2013-04-16', 'NEDEMP5', 4, 4, 22),
(309, 3, 9, 6, 2, 9, 5, 2, 8, 5, 1, 8, 4, 'good communicative', '2016-11-15', 'NEDEMP2', 5, 1, 16),
(310, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 'polite coperative good', '2015-04-22', 'NEDEMP7', 6, 2, 29),
(311, 10, 4, 7, 10, 4, 7, 10, 4, 7, 10, 4, 7, 'punctual good good', '2016-11-18', 'NEDEMP9', 7, 2, 32),
(312, 2, 4, 6, 8, 9, 1, 3, 5, 7, 8, 10, 2, NULL, '2016-05-16', 'NEDEMP2', 8, 4, 34),
(313, 2, 7, 3, 8, 3, 9, 4, 10, 5, 1, 6, 2, NULL, '2014-02-18', 'NEDEMP2', 1, 4, 37),
(314, 6, 7, 8, 9, 10, 10, 1, 2, 3, 4, 5, 6, 'good coperative communicative polite', '2016-07-21', 'NEDEMP5', 2, 4, 40),
(315, 6, 1, 6, 1, 6, 2, 7, 2, 7, 2, 8, 3, 'punctual punctual', '2014-03-19', 'NEDEMP5', 3, 4, 39),
(316, 4, 7, 10, 3, 5, 8, 1, 3, 6, 9, 2, 4, NULL, '2014-12-07', 'NEDEMP4', 4, 3, 11),
(317, 10, 9, 8, 6, 5, 4, 2, 1, 10, 8, 7, 6, NULL, '2016-12-31', 'NEDEMP9', 5, 2, 7),
(318, 6, 9, 2, 5, 8, 1, 4, 7, 10, 3, 6, 9, 'coperative good hadworking', '2013-01-13', 'NEDEMP6', 6, 1, 36),
(319, 5, 4, 2, 1, 9, 8, 6, 5, 3, 2, 1, 9, 'polite hadworking coperative', '2014-01-26', 'NEDEMP5', 7, 1, 21),
(320, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, NULL, '2016-01-02', 'NEDEMP8', 8, 3, 38),
(321, 2, 1, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 'coperative punctual good', '2015-07-11', 'NEDEMP2', 1, 1, 37),
(322, 2, 10, 9, 8, 7, 5, 4, 3, 1, 10, 9, 7, 'hadworking good', '2013-08-06', 'NEDEMP2', 2, 3, 14),
(323, 4, 7, 10, 3, 6, 10, 3, 6, 9, 2, 5, 8, 'punctual communicative', '2013-03-17', 'NEDEMP3', 3, 3, 37),
(324, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 'polite communicative hadworking', '2014-08-08', 'NEDEMP4', 4, 2, 20),
(325, 7, 1, 5, 9, 3, 7, 1, 4, 8, 2, 6, 10, NULL, '2014-12-16', 'NEDEMP7', 5, 3, 5),
(326, 2, 6, 10, 3, 7, 10, 4, 7, 1, 5, 8, 2, 'good polite communicative', '2015-03-15', 'NEDEMP2', 6, 3, 10),
(327, 9, 10, 1, 1, 2, 3, 4, 4, 5, 6, 6, 7, NULL, '2016-09-10', 'NEDEMP9', 7, 1, 43),
(328, 1, 6, 1, 7, 2, 7, 2, 7, 2, 8, 3, 8, NULL, '2016-05-06', 'NEDEMP1', 8, 2, 16),
(329, 1, 3, 4, 5, 7, 8, 9, 1, 2, 3, 5, 6, NULL, '2013-06-03', 'NEDEMP1', 1, 3, 49),
(330, 9, 6, 2, 9, 5, 2, 8, 5, 2, 8, 5, 1, 'coperative polite polite communicative', '2015-10-25', 'NEDEMP8', 2, 4, 3),
(331, 5, 10, 5, 10, 6, 1, 6, 1, 6, 1, 6, 1, NULL, '2013-07-30', 'NEDEMP5', 3, 3, 32),
(332, 7, 6, 4, 2, 1, 9, 8, 6, 4, 3, 1, 9, NULL, '2013-12-22', 'NEDEMP7', 4, 3, 21),
(333, 3, 7, 1, 5, 9, 3, 7, 1, 5, 9, 3, 7, NULL, '2013-11-29', 'NEDEMP3', 5, 3, 42),
(334, 9, 3, 8, 2, 6, 10, 4, 8, 2, 7, 1, 5, NULL, '2013-05-24', 'NEDEMP8', 6, 1, 34),
(335, 4, 10, 6, 1, 7, 2, 8, 3, 9, 4, 10, 5, 'good polite coperative punctual coperative', '2015-10-02', 'NEDEMP4', 7, 2, 7),
(336, 8, 2, 6, 10, 4, 8, 2, 7, 1, 5, 9, 3, 'coperative', '2016-06-10', 'NEDEMP7', 8, 3, 23),
(337, 10, 4, 7, 1, 5, 9, 2, 6, 10, 4, 8, 1, 'good polite', '2015-05-31', 'NEDEMP9', 1, 2, 11),
(338, 10, 7, 4, 1, 8, 5, 2, 9, 5, 2, 9, 6, NULL, '2014-03-21', 'NEDEMP9', 2, 3, 31),
(339, 5, 6, 7, 8, 8, 9, 10, 1, 1, 2, 3, 4, NULL, '2015-06-29', 'NEDEMP5', 3, 1, 28),
(340, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 'coperative polite hadworking punctual good hadworking', '2013-02-01', 'NEDEMP4', 4, 1, 2),
(341, 6, 8, 9, 1, 3, 4, 6, 7, 9, 10, 2, 4, 'hadworking', '2016-09-27', 'NEDEMP6', 5, 2, 39),
(342, 1, 4, 8, 2, 5, 9, 3, 6, 10, 4, 7, 1, NULL, '2014-12-23', 'NEDEMP1', 6, 4, 7),
(343, 2, 7, 3, 8, 4, 9, 5, 10, 5, 1, 6, 2, 'coperative', '2014-04-06', 'NEDEMP2', 7, 4, 39),
(344, 4, 9, 4, 8, 3, 8, 2, 7, 1, 6, 1, 5, NULL, '2014-04-12', 'NEDEMP4', 8, 4, 43),
(345, 3, 6, 9, 3, 6, 9, 2, 5, 9, 2, 5, 8, NULL, '2013-05-09', 'NEDEMP3', 1, 1, 38),
(346, 3, 2, 1, 10, 9, 8, 8, 7, 6, 5, 4, 3, NULL, '2016-10-04', 'NEDEMP2', 2, 1, 1),
(347, 5, 3, 1, 8, 6, 4, 2, 10, 7, 5, 3, 1, NULL, '2013-08-16', 'NEDEMP5', 3, 3, 19),
(348, 7, 10, 2, 5, 8, 1, 4, 6, 9, 2, 5, 8, NULL, '2016-04-21', 'NEDEMP6', 4, 2, 28),
(349, 10, 5, 10, 5, 10, 5, 10, 5, 10, 5, 9, 4, NULL, '2014-06-20', 'NEDEMP9', 5, 1, 44),
(350, 7, 5, 3, 1, 9, 7, 5, 3, 1, 9, 8, 6, NULL, '2016-01-11', 'NEDEMP6', 6, 2, 48),
(351, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 9, 9, NULL, '2013-04-25', 'NEDEMP3', 7, 4, 1),
(352, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 'punctual communicative', '2014-10-02', 'NEDEMP1', 8, 3, 17),
(353, 1, 5, 10, 5, 10, 5, 10, 5, 9, 4, 9, 4, 'coperative', '2014-03-21', 'NEDEMP1', 1, 4, 41),
(354, 4, 9, 5, 10, 5, 10, 5, 10, 5, 1, 6, 1, NULL, '2013-06-12', 'NEDEMP4', 2, 3, 30),
(355, 8, 7, 5, 4, 2, 10, 9, 7, 6, 4, 2, 1, 'coperative', '2014-07-20', 'NEDEMP8', 3, 4, 28),
(356, 7, 1, 4, 8, 2, 6, 9, 3, 7, 1, 4, 8, 'communicative', '2013-12-30', 'NEDEMP6', 4, 4, 44),
(357, 6, 7, 7, 8, 8, 9, 9, 10, 1, 1, 2, 2, 'polite communicative communicative polite good', '2014-08-25', 'NEDEMP5', 5, 2, 18),
(358, 3, 2, 1, 10, 9, 8, 8, 7, 6, 5, 4, 3, 'punctual coperative', '2016-09-15', 'NEDEMP3', 6, 4, 1),
(359, 5, 8, 1, 3, 6, 9, 1, 4, 7, 10, 2, 5, NULL, '2015-03-24', 'NEDEMP5', 7, 4, 14),
(360, 7, 1, 4, 8, 2, 5, 9, 3, 7, 10, 4, 8, NULL, '2013-10-24', 'NEDEMP6', 8, 4, 42),
(361, 5, 3, 1, 9, 7, 5, 3, 1, 9, 7, 5, 3, 'hadworking', '2015-02-16', 'NEDEMP4', 1, 4, 36),
(362, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, NULL, '2016-07-02', 'NEDEMP6', 2, 2, 43),
(363, 5, 10, 5, 10, 5, 10, 5, 10, 5, 10, 5, 10, NULL, '2016-11-23', 'NEDEMP4', 3, 1, 24),
(364, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 'polite punctual', '2014-01-30', 'NEDEMP4', 4, 1, 14),
(365, 3, 8, 2, 7, 2, 7, 2, 6, 1, 6, 1, 6, NULL, '2014-10-02', 'NEDEMP3', 5, 3, 48),
(366, 3, 8, 3, 8, 3, 8, 3, 8, 3, 8, 3, 8, 'punctual punctual punctual communicative hadworking', '2015-12-07', 'NEDEMP3', 6, 3, 12),
(367, 10, 7, 5, 3, 1, 9, 6, 4, 2, 10, 8, 5, NULL, '2015-06-26', 'NEDEMP9', 7, 1, 42),
(368, 3, 4, 5, 7, 8, 9, 1, 2, 3, 5, 6, 7, 'coperative hadworking', '2013-10-06', 'NEDEMP3', 8, 3, 3),
(369, 2, 7, 3, 8, 3, 9, 4, 10, 5, 10, 6, 1, NULL, '2013-10-29', 'NEDEMP2', 1, 2, 34),
(370, 8, 9, 10, 1, 3, 4, 5, 6, 7, 8, 9, 10, 'good punctual polite', '2014-10-18', 'NEDEMP7', 2, 2, 17),
(371, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 5, 4, NULL, '2016-07-19', 'NEDEMP5', 3, 2, 50),
(372, 10, 2, 4, 6, 8, 9, 1, 3, 5, 7, 8, 10, 'hadworking', '2015-10-22', 'NEDEMP9', 4, 4, 26),
(373, 1, 4, 6, 8, 10, 2, 5, 7, 9, 1, 3, 6, NULL, '2014-07-27', 'NEDEMP1', 5, 4, 9),
(374, 2, 10, 9, 8, 7, 5, 4, 3, 2, 10, 9, 8, 'communicative', '2014-01-02', 'NEDEMP2', 6, 1, 19),
(375, 3, 1, 9, 8, 6, 5, 3, 1, 10, 8, 7, 5, 'good communicative', '2016-04-15', 'NEDEMP2', 7, 2, 49),
(376, 2, 7, 2, 8, 3, 8, 4, 9, 4, 10, 5, 1, 'polite communicative good hadworking polite punctual', '2013-07-28', 'NEDEMP2', 8, 2, 31),
(377, 10, 4, 7, 10, 3, 7, 10, 3, 6, 9, 3, 6, 'punctual good communicative', '2016-05-11', 'NEDEMP9', 1, 4, 26),
(378, 10, 8, 7, 5, 4, 3, 1, 10, 8, 7, 5, 4, 'good hadworking communicative', '2015-12-16', 'NEDEMP9', 2, 3, 44),
(379, 3, 9, 6, 3, 10, 6, 3, 10, 6, 3, 10, 7, NULL, '2014-04-09', 'NEDEMP2', 3, 1, 32),
(380, 5, 10, 5, 9, 4, 9, 4, 8, 3, 8, 2, 7, 'good good polite punctual coperative polite', '2015-03-23', 'NEDEMP5', 4, 3, 4),
(381, 8, 4, 9, 5, 1, 7, 2, 8, 4, 10, 6, 1, NULL, '2014-08-07', 'NEDEMP7', 5, 1, 41),
(382, 3, 1, 9, 7, 5, 3, 1, 8, 6, 4, 2, 10, NULL, '2013-05-30', 'NEDEMP3', 6, 4, 16),
(383, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 'good hadworking good', '2014-11-26', 'NEDEMP1', 7, 2, 23),
(384, 5, 9, 2, 5, 8, 2, 5, 8, 1, 4, 8, 1, NULL, '2014-06-02', 'NEDEMP5', 8, 2, 2),
(385, 6, 2, 8, 4, 10, 6, 3, 9, 5, 1, 7, 3, 'communicative coperative communicative', '2015-07-11', 'NEDEMP6', 1, 1, 2),
(386, 5, 9, 3, 8, 2, 6, 10, 4, 8, 3, 7, 1, 'polite communicative', '2015-11-07', 'NEDEMP5', 2, 4, 15),
(387, 7, 1, 4, 8, 1, 5, 8, 2, 5, 9, 2, 6, NULL, '2016-10-12', 'NEDEMP7', 3, 4, 30),
(388, 10, 8, 7, 6, 5, 4, 2, 1, 10, 9, 8, 6, 'punctual polite', '2013-06-28', 'NEDEMP9', 4, 1, 12),
(389, 1, 7, 3, 9, 4, 10, 6, 2, 7, 3, 9, 5, 'hadworking', '2015-11-14', 'NEDEMP1', 5, 1, 7),
(390, 8, 10, 2, 3, 5, 7, 9, 1, 2, 4, 6, 8, 'communicative', '2014-10-12', 'NEDEMP7', 6, 3, 13),
(391, 3, 6, 10, 3, 7, 10, 4, 7, 1, 4, 8, 1, NULL, '2014-10-26', 'NEDEMP2', 7, 2, 5),
(392, 7, 2, 7, 1, 6, 1, 5, 10, 5, 9, 4, 9, NULL, '2015-09-25', 'NEDEMP7', 8, 3, 11),
(393, 6, 10, 4, 8, 2, 7, 1, 5, 9, 3, 7, 1, NULL, '2016-01-07', 'NEDEMP5', 1, 4, 17),
(394, 9, 6, 3, 10, 7, 4, 1, 8, 5, 2, 9, 7, NULL, '2014-09-13', 'NEDEMP8', 2, 2, 36),
(395, 10, 2, 3, 5, 7, 8, 10, 2, 4, 5, 7, 9, 'polite good', '2014-12-26', 'NEDEMP9', 3, 2, 17),
(396, 10, 2, 3, 4, 6, 7, 9, 10, 1, 3, 4, 6, NULL, '2013-04-05', 'NEDEMP9', 4, 4, 47),
(397, 7, 5, 4, 2, 1, 10, 8, 7, 5, 4, 3, 1, NULL, '2015-02-09', 'NEDEMP6', 5, 4, 34),
(398, 8, 4, 9, 5, 10, 6, 1, 7, 2, 8, 3, 9, NULL, '2013-03-15', 'NEDEMP8', 6, 4, 25),
(399, 2, 2, 2, 2, 1, 1, 1, 1, 1, 10, 10, 10, NULL, '2016-07-20', 'NEDEMP2', 7, 2, 45),
(400, 10, 8, 7, 5, 3, 1, 10, 8, 6, 4, 3, 1, NULL, '2014-06-13', 'NEDEMP9', 8, 2, 27),
(401, 4, 5, 6, 8, 9, 10, 2, 3, 4, 6, 7, 8, NULL, '2014-04-20', 'NEDEMP3', 1, 4, 10),
(402, 3, 9, 6, 2, 9, 5, 2, 8, 5, 1, 8, 4, NULL, '2016-11-20', 'NEDEMP3', 2, 1, 16),
(403, 5, 3, 10, 8, 5, 2, 10, 7, 5, 2, 10, 7, NULL, '2015-07-03', 'NEDEMP5', 3, 4, 44),
(404, 3, 6, 10, 4, 8, 2, 5, 9, 3, 7, 1, 4, 'polite hadworking punctual', '2016-09-11', 'NEDEMP2', 4, 4, 27),
(405, 2, 1, 10, 9, 9, 8, 7, 6, 5, 4, 3, 3, NULL, '2016-07-04', 'NEDEMP2', 5, 4, 48),
(406, 3, 2, 1, 9, 8, 7, 6, 4, 3, 2, 1, 9, NULL, '2014-07-14', 'NEDEMP3', 6, 1, 26),
(407, 10, 8, 7, 6, 5, 3, 2, 1, 10, 8, 7, 6, NULL, '2013-03-16', 'NEDEMP9', 7, 4, 9),
(408, 9, 6, 2, 8, 4, 10, 6, 2, 8, 4, 10, 7, 'hadworking', '2013-03-27', 'NEDEMP9', 8, 4, 23),
(409, 2, 9, 6, 2, 9, 6, 3, 9, 6, 3, 10, 6, 'polite polite', '2014-03-08', 'NEDEMP2', 1, 2, 31),
(410, 7, 10, 3, 6, 9, 2, 5, 9, 2, 5, 8, 1, NULL, '2014-01-01', 'NEDEMP6', 2, 3, 47),
(411, 7, 8, 8, 9, 9, 10, 10, 1, 1, 2, 2, 3, 'punctual polite', '2014-08-30', 'NEDEMP6', 3, 1, 18),
(412, 7, 9, 1, 3, 5, 7, 9, 1, 3, 5, 7, 9, 'hadworking good', '2015-09-20', 'NEDEMP6', 4, 3, 24),
(413, 1, 3, 6, 8, 10, 3, 5, 8, 10, 2, 5, 7, NULL, '2015-06-17', 'NEDEMP1', 5, 3, 19),
(414, 10, 8, 6, 4, 2, 10, 8, 6, 4, 2, 10, 8, NULL, '2013-01-10', 'NEDEMP9', 6, 1, 11),
(415, 9, 7, 5, 3, 1, 9, 7, 5, 3, 1, 9, 7, 'good communicative', '2016-03-29', 'NEDEMP9', 7, 4, 1),
(416, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 'communicative punctual', '2014-09-28', 'NEDEMP2', 8, 1, 21),
(417, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, NULL, '2014-08-16', 'NEDEMP5', 1, 1, 21),
(418, 10, 2, 3, 5, 7, 9, 1, 2, 4, 6, 8, 10, 'polite hadworking', '2015-07-02', 'NEDEMP9', 2, 3, 22),
(419, 8, 2, 6, 10, 4, 8, 2, 6, 9, 3, 7, 1, 'communicative coperative hadworking communicative punctual', '2015-08-02', 'NEDEMP7', 3, 4, 13),
(420, 8, 9, 10, 10, 1, 1, 2, 3, 3, 4, 5, 5, 'coperative', '2015-12-06', 'NEDEMP8', 4, 4, 34),
(421, 7, 8, 9, 1, 2, 4, 5, 7, 8, 10, 1, 3, NULL, '2016-03-05', 'NEDEMP6', 5, 3, 33),
(422, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 10, 9, NULL, '2015-01-06', 'NEDEMP9', 6, 1, 30),
(423, 2, 7, 3, 9, 4, 10, 5, 1, 6, 2, 7, 3, 'good hadworking', '2014-12-02', 'NEDEMP2', 7, 2, 46),
(424, 4, 8, 2, 5, 9, 2, 6, 10, 3, 7, 10, 4, NULL, '2016-01-28', 'NEDEMP4', 8, 4, 21),
(425, 6, 4, 1, 9, 6, 4, 2, 9, 7, 5, 2, 10, NULL, '2017-01-02', 'NEDEMP5', 1, 4, 12),
(426, 8, 3, 7, 1, 5, 10, 4, 8, 3, 7, 1, 5, 'communicative communicative punctual communicative', '2013-11-03', 'NEDEMP7', 2, 4, 39),
(427, 5, 3, 10, 8, 6, 3, 1, 9, 6, 4, 2, 9, 'coperative', '2016-10-25', 'NEDEMP5', 3, 4, 10),
(428, 3, 8, 3, 8, 3, 9, 4, 9, 4, 9, 4, 10, NULL, '2016-11-22', 'NEDEMP3', 4, 3, 23),
(429, 2, 9, 6, 3, 10, 7, 5, 2, 9, 6, 3, 10, NULL, '2016-01-18', 'NEDEMP2', 5, 3, 3),
(430, 3, 10, 7, 4, 1, 8, 5, 2, 9, 6, 3, 10, NULL, '2016-01-19', 'NEDEMP3', 6, 3, 3),
(431, 6, 2, 9, 6, 3, 9, 6, 3, 10, 6, 3, 10, 'polite communicative', '2015-06-29', 'NEDEMP5', 7, 3, 48),
(432, 2, 10, 8, 6, 3, 1, 9, 7, 4, 2, 10, 7, 'hadworking', '2016-03-07', 'NEDEMP2', 8, 1, 1),
(433, 8, 7, 6, 4, 3, 2, 1, 9, 8, 7, 5, 4, NULL, '2016-06-06', 'NEDEMP7', 1, 2, 49),
(434, 3, 2, 10, 8, 7, 5, 4, 2, 1, 9, 8, 6, NULL, '2016-11-06', 'NEDEMP3', 2, 3, 6),
(435, 2, 5, 9, 2, 6, 9, 2, 6, 9, 3, 6, 9, 'polite hadworking punctual', '2013-12-12', 'NEDEMP2', 3, 3, 45),
(436, 6, 5, 4, 3, 3, 2, 1, 1, 10, 9, 8, 8, 'hadworking polite', '2014-09-26', 'NEDEMP5', 4, 4, 26),
(437, 8, 9, 9, 10, 10, 1, 1, 2, 2, 3, 3, 3, 'hadworking', '2014-12-07', 'NEDEMP8', 5, 1, 22),
(438, 9, 6, 2, 9, 5, 2, 8, 4, 1, 7, 4, 10, NULL, '2015-03-26', 'NEDEMP8', 6, 2, 46),
(439, 4, 8, 2, 6, 10, 4, 8, 3, 7, 1, 5, 9, NULL, '2014-12-09', 'NEDEMP3', 7, 2, 4),
(440, 4, 1, 8, 6, 3, 10, 7, 5, 2, 9, 7, 4, NULL, '2014-01-05', 'NEDEMP3', 8, 1, 26),
(441, 6, 1, 7, 2, 8, 3, 8, 4, 9, 5, 10, 5, NULL, '2015-09-01', 'NEDEMP5', 1, 1, 6),
(442, 8, 6, 3, 1, 8, 5, 3, 10, 8, 5, 2, 10, NULL, '2016-07-27', 'NEDEMP8', 2, 1, 8),
(443, 8, 10, 2, 4, 6, 8, 10, 2, 4, 6, 9, 1, NULL, '2016-05-02', 'NEDEMP7', 3, 4, 32),
(444, 5, 7, 10, 3, 6, 8, 1, 4, 6, 9, 2, 4, 'good coperative hadworking communicative', '2014-11-22', 'NEDEMP4', 4, 3, 10),
(445, 1, 3, 4, 5, 7, 8, 9, 10, 2, 3, 4, 6, 'hadworking polite', '2013-02-20', 'NEDEMP1', 5, 2, 46),
(446, 6, 8, 9, 1, 2, 4, 5, 7, 8, 10, 1, 2, NULL, '2016-02-16', 'NEDEMP6', 6, 3, 32),
(447, 7, 9, 2, 4, 6, 8, 1, 3, 5, 8, 10, 2, NULL, '2013-04-18', 'NEDEMP6', 7, 4, 43),
(448, 6, 2, 8, 4, 10, 7, 3, 9, 5, 1, 7, 3, 'coperative', '2016-01-05', 'NEDEMP5', 8, 3, 7),
(449, 10, 9, 8, 7, 7, 6, 5, 4, 3, 2, 1, 10, 'coperative', '2015-06-27', 'NEDEMP9', 1, 3, 36),
(450, 8, 10, 1, 3, 4, 6, 7, 9, 1, 2, 4, 5, 'polite communicative', '2013-04-08', 'NEDEMP8', 2, 1, 46),
(451, 5, 7, 8, 9, 1, 2, 4, 5, 7, 8, 10, 1, NULL, '2015-08-31', 'NEDEMP5', 3, 3, 26),
(452, 7, 4, 1, 8, 5, 1, 8, 5, 2, 9, 5, 2, NULL, '2016-08-19', 'NEDEMP7', 4, 1, 12),
(453, 1, 2, 4, 6, 7, 9, 10, 2, 3, 5, 7, 8, NULL, '2014-08-23', 'NEDEMP1', 5, 4, 13),
(454, 4, 3, 3, 2, 1, 10, 9, 9, 8, 7, 6, 5, NULL, '2013-08-24', 'NEDEMP4', 6, 2, 12),
(455, 4, 1, 8, 4, 1, 8, 5, 2, 8, 5, 2, 9, NULL, '2015-04-19', 'NEDEMP4', 7, 3, 45),
(456, 4, 6, 8, 1, 3, 5, 8, 10, 2, 5, 7, 9, NULL, '2016-04-23', 'NEDEMP3', 8, 3, 30),
(457, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 'punctual hadworking communicative communicative hadworking polite', '2014-12-28', 'NEDEMP1', 1, 3, 20),
(458, 1, 5, 9, 3, 7, 1, 4, 8, 2, 6, 10, 4, 'good punctual', '2016-06-15', 'NEDEMP1', 2, 4, 24),
(459, 7, 3, 10, 6, 2, 8, 4, 10, 7, 3, 9, 5, NULL, '2016-09-19', 'NEDEMP7', 3, 4, 16),
(460, 4, 9, 4, 9, 4, 9, 3, 8, 3, 8, 3, 8, NULL, '2015-09-10', 'NEDEMP4', 4, 1, 9),
(461, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'good good hadworking', '2014-09-29', 'NEDEMP8', 5, 1, 17),
(462, 7, 1, 5, 8, 2, 5, 9, 3, 6, 10, 3, 7, NULL, '2013-05-04', 'NEDEMP7', 6, 2, 36),
(463, 8, 7, 6, 5, 4, 3, 2, 1, 10, 9, 8, 7, 'polite hadworking coperative polite good', '2014-03-20', 'NEDEMP7', 7, 1, 20),
(464, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, NULL, '2015-02-27', 'NEDEMP9', 8, 3, 28),
(465, 2, 8, 5, 1, 7, 4, 10, 6, 3, 9, 5, 2, NULL, '2015-07-15', 'NEDEMP2', 1, 1, 50),
(466, 5, 8, 1, 3, 6, 9, 2, 5, 7, 10, 3, 6, NULL, '2015-07-04', 'NEDEMP5', 2, 1, 18),
(467, 8, 7, 7, 6, 6, 7, 8, 5, 8, 5, 8, 6, '', '2017-10-10', 'NEDEMP10', 4, 3, 22),
(468, 8, 7, 7, 8, 6, 8, 8, 7, 6, 6, 8, 7, 'Nice work ethics', '2017-10-10', 'NEDEMP10', 3, 6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ques_master`
--

CREATE TABLE `feedback_ques_master` (
  `q_id` int(20) NOT NULL,
  `ques` varchar(255) NOT NULL,
  `one_word` varchar(255) NOT NULL DEFAULT 'People/Human Relations'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_ques_master`
--

INSERT INTO `feedback_ques_master` (`q_id`, `ques`, `one_word`) VALUES
(1, 'Uses a non-blaming, cooperative communications approach  ', 'Skill Variety'),
(2, 'Brings about agreement and understanding, even in a situation involving conflict.', 'Skill Variety'),
(3, 'Has adequate work knowledge', 'Task Identity'),
(4, '', 'Task Identity'),
(5, 'Produces value-added work', 'Task Significance'),
(6, '', 'Task Significance'),
(7, 'Shows considerable initiative', 'Autonomy'),
(8, 'Shows positive attitude towards job/work', 'Autonomy'),
(9, 'Shows responsibility and punctuality towards work', 'Autonomy'),
(10, 'Has a sound understanding of tasks assigned and their outcomes', 'Feedback'),
(11, 'Provides honest feedback and recognition.', 'Feedback'),
(12, 'Demonstrates mature judgment in addressing unacceptable behavior or performance', 'Feedback');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pers_id` varchar(500) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pers_id`, `password`, `category`) VALUES
('NEDEMP1', 'admin', 'admin'),
('NEDEMP10', 'qwerty', 'employee'),
('NEDEMP11', 'qwerty', 'employee'),
('NEDEMP12', 'qwerty', 'employee'),
('NEDEMP13', 'qwerty', 'employee'),
('NEDEMP14', '12345', 'chairman'),
('NEDEMP15', '12345', 'chairman'),
('NEDEMP16', '12345', 'chairman'),
('NEDEMP17', 'g6Ey4MIolTB', 'employee'),
('NEDEMP18', 'meTBM3', 'employee'),
('NEDEMP19', 'xV7dpNELP', 'employee'),
('NEDEMP2', NULL, 'employee'),
('NEDEMP20', 'fikxU38y8u3', 'employee'),
('NEDEMP21', 'sNAfTCR', 'employee'),
('NEDEMP22', 'PvRur8g34m', 'employee'),
('NEDEMP23', 'o3kr6X9rxE', 'employee'),
('NEDEMP24', 't490tzC1qlA', 'employee'),
('NEDEMP25', 'FQ3jNT6', 'employee'),
('NEDEMP26', 'BndU0okmKZD', 'employee'),
('NEDEMP27', 'bdgWKI', 'employee'),
('NEDEMP28', 'tBQoGitDifk', 'employee'),
('NEDEMP29', 'S64ETK3', 'employee'),
('NEDEMP30', 'iskBOotFB', 'employee'),
('NEDEMP31', '1QBLVPc6LkA', 'employee'),
('NEDEMP32', 'UrCGpK', 'employee'),
('NEDEMP33', 'QOIbhPEh1Y', 'employee'),
('NEDEMP34', 'xiRxjbKBWSD', 'employee'),
('NEDEMP35', 'rJcRVe', 'employee'),
('NEDEMP36', 'lJyqnH5', 'employee'),
('NEDEMP37', 'qnkpftNn', 'employee'),
('NEDEMP38', 'VcFsZsp5', 'employee'),
('NEDEMP39', 'eL9F0V', 'employee'),
('NEDEMP40', 'j22lJbd', 'employee'),
('NEDEMP41', 'j4aUOhBy0GT9', 'employee'),
('NEDEMP42', 'ZDccPV5vd', 'employee'),
('NEDEMP43', 'Blw0Fje3s', 'employee'),
('NEDEMP44', 'hvTt9HfKg', 'employee'),
('NEDEMP45', 'j9WpGia', 'employee'),
('NEDEMP46', '0itTlzVVQB', 'employee'),
('NEDEMP47', 'VBnvhb8', 'employee'),
('NEDEMP48', 'hjlsKNCu9NgK', 'employee'),
('NEDEMP49', '7bYWSTJZ', 'employee'),
('NEDEMP50', 'prkyj5vJQLe', 'employee'),
('NEDEMP6', 'bQtnpM', 'employee'),
('NEDEMP7', 'nyqpfyB6Qys', 'employee'),
('NEDEMP8', 'rqO5f3j5h', 'employee'),
('NEDEMP9', 'GgJnMpAcztj', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perId` int(10) NOT NULL,
  `depId` int(10) NOT NULL,
  `permId` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perId`, `depId`, `permId`) VALUES
(2, 2, 2),
(3, 3, 3),
(5, 1, 3),
(4, 1, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(10, 2, 1),
(11, 3, 4),
(12, 4, 2),
(13, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `pid` int(10) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `pjournals` varchar(100) NOT NULL,
  `pdate` date NOT NULL,
  `pvolume` varchar(20) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`pid`, `ptitle`, `pjournals`, `pdate`, `pvolume`, `pers_id`) VALUES
(1, 'ghi', 'xyz', '2017-07-04', '45', 'def');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `rid` int(10) NOT NULL,
  `research1` varchar(100) NOT NULL,
  `research2` varchar(100) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`rid`, `research1`, `research2`, `pers_id`) VALUES
(1, 'ghi', 'jkl', 'def'),
(2, 'Control & Automation', 'Emerging Technologies', 'NEDEMP10');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(100) NOT NULL,
  `result` int(50) NOT NULL,
  `empId` int(50) NOT NULL,
  `depId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `result`, `empId`, `depId`) VALUES
(1, 253, 1, 8),
(2, 472, 2, 1),
(3, 72, 3, 6),
(4, 418, 4, 7),
(5, 535, 5, 7),
(6, 459, 6, 1),
(7, 260, 7, 8),
(8, 849, 8, 2),
(9, 8, 9, 4),
(10, 601, 10, 4),
(11, 795, 11, 6),
(12, 386, 12, 6),
(13, 377, 13, 5),
(14, 918, 14, 4),
(15, 100, 15, 2),
(16, 560, 16, 3),
(17, 156, 17, 5),
(18, 842, 18, 2),
(19, 48, 19, 5),
(20, 620, 20, 7),
(21, 254, 21, 8),
(22, 486, 22, 5),
(23, 276, 23, 4),
(24, 731, 24, 2),
(25, 952, 25, 6),
(26, 949, 26, 3),
(27, 633, 27, 4),
(28, 569, 28, 8),
(29, 304, 29, 6),
(30, 765, 30, 8),
(31, 506, 31, 1),
(32, 39, 32, 6),
(33, 996, 33, 5),
(34, 386, 34, 4),
(35, 191, 35, 1),
(36, 525, 36, 6),
(37, 551, 37, 3),
(38, 853, 38, 1),
(39, 299, 39, 2),
(40, 503, 40, 2),
(41, 319, 41, 5),
(42, 121, 42, 7),
(43, 15, 43, 7),
(44, 528, 44, 3),
(45, 114, 45, 7),
(46, 694, 46, 2),
(47, 10, 47, 2),
(48, 585, 48, 7),
(49, 275, 49, 1),
(50, 253, 1, 8),
(51, 472, 2, 1),
(52, 72, 3, 6),
(53, 418, 4, 7),
(54, 535, 5, 7),
(55, 459, 6, 1),
(56, 260, 7, 8),
(57, 849, 8, 2),
(58, 8, 9, 4),
(59, 601, 10, 4),
(60, 795, 11, 6),
(61, 386, 12, 6),
(62, 377, 13, 5),
(63, 918, 14, 4),
(64, 100, 15, 2),
(65, 560, 16, 3),
(66, 156, 17, 5),
(67, 842, 18, 2),
(68, 48, 19, 5),
(69, 620, 20, 7),
(70, 254, 21, 8),
(71, 486, 22, 5),
(72, 276, 23, 4),
(73, 731, 24, 2),
(74, 952, 25, 6),
(75, 949, 26, 3),
(76, 633, 27, 4),
(77, 569, 28, 8),
(78, 304, 29, 6),
(79, 765, 30, 8),
(80, 506, 31, 1),
(81, 39, 32, 6),
(82, 996, 33, 5),
(83, 386, 34, 4),
(84, 191, 35, 1),
(85, 525, 36, 6),
(86, 551, 37, 3),
(87, 853, 38, 1),
(88, 299, 39, 2),
(89, 503, 40, 2),
(90, 319, 41, 5),
(91, 121, 42, 7),
(92, 15, 43, 7),
(93, 528, 44, 3),
(94, 114, 45, 7),
(95, 694, 46, 2),
(96, 10, 47, 2),
(97, 585, 48, 7),
(98, 275, 49, 1),
(99, 253, 1, 8),
(100, 253, 1, 8),
(101, 253, 1, 8),
(102, 253, 1, 8),
(103, 253, 1, 8),
(104, 253, 1, 8),
(105, 253, 1, 8),
(106, 253, 1, 8),
(107, 253, 1, 8),
(108, 253, 1, 8),
(109, 253, 1, 8),
(110, 253, 1, 8),
(111, 253, 1, 8),
(112, 253, 1, 8),
(113, 253, 1, 8),
(114, 253, 1, 8),
(115, 253, 1, 8),
(116, 253, 1, 8),
(117, 253, 1, 8),
(118, 253, 1, 8),
(119, 253, 1, 8),
(120, 253, 1, 8),
(121, 253, 1, 8),
(122, 253, 1, 8),
(123, 253, 1, 8),
(124, 253, 1, 8),
(125, 253, 1, 8),
(126, 253, 1, 8),
(127, 253, 1, 8),
(128, 253, 1, 8),
(129, 253, 1, 8),
(130, 253, 1, 8),
(131, 253, 1, 8),
(132, 253, 1, 8),
(133, 253, 1, 8),
(134, 253, 1, 8),
(135, 253, 1, 8),
(136, 253, 1, 8),
(137, 253, 1, 8),
(138, 253, 1, 8),
(139, 253, 1, 8),
(140, 253, 1, 8),
(141, 253, 1, 8),
(142, 253, 1, 8),
(143, 253, 1, 8),
(144, 253, 1, 8),
(145, 253, 1, 8),
(146, 253, 1, 8),
(147, 253, 1, 8),
(148, 253, 1, 8),
(149, 253, 1, 8),
(150, 253, 1, 8),
(151, 253, 1, 8),
(152, 253, 1, 8),
(153, 253, 1, 8),
(154, 253, 1, 8),
(155, 253, 1, 8),
(156, 253, 1, 8),
(157, 253, 1, 8),
(158, 253, 1, 8),
(159, 253, 1, 8),
(160, 253, 1, 8),
(161, 253, 1, 8),
(162, 253, 1, 8),
(163, 253, 1, 8),
(164, 253, 1, 8),
(165, 253, 1, 8),
(166, 253, 1, 8),
(167, 253, 1, 8),
(168, 253, 1, 8),
(169, 253, 1, 8),
(170, 253, 1, 8),
(171, 253, 1, 8),
(172, 253, 1, 8),
(173, 253, 1, 8),
(174, 253, 1, 8),
(175, 253, 1, 8),
(176, 253, 1, 8),
(177, 253, 1, 8),
(178, 253, 1, 8),
(179, 253, 1, 8),
(180, 253, 1, 8),
(181, 253, 1, 8),
(182, 253, 1, 8),
(183, 253, 1, 8),
(184, 253, 1, 8),
(185, 253, 1, 8),
(186, 253, 1, 8),
(187, 253, 1, 8),
(188, 253, 1, 8),
(189, 253, 1, 8),
(190, 253, 1, 8),
(191, 253, 1, 8),
(192, 253, 1, 8),
(193, 253, 1, 8),
(194, 253, 1, 8),
(195, 253, 1, 8),
(196, 253, 1, 8),
(197, 253, 1, 8),
(198, 253, 1, 8),
(199, 253, 1, 8),
(200, 253, 1, 8),
(201, 253, 1, 8),
(202, 253, 1, 8),
(203, 253, 1, 8),
(204, 253, 1, 8),
(205, 253, 1, 8),
(206, 253, 1, 8),
(207, 253, 1, 8),
(208, 253, 1, 8),
(209, 253, 1, 8),
(210, 253, 1, 8),
(211, 253, 1, 8),
(212, 253, 1, 8),
(213, 253, 1, 8),
(214, 253, 1, 8),
(215, 253, 1, 8),
(216, 253, 1, 8),
(217, 253, 1, 8),
(218, 253, 1, 8),
(219, 253, 1, 8),
(220, 253, 1, 8),
(221, 253, 1, 8),
(222, 253, 1, 8),
(223, 253, 1, 8),
(224, 253, 1, 8),
(225, 253, 1, 8),
(226, 253, 1, 8),
(227, 253, 1, 8),
(228, 253, 1, 8),
(229, 253, 1, 8),
(230, 253, 1, 8),
(231, 253, 1, 8),
(232, 253, 1, 8),
(233, 253, 1, 8),
(234, 253, 1, 8),
(235, 253, 1, 8),
(236, 253, 1, 8),
(237, 253, 1, 8),
(238, 253, 1, 8),
(239, 253, 1, 8),
(240, 253, 1, 8),
(241, 253, 1, 8),
(242, 253, 1, 8),
(243, 253, 1, 8),
(244, 253, 1, 8),
(245, 253, 1, 8),
(246, 253, 1, 8),
(247, 253, 1, 8),
(248, 253, 1, 8),
(249, 253, 1, 8),
(250, 253, 1, 8),
(251, 472, 2, 1),
(252, 72, 3, 6),
(253, 418, 4, 7),
(254, 535, 5, 7),
(255, 459, 6, 1),
(256, 260, 7, 8),
(257, 849, 8, 2),
(258, 8, 9, 4),
(259, 601, 10, 4),
(260, 795, 11, 6),
(261, 386, 12, 6),
(262, 377, 13, 5),
(263, 918, 14, 4),
(264, 100, 15, 2),
(265, 560, 16, 3),
(266, 156, 17, 5),
(267, 842, 18, 2),
(268, 48, 19, 5),
(269, 620, 20, 7),
(270, 254, 21, 8),
(271, 486, 22, 5),
(272, 276, 23, 4),
(273, 731, 24, 2),
(274, 952, 25, 6),
(275, 949, 26, 3),
(276, 633, 27, 4),
(277, 569, 28, 8),
(278, 304, 29, 6),
(279, 765, 30, 8),
(280, 506, 31, 1),
(281, 39, 32, 6),
(282, 996, 33, 5),
(283, 386, 34, 4),
(284, 191, 35, 1),
(285, 525, 36, 6),
(286, 551, 37, 3),
(287, 853, 38, 1),
(288, 299, 39, 2),
(289, 503, 40, 2),
(290, 319, 41, 5),
(291, 121, 42, 7),
(292, 15, 43, 7),
(293, 528, 44, 3),
(294, 114, 45, 7),
(295, 694, 46, 2),
(296, 10, 47, 2),
(297, 585, 48, 7),
(298, 275, 49, 1),
(299, 183, 50, 1),
(300, 253, 1, 8),
(301, 472, 2, 1),
(302, 72, 3, 6),
(303, 418, 4, 7),
(304, 535, 5, 7),
(305, 459, 6, 1),
(306, 260, 7, 8),
(307, 849, 8, 2),
(308, 8, 9, 4),
(309, 601, 10, 4),
(310, 795, 11, 6),
(311, 386, 12, 6),
(312, 377, 13, 5),
(313, 918, 14, 4),
(314, 100, 15, 2),
(315, 560, 16, 3),
(316, 156, 17, 5),
(317, 842, 18, 2),
(318, 48, 19, 5),
(319, 620, 20, 7),
(320, 254, 21, 8),
(321, 486, 22, 5),
(322, 276, 23, 4),
(323, 731, 24, 2),
(324, 952, 25, 6),
(325, 949, 26, 3),
(326, 633, 27, 4),
(327, 569, 28, 8),
(328, 304, 29, 6),
(329, 765, 30, 8),
(330, 506, 31, 1),
(331, 39, 32, 6),
(332, 996, 33, 5),
(333, 386, 34, 4),
(334, 191, 35, 1),
(335, 525, 36, 6),
(336, 551, 37, 3),
(337, 853, 38, 1),
(338, 299, 39, 2),
(339, 503, 40, 2),
(340, 319, 41, 5),
(341, 121, 42, 7),
(342, 15, 43, 7),
(343, 528, 44, 3),
(344, 114, 45, 7),
(345, 694, 46, 2),
(346, 10, 47, 2),
(347, 585, 48, 7),
(348, 275, 49, 1),
(349, 183, 50, 1),
(350, 253, 1, 8),
(351, 253, 1, 8),
(352, 253, 1, 8),
(353, 253, 1, 8),
(354, 253, 1, 8),
(355, 253, 1, 8),
(356, 253, 1, 8),
(357, 253, 1, 8),
(358, 253, 1, 8),
(359, 253, 1, 8),
(360, 253, 1, 8),
(361, 253, 1, 8),
(362, 253, 1, 8),
(363, 253, 1, 8),
(364, 253, 1, 8),
(365, 253, 1, 8),
(366, 253, 1, 8),
(367, 472, 2, 1),
(368, 72, 3, 6),
(369, 418, 4, 7),
(370, 535, 5, 7),
(371, 459, 6, 1),
(372, 260, 7, 8),
(373, 849, 8, 2),
(374, 8, 9, 4),
(375, 601, 10, 4),
(376, 795, 11, 6),
(377, 386, 12, 6),
(378, 377, 13, 5),
(379, 918, 14, 4),
(380, 100, 15, 2),
(381, 560, 16, 3),
(382, 156, 17, 5),
(383, 842, 18, 2),
(384, 48, 19, 5),
(385, 620, 20, 7),
(386, 254, 21, 8),
(387, 486, 22, 5),
(388, 276, 23, 4),
(389, 731, 24, 2),
(390, 952, 25, 6),
(391, 949, 26, 3),
(392, 633, 27, 4),
(393, 569, 28, 8),
(394, 304, 29, 6),
(395, 765, 30, 8),
(396, 506, 31, 1),
(397, 39, 32, 6),
(398, 996, 33, 5),
(399, 386, 34, 4),
(400, 191, 35, 1),
(401, 525, 36, 6),
(402, 551, 37, 3),
(403, 853, 38, 1),
(404, 299, 39, 2),
(405, 503, 40, 2),
(406, 319, 41, 5),
(407, 121, 42, 7),
(408, 15, 43, 7),
(409, 528, 44, 3),
(410, 114, 45, 7),
(411, 694, 46, 2),
(412, 10, 47, 2),
(413, 585, 48, 7),
(414, 275, 49, 1),
(415, 183, 50, 1),
(416, 253, 1, 8),
(417, 472, 2, 1),
(418, 72, 3, 6),
(419, 418, 4, 7),
(420, 535, 5, 7),
(421, 459, 6, 1),
(422, 260, 7, 8),
(423, 849, 8, 2),
(424, 8, 9, 4),
(425, 601, 10, 4),
(426, 795, 11, 6),
(427, 386, 12, 6),
(428, 377, 13, 5),
(429, 918, 14, 4),
(430, 100, 15, 2),
(431, 560, 16, 3),
(432, 156, 17, 5),
(433, 842, 18, 2),
(434, 48, 19, 5),
(435, 620, 20, 7),
(436, 254, 21, 8),
(437, 486, 22, 5),
(438, 276, 23, 4),
(439, 731, 24, 2),
(440, 952, 25, 6),
(441, 949, 26, 3),
(442, 633, 27, 4),
(443, 569, 28, 8),
(444, 304, 29, 6),
(445, 765, 30, 8),
(446, 506, 31, 1),
(447, 39, 32, 6),
(448, 996, 33, 5),
(449, 386, 34, 4),
(450, 191, 35, 1),
(451, 525, 36, 6),
(452, 551, 37, 3),
(453, 853, 38, 1),
(454, 299, 39, 2),
(455, 503, 40, 2),
(456, 319, 41, 5),
(457, 121, 42, 7),
(458, 15, 43, 7),
(459, 528, 44, 3),
(460, 114, 45, 7),
(461, 694, 46, 2),
(462, 10, 47, 2),
(463, 585, 48, 7),
(464, 275, 49, 1),
(465, 183, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_department`
--

CREATE TABLE `sub_department` (
  `subdepId` int(10) NOT NULL,
  `depId` int(10) NOT NULL,
  `subdepName` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_department`
--

INSERT INTO `sub_department` (`subdepId`, `depId`, `subdepName`) VALUES
(1, 1, 'Lab Commercialization'),
(2, 1, 'Research Associate'),
(3, 1, 'Communication & Commercialization'),
(4, 1, 'Administrative Assistant'),
(5, 2, 'IT Officer'),
(6, 2, 'Venture Analyst'),
(7, 2, 'Accountant'),
(8, 2, 'Startups'),
(9, 2, 'Campus Companies'),
(10, 3, 'Administrative Assistant'),
(11, 3, 'Junior Data Entry Operator'),
(12, 3, 'Computer Attendant'),
(13, 4, 'HR'),
(14, 4, 'Marketing'),
(15, 4, 'Publications'),
(16, 4, 'Events'),
(17, 4, 'Creativity'),
(18, 4, 'IT'),
(19, 4, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `tid` int(10) NOT NULL,
  `tctitle` varchar(100) NOT NULL,
  `tclass` varchar(50) NOT NULL,
  `tstudents` int(10) NOT NULL,
  `tlechours` int(10) NOT NULL,
  `pctitle` varchar(100) NOT NULL,
  `pclass` varchar(50) NOT NULL,
  `pstudents` int(10) NOT NULL,
  `plechours` int(10) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`tid`, `tctitle`, `tclass`, `tstudents`, `tlechours`, `pctitle`, `pclass`, `pstudents`, `plechours`, `pers_id`) VALUES
(1, 'chemistry', 'second', 23, 2, 'chem', 'second', 23, 2, 'ghi'),
(2, 'Object Oriented Programming', 'second year', 74, 34, 'Object Oriented Programming', 'second year', 74, 12, 'NEDEMP10'),
(3, 'Database Management System', 'second year', 74, 34, 'Database Management System', 'second year', 74, 12, 'NEDEMP10');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `trid` int(10) NOT NULL,
  `education` varchar(80) NOT NULL,
  `meetings` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `pers_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`trid`, `education`, `meetings`, `service`, `pers_id`) VALUES
(1, 'xyz', 'xyz', 'xyz', 'def'),
(2, 'mno', 'pqr', 'stu', 'abc'),
(3, 'abcd', 'xyz', 'abcd', 'NEDEMP10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acr_master`
--
ALTER TABLE `acr_master`
  ADD PRIMARY KEY (`acrId`);

--
-- Indexes for table `acr_ques`
--
ALTER TABLE `acr_ques`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `administrative`
--
ALTER TABLE `administrative`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depId`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`);

--
-- Indexes for table `feedback_form`
--
ALTER TABLE `feedback_form`
  ADD PRIMARY KEY (`formId`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`feedId`);

--
-- Indexes for table `feedback_ques_master`
--
ALTER TABLE `feedback_ques_master`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pers_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perId`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `sub_department`
--
ALTER TABLE `sub_department`
  ADD PRIMARY KEY (`subdepId`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`trid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acr_master`
--
ALTER TABLE `acr_master`
  MODIFY `acrId` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `administrative`
--
ALTER TABLE `administrative`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `desId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `feedback_form`
--
ALTER TABLE `feedback_form`
  MODIFY `formId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `feedId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;
--
-- AUTO_INCREMENT for table `feedback_ques_master`
--
ALTER TABLE `feedback_ques_master`
  MODIFY `q_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;
--
-- AUTO_INCREMENT for table `sub_department`
--
ALTER TABLE `sub_department`
  MODIFY `subdepId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `trid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
