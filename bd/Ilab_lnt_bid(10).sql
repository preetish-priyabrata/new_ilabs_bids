-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2019 at 08:11 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ilab_lnt_bid`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_activity`
--

CREATE TABLE `Ilab_activity` (
  `Activity_Slno` int(255) NOT NULL,
  `Activity_Name` varchar(255) NOT NULL,
  `Activity_Description` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL COMMENT '1-Active,2-Inactive,3-Delete',
  `Date_Entry` date NOT NULL,
  `Time_Entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_activity`
--

INSERT INTO `Ilab_activity` (`Activity_Slno`, `Activity_Name`, `Activity_Description`, `Status`, `Date_Entry`, `Time_Entry`) VALUES
(1, '\'activity1\'', '\'Director : Bhaskar Producer : Nagendra Babu Music Director : Harris Jayaraj Lyricst : Surendra Krishna, Kedarnath, Vanamali, Ramajogaya Sastry Cast : Ram Charan Teja, Genelia D\\\'Souza, Shazahn Padamsee, Sanchita Shetty\'', 1, '2018-09-15', '16:00:27'),
(2, 'activitys', 'I already have XSS enabled by default in configuration.\r\n\r\nThank you for your patience. But still, this not resolves unescaped chars in my value, is it?', 1, '2018-09-15', '16:05:10'),
(3, 'activity10', 'xxx', 1, '2018-09-26', '15:00:18'),
(4, 'xxxx', 'xxxxxxx', 3, '2018-09-28', '18:01:35'),
(5, 'activity 77700', 'xxxxx', 1, '2019-01-17', '18:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_assign_project_user`
--

CREATE TABLE `Ilab_assign_project_user` (
  `slno_assign_project` int(11) NOT NULL,
  `user_slno` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `project_slno` int(11) NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `date_create` date NOT NULL,
  `time_create` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_assign_project_user`
--

INSERT INTO `Ilab_assign_project_user` (`slno_assign_project`, `user_slno`, `email_id`, `project_slno`, `job_code`, `status`, `role_id`, `date_create`, `time_create`) VALUES
(1, 7, 'bu1@ilab.com', 1, '0770', 1, 6, '2018-09-28', '20:38:23'),
(2, 11, 'project1@ilab.com', 1, '0770', 1, 3, '2018-09-28', '20:38:23'),
(3, 13, 'pro@ilab.com1', 1, '0770', 1, 4, '2018-09-28', '20:38:23'),
(4, 6, 'sam@ilab.com', 1, '0770', 1, 2, '2018-09-28', '20:38:23'),
(5, 10, 'design2@ilab.com', 1, '0770', 1, 2, '2018-09-28', '20:38:23'),
(6, 15, 'buy1@ilab.com', 1, '0770', 1, 7, '2018-09-28', '20:38:23'),
(7, 17, 'abc2@gmail.com', 1, '0770', 1, 7, '2018-09-28', '20:38:23'),
(8, 8, 'bu2@ilab.com', 2, '23456', 1, 6, '2018-09-28', '21:28:53'),
(9, 11, 'project1@ilab.com', 2, '23456', 1, 3, '2018-09-28', '21:28:53'),
(10, 13, 'pro@ilab.com1', 2, '23456', 1, 4, '2018-09-28', '21:28:53'),
(11, 6, 'sam@ilab.com', 2, '23456', 1, 2, '2018-09-28', '21:28:53'),
(12, 15, 'buy1@ilab.com', 2, '23456', 1, 7, '2018-09-28', '21:28:53'),
(13, 7, 'bu1@ilab.com', 3, '679034', 1, 6, '2018-09-28', '21:30:19'),
(14, 11, 'project1@ilab.com', 3, '679034', 1, 3, '2018-09-28', '21:30:19'),
(15, 13, 'pro@ilab.com1', 3, '679034', 1, 4, '2018-09-28', '21:30:19'),
(16, 6, 'sam@ilab.com', 3, '679034', 1, 2, '2018-09-28', '21:30:19'),
(17, 15, 'buy1@ilab.com', 3, '679034', 1, 7, '2018-09-28', '21:30:19'),
(18, 7, 'bu1@ilab.com', 4, '902345', 1, 6, '2018-10-23', '16:11:35'),
(19, 11, 'project1@ilab.com', 4, '902345', 1, 3, '2018-10-23', '16:11:35'),
(20, 13, 'pro@ilab.com1', 4, '902345', 1, 4, '2018-10-23', '16:11:35'),
(21, 6, 'sam@ilab.com', 4, '902345', 1, 2, '2018-10-23', '16:11:35'),
(22, 9, 'design!@ilab.com', 4, '902345', 1, 2, '2018-10-23', '16:11:35'),
(23, 15, 'buy1@ilab.com', 4, '902345', 1, 7, '2018-10-23', '16:11:35'),
(24, 16, 'buy2@ilab.com', 4, '902345', 1, 7, '2018-10-23', '16:11:35'),
(25, 7, 'bu1@ilab.com', 5, '567432', 1, 6, '2018-10-23', '16:12:34'),
(26, 11, 'project1@ilab.com', 5, '567432', 1, 3, '2018-10-23', '16:12:34'),
(27, 13, 'pro@ilab.com1', 5, '567432', 1, 4, '2018-10-23', '16:12:34'),
(28, 6, 'sam@ilab.com', 5, '567432', 1, 2, '2018-10-23', '16:12:34'),
(29, 9, 'design!@ilab.com', 5, '567432', 1, 2, '2018-10-23', '16:12:34'),
(30, 15, 'buy1@ilab.com', 5, '567432', 1, 7, '2018-10-23', '16:12:34'),
(31, 16, 'buy2@ilab.com', 5, '567432', 1, 7, '2018-10-23', '16:12:34'),
(32, 7, 'bu1@ilab.com', 6, '189067', 1, 6, '2018-10-23', '16:13:34'),
(33, 11, 'project1@ilab.com', 6, '189067', 1, 3, '2018-10-23', '16:13:34'),
(34, 12, 'project2@ilab.com', 6, '189067', 1, 3, '2018-10-23', '16:13:34'),
(35, 13, 'pro@ilab.com1', 6, '189067', 1, 4, '2018-10-23', '16:13:34'),
(36, 6, 'sam@ilab.com', 6, '189067', 1, 2, '2018-10-23', '16:13:34'),
(37, 9, 'design!@ilab.com', 6, '189067', 1, 2, '2018-10-23', '16:13:34'),
(38, 15, 'buy1@ilab.com', 6, '189067', 1, 7, '2018-10-23', '16:13:34'),
(39, 17, 'abc2@gmail.com', 6, '189067', 1, 7, '2018-10-23', '16:13:34'),
(40, 10, 'design2@ilab.com', 2, '23456', 1, 2, '2019-01-03', '18:54:31'),
(41, 7, 'bu1@ilab.com', 7, '7877', 1, 6, '2019-01-17', '17:57:06'),
(42, 8, 'bu2@ilab.com', 7, '7877', 1, 6, '2019-01-17', '17:57:06'),
(43, 28, 'ups2@yahoo.com', 7, '7877', 1, 6, '2019-01-17', '17:57:06'),
(44, 11, 'project1@ilab.com', 7, '7877', 1, 3, '2019-01-17', '17:57:06'),
(45, 12, 'project2@ilab.com', 7, '7877', 1, 3, '2019-01-17', '17:57:06'),
(46, 22, 'gyt2@gmail.com', 7, '7877', 1, 3, '2019-01-17', '17:57:06'),
(47, 27, 'gtps09@gmail.com', 7, '7877', 1, 3, '2019-01-17', '17:57:06'),
(48, 13, 'pro@ilab.com', 7, '7877', 1, 4, '2019-01-17', '17:57:06'),
(49, 14, 'pro2@ilab.com', 7, '7877', 1, 4, '2019-01-17', '17:57:06'),
(50, 32, 'yy013@gmaill.com', 7, '7877', 1, 4, '2019-01-17', '17:57:06'),
(51, 6, 'sam@ilab.com', 7, '7877', 1, 2, '2019-01-17', '17:57:06'),
(52, 9, 'design!@ilab.com', 7, '7877', 1, 2, '2019-01-17', '17:57:06'),
(53, 10, 'design2@ilab.com', 7, '7877', 1, 2, '2019-01-17', '17:57:06'),
(54, 26, 'tvs31@gmail.com', 7, '7877', 1, 2, '2019-01-17', '17:57:06'),
(55, 35, 'abc1@gmail.com', 7, '7877', 1, 2, '2019-01-17', '17:57:06'),
(56, 15, 'buy1@ilab.com', 7, '7877', 1, 7, '2019-01-17', '17:57:06'),
(57, 16, 'buy2@ilab.com', 7, '7877', 1, 7, '2019-01-17', '17:57:06'),
(58, 17, 'abc2@gmail.com', 7, '7877', 1, 7, '2019-01-17', '17:57:06'),
(59, 29, 'gcg2@gmail.com', 7, '7877', 1, 7, '2019-01-17', '17:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_admin`
--

CREATE TABLE `Ilab_master_admin` (
  `slno` int(11) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL COMMENT 'loginid',
  `Username` varchar(255) DEFAULT NULL COMMENT 'Name',
  `Password` varchar(255) DEFAULT NULL COMMENT 'Encrypted password',
  `password_hash` varchar(255) NOT NULL COMMENT 'Encrypt password',
  `Status` int(11) NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delete',
  `role_id` int(11) NOT NULL DEFAULT '2',
  `user_mobile` varchar(255) DEFAULT NULL,
  `user_degination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this is for admin information';

--
-- Dumping data for table `Ilab_master_admin`
--

INSERT INTO `Ilab_master_admin` (`slno`, `email_id`, `Username`, `Password`, `password_hash`, `Status`, `role_id`, `user_mobile`, `user_degination`) VALUES
(1, 'admin@ilab.com', 'Admin', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, NULL, NULL),
(6, 'sam@ilab.com', 'sam', '111Aa111', '6b3c06db02609285b33b732fc57a0352', 1, 2, '7412365890', 'user'),
(7, 'bu1@ilab.com', 'bu user1', 'Abcd1234', '325a2cc052914ceeb8c19016c091d2ac', 1, 6, '1234567890', 'bu user'),
(8, 'bu2@ilab.com', 'bu user2', 'ABcd1234', 'bb4e90a7639add09cf8629499638760c', 1, 6, '2314567890', 'bu user'),
(9, 'design!@ilab.com', 'design user 1', 'A12345678b', '4af25c60a5017ac5833227804b04551a', 1, 2, '2345678910', 'design user'),
(10, 'design2@ilab.com', 'design user 2', '12345678Ab', '2a4a3ea4095c1f5453b5463c3a746c99', 1, 2, '3456789012', 'design user'),
(11, 'project1@ilab.com', 'project user 1', '123456789Ab', 'd1bfa0b6240156b7972de61f67a1e632', 1, 3, '4567890123', 'project user'),
(12, 'project2@ilab.com', 'project user 2', '12345678Ab', '2a4a3ea4095c1f5453b5463c3a746c99', 1, 3, '5678901234', 'project user'),
(13, 'pro@ilab.com', 'procurement user 1', '123456789Abc', 'e636ecc38ae7ffa94006a13408d673db', 1, 4, '7895432105', 'procurement'),
(14, 'pro2@ilab.com', 'procurement user 2', '12345abcA', '7f3efd1261d5e49fa2423f2b2cc8cf9e', 1, 4, '9876543210', 'procurement'),
(15, 'buy1@ilab.com', 'buyer 1', '1234567890Ab', 'c0d7659e35f9e7b793c4257d565e7390', 1, 7, '8978564210', 'buyser'),
(16, 'buy2@ilab.com', 'buyer 2', '123456789Ab', 'd1bfa0b6240156b7972de61f67a1e632', 1, 7, '4567933580', 'buyer'),
(17, 'abc2@gmail.com', 'buyer', '121Aa111', '9c4ee8fb6bfd3755eabc1437ac0ccdaa', 1, 7, '87678', 'designation1'),
(18, 'siprah@gmail.com', 'Approver5', 'Sipra2306', '66b81209092c081cf72358adf720884c', 1, 8, '9776069881', 'Approver'),
(19, 'abc@ilab.com', 'Technical User', 'Ab12345678', '5fb6e2a60c9da41e0a94fe6157ddb93f', 1, 9, '9937826311', 'tech evaluator'),
(20, 'qert@ilab.com', 'Technical Evaluator1', 'Aacv12345678', 'db71eec5a12e729fa2c45f8d03fc7be4', 1, 9, '2345671290', 'tech evaluator'),
(21, 'commerical@ilab.com', 'user3', 'cC2345670', '164ba08fa522f904fc17e46c7a54c2ed', 1, 10, '6563423248', 'designation3'),
(22, 'gyt2@gmail.com', 'user7', 'dD111111110', '3efc512e8690e67e5e034b02bfc9a3d2', 1, 3, '6567784466', 'designation7'),
(23, '911@gmail.com', 'user911', 'Xx91110000', '4b273c8ef61a5532fcc705a375ed4f4f', 1, 5, '9835466220', 'designation911'),
(24, 'ut11@gmail.com', 'user4510', 'Vc8jjj78768', '66ebde315e58a3dcb6c632dd0fa89373', 1, 5, '8765544783', 'designation003'),
(25, 'vch33@yahoo.com', 'user901', 'Nv66763vbv', '19457690528514f39e59b4e23eab715c', 1, 8, '8754897860', 'Approver'),
(26, 'tvs31@gmail.com', 'user77', 'Hd5600003hnb', '0d4dd4a6f73051ed47458896bc97ac85', 1, 2, '7754484233', 'designation99'),
(27, 'gtps09@gmail.com', 'user9912', 'Nc7vyh77897', '85c346a057275105c71fc016d29361ff', 1, 3, '8568987421', 'designation009'),
(28, 'ups2@yahoo.com', 'user090', 'Xz9jnumfhhj', '262f287d6b337fe94d624bccfb0339cc', 1, 6, '7987533880', 'designation05'),
(29, 'gcg2@gmail.com', 'user464', 'bN416768HHG', '0a84b0efcbd5427f4caeea4df5b14cb9', 1, 7, '8527427442', 'designation84'),
(30, 'xt12@gmail.com', 'user122', 'hT43hgdfdfgh', '10df2290a27c95a0d0fd35ea2186d9e1', 1, 9, '7755775094', 'tech evaluator'),
(31, 'ats101@gmail.com', 'user932', 'fCT46FGH', 'f3ac5a1f8b095c107f09a49bb6f19100', 1, 8, '7895644333', 'Approver'),
(32, 'yy013@gmaill.com', 'user003', 'tT7GHGJT', '34f996214cd9683befeedc8ecc2f3110', 1, 4, '7884587201', 'designation051'),
(33, 'tts5@gmaill.com', 'user780', 'sT6YHUY8 6788', '2a224b5f97af51d369af7f1ed44f8707', 1, 8, '8764676987', 'Approver'),
(34, 'uvt99@gmail.com', 'user797', 'vT976786vvn', '4e1aa3921ac7f7d3595e6f843a876f22', 1, 5, '7897459893', 'designation09'),
(35, 'abc1@gmail.com', 'user 101', '1234JAzz', '6e32b54b3c884e3527465eae355c673e', 1, 2, '9878765676', 'designation111');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid`
--

CREATE TABLE `Ilab_master_bid` (
  `Slno_bid` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `bid_date_entry` date NOT NULL,
  `bid_ref` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `mode_bid` varchar(255) NOT NULL,
  `technical_bid_type` varchar(255) NOT NULL,
  `status_bid` int(11) NOT NULL DEFAULT '1' COMMENT '4- no active  1-> active bid 0->closed 2->internal process',
  `mr_slno` int(11) NOT NULL,
  `mr_no` varchar(255) NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `material_category_name` varchar(255) NOT NULL,
  `bid_title` varchar(255) NOT NULL,
  `bid_description` text NOT NULL,
  `data_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bid_creator_id` varchar(255) NOT NULL,
  `date_publish` varchar(255) NOT NULL,
  `date_closing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid`
--

INSERT INTO `Ilab_master_bid` (`Slno_bid`, `buyer_slno`, `bid_date_entry`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `status_bid`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `bid_title`, `bid_description`, `data_entry`, `bid_creator_id`, `date_publish`, `date_closing`) VALUES
(1, 1, '2019-01-03', 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-03 14:05:49', 'buy1@ilab.com', '2019-01-04', '2019-01-31'),
(2, 3, '2019-01-24', '0011', '1221', '1', 'Closed Bid', '1', 1, 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', 'ffxd', 'dfddfd', '2019-01-24 10:48:27', 'buy1@ilab.com', '2019-01-01', '2019-06-26'),
(3, 6, '2019-01-24', '00012', '7771', '1', 'Closed Bid', '1', 1, 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', 'fdgf', 'fdfgfd', '2019-01-24 10:55:43', 'buy1@ilab.com', '2019-03-13', '2019-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_commerical`
--

CREATE TABLE `Ilab_master_bid_commerical` (
  `Slno_bid` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `bid_date_entry` date NOT NULL,
  `bid_ref` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `mode_bid` varchar(255) NOT NULL,
  `technical_bid_type` varchar(255) NOT NULL,
  `status_bid` int(11) NOT NULL DEFAULT '1' COMMENT '4- no active  1-> active bid 0->closed 2->internal process 6->bid is complted by commerical community',
  `mr_slno` int(11) NOT NULL,
  `mr_no` varchar(255) NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `material_category_name` varchar(255) NOT NULL,
  `bid_title` varchar(255) NOT NULL,
  `bid_description` text NOT NULL,
  `data_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bid_creator_id` varchar(255) NOT NULL,
  `date_publish` varchar(255) NOT NULL,
  `date_closing` varchar(255) NOT NULL,
  `count_id` int(11) NOT NULL DEFAULT '0' COMMENT '0->event of bid is not cr5eated 1->event6 is created',
  `ACE_Value` varchar(255) DEFAULT NULL,
  `saving_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_commerical`
--

INSERT INTO `Ilab_master_bid_commerical` (`Slno_bid`, `buyer_slno`, `bid_date_entry`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `status_bid`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `bid_title`, `bid_description`, `data_entry`, `bid_creator_id`, `date_publish`, `date_closing`, `count_id`, `ACE_Value`, `saving_value`) VALUES
(1, 2, '2019-01-08', 'jd', 'ss', '1', 'Closed Bid', '2', 6, 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-08 12:06:44', 'buy1@ilab.com', '2019-01-05', '2019-01-31', 0, '500003.00', NULL),
(2, 4, '2019-01-23', '1110', '12341', '1', 'Closed Bid', '2', 1, 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', 'ttt', 'xxxc', '2019-01-23 14:23:03', 'buy1@ilab.com', '2019-01-02', '2019-01-11', 0, NULL, NULL),
(3, 5, '2019-01-24', '1331', '0110', '1', 'Closed Bid', '2', 1, 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', 'gyhj', 'jhbuvfgvggh', '2019-01-24 07:02:49', 'buy1@ilab.com', '2019-01-11', '2019-01-31', 0, NULL, NULL),
(4, 7, '2019-01-24', '333', '7770', '1', 'Closed Bid', '2', 1, 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', 'ghhh', 'cvxvb', '2019-01-24 08:05:05', 'buy1@ilab.com', '2019-01-01', '2019-01-17', 0, NULL, NULL),
(5, 8, '2019-01-24', '12111', '778', '1', 'Closed Bid', '2', 1, 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', 'hghff', 'bvggf', '2019-01-24 11:00:08', 'buy1@ilab.com', '2019-01-01', '2019-05-10', 0, NULL, NULL),
(6, 9, '2019-01-24', '1212', '77888', '1', 'Closed Bid', '2', 1, 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', 'ffg', 'fghhgj', '2019-01-24 11:08:53', 'buy1@ilab.com', '2019-03-06', '2019-05-16', 0, NULL, NULL),
(7, 10, '2019-01-24', '556', '6610', '1', 'Closed Bid', '2', 1, 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', 'fffffyhyh', 'vggghghfg', '2019-01-24 12:21:24', 'buy1@ilab.com', '2019-03-05', '2019-03-16', 0, NULL, NULL),
(8, 11, '2019-01-24', '656', '7721', '1', 'Closed Bid', '2', 1, 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', 'cfgfg', 'vgfgrfff', '2019-01-24 13:22:28', 'buy1@ilab.com', '2019-03-01', '2019-05-09', 0, NULL, NULL),
(9, 12, '2019-01-25', '0011', '22333', '1', 'Closed Bid', '2', 1, 25, '2019-01-25-fYx3a', '0770', 1, 'standard catalogued item [ sci tech ]', 'xxxfgdf', 'fgdfd', '2019-01-25 13:40:37', 'buy1@ilab.com', '2019-01-10', '2019-01-17', 0, NULL, NULL),
(10, 13, '2019-01-25', '55666', '667700', '3', 'Closed Bid', '2', 1, 27, '2019-01-25-KJzVd', '0770', 1, 'logistics [ logistics ]', 'ttxx', 'xxxx', '2019-01-25 14:00:41', 'buy1@ilab.com', '2019-01-31', '2019-03-25', 0, NULL, NULL),
(11, 14, '2019-01-25', '11001', '33220', '3', 'Closed Bid', '2', 1, 26, '2019-01-25-2Iyod', '0770', 1, 'logistics [ logistics ]', 'ffgfg', 'bkkjuhj', '2019-01-25 14:06:58', 'buy1@ilab.com', '2019-01-31', '2019-01-17', 0, NULL, NULL),
(12, 16, '2019-01-25', '123', '321', '3', 'Closed Bid', '2', 1, 29, '2019-01-25-qObQV', '0770', 1, 'logistics [ logistics ]', 'dssd', 'eddc', '2019-01-25 14:17:18', 'buy1@ilab.com', '2019-01-31', '2019-05-02', 0, NULL, NULL),
(13, 17, '2019-01-25', '121', '211', '3', 'Closed Bid', '2', 1, 30, '2019-01-25-d6iYS', '0770', 1, 'logistics [ logistics ]', 'cfgdfg', 'gdcfg', '2019-01-25 14:25:00', 'buy1@ilab.com', '2019-01-31', '2019-01-31', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_commericalevaluation`
--

CREATE TABLE `Ilab_master_bid_commericalevaluation` (
  `slno_bid_tech_id` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `Technical_id_person` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `status_bid` int(11) NOT NULL DEFAULT '0' COMMENT '0->not started  1->started  6->complete bid',
  `view_status` int(11) NOT NULL DEFAULT '0' COMMENT '0->not viewed 1->viewied'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_commericalevaluation`
--

INSERT INTO `Ilab_master_bid_commericalevaluation` (`slno_bid_tech_id`, `bid_slno`, `buyer_slno`, `Technical_id_person`, `master_bid_id`, `status_bid`, `view_status`) VALUES
(1, 2, 2, '21', 1, 6, 0),
(2, 4, 4, '21', 2, 0, 0),
(3, 5, 5, '21', 3, 0, 0),
(4, 12, 7, '21', 4, 0, 0),
(5, 13, 8, '21', 5, 0, 0),
(6, 15, 9, '21', 6, 0, 0),
(7, 16, 10, '21', 7, 0, 0),
(8, 18, 11, '21', 8, 0, 0),
(9, 25, 12, '21', 9, 0, 0),
(10, 27, 13, '21', 10, 0, 0),
(11, 26, 14, '21', 11, 0, 0),
(12, 29, 16, '21', 12, 0, 0),
(13, 30, 17, '21', 13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_date_details`
--

CREATE TABLE `Ilab_master_bid_date_details` (
  `Slno_bid_date` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `bid_start_date` varchar(255) DEFAULT NULL,
  `bid_closed_date` varchar(255) DEFAULT NULL,
  `bid_query_closed_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '4- no active  1-> active bid 0->closed 2->internal process',
  `master_bid_id` int(11) NOT NULL,
  `bid_detail_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_date_details`
--

INSERT INTO `Ilab_master_bid_date_details` (`Slno_bid_date`, `bid_slno`, `buyer_slno`, `bid_start_date`, `bid_closed_date`, `bid_query_closed_date`, `status`, `master_bid_id`, `bid_detail_description`) VALUES
(1, 1, 1, '2019-01-04', '2019-01-16', '2019-01-08', 1, 1, 'A function to be called when the form is being submitted, or an expression to be evaluated, which should return a function call.'),
(2, 3, 3, '2019-01-10', '2019-02-06', '2019-02-06', 1, 2, 'dfddf'),
(3, 7, 6, '2019-03-16', '2019-04-19', '2019-02-20', 4, 3, 'dfggv');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_date_details_commerical`
--

CREATE TABLE `Ilab_master_bid_date_details_commerical` (
  `Slno_bid_date` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `bid_start_date` varchar(255) DEFAULT NULL,
  `bid_closed_date` varchar(255) DEFAULT NULL,
  `bid_query_closed_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '4- no active  1-> active bid 0->closed 2->internal process',
  `master_bid_id` int(11) NOT NULL,
  `bid_detail_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_date_details_commerical`
--

INSERT INTO `Ilab_master_bid_date_details_commerical` (`Slno_bid_date`, `bid_slno`, `buyer_slno`, `bid_start_date`, `bid_closed_date`, `bid_query_closed_date`, `status`, `master_bid_id`, `bid_detail_description`) VALUES
(1, 2, 2, '2019-01-01', '2019-01-31', '2019-01-01', 1, 1, 'About The Essential: Two CD 29-track compilation from the boyband featuring hits, album tracks and fan favorites including \"Everybody (Backstreet\'s Back)\", \"I Want It That Way\", \"Larger Than Life\", \"Quit Playing Games (With My Heart)\" and more favorites.'),
(2, 4, 4, '2019-01-07', '2019-01-19', '2019-01-17', 1, 2, 'bhhbh'),
(3, 5, 5, '2019-01-11', '2019-01-07', '2019-01-14', 1, 3, 'gggh'),
(4, 12, 7, '2019-01-08', '2019-01-14', '2019-01-11', 1, 4, 'ghggbj'),
(5, 13, 8, '2019-01-08', '8', '2019-01-18', 1, 5, 'ffggv'),
(6, 15, 9, '2019-03-07', '2018-03-06', '2018-12-28', 1, 6, 'xcxc'),
(7, 16, 10, '2019-03-15', '2019-03-01', '2019-02-13', 1, 7, 'cfgfg'),
(8, 18, 11, '2019-04-12', '2019-01-10', '2019-06-11', 1, 8, 'fgfgfg'),
(9, 25, 12, '2019-05-06', '2019-06-08', '2018-08-31', 1, 9, 'dfg'),
(10, 27, 13, '2019-02-07', '2019-01-09', '2019-02-14', 1, 10, 'jnjh'),
(11, 26, 14, '2019-03-08', '2019-07-15', '2019-05-10', 1, 11, 'gvbf'),
(12, 29, 16, '2019-02-07', '2019-07-17', '2019-03-08', 1, 12, 'fggggggg'),
(13, 30, 17, '2019-02-12', '2019-03-18', '2019-02-09', 1, 13, 'hhh');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_details`
--

CREATE TABLE `Ilab_master_bid_details` (
  `slno_bid_detail` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `Title_bid` varchar(255) NOT NULL,
  `work_detail_bid` text NOT NULL,
  `period_work_detail` varchar(255) NOT NULL,
  `location_detail` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_details`
--

INSERT INTO `Ilab_master_bid_details` (`slno_bid_detail`, `bid_slno`, `buyer_slno`, `Title_bid`, `work_detail_bid`, `period_work_detail`, `location_detail`, `master_bid_id`) VALUES
(1, 1, 1, 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '06 month', 'Bhubanswar', 1),
(2, 3, 3, 'ffxd', 'dfddfd', '4454', 'dfrtrfddf', 2),
(3, 7, 6, 'fdgf', 'fdfgfd', '454565', 'hjhbjgg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_details_commerical`
--

CREATE TABLE `Ilab_master_bid_details_commerical` (
  `slno_bid_detail` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `Title_bid` varchar(255) NOT NULL,
  `work_detail_bid` text NOT NULL,
  `period_work_detail` varchar(255) NOT NULL,
  `location_detail` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_details_commerical`
--

INSERT INTO `Ilab_master_bid_details_commerical` (`slno_bid_detail`, `bid_slno`, `buyer_slno`, `Title_bid`, `work_detail_bid`, `period_work_detail`, `location_detail`, `master_bid_id`) VALUES
(1, 2, 2, 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '6 month', 'Bhubanswar', 1),
(2, 4, 4, 'ttt', 'xxxc', '5', 'xxxx', 2),
(3, 5, 5, 'gyhj', 'jhbuvfgvggh', '5000hrs', 'uhufgvfhg', 3),
(4, 12, 7, 'ghhh', 'cvxvb', '6760', 'jhnj', 4),
(5, 13, 8, 'hghff', 'bvggf', '6767', 'ghfgfg', 5),
(6, 15, 9, 'ffg', 'fghhgj', '6556', 'ghffbfg', 6),
(7, 16, 10, 'fffffyhyh', 'vggghghfg', '45560', 'gbghgh', 7),
(8, 18, 11, 'cfgfg', 'vgfgrfff', '555', 'cxvf', 8),
(9, 25, 12, 'xxxfgdf', 'fgdfd', '33400', 'fgff', 9),
(10, 27, 13, 'ttxx', 'xxxx', '576500', 'ghxxx', 10),
(11, 26, 14, 'ffgfg', 'bkkjuhj', '67600', 'bnbh', 11),
(12, 29, 16, 'dssd', 'eddc', '32213', 'sdfc', 12),
(13, 30, 17, 'cfgdfg', 'gdcfg', '676', 'ffcfg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_file_commerical`
--

CREATE TABLE `Ilab_master_bid_file_commerical` (
  `Slno_bid_file` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL COMMENT 'here mr serial no will be stored ',
  `bid_buyer_slno` int(11) NOT NULL COMMENT 'here  value will come from Ilab_master_buyer_MR serail no',
  `file_name` varchar(255) NOT NULL COMMENT 'here file orginal name is stored',
  `file_code_name` varchar(255) NOT NULL COMMENT 'here file name stored inside server folder',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'when file is inserted',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0->some manupaltion occured 1->no manupaltion is done',
  `who_loaded_file` varchar(255) NOT NULL COMMENT 'Information of author'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table will hold information of file to be loaded';

--
-- Dumping data for table `Ilab_master_bid_file_commerical`
--

INSERT INTO `Ilab_master_bid_file_commerical` (`Slno_bid_file`, `bid_slno`, `bid_buyer_slno`, `file_name`, `file_code_name`, `date`, `status`, `who_loaded_file`) VALUES
(1, 2, 2, '22w2.jpg', '2019-01-08-22w2.jpg', '2019-01-08 12:06:24', 1, 'buy1@ilab.com'),
(2, 4, 4, 'undraw_windows_q9m0.svg', '2019-01-23-undraw_windows_q9m0.svg', '2019-01-23 14:21:31', 1, 'buy1@ilab.com'),
(3, 4, 4, 'undraw_windows_q9m0.svg', '2019-01-23-undraw_windows_q9m0.svg', '2019-01-23 14:22:04', 1, 'buy1@ilab.com'),
(4, 4, 4, 'undraw_windows_q9m0.svg', '2019-01-23-undraw_windows_q9m0.svg', '2019-01-23 14:22:19', 1, 'buy1@ilab.com'),
(5, 5, 5, 'undraw_secure_data_0rwp.svg', '2019-01-24-undraw_secure_data_0rwp.svg', '2019-01-24 06:58:50', 1, 'buy1@ilab.com'),
(6, 5, 5, 'undraw_secure_data_0rwp.svg', '2019-01-24-undraw_secure_data_0rwp.svg', '2019-01-24 07:01:53', 1, 'buy1@ilab.com'),
(7, 5, 5, 'undraw_windows_q9m0.svg', '2019-01-24-undraw_windows_q9m0.svg', '2019-01-24 07:02:24', 1, 'buy1@ilab.com'),
(8, 12, 7, 'undraw_secure_data_0rwp.svg', '2019-01-24-undraw_secure_data_0rwp.svg', '2019-01-24 08:04:09', 1, 'buy1@ilab.com'),
(9, 12, 7, 'undraw_charts_jj6t.svg', '2019-01-24-undraw_charts_jj6t.svg', '2019-01-24 08:04:35', 1, 'buy1@ilab.com'),
(10, 13, 8, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 10:59:30', 1, 'buy1@ilab.com'),
(11, 13, 8, 'undraw_map_light_6ttm.svg', '2019-01-24-undraw_map_light_6ttm.svg', '2019-01-24 10:59:41', 1, 'buy1@ilab.com'),
(12, 15, 9, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 11:07:26', 1, 'buy1@ilab.com'),
(13, 15, 9, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 11:07:38', 1, 'buy1@ilab.com'),
(14, 13, 8, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 11:11:32', 1, 'buy1@ilab.com'),
(15, 16, 10, 'undraw_windows_q9m0.svg', '2019-01-24-undraw_windows_q9m0.svg', '2019-01-24 12:20:54', 1, 'buy1@ilab.com'),
(16, 16, 10, 'undraw_secure_data_0rwp.svg', '2019-01-24-undraw_secure_data_0rwp.svg', '2019-01-24 12:21:02', 1, 'buy1@ilab.com'),
(17, 18, 11, 'undraw_windows_q9m0.svg', '2019-01-24-undraw_windows_q9m0.svg', '2019-01-24 12:39:56', 1, 'buy1@ilab.com'),
(18, 18, 11, 'undraw_resume_1hqp.svg', '2019-01-24-undraw_resume_1hqp.svg', '2019-01-24 12:40:06', 1, 'buy1@ilab.com'),
(19, 18, 11, 'undraw_windows_q9m0.svg', '2019-01-24-undraw_windows_q9m0.svg', '2019-01-24 13:22:08', 1, 'buy1@ilab.com'),
(20, 25, 12, 'undraw_windows_q9m0.svg', '2019-01-25-undraw_windows_q9m0.svg', '2019-01-25 13:40:06', 1, 'buy1@ilab.com'),
(21, 25, 12, 'undraw_resume_1hqp.svg', '2019-01-25-undraw_resume_1hqp.svg', '2019-01-25 13:40:20', 1, 'buy1@ilab.com'),
(22, 27, 13, 'undraw_team_ih79.svg', '2019-01-25-undraw_team_ih79.svg', '2019-01-25 13:59:34', 1, 'buy1@ilab.com'),
(23, 27, 13, 'undraw_team_ih79.svg', '2019-01-25-undraw_team_ih79.svg', '2019-01-25 13:59:38', 1, 'buy1@ilab.com'),
(24, 26, 14, 'undraw_team_ih79.svg', '2019-01-25-undraw_team_ih79.svg', '2019-01-25 14:06:39', 1, 'buy1@ilab.com'),
(25, 29, 16, 'undraw_resume_1hqp.svg', '2019-01-25-undraw_resume_1hqp.svg', '2019-01-25 14:14:58', 1, 'buy1@ilab.com'),
(26, 29, 16, 'undraw_team_ih79.svg', '2019-01-25-undraw_team_ih79.svg', '2019-01-25 14:17:00', 1, 'buy1@ilab.com'),
(27, 30, 17, 'undraw_statistics_ctoq.svg', '2019-01-25-undraw_statistics_ctoq.svg', '2019-01-25 14:24:46', 1, 'buy1@ilab.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_file_technical`
--

CREATE TABLE `Ilab_master_bid_file_technical` (
  `Slno_bid_file` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL COMMENT 'here mr serial no will be stored ',
  `bid_buyer_slno` int(11) NOT NULL COMMENT 'here  value will come from Ilab_master_buyer_MR serail no',
  `file_name` varchar(255) NOT NULL COMMENT 'here file orginal name is stored',
  `file_code_name` varchar(255) NOT NULL COMMENT 'here file name stored inside server folder',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'when file is inserted',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0->some manupaltion occured 1->no manupaltion is done',
  `who_loaded_file` varchar(255) NOT NULL COMMENT 'Information of author'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table will hold information of file to be loaded';

--
-- Dumping data for table `Ilab_master_bid_file_technical`
--

INSERT INTO `Ilab_master_bid_file_technical` (`Slno_bid_file`, `bid_slno`, `bid_buyer_slno`, `file_name`, `file_code_name`, `date`, `status`, `who_loaded_file`) VALUES
(1, 1, 1, 'office.gif', '2019-01-03-office.gif', '2019-01-03 14:04:34', 1, 'buy1@ilab.com'),
(2, 2, 2, 'undraw_windows_q9m0.svg', '2019-01-23-undraw_windows_q9m0.svg', '2019-01-23 14:25:55', 1, 'buy1@ilab.com'),
(3, 2, 2, 'undraw_mail_box_kd5i.svg', '2019-01-23-undraw_mail_box_kd5i.svg', '2019-01-23 14:26:09', 1, 'buy1@ilab.com'),
(4, 1, 1, 'undraw_windows_q9m0.svg', '2019-01-23-undraw_windows_q9m0.svg', '2019-01-23 14:29:37', 1, 'buy1@ilab.com'),
(5, 3, 3, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 10:47:16', 1, 'buy1@ilab.com'),
(6, 3, 3, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 10:47:25', 1, 'buy1@ilab.com'),
(7, 7, 6, 'undraw_statistics_ctoq.svg', '2019-01-24-undraw_statistics_ctoq.svg', '2019-01-24 10:53:29', 1, 'buy1@ilab.com'),
(8, 7, 6, 'undraw_resume_1hqp.svg', '2019-01-24-undraw_resume_1hqp.svg', '2019-01-24 10:55:15', 1, 'buy1@ilab.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_invitation_rank`
--

CREATE TABLE `Ilab_master_bid_invitation_rank` (
  `slno_invi` int(11) NOT NULL,
  `master_bid_id` varchar(255) NOT NULL,
  `master_bid_start` varchar(255) NOT NULL,
  `master_bid_end` varchar(255) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `ref_id` varchar(255) NOT NULL,
  `no_time_entry` varchar(255) NOT NULL,
  `commerical_user_id` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_process` int(11) NOT NULL DEFAULT '1',
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_invi_otp`
--

CREATE TABLE `Ilab_master_bid_invi_otp` (
  `slno_otp` int(11) NOT NULL,
  `master_bid` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_invi_rank_approvals`
--

CREATE TABLE `Ilab_master_bid_invi_rank_approvals` (
  `slno_approve` int(11) NOT NULL,
  `master_bid_id` varchar(255) NOT NULL,
  `invi_slno_id` varchar(255) NOT NULL,
  `vendor_id_bid` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_entry` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bid_ref` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `no_of_times` int(11) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_invi_rank_not_app`
--

CREATE TABLE `Ilab_master_bid_invi_rank_not_app` (
  `slno_not` int(11) NOT NULL,
  `master_bid_id` varchar(255) NOT NULL,
  `invi_slno_id` varchar(255) NOT NULL,
  `vendor_bid_id` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_otp_commerical`
--

CREATE TABLE `Ilab_master_bid_otp_commerical` (
  `slno_comm` int(11) NOT NULL,
  `master_bid_id` varchar(255) NOT NULL COMMENT 'commerial bid i serial no',
  `bid_slno` varchar(255) DEFAULT NULL COMMENT 'buyser serial id',
  `type_bid` varchar(255) NOT NULL COMMENT '1-simple 2-closed',
  `category_bid` varchar(255) NOT NULL COMMENT '1-sci 2-moi 3-log ',
  `otp` varchar(255) NOT NULL COMMENT 'otp',
  `bid_name` varchar(255) NOT NULL COMMENT 'bid like closed simple rank order bid',
  `user_id_process` varchar(255) NOT NULL COMMENT ' who has generated id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1-active 2-inactive',
  `match_status` int(11) NOT NULL DEFAULT '0' COMMENT '1-match 2-pending',
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date time of entry',
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'when status is chande date time',
  `match_bid_id_user` varchar(255) DEFAULT NULL COMMENT 'who has try to match id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_otp_commerical`
--

INSERT INTO `Ilab_master_bid_otp_commerical` (`slno_comm`, `master_bid_id`, `bid_slno`, `type_bid`, `category_bid`, `otp`, `bid_name`, `user_id_process`, `status`, `match_status`, `date_entry`, `date_update`, `match_bid_id_user`) VALUES
(1, '1', '2', '2', '1', '2019-01-11-3EXfp', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-11 13:51:42', '2019-01-11 14:28:22', 'commerical@ilab.com'),
(2, '1', '2', '2', '1', '2019-01-12-pRwiv', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-12 07:16:44', '2019-01-12 07:16:44', NULL),
(3, '1', '2', '2', '1', '2019-01-12-y1wRP', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-12 09:51:24', '2019-01-12 09:51:50', 'commerical@ilab.com'),
(4, '1', '2', '2', '1', '2019-01-12-AJ3Nr', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-12 12:24:34', '2019-01-12 12:24:50', 'commerical@ilab.com'),
(5, '1', '2', '2', '1', '2019-01-15-pIavh', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-15 06:44:42', '2019-01-15 06:54:55', 'commerical@ilab.com'),
(6, '1', '2', '2', '1', '2019-01-15-mQqRa', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-15 10:31:27', '2019-01-15 10:32:26', 'commerical@ilab.com'),
(7, '1', '2', '2', '1', '2019-01-15-gmFiY', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-15 13:17:09', '2019-01-15 13:17:28', 'commerical@ilab.com'),
(8, '1', '2', '2', '1', '2019-01-15-KaQym', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-15 13:50:42', '2019-01-15 13:50:42', NULL),
(9, '1', '2', '2', '1', '2019-01-16-oKLPZ', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-16 06:00:16', '2019-01-16 06:01:12', 'commerical@ilab.com'),
(10, '1', '2', '2', '1', '2019-01-16-cGCoK', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-16 10:53:55', '2019-01-16 10:54:12', 'commerical@ilab.com'),
(11, '1', '2', '2', '1', '2019-01-17-on0Ac', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-17 11:02:04', '2019-01-17 11:04:06', 'commerical@ilab.com'),
(12, '1', '2', '2', '1', '2019-01-19-FNlDy', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 10:42:24', '2019-01-19 10:42:24', NULL),
(13, '1', '2', '2', '1', '2019-01-19-Voz34', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 10:43:29', '2019-01-19 10:43:29', NULL),
(14, '1', '2', '2', '1', '2019-01-19-95sMT', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 11:07:30', '2019-01-19 11:07:30', NULL),
(15, '1', '2', '2', '1', '2019-01-19-Np4Iz', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 11:08:18', '2019-01-19 11:08:18', NULL),
(16, '1', '2', '2', '1', '2019-01-19-T9HQg', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 11:24:18', '2019-01-19 11:24:18', NULL),
(17, '1', '2', '2', '1', '2019-01-19-dsCkN', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 11:24:23', '2019-01-19 11:24:23', NULL),
(18, '1', '2', '2', '1', '2019-01-19-AKRnE', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-19 11:50:59', '2019-01-19 11:50:59', NULL),
(19, '2', '4', '2', '1', '2019-01-24-SQK2l', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-24 06:30:50', '2019-01-24 06:32:05', 'commerical@ilab.com'),
(20, '2', '4', '2', '1', '2019-01-24-r6AIW', 'Closed Bid', 'commerical@ilab.com', 1, 2, '2019-01-24 06:39:46', '2019-01-24 06:39:46', NULL),
(21, '2', '4', '2', '1', '2019-01-24-Xd5AZ', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-24 06:39:59', '2019-01-24 06:40:22', 'commerical@ilab.com'),
(22, '2', '4', '2', '1', '2019-01-24-Xd5A3', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-24 06:41:42', '2019-01-24 06:42:07', 'commerical@ilab.com'),
(23, '2', '4', '2', '1', '2019-01-25-2hd9B', 'Closed Bid', 'commerical@ilab.com', 1, 1, '2019-01-25 14:16:31', '2019-01-25 14:17:12', 'commerical@ilab.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_query`
--

CREATE TABLE `Ilab_master_bid_query` (
  `Slno_query` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `query_details` text,
  `response_detail` text,
  `responser_id` varchar(255) DEFAULT NULL,
  `date_query` date NOT NULL,
  `date_respond` date DEFAULT NULL,
  `status_responds` int(11) NOT NULL DEFAULT '0' COMMENT '0-not responded 1-responded'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_query`
--

INSERT INTO `Ilab_master_bid_query` (`Slno_query`, `bid_slno`, `Vendor_id`, `query_details`, `response_detail`, `responser_id`, `date_query`, `date_respond`, `status_responds`) VALUES
(1, 1, 'ven121@gmail.com', 'xxxxxx', NULL, NULL, '2019-01-18', NULL, 0),
(2, 1, 'ven121@gmail.com', 'xxxx', NULL, NULL, '2019-01-18', NULL, 0),
(3, 1, 'ven121@gmail.com', 'xxxx', NULL, NULL, '2019-01-18', NULL, 0),
(4, 1, 'ven121@gmail.com', 'xxxx', NULL, NULL, '2019-01-19', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_query_commerical`
--

CREATE TABLE `Ilab_master_bid_query_commerical` (
  `Slno_query` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `query_details` text,
  `response_detail` text,
  `responser_id` varchar(255) DEFAULT NULL,
  `date_query` date NOT NULL,
  `date_respond` date DEFAULT NULL,
  `status_responds` int(11) NOT NULL DEFAULT '0' COMMENT '0-not responded 1-responded'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_query_commerical`
--

INSERT INTO `Ilab_master_bid_query_commerical` (`Slno_query`, `bid_slno`, `Vendor_id`, `query_details`, `response_detail`, `responser_id`, `date_query`, `date_respond`, `status_responds`) VALUES
(1, 1, 'ven121@gmail.com', 'xxxxx', NULL, NULL, '2019-01-18', NULL, 0),
(2, 1, 'ven121@gmail.com', 'xxxxxx', NULL, NULL, '2019-01-19', NULL, 0),
(3, 1, 'ven121@gmail.com', 'xxxxx', NULL, NULL, '2019-01-19', NULL, 0),
(4, 1, 'ven121@gmail.com', 'xxxsxvd', NULL, NULL, '2019-01-24', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_technicalevaluation`
--

CREATE TABLE `Ilab_master_bid_technicalevaluation` (
  `slno_bid_tech_id` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `Technical_id_person` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `status_bid` int(11) NOT NULL DEFAULT '0' COMMENT '0->not started  1->started  8->complete bid',
  `view_status` int(11) NOT NULL DEFAULT '0' COMMENT '0->not viewed 1->viewied'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_technicalevaluation`
--

INSERT INTO `Ilab_master_bid_technicalevaluation` (`slno_bid_tech_id`, `bid_slno`, `buyer_slno`, `Technical_id_person`, `master_bid_id`, `status_bid`, `view_status`) VALUES
(1, 1, 1, '19', 1, 0, 0),
(2, 3, 3, '19', 2, 0, 0),
(3, 7, 6, '19', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_vendor`
--

CREATE TABLE `Ilab_master_bid_vendor` (
  `slno_vendor` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `approval_status` varchar(255) DEFAULT NULL,
  `submission_status` varchar(255) DEFAULT '0',
  `submission_count` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_start` varchar(255) NOT NULL,
  `date_end` varchar(255) NOT NULL,
  `query_end_date` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `view_status_approve` int(11) NOT NULL DEFAULT '0',
  `bid_ref` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `mode_bid` varchar(255) NOT NULL,
  `technical_bid_type` varchar(255) NOT NULL,
  `mr_slno` int(11) NOT NULL,
  `mr_no` varchar(255) NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `material_category_name` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_active` int(11) NOT NULL DEFAULT '0' COMMENT '0-bid is not active 1-bid is active 2-bid is close',
  `status_view` int(11) NOT NULL DEFAULT '5' COMMENT '5-not viewed 6-viewed 7-submitted 8-> resubmission',
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_vendor`
--

INSERT INTO `Ilab_master_bid_vendor` (`slno_vendor`, `bid_slno`, `buyer_slno`, `vendor_id`, `status`, `approval_status`, `submission_status`, `submission_count`, `title`, `description`, `date_start`, `date_end`, `query_end_date`, `master_bid_id`, `view_status_approve`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `date_entry`, `date_update`, `status_active`, `status_view`, `comment`) VALUES
(1, 1, 1, 'vender@ilab.com', 1, NULL, '1', '0', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-04', '2019-01-16', '2019-01-08', 1, 0, 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', '2019-01-03 14:05:50', '2019-01-04 14:26:11', 1, 7, NULL),
(2, 1, 1, 'ven111@gmail.com', 1, NULL, '0', '0', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-04', '2019-01-16', '2019-01-08', 1, 0, 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', '2019-01-03 14:05:50', '2019-01-03 14:39:53', 1, 5, NULL),
(3, 1, 1, 'ven121@gmail.com', 1, NULL, '1', '0', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-04', '2019-01-16', '2019-01-08', 1, 0, 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', '2019-01-03 14:05:50', '2019-01-04 07:16:14', 1, 7, NULL),
(4, 1, 1, 'ven221@gmail.com', 1, NULL, '0', '0', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-04', '2019-01-16', '2019-01-08', 1, 0, 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', '2019-01-03 14:05:50', '2019-01-03 14:39:53', 1, 5, NULL),
(5, 1, 1, 'ven371@yahoo.com', 1, NULL, '0', '0', 'Test 1 Of Sci Bidding', 'This example demonstrates how to run an Testingfunction when a for is submitted.', '2019-01-04', '2019-01-16', '2019-01-08', 1, 0, 'jan-03-01-2019', 'january-01-03', '1', 'Simple Bid', '1', 1, '2019-01-03-LTCBA', '0770', 3, 'standard catalogued item [ sci tech ]', '2019-01-03 14:05:50', '2019-01-03 14:39:53', 1, 5, NULL),
(6, 3, 3, 'vender@ilab.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:27', '2019-01-24 13:35:00', 1, 5, NULL),
(7, 3, 3, 'ven111@gmail.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:27', '2019-01-24 13:35:00', 1, 5, NULL),
(8, 3, 3, 'ven121@gmail.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:28', '2019-01-24 13:35:00', 1, 5, NULL),
(9, 3, 3, 'ven221@gmail.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:28', '2019-01-24 13:35:00', 1, 5, NULL),
(10, 3, 3, 'ven371@yahoo.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:28', '2019-01-24 13:35:00', 1, 5, NULL),
(11, 3, 3, 'ven170@yahoo.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:28', '2019-01-24 13:35:00', 1, 5, NULL),
(12, 3, 3, 'ven454@yahoo.com', 1, NULL, '0', '0', 'ffxd', 'dfddfd', '2019-01-10', '2019-02-06', '2019-02-06', 2, 0, '0011', '1221', '1', 'Closed Bid', '1', 3, '2019-01-16-J0Y9p', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:48:28', '2019-01-24 13:35:00', 1, 5, NULL),
(13, 7, 6, 'vender@ilab.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(14, 7, 6, 'ven111@gmail.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(15, 7, 6, 'ven121@gmail.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(16, 7, 6, 'ven221@gmail.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(17, 7, 6, 'ven310@yahoo.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(18, 7, 6, 'ven66@gmail.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(19, 7, 6, 'ven371@yahoo.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(20, 7, 6, 'ven170@yahoo.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL),
(21, 7, 6, 'ven454@yahoo.com', 4, NULL, '0', '0', 'fdgf', 'fdfgfd', '2019-03-16', '2019-04-19', '2019-02-20', 3, 0, '00012', '7771', '1', 'Closed Bid', '1', 7, '2019-01-21-bBsyq', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 10:55:44', '2019-01-24 10:55:44', 0, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_vendor_commerical`
--

CREATE TABLE `Ilab_master_bid_vendor_commerical` (
  `slno_vendor` int(11) NOT NULL,
  `bid_slno` int(11) NOT NULL,
  `buyer_slno` int(11) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `approval_status` varchar(255) DEFAULT NULL,
  `submission_status` varchar(255) DEFAULT NULL,
  `submission_count` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_start` varchar(255) NOT NULL,
  `date_end` varchar(255) NOT NULL,
  `query_end_date` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `view_status` int(11) NOT NULL DEFAULT '0',
  `bid_ref` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `mode_bid` varchar(255) NOT NULL,
  `technical_bid_type` varchar(255) NOT NULL,
  `mr_slno` int(11) NOT NULL,
  `mr_no` varchar(255) NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `material_category_name` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_active` int(11) NOT NULL DEFAULT '0' COMMENT '0-bid is not active 1-bid is active 2-bid is close',
  `status_view` int(11) NOT NULL DEFAULT '5' COMMENT '5-not viewed 6-viewed 7-submitted',
  `negotiable_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_vendor_commerical`
--

INSERT INTO `Ilab_master_bid_vendor_commerical` (`slno_vendor`, `bid_slno`, `buyer_slno`, `vendor_id`, `status`, `approval_status`, `submission_status`, `submission_count`, `title`, `description`, `date_start`, `date_end`, `query_end_date`, `master_bid_id`, `view_status`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `date_entry`, `date_update`, `status_active`, `status_view`, `negotiable_date`) VALUES
(1, 2, 2, 'vender@ilab.com', 1, NULL, '1', '1', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-23 13:03:47', 1, 8, '01/26/2019 5:47 PM'),
(2, 2, 2, 'ven111@gmail.com', 1, NULL, '1', '1', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-23 13:18:46', 1, 7, '01/26/2019 6:45 PM'),
(3, 2, 2, 'ven121@gmail.com', 1, NULL, '1', '1', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-23 13:07:59', 1, 7, '01/26/2019 5:47 PM'),
(4, 2, 2, 'ven221@gmail.com', 1, NULL, NULL, '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-08 12:07:05', 1, 5, ''),
(5, 2, 2, 'ven1011@yahoo.com', 1, NULL, NULL, '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-08 12:07:05', 1, 5, ''),
(6, 2, 2, 'ven97@gmail.com', 1, NULL, NULL, '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'ss', '2019-01-01', '2019-01-31', '2019-01-01', 1, 0, 'jd', 'ss', '1', 'Closed Bid', '2', 2, '2019-01-08-TaYy1', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-08 12:06:48', '2019-01-08 12:07:05', 1, 5, ''),
(7, 4, 4, 'vender@ilab.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(8, 4, 4, 'ven111@gmail.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(9, 4, 4, 'ven121@gmail.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(10, 4, 4, 'ven221@gmail.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(11, 4, 4, 'ven66@gmail.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(12, 4, 4, 'ven371@yahoo.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(13, 4, 4, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'ttt', 'xxxc', '2019-01-07', '2019-01-19', '2019-01-17', 2, 0, '1110', '12341', '1', 'Closed Bid', '2', 4, '2019-01-16-1A8EB', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-23 14:23:04', '2019-01-23 14:31:58', 1, 5, ''),
(14, 5, 5, 'vender@ilab.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(15, 5, 5, 'ven111@gmail.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(16, 5, 5, 'ven121@gmail.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(17, 5, 5, 'ven221@gmail.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(18, 5, 5, 'ven310@yahoo.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(19, 5, 5, 'ven1011@yahoo.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(20, 5, 5, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(21, 5, 5, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'gyhj', 'jhbuvfgvggh', '2019-01-11', '2019-01-07', '2019-01-14', 3, 0, '1331', '0110', '1', 'Closed Bid', '2', 5, '2019-01-19-yXgV7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 07:02:49', '2019-01-24 07:25:38', 1, 5, ''),
(22, 12, 7, 'vender@ilab.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:05', '2019-01-24 11:10:34', 1, 5, ''),
(23, 12, 7, 'ven111@gmail.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:05', '2019-01-24 11:10:34', 1, 5, ''),
(24, 12, 7, 'ven121@gmail.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:05', '2019-01-24 11:10:34', 1, 5, ''),
(25, 12, 7, 'ven221@gmail.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:05', '2019-01-24 11:10:34', 1, 5, ''),
(26, 12, 7, 'ven310@yahoo.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(27, 12, 7, 'ven90@gmail.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(28, 12, 7, 'ven66@gmail.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(29, 12, 7, 'ven371@yahoo.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(30, 12, 7, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(31, 12, 7, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'ghhh', 'cvxvb', '2019-01-08', '2019-01-14', '2019-01-11', 4, 0, '333', '7770', '1', 'Closed Bid', '2', 12, '2019-01-24-RXfS5', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 08:05:06', '2019-01-24 11:10:34', 1, 5, ''),
(32, 13, 8, 'vender@ilab.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(33, 13, 8, 'ven111@gmail.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(34, 13, 8, 'ven121@gmail.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(35, 13, 8, 'ven221@gmail.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(36, 13, 8, 'ven310@yahoo.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(37, 13, 8, 'ven97@gmail.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(38, 13, 8, 'ven979@yahoo.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(39, 13, 8, 'ven371@yahoo.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(40, 13, 8, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(41, 13, 8, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'hghff', 'bvggf', '2019-01-08', '8', '2019-01-18', 5, 0, '12111', '778', '1', 'Closed Bid', '2', 13, '2019-01-24-ugDE7', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:00:09', '2019-01-24 11:11:57', 1, 5, ''),
(42, 15, 9, 'vender@ilab.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:54', '2019-01-24 13:35:42', 1, 5, ''),
(43, 15, 9, 'ven111@gmail.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(44, 15, 9, 'ven121@gmail.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(45, 15, 9, 'ven221@gmail.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(46, 15, 9, 'ven310@yahoo.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(47, 15, 9, 'ven66@gmail.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(48, 15, 9, 'ven371@yahoo.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(49, 15, 9, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(50, 15, 9, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'ffg', 'fghhgj', '2019-03-07', '2018-03-06', '2018-12-28', 6, 0, '1212', '77888', '1', 'Closed Bid', '2', 15, '2019-01-24-crXIv', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 11:08:55', '2019-01-24 13:35:42', 1, 5, ''),
(51, 16, 10, 'vender@ilab.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:24', '2019-01-25 14:07:36', 1, 5, ''),
(52, 16, 10, 'ven111@gmail.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:24', '2019-01-25 14:07:36', 1, 5, ''),
(53, 16, 10, 'ven121@gmail.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:24', '2019-01-25 14:07:36', 1, 5, ''),
(54, 16, 10, 'ven221@gmail.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:24', '2019-01-25 14:07:36', 1, 5, ''),
(55, 16, 10, 'ven66@gmail.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:24', '2019-01-25 14:07:36', 1, 5, ''),
(56, 16, 10, 'ven371@yahoo.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:25', '2019-01-25 14:07:36', 1, 5, ''),
(57, 16, 10, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'fffffyhyh', 'vggghghfg', '2019-03-15', '2019-03-01', '2019-02-13', 7, 0, '556', '6610', '1', 'Closed Bid', '2', 16, '2019-01-24-yKs5D', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 12:21:25', '2019-01-25 14:07:36', 1, 5, ''),
(58, 18, 11, 'vender@ilab.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(59, 18, 11, 'ven111@gmail.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(60, 18, 11, 'ven121@gmail.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(61, 18, 11, 'ven221@gmail.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(62, 18, 11, 'ven170@yahoo.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(63, 18, 11, 'ven454@yahoo.com', 1, NULL, NULL, '0', 'cfgfg', 'vgfgrfff', '2019-04-12', '2019-01-10', '2019-06-11', 8, 0, '656', '7721', '1', 'Closed Bid', '2', 18, '2019-01-24-WEKwX', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-24 13:22:29', '2019-01-25 13:41:02', 1, 5, ''),
(64, 25, 12, 'vender@ilab.com', 1, NULL, NULL, '0', 'xxxfgdf', 'fgdfd', '2019-05-06', '2019-06-08', '2018-08-31', 9, 0, '0011', '22333', '1', 'Closed Bid', '2', 25, '2019-01-25-fYx3a', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-25 13:40:37', '2019-01-25 13:41:16', 1, 5, ''),
(65, 25, 12, 'ven111@gmail.com', 1, NULL, NULL, '0', 'xxxfgdf', 'fgdfd', '2019-05-06', '2019-06-08', '2018-08-31', 9, 0, '0011', '22333', '1', 'Closed Bid', '2', 25, '2019-01-25-fYx3a', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-25 13:40:37', '2019-01-25 13:41:16', 1, 5, ''),
(66, 25, 12, 'ven121@gmail.com', 1, NULL, NULL, '0', 'xxxfgdf', 'fgdfd', '2019-05-06', '2019-06-08', '2018-08-31', 9, 0, '0011', '22333', '1', 'Closed Bid', '2', 25, '2019-01-25-fYx3a', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-25 13:40:37', '2019-01-25 13:41:16', 1, 5, ''),
(67, 25, 12, 'ven221@gmail.com', 1, NULL, NULL, '0', 'xxxfgdf', 'fgdfd', '2019-05-06', '2019-06-08', '2018-08-31', 9, 0, '0011', '22333', '1', 'Closed Bid', '2', 25, '2019-01-25-fYx3a', '0770', 1, 'standard catalogued item [ sci tech ]', '2019-01-25 13:40:37', '2019-01-25 13:41:16', 1, 5, ''),
(68, 27, 13, 'ven111@gmail.com', 1, NULL, NULL, '0', 'ttxx', 'xxxx', '2019-02-07', '2019-01-09', '2019-02-14', 10, 0, '55666', '667700', '3', 'Closed Bid', '2', 27, '2019-01-25-KJzVd', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:00:41', '2019-01-25 14:01:03', 1, 5, ''),
(69, 27, 13, 'ven121@gmail.com', 1, NULL, NULL, '0', 'ttxx', 'xxxx', '2019-02-07', '2019-01-09', '2019-02-14', 10, 0, '55666', '667700', '3', 'Closed Bid', '2', 27, '2019-01-25-KJzVd', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:00:41', '2019-01-25 14:01:03', 1, 5, ''),
(70, 27, 13, 'ven221@gmail.com', 1, NULL, NULL, '0', 'ttxx', 'xxxx', '2019-02-07', '2019-01-09', '2019-02-14', 10, 0, '55666', '667700', '3', 'Closed Bid', '2', 27, '2019-01-25-KJzVd', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:00:41', '2019-01-25 14:01:03', 1, 5, ''),
(71, 27, 13, 'ven001@gmail.com', 1, NULL, NULL, '0', 'ttxx', 'xxxx', '2019-02-07', '2019-01-09', '2019-02-14', 10, 0, '55666', '667700', '3', 'Closed Bid', '2', 27, '2019-01-25-KJzVd', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:00:41', '2019-01-25 14:01:03', 1, 5, ''),
(72, 26, 14, 'ven111@gmail.com', 1, NULL, NULL, '0', 'ffgfg', 'bkkjuhj', '2019-03-08', '2019-07-15', '2019-05-10', 11, 0, '11001', '33220', '3', 'Closed Bid', '2', 26, '2019-01-25-2Iyod', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:06:59', '2019-01-25 14:07:18', 1, 5, ''),
(73, 26, 14, 'ven121@gmail.com', 1, NULL, '1', '1', 'ffgfg', 'bkkjuhj', '2019-03-08', '2019-07-15', '2019-05-10', 11, 0, '11001', '33220', '3', 'Closed Bid', '2', 26, '2019-01-25-2Iyod', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:06:59', '2019-01-25 14:28:28', 1, 7, ''),
(74, 26, 14, 'ven221@gmail.com', 1, NULL, NULL, '0', 'ffgfg', 'bkkjuhj', '2019-03-08', '2019-07-15', '2019-05-10', 11, 0, '11001', '33220', '3', 'Closed Bid', '2', 26, '2019-01-25-2Iyod', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:06:59', '2019-01-25 14:07:18', 1, 5, ''),
(75, 26, 14, 'ven001@gmail.com', 1, NULL, NULL, '0', 'ffgfg', 'bkkjuhj', '2019-03-08', '2019-07-15', '2019-05-10', 11, 0, '11001', '33220', '3', 'Closed Bid', '2', 26, '2019-01-25-2Iyod', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:06:59', '2019-01-25 14:07:18', 1, 5, ''),
(76, 29, 16, 'ven111@gmail.com', 1, NULL, NULL, '0', 'dssd', 'eddc', '2019-02-07', '2019-07-17', '2019-03-08', 12, 0, '123', '321', '3', 'Closed Bid', '2', 29, '2019-01-25-qObQV', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:17:18', '2019-01-25 14:17:35', 1, 5, ''),
(77, 29, 16, 'ven121@gmail.com', 1, NULL, '1', '1', 'dssd', 'eddc', '2019-02-07', '2019-07-17', '2019-03-08', 12, 0, '123', '321', '3', 'Closed Bid', '2', 29, '2019-01-25-qObQV', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:17:18', '2019-01-25 14:30:15', 1, 7, ''),
(78, 30, 17, 'ven111@gmail.com', 1, NULL, NULL, '0', 'cfgdfg', 'gdcfg', '2019-02-12', '2019-03-18', '2019-02-09', 13, 0, '121', '211', '3', 'Closed Bid', '2', 30, '2019-01-25-d6iYS', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:25:00', '2019-01-25 14:25:13', 1, 5, ''),
(79, 30, 17, 'ven121@gmail.com', 1, NULL, NULL, '0', 'cfgdfg', 'gdcfg', '2019-02-12', '2019-03-18', '2019-02-09', 13, 0, '121', '211', '3', 'Closed Bid', '2', 30, '2019-01-25-d6iYS', '0770', 1, 'logistics [ logistics ]', '2019-01-25 14:25:00', '2019-01-25 14:25:13', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_bid_vendor_file_details`
--

CREATE TABLE `Ilab_master_bid_vendor_file_details` (
  `slno_document` int(11) NOT NULL,
  `bid_sl no` int(11) NOT NULL,
  `buyer_sl no` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_idname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `vendor_slno` int(11) NOT NULL,
  `vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_buyer_material_details`
--

CREATE TABLE `Ilab_master_buyer_material_details` (
  `slno_mat` int(11) NOT NULL,
  `slno_mr_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_uom` varchar(255) NOT NULL,
  `tech_name` text NOT NULL,
  `item_qnt` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_buyer_material_details`
--

INSERT INTO `Ilab_master_buyer_material_details` (`slno_mat`, `slno_mr_id`, `item_name`, `item_id`, `item_uom`, `tech_name`, `item_qnt`, `unit_price`, `master_bid_id`) VALUES
(1, 362, 'material item 1', 'mat001', 'nos', '[\"No Parameter Found\"]', '15', '2500', 1),
(2, 363, 'material item 17', 'mat0087', 'nos', '[\"technical 1667\"]', '25', '230', 1),
(3, 364, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '70', '405', 1),
(4, 365, 'material item 22', 'mat00910', 'nos', '[\"No Parameter Found\"]', '100', '885', 1),
(5, 370, 'material item 1', 'mat001', 'nos', '[\"No Parameter Found\"]', '10', '3434', 2),
(6, 371, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '11', '768', 2),
(7, 372, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '17', '87655', 2),
(8, 373, 'material item 22', 'mat00910', 'nos', '[\"No Parameter Found\"]', '16', '98767', 2),
(9, 374, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\"]', '10', '566565', 2),
(10, 375, 'material item 1', 'mat001', 'nos', '[\"No Parameter is been Selected\"]', '1', '89878', 3),
(11, 382, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '7897', 4),
(12, 383, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '89890', 4),
(13, 384, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '98088', 4),
(14, 385, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '896767', 4),
(15, 386, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '679', 5),
(16, 387, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '878', 5),
(17, 388, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '880', 5),
(18, 389, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '550', 5),
(19, 394, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '600', 6),
(20, 395, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '770', 6),
(21, 396, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '880', 6),
(22, 397, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '566', 6),
(23, 398, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '555', 7),
(24, 399, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '220', 7),
(25, 400, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '660', 7),
(26, 401, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '223', 7),
(27, 406, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '212', 8),
(28, 407, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '6788', 8),
(29, 408, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '7866', 8),
(30, 409, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '898', 8),
(31, 432, 'material item 1', 'mat001', 'nos', '[\"tech34311\"]', '1', '676', 9),
(32, 433, 'material item 17', 'mat0087', 'nos', '[\"technical 1\",\"technical 1667\"]', '1', '9898', 9),
(33, 434, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '454', 9),
(34, 435, 'material10', '10', '21', '[\"tec10\",\"67tyu\",\"BNTRY\",\"tech454\"]', '1', '2323', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_buyer_MR`
--

CREATE TABLE `Ilab_master_buyer_MR` (
  `Slno_buyer` int(11) NOT NULL,
  `Mr_id` varchar(255) NOT NULL,
  `Slno_mr_id` int(11) NOT NULL,
  `Job_code` varchar(255) NOT NULL,
  `Slno_procurement_id` int(11) NOT NULL,
  `Buyer_id` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Technical_type` varchar(255) NOT NULL,
  `Edit_id` int(11) NOT NULL,
  `Technical_process_status` int(11) NOT NULL DEFAULT '0',
  `Commercial_process_status` int(11) NOT NULL DEFAULT '0',
  `Date_technical_status` date DEFAULT NULL,
  `Date_commercial__status` date DEFAULT NULL,
  `Mode_tender` varchar(255) NOT NULL DEFAULT '0',
  `date_receive` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `procurement_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_buyer_MR`
--

INSERT INTO `Ilab_master_buyer_MR` (`Slno_buyer`, `Mr_id`, `Slno_mr_id`, `Job_code`, `Slno_procurement_id`, `Buyer_id`, `Status`, `Technical_type`, `Edit_id`, `Technical_process_status`, `Commercial_process_status`, `Date_technical_status`, `Date_commercial__status`, `Mode_tender`, `date_receive`, `procurement_id`) VALUES
(1, '2019-01-03-LTCBA', 1, '0770', 1, 'buy1@ilab.com', 1, '1', 3, 2, 0, '2019-01-03', NULL, 'Simple Bid', '2019-01-03 14:00:09', 'pro@ilab.com'),
(2, '2019-01-08-TaYy1', 2, '0770', 2, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-08', 'Closed Bid', '2019-01-08 11:35:54', 'pro@ilab.com'),
(3, '2019-01-16-J0Y9p', 3, '0770', 3, 'buy1@ilab.com', 1, '1', 1, 2, 0, '2019-01-24', NULL, 'Closed Bid', '2019-01-23 14:06:45', 'pro@ilab.com'),
(4, '2019-01-16-1A8EB', 4, '0770', 4, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-23', 'Closed Bid', '2019-01-23 14:07:08', 'pro@ilab.com'),
(5, '2019-01-19-yXgV7', 5, '0770', 5, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-23 14:08:35', 'pro@ilab.com'),
(6, '2019-01-21-bBsyq', 7, '0770', 6, 'buy1@ilab.com', 1, '1', 1, 2, 0, '2019-01-24', NULL, 'Closed Bid', '2019-01-24 07:23:29', 'pro@ilab.com'),
(7, '2019-01-24-RXfS5', 12, '0770', 7, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-24 07:44:13', 'pro@ilab.com'),
(8, '2019-01-24-ugDE7', 13, '0770', 8, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-24 07:45:27', 'pro@ilab.com'),
(9, '2019-01-24-crXIv', 15, '0770', 9, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-24 10:42:14', 'pro@ilab.com'),
(10, '2019-01-24-yKs5D', 16, '0770', 10, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-24 12:00:51', 'pro@ilab.com'),
(11, '2019-01-24-WEKwX', 18, '0770', 11, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-24', 'Closed Bid', '2019-01-24 12:01:04', 'pro@ilab.com'),
(12, '2019-01-25-fYx3a', 25, '0770', 13, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-25', 'Closed Bid', '2019-01-25 13:23:01', 'pro@ilab.com'),
(13, '2019-01-25-KJzVd', 27, '0770', 14, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-25', 'Closed Bid', '2019-01-25 13:52:26', 'pro@ilab.com'),
(14, '2019-01-25-2Iyod', 26, '0770', 16, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-25', 'Closed Bid', '2019-01-25 13:52:39', 'pro@ilab.com'),
(15, '2019-01-25-PO9J7', 28, '0770', 15, 'buy1@ilab.com', 1, '2', 1, 0, 0, NULL, NULL, '0', '2019-01-25 13:52:53', 'pro@ilab.com'),
(16, '2019-01-25-qObQV', 29, '0770', 17, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-25', 'Closed Bid', '2019-01-25 14:12:33', 'pro@ilab.com'),
(17, '2019-01-25-d6iYS', 30, '0770', 18, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2019-01-25', 'Closed Bid', '2019-01-25 14:22:02', 'pro@ilab.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_category`
--

CREATE TABLE `Ilab_master_category` (
  `Slno_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_category`
--

INSERT INTO `Ilab_master_category` (`Slno_cat`, `category_name`, `category_id`, `category_desc`, `short_code`, `status`, `date_entry`, `time_entry`) VALUES
(1, 'standard catalogued item', 'cat005', 'A cataloger is an individual responsible for the processes of description, subject analysis, classification, and authority control of library materials. Catalogers serve as the \"foundation of all library service, as they are the ones who organize information in such a way as to make it easily accessible\"', 'sci tech', 1, '2018-09-18', '13:06:40'),
(2, 'make to order items', 'cat002', 'The make to order (MTO) strategy only manufactures the end product once the customer places the order, creating additional wait time for the consumer to receive the product, but allowing for more flexible customization compared to purchasing directly from retailers\' shelves.\r\n\r\nRead more: Make To Order (MTO) https://www.investopedia.com/terms/m/make-to-order.asp#ixzz5RS3c3b1d\r\nFollow us: Investopedia on Facebook', 'moi', 1, '2018-09-18', '16:52:56'),
(3, 'logistics', 'cat003', 'Logistics is generally the detailed organization and implementation of a complex operation. In a general business sense, logistics is the management of the flow of things between the point of origin and the point of consumption in order to meet requirements of customers or corporations.', 'logistics', 1, '2018-09-18', '16:54:45'),
(4, 'cat2', 'cat111', 'xxx', 'ct1', 3, '2018-09-26', '15:06:48'),
(5, 'cat301', 'cat11174', 'xxxx', 'ct232', 2, '2019-01-18', '15:08:55'),
(6, 'cat333', 'cat555', 'xxxx', 'ct555', 3, '2019-01-18', '15:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_charges_other`
--

CREATE TABLE `Ilab_master_charges_other` (
  `Slno_other` int(11) NOT NULL,
  `Charges_name` varchar(255) NOT NULL,
  `description_charge` text,
  `charge_value` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_charges_other`
--

INSERT INTO `Ilab_master_charges_other` (`Slno_other`, `Charges_name`, `description_charge`, `charge_value`, `status`, `date_entry`, `time_entry`) VALUES
(1, 'freight Charge11', '', '', 1, '2018-09-20', '14:15:49'),
(2, 'char11', '', '', 3, '2018-09-26', '15:08:38'),
(3, 'char122311', '', '', 3, '2019-01-18', '15:37:27'),
(4, 'char1234511', '', '', 1, '2019-01-18', '15:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_closed_bid`
--

CREATE TABLE `Ilab_master_closed_bid` (
  `Slno_closed` int(11) NOT NULL,
  `Bid_master_id_comm` int(11) NOT NULL COMMENT 'master bid id',
  `Bid_ref_no` varchar(255) NOT NULL COMMENT 'ref no ',
  `vendor_id` varchar(255) NOT NULL COMMENT 'vendor email id',
  `Bid_vendor_id` varchar(255) NOT NULL COMMENT 'vendor bid serial no form vendor commerica;',
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_of_bid` varchar(255) NOT NULL COMMENT 'type of bid ->closed , open , rank order',
  `category_id` int(11) NOT NULL COMMENT 'material id -> 1 sci 2-> moi 3->logistic',
  `type_bid_id` int(11) NOT NULL COMMENT '1->open 2-> closed 3->rank order bid',
  `comment` text,
  `comment_by` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `resubmission` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_closed_bid`
--

INSERT INTO `Ilab_master_closed_bid` (`Slno_closed`, `Bid_master_id_comm`, `Bid_ref_no`, `vendor_id`, `Bid_vendor_id`, `date_entry`, `type_of_bid`, `category_id`, `type_bid_id`, `comment`, `comment_by`, `comment_date`, `resubmission`) VALUES
(1, 1, 'jd	', 'ven121@gmail.com', '3', '2019-01-08 12:10:18', 'Closed Bid', 1, 2, NULL, NULL, NULL, 0),
(2, 1, 'jd	', 'vender@ilab.com', '1', '2019-01-08 12:23:15', 'Closed Bid', 1, 2, NULL, NULL, NULL, 0),
(3, 1, 'jd	', 'ven121@gmail.com', '3', '2019-01-23 13:07:58', 'Closed Bid', 1, 2, NULL, NULL, NULL, 0),
(4, 1, 'jd	', 'ven111@gmail.com', '2', '2019-01-23 13:14:43', 'Closed Bid', 1, 2, NULL, NULL, NULL, 0),
(5, 1, 'jd	', 'ven111@gmail.com', '2', '2019-01-23 13:18:45', 'Closed Bid', 1, 2, NULL, NULL, NULL, 0),
(6, 11, '11001	', 'ven121@gmail.com', '73', '2019-01-25 14:28:27', 'Closed Bid', 3, 2, NULL, NULL, NULL, 0),
(7, 12, '123	', 'ven121@gmail.com', '77', '2019-01-25 14:30:14', 'Closed Bid', 3, 2, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_closed_bid_item`
--

CREATE TABLE `Ilab_master_closed_bid_item` (
  `Slno_closed_item` int(11) NOT NULL,
  `closed_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) DEFAULT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here closed bid information send by vendor ';

--
-- Dumping data for table `Ilab_master_closed_bid_item`
--

INSERT INTO `Ilab_master_closed_bid_item` (`Slno_closed_item`, `closed_id_slno`, `Bid_master_id_com`, `Item_name`, `Quantity`, `Uom_unit`, `Unit_price`, `Total_unitprice`, `date_entry`, `comm_item_slno`, `Mr_item_slno`, `Item_id`, `Bid_slno`, `Vendor_id`) VALUES
(1, 1, 1, 'material item 1', '15', 'nos', '2356', '35340.00', '2019-01-08 12:10:18', '1', NULL, 'mat001', '3', 'ven121@gmail.com'),
(2, 1, 1, 'material item 17', '25', 'nos', '700', '17500.00', '2019-01-08 12:10:18', '2', NULL, 'mat0087', '3', 'ven121@gmail.com'),
(3, 1, 1, 'material item 19', '70', 'nos', '800', '56000.00', '2019-01-18 06:20:07', '3', NULL, 'mat0018', '3', 'ven121@gmail.com'),
(4, 1, 1, 'material item 22', '100', 'nos', '2300', '230000.00', '2019-01-08 12:10:18', '4', NULL, 'mat00910', '3', 'ven121@gmail.com'),
(5, 2, 1, 'material item 1', '15', 'nos', '2840', '42600.00', '2019-01-08 12:23:15', '1', NULL, 'mat001', '1', 'vender@ilab.com'),
(6, 2, 1, 'material item 17', '25', 'nos', '1236', '30900.00', '2019-01-08 12:23:15', '2', NULL, 'mat0087', '1', 'vender@ilab.com'),
(7, 2, 1, 'material item 19', '70', 'nos', '410', '28700.00', '2019-01-08 12:23:15', '3', NULL, 'mat0018', '1', 'vender@ilab.com'),
(8, 2, 1, 'material item 22', '100', 'nos', '160', '16000.00', '2019-01-08 12:23:16', '4', NULL, 'mat00910', '1', 'vender@ilab.com'),
(9, 3, 1, 'material item 1', '15', 'nos', '2346', '35190.00', '2019-01-23 13:07:58', '1', NULL, 'mat001', '3', 'ven121@gmail.com'),
(10, 3, 1, 'material item 17', '25', 'nos', '650', '16250.00', '2019-01-23 13:07:58', '2', NULL, 'mat0087', '3', 'ven121@gmail.com'),
(11, 3, 1, 'material item 19', '70', 'nos', '750', '52500.00', '2019-01-23 13:07:58', '3', NULL, 'mat0018', '3', 'ven121@gmail.com'),
(12, 3, 1, 'material item 22', '100', 'nos', '100', '10000.00', '2019-01-23 13:07:58', '4', NULL, 'mat00910', '3', 'ven121@gmail.com'),
(13, 4, 1, 'material item 1', '15', 'nos', '44678', '670170.00', '2019-01-23 13:14:43', '1', NULL, 'mat001', '2', 'ven111@gmail.com'),
(14, 4, 1, 'material item 17', '25', 'nos', '767676', '19191900.00', '2019-01-23 13:14:43', '2', NULL, 'mat0087', '2', 'ven111@gmail.com'),
(15, 4, 1, 'material item 19', '70', 'nos', '8877', '621390.00', '2019-01-23 13:14:43', '3', NULL, 'mat0018', '2', 'ven111@gmail.com'),
(16, 4, 1, 'material item 22', '100', 'nos', '4567', '456700.00', '2019-01-23 13:14:43', '4', NULL, 'mat00910', '2', 'ven111@gmail.com'),
(17, 5, 1, 'material item 1', '15', 'nos', '6567', '98505.00', '2019-01-23 13:18:46', '1', NULL, 'mat001', '2', 'ven111@gmail.com'),
(18, 5, 1, 'material item 17', '25', 'nos', '99898', '2497450.00', '2019-01-23 13:18:46', '2', NULL, 'mat0087', '2', 'ven111@gmail.com'),
(19, 5, 1, 'material item 19', '70', 'nos', '787000', '55090000.00', '2019-01-23 13:18:46', '3', NULL, 'mat0018', '2', 'ven111@gmail.com'),
(20, 5, 1, 'material item 22', '100', 'nos', '66767', '6676700.00', '2019-01-23 13:18:46', '4', NULL, 'mat00910', '2', 'ven111@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_closed_bid_item_misc`
--

CREATE TABLE `Ilab_master_closed_bid_item_misc` (
  `Slno_closed_misc` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `closed_id_slno_misc` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_value` text,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_closed_bid_item_misc`
--

INSERT INTO `Ilab_master_closed_bid_item_misc` (`Slno_closed_misc`, `master_bid_id_com`, `closed_id_slno_misc`, `field_name`, `field_value`, `date_entry`, `Bid_slno`, `Vendor_id`) VALUES
(1, 1, 1, 'delivery basis', 'net', '2019-01-08 12:10:18', '3', 'ven121@gmail.com'),
(2, 1, 1, 'gaurantee warranty', 'ty', '2019-01-08 12:10:18', '3', 'ven121@gmail.com'),
(3, 1, 1, 'delivery schedule', 'uu', '2019-01-08 12:10:18', '3', 'ven121@gmail.com'),
(4, 1, 1, 'payment terms', 'ps', '2019-01-08 12:10:18', '3', 'ven121@gmail.com'),
(5, 1, 1, 'validity of offer', 'ee', '2019-01-08 12:10:18', '3', 'ven121@gmail.com'),
(6, 1, 1, 'security BG', '55', '2019-01-08 12:10:19', '3', 'ven121@gmail.com'),
(7, 1, 1, 'liquidity damage', '222', '2019-01-08 12:10:19', '3', 'ven121@gmail.com'),
(8, 1, 1, 'remarks', 'sss', '2019-01-08 12:10:19', '3', 'ven121@gmail.com'),
(9, 1, 2, 'delivery basis', 'bb', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(10, 1, 2, 'gaurantee warranty', 'ee', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(11, 1, 2, 'delivery schedule', 'rrt', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(12, 1, 2, 'payment terms', 'eww', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(13, 1, 2, 'validity of offer', 'rtt', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(14, 1, 2, 'security BG', 'tt', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(15, 1, 2, 'liquidity damage', 'yyy', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(16, 1, 2, 'remarks', 'weww fw wq   wv f qff q e wa  q    eer ee er er', '2019-01-08 12:23:16', '1', 'vender@ilab.com'),
(17, 1, 3, 'delivery basis', 'aa', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(18, 1, 3, 'gaurantee warranty', 'ss', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(19, 1, 3, 'delivery schedule', 'xx', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(20, 1, 3, 'payment terms', 'cc', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(21, 1, 3, 'validity of offer', 'dd', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(22, 1, 3, 'security BG', 'dd', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(23, 1, 3, 'liquidity damage', 'dd', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(24, 1, 3, 'remarks', 'sss', '2019-01-23 13:07:58', '3', 'ven121@gmail.com'),
(25, 1, 4, 'delivery basis', 'fgfd', '2019-01-23 13:14:43', '2', 'ven111@gmail.com'),
(26, 1, 4, 'gaurantee warranty', 'ghghg', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(27, 1, 4, 'delivery schedule', 'jnnn', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(28, 1, 4, 'payment terms', 'kjjnmn', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(29, 1, 4, 'validity of offer', 'kjhjj', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(30, 1, 4, 'security BG', 'lkkkk', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(31, 1, 4, 'liquidity damage', 'jkjhjk', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(32, 1, 4, 'remarks', 'jkjkkjkj', '2019-01-23 13:14:44', '2', 'ven111@gmail.com'),
(33, 1, 5, 'delivery basis', 'rftgfd', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(34, 1, 5, 'gaurantee warranty', 'cfhbg', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(35, 1, 5, 'delivery schedule', 'mbk', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(36, 1, 5, 'payment terms', 'hgh', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(37, 1, 5, 'validity of offer', 'fg', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(38, 1, 5, 'security BG', 'gffffffffffn', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(39, 1, 5, 'liquidity damage', 'rdhjjoi', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(40, 1, 5, 'remarks', 'swwwwwwwwwwwww', '2019-01-23 13:18:46', '2', 'ven111@gmail.com'),
(41, 11, 6, 'delivery basis', 'sddsd', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(42, 11, 6, 'gaurantee warranty', 'fdfd', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(43, 11, 6, 'delivery schedule', 'fdffd', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(44, 11, 6, 'payment terms', 'fff', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(45, 11, 6, 'validity of offer', 'ffgg', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(46, 11, 6, 'security BG', 'fff', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(47, 11, 6, 'liquidity damage', 'erre', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(48, 11, 6, 'remarks', 'gggf', '2019-01-25 14:28:28', '73', 'ven121@gmail.com'),
(49, 12, 7, 'delivery basis', 'yfgt', '2019-01-25 14:30:14', '77', 'ven121@gmail.com'),
(50, 12, 7, 'gaurantee warranty', 'hgg', '2019-01-25 14:30:14', '77', 'ven121@gmail.com'),
(51, 12, 7, 'delivery schedule', 'gyg', '2019-01-25 14:30:14', '77', 'ven121@gmail.com'),
(52, 12, 7, 'payment terms', 'jhgh', '2019-01-25 14:30:14', '77', 'ven121@gmail.com'),
(53, 12, 7, 'validity of offer', 'fgf', '2019-01-25 14:30:14', '77', 'ven121@gmail.com'),
(54, 12, 7, 'security BG', 'hgre', '2019-01-25 14:30:15', '77', 'ven121@gmail.com'),
(55, 12, 7, 'liquidity damage', 'jhjjh', '2019-01-25 14:30:15', '77', 'ven121@gmail.com'),
(56, 12, 7, 'remarks', 'fgv', '2019-01-25 14:30:15', '77', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_closed_bid_item_total`
--

CREATE TABLE `Ilab_master_closed_bid_item_total` (
  `Slno_closed_item_total` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL COMMENT 'master bid id',
  `closed_id_slno_total` int(11) NOT NULL COMMENT 'close bid submission insertid',
  `sub_total` varchar(255) NOT NULL COMMENT 'sub total of vechile price',
  `total_tax` varchar(255) NOT NULL COMMENT 'total price of tax',
  `total_price` varchar(255) NOT NULL COMMENT 'total price of tax+sub toal',
  `user_assumption_charge` varchar(255) NOT NULL COMMENT 'assumation pice',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_rate` varchar(255) DEFAULT NULL COMMENT 'not rquired right now',
  `currency_name` varchar(255) DEFAULT NULL COMMENT 'not reuired right now',
  `vendor_Bid_slno` varchar(255) NOT NULL COMMENT 'vendor_slno',
  `Vendor_id` varchar(255) NOT NULL COMMENT 'vendor_id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_closed_bid_item_total`
--

INSERT INTO `Ilab_master_closed_bid_item_total` (`Slno_closed_item_total`, `master_bid_id_com`, `closed_id_slno_total`, `sub_total`, `total_tax`, `total_price`, `user_assumption_charge`, `date`, `currency_rate`, `currency_name`, `vendor_Bid_slno`, `Vendor_id`) VALUES
(1, 1, 1, '338840.00', '78', '338918.00', '0.00', '2019-01-08 12:10:19', NULL, NULL, '3', 'ven121@gmail.com'),
(2, 1, 2, '118200.00', '0.00', '118200.00', '0.00', '2019-01-08 12:23:16', NULL, NULL, '1', 'vender@ilab.com'),
(3, 1, 3, '113940.00', '50', '113990.00', '0.00', '2019-01-23 13:07:58', NULL, NULL, '3', 'ven121@gmail.com'),
(4, 1, 4, '20940160.00', '0.00', '20940160.00', '0.00', '2019-01-23 13:14:44', NULL, NULL, '2', 'ven111@gmail.com'),
(5, 1, 5, '64362655.00', '0.00', '64362655.00', '0.00', '2019-01-23 13:18:46', NULL, NULL, '2', 'ven111@gmail.com'),
(6, 11, 6, '8350.00', '0.00', '8350.00', '0.00', '2019-01-25 14:28:28', NULL, NULL, '73', 'ven121@gmail.com'),
(7, 12, 7, '4342.00', '0.00', '4342.00', '0.00', '2019-01-25 14:30:15', NULL, NULL, '77', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_closed_bid_logistics`
--

CREATE TABLE `Ilab_master_closed_bid_logistics` (
  `Slno_closed_item` int(11) NOT NULL,
  `closed_id_slno` int(11) NOT NULL COMMENT 'insert id from cloed bid for vendeor table ',
  `bid_master_id_com` int(11) NOT NULL COMMENT 'master_bid_id',
  `vehicle_type` varchar(255) NOT NULL COMMENT 'information of vechile',
  `capacity` varchar(255) NOT NULL COMMENT 'capactiy for vechile',
  `detail` varchar(255) DEFAULT NULL COMMENT 'not reqired inthis',
  `no` varchar(255) NOT NULL COMMENT 'no vechile reqired',
  `from_location` varchar(255) NOT NULL COMMENT 'from location which will work on',
  `to_location` varchar(255) NOT NULL COMMENT 'to loaction which will work on',
  `unit_price` varchar(255) NOT NULL COMMENT 'unit price of  vechiel',
  `total_unit_price` varchar(255) NOT NULL COMMENT 'total price for vechicle',
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'entry date',
  `comm_item_slno` varchar(255) NOT NULL COMMENT 'commerical item serial no',
  `mr_item_slno` varchar(255) DEFAULT NULL COMMENT 'bid _mr Id for logistics',
  `vendor_bid_slno` varchar(255) NOT NULL COMMENT 'vendor who is applying from his serial no of commerical',
  `vendor_id` varchar(255) NOT NULL COMMENT 'vendor email_id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_closed_bid_logistics`
--

INSERT INTO `Ilab_master_closed_bid_logistics` (`Slno_closed_item`, `closed_id_slno`, `bid_master_id_com`, `vehicle_type`, `capacity`, `detail`, `no`, `from_location`, `to_location`, `unit_price`, `total_unit_price`, `date_entry`, `comm_item_slno`, `mr_item_slno`, `vendor_bid_slno`, `vendor_id`) VALUES
(1, 6, 11, 'vehicle10', '5ponds', '2345', '1', 'irc', 'irc', '67', '67.00', '2019-01-25 14:28:27', '7', NULL, '73', 'ven121@gmail.com'),
(2, 6, 11, 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', '232', '232.00', '2019-01-25 14:28:27', '8', NULL, '73', 'ven121@gmail.com'),
(3, 6, 11, 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', '4343', '4343.00', '2019-01-25 14:28:27', '9', NULL, '73', 'ven121@gmail.com'),
(4, 6, 11, 'vehicle10', '5ponds', '2345', '1', 'irc', 'irc', '22', '22.00', '2019-01-25 14:28:27', '10', NULL, '73', 'ven121@gmail.com'),
(5, 6, 11, 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', '343', '343.00', '2019-01-25 14:28:28', '11', NULL, '73', 'ven121@gmail.com'),
(6, 6, 11, 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', '3343', '3343.00', '2019-01-25 14:28:28', '12', NULL, '73', 'ven121@gmail.com'),
(7, 7, 12, 'vehicle10', '5ponds', '2345', '1', 'nayapali', 'nayapali', '2221', '2221.00', '2019-01-25 14:30:14', '13', NULL, '77', 'ven121@gmail.com'),
(8, 7, 12, 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', '2121', '2121.00', '2019-01-25 14:30:14', '14', NULL, '77', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_commercial_notifications`
--

CREATE TABLE `Ilab_master_commercial_notifications` (
  `slno_notification` int(11) NOT NULL,
  `master_bid_id` varchar(255) NOT NULL,
  `messsage` text NOT NULL,
  `vendor_send_id` text NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_submission_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_commercial_notifications`
--

INSERT INTO `Ilab_master_commercial_notifications` (`slno_notification`, `master_bid_id`, `messsage`, `vendor_send_id`, `date_entry`, `end_submission_date`) VALUES
(1, '1', 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for. ', '[\"vender@ilab.com\",\"ven121@gmail.com\"]', '2019-01-23 13:03:47', '01/26/2019 5:47 PM'),
(2, '1', 'same name in the Pacific Ocean. Kusche also argued that a large percentage of the incidents that sparked allegations of the Triangle\'s mysterious influence actually occurred well outside it. Often his research was simple: he would review period newspapers of the dates of reported incidents and find reports on possibly relevant events like unusual weather, that were never mentioned in the disappearance stories. ', '[\"ven111@gmail.com\"]', '2019-01-23 13:15:59', '01/26/2019 6:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_createuser`
--

CREATE TABLE `Ilab_master_createuser` (
  `Create_Slno` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL COMMENT 'loginid',
  `user_Designation` varchar(255) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `User_Role` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL COMMENT 'Encryptedpassword',
  `password_hash` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL COMMENT '1-Active,2-Inactive,3-Delete',
  `Date_Entry` date NOT NULL,
  `Time_Entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_createuser`
--

INSERT INTO `Ilab_master_createuser` (`Create_Slno`, `Email`, `user_Designation`, `Name`, `User_Role`, `Password`, `password_hash`, `Mobile`, `Status`, `Date_Entry`, `Time_Entry`) VALUES
(1, 'design@ilab.com', 'Design User', 'Design User 1', '1', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '', 1, '2018-08-16', '12:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_final_closed_bid_item`
--

CREATE TABLE `Ilab_master_final_closed_bid_item` (
  `Slno_closed_item` int(11) NOT NULL,
  `closed_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) DEFAULT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `commerical_entry_name` varchar(255) NOT NULL,
  `date_time_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Slno_closed_item_m` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here commerial community  closed bid information save vendor who is selected to procurement';

--
-- Dumping data for table `Ilab_master_final_closed_bid_item`
--

INSERT INTO `Ilab_master_final_closed_bid_item` (`Slno_closed_item`, `closed_id_slno`, `Bid_master_id_com`, `Item_name`, `Quantity`, `Uom_unit`, `Unit_price`, `Total_unitprice`, `date_entry`, `comm_item_slno`, `Mr_item_slno`, `Item_id`, `Bid_slno`, `Vendor_id`, `commerical_entry_name`, `date_time_entry`, `Slno_closed_item_m`) VALUES
(1, 3, 1, 'material item 1', '15', 'nos', '2346', '35190.00', '2019-01-23 13:07:58', '1', NULL, 'mat001', '3', 'ven121@gmail.com', 'commerical@ilab.com', '2019-01-25 12:58:21', 9),
(2, 2, 1, 'material item 17', '25', 'nos', '1236', '30900.00', '2019-01-08 12:23:15', '2', NULL, 'mat0087', '1', 'vender@ilab.com', 'commerical@ilab.com', '2019-01-25 12:58:21', 6),
(3, 5, 1, 'material item 19', '70', 'nos', '787000', '55090000.00', '2019-01-23 13:18:46', '3', NULL, 'mat0018', '2', 'ven111@gmail.com', 'commerical@ilab.com', '2019-01-25 12:58:21', 19),
(4, 3, 1, 'material item 22', '100', 'nos', '100', '10000.00', '2019-01-23 13:07:58', '4', NULL, 'mat00910', '3', 'ven121@gmail.com', 'commerical@ilab.com', '2019-01-25 12:58:21', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_final_simple_bid_item`
--

CREATE TABLE `Ilab_master_final_simple_bid_item` (
  `Slno_simple_item` int(11) NOT NULL,
  `Simple_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) NOT NULL,
  `bid_slno` varchar(255) NOT NULL,
  `Vendor_id` text NOT NULL,
  `commerical_entry_name` varchar(255) NOT NULL,
  `Slno_simple_item_m` int(11) NOT NULL,
  `date_entries` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_items_material`
--

CREATE TABLE `Ilab_master_items_material` (
  `Slno_item` int(11) NOT NULL,
  `Category_slno` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_detail` text NOT NULL,
  `item_uom` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_items_material`
--

INSERT INTO `Ilab_master_items_material` (`Slno_item`, `Category_slno`, `item_name`, `item_id`, `item_detail`, `item_uom`, `status`, `date_entry`, `time_entry`, `category_id`, `category_name`) VALUES
(1, '3', 'material2f', '101', 'xxx', '240', 1, '2018-09-24', '16:32:43', '', 'logistics'),
(2, '1', 'material item 1', 'mat001', 'about testing material present', 'nos', 1, '2018-09-21', '15:46:43', 'cat001', 'standard catalogued item'),
(3, '2', 'Pump', 'Mat001', 'Submersible Pump', 'Horse Power', 1, '2018-09-24', '15:55:07', 'cat002', 'make to order items'),
(4, '2', 'Rotary lobe pump', 'Mat002', 'Pump complete with drive motor, reduction gear system, clutch and base plate\r\n Housing material AISI-316 or AISI 420, rotary piston and shaft seals made of NBR, EPDM or FKM\r\n  Constant i.e. non-pulsing feed rates\r\n  Valveless construction enables reversed pump direction\r\n  Different versions of power end/drive via three-phase   motor (On/Off mode, adjustable motor with integrated frequency converter or external fan)\r\n Connection to bus system is possible (integrated frequency converter needed)\r\n Hydraulic connection as standard by means of DIN flange (DN 50, 65, 80, 100, 125), other connectors available\r\n Simple replacement of wear discs thanks to   maintenance-friendly construction', 'Max Pump volume', 1, '2018-09-24', '16:03:37', 'cat002', 'make to order items'),
(5, '2', 'Progressing cavity pump.', 'Mat003', 'A progressive cavity pump is a type of positive displacement pump and is also known as a progressing cavity pump, progg cavity pump, eccentric screw pump or cavity pump. It transfers fluid by means of the progress, through the pump, of a sequence of small, fixed shape, discrete cavities, as its rotor is turned. This leads to the volumetric flow rate being proportional to the rotation rate (bidirectionally) and to low levels of shearing being applied to the pumped fluid.', 'Capacity', 1, '2018-09-24', '16:10:38', 'cat002', 'make to order items'),
(6, '1', 'material10', '10', 'xyz', '21', 1, '2018-09-26', '15:10:33', 'cat005', 'standard catalogued item'),
(7, '1', 'material item 17', 'mat0087', 'oops execute a block of code a specified number of times.', 'nos', 1, '2018-10-15', '17:41:19', 'cat005', 'standard catalogued item'),
(8, '1', 'material item 19', 'mat0018', 'nitialize the loop counter value', 'nos', 1, '2018-10-15', '17:41:55', 'cat005', 'standard catalogued item'),
(9, '2', 'material item 22', 'mat00910', 'Evaluated for each loop iteration. If it evaluates to TRUE, the loop continues. If it evaluates to FALSE, the loop ends.', 'nos', 1, '2019-01-18', '16:04:41', 'cat002', 'make to order items'),
(10, '1', 'xxxx11', '132432131', 'xxxxxx', '5664', 3, '2019-01-18', '16:03:38', 'cat005', 'standard catalogued item');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_loaction_details`
--

CREATE TABLE `Ilab_master_loaction_details` (
  `slno_loc` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `loaction_details` text,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1->Active 2->inactive 3->delete',
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_loaction_details`
--

INSERT INTO `Ilab_master_loaction_details` (`slno_loc`, `location_name`, `loaction_details`, `status`, `date_entry`, `last_updated`) VALUES
(1, 'bhu1', NULL, 2, '2018-10-20 12:00:26', '2019-01-18 13:30:27'),
(2, 'bhu', NULL, 3, '2018-10-22 07:39:58', '2019-01-18 13:32:21'),
(3, 'sailahree vihar', NULL, 2, '2018-10-22 07:40:17', '2019-01-22 14:16:08'),
(4, 'irc', NULL, 1, '2018-10-22 07:40:29', '2018-10-22 07:40:29'),
(5, 'nayapali', NULL, 1, '2018-10-22 07:40:54', '2018-10-22 07:40:54'),
(6, 'location1221', NULL, 1, '2019-01-18 13:30:12', '2019-01-18 13:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_logistic_vehicle_commerical`
--

CREATE TABLE `Ilab_master_logistic_vehicle_commerical` (
  `Slno_logic_comm` int(11) NOT NULL,
  `master_bid_id_com` varchar(255) NOT NULL,
  `vehicle_mr_slno` varchar(255) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_capacity` varchar(255) NOT NULL,
  `vehicle_details` text NOT NULL,
  `vehicle_nos` varchar(255) NOT NULL,
  `from_location` varchar(255) NOT NULL,
  `to_location` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `Ace_value` varchar(255) NOT NULL,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_logistic_vehicle_commerical`
--

INSERT INTO `Ilab_master_logistic_vehicle_commerical` (`Slno_logic_comm`, `master_bid_id_com`, `vehicle_mr_slno`, `vehicle_name`, `vehicle_capacity`, `vehicle_details`, `vehicle_nos`, `from_location`, `to_location`, `purpose`, `Ace_value`, `date_update`) VALUES
(1, '10', '', 'vehicle10', '5ponds', '2345', '1', 'nayapali', 'nayapali', 'official', '663', '2019-01-25 14:00:41'),
(2, '10', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '344', '2019-01-25 14:00:41'),
(3, '10', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '676', '2019-01-25 14:00:41'),
(4, '10', '', 'vehicle10', '5ponds', '2345', '1', 'nayapali', 'nayapali', 'official', '3430', '2019-01-25 14:00:41'),
(5, '10', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '233', '2019-01-25 14:00:41'),
(6, '10', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '1223', '2019-01-25 14:00:41'),
(7, '11', '', 'vehicle10', '5ponds', '2345', '1', 'irc', 'irc', ' official', '3454', '2019-01-25 14:06:58'),
(8, '11', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '6688', '2019-01-25 14:06:59'),
(9, '11', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', ' official', '5600', '2019-01-25 14:06:59'),
(10, '11', '', 'vehicle10', '5ponds', '2345', '1', 'irc', 'irc', ' official', '6699', '2019-01-25 14:06:59'),
(11, '11', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'location1221', 'location1221', ' testing', '3432', '2019-01-25 14:06:59'),
(12, '11', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', ' official', '2211', '2019-01-25 14:06:59'),
(13, '12', '', 'vehicle10', '5ponds', '2345', '1', 'nayapali', 'nayapali', ' test', '1221', '2019-01-25 14:17:18'),
(14, '12', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', ' official', '2123', '2019-01-25 14:17:18'),
(15, '13', '', 'vehicle10', '5ponds', '2345', '1', 'irc', 'irc', ' ghgh', '434', '2019-01-25 14:25:00'),
(16, '13', '', 'vehicle10', '50s ponds', 'xxxxxx', '1', 'nayapali', 'nayapali', ' jkjui', '898', '2019-01-25 14:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_approver_order`
--

CREATE TABLE `Ilab_master_mr_approver_order` (
  `Slno_approver` int(11) NOT NULL,
  `Mr_id` varchar(255) NOT NULL,
  `Slno_mr_id` int(11) NOT NULL,
  `Job_code` varchar(255) NOT NULL,
  `Approver_id` varchar(255) NOT NULL,
  `Procurement_id` varchar(255) NOT NULL,
  `Date_approver` date NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Forward_status` int(11) NOT NULL DEFAULT '0',
  `Forward_date` date NOT NULL,
  `Material_id` varchar(255) NOT NULL,
  `Edit_id` varchar(255) NOT NULL,
  `buyer_id` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_mr_approver_order`
--

INSERT INTO `Ilab_master_mr_approver_order` (`Slno_approver`, `Mr_id`, `Slno_mr_id`, `Job_code`, `Approver_id`, `Procurement_id`, `Date_approver`, `Status`, `Forward_status`, `Forward_date`, `Material_id`, `Edit_id`, `buyer_id`, `buyer_name`) VALUES
(1, '2019-01-03-LTCBA', 1, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-03', 1, 1, '2019-01-03', '1', '3', 'buy1@ilab.com', 'buyer 1'),
(2, '2019-01-08-TaYy1', 2, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-08', 1, 1, '2019-01-08', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(3, '2019-01-16-J0Y9p', 3, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-16', 1, 1, '2019-01-23', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(4, '2019-01-16-1A8EB', 4, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-16', 1, 1, '2019-01-23', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(5, '2019-01-19-yXgV7', 5, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-19', 1, 1, '2019-01-23', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(6, '2019-01-21-bBsyq', 7, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-23', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(7, '2019-01-24-RXfS5', 12, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(8, '2019-01-24-ugDE7', 13, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(9, '2019-01-24-crXIv', 15, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(10, '2019-01-24-yKs5D', 16, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(11, '2019-01-24-WEKwX', 18, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 1, '2019-01-24', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(12, '2019-01-24-LJXYA', 17, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-24', 1, 2, '0000-00-00', '1', '1', NULL, NULL),
(13, '2019-01-25-fYx3a', 25, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(14, '2019-01-25-KJzVd', 27, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '3', '1', 'buy1@ilab.com', 'buyer 1'),
(15, '2019-01-25-PO9J7', 28, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '2', '1', 'buy1@ilab.com', 'buyer 1'),
(16, '2019-01-25-2Iyod', 26, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '3', '1', 'buy1@ilab.com', 'buyer 1'),
(17, '2019-01-25-qObQV', 29, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '3', '1', 'buy1@ilab.com', 'buyer 1'),
(18, '2019-01-25-d6iYS', 30, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2019-01-25', 1, 1, '2019-01-25', '3', '1', 'buy1@ilab.com', 'buyer 1');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_file_upload`
--

CREATE TABLE `Ilab_master_mr_file_upload` (
  `slno_file` int(11) NOT NULL,
  `mr_no_id` varchar(255) NOT NULL,
  `slno_mr_id` int(11) NOT NULL,
  `attach_name` varchar(255) NOT NULL,
  `file_name_actucal` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here mr file is uploaded';

--
-- Dumping data for table `Ilab_master_mr_file_upload`
--

INSERT INTO `Ilab_master_mr_file_upload` (`slno_file`, `mr_no_id`, `slno_mr_id`, `attach_name`, `file_name_actucal`, `date_time`) VALUES
(1, '2019-01-03-LTCBA', 1, '2019-01-03-3.png', '3.png', '2019-01-03 13:26:47'),
(2, '2019-01-03-LTCBA', 1, '2019-01-03-22w2.jpg', '22w2.jpg', '2019-01-03 13:26:59'),
(3, '2019-01-08-TaYy1', 2, '2019-01-08-3.png', '3.png', '2019-01-08 11:31:04'),
(4, '2019-01-08-TaYy1', 2, '2019-01-08-123.jpg', '123.jpg', '2019-01-08 11:31:11'),
(5, '2019-01-16-J0Y9p', 3, '2019-01-16-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-16 06:29:22'),
(6, '2019-01-16-J0Y9p', 3, '2019-01-16-undraw_programming_2svr.svg', 'undraw_programming_2svr.svg', '2019-01-16 06:29:32'),
(7, '2019-01-16-1A8EB', 4, '2019-01-16-undraw_mail_cg1t.svg', 'undraw_mail_cg1t.svg', '2019-01-16 07:33:46'),
(8, '2019-01-16-1A8EB', 4, '2019-01-16-undraw_mail_box_kd5i.svg', 'undraw_mail_box_kd5i.svg', '2019-01-16 07:34:04'),
(9, '2019-01-19-yXgV7', 5, '2019-01-19-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-19 13:48:52'),
(10, '2019-01-19-vxVbR', 6, '2019-01-19-undraw_teaching_f1cm (1).svg', 'undraw_teaching_f1cm (1).svg', '2019-01-19 13:50:19'),
(11, '2019-01-21-bBsyq', 7, '2019-01-21-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-21 09:58:52'),
(12, '2019-01-21-fypJx', 8, '2019-01-21-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-21 09:59:53'),
(13, '2019-01-21-fypJx', 8, '2019-01-21-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-21 10:00:13'),
(14, '2019-01-23-UXLZ8', 10, '2019-01-23-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-23 13:33:55'),
(15, '2019-01-23-UXLZ8', 10, '2019-01-23-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-23 13:34:21'),
(16, '2019-01-23-MDfj1', 11, '2019-01-23-undraw_secure_data_0rwp.svg', 'undraw_secure_data_0rwp.svg', '2019-01-23 13:38:05'),
(17, '2019-01-23-MDfj1', 11, '2019-01-23-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-23 13:38:23'),
(18, '2019-01-23-MDfj1', 11, '2019-01-23-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-23 13:39:48'),
(19, '2019-01-24-RXfS5', 12, '2019-01-24-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-24 06:51:52'),
(20, '2019-01-24-RXfS5', 12, '2019-01-24-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-24 06:52:17'),
(21, '2019-01-24-ugDE7', 13, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 07:10:08'),
(22, '2019-01-24-ugDE7', 13, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 07:10:17'),
(23, '2019-01-24-kANZt', 14, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 07:11:19'),
(24, '2019-01-24-kANZt', 14, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 07:11:27'),
(25, '2019-01-24-crXIv', 15, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 07:12:25'),
(26, '2019-01-24-crXIv', 15, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 07:12:39'),
(27, '2019-01-24-yKs5D', 16, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 07:13:39'),
(28, '2019-01-24-yKs5D', 16, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 07:13:50'),
(29, '2019-01-24-LJXYA', 17, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 10:31:34'),
(30, '2019-01-24-LJXYA', 17, '2019-01-24-undraw_teaching_f1cm (1).svg', 'undraw_teaching_f1cm (1).svg', '2019-01-24 10:31:44'),
(31, '2019-01-24-WEKwX', 18, '2019-01-24-undraw_team_ih79.svg', 'undraw_team_ih79.svg', '2019-01-24 10:33:00'),
(32, '2019-01-24-WEKwX', 18, '2019-01-24-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-24 10:33:25'),
(33, '2019-01-24-GoI7j', 19, '2019-01-24-undraw_mail_box_kd5i.svg', 'undraw_mail_box_kd5i.svg', '2019-01-24 10:34:15'),
(34, '2019-01-24-GoI7j', 19, '2019-01-24-undraw_charts_jj6t.svg', 'undraw_charts_jj6t.svg', '2019-01-24 10:34:34'),
(35, '2019-01-24-9kvx4', 20, '2019-01-24-undraw_statistics_ctoq.svg', 'undraw_statistics_ctoq.svg', '2019-01-24 10:35:54'),
(36, '2019-01-24-9kvx4', 20, '2019-01-24-undraw_Building_vpxo.svg', 'undraw_Building_vpxo.svg', '2019-01-24 10:36:06'),
(37, '2019-01-24-zsAQg', 21, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 11:52:42'),
(38, '2019-01-24-zsAQg', 21, '2019-01-24-undraw_charts_jj6t.svg', 'undraw_charts_jj6t.svg', '2019-01-24 11:52:51'),
(39, '2019-01-24-n62WN', 22, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 11:54:16'),
(40, '2019-01-24-n62WN', 22, '2019-01-24-undraw_Building_vpxo.svg', 'undraw_Building_vpxo.svg', '2019-01-24 11:54:29'),
(41, '2019-01-24-f0Xpr', 23, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 11:55:26'),
(42, '2019-01-24-f0Xpr', 23, '2019-01-24-undraw_mail_box_kd5i.svg', 'undraw_mail_box_kd5i.svg', '2019-01-24 11:55:37'),
(43, '2019-01-24-u8m9H', 24, '2019-01-24-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-24 13:40:54'),
(44, '2019-01-24-u8m9H', 24, '2019-01-24-undraw_secure_data_0rwp.svg', 'undraw_secure_data_0rwp.svg', '2019-01-24 13:41:03'),
(45, '2019-01-25-fYx3a', 25, '2019-01-25-undraw_resume_1hqp.svg', 'undraw_resume_1hqp.svg', '2019-01-25 13:19:57'),
(46, '2019-01-25-fYx3a', 25, '2019-01-25-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-25 13:20:10'),
(47, '2019-01-25-2Iyod', 26, '2019-01-25-undraw_team_ih79.svg', 'undraw_team_ih79.svg', '2019-01-25 13:45:49'),
(48, '2019-01-25-2Iyod', 26, '2019-01-25-undraw_security_o890.svg', 'undraw_security_o890.svg', '2019-01-25 13:45:59'),
(49, '2019-01-25-KJzVd', 27, '2019-01-25-undraw_world_9iqb.svg', 'undraw_world_9iqb.svg', '2019-01-25 13:47:38'),
(50, '2019-01-25-KJzVd', 27, '2019-01-25-undraw_secure_data_0rwp.svg', 'undraw_secure_data_0rwp.svg', '2019-01-25 13:47:45'),
(51, '2019-01-25-PO9J7', 28, '2019-01-25-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-25 13:48:51'),
(52, '2019-01-25-PO9J7', 28, '2019-01-25-undraw_windows_q9m0.svg', 'undraw_windows_q9m0.svg', '2019-01-25 13:48:51'),
(53, '2019-01-25-qObQV', 29, '2019-01-25-undraw_team_ih79.svg', 'undraw_team_ih79.svg', '2019-01-25 14:10:12'),
(54, '2019-01-25-qObQV', 29, '2019-01-25-undraw_team_ih79.svg', 'undraw_team_ih79.svg', '2019-01-25 14:10:15'),
(55, '2019-01-25-d6iYS', 30, '2019-01-25-undraw_team_spirit_hrr4.svg', 'undraw_team_spirit_hrr4.svg', '2019-01-25 14:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_job_comments`
--

CREATE TABLE `Ilab_master_mr_job_comments` (
  `Slno_comment` int(11) NOT NULL,
  `Mr_id` varchar(255) NOT NULL,
  `Slno_mr_id` int(11) NOT NULL,
  `Edit` varchar(255) NOT NULL,
  `Resubmitted_id` varchar(255) NOT NULL,
  `Date_resubmit` date NOT NULL,
  `Creator_id_sender` varchar(255) NOT NULL,
  `Approve_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_mr_job_comments`
--

INSERT INTO `Ilab_master_mr_job_comments` (`Slno_comment`, `Mr_id`, `Slno_mr_id`, `Edit`, `Resubmitted_id`, `Date_resubmit`, `Creator_id_sender`, `Approve_id`) VALUES
(1, '2019-01-03-LTCBA', 1, '2', '1', '2019-01-03', 'design2@ilab.com', 'siprah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_job_details`
--

CREATE TABLE `Ilab_master_mr_job_details` (
  `slno_mr` int(11) NOT NULL,
  `mr_no` varchar(255) NOT NULL,
  `approver_id_slno` int(11) NOT NULL,
  `approver_id` varchar(255) NOT NULL,
  `approver_name` varchar(255) NOT NULL,
  `job_code_id_slno` int(11) NOT NULL,
  `job_code_id` varchar(255) NOT NULL,
  `materilal_category_id_slno` int(11) NOT NULL,
  `material_category_name` varchar(255) NOT NULL,
  `techinal_evalution` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1->submit 2->inactive 3->delete 4->incomplete mr 5->complete Mr  6-> Resubmit MR',
  `status_resubmit` int(11) NOT NULL DEFAULT '0',
  `resubmit_count` int(11) NOT NULL DEFAULT '0',
  `edit_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` date NOT NULL,
  `time_creation` time NOT NULL,
  `time_date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_submition` date DEFAULT NULL,
  `time_submition` time DEFAULT NULL,
  `date_required` varchar(255) NOT NULL,
  `creators_id` varchar(255) NOT NULL,
  `mr_forword_status` int(11) NOT NULL DEFAULT '0' COMMENT '1->approved 0->pending',
  `mr_forword_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='creation of mr from design user here who has creater user will able to resubmit and edit information ';

--
-- Dumping data for table `Ilab_master_mr_job_details`
--

INSERT INTO `Ilab_master_mr_job_details` (`slno_mr`, `mr_no`, `approver_id_slno`, `approver_id`, `approver_name`, `job_code_id_slno`, `job_code_id`, `materilal_category_id_slno`, `material_category_name`, `techinal_evalution`, `status`, `status_resubmit`, `resubmit_count`, `edit_id`, `date_creation`, `time_creation`, `time_date_creation`, `date_submition`, `time_submition`, `date_required`, `creators_id`, `mr_forword_status`, `mr_forword_date`) VALUES
(1, '2019-01-03-LTCBA', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 1, 0, 1, 3, '2019-01-03', '18:56:25', '2019-01-03 13:53:19', '2019-01-03', '19:21:35', '2019-01-31', 'design2@ilab.com', 1, '2019-01-03'),
(2, '2019-01-08-TaYy1', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-08', '17:00:49', '2019-01-08 11:33:20', '2019-01-08', '17:01:39', '2019-01-31', 'design2@ilab.com', 1, '2019-01-08'),
(3, '2019-01-16-J0Y9p', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2019-01-16', '11:37:35', '2019-01-16 12:49:58', '2019-01-16', '12:01:10', '2019-01-09', 'design2@ilab.com', 1, '2019-01-16'),
(4, '2019-01-16-1A8EB', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-16', '13:03:31', '2019-01-16 13:14:55', '2019-01-16', '13:08:11', '2019-01-12', 'design2@ilab.com', 1, '2019-01-16'),
(5, '2019-01-19-yXgV7', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-19', '19:18:35', '2019-01-19 14:24:56', '2019-01-19', '19:19:09', '2019-01-09', 'design2@ilab.com', 1, '2019-01-19'),
(6, '2019-01-19-vxVbR', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 1, 5, 0, 0, 1, '2019-01-19', '19:20:11', '2019-01-19 13:50:29', NULL, NULL, '2019-01-10', 'design2@ilab.com', 0, NULL),
(7, '2019-01-21-bBsyq', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2019-01-21', '15:28:18', '2019-01-23 13:52:57', '2019-01-21', '15:29:10', '2019-01-09', 'design2@ilab.com', 1, '2019-01-23'),
(8, '2019-01-21-fypJx', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 5, 0, 0, 1, '2019-01-21', '15:29:28', '2019-01-21 10:00:24', NULL, NULL, '2019-01-07', 'design2@ilab.com', 0, NULL),
(9, '2019-01-21-hdCST', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 4, 0, 0, 0, '2019-01-21', '16:08:14', '2019-01-21 10:38:14', NULL, NULL, '2019-01-07', 'design2@ilab.com', 0, NULL),
(10, '2019-01-23-UXLZ8', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 5, 0, 0, 1, '2019-01-23', '19:03:40', '2019-01-23 13:35:53', NULL, NULL, '2019-01-07', 'design2@ilab.com', 0, NULL),
(11, '2019-01-23-MDfj1', 25, 'vch33@yahoo.com', 'user901', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2019-01-23', '19:07:57', '2019-01-23 13:47:18', '2019-01-23', '19:17:18', '2019-01-09', 'design2@ilab.com', 0, NULL),
(12, '2019-01-24-RXfS5', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '12:21:29', '2019-01-24 07:18:25', '2019-01-24', '12:23:02', '2019-01-07', 'design2@ilab.com', 1, '2019-01-24'),
(13, '2019-01-24-ugDE7', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '12:40:00', '2019-01-24 07:21:12', '2019-01-24', '12:40:46', '2019-01-07', 'design2@ilab.com', 1, '2019-01-24'),
(14, '2019-01-24-kANZt', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 5, 0, 0, 1, '2019-01-24', '12:41:08', '2019-01-24 07:11:54', NULL, NULL, '2019-01-09', 'design2@ilab.com', 0, NULL),
(15, '2019-01-24-crXIv', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '12:42:16', '2019-01-24 10:39:59', '2019-01-24', '12:43:10', '2019-01-22', 'design2@ilab.com', 1, '2019-01-24'),
(16, '2019-01-24-yKs5D', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '12:43:31', '2019-01-24 10:41:14', '2019-01-24', '12:44:26', '2019-01-12', 'design2@ilab.com', 1, '2019-01-24'),
(17, '2019-01-24-LJXYA', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '16:01:17', '2019-01-24 11:58:55', '2019-01-24', '16:02:31', '2019-01-31', 'design2@ilab.com', 1, '2019-01-24'),
(18, '2019-01-24-WEKwX', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '16:02:54', '2019-01-24 11:58:05', '2019-01-24', '16:03:47', '2019-01-30', 'design2@ilab.com', 1, '2019-01-24'),
(19, '2019-01-24-GoI7j', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 5, 0, 0, 1, '2019-01-24', '16:04:05', '2019-01-24 10:35:17', NULL, NULL, '2019-02-05', 'design2@ilab.com', 0, NULL),
(20, '2019-01-24-9kvx4', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 5, 0, 0, 1, '2019-01-24', '16:05:44', '2019-01-24 10:36:38', NULL, NULL, '2019-03-07', 'design2@ilab.com', 0, NULL),
(21, '2019-01-24-zsAQg', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '17:22:31', '2019-01-24 11:53:44', '2019-01-24', '17:23:44', '2019-02-07', 'design2@ilab.com', 0, NULL),
(22, '2019-01-24-n62WN', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '17:24:09', '2019-01-24 11:54:50', '2019-01-24', '17:24:50', '2019-02-07', 'design2@ilab.com', 0, NULL),
(23, '2019-01-24-f0Xpr', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '17:25:18', '2019-01-24 11:56:08', '2019-01-24', '17:26:08', '2019-05-10', 'design2@ilab.com', 0, NULL),
(24, '2019-01-24-u8m9H', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-24', '19:10:46', '2019-01-24 13:42:08', '2019-01-24', '19:12:08', '2019-02-07', 'design2@ilab.com', 0, NULL),
(25, '2019-01-25-fYx3a', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2019-01-25', '18:49:44', '2019-01-25 13:22:10', '2019-01-25', '18:50:39', '2019-01-25', 'design2@ilab.com', 1, '2019-01-25'),
(26, '2019-01-25-2Iyod', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2019-01-25', '19:15:39', '2019-01-25 13:51:31', '2019-01-25', '19:17:01', '2019-01-25', 'design2@ilab.com', 1, '2019-01-25'),
(27, '2019-01-25-KJzVd', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2019-01-25', '19:17:26', '2019-01-25 13:50:25', '2019-01-25', '19:18:18', '2019-01-28', 'design2@ilab.com', 1, '2019-01-25'),
(28, '2019-01-25-PO9J7', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2019-01-25', '19:18:41', '2019-01-25 13:50:52', '2019-01-25', '19:19:07', '2019-01-29', 'design2@ilab.com', 1, '2019-01-25'),
(29, '2019-01-25-qObQV', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2019-01-25', '19:40:04', '2019-01-25 14:11:54', '2019-01-25', '19:40:45', '2019-01-25', 'design2@ilab.com', 1, '2019-01-25'),
(30, '2019-01-25-d6iYS', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2019-01-25', '19:49:40', '2019-01-25 14:21:16', '2019-01-25', '19:50:11', '2019-01-25', 'design2@ilab.com', 1, '2019-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_location`
--

CREATE TABLE `Ilab_master_mr_location` (
  `slno_loca_mr` int(11) NOT NULL,
  `mr_id_location` varchar(255) NOT NULL,
  `mr_slno_id` int(11) NOT NULL,
  `location_from` int(11) NOT NULL,
  `location_to` int(11) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_mr_location`
--

INSERT INTO `Ilab_master_mr_location` (`slno_loca_mr`, `mr_id_location`, `mr_slno_id`, `location_from`, `location_to`, `edit_id`, `entry_date`) VALUES
(1, '2018-12-18-vfrU9', 43, 1, 3, 1, '2018-12-18 07:29:34'),
(2, '2018-12-18-yDnir', 44, 1, 3, 1, '2018-12-18 07:38:20'),
(3, '2018-12-18-mzTpr', 45, 1, 3, 1, '2018-12-18 07:43:34'),
(4, '2018-12-18-iqhse', 46, 1, 3, 1, '2018-12-18 07:49:34'),
(5, '2018-12-18-HRMj2', 53, 2, 4, 1, '2018-12-18 08:41:59'),
(6, '2018-12-18-CHcfo', 60, 1, 3, 1, '2018-12-18 10:38:21'),
(7, '2018-12-18-Fut2x', 61, 1, 3, 1, '2018-12-18 11:00:18'),
(8, '2018-12-18-PHWeU', 62, 1, 4, 1, '2018-12-18 11:02:36'),
(9, '2018-12-18-49UrX', 63, 2, 3, 1, '2018-12-18 11:06:45'),
(10, '2018-12-18-ywp47', 64, 1, 3, 1, '2018-12-18 11:33:27'),
(11, '2018-12-18-DGZea', 65, 2, 4, 1, '2018-12-18 11:43:02'),
(12, '2018-12-18-cJzLm', 66, 1, 3, 1, '2018-12-18 11:46:59'),
(13, '2018-12-18-zMxjB', 67, 2, 3, 1, '2018-12-18 12:10:12'),
(14, '2018-12-25-gnD3C', 105, 1, 3, 1, '2018-12-25 10:03:42'),
(15, '2018-12-25-PuVeM', 106, 2, 4, 1, '2018-12-25 10:05:24'),
(16, '2018-12-27-pvZsi', 109, 1, 3, 1, '2018-12-27 14:26:47'),
(17, '2019-01-23-UXLZ8', 10, 4, 6, 1, '2019-01-23 13:35:53'),
(18, '2019-01-23-MDfj1', 11, 4, 6, 1, '2019-01-23 13:47:18'),
(19, '2019-01-25-2Iyod', 26, 4, 6, 1, '2019-01-25 13:47:01'),
(20, '2019-01-25-2Iyod', 26, 4, 6, 1, '2019-01-25 13:47:01'),
(21, '2019-01-25-KJzVd', 27, 4, 6, 1, '2019-01-25 13:48:18'),
(22, '2019-01-25-KJzVd', 27, 4, 6, 1, '2019-01-25 13:48:18'),
(23, '2019-01-25-qObQV', 29, 4, 5, 1, '2019-01-25 14:10:45'),
(24, '2019-01-25-d6iYS', 30, 4, 6, 1, '2019-01-25 14:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_material_item`
--

CREATE TABLE `Ilab_master_mr_material_item` (
  `slno_item_mr` int(11) NOT NULL,
  `mr_no_item` varchar(255) NOT NULL,
  `slno_mr_id` int(11) NOT NULL,
  `material_item_id` int(11) NOT NULL,
  `material_name` varchar(255) NOT NULL,
  `material_quantity` varchar(255) NOT NULL,
  `material_unit` varchar(255) NOT NULL,
  `material_id` varchar(255) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment_details_item` text,
  `Approver_creator_id` varchar(255) DEFAULT NULL,
  `creator_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here list of mr list of material item need to received';

--
-- Dumping data for table `Ilab_master_mr_material_item`
--

INSERT INTO `Ilab_master_mr_material_item` (`slno_item_mr`, `mr_no_item`, `slno_mr_id`, `material_item_id`, `material_name`, `material_quantity`, `material_unit`, `material_id`, `edit_id`, `date_time`, `comment_details_item`, `Approver_creator_id`, `creator_id`) VALUES
(351, '2019-01-03-LTCBA', 1, 2, 'material item 1', '50', 'nos', 'mat001', 1, '2019-01-03 13:27:30', NULL, NULL, NULL),
(352, '2019-01-03-LTCBA', 1, 8, 'material item 19', '86', 'nos', 'mat0018', 1, '2019-01-03 13:27:30', NULL, NULL, NULL),
(353, '2019-01-03-LTCBA', 1, 9, 'material item 22', '15', 'nos', 'mat00910', 1, '2019-01-03 13:27:30', NULL, NULL, NULL),
(354, '2019-01-03-LTCBA', 1, 2, 'material item 1', '50', 'nos', 'mat001', 2, '2019-01-03 13:49:02', 'please increase quantity', NULL, NULL),
(355, '2019-01-03-LTCBA', 1, 8, 'material item 19', '86', 'nos', 'mat0018', 2, '2019-01-03 13:28:04', NULL, NULL, NULL),
(356, '2019-01-03-LTCBA', 1, 9, 'material item 22', '15', 'nos', 'mat00910', 2, '2019-01-03 13:49:02', 'increase nos of quantity', NULL, NULL),
(357, '2019-01-03-LTCBA', 1, 7, 'material item 17', '20', 'nos', 'mat0087', 2, '2019-01-03 13:28:04', NULL, NULL, NULL),
(358, '2019-01-03-LTCBA', 1, 8, 'material item 19', '86', 'material item 19', 'material item 19', 3, '2019-01-03 13:51:35', NULL, NULL, NULL),
(359, '2019-01-03-LTCBA', 1, 7, 'material item 17', '20', 'material item 17', 'material item 17', 3, '2019-01-03 13:51:35', NULL, NULL, NULL),
(360, '2019-01-03-LTCBA', 1, 2, 'material item 1', '70', 'material item 1', 'material item 1', 3, '2019-01-03 13:51:35', NULL, NULL, NULL),
(361, '2019-01-03-LTCBA', 1, 9, 'material item 22', '20', 'material item 22', 'material item 22', 3, '2019-01-03 13:51:35', NULL, NULL, NULL),
(362, '2019-01-08-TaYy1', 2, 2, 'material item 1', '15', 'nos', 'mat001', 1, '2019-01-08 11:31:38', NULL, NULL, NULL),
(363, '2019-01-08-TaYy1', 2, 7, 'material item 17', '25', 'nos', 'mat0087', 1, '2019-01-08 11:31:38', NULL, NULL, NULL),
(364, '2019-01-08-TaYy1', 2, 8, 'material item 19', '70', 'nos', 'mat0018', 1, '2019-01-08 11:31:38', NULL, NULL, NULL),
(365, '2019-01-08-TaYy1', 2, 9, 'material item 22', '100', 'nos', 'mat00910', 1, '2019-01-08 11:31:39', NULL, NULL, NULL),
(366, '2019-01-16-J0Y9p', 3, 7, 'material item 17', '10', 'nos', 'mat0087', 1, '2019-01-16 06:31:09', NULL, NULL, NULL),
(367, '2019-01-16-J0Y9p', 3, 8, 'material item 19', '17', 'nos', 'mat0018', 1, '2019-01-16 06:31:09', NULL, NULL, NULL),
(368, '2019-01-16-J0Y9p', 3, 9, 'material item 22', '15', 'nos', 'mat00910', 1, '2019-01-16 06:31:09', NULL, NULL, NULL),
(369, '2019-01-16-J0Y9p', 3, 6, 'material10', '18', '21', '10', 1, '2019-01-16 06:31:10', NULL, NULL, NULL),
(370, '2019-01-16-1A8EB', 4, 2, 'material item 1', '10', 'nos', 'mat001', 1, '2019-01-16 07:38:10', NULL, NULL, NULL),
(371, '2019-01-16-1A8EB', 4, 7, 'material item 17', '11', 'nos', 'mat0087', 1, '2019-01-16 07:38:10', NULL, NULL, NULL),
(372, '2019-01-16-1A8EB', 4, 8, 'material item 19', '17', 'nos', 'mat0018', 1, '2019-01-16 07:38:10', NULL, NULL, NULL),
(373, '2019-01-16-1A8EB', 4, 9, 'material item 22', '16', 'nos', 'mat00910', 1, '2019-01-16 07:38:10', NULL, NULL, NULL),
(374, '2019-01-16-1A8EB', 4, 6, 'material10', '10', '21', '10', 1, '2019-01-16 07:38:10', NULL, NULL, NULL),
(375, '2019-01-19-yXgV7', 5, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-19 13:49:09', NULL, NULL, NULL),
(376, '2019-01-19-vxVbR', 6, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2019-01-19 13:50:29', NULL, NULL, NULL),
(377, '2019-01-21-bBsyq', 7, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-21 09:59:10', NULL, NULL, NULL),
(378, '2019-01-21-bBsyq', 7, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-21 09:59:10', NULL, NULL, NULL),
(379, '2019-01-21-bBsyq', 7, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-21 09:59:10', NULL, NULL, NULL),
(380, '2019-01-21-fypJx', 8, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2019-01-21 10:00:24', NULL, NULL, NULL),
(381, '2019-01-21-fypJx', 8, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2019-01-21 10:00:24', NULL, NULL, NULL),
(382, '2019-01-24-RXfS5', 12, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 06:53:01', NULL, NULL, NULL),
(383, '2019-01-24-RXfS5', 12, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 06:53:01', NULL, NULL, NULL),
(384, '2019-01-24-RXfS5', 12, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 06:53:01', NULL, NULL, NULL),
(385, '2019-01-24-RXfS5', 12, 6, 'material10', '1', '21', '10', 1, '2019-01-24 06:53:01', NULL, NULL, NULL),
(386, '2019-01-24-ugDE7', 13, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 07:10:45', NULL, NULL, NULL),
(387, '2019-01-24-ugDE7', 13, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 07:10:45', NULL, NULL, NULL),
(388, '2019-01-24-ugDE7', 13, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 07:10:45', NULL, NULL, NULL),
(389, '2019-01-24-ugDE7', 13, 6, 'material10', '1', '21', '10', 1, '2019-01-24 07:10:45', NULL, NULL, NULL),
(390, '2019-01-24-kANZt', 14, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 07:11:53', NULL, NULL, NULL),
(391, '2019-01-24-kANZt', 14, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 07:11:54', NULL, NULL, NULL),
(392, '2019-01-24-kANZt', 14, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 07:11:54', NULL, NULL, NULL),
(393, '2019-01-24-kANZt', 14, 6, 'material10', '1', '21', '10', 1, '2019-01-24 07:11:54', NULL, NULL, NULL),
(394, '2019-01-24-crXIv', 15, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 07:13:09', NULL, NULL, NULL),
(395, '2019-01-24-crXIv', 15, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 07:13:09', NULL, NULL, NULL),
(396, '2019-01-24-crXIv', 15, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 07:13:09', NULL, NULL, NULL),
(397, '2019-01-24-crXIv', 15, 6, 'material10', '1', '21', '10', 1, '2019-01-24 07:13:09', NULL, NULL, NULL),
(398, '2019-01-24-yKs5D', 16, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 07:14:25', NULL, NULL, NULL),
(399, '2019-01-24-yKs5D', 16, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 07:14:25', NULL, NULL, NULL),
(400, '2019-01-24-yKs5D', 16, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 07:14:25', NULL, NULL, NULL),
(401, '2019-01-24-yKs5D', 16, 6, 'material10', '1', '21', '10', 1, '2019-01-24 07:14:25', NULL, NULL, NULL),
(402, '2019-01-24-LJXYA', 17, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 10:32:30', NULL, NULL, NULL),
(403, '2019-01-24-LJXYA', 17, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 10:32:30', NULL, NULL, NULL),
(404, '2019-01-24-LJXYA', 17, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 10:32:30', NULL, NULL, NULL),
(405, '2019-01-24-LJXYA', 17, 6, 'material10', '1', '21', '10', 1, '2019-01-24 10:32:31', NULL, NULL, NULL),
(406, '2019-01-24-WEKwX', 18, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 10:33:46', NULL, NULL, NULL),
(407, '2019-01-24-WEKwX', 18, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 10:33:46', NULL, NULL, NULL),
(408, '2019-01-24-WEKwX', 18, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 10:33:46', NULL, NULL, NULL),
(409, '2019-01-24-WEKwX', 18, 6, 'material10', '1', '21', '10', 1, '2019-01-24 10:33:46', NULL, NULL, NULL),
(410, '2019-01-24-GoI7j', 19, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 10:35:17', NULL, NULL, NULL),
(411, '2019-01-24-GoI7j', 19, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 10:35:17', NULL, NULL, NULL),
(412, '2019-01-24-GoI7j', 19, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 10:35:17', NULL, NULL, NULL),
(413, '2019-01-24-GoI7j', 19, 6, 'material10', '1', '21', '10', 1, '2019-01-24 10:35:17', NULL, NULL, NULL),
(414, '2019-01-24-9kvx4', 20, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 10:36:38', NULL, NULL, NULL),
(415, '2019-01-24-9kvx4', 20, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 10:36:38', NULL, NULL, NULL),
(416, '2019-01-24-zsAQg', 21, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 11:53:43', NULL, NULL, NULL),
(417, '2019-01-24-zsAQg', 21, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 11:53:43', NULL, NULL, NULL),
(418, '2019-01-24-zsAQg', 21, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 11:53:43', NULL, NULL, NULL),
(419, '2019-01-24-zsAQg', 21, 6, 'material10', '1', '21', '10', 1, '2019-01-24 11:53:43', NULL, NULL, NULL),
(420, '2019-01-24-n62WN', 22, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 11:54:50', NULL, NULL, NULL),
(421, '2019-01-24-n62WN', 22, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 11:54:50', NULL, NULL, NULL),
(422, '2019-01-24-n62WN', 22, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 11:54:50', NULL, NULL, NULL),
(423, '2019-01-24-n62WN', 22, 6, 'material10', '1', '21', '10', 1, '2019-01-24 11:54:50', NULL, NULL, NULL),
(424, '2019-01-24-f0Xpr', 23, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 11:56:08', NULL, NULL, NULL),
(425, '2019-01-24-f0Xpr', 23, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 11:56:08', NULL, NULL, NULL),
(426, '2019-01-24-f0Xpr', 23, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 11:56:08', NULL, NULL, NULL),
(427, '2019-01-24-f0Xpr', 23, 6, 'material10', '1', '21', '10', 1, '2019-01-24 11:56:08', NULL, NULL, NULL),
(428, '2019-01-24-u8m9H', 24, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-24 13:42:07', NULL, NULL, NULL),
(429, '2019-01-24-u8m9H', 24, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-24 13:42:07', NULL, NULL, NULL),
(430, '2019-01-24-u8m9H', 24, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-24 13:42:07', NULL, NULL, NULL),
(431, '2019-01-24-u8m9H', 24, 6, 'material10', '1', '21', '10', 1, '2019-01-24 13:42:08', NULL, NULL, NULL),
(432, '2019-01-25-fYx3a', 25, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2019-01-25 13:20:38', NULL, NULL, NULL),
(433, '2019-01-25-fYx3a', 25, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2019-01-25 13:20:38', NULL, NULL, NULL),
(434, '2019-01-25-fYx3a', 25, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2019-01-25 13:20:38', NULL, NULL, NULL),
(435, '2019-01-25-fYx3a', 25, 6, 'material10', '1', '21', '10', 1, '2019-01-25 13:20:39', NULL, NULL, NULL),
(436, '2019-01-25-PO9J7', 28, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2019-01-25 13:49:07', NULL, NULL, NULL),
(437, '2019-01-25-PO9J7', 28, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2019-01-25 13:49:07', NULL, NULL, NULL),
(438, '2019-01-25-PO9J7', 28, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2019-01-25 13:49:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_technical_parameter_info`
--

CREATE TABLE `Ilab_master_mr_technical_parameter_info` (
  `slno_para` int(11) NOT NULL,
  `mr_no_tech` varchar(255) NOT NULL,
  `slno_mr_id_tech` int(11) NOT NULL,
  `tech_slno_id` int(11) NOT NULL,
  `tech_name` varchar(255) NOT NULL,
  `tech_details` text NOT NULL,
  `slno_item_mr_tech` int(11) NOT NULL,
  `edit_id` int(11) NOT NULL,
  `date_tiime_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here technical parameter of mr creation';

--
-- Dumping data for table `Ilab_master_mr_technical_parameter_info`
--

INSERT INTO `Ilab_master_mr_technical_parameter_info` (`slno_para`, `mr_no_tech`, `slno_mr_id_tech`, `tech_slno_id`, `tech_name`, `tech_details`, `slno_item_mr_tech`, `edit_id`, `date_tiime_entered`) VALUES
(443, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 351, 1, '2019-01-03 13:27:30'),
(444, '2019-01-03-LTCBA', 1, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 352, 1, '2019-01-03 13:27:30'),
(445, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 353, 1, '2019-01-03 13:27:30'),
(446, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 354, 2, '2019-01-03 13:28:04'),
(447, '2019-01-03-LTCBA', 1, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 355, 2, '2019-01-03 13:28:04'),
(448, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 356, 2, '2019-01-03 13:28:04'),
(449, '2019-01-03-LTCBA', 1, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 357, 2, '2019-01-03 13:28:04'),
(450, '2019-01-03-LTCBA', 1, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 358, 3, '2019-01-03 13:51:35'),
(451, '2019-01-03-LTCBA', 1, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 359, 3, '2019-01-03 13:51:35'),
(452, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 360, 3, '2019-01-03 13:51:35'),
(453, '2019-01-03-LTCBA', 1, 0, 'No Parameter Found', 'No details Found', 361, 3, '2019-01-03 13:51:35'),
(454, '2019-01-08-TaYy1', 2, 0, 'No Parameter Found', 'No details Found', 362, 1, '2019-01-08 11:31:38'),
(455, '2019-01-08-TaYy1', 2, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 363, 1, '2019-01-08 11:31:38'),
(456, '2019-01-08-TaYy1', 2, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 364, 1, '2019-01-08 11:31:38'),
(457, '2019-01-08-TaYy1', 2, 0, 'No Parameter Found', 'No details Found', 365, 1, '2019-01-08 11:31:39'),
(458, '2019-01-16-J0Y9p', 3, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 366, 1, '2019-01-16 06:31:09'),
(459, '2019-01-16-J0Y9p', 3, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 366, 1, '2019-01-16 06:31:09'),
(460, '2019-01-16-J0Y9p', 3, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 367, 1, '2019-01-16 06:31:09'),
(461, '2019-01-16-J0Y9p', 3, 0, 'No Parameter Found', 'No details Found', 368, 1, '2019-01-16 06:31:10'),
(462, '2019-01-16-J0Y9p', 3, 2, 'tec10', 'xxx', 369, 1, '2019-01-16 06:31:10'),
(463, '2019-01-16-J0Y9p', 3, 4, '67tyu', 'cvbnmxrt', 369, 1, '2019-01-16 06:31:10'),
(464, '2019-01-16-J0Y9p', 3, 5, 'BNTRY', 'bnmiyutre', 369, 1, '2019-01-16 06:31:10'),
(465, '2019-01-16-1A8EB', 4, 0, 'No Parameter Found', 'No details Found', 370, 1, '2019-01-16 07:38:10'),
(466, '2019-01-16-1A8EB', 4, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 371, 1, '2019-01-16 07:38:10'),
(467, '2019-01-16-1A8EB', 4, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 371, 1, '2019-01-16 07:38:10'),
(468, '2019-01-16-1A8EB', 4, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 372, 1, '2019-01-16 07:38:10'),
(469, '2019-01-16-1A8EB', 4, 0, 'No Parameter Found', 'No details Found', 373, 1, '2019-01-16 07:38:10'),
(470, '2019-01-16-1A8EB', 4, 2, 'tec10', 'xxx', 374, 1, '2019-01-16 07:38:10'),
(471, '2019-01-16-1A8EB', 4, 4, '67tyu', 'cvbnmxrt', 374, 1, '2019-01-16 07:38:10'),
(472, '2019-01-16-1A8EB', 4, 5, 'BNTRY', 'bnmiyutre', 374, 1, '2019-01-16 07:38:10'),
(473, '2019-01-19-vxVbR', 6, 0, 'No Parameter Found', 'No details Found', 376, 1, '2019-01-19 13:50:29'),
(474, '2019-01-21-bBsyq', 7, 9, 'tech34311', 'xxxxx', 377, 1, '2019-01-21 09:59:10'),
(475, '2019-01-21-bBsyq', 7, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 378, 1, '2019-01-21 09:59:10'),
(476, '2019-01-21-bBsyq', 7, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 378, 1, '2019-01-21 09:59:10'),
(477, '2019-01-21-bBsyq', 7, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 379, 1, '2019-01-21 09:59:10'),
(478, '2019-01-21-fypJx', 8, 3, 'tec10', 'xxx', 380, 1, '2019-01-21 10:00:24'),
(479, '2019-01-21-fypJx', 8, 0, 'No Parameter Found', 'No details Found', 381, 1, '2019-01-21 10:00:24'),
(480, '2019-01-24-RXfS5', 12, 9, 'tech34311', 'xxxxx', 382, 1, '2019-01-24 06:53:01'),
(481, '2019-01-24-RXfS5', 12, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 383, 1, '2019-01-24 06:53:01'),
(482, '2019-01-24-RXfS5', 12, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 383, 1, '2019-01-24 06:53:01'),
(483, '2019-01-24-RXfS5', 12, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 384, 1, '2019-01-24 06:53:01'),
(484, '2019-01-24-RXfS5', 12, 2, 'tec10', 'xxx', 385, 1, '2019-01-24 06:53:01'),
(485, '2019-01-24-RXfS5', 12, 4, '67tyu', 'cvbnmxrt', 385, 1, '2019-01-24 06:53:01'),
(486, '2019-01-24-RXfS5', 12, 5, 'BNTRY', 'bnmiyutre', 385, 1, '2019-01-24 06:53:01'),
(487, '2019-01-24-RXfS5', 12, 10, 'tech454', 'xxxxx', 385, 1, '2019-01-24 06:53:02'),
(488, '2019-01-24-ugDE7', 13, 9, 'tech34311', 'xxxxx', 386, 1, '2019-01-24 07:10:45'),
(489, '2019-01-24-ugDE7', 13, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 387, 1, '2019-01-24 07:10:45'),
(490, '2019-01-24-ugDE7', 13, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 387, 1, '2019-01-24 07:10:45'),
(491, '2019-01-24-ugDE7', 13, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 388, 1, '2019-01-24 07:10:45'),
(492, '2019-01-24-ugDE7', 13, 2, 'tec10', 'xxx', 389, 1, '2019-01-24 07:10:46'),
(493, '2019-01-24-ugDE7', 13, 4, '67tyu', 'cvbnmxrt', 389, 1, '2019-01-24 07:10:46'),
(494, '2019-01-24-ugDE7', 13, 5, 'BNTRY', 'bnmiyutre', 389, 1, '2019-01-24 07:10:46'),
(495, '2019-01-24-ugDE7', 13, 10, 'tech454', 'xxxxx', 389, 1, '2019-01-24 07:10:46'),
(496, '2019-01-24-kANZt', 14, 9, 'tech34311', 'xxxxx', 390, 1, '2019-01-24 07:11:53'),
(497, '2019-01-24-kANZt', 14, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 391, 1, '2019-01-24 07:11:54'),
(498, '2019-01-24-kANZt', 14, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 391, 1, '2019-01-24 07:11:54'),
(499, '2019-01-24-kANZt', 14, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 392, 1, '2019-01-24 07:11:54'),
(500, '2019-01-24-kANZt', 14, 2, 'tec10', 'xxx', 393, 1, '2019-01-24 07:11:54'),
(501, '2019-01-24-kANZt', 14, 4, '67tyu', 'cvbnmxrt', 393, 1, '2019-01-24 07:11:54'),
(502, '2019-01-24-kANZt', 14, 5, 'BNTRY', 'bnmiyutre', 393, 1, '2019-01-24 07:11:54'),
(503, '2019-01-24-kANZt', 14, 10, 'tech454', 'xxxxx', 393, 1, '2019-01-24 07:11:54'),
(504, '2019-01-24-crXIv', 15, 9, 'tech34311', 'xxxxx', 394, 1, '2019-01-24 07:13:09'),
(505, '2019-01-24-crXIv', 15, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 395, 1, '2019-01-24 07:13:09'),
(506, '2019-01-24-crXIv', 15, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 395, 1, '2019-01-24 07:13:09'),
(507, '2019-01-24-crXIv', 15, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 396, 1, '2019-01-24 07:13:09'),
(508, '2019-01-24-crXIv', 15, 2, 'tec10', 'xxx', 397, 1, '2019-01-24 07:13:10'),
(509, '2019-01-24-crXIv', 15, 4, '67tyu', 'cvbnmxrt', 397, 1, '2019-01-24 07:13:10'),
(510, '2019-01-24-crXIv', 15, 5, 'BNTRY', 'bnmiyutre', 397, 1, '2019-01-24 07:13:10'),
(511, '2019-01-24-crXIv', 15, 10, 'tech454', 'xxxxx', 397, 1, '2019-01-24 07:13:10'),
(512, '2019-01-24-yKs5D', 16, 9, 'tech34311', 'xxxxx', 398, 1, '2019-01-24 07:14:25'),
(513, '2019-01-24-yKs5D', 16, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 399, 1, '2019-01-24 07:14:25'),
(514, '2019-01-24-yKs5D', 16, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 399, 1, '2019-01-24 07:14:25'),
(515, '2019-01-24-yKs5D', 16, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 400, 1, '2019-01-24 07:14:25'),
(516, '2019-01-24-yKs5D', 16, 2, 'tec10', 'xxx', 401, 1, '2019-01-24 07:14:25'),
(517, '2019-01-24-yKs5D', 16, 4, '67tyu', 'cvbnmxrt', 401, 1, '2019-01-24 07:14:25'),
(518, '2019-01-24-yKs5D', 16, 5, 'BNTRY', 'bnmiyutre', 401, 1, '2019-01-24 07:14:25'),
(519, '2019-01-24-yKs5D', 16, 10, 'tech454', 'xxxxx', 401, 1, '2019-01-24 07:14:25'),
(520, '2019-01-24-LJXYA', 17, 9, 'tech34311', 'xxxxx', 402, 1, '2019-01-24 10:32:30'),
(521, '2019-01-24-LJXYA', 17, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 403, 1, '2019-01-24 10:32:30'),
(522, '2019-01-24-LJXYA', 17, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 403, 1, '2019-01-24 10:32:30'),
(523, '2019-01-24-LJXYA', 17, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 404, 1, '2019-01-24 10:32:31'),
(524, '2019-01-24-LJXYA', 17, 2, 'tec10', 'xxx', 405, 1, '2019-01-24 10:32:31'),
(525, '2019-01-24-LJXYA', 17, 4, '67tyu', 'cvbnmxrt', 405, 1, '2019-01-24 10:32:31'),
(526, '2019-01-24-LJXYA', 17, 5, 'BNTRY', 'bnmiyutre', 405, 1, '2019-01-24 10:32:31'),
(527, '2019-01-24-WEKwX', 18, 9, 'tech34311', 'xxxxx', 406, 1, '2019-01-24 10:33:46'),
(528, '2019-01-24-WEKwX', 18, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 407, 1, '2019-01-24 10:33:46'),
(529, '2019-01-24-WEKwX', 18, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 407, 1, '2019-01-24 10:33:46'),
(530, '2019-01-24-WEKwX', 18, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 408, 1, '2019-01-24 10:33:46'),
(531, '2019-01-24-WEKwX', 18, 2, 'tec10', 'xxx', 409, 1, '2019-01-24 10:33:46'),
(532, '2019-01-24-WEKwX', 18, 4, '67tyu', 'cvbnmxrt', 409, 1, '2019-01-24 10:33:46'),
(533, '2019-01-24-WEKwX', 18, 5, 'BNTRY', 'bnmiyutre', 409, 1, '2019-01-24 10:33:46'),
(534, '2019-01-24-WEKwX', 18, 10, 'tech454', 'xxxxx', 409, 1, '2019-01-24 10:33:46'),
(535, '2019-01-24-GoI7j', 19, 9, 'tech34311', 'xxxxx', 410, 1, '2019-01-24 10:35:17'),
(536, '2019-01-24-GoI7j', 19, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 411, 1, '2019-01-24 10:35:17'),
(537, '2019-01-24-GoI7j', 19, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 411, 1, '2019-01-24 10:35:17'),
(538, '2019-01-24-GoI7j', 19, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 412, 1, '2019-01-24 10:35:17'),
(539, '2019-01-24-GoI7j', 19, 2, 'tec10', 'xxx', 413, 1, '2019-01-24 10:35:17'),
(540, '2019-01-24-GoI7j', 19, 4, '67tyu', 'cvbnmxrt', 413, 1, '2019-01-24 10:35:17'),
(541, '2019-01-24-GoI7j', 19, 5, 'BNTRY', 'bnmiyutre', 413, 1, '2019-01-24 10:35:17'),
(542, '2019-01-24-GoI7j', 19, 10, 'tech454', 'xxxxx', 413, 1, '2019-01-24 10:35:17'),
(543, '2019-01-24-9kvx4', 20, 9, 'tech34311', 'xxxxx', 414, 1, '2019-01-24 10:36:38'),
(544, '2019-01-24-9kvx4', 20, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 415, 1, '2019-01-24 10:36:38'),
(545, '2019-01-24-9kvx4', 20, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 415, 1, '2019-01-24 10:36:38'),
(546, '2019-01-24-zsAQg', 21, 9, 'tech34311', 'xxxxx', 416, 1, '2019-01-24 11:53:43'),
(547, '2019-01-24-zsAQg', 21, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 417, 1, '2019-01-24 11:53:43'),
(548, '2019-01-24-zsAQg', 21, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 417, 1, '2019-01-24 11:53:43'),
(549, '2019-01-24-zsAQg', 21, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 418, 1, '2019-01-24 11:53:43'),
(550, '2019-01-24-zsAQg', 21, 2, 'tec10', 'xxx', 419, 1, '2019-01-24 11:53:43'),
(551, '2019-01-24-zsAQg', 21, 4, '67tyu', 'cvbnmxrt', 419, 1, '2019-01-24 11:53:43'),
(552, '2019-01-24-zsAQg', 21, 5, 'BNTRY', 'bnmiyutre', 419, 1, '2019-01-24 11:53:43'),
(553, '2019-01-24-zsAQg', 21, 10, 'tech454', 'xxxxx', 419, 1, '2019-01-24 11:53:43'),
(554, '2019-01-24-n62WN', 22, 9, 'tech34311', 'xxxxx', 420, 1, '2019-01-24 11:54:50'),
(555, '2019-01-24-n62WN', 22, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 421, 1, '2019-01-24 11:54:50'),
(556, '2019-01-24-n62WN', 22, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 421, 1, '2019-01-24 11:54:50'),
(557, '2019-01-24-n62WN', 22, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 422, 1, '2019-01-24 11:54:50'),
(558, '2019-01-24-n62WN', 22, 2, 'tec10', 'xxx', 423, 1, '2019-01-24 11:54:50'),
(559, '2019-01-24-n62WN', 22, 4, '67tyu', 'cvbnmxrt', 423, 1, '2019-01-24 11:54:50'),
(560, '2019-01-24-n62WN', 22, 5, 'BNTRY', 'bnmiyutre', 423, 1, '2019-01-24 11:54:50'),
(561, '2019-01-24-n62WN', 22, 10, 'tech454', 'xxxxx', 423, 1, '2019-01-24 11:54:50'),
(562, '2019-01-24-f0Xpr', 23, 9, 'tech34311', 'xxxxx', 424, 1, '2019-01-24 11:56:08'),
(563, '2019-01-24-f0Xpr', 23, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 425, 1, '2019-01-24 11:56:08'),
(564, '2019-01-24-f0Xpr', 23, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 425, 1, '2019-01-24 11:56:08'),
(565, '2019-01-24-f0Xpr', 23, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 426, 1, '2019-01-24 11:56:08'),
(566, '2019-01-24-f0Xpr', 23, 2, 'tec10', 'xxx', 427, 1, '2019-01-24 11:56:08'),
(567, '2019-01-24-f0Xpr', 23, 4, '67tyu', 'cvbnmxrt', 427, 1, '2019-01-24 11:56:08'),
(568, '2019-01-24-f0Xpr', 23, 5, 'BNTRY', 'bnmiyutre', 427, 1, '2019-01-24 11:56:08'),
(569, '2019-01-24-f0Xpr', 23, 10, 'tech454', 'xxxxx', 427, 1, '2019-01-24 11:56:08'),
(570, '2019-01-25-fYx3a', 25, 9, 'tech34311', 'xxxxx', 432, 1, '2019-01-25 13:20:38'),
(571, '2019-01-25-fYx3a', 25, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 433, 1, '2019-01-25 13:20:38'),
(572, '2019-01-25-fYx3a', 25, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 433, 1, '2019-01-25 13:20:38'),
(573, '2019-01-25-fYx3a', 25, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 434, 1, '2019-01-25 13:20:39'),
(574, '2019-01-25-fYx3a', 25, 2, 'tec10', 'xxx', 435, 1, '2019-01-25 13:20:39'),
(575, '2019-01-25-fYx3a', 25, 4, '67tyu', 'cvbnmxrt', 435, 1, '2019-01-25 13:20:39'),
(576, '2019-01-25-fYx3a', 25, 5, 'BNTRY', 'bnmiyutre', 435, 1, '2019-01-25 13:20:39'),
(577, '2019-01-25-fYx3a', 25, 10, 'tech454', 'xxxxx', 435, 1, '2019-01-25 13:20:39'),
(578, '2019-01-25-PO9J7', 28, 0, 'No Parameter Found', 'No details Found', 436, 1, '2019-01-25 13:49:07'),
(579, '2019-01-25-PO9J7', 28, 0, 'No Parameter Found', 'No details Found', 437, 1, '2019-01-25 13:49:07'),
(580, '2019-01-25-PO9J7', 28, 3, 'tec10', 'xxx', 438, 1, '2019-01-25 13:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_mr_vehicle_mr_detail`
--

CREATE TABLE `Ilab_master_mr_vehicle_mr_detail` (
  `slno_mr_logistic` int(11) NOT NULL,
  `mr_no_vehicle` varchar(255) NOT NULL,
  `slno_mr_id_vehicle` int(11) NOT NULL,
  `vehicle_slno_id` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_capcity` varchar(255) NOT NULL,
  `from_location_name` varchar(255) DEFAULT NULL,
  `from_location_slno` int(11) DEFAULT NULL,
  `to_location_name` varchar(255) DEFAULT NULL,
  `to_location_slno` int(11) DEFAULT NULL,
  `purpose_info` text,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_it` int(11) NOT NULL DEFAULT '0',
  `approver_id` varchar(255) DEFAULT NULL,
  `mr_creater` varchar(255) DEFAULT NULL,
  `no_vehcile` varchar(255) NOT NULL,
  `comment_details_vechile` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_mr_vehicle_mr_detail`
--

INSERT INTO `Ilab_master_mr_vehicle_mr_detail` (`slno_mr_logistic`, `mr_no_vehicle`, `slno_mr_id_vehicle`, `vehicle_slno_id`, `vehicle_type`, `vehicle_capcity`, `from_location_name`, `from_location_slno`, `to_location_name`, `to_location_slno`, `purpose_info`, `date_entry`, `edit_it`, `approver_id`, `mr_creater`, `no_vehcile`, `comment_details_vechile`) VALUES
(1, '2019-01-23-UXLZ8', 10, 6, 'vehicle10', '5ponds', 'irc', 4, 'location1221', 6, ' official', '2019-01-23 13:35:53', 1, NULL, 'design2@ilab.com', '1', NULL),
(2, '2019-01-23-UXLZ8', 10, 8, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' offficial', '2019-01-23 13:35:53', 1, NULL, 'design2@ilab.com', '1', NULL),
(3, '2019-01-23-UXLZ8', 10, 9, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' work', '2019-01-23 13:35:53', 1, NULL, 'design2@ilab.com', '1', NULL),
(4, '2019-01-23-UXLZ8', 10, 3, 'vehicle12', '60000ponds', 'nayapali', 5, 'location1221', 6, ' test', '2019-01-23 13:35:53', 1, NULL, 'design2@ilab.com', '1', NULL),
(5, '2019-01-23-UXLZ8', 10, 4, 'vehicle12', '60000ponds', 'irc', 4, 'location1221', 6, ' official', '2019-01-23 13:35:53', 1, NULL, 'design2@ilab.com', '1', NULL),
(6, '2019-01-23-MDfj1', 11, 6, 'vehicle10', '5ponds', 'irc', 4, 'location1221', 6, ' official', '2019-01-23 13:47:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(7, '2019-01-23-MDfj1', 11, 8, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' test', '2019-01-23 13:47:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(8, '2019-01-23-MDfj1', 11, 9, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' office', '2019-01-23 13:47:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(9, '2019-01-23-MDfj1', 11, 3, 'vehicle12', '60000ponds', 'nayapali', 5, 'irc', 4, ' ', '2019-01-23 13:47:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(10, '2019-01-23-MDfj1', 11, 4, 'vehicle12', '60000ponds', 'nayapali', 5, 'location1221', 6, ' office', '2019-01-23 13:47:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(11, '2019-01-25-2Iyod', 26, 6, 'vehicle10', '5ponds', 'irc', 4, 'location1221', 6, ' official', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(12, '2019-01-25-2Iyod', 26, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'nayapali', 5, ' testing', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(13, '2019-01-25-2Iyod', 26, 9, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' official', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(14, '2019-01-25-2Iyod', 26, 6, 'vehicle10', '5ponds', 'irc', 4, 'location1221', 6, ' official', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(15, '2019-01-25-2Iyod', 26, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'nayapali', 5, ' testing', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(16, '2019-01-25-2Iyod', 26, 9, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' official', '2019-01-25 13:47:01', 1, NULL, 'design2@ilab.com', '1', NULL),
(17, '2019-01-25-KJzVd', 27, 6, 'vehicle10', '5ponds', 'nayapali', 5, 'location1221', 6, 'official', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(18, '2019-01-25-KJzVd', 27, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'irc', 4, ' testing', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(19, '2019-01-25-KJzVd', 27, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'irc', 4, ' testing', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(20, '2019-01-25-KJzVd', 27, 6, 'vehicle10', '5ponds', 'nayapali', 5, 'location1221', 6, 'official', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(21, '2019-01-25-KJzVd', 27, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'irc', 4, ' testing', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(22, '2019-01-25-KJzVd', 27, 8, 'vehicle10', '50s ponds', 'location1221', 6, 'irc', 4, ' testing', '2019-01-25 13:48:18', 1, NULL, 'design2@ilab.com', '1', NULL),
(23, '2019-01-25-qObQV', 29, 6, 'vehicle10', '5ponds', 'nayapali', 5, 'location1221', 6, ' test', '2019-01-25 14:10:45', 1, NULL, 'design2@ilab.com', '1', NULL),
(24, '2019-01-25-qObQV', 29, 8, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' official', '2019-01-25 14:10:45', 1, NULL, 'design2@ilab.com', '1', NULL),
(25, '2019-01-25-d6iYS', 30, 6, 'vehicle10', '5ponds', 'irc', 4, 'nayapali', 5, ' ghgh', '2019-01-25 14:20:11', 1, NULL, 'design2@ilab.com', '1', NULL),
(26, '2019-01-25-d6iYS', 30, 8, 'vehicle10', '50s ponds', 'nayapali', 5, 'location1221', 6, ' jkjui', '2019-01-25 14:20:11', 1, NULL, 'design2@ilab.com', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_new_order_book`
--

CREATE TABLE `Ilab_master_new_order_book` (
  `Slno_n_order` int(11) NOT NULL,
  `Slno_project` int(11) NOT NULL,
  `Job_code` varchar(255) NOT NULL,
  `Job_description` text NOT NULL,
  `Project_name` varchar(255) NOT NULL,
  `LOI_date_contract` date DEFAULT NULL,
  `Contract_sign_date` date DEFAULT NULL,
  `Contract_value` varchar(255) DEFAULT NULL,
  `Supply_order_value` varchar(255) DEFAULT NULL,
  `Contract_start_date` varchar(255) DEFAULT NULL,
  `Contractual_completion` varchar(255) DEFAULT NULL,
  `Contract_duration` varchar(255) DEFAULT NULL,
  `Remark` text,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Date_entry` date NOT NULL,
  `Time_entry` time NOT NULL,
  `Contract_ending_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_new_order_book`
--

INSERT INTO `Ilab_master_new_order_book` (`Slno_n_order`, `Slno_project`, `Job_code`, `Job_description`, `Project_name`, `LOI_date_contract`, `Contract_sign_date`, `Contract_value`, `Supply_order_value`, `Contract_start_date`, `Contractual_completion`, `Contract_duration`, `Remark`, `Status`, `Date_entry`, `Time_entry`, `Contract_ending_date`) VALUES
(1, 1, '0770', 'This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to seem ok to me preetish', 'project 1', '2018-09-29', '2018-11-08', '2018-09-29', '25089', '2019-02-02', '2019-04-20', '6 month', 'For switch statements, case statements must be indented once from switch, and bodies for the cases must be indented once from case. When not breaking after any kind of operations in case, you must write a comment.', 1, '2018-09-29', '12:54:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_procurement_MR`
--

CREATE TABLE `Ilab_master_procurement_MR` (
  `Slno_procurement` int(11) NOT NULL,
  `Mr_id` varchar(255) NOT NULL,
  `Slno_MR_id` int(11) NOT NULL,
  `Job_code` varchar(255) NOT NULL,
  `Slno_approver_id` int(11) NOT NULL,
  `Procurement_id` varchar(255) NOT NULL,
  `Procurement_name` varchar(255) NOT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_id` varchar(255) DEFAULT NULL,
  `Date_process` date NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1' COMMENT '1->active 2->inactiove 3->delete ',
  `Forward_status` int(11) NOT NULL DEFAULT '0' COMMENT '1->sending 2->pending 0->unauthorised',
  `Material_id` varchar(255) NOT NULL,
  `Edit_id` int(11) NOT NULL,
  `Technical_type` int(11) NOT NULL DEFAULT '0' COMMENT 'o->nothing 1->yes 2->no  technical submission',
  `Forward_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_procurement_MR`
--

INSERT INTO `Ilab_master_procurement_MR` (`Slno_procurement`, `Mr_id`, `Slno_MR_id`, `Job_code`, `Slno_approver_id`, `Procurement_id`, `Procurement_name`, `buyer_name`, `buyer_id`, `Date_process`, `Status`, `Forward_status`, `Material_id`, `Edit_id`, `Technical_type`, `Forward_date`) VALUES
(1, '2018-12-18-vfrU9', 43, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(2, '2018-12-18-yDnir', 44, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(3, '2018-12-18-mzTpr', 45, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(4, '2018-12-18-iqhse', 46, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(5, '2018-12-18-hB8yK', 47, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(6, '2018-12-18-clj8G', 48, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(7, '2018-12-18-3aDdt', 49, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(8, '2018-12-18-4u8hJ', 50, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(9, '2018-12-18-P2r3Q', 51, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(10, '2018-12-18-CXwUb', 52, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(11, '2018-12-18-HRMj2', 53, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(12, '2018-12-18-68sko', 54, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 2, '2018-12-18'),
(13, '2018-12-18-8z5yi', 55, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-18'),
(14, '2018-12-18-87xin', 56, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-18'),
(15, '2018-12-18-GJxTP', 57, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-18'),
(16, '2018-12-18-uaFjB', 58, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-18'),
(17, '2018-12-18-vyhD4', 59, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-18'),
(18, '2018-12-18-CHcfo', 60, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(19, '2018-12-18-Fut2x', 61, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 2, '2018-12-18'),
(20, '2018-12-18-PHWeU', 62, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(21, '2018-12-18-49UrX', 63, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(22, '2018-12-18-ywp47', 64, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(23, '2018-12-18-DGZea', 65, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(24, '2018-12-18-cJzLm', 66, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(25, '2018-12-18-zMxjB', 67, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '3', 1, 1, '2018-12-18'),
(26, '2018-12-18-OjAiz', 69, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 1, '2018-12-18'),
(27, '2018-12-18-74lha', 70, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 1, '2018-12-18'),
(28, '2018-12-18-6nhiy', 71, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 1, '2018-12-18'),
(29, '2018-12-18-cyNA9', 72, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '2', 1, 1, '2018-12-18'),
(30, '2018-12-18-MDpwn', 73, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 1, '2018-12-18'),
(31, '2018-12-18-0zJac', 74, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 1, '2018-12-18'),
(32, '2018-12-18-eWFIx', 75, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 1, '2018-12-18'),
(33, '2018-12-18-OQIHn', 76, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 1, '2018-12-18'),
(34, '2018-12-18-9kKDw', 77, '0770', 18, 'pro2@ilab.com', 'procurement user 2', NULL, NULL, '2018-12-18', 1, 2, '1', 1, 1, NULL),
(35, '2018-12-18-ICP9v', 78, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-18', 1, 1, '1', 1, 2, '2018-12-22'),
(36, '2018-12-18-eg8Ed', 79, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-22', 1, 1, '1', 1, 1, '2018-12-22'),
(37, '2018-12-18-3Yf5l', 80, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-22', 1, 1, '1', 1, 1, '2018-12-24'),
(38, '2018-12-22-uqmZt', 84, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-22', 1, 1, '1', 1, 2, '2018-12-24'),
(39, '2018-12-22-b3Ps4', 83, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-22', 1, 1, '1', 1, 2, '2018-12-24'),
(40, '2018-12-24-jlBKV', 89, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(41, '2018-12-22-ZTYls', 88, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(42, '2018-12-24-OLyVT', 91, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 1, 2, '2018-12-24'),
(43, '2018-12-24-zyqs8', 97, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(44, '2018-12-22-m2DEf', 85, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(45, '2018-12-18-r4WqV', 81, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 1, '2018-12-24'),
(46, '2018-12-24-AO7Rf', 102, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 1, 2, '2018-12-24'),
(47, '2018-12-24-iD4Cs', 100, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 1, 1, '2018-12-24'),
(48, '2018-12-24-a8395', 98, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 2, '2018-12-24'),
(49, '2018-12-22-OC8aP', 82, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(50, '2018-12-22-IKzMc', 86, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 2, 2, '2018-12-24'),
(51, '2018-12-22-X1GyM', 87, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 2, '2018-12-24'),
(52, '2018-12-24-zuK5O', 90, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 2, '2018-12-24'),
(53, '2018-12-24-vJZHB', 92, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 2, '2018-12-24'),
(54, '2018-12-24-hqLrT', 93, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 2, '2018-12-24'),
(55, '2018-12-24-pSM2q', 94, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 1, 2, '2018-12-24'),
(56, '2018-12-24-4Vv2c', 95, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 2, 2, '2018-12-24'),
(57, '2018-12-24-IblwA', 96, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 2, 2, '2018-12-24'),
(58, '2018-12-24-a3J4e', 99, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 2, '2018-12-24'),
(59, '2018-12-24-M9sQI', 101, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '2', 2, 1, '2018-12-24'),
(60, '2018-12-24-ngrbi', 103, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 1, 1, '2018-12-24'),
(61, '2018-12-24-taFs1', 104, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-24', 1, 1, '1', 2, 1, '2018-12-24'),
(62, '2018-12-25-gnD3C', 105, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-25', 1, 1, '3', 1, 2, '2018-12-25'),
(63, '2018-12-27-GPgKa', 107, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-27', 1, 1, '1', 1, 1, '2018-12-27'),
(64, '2018-12-27-GsQfL', 108, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-12-27', 1, 1, '2', 1, 1, '2018-12-27'),
(65, '2019-01-03-LTCBA', 1, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-03', 1, 1, '1', 3, 1, '2019-01-03'),
(66, '2019-01-08-TaYy1', 2, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-08', 1, 1, '1', 1, 2, '2019-01-08'),
(67, '2019-01-16-J0Y9p', 3, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-16', 1, 1, '1', 1, 1, '2019-01-23'),
(68, '2019-01-16-1A8EB', 4, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-16', 1, 1, '1', 1, 2, '2019-01-23'),
(69, '2019-01-19-yXgV7', 5, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-19', 1, 1, '1', 1, 2, '2019-01-23'),
(70, '2019-01-21-bBsyq', 7, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-23', 1, 1, '1', 1, 1, '2019-01-24'),
(71, '2019-01-24-RXfS5', 12, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-24', 1, 1, '1', 1, 2, '2019-01-24'),
(72, '2019-01-24-ugDE7', 13, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-24', 1, 1, '1', 1, 2, '2019-01-24'),
(73, '2019-01-24-crXIv', 15, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-24', 1, 1, '1', 1, 2, '2019-01-24'),
(74, '2019-01-24-yKs5D', 16, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-24', 1, 1, '1', 1, 2, '2019-01-24'),
(75, '2019-01-24-WEKwX', 18, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-24', 1, 1, '1', 1, 2, '2019-01-24'),
(76, '2019-01-24-LJXYA', 17, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2019-01-24', 1, 2, '1', 1, 2, NULL),
(77, '2019-01-25-fYx3a', 25, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '1', 1, 2, '2019-01-25'),
(78, '2019-01-25-KJzVd', 27, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '3', 1, 2, '2019-01-25'),
(79, '2019-01-25-PO9J7', 28, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '2', 1, 2, '2019-01-25'),
(80, '2019-01-25-2Iyod', 26, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '3', 1, 2, '2019-01-25'),
(81, '2019-01-25-qObQV', 29, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '3', 1, 2, '2019-01-25'),
(82, '2019-01-25-d6iYS', 30, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2019-01-25', 1, 1, '3', 1, 2, '2019-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_project`
--

CREATE TABLE `Ilab_master_project` (
  `Project_Slno` int(11) NOT NULL,
  `Project_Name` varchar(255) NOT NULL,
  `job_Code` varchar(255) NOT NULL,
  `Date_Start` date NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Mobile_No` varchar(255) NOT NULL,
  `project_Description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `bu_status` int(11) NOT NULL DEFAULT '0',
  `Date_Entry` date NOT NULL,
  `Time_Entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_project`
--

INSERT INTO `Ilab_master_project` (`Project_Slno`, `Project_Name`, `job_Code`, `Date_Start`, `Customer_Name`, `Customer_Mobile_No`, `project_Description`, `status`, `bu_status`, `Date_Entry`, `Time_Entry`) VALUES
(1, 'project 1', '0770', '2018-11-01', 'sandy', '12345667890', 'This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to', 1, 1, '2018-09-28', '20:38:23'),
(2, 'Project 3', '23456', '2018-09-22', 'ABC Ltd', '12345667890', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 1, 0, '2018-09-28', '21:28:53'),
(3, 'Project 5', '679034', '2018-09-05', 'ZXC Ltd', '12345667890', 'vvvvvvvvvvvvvv', 1, 0, '2018-09-28', '21:30:19'),
(4, 'Nalanda', '902345', '2018-10-01', 'sdcf', '12345667890', 'nmmkku', 1, 0, '2018-10-23', '16:11:35'),
(5, 'Dream', '567432', '2018-10-01', 'mntyu', '12345667890', 'nmmkkk', 1, 0, '2018-10-23', '16:12:34'),
(6, 'revenue', '189067', '2018-10-03', 'msdfrt', '12345667890', 'mnghtyu', 1, 1, '2018-10-23', '16:13:34'),
(7, 'proj1112', '7877', '0000-00-00', 'cust22201', '12345667890', 'xxxx', 1, 0, '2019-01-17', '17:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid`
--

CREATE TABLE `Ilab_master_rankorder_bid` (
  `Slno_rankorder` int(11) NOT NULL,
  `Bid_master_id_rankorder` int(11) NOT NULL,
  `Bid_ref_no` varchar(255) NOT NULL,
  `Bid_vendor_id` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_of_bid` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_bid_id` int(11) NOT NULL,
  `comment` text,
  `comment_by` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `resubmission` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_rankorder_bid`
--

INSERT INTO `Ilab_master_rankorder_bid` (`Slno_rankorder`, `Bid_master_id_rankorder`, `Bid_ref_no`, `Bid_vendor_id`, `Vendor_id`, `date_entry`, `type_of_bid`, `category_id`, `type_bid_id`, `comment`, `comment_by`, `comment_date`, `resubmission`) VALUES
(1, 22, '4334	', '132', 'ven121@gmail.com', '2018-12-29 09:43:44', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0),
(2, 22, '4334	', '131', 'vender@ilab.com', '2018-12-29 10:51:08', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0),
(3, 22, '4334	', '132', 'ven121@gmail.com', '2018-12-31 15:06:46', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0),
(4, 22, '4334	', '132', 'ven121@gmail.com', '2018-12-31 15:27:47', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0),
(5, 22, '4334	', '131', 'vender@ilab.com', '2018-12-31 15:30:13', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0),
(6, 22, '4334	', '132', 'ven121@gmail.com', '2019-01-01 11:11:10', 'Rank Order Bid', 2, 3, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_item`
--

CREATE TABLE `Ilab_master_rankorder_bid_item` (
  `Slno_rankorder_item` int(11) NOT NULL,
  `Rankorder_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) NOT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_rankorder_bid_item`
--

INSERT INTO `Ilab_master_rankorder_bid_item` (`Slno_rankorder_item`, `Rankorder_id_slno`, `Bid_master_id_com`, `Item_name`, `Item_id`, `Quantity`, `Uom_unit`, `Unit_price`, `Total_unitprice`, `date_entry`, `Comm_item_slno`, `Mr_item_slno`, `Bid_slno`, `Vendor_id`) VALUES
(1, 1, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '75', '1200.00', '2018-12-29 09:43:44', '59', '', '132', 'ven121@gmail.com'),
(2, 1, 22, 'Pump', 'Mat001', '18', 'Horse Power', '26', '468.00', '2018-12-29 09:43:44', '60', '', '132', 'ven121@gmail.com'),
(3, 1, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '27', '297.00', '2018-12-29 09:43:44', '61', '', '132', 'ven121@gmail.com'),
(4, 2, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '76756', '1228096.00', '2018-12-29 10:51:08', '59', '', '131', 'vender@ilab.com'),
(5, 2, 22, 'Pump', 'Mat001', '18', 'Horse Power', '987', '17766.00', '2018-12-29 10:51:08', '60', '', '131', 'vender@ilab.com'),
(6, 2, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '665', '7315.00', '2018-12-29 10:51:08', '61', '', '131', 'vender@ilab.com'),
(7, 3, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '15', '240.00', '2018-12-31 15:06:46', '59', '', '132', 'ven121@gmail.com'),
(8, 3, 22, 'Pump', 'Mat001', '18', 'Horse Power', '20', '360.00', '2018-12-31 15:06:46', '60', '', '132', 'ven121@gmail.com'),
(9, 3, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '30', '330.00', '2018-12-31 15:06:46', '61', '', '132', 'ven121@gmail.com'),
(10, 4, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '5000', '80000.00', '2018-12-31 15:27:47', '59', '', '132', 'ven121@gmail.com'),
(11, 4, 22, 'Pump', 'Mat001', '18', 'Horse Power', '889', '16002.00', '2018-12-31 15:27:47', '60', '', '132', 'ven121@gmail.com'),
(12, 4, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '4889955', '53789505.00', '2018-12-31 15:27:47', '61', '', '132', 'ven121@gmail.com'),
(13, 5, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '2', '32.00', '2018-12-31 15:30:13', '59', '', '131', 'vender@ilab.com'),
(14, 5, 22, 'Pump', 'Mat001', '18', 'Horse Power', '5', '90.00', '2018-12-31 15:30:13', '60', '', '131', 'vender@ilab.com'),
(15, 5, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '9', '99.00', '2018-12-31 15:30:13', '61', '', '131', 'vender@ilab.com'),
(16, 6, 22, 'Progressing cavity pump.', 'Mat003', '16', 'Capacity', '4', '64.00', '2019-01-01 11:11:10', '59', '', '132', 'ven121@gmail.com'),
(17, 6, 22, 'Pump', 'Mat001', '18', 'Horse Power', '5', '90.00', '2019-01-01 11:11:10', '60', '', '132', 'ven121@gmail.com'),
(18, 6, 22, 'Rotary lobe pump', 'Mat002', '11', 'Max Pump volume', '5', '55.00', '2019-01-01 11:11:10', '61', '', '132', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_item_misc`
--

CREATE TABLE `Ilab_master_rankorder_bid_item_misc` (
  `Slno_rankorder_misc` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `rankorder_id_slno_misc` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_rankorder_bid_item_misc`
--

INSERT INTO `Ilab_master_rankorder_bid_item_misc` (`Slno_rankorder_misc`, `master_bid_id_com`, `rankorder_id_slno_misc`, `field_name`, `field_value`, `date_entry`, `Bid_slno`, `Vendor_id`) VALUES
(1, 22, 1, 'delivery basis', '3 week Of delivery', '2018-12-29 09:43:44', '132', 'ven121@gmail.com'),
(2, 22, 1, 'gaurantee warranty', 'no', '2018-12-29 09:43:44', '132', 'ven121@gmail.com'),
(3, 22, 1, 'delivery schedule', 'immedate after advance', '2018-12-29 09:43:44', '132', 'ven121@gmail.com'),
(4, 22, 1, 'payment terms', 'checque of 3 instalment', '2018-12-29 09:43:45', '132', 'ven121@gmail.com'),
(5, 22, 1, 'validity of offer', 'till 2019 jan 20', '2018-12-29 09:43:45', '132', 'ven121@gmail.com'),
(6, 22, 1, 'security BG', 'no', '2018-12-29 09:43:45', '132', 'ven121@gmail.com'),
(7, 22, 1, 'liquidity damage', '10% will be exchanged', '2018-12-29 09:43:45', '132', 'ven121@gmail.com'),
(8, 22, 1, 'remarks', 'book immediate as soon as possible', '2018-12-29 09:43:45', '132', 'ven121@gmail.com'),
(9, 22, 2, 'delivery basis', 'ghhhhh', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(10, 22, 2, 'gaurantee warranty', 'gjhy', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(11, 22, 2, 'delivery schedule', 'iokjkj', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(12, 22, 2, 'payment terms', 'iuijuhjgbhn', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(13, 22, 2, 'validity of offer', 'jnhg', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(14, 22, 2, 'security BG', 'nb', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(15, 22, 2, 'liquidity damage', 'njmm', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(16, 22, 2, 'remarks', 'hjnm', '2018-12-29 10:51:08', '131', 'vender@ilab.com'),
(17, 22, 3, 'delivery basis', 'ew', '2018-12-31 15:06:46', '132', 'ven121@gmail.com'),
(18, 22, 3, 'gaurantee warranty', 'ww', '2018-12-31 15:06:46', '132', 'ven121@gmail.com'),
(19, 22, 3, 'delivery schedule', 'ee', '2018-12-31 15:06:46', '132', 'ven121@gmail.com'),
(20, 22, 3, 'payment terms', 'rr', '2018-12-31 15:06:47', '132', 'ven121@gmail.com'),
(21, 22, 3, 'validity of offer', 'yty', '2018-12-31 15:06:47', '132', 'ven121@gmail.com'),
(22, 22, 3, 'security BG', 'yttt', '2018-12-31 15:06:47', '132', 'ven121@gmail.com'),
(23, 22, 3, 'liquidity damage', 'ttt', '2018-12-31 15:06:47', '132', 'ven121@gmail.com'),
(24, 22, 3, 'remarks', 'rrr', '2018-12-31 15:06:47', '132', 'ven121@gmail.com'),
(25, 22, 4, 'delivery basis', 'ewwwe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(26, 22, 4, 'gaurantee warranty', 'ewewwe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(27, 22, 4, 'delivery schedule', 'ewewew', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(28, 22, 4, 'payment terms', 'wewwe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(29, 22, 4, 'validity of offer', 'ewewe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(30, 22, 4, 'security BG', 'weewe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(31, 22, 4, 'liquidity damage', 'wweew', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(32, 22, 4, 'remarks', 'ewewwe', '2018-12-31 15:27:47', '132', 'ven121@gmail.com'),
(33, 22, 5, 'delivery basis', 'ff', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(34, 22, 5, 'gaurantee warranty', 'rr', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(35, 22, 5, 'delivery schedule', 'tt', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(36, 22, 5, 'payment terms', 'yy', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(37, 22, 5, 'validity of offer', 'ii', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(38, 22, 5, 'security BG', 'yy', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(39, 22, 5, 'liquidity damage', 'uu', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(40, 22, 5, 'remarks', 'aaa', '2018-12-31 15:30:13', '131', 'vender@ilab.com'),
(41, 22, 6, 'delivery basis', '3 week Of delivery', '2019-01-01 11:11:10', '132', 'ven121@gmail.com'),
(42, 22, 6, 'gaurantee warranty', 'ewewwe', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(43, 22, 6, 'delivery schedule', '5e ', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(44, 22, 6, 'payment terms', 'wewwe', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(45, 22, 6, 'validity of offer', 'ewewef', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(46, 22, 6, 'security BG', 'fd ', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(47, 22, 6, 'liquidity damage', 'wweew', '2019-01-01 11:11:11', '132', 'ven121@gmail.com'),
(48, 22, 6, 'remarks', 'dd ewwe', '2019-01-01 11:11:11', '132', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_item_misc_temp`
--

CREATE TABLE `Ilab_master_rankorder_bid_item_misc_temp` (
  `Slno_rankorder_misc` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `rankorder_id_slno_misc` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_item_temp`
--

CREATE TABLE `Ilab_master_rankorder_bid_item_temp` (
  `Slno_rankorder_item` int(11) NOT NULL,
  `Rankorder_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) NOT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_logistics`
--

CREATE TABLE `Ilab_master_rankorder_bid_logistics` (
  `Slno_rankorder_item` int(11) NOT NULL,
  `rankorder_id_slno` int(11) NOT NULL,
  `bid_master_id_com` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `from_location` varchar(255) NOT NULL,
  `to_location` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_unit_price` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm_item_slno` varchar(255) NOT NULL,
  `mr_item_slno` varchar(255) NOT NULL,
  `bid_slno` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_logistics_temp`
--

CREATE TABLE `Ilab_master_rankorder_bid_logistics_temp` (
  `Slno_rankorder_item` int(11) NOT NULL,
  `rankorder_id_slno` int(11) NOT NULL,
  `bid_master_id_com` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `from_location` varchar(255) NOT NULL,
  `to_location` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_unit_price` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm_item_slno` varchar(255) NOT NULL,
  `mr_item_slno` varchar(255) NOT NULL,
  `bid_slno` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_bid_temp`
--

CREATE TABLE `Ilab_master_rankorder_bid_temp` (
  `Slno_rankorder` int(11) NOT NULL,
  `Bid_master_id_rankorder` int(11) NOT NULL,
  `Bid_ref_no` varchar(255) NOT NULL,
  `Bid_vendor_id` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_of_bid` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_bid_id` int(11) NOT NULL,
  `comment` text,
  `comment_by` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `resubmission` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_item_total`
--

CREATE TABLE `Ilab_master_rankorder_item_total` (
  `Slno_rankorder_item_total` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `rankorder_id_slno_total` int(11) NOT NULL,
  `sub_total` decimal(65,4) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_assumption_charge` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_rate` varchar(255) DEFAULT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_rankorder_item_total`
--

INSERT INTO `Ilab_master_rankorder_item_total` (`Slno_rankorder_item_total`, `master_bid_id_com`, `rankorder_id_slno_total`, `sub_total`, `total_tax`, `total_price`, `user_assumption_charge`, `date`, `currency_rate`, `Bid_slno`, `currency_name`, `Vendor_id`) VALUES
(1, 22, 1, '1253177.1200', '3.56', '1968.56', '0.00', '2018-12-31 15:26:38', NULL, '132', '', 'ven121@gmail.com'),
(2, 22, 2, '1253177.1000', '6755', '1259932.00', '0.00', '2018-12-31 15:26:42', NULL, '131', '', 'vender@ilab.com'),
(3, 22, 3, '930.0500', '100', '1030.00', '0.00', '2018-12-31 15:26:47', NULL, '132', '', 'ven121@gmail.com'),
(4, 22, 4, '53885507.0000', '0.00', '53885507.00', '0.00', '2018-12-31 15:27:47', NULL, '132', '', 'ven121@gmail.com'),
(5, 22, 5, '221.0000', '56', '277.00', '0.00', '2018-12-31 15:30:13', NULL, '131', '', 'vender@ilab.com'),
(6, 22, 6, '209.0000', '0.00', '209.00', '0.00', '2019-01-01 11:11:11', NULL, '132', '', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_rankorder_item_total_temp`
--

CREATE TABLE `Ilab_master_rankorder_item_total_temp` (
  `Slno_rankorder_item_total` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `rankorder_id_slno_total` int(11) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_assumption_charge` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_rate` varchar(255) DEFAULT NULL,
  `Bid_slno` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_session_history`
--

CREATE TABLE `Ilab_master_session_history` (
  `slno_history` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT '0',
  `browser_detail` text,
  `ip` varchar(255) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `logout_time` time DEFAULT NULL,
  `logout_date` date DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here user history of login';

--
-- Dumping data for table `Ilab_master_session_history`
--

INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(1, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.5', '2018-09-01', '16:30:19', 2, '16:30:23', '2018-09-01', 's022kkoa7b2ljjqbq8cs8vr6jcnl81ls'),
(2, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.5', '2018-09-01', '16:37:11', 1, NULL, NULL, 'nqjd637iepti5timmpqustb36mcjkaqu'),
(3, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-03', '13:57:23', 1, NULL, NULL, 'hbh50h5vdeu3l0odio41uhmq8f3bu3ao'),
(4, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-03', '13:57:31', 1, NULL, NULL, 't7frtncsd01pkhnemlj19brj621qp04g'),
(5, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-04', '13:08:42', 1, NULL, NULL, '2146n89ol1sqjaj4v0cukg4r05v586q3'),
(6, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-04', '13:08:48', 1, NULL, NULL, '7ijpend61rmhqcojbqikt2i8rqnmrq11'),
(7, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-04', '20:07:31', 1, NULL, NULL, '7rb9tk50q54pu74upisj4v8t84o3samo'),
(8, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-05', '12:31:29', 1, NULL, NULL, 'ans0qcjdbcsje7sjgfne2986s22ajamt'),
(9, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-05', '12:32:01', 1, NULL, NULL, 'a6e40arkn7d2s8pphv32va4afhkg9ode'),
(10, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-05', '12:36:52', 1, NULL, NULL, 'na3mbe4kp4rcukoqnkib9rrl045vqpef'),
(11, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-05', '17:16:24', 1, NULL, NULL, 'c8qnqqqbfriqlp083a26o3ms9pjl066a'),
(12, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-05', '20:09:24', 1, NULL, NULL, '2jprfmajuqgj1rneih2q94a7kbismrfa'),
(13, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-07', '14:01:30', 1, NULL, NULL, 'hlkgpjc4dna3oh029c7h56rr34kps1bi'),
(14, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-07', '14:01:47', 1, NULL, NULL, 'e0dqnorftfu4di1r75rukd1daoedq7re'),
(15, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-08', '12:06:27', 1, NULL, NULL, '8pshl7gp3qlno7jnsd1kr9vjujsl5gcd'),
(16, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-08', '12:06:32', 1, NULL, NULL, 'v8rk8f5lg9177pa5973qgj6bsoa3q1mk'),
(17, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-08', '15:21:17', 1, NULL, NULL, 'jn1dkojp6c7ggpj2a78l6d7q5pqjcji4'),
(18, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-10', '15:34:28', 1, NULL, NULL, '96rp8os637fb27eop1n7j4on5fa8fpsf'),
(19, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '127.0.0.1', '2018-09-10', '15:34:41', 1, NULL, NULL, '3ks11npcbcphal23u35co192so5e4gcm'),
(20, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-10', '18:22:59', 1, NULL, NULL, '2tear5shiqp0hg4pba248ls62ocdbj6r'),
(21, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-11', '16:27:50', 1, NULL, NULL, 'ffq6jquq5c0cam8hgvtgmc7sc35nc2gb'),
(22, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-11', '20:02:24', 1, NULL, NULL, '28clfjmnnn96sdql17p413mtc4iuif2q'),
(23, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.2', '2018-09-11', '21:14:30', 1, NULL, NULL, 'ullqonttvbdiujftndvgjdjve0ftffml'),
(24, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-12', '12:41:38', 1, NULL, NULL, 'i6tk04odo5kq0ahoam6r3nai7gis0slf'),
(25, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-12', '19:25:29', 1, NULL, NULL, 'cci56sdm4mmhl8ankce2bo84smjrvmia'),
(26, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.3', '2018-09-13', '12:28:04', 1, NULL, NULL, '3tfvfb6kpvtn74id6icr57mg5fr9hnu8'),
(27, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-13', '13:18:10', 1, NULL, NULL, 'm5nu8chj44te44cqdsdcaodr3eg4fu3b'),
(28, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-13', '16:52:18', 1, NULL, NULL, 'pkaphi0pb21duad383odehart5p82de0'),
(29, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.5', '2018-09-13', '17:59:34', 1, NULL, NULL, 'o2aihgftdd4b4fnrfen0b46fq8as4ub3'),
(30, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-14', '13:25:33', 1, NULL, NULL, 'l9t7kufn89i2hkljo7ra91n35t4knvrt'),
(31, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.2', '2018-09-14', '14:44:19', 1, NULL, NULL, 's5u3ceg1i2p0rl7u09li0h687lv5kn0c'),
(32, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.2', '2018-09-14', '20:03:38', 1, NULL, NULL, 'v1svq1e3k8dsa7cj301emtjhptcmk88d'),
(33, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-14', '20:34:01', 1, NULL, NULL, 'qrfofapt25hnqf4cur4cofhg2g9ljvms'),
(34, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-14', '21:31:35', 1, NULL, NULL, '6ui1tkhubkaf27eelcibo00jmq5uukfu'),
(35, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-15', '13:05:18', 1, NULL, NULL, '4g6g21e9sc28u2u16hi3ldj99313n0mn'),
(36, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-15', '18:25:20', 1, NULL, NULL, 'cn0c6vg850ogk6fp77t3t9nk1vkk1a6u'),
(37, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-17', '12:02:04', 1, NULL, NULL, '521r8p2e16aag6hot7v4tsmcaci9lba0'),
(38, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-17', '12:24:04', 1, NULL, NULL, '31oj6gsvkv09a0134asud7mcmnj52jsi'),
(39, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-17', '13:01:59', 1, NULL, NULL, 't6j83jqrqpvnm2i557sib9i0o5tnkha2'),
(40, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.2', '2018-09-17', '13:44:38', 1, NULL, NULL, 'h60b9doab3t6jc6arhsuaknobn9982q1'),
(41, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-17', '18:30:36', 1, NULL, NULL, 'j021dk159vgsres47ta4n5sit10g2ab0'),
(42, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-18', '11:34:51', 1, NULL, NULL, 'mnt2bvoshcjrt2kapgas2bq2osj777k2'),
(43, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.2', '2018-09-18', '15:49:51', 1, NULL, NULL, '4td65v6nvmlvmnvf9c6rr9s2bkm5iflb'),
(44, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-20', '13:00:47', 1, NULL, NULL, 'ghrvgb21qpd9spunhgnhcufjq9eavgk8'),
(45, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.2', '2018-09-20', '15:21:48', 1, NULL, NULL, '97p94vmekcaabhq3i8ir0mjceku8agft'),
(46, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-20', '18:33:01', 1, NULL, NULL, '28ues4on2ac15fee3rom738io2dp4ui1'),
(47, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-21', '12:16:36', 2, '12:17:24', '2018-09-21', 'slr2i5nr6gaqu9isreekc7e56if0593m'),
(48, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-21', '12:17:41', 1, NULL, NULL, 'hq0a63t5l1vea2sr1iv43t03tk758pn5'),
(49, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-21', '12:21:46', 1, NULL, NULL, 'l4bcjut7hkl938blckpl7oo0r56rdb8b'),
(50, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-21', '12:58:10', 1, NULL, NULL, '9saf87babcia1u89ojuq5efm6gcgjhvp'),
(51, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-21', '17:49:02', 1, NULL, NULL, 'deke4td1v8gkj23jklbs4k1785i9knok'),
(52, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-21', '18:27:46', 1, NULL, NULL, 'ohpo17fb7rojqpfmsm1rgk4f5tjo2he6'),
(53, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"69.0.3497.100\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"}', '192.168.0.2', '2018-09-21', '19:38:06', 1, NULL, NULL, '6gapr8m7gb3pgkjjr4hh4bt0u2svuogc'),
(54, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"69.0.3497.100\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"}', '192.168.0.2', '2018-09-22', '12:36:14', 1, NULL, NULL, 'k8s2gvct2s7m787kvsp4fpd9hj7k0af2'),
(55, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-22', '12:46:25', 1, NULL, NULL, 'iocp431ac59h5tejh8gknec3n1e5vark'),
(56, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-22', '12:47:45', 1, NULL, NULL, '1b94aktq7pffkat50g5bp4ru0e761fa5'),
(57, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"69.0.3497.100\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"}', '192.168.0.2', '2018-09-22', '17:30:36', 1, NULL, NULL, 'p897844far972qs652tk485odck3do0i'),
(58, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-22', '17:41:44', 1, NULL, NULL, 'f1i1lpbcse2ivog1n7213koblrvvdm0f'),
(59, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-24', '12:08:12', 1, NULL, NULL, 'spbsfkbpkog35tp2br1fhrkg9ic8sh4n'),
(60, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-24', '12:13:15', 1, NULL, NULL, 'q6fqrt0rosicmf3s8d4j2k993nj0lc7g'),
(61, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-24', '12:34:06', 1, NULL, NULL, 'qeis8s0u3usnrvev51qe81p3rp3s81el'),
(62, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-24', '15:52:08', 1, NULL, NULL, '6u7b5a66sbpo1prlj708sg73sh1d5aro'),
(63, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-24', '17:48:44', 1, NULL, NULL, 'gugolifvjs3fk7e3rfc91lfrmcan6bge'),
(64, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-25', '12:42:17', 1, NULL, NULL, 'dnsj1l1cs0harpbu3s43ctmgsd9r2b52'),
(65, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-25', '12:51:56', 1, NULL, NULL, 'k567sqp2nshgoa8tvvs88bjnmnduddfo'),
(66, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-25', '15:21:21', 1, NULL, NULL, 'qni339loahq2eb2jlskqa9d0hn5fbb6i'),
(67, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-26', '14:35:54', 2, '14:36:22', '2018-09-26', 'p6magfeng79c13upaq4g15th02brpvmg'),
(68, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-26', '14:36:55', 2, '14:37:56', '2018-09-26', 'viuqvf546k1aao3essfh9tlrr36g5jp9'),
(69, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-26', '14:38:12', 2, '14:38:18', '2018-09-26', 'splu21svtteu2nt6gdfodbtfm1lc8p85'),
(70, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-26', '14:39:11', 1, NULL, NULL, 'f8t1o80u0r9pem5723jurdhcegrodene'),
(71, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-26', '15:32:26', 1, NULL, NULL, 'jsv78ieiiaigtq0dpbifogjs11nulb3l'),
(72, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-27', '12:39:28', 1, NULL, NULL, 'io62k6ncul2nvg1cuceefhbr32379nnh'),
(73, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-27', '13:05:12', 2, '13:05:58', '2018-09-27', 'vs4etcon0nmn5a87dqi12lom39i2mgb7'),
(74, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-27', '13:07:00', 2, '13:07:03', '2018-09-27', '31duo9gbb5cb3jpkgr18t37c3mjo014n'),
(75, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-27', '13:07:17', 1, NULL, NULL, 'eabod0o5067u322h88hne6jv31642q3i'),
(76, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-27', '20:49:15', 1, NULL, NULL, '4st9oq3i8d4i1kcutq4vrg8sec1g0iot'),
(77, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '12:39:28', 1, NULL, NULL, 'j7t2qbmpmiigj6tsf49731cfre9cg4gr'),
(78, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-28', '12:41:04', 1, NULL, NULL, 'ikn9kneeev552sddskts59dtdl1emfmr'),
(79, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '12:50:39', 2, '12:50:49', '2018-09-28', 'tam5tcuuca6qaqj3gujfg9ijf1utk8u3'),
(80, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '12:50:59', 1, NULL, NULL, 'mvief0jff04pf6pkapha1gr0unlu1bo4'),
(81, 'bu2@ilab.com', 'bu user2', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '12:52:16', 1, NULL, NULL, '48hf1josnl64c8dgifkgdsfops2heckj'),
(82, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-28', '13:19:41', 1, NULL, NULL, 'peqsp6dimkq0g6iivvhpthg6k73c1dk7'),
(83, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '15:50:29', 2, '15:50:55', '2018-09-28', 'u53a340np5u7218sd11tvv6ei9kpc746'),
(84, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '15:51:13', 1, NULL, NULL, '6esnfauktm0pnn8ssutp98393aan4fed'),
(85, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-28', '15:51:20', 1, NULL, NULL, 'olk6nfp1lfghunrce6l7n25sevlkl3ua'),
(86, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '16:43:00', 1, NULL, NULL, 'vhohpuamucs6kv8l87n0t6eci5da1cs4'),
(87, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-28', '17:42:33', 1, NULL, NULL, 'l42oalgl2bioudpit3jbs52p1bbea0m6'),
(88, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '17:42:56', 1, NULL, NULL, '3t7ha83ei4fgrff31vgbo7d75hd877me'),
(89, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '18:01:57', 1, NULL, NULL, 'utva44q0bpkqtv1kibfb3pr5tfrlefuj'),
(90, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '20:37:18', 1, NULL, NULL, '95s7ecm71s5706v7dqqlmdmmff6uqaim'),
(91, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-28', '21:09:45', 1, NULL, NULL, 'k782u6uc864iau6ne4eap6jsbu8uri6a'),
(92, 'bu2@ilab.com', 'bu user2', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '21:12:27', 1, NULL, NULL, 'n2hrunh16tcll6s88mkrhe83qa7joa3p'),
(93, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-28', '21:26:42', 1, NULL, NULL, 'i4vr1tkg72bs0qvu3llva05abakhspsj'),
(94, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-09-28', '21:26:47', 1, NULL, NULL, 'c7hhub6827hspmt7otsfuhd2m40uts8j'),
(95, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-29', '11:27:00', 1, NULL, NULL, '7tt0hfr8fl1uh1ut8r9tj4jp5lprvte2'),
(96, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '11:59:21', 1, NULL, NULL, 'r4f7nvkr5llalfqnvdsqjorqgkil0683'),
(97, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '12:07:21', 1, NULL, NULL, 'e4llbban9r04g3jgikvsdeeig17o0ev8'),
(98, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-09-29', '14:37:27', 1, NULL, NULL, 'muvii8mffjps4tekv4e6uo0667l502kq'),
(99, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '14:41:35', 1, NULL, NULL, 'vuv06eubvhj7bo6lkumm09laop08pu37'),
(100, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '14:41:54', 1, NULL, NULL, 'qo9o9fbca238rbvofvntge6mbrr0dd71'),
(101, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '14:49:39', 1, NULL, NULL, 'h5arkrelr81ec2gcap7ukcmiou0j5irn'),
(102, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-09-29', '15:06:12', 1, NULL, NULL, 'u2roklisu5v4cmet6ar6222c8biojhqn'),
(103, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-01', '11:40:18', 1, NULL, NULL, 'r11u0sdb85tkr9irs1mb6hvk19tqt6ei'),
(104, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-01', '12:26:45', 1, NULL, NULL, 'lfq30g2humno3ts3m3tuj2ph2ti2oivq'),
(105, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-01', '13:44:09', 1, NULL, NULL, '7jcb301o2n5drifge00aq59u39tdval5'),
(106, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-01', '13:45:19', 1, NULL, NULL, '9d8jcfg1gljh99dhtn8kkcg9h0to0j1f'),
(107, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-01', '13:49:41', 1, NULL, NULL, 'i2o5313bm5bhqnqh0ej5456v8d01gv2l'),
(108, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-01', '14:03:52', 1, NULL, NULL, 'rcdpb5p306t1ah3e3nfnlv82c86idqr8'),
(109, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-01', '14:06:15', 1, NULL, NULL, 'koiifksab5s3t08kuheb8rrevsbr1h71'),
(110, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-01', '17:00:18', 1, NULL, NULL, '5b4juibepq5tepkkjtuo5kgo6h29plkl'),
(111, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-02', '12:54:47', 2, '12:55:30', '2018-10-02', 'taln1oqrshf2o8vcbin6lbvdku9nt6tv'),
(112, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-02', '13:47:54', 1, NULL, NULL, 'nb40m2d8ee01sqrbf9oaqope5oiuf7hr'),
(113, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-02', '18:41:02', 1, NULL, NULL, 'rsghfmqededkdpqh7tci7jrimi40ceri'),
(114, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-02', '18:42:10', 1, NULL, NULL, '3urrh1qfs9uc7j6hhv2hlkasilfibs1u'),
(115, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-02', '18:43:42', 1, NULL, NULL, 'ed4u156ai54htltbfk8p322u3gkffrr0'),
(116, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-03', '12:30:30', 1, NULL, NULL, 'ud6eptj2sh25l3io8l8820q5gek7660p'),
(117, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-04', '12:45:10', 1, NULL, NULL, 'sgo7eg7jg5j9prfbhol08vtuo5hvamui'),
(118, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-08', '12:45:46', 1, NULL, NULL, 'hhtihkfm29tuiklbr1265b5s8i7ruj5j'),
(119, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.5', '2018-10-08', '18:03:48', 2, '18:04:37', '2018-10-08', '91fmm8bg8hcq2bfbldtnpj53qosqr0s6'),
(120, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.5', '2018-10-08', '18:05:25', 1, NULL, NULL, 'k47fmas6u1odt79huvdc2qfj3985klr2'),
(121, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-08', '18:40:02', 1, NULL, NULL, 'jbmofokrs25cr40q5kin9sui6et927aq'),
(122, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-09', '12:43:29', 1, NULL, NULL, 'emae2f8idtu8ahut3u7cmtr73vkqejac'),
(123, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '12:54:27', 1, NULL, NULL, 'rlr1700v12srgn6sg1ho4ekqe2va82gr'),
(124, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '12:56:20', 1, NULL, NULL, '8cnh0hvds9a5iki69biq1ovt233r6hp5'),
(125, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '13:09:58', 1, NULL, NULL, '08ato4hqikqia0l32nkgt4nr2qfrnhm5'),
(126, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '13:15:21', 1, NULL, NULL, 'bj1boko6s7i4l51frac7ook13uupsfse'),
(127, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '14:11:02', 1, NULL, NULL, '67vp33ro51284neq37sljc9lhkv3jp9i'),
(128, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '14:11:22', 1, NULL, NULL, '4hjtl9moh1aeftcdh1lna8hu2ludmhm2'),
(129, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '14:15:46', 1, NULL, NULL, '7tjfa65pjkececpo6khotvklmatrhhqa'),
(130, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '14:16:55', 1, NULL, NULL, '2gurk6c8tesnec4mdi3r7oiihnfvl7qc'),
(131, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '14:22:04', 1, NULL, NULL, '4foo4u3laihibb20k6sciklfdprebssa'),
(132, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '15:07:30', 1, NULL, NULL, '56ilncblhbjhg9ncjteuki7ntdv4710q'),
(133, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '15:08:28', 1, NULL, NULL, '443kpn4oii6h5urlrqoams0rgje0du50'),
(134, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-09', '15:44:27', 1, NULL, NULL, 'p9mb5lhuk4p9njcdrv6mt3jq41a8k9ci'),
(135, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-09', '16:18:17', 1, NULL, NULL, 'is4si7pns0lrn5c8843bsi23oc9g96e8'),
(136, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-09', '16:33:15', 1, NULL, NULL, 'ik1s1tq79pc6iuadn67dq627cttcpki5'),
(137, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-09', '19:43:47', 1, NULL, NULL, 'o38s5j6dg81b13v7bsc7fq5834kic5fs'),
(138, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-09', '20:16:30', 1, NULL, NULL, '54b42dukn78g6a1aq1uh7hn10913feha'),
(139, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-09', '20:36:07', 1, NULL, NULL, '33o5cnpshtv4hi229d9ih5k1qdkenams'),
(140, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-09', '21:20:03', 1, NULL, NULL, 'o09rejcu4k131b04k00a3q6ddlgiour0'),
(141, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-10', '12:39:06', 1, NULL, NULL, 'osgqnkqdbrpgr5819avfmigdl5imicmv'),
(142, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.5', '2018-10-10', '15:36:38', 1, NULL, NULL, 'd305fvva5jhh9mnkfvr347ss0ollnd7l'),
(143, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.3', '2018-10-10', '20:58:39', 1, NULL, NULL, 'h9g96isjk5cn7goqhn3r3orgisinm9si'),
(144, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '12:54:07', 2, '12:56:48', '2018-10-11', 'ii0grevhs559qo60g8l4i2nv1038p9q5'),
(145, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '12:57:09', 1, NULL, NULL, 'shnqkbjt1d7ugbjq1r9jvrdl0hhrba96'),
(146, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '13:11:29', 1, NULL, NULL, 'ol6nk0tk3rh5bppg2pcjoilogn2dceka'),
(147, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.2', '2018-10-11', '15:00:26', 1, NULL, NULL, 'ictk7sef374d2jceo0i8bn5dnua2r6qr'),
(148, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '21:13:29', 1, NULL, NULL, '2bmdo19dhqtgjk953o3kkgipvpsp0csb'),
(149, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '21:16:19', 1, NULL, NULL, 'cn8orn8mgm0hdt8n8seej020fq1ds9nl');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(150, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '21:18:04', 1, NULL, NULL, 'kpb5gpslphk13ghivoldjn3tclq4o2v2'),
(151, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-11', '21:32:37', 1, NULL, NULL, 'dmsmc1goat4l9pt0alpoc64u6di7l0km'),
(152, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-12', '14:24:52', 1, NULL, NULL, '1q9kl8j805u45qfvjl85sfr5ngmrvna2'),
(153, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-12', '15:38:23', 1, NULL, NULL, 'tg5pklv7isuailarvr0dhv8hb9gj05s9'),
(154, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.3', '2018-10-12', '16:20:28', 1, NULL, NULL, '56isvlj9dvoktprm6qgva2bvjvsqjs6b'),
(155, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.3', '2018-10-12', '20:51:22', 1, NULL, NULL, 'k38rkdrmas9e6va1on4fa1u33uu2ajl9'),
(156, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-13', '13:39:02', 1, NULL, NULL, '06ceo5n0nlv3jshvh4co3bl1ooqk88p0'),
(157, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"62.0.3175.0\",\"platform\":\"Windows 7\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/62.0.3175.0 Safari\\/537.36\"}', '192.168.0.3', '2018-10-13', '15:53:48', 1, NULL, NULL, 'kh90gib9n2nd1vsn8heoiain7jefeimp'),
(158, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-13', '18:09:20', 1, NULL, NULL, 'c025ot77enta6chu97cl35ld559pe0cu'),
(159, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-13', '20:34:50', 1, NULL, NULL, '159f4og5a5r686dfr5r48mclrear7dbu'),
(160, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-13', '21:19:49', 1, NULL, NULL, 'dt5t7oo3r7vojhejdqbm8hs8mml78bq3'),
(161, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-15', '16:55:37', 1, NULL, NULL, '2lmo311ddp33ck2o81vi1cba5fp3brjq'),
(162, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-15', '17:40:38', 1, NULL, NULL, 'r0hbdelm45ntsimmn2cdr8804qmcomli'),
(163, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-15', '18:35:07', 1, NULL, NULL, 'qbjg7lm0q7p8ivmssjahthv0g4n1f950'),
(164, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-15', '18:40:46', 1, NULL, NULL, '03hljgirg47n0dlgi4ph847oqkn9vbv7'),
(165, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-16', '13:39:32', 1, NULL, NULL, 'cj0lfdlu24qrtd2v0itspuaeet4mc5ev'),
(166, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-16', '19:01:34', 1, NULL, NULL, 'lk8il7ogrcno0eauqs73tnlet0ft4e6d'),
(167, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-20', '12:14:20', 1, NULL, NULL, 'dhmof11lnlpjhdpude7on8bs2est0pl8'),
(168, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-20', '13:36:58', 1, NULL, NULL, 'mit84o8bq3l3dn7a7a1117ie3vb09pvl'),
(169, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-20', '14:05:13', 1, NULL, NULL, 'o04vg2pe4g69ubfmnistoo0lbm34cf29'),
(170, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-20', '14:11:02', 1, NULL, NULL, 'i0us2lduhmbuejcv0j7ua0dt29mtpjk9'),
(171, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-20', '15:25:37', 1, NULL, NULL, 'cm2ikfv9kiujt8sb5b5a6hspjmnuc89d'),
(172, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-22', '12:08:57', 1, NULL, NULL, 'as0gq4bs8vgtduf0f12463h2rism88rn'),
(173, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-22', '12:48:11', 1, NULL, NULL, 'skhj513nhhl49hknik4hd9gph237jt2p'),
(174, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-22', '13:09:46', 1, NULL, NULL, 'r69cq554g6tj18pn31sr4hdk5s8b5ec8'),
(175, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-22', '15:43:30', 1, NULL, NULL, 'nl5krv95gvrh8iaaidk8tokoai72msfh'),
(176, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-22', '17:51:10', 2, '17:51:16', '2018-10-22', 'h0c2ce6ms3ai40edh13aj4bgj1nvhed6'),
(177, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-22', '17:51:22', 1, NULL, NULL, '5hajpo7vcfnpm1r4b8u02thrq3n04n2q'),
(178, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-23', '12:29:12', 1, NULL, NULL, 'vilhtsj5ncne5vc4a8j47cdt84se96bn'),
(179, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-23', '14:54:24', 1, NULL, NULL, 'okpv5k5i943m30td3v8psb5rcoukmtjg'),
(180, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-23', '14:58:24', 1, NULL, NULL, 't35644svvp70rq109rdesg12la239n37'),
(181, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-23', '15:01:14', 1, NULL, NULL, 'krhbriubmp7jk99pifh94ouje06laatu'),
(182, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '16:09:47', 2, '16:14:19', '2018-10-23', 'fjef3in98ue345ac9n1rf1av7nm8mhu2'),
(183, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '16:15:05', 1, NULL, NULL, 'umqif0mpa164b0g75f37so7nu9v4en9n'),
(184, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '20:00:56', 1, NULL, NULL, 'vjk2a6vubd1a24akfh8do5moksnc0etp'),
(185, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '20:01:45', 1, NULL, NULL, '2bm1rl7hppjfrin07pojauo97gfd702q'),
(186, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '20:02:19', 1, NULL, NULL, 'mda83gohqgiku48bhdgtucmmvefd2a89'),
(187, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.6', '2018-10-23', '21:09:01', 1, NULL, NULL, '3m91rc8841i2v9g9fq2dor6u265lele9'),
(188, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-23', '21:13:31', 1, NULL, NULL, 'fbfon42skomoriniotibj6chhpsft4eb'),
(189, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '13:03:28', 1, NULL, NULL, 'd24kqkgga8mll1ia4va9qfmnqv2mc7c4'),
(190, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '14:20:00', 1, NULL, NULL, 'eui8ml34s9nq3ihshn1aq68qa20bucg5'),
(191, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '14:21:28', 1, NULL, NULL, 'kkfso2jtinu778as803u5s6032g4q13f'),
(192, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '14:22:35', 1, NULL, NULL, 'b05befrs9urjslr6oj216r1utfk1395d'),
(193, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '14:53:56', 1, NULL, NULL, 'q4mdokf2ghhlgiu27300thghhfbbbgsm'),
(194, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '15:04:43', 1, NULL, NULL, 'h6gdq46p7ctmefk2rm5kk2fj4b24om1k'),
(195, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '17:22:03', 1, NULL, NULL, 'r1d2eh5bfb25ljja8i9g7o5v9t3dd4nf'),
(196, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '17:36:23', 1, NULL, NULL, 'hpij6129grgjmugb2q4cp5rq7ebk7jga'),
(197, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '21:26:25', 1, NULL, NULL, '4uqqelttcmbkua3flov00m81s3kt9702'),
(198, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-24', '21:28:57', 1, NULL, NULL, 'fi55sqqkou9109df2e60nnegom897dkh'),
(199, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}', '192.168.0.4', '2018-10-25', '12:22:02', 1, NULL, NULL, 'dfmip39or3iuqk78n64ogihhv0lgpsh3'),
(200, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-31', '14:55:32', 1, NULL, NULL, 't9acn1e2phnt1t6oqvd0nkloddbm0kpf'),
(201, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-31', '15:24:12', 1, NULL, NULL, 'nrib0k24vimk83n4dtfqhq4n3v7uaei1'),
(202, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-31', '16:02:26', 1, NULL, NULL, 'iotgj73d1c37n486smprf9phjc6c206q'),
(203, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-31', '16:04:44', 1, NULL, NULL, 'i03c52celcrc50dn08gloenea6011c38'),
(204, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-10-31', '16:23:25', 1, NULL, NULL, 'h7rcttf3f07is66j8ng7ogdr5o0lcfih'),
(205, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-10-31', '16:36:17', 1, NULL, NULL, 'd2icrecrp1it7nm8esbi3h9j5cgend35'),
(206, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-01', '11:46:48', 1, NULL, NULL, 'ic4rkm34n51v75f8b4msrecup1v1kbse'),
(207, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-01', '12:25:57', 1, NULL, NULL, 'ui5f7pss5apd3ctmp6crj3jc5vnfj692'),
(208, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-01', '17:19:14', 1, NULL, NULL, 'drpbbhksi6brl45m21rl9oflodjpedsb'),
(209, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-01', '17:42:27', 1, NULL, NULL, 'dru9gm2tju190o9t8bjrjmhfahi1m5kc'),
(210, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '12:48:07', 1, NULL, NULL, 'kem43catj1leg2si1bgq791jog1v3nmi'),
(211, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:18:46', 1, NULL, NULL, '5kovotleigs4k9hibhpetads2n67j8be'),
(212, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:21:11', 1, NULL, NULL, 'mv7inllmpra9p7e5gdsevaucafsv6vvb'),
(213, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:29:16', 1, NULL, NULL, 'jsbome5fsrdj4q1v9ei0ni7jtom5ii9b'),
(214, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '13:35:55', 1, NULL, NULL, 's52oeer2b7752e844dpo1be0rvn305j9'),
(215, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:42:01', 1, NULL, NULL, 'kbbr9r4e4dclet4ed3eo8jsi9c6fk7al'),
(216, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:42:48', 1, NULL, NULL, 'kq180bogb639g56fo4a5btrmi64s5p7i'),
(217, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:43:27', 1, NULL, NULL, 'd4m337fgubjr6j1ekh2slr1ch75p7e3r'),
(218, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:50:37', 1, NULL, NULL, 'mne6bbhgs1ek75u2ikqtveauuq04bpco'),
(219, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:51:56', 2, '13:52:27', '2018-11-02', 'vd6r21jqssdvolh5q72aa0jm7o7mia22'),
(220, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '13:53:37', 1, NULL, NULL, '5ehds5a2mf06q8il76dvlegap8phug2e'),
(221, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '13:56:12', 1, NULL, NULL, 'asfdtbmt7emagcthg6j2nemogjspu7b2'),
(222, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '14:14:24', 1, NULL, NULL, 'gvotd8s7dta1tqk82pgo1c5f2tv5l0st'),
(223, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '15:52:54', 1, NULL, NULL, 'h4q2e82n7d8un7426aue89q8o1lt7u5m'),
(224, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '16:30:37', 1, NULL, NULL, '2ma6782vc783b3frvh1g3gk7d5uh8cvt'),
(225, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '16:32:32', 2, '16:34:23', '2018-11-02', 'lutog33u5lbv0isdg3287o9i612tcftt'),
(226, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '16:34:55', 1, NULL, NULL, '86008vgl4pavit9ov8h4oad1f1hsbnlr'),
(227, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '16:34:55', 1, NULL, NULL, '5a25bp0adq21nognkle91rpfj53lh77o'),
(228, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '16:34:56', 1, NULL, NULL, '1do8iur2ubu9rbqc6j59scb1a0gum68o'),
(229, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '16:45:41', 1, NULL, NULL, 'tkqkp2jnoqojqcmkugkqeqmff7v71f1a'),
(230, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '17:50:18', 1, NULL, NULL, 'f9q2jrvvu1qls82m21kv6jhpbtgjr0u5'),
(231, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:05:47', 1, NULL, NULL, '46u77uijpfp0gc2eq4nfmemslha5sicc'),
(232, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:06:27', 1, NULL, NULL, 'ugu9actn662u2hpr2uko4168038pq879'),
(233, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:06:27', 1, NULL, NULL, 'geekglvjgot9058hm6vpfoiall1jihjv'),
(234, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:06:27', 1, NULL, NULL, 'q4ghuclcoj5erekfge714oum4vnmj88e'),
(235, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:07:03', 1, NULL, NULL, 'jqo49usg115qdkbvrihudckkb7opeib5'),
(236, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:07:03', 2, '18:07:15', '2018-11-02', '34up86t1t31js8uv7unhnrkb6thh9bbb'),
(237, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:07:46', 1, NULL, NULL, 'bnrlm1rdfadheqndur179i7b6bnfm9a0'),
(238, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:08:44', 1, NULL, NULL, 'c1q0mbo5o9i8gr4akfa0okef0crbtvk7'),
(239, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:09:54', 1, NULL, NULL, 'ajn1hoien594ntblmnffingt65ciprap'),
(240, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:10:56', 2, '18:11:42', '2018-11-02', 'ot43rtpudakscsbp2jdsfbpm2b14ecbq'),
(241, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:11:58', 1, NULL, NULL, '8spoc6e32b5igbi4oos9n1kja4pgj3or'),
(242, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:13:12', 1, NULL, NULL, 'f2f2khh3i37dep2fknbm1jmef68ml6e9'),
(243, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:13:50', 1, NULL, NULL, '5ei6q3b6lddd6tccvgsk71pu7vmg3o0k'),
(244, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:16:05', 1, NULL, NULL, 'l0qt6qh4u4pr40dkbji5q6f27r0dc915'),
(245, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:16:45', 1, NULL, NULL, '52r5pojjtm89iiaf5dcjsq4frpt7t056'),
(246, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:17:18', 1, NULL, NULL, '4fihg80mmo8hceqaoke5k85330klktfu'),
(247, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:18:31', 1, NULL, NULL, 'sedfe06u3vsbochdbdvk8r6dtpui8ru7'),
(248, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:22:56', 1, NULL, NULL, 'ckbqncr6pcuuureg4o16rco8c1s190bv'),
(249, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:23:54', 1, NULL, NULL, 'eg5dn9vs0vr3arg3jok1n6aqq7v4v8ag'),
(250, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:25:33', 1, NULL, NULL, 'tvtdhfk2a7tqihfaljj0hfslgrlglqdp'),
(251, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:30:29', 1, NULL, NULL, '7keal60gotfq73s2431dvaopn43kvfov'),
(252, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-02', '18:30:29', 1, NULL, NULL, '7od0eq59gms4bq57ngphci4lif94cqgm'),
(253, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-11-02', '21:16:07', 1, NULL, NULL, 'piuqh4bv7qt22h12utlm9do5ap0r6fgp'),
(254, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.6', '2018-11-02', '21:38:33', 1, NULL, NULL, 'nkn2d1adtph2sij6934kvg8854928pp3'),
(255, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.6', '2018-11-02', '21:38:33', 1, NULL, NULL, 'bjmibennv8gsn3vtavrftf8c2il6vm87'),
(256, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '11:36:02', 1, NULL, NULL, 's95detkc7pr2lud8p31kinrtfg0ecuam'),
(257, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-03', '11:36:06', 2, '11:38:40', '2018-11-03', 'iiesaksolba88qju90djkuu77l28c806'),
(258, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-03', '11:39:35', 1, NULL, NULL, 'calccb28jpl5gja8n4rhcbs9ccnejqi2'),
(259, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '12:17:33', 1, NULL, NULL, 'uh592ua1eipc935i3a4mq32thcg23apr'),
(260, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '12:26:04', 1, NULL, NULL, 'q9d99s7mqn3lbudmlc1ra58jfabcjbsm'),
(261, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '12:35:55', 1, NULL, NULL, 'kn66h3ksjjmhgfeeeb6g03mu15eb786u'),
(262, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '12:50:32', 1, NULL, NULL, '6h8db4np0lh78e8jdo9gbrjsu7ba1emg'),
(263, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '12:54:19', 1, NULL, NULL, 'pnh016u7s9ujdoha3p33rjj9tp5p172q'),
(264, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '13:00:10', 1, NULL, NULL, 'ik5lggr7da08iispib98lksu21dul14s'),
(265, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '13:00:10', 1, NULL, NULL, 'g7v996s8b7r9pr29879ioajiju1fdgla'),
(266, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '13:04:40', 1, NULL, NULL, 'tdio5gvpcqda7laedvc1r00qss72lc5e'),
(267, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-03', '13:19:25', 1, NULL, NULL, '5h6v7346r53rvoqmjs20jduc35th56mt'),
(268, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '15:50:21', 2, '15:54:06', '2018-11-03', 'ngdgdmc3g0fg9nchs1dhgp3s3dni9nnk'),
(269, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '16:00:49', 1, NULL, NULL, 'cp5s0imf4cuh7jq1foot2520i1obh9b0'),
(270, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '16:57:35', 1, NULL, NULL, '5b56frsme8mlodd77gmq2arlqba4sj2b'),
(271, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '17:24:21', 1, NULL, NULL, 'ir2c60255f449nn2qqtobkeq5s2cqn57'),
(272, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-03', '17:35:41', 1, NULL, NULL, 'sj9kdb2m7sctks2f0m00281ro701j88j'),
(273, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-03', '20:39:15', 2, '20:39:34', '2018-11-03', '7db1hlauomlqtdoadj3cr2ci2dpgjsre'),
(274, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.6', '2018-11-03', '20:50:00', 1, NULL, NULL, 'btipebh1199hbn2oiapbt6ph55h271o6'),
(275, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-05', '16:01:59', 1, NULL, NULL, 'h9sgfjeu5v6knv1k0jojp7ns8qtm0o55'),
(276, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-05', '16:34:42', 1, NULL, NULL, 'o3s38ssrocg50j2t26eur2k2k6o0josj'),
(277, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-05', '16:37:52', 1, NULL, NULL, 'r86pr4utl3sbksa87vlqv66hfdsj8hd3'),
(278, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '16:38:10', 1, NULL, NULL, '1ic6oma9mpoj6uq63r1903ns0ii2a6ki'),
(279, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-05', '16:38:54', 1, NULL, NULL, 'pqlnrdqv6q37rbs0qsuhuv2g1knum7tk'),
(280, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '16:42:01', 1, NULL, NULL, 'r6fmn34t3mdplmgmg0h0bhu9ictv1osi'),
(281, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '17:07:08', 1, NULL, NULL, 'asjj9vnf49jrt48mvkmga6ivpee39heu'),
(282, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '17:07:48', 1, NULL, NULL, 'osokkropfbqfd68a89cu69snbd8h7llv'),
(283, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '17:36:42', 1, NULL, NULL, '4anjo8vkspjsbmiv2rg3n5lflia3disi'),
(284, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-05', '17:36:52', 1, NULL, NULL, 'mgmito2cmi94ilb8r8j1t31sf9vtmvvj'),
(285, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '18:18:37', 1, NULL, NULL, 'jkru9ut94b9bp37lkk89lrojeu2g75v0'),
(286, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '18:25:57', 1, NULL, NULL, '2ja300rf9hi8mpqlcreakjqt6hv5ga7r'),
(287, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-05', '18:41:11', 1, NULL, NULL, 'pk2mltt2p1i5khc1ht5r5qb6e5246elb'),
(288, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '11:41:37', 1, NULL, NULL, '5rdd9ebu3dgt613v8i4khfr9tk3tb936'),
(289, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '11:57:55', 1, NULL, NULL, '5soglhqhnldkeg7mgn6hrv8il1tdcu69'),
(290, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '14:18:18', 1, NULL, NULL, 'jn3bc430geclrvkeu977g1m1vpe17ead'),
(291, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:36:04', 2, '14:40:33', '2018-11-06', '746t4t3pcbt56p85lu2e4jummhm0ht76'),
(292, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:40:48', 2, '14:41:42', '2018-11-06', 's7mrtv1crg8ojh51bnt9gf2ba9o1pqi4');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(293, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:41:52', 2, '14:44:21', '2018-11-06', 's873hsn2hic4af91l3fnp5dgbhv4rcdm'),
(294, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:44:39', 2, '14:45:12', '2018-11-06', 'et1hc3d3guj94mobtid7pn2bfda9usqe'),
(295, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:46:20', 1, NULL, NULL, 'h9jh0u938knkepl9krnoktiq596t5vd0'),
(296, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:51:38', 2, '14:53:40', '2018-11-06', '8c6abilrrrv9b0e1eac85907a6gflft6'),
(297, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '14:52:56', 2, '14:54:30', '2018-11-06', 'skaaquob9lfdn693jahdi4hn5iagteui'),
(298, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:54:11', 2, '14:55:29', '2018-11-06', 'd7rpsqlvs3vareib7sbmhf45heo92lh5'),
(299, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '14:54:44', 1, NULL, NULL, 'vva69ro1ccpmj6ttkknbs6ars53bs134'),
(300, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '14:57:09', 1, NULL, NULL, 'lduhvomq42cn9dijl88m1eno1veq2sp4'),
(301, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:18:25', 1, NULL, NULL, '3pg1rut460u7gt4fn5mvi30u734kvoj2'),
(302, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:19:16', 2, '15:20:30', '2018-11-06', 'p82ds98rf3hhjtqn03g0kjomhur0ntu7'),
(303, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:21:01', 2, '15:23:05', '2018-11-06', 'eros95a42sudr7iufvortr2qr7v29dof'),
(304, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:23:18', 2, '15:23:58', '2018-11-06', 'hb308tkpqsgu9rfc8s3tkf2ce9a0c2sj'),
(305, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:24:10', 2, '15:24:59', '2018-11-06', 'd4edmb9vqfndqaf4iuc4nrap94u1hn4f'),
(306, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:25:29', 2, '15:26:57', '2018-11-06', '9to6a4l5tp7g8sb2qc1vn0qcagoq9g7n'),
(307, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:27:14', 2, '15:28:14', '2018-11-06', '98p2rmcjknffic2ihbmjfoj2slplte00'),
(308, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '15:28:45', 2, '15:30:00', '2018-11-06', 'pre1iqal4v4p9v801su8egeoq09f6rv0'),
(309, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '17:47:20', 1, NULL, NULL, 's0vq9ra237n1nr3pkv3ln5r6tkqqeo3a'),
(310, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '17:58:17', 1, NULL, NULL, 'c1r5i0fqgt5aev5v0ov3i00p1s3a8r2g'),
(311, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-06', '18:18:37', 1, NULL, NULL, 'se06ea83rh9qhgicg2ltt9hn89gkrmac'),
(312, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '18:54:04', 1, NULL, NULL, 'jjfn30a4ivtffp7o1vn5gqu320v81c0n'),
(313, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '18:55:40', 1, NULL, NULL, '9gopegqsjk3ife37nkhg9cpvv30a0bgd'),
(314, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '18:58:19', 1, NULL, NULL, 'g7j7ai1seolljke2fpfstlehdean8c97'),
(315, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '19:11:35', 1, NULL, NULL, '8lsluh8u29hrtqtaj6afq7o5rnogh6dh'),
(316, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-06', '20:50:03', 1, NULL, NULL, 'cfp19bq2lgfnqarmupv5g4m7rubcs4dm'),
(317, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.7', '2018-11-06', '20:50:17', 1, NULL, NULL, 'ng68r52jrirdbtmkqs1br7iusheg953l'),
(318, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.7', '2018-11-06', '21:25:13', 1, NULL, NULL, '38028tnnpu7h3ahik1ih11tj1rn1i0st'),
(319, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.7', '2018-11-06', '21:46:00', 1, NULL, NULL, 'u30gepbmn4cbo1l4bnstlsr6plhdmag2'),
(320, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.7', '2018-11-06', '21:52:07', 1, NULL, NULL, 'pr1ce02donu9jir7c68oq0bfq3f3kgkp'),
(321, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.7', '2018-11-06', '21:52:07', 1, NULL, NULL, '4t990eki56grel1pn5sa5q15gqqdhaca'),
(322, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:44:29', 2, '12:45:01', '2018-11-08', 'b01g584gioe59r2o10fp2dvhtlo1h2lc'),
(323, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:46:47', 1, NULL, NULL, 'ml9ka37enniui7trfego07clqogrrvbh'),
(324, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:47:33', 1, NULL, NULL, 'v46rptkifjtqvegmj6cvnmv2h6dh4i2d'),
(325, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:48:41', 1, NULL, NULL, 'a7ah7h1dq20lrkm23l3m3tbg5rnt2pru'),
(326, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:49:28', 1, NULL, NULL, 'p4l9847khmglc2d2cpbo29tj2d53s2d8'),
(327, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:56:55', 1, NULL, NULL, 'c05m0girn2bkipgpfriju9u6i42mufdh'),
(328, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:56:55', 1, NULL, NULL, 'srpknb7cg2mgh322ec3icrachfoifu63'),
(329, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '12:58:00', 1, NULL, NULL, 'e813scignfq34fh4tmo8t7uiuhg8u77d'),
(330, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '13:02:09', 1, NULL, NULL, 'bfltkjecsd6o0duhk5fk1gf1b9rkmj91'),
(331, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '15:33:06', 1, NULL, NULL, '3p9m37rpqoqavaqn21i8lm8a9nopvofn'),
(332, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '16:23:42', 1, NULL, NULL, 'b4jf6miduivcjrk68lsehpt5v2b4ma2a'),
(333, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '16:24:53', 1, NULL, NULL, '6dggpsi63m60b3fhv2n5h4qnl7f1dr38'),
(334, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '16:28:16', 1, NULL, NULL, '88bvhjh9hc3me2gfhmmcv8sqtovk3gmr'),
(335, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '16:30:54', 1, NULL, NULL, 'a2bgagji53ukk523cbd5ue38hsrmpbu1'),
(336, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '16:49:44', 1, NULL, NULL, 'l8ttn6mg3mevak153j7q4iqo56enb3j7'),
(337, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '17:39:48', 1, NULL, NULL, '3k6h6opur6hql77ud138hv5t955eamcr'),
(338, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '17:43:49', 1, NULL, NULL, 'b9av76sa5k6pv0hb2epkfmk0qgrkmfca'),
(339, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '17:44:37', 1, NULL, NULL, 'fe1tnk5seaf68q04uns5t4heu3ja98nd'),
(340, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '17:46:33', 1, NULL, NULL, 'dgk4ngq1pgil9jsa5ntr1c6avdojhn3b'),
(341, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '17:49:22', 1, NULL, NULL, 'qh1asp9sqtdbtf6gn6pb6cba36sf2o6j'),
(342, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '18:53:46', 1, NULL, NULL, 'mgptmbjhp99b8iaplgp73vjnl6gv845m'),
(343, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-08', '18:55:58', 1, NULL, NULL, '808k7j8jrn93ljsidp0n2sb9u1fufge7'),
(344, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '16:01:54', 2, '16:02:26', '2018-11-09', 'hd8re23aqo0maomajppt4nk721hnf8o4'),
(345, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '16:06:54', 1, NULL, NULL, 'uo68lr43lftp41bomo8qbss4l60lrlsp'),
(346, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '17:36:22', 1, NULL, NULL, 'ptld8urhelanh7meeh5j8dtni3hlulv6'),
(347, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '17:44:13', 1, NULL, NULL, 'oaoom16e0uipmrgdb3nhfk1oq96346sr'),
(348, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '17:53:45', 1, NULL, NULL, 'nac08gh4kjk3k85gdvkpoqhr9nfquofq'),
(349, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-09', '18:54:50', 1, NULL, NULL, 'blge103vetjtiqlg9v2seisrg5ikumr5'),
(350, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '16:57:15', 1, NULL, NULL, 'aie13gbvqhb6u0qjs77tgcvkfjpcm55h'),
(351, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '20:05:54', 2, '20:07:19', '2018-11-10', '8eevnf28f8mst6ieptcgo308i511dtdi'),
(352, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '20:07:50', 2, '20:08:16', '2018-11-10', 'ib9blvjoli804skdperpvcr791704uqg'),
(353, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '20:08:46', 2, '20:09:13', '2018-11-10', 'j4om8nag00dtr7sdbueiqmkd3b9d4k6c'),
(354, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '20:09:38', 1, NULL, NULL, 'cug5g3uspjkqif50f11fmjkt7q9pk88a'),
(355, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-10', '20:12:25', 1, NULL, NULL, 'huqladeeheva5j0eqaol5189jul7t6tq'),
(356, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.7', '2018-11-10', '20:15:07', 2, '20:17:55', '2018-11-10', 'nv9eu95erfgoke3jkti871chq3r69bss'),
(357, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.7', '2018-11-10', '20:19:02', 2, '20:20:13', '2018-11-10', 'gnunj83uu67mmual23l1qosfuv8u1q2c'),
(358, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.7', '2018-11-10', '20:20:49', 2, '20:22:04', '2018-11-10', '6uiqcleflue22jv0uenqa6enamhi0j23'),
(359, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-12', '13:48:56', 1, NULL, NULL, '2bgoa3u91bg5o50ldj8cf808f4ujt68f'),
(360, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-12', '13:51:58', 1, NULL, NULL, '3l9b8nc1jash77d1hlnu7qrq6v4os7nj'),
(361, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.7', '2018-11-12', '20:06:20', 1, NULL, NULL, 'b99lisad2san3de0emucg5l5j9iecnbr'),
(362, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '11:40:02', 1, NULL, NULL, 'tp4e4a3r56c1lnrrfb6lk1agima4fu5c'),
(363, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-13', '12:59:56', 1, NULL, NULL, '7307o1h3f52fgndaa2b1b56c8vpie1lg'),
(364, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '13:38:01', 1, NULL, NULL, 'cjir8uuo8rpto6baln44um9c76sgrvsq'),
(365, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-11-13', '14:55:26', 1, NULL, NULL, 'v5oi0tcfmflue38fvf2gdo6tc1365thr'),
(366, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '15:15:47', 1, NULL, NULL, 'jqv2a4mf5k9u9dlgs27j6fekqma6h1il'),
(367, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '15:16:26', 1, NULL, NULL, '0sbl1uo5k9e06rij0ubksnetn7t92fni'),
(368, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '15:17:22', 1, NULL, NULL, '4macufceov7bkspsqtl83f93b33varge'),
(369, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '15:21:22', 1, NULL, NULL, 'uo9b3a1oem7in39p18tpl3c37s8231jo'),
(370, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-13', '15:33:04', 1, NULL, NULL, 'cggreb8di44p9p6elv3f3irmdb6t98rj'),
(371, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '17:06:17', 1, NULL, NULL, 'l0376vjkq52clf19p82i6on2eskllk6t'),
(372, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '17:47:29', 1, NULL, NULL, '6s408mu9ms93urdrev3sjrulho22tn6o'),
(373, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '17:49:30', 1, NULL, NULL, 'aodfvmofi2ptbju29inb2dg1mrlu4id4'),
(374, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '17:51:46', 1, NULL, NULL, 'cdhgn6q9g5lrafhph0rje8kq3akocng9'),
(375, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '18:38:37', 1, NULL, NULL, '8acd268ctlhm1fi5sffool8v1m3a2ipa'),
(376, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '18:52:41', 1, NULL, NULL, 'rm7bh3t429asl716hkjsjl1egolgncah'),
(377, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '18:58:56', 1, NULL, NULL, 'jm1chclk03qtq2scprmn75ntso7kcd6r'),
(378, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '19:00:00', 1, NULL, NULL, 'bmlh1j5uhagdumcvnsbovkbs7kbb5npf'),
(379, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '19:17:44', 1, NULL, NULL, 'cs3p5ubiupvku5kv0fr52s519ubfj4k6'),
(380, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '19:18:01', 1, NULL, NULL, '45lheobbgvv0bko00eq97p10ptfn2le2'),
(381, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-13', '19:19:34', 1, NULL, NULL, 'vj8nkruvplbjoom4h76vl7hci3oshcoh'),
(382, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-15', '16:39:12', 1, NULL, NULL, 'a7qhp7c1a39et97tj8o65n9a3rh78fu1'),
(383, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-15', '16:56:25', 1, NULL, NULL, '46sr96tqu707b8208tditpv1hvuhksf3'),
(384, 'abc2@gmail.com', 'buyer', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-21', '15:59:41', 1, NULL, NULL, '38hb9muesnglnvl63o938h22kca9pus6'),
(385, 'abc2@gmail.com', 'buyer', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-21', '16:00:32', 1, NULL, NULL, '3asa37tnk9i9lhn2lpkitsh2pb0lqc4q'),
(386, 'abc2@gmail.com', 'buyer', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-21', '16:08:27', 1, NULL, NULL, 'e8s4ek01envto1anfgeh6qo6trkfkjl2'),
(387, 'buy2@ilab.com', 'buyer 2', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-21', '16:09:10', 1, NULL, NULL, 'udbrk6md46avvrhaia8vsh9bjnfeeq8s'),
(388, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-11-22', '17:29:34', 1, NULL, NULL, 'mf0ea2kdnsoffi2o36l9mc7in56iivf2'),
(389, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-22', '17:30:35', 1, NULL, NULL, '9ml8t7d20glif7jim5c5djmk0h9c7vcg'),
(390, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '12:15:01', 2, '12:15:07', '2018-12-03', 'aksi6v2511f0gmusoas82uh2r2u5r4i8'),
(391, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '12:36:10', 1, NULL, NULL, 'd74nt9ven82ieh2mfcpc7c85ld4bfs2m'),
(392, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '16:01:12', 1, NULL, NULL, 'a2ilr70lhf3uidp2k6bis67q65o464a2'),
(393, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '16:03:05', 1, NULL, NULL, '8cg9sj1kdqd1umhepihrgokon0s21nvd'),
(394, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-04', '12:14:44', 1, NULL, NULL, 'bdgd5j6ns130c56qc9s0d1h1aq3886mc'),
(395, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-04', '15:26:55', 1, NULL, NULL, 'qd382s7rqu4rgd8mr8j1qnu75fpp89dd'),
(396, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-05', '18:59:58', 1, NULL, NULL, '5f3ln7a5g1k36on76uahr1d6u8k7s4e5'),
(397, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '11:50:13', 1, NULL, NULL, '6nkg35feeuata9134kg34baaon5ak5un'),
(398, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:24:46', 1, NULL, NULL, 'cpf2joknuprnso6joiso02ligihvce48'),
(399, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:25:35', 1, NULL, NULL, 'h85s6idp8agk8jo2a99poefi1hiqui2j'),
(400, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:37:01', 1, NULL, NULL, 'kbu487l7im7uc8sid9e31jbrkcdg03cm'),
(401, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:37:21', 1, NULL, NULL, '6ikh6l7rfq12r71bn7hd7lcqhe1mtagp'),
(402, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:37:44', 1, NULL, NULL, '900dvg4c0dlqqhehjgge8aqgdc1v2tfo'),
(403, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:38:29', 1, NULL, NULL, 'v4217kh0ort5qj3drenikmfm82gbjlto'),
(404, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:42:41', 1, NULL, NULL, '7n6r9gfutlntlcug9ehv3n40uh6cajne'),
(405, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:43:01', 1, NULL, NULL, 'qpgv1s0upsgg9ojg8hl9kj5hs3sbifep'),
(406, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '12:43:58', 1, NULL, NULL, '2hj61j3of8usfbh88iivmdo15stdlcf0'),
(407, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '15:41:26', 1, NULL, NULL, 'ahcqhtkbf712u9342dl61bo699e3k2p1'),
(408, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '17:06:55', 1, NULL, NULL, '0tedtmu7b53vlaqfimtdmdc5v0di2s5h'),
(409, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '17:07:40', 1, NULL, NULL, 'nbftnl8djc70ri94i9vcqdp7ohtnr48c'),
(410, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '18:36:27', 1, NULL, NULL, 'hjr4ti8ba4ghsjtmilvh64oti964nk01'),
(411, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '21:32:09', 1, NULL, NULL, 'okv4ffcsm2imup9o43ms25g4r2u1mi98'),
(412, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '21:33:54', 1, NULL, NULL, 'gse077ctu2dn7qrskp74dsigsi6n0vbp'),
(413, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '21:35:17', 1, NULL, NULL, 'dju90shr3ikspjd7jfjs5eo4rin5mig0'),
(414, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '11:06:26', 1, NULL, NULL, 'pm8lqut33jqh34hhv8hj5l087j5pabh6'),
(415, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '12:09:11', 1, NULL, NULL, '1fujb2q81g5koso461boa3835rsedqhe'),
(416, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '12:17:34', 1, NULL, NULL, '569vibca7h39nd1il9mgjahijn65o19n'),
(417, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '13:23:53', 1, NULL, NULL, 'tiljfsjoab8s4ccf6cqbntgcu0k0fg2b'),
(418, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '15:19:40', 1, NULL, NULL, 'ffmoi4fever37fgkua61t0j5pch5hpu9'),
(419, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '16:07:40', 1, NULL, NULL, 'bb1ia4gpt0addmeelvfoa92ov5ltmumf'),
(420, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '16:27:23', 1, NULL, NULL, '370m3td7uvrcl4aodkjvgg3c3l69f616'),
(421, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '16:29:06', 1, NULL, NULL, 'ot46fb984h09f0soab8dvuqas8kj4gj8'),
(422, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '16:30:23', 1, NULL, NULL, 'q3jtg49ahnuatbjeldkb3pncgr610md7'),
(423, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '16:31:06', 2, '16:31:13', '2018-12-07', 'iv4ua6k05ugp82cl27u3oo4su875405d'),
(424, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '17:20:58', 1, NULL, NULL, 'l5l52jr2n665plkdfsb9rqcj8eboqdvv'),
(425, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '17:49:12', 2, '17:49:57', '2018-12-07', 'mofcptibsp5d8oofgo6t53oj57uc1ber'),
(426, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '17:50:30', 1, NULL, NULL, 'aganu7ao3t9rcd08daist5ogq30131pl'),
(427, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '18:18:44', 1, NULL, NULL, 'ijuedton12mo8ioc5gu5h4uvvf7g3rph'),
(428, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '18:49:37', 1, NULL, NULL, 'vvnkd8s66mnckhdbhd7l397c52t32m64'),
(429, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '18:50:03', 1, NULL, NULL, 'ag1a4r9efamhpo246uvh85nquehv68gq'),
(430, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '19:07:10', 2, '19:08:40', '2018-12-07', 'rgl60kh57e610lvt2qfm7dihe5fspbrf'),
(431, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '19:13:45', 1, NULL, NULL, 'b2or5ifc2l0ruhl2jnp28reud5lb8oua'),
(432, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '19:14:25', 1, NULL, NULL, '97u1poe8ht11r7e5qnkbcoqdhd0n6kib'),
(433, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '19:20:38', 1, NULL, NULL, '1vh9seok2gg87gqjp2aojjeo32ov7cc8'),
(434, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '19:28:28', 1, NULL, NULL, 'u3d8ds8sei78v242og0fgujcpgha21bn');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(435, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-08', '17:06:15', 1, NULL, NULL, '21ef2ni721u376bn95pd5tv0f9tqo5gj'),
(436, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-08', '18:01:00', 1, NULL, NULL, 'dsv6mmnbdpjj2orq700rs17bh074s499'),
(437, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '12:04:40', 1, NULL, NULL, '98ikugeat5jmdh9amd5dako8chh7nh6v'),
(438, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '14:20:35', 1, NULL, NULL, '1ctbepnla4b4cg1j52p2v4kr5td3t07p'),
(439, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '14:47:19', 1, NULL, NULL, 'b4mlu4neqrf8atkt50ocdn6mv66s0t3q'),
(440, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '16:18:39', 1, NULL, NULL, '60dv0kso9mjsplk303o7ln5sj79ejcmr'),
(441, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '16:44:32', 1, NULL, NULL, 't9g70dfofp9f0lkhsefb2kqfpn9pfbls'),
(442, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '17:00:15', 1, NULL, NULL, 'vhcp5e3hghnl3d33khshg0mf7vbnkcf3'),
(443, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '17:39:50', 1, NULL, NULL, 'lg2ti7odtisi3fm9v00bmblo5tetf8lt'),
(444, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '19:07:59', 1, NULL, NULL, 'ufg9imqi6kfal36hg2m9uo398f5036jo'),
(445, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '10:44:29', 1, NULL, NULL, 'gseinpgff13j2o86lafovnu6sbift1tf'),
(446, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '11:20:23', 1, NULL, NULL, 'i4jok7njvl19177igokjnvlie3s5sqr1'),
(447, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '11:23:24', 1, NULL, NULL, 'bohkerg399n0l6ae1hhroprsat3e0b9l'),
(448, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '11:34:15', 1, NULL, NULL, 'v2pt1r7r084v34ka47nutjoc42m66bg0'),
(449, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '11:57:25', 1, NULL, NULL, 'vor95oac7ueu51vqna9qao53cninvdqb'),
(450, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:01:21', 1, NULL, NULL, '3287gqcjrocajksq8bguhva3s1qk77mg'),
(451, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '12:05:34', 2, '12:05:46', '2018-12-11', 'sco9bfcj0j9eknleohnr9p0n9nl9bu95'),
(452, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:05:59', 1, NULL, NULL, 'ft77tpf8d3hmcc3pjjjos98ce3fs27it'),
(453, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:49:55', 1, NULL, NULL, 'elrdu5d4oh9vbi1rnj0mvci4hfubj843'),
(454, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:55:36', 1, NULL, NULL, 'a2l8ts4knikvgs3rt6f5cee3a36arcfj'),
(455, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:58:01', 1, NULL, NULL, 'ra4a8qclo8bs541qptvpr8d61irjra3q'),
(456, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:59:04', 1, NULL, NULL, 'uturcrhn6a078ae6nqoo2ak8jll8fadp'),
(457, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '12:59:29', 1, NULL, NULL, 'ua64bbejs6kt54n45l332vcjgohhfo07'),
(458, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:00:16', 1, NULL, NULL, 'ltha68f2hj4q17vrourgus9qtt650lem'),
(459, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:03:11', 1, NULL, NULL, 'g6i8312k5442po3o4t7ub978o4gt5bp2'),
(460, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:04:01', 1, NULL, NULL, 'pcsunhiuqv0ogubrh9msr9sphvhq6mfu'),
(461, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:06:47', 1, NULL, NULL, '0bgbat02tle32pfap68jrnlnt934lb0e'),
(462, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:18:59', 1, NULL, NULL, '760dikgvl0p3j7a0akcgjj5d5ikce0eu'),
(463, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '13:23:51', 1, NULL, NULL, 'bt47obovhlgkn11maos08ov65n84oij8'),
(464, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '13:24:34', 2, '13:25:34', '2018-12-11', 'p7i5tg812anvm6n60li9ku90ltjhqqkb'),
(465, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '14:33:03', 2, '14:36:21', '2018-12-11', 't9m4mirfe7em3dse03gshpt63vb34rom'),
(466, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '14:36:51', 1, NULL, NULL, 'meqrkhpnft2lug11ogec82ssr7qr2lgj'),
(467, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '14:37:14', 1, NULL, NULL, 'jrf9qsncp8dfgel15arno5davqqn4i29'),
(468, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '15:02:38', 1, NULL, NULL, 'p1l1r02g214hhsigs6hfi34k4ag9iaan'),
(469, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '15:18:46', 1, NULL, NULL, 'v9cgif86kfhd1r1pq3bv1hog8s5sjg0q'),
(470, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '15:30:35', 1, NULL, NULL, '22b7qv4h2s8pc1un3gpf12kh8frqku88'),
(471, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '15:32:57', 1, NULL, NULL, '4j6eegkfei1lsns2ra8u8j31f29t9og0'),
(472, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '15:41:57', 1, NULL, NULL, '695r4hj82f8toumajnm28fpg8hnp0maa'),
(473, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '16:40:00', 2, '16:41:14', '2018-12-11', 'kpepjavosmhloentv8rfe75odr9qd58s'),
(474, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '16:41:32', 1, NULL, NULL, 'qcgtv7ji4ndbbs9qed6dmq9qocj0hqrc'),
(475, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '18:10:16', 2, '18:14:18', '2018-12-11', 'aodmqogi76mhq0o0auhmsa9e4bqqsduc'),
(476, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-11', '18:21:46', 1, NULL, NULL, '89c2dapjfg986povas2v7oae0m0oierj'),
(477, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-12', '10:59:23', 1, NULL, NULL, '1u4cpcvp628poeria6usacaolce9ftqd'),
(478, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '10:49:38', 1, NULL, NULL, 'uccahb9ireopo8kn157vfsudeshc16t7'),
(479, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-13', '11:04:02', 1, NULL, NULL, '8e34tuh7l56984osleqqbc53eajci6le'),
(480, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-13', '12:29:20', 1, NULL, NULL, 'h2rahk2lt42mfsk4abd5gmdl4o7lnqv1'),
(481, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '12:58:23', 1, NULL, NULL, 'st3mtmoj77me9dhrto1a2632pfnnbb4a'),
(482, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '13:06:31', 1, NULL, NULL, '3sl3f2k9umol2viab12pdadsplg59h5i'),
(483, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-13', '16:03:29', 1, NULL, NULL, 'tn9omcbrcnrcupbh9pf8poidcrr1e31f'),
(484, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '18:14:42', 2, '18:15:12', '2018-12-13', 'gtums911mcol3v8k92t3rf5uvd3g5gce'),
(485, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '18:15:44', 1, NULL, NULL, '35ls8509fu63jlb1o4c85jd52k47796p'),
(486, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-13', '18:28:47', 1, NULL, NULL, '0a47bnidrco2cn8uqf0srgtrdbjl2ool'),
(487, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-13', '18:32:55', 1, NULL, NULL, 'cn7o78uvt81vqootpb259svh3kevqmb9'),
(488, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-13', '20:20:06', 1, NULL, NULL, 'lsk8hd05oe7nu13v88e3dp2fqrko4ilf'),
(489, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '11:26:53', 1, NULL, NULL, '4qs4e60iandhea7cir752s159rj0o9q3'),
(490, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '11:56:02', 1, NULL, NULL, '90avuff4descp85a9mc2eonrrgfhcahe'),
(491, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '12:12:27', 2, '12:13:03', '2018-12-14', '1agih884904hjm5ukv6mfjb9c19fkuei'),
(492, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '12:13:58', 1, NULL, NULL, 'g6j4ds4oodft646k55m7o6aul7136qhd'),
(493, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '12:40:14', 1, NULL, NULL, 'nd1foubnmqvhkj8cs2fesai2atbqq24r'),
(494, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-14', '12:52:09', 1, NULL, NULL, 'snknspke7pnteauv6kau8l9pej1cjq22'),
(495, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '13:18:33', 1, NULL, NULL, 'rjdb895uqo6rd2l9jqci8cet9uf9ks2t'),
(496, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:02:26', 2, '14:02:36', '2018-12-14', 'i01frm4kptibkrtof4dgis73gids8688'),
(497, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:03:06', 1, NULL, NULL, 'c5jguqlsseiup5n1kv9ip1k7160cf584'),
(498, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:09:19', 2, '14:11:46', '2018-12-14', 'tj4hitad10c612tauif1os2l1s1ei86m'),
(499, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:12:47', 2, '14:15:27', '2018-12-14', 'e8ev9ft0ubbjk4uheq0usr29l1i653qs'),
(500, 'pro2@ilab.com', 'procurement user 2', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:15:53', 1, NULL, NULL, 'ckmmcju6q2hl8njfk0v8re6r3ttetg7o'),
(501, 'pro2@ilab.com', 'procurement user 2', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:22:09', 2, '14:22:47', '2018-12-14', 'rt1usqqktceg4o346nd3mqvfqdkp12c0'),
(502, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:25:07', 2, '14:26:18', '2018-12-14', 'rtha0f2s0vomoon8kmd05v9498p9te1g'),
(503, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:26:45', 2, '14:28:14', '2018-12-14', 'tg1dm1vm7o03ij5gt5dml9mbki6ksaa8'),
(504, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:28:46', 1, NULL, NULL, 'baqt00gcquia9sfm7igu49hl2semv3jl'),
(505, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:30:36', 1, NULL, NULL, 'gq846fost414ia8ftbjn2jj23g2jejj6'),
(506, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:32:00', 1, NULL, NULL, '5v162br2p4nhvc7fl4m76lao68duiaga'),
(507, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:33:21', 2, '14:33:45', '2018-12-14', 'mdfceca9479e4fqd5qela4qk5kr0hpfv'),
(508, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:35:33', 2, '14:36:04', '2018-12-14', 'v6cfimnrd76vp87qbo4itb5g0nhrselh'),
(509, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:37:35', 2, '14:38:49', '2018-12-14', 'r3tgs9kas429sh5oafdbv7j0mce1b5qf'),
(510, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:41:53', 1, NULL, NULL, '44o2mdgpb4ndonbpg4ndqi0tk5lvnoee'),
(511, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:45:54', 1, NULL, NULL, 'dfasuohr0l325qmrobqam16ioslsnpnq'),
(512, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '14:46:25', 1, NULL, NULL, 'gj3nsjpjs041got655jsvpskp9t1edj7'),
(513, 'abc2@gmail.com', 'buyer', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-14', '14:47:42', 2, '14:49:22', '2018-12-14', 'r6qmchtt8cca6i2dcbvjn8uet0b3hnsg'),
(514, 'gcg2@gmail.com', 'user464', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-14', '14:49:34', 1, NULL, NULL, 'hmvgccee4clbmeiv8mfg91gotrndnqfr'),
(515, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-14', '15:14:01', 1, NULL, NULL, 'ktsueu5u7abd96eoo2kg7efaie6q1hn6'),
(516, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '16:10:21', 2, '16:11:17', '2018-12-14', '4jc070oip4gvemo90r63mn50gje05mnf'),
(517, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '16:34:08', 1, NULL, NULL, 'sgdfm3fsvrbmdlhj33hggg6hgvg9r1ki'),
(518, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '16:54:40', 1, NULL, NULL, 'sipo5jmhpeohmvgpeqs4i40tnqkj3dfh'),
(519, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:01:07', 1, NULL, NULL, 'knv6p61hmgobt9h2dul0hcnb782nmfpt'),
(520, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:02:41', 1, NULL, NULL, 'jfavr15lpmuu79g3jj54kci3f9eqpgk8'),
(521, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:03:54', 1, NULL, NULL, 'r45mbp3dnl8tr5tc5ab6tr9cjq256gbp'),
(522, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:05:04', 1, NULL, NULL, '9ptklgs5qgt55sa576hfk06olr8r045f'),
(523, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:05:45', 2, '17:07:58', '2018-12-14', '96ijicd2j1epd2hgfhkeaa7ptekb4cnh'),
(524, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:08:29', 2, '17:09:01', '2018-12-14', '3hiu30jtfktg863ag3t7rok3tchcge14'),
(525, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:09:45', 1, NULL, NULL, '32edtjf77v0iclollp107e18edld6fqs'),
(526, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:20:53', 1, NULL, NULL, 'mlfh3cjqeq52gfbv88qq5b92te8rppta'),
(527, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:23:09', 2, '17:23:54', '2018-12-14', 'v3hsp62c57cu0upjcmv5vf6f3smkhjgl'),
(528, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-15', '13:06:23', 1, NULL, NULL, '7400vht5q9cj7ta35rgrshgr8mat72js'),
(529, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-15', '15:48:19', 1, NULL, NULL, 'h1thob5tq6llnpd5ldu452730muv4oe6'),
(530, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '11:17:07', 1, NULL, NULL, '0d19elbnjct0b43lpfn5k1pa2k935c18'),
(531, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '12:08:59', 1, NULL, NULL, '7918h2cc1g1vupmkg0itd1c4b74p9je8'),
(532, 'buy2@ilab.com', 'buyer 2', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '12:09:51', 2, '12:10:19', '2018-12-17', '2c5nkfvqn9njnu6r1npmpaa0te1ps9fl'),
(533, 'abc2@gmail.com', 'buyer', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '12:10:59', 2, '12:11:47', '2018-12-17', '49vbgesds7espamcp5jbf52bb9h3gblq'),
(534, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '14:30:49', 2, '14:31:48', '2018-12-17', 'bbvgijgebgebr6m7rcgas0csp917ub3p'),
(535, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '17:09:40', 1, NULL, NULL, 'ur4dhhoh10mosnd6l3m398vo313k6cdh'),
(536, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '17:35:41', 1, NULL, NULL, 'fu8m8gdf5dijufce9a18ucjk82dtb6lc'),
(537, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '19:12:45', 1, NULL, NULL, 'nbc7l366cqfpf7bhulvg41leae1n4mej'),
(538, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-18', '12:36:13', 1, NULL, NULL, '24lma5jvo46b2peqo17diic8kqp8dq2a'),
(539, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '12:57:03', 1, NULL, NULL, 'u4e40uq2j5lrfr7lp0p8ihhd9bsr6fii'),
(540, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:00:56', 2, '13:02:09', '2018-12-18', 'mao7dv92bgef68l1gmj94v7no2kq3kbt'),
(541, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:02:39', 2, '13:03:13', '2018-12-18', 'pj7gp73fgrpt60743tmj76r6phth0rra'),
(542, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:03:45', 1, NULL, NULL, '3cnh1euvv4f8m6k2q6ha5092ovgij7ll'),
(543, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:04:51', 2, '13:05:58', '2018-12-18', 'd625puddfevn8iaohti6u3r52p8j3eni'),
(544, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:06:30', 2, '13:08:32', '2018-12-18', 'erhk5gtor6ckvo4kb7lf6l1nlas1861o'),
(545, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:09:10', 2, '13:10:08', '2018-12-18', 'j073uholrq4drcv3luc7ip5q19jm7t7a'),
(546, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:10:29', 2, '13:11:05', '2018-12-18', 'rrbvo9vdq2efd0fnbt0n3nbkffct00nq'),
(547, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:11:41', 2, '13:13:53', '2018-12-18', '968huukb08a9rjq97hqcsl50lke6ps54'),
(548, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:14:24', 2, '13:15:23', '2018-12-18', 'eu9to1g6st7a4ooe7mjqav078kgn5uv6'),
(549, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:16:23', 2, '13:16:40', '2018-12-18', 'voee1amll0mielbd3hl86pcv6tr871er'),
(550, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:17:16', 2, '13:19:48', '2018-12-18', 'dhcghgssulhalvtbnbps1k2n6in7oigh'),
(551, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:20:19', 2, '13:21:27', '2018-12-18', '24r8lj5no6mkbbanqrdgmcr936q8hu3n'),
(552, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:22:29', 2, '13:23:10', '2018-12-18', 'h1hgtjuafomq9ck4qgd9mtq4it255dsv'),
(553, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:24:11', 2, '13:25:04', '2018-12-18', '4g930ogf1r5l36ag2768uendl92df65l'),
(554, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:25:25', 2, '13:26:31', '2018-12-18', '60a11b9rmg0spb0269om8ppekav85l31'),
(555, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:27:02', 2, '13:27:32', '2018-12-18', '1ro5mle8k1mdps54vte9isuam7306m81'),
(556, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:28:03', 2, '13:28:56', '2018-12-18', 'to5doeac10v6au75oah86llckqdhnfqg'),
(557, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:29:14', 2, '13:29:47', '2018-12-18', 'ki30ac1595l7knsr9858l0l2ech2fh67'),
(558, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:30:18', 2, '13:30:32', '2018-12-18', '928fp3li6r07dupasr9s9kr69t4pe6nc'),
(559, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:31:03', 2, '13:32:19', '2018-12-18', 'f22u31nqirt7c6hr0en28une01bb0fid'),
(560, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:32:44', 2, '13:33:19', '2018-12-18', 'rorjqma3742e8dh9tc4nqjvr6ebuecg0'),
(561, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-18', '13:33:22', 1, NULL, NULL, 'kdnhmraehtr15tafh1knurp4f6qu5ive'),
(562, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:33:39', 2, '13:33:59', '2018-12-18', 'at3vpuk5dc2iq3j3v3ps1ln3pbsra7kd'),
(563, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:34:17', 2, '13:35:26', '2018-12-18', 'en56vbh9jjannl05llokvpa6td1j64qu'),
(564, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:35:43', 2, '13:36:49', '2018-12-18', 'g5gtplbe2jtss7bn8vguqdbljdjpfso1'),
(565, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:37:07', 2, '13:39:04', '2018-12-18', '040bqrhbb0q2kdr5m10v52nfng7u2l75'),
(566, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:39:33', 2, '13:40:33', '2018-12-18', 'fprvscg7ed2sksmngfvtoououfibfdr4'),
(567, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:41:19', 1, NULL, NULL, 'ff4pfkt7lptp28b1iphk10o67dtosmbl'),
(568, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:47:08', 2, '13:48:28', '2018-12-18', 'kuj847uvjl9mu1p8hjfb6v27qdpq4pif'),
(569, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:49:02', 2, '13:49:06', '2018-12-18', 'd2lubcs0gnpu1dsjq9d8fvf2u45nh5pd'),
(570, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:49:27', 2, '13:50:06', '2018-12-18', 'er06ej4dd1hjtaq77ialesqdjp440v4b'),
(571, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:52:25', 2, '13:54:08', '2018-12-18', 'k27qta7ku2f178q4okk2maupqbgfskde');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(572, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:56:00', 2, '13:56:45', '2018-12-18', 'jg4nusddp3j8uv36k5g13tffqcn878s6'),
(573, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:58:08', 2, '13:58:35', '2018-12-18', 'lkkik40aac4io3jk6bf8r6mvo65c5ma6'),
(574, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '13:59:09', 2, '13:59:33', '2018-12-18', '115lk550ah6dmo0g5kopd573g46a6vej'),
(575, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:00:04', 2, '14:00:27', '2018-12-18', 'sdgf7ub467bqf9qdspu1bdukb5eaaobt'),
(576, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:01:27', 2, '14:01:52', '2018-12-18', 's03q84tuqrhd59ptkcm2b19fn4ulk1b2'),
(577, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:02:52', 2, '14:03:05', '2018-12-18', 'sib48j4ahsfaonknlb0taimclsfml02g'),
(578, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:03:35', 2, '14:03:59', '2018-12-18', '3i576cir5mfjrmpe21rdnqj446b0c6g3'),
(579, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:08:26', 1, NULL, NULL, '11v2dqt7m54f89r60rldedo0e7cljcqk'),
(580, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '14:13:07', 2, '14:13:39', '2018-12-18', '3q0s35brh9opm4o745jncilkvlfipksm'),
(581, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:30:34', 2, '15:31:30', '2018-12-18', 'ec48o7dkkmuu2efnhptomkh6olsukli7'),
(582, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:31:45', 2, '15:32:15', '2018-12-18', 'f5j35dn77mv0n18hou1e0rkh2pmfn0h1'),
(583, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:32:33', 2, '15:33:03', '2018-12-18', 'mp7avo79csgiqo26sm5eisfv6e933eqa'),
(584, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:33:30', 2, '15:34:45', '2018-12-18', 'sfej3vt8mt1vm1521gg1ajqqb9tnikbb'),
(585, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:35:17', 2, '15:35:59', '2018-12-18', '6dgd5a54fm0nidaas450ehd4nk2p5bgu'),
(586, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:36:29', 2, '15:37:01', '2018-12-18', 'u6emkfhj7uujrpisea5nimp56vv47c11'),
(587, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:37:41', 2, '15:38:54', '2018-12-18', 'mv6l9bjc4cjkho019mhop05ljukreopm'),
(588, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:39:34', 2, '15:42:07', '2018-12-18', '6lfkf8gaf3stcilrtnis78795anst112'),
(589, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:42:57', 2, '15:44:13', '2018-12-18', 'ucn78c5isphu3jvisd01ft1q9rrdlcbc'),
(590, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:44:50', 2, '15:47:52', '2018-12-18', 'fuvk7iaspf0l9nv2s1t0qirf081mmes2'),
(591, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:48:22', 2, '15:49:41', '2018-12-18', 'rpks9kmfn36bf2o7rjhnp4ggd540vu0n'),
(592, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:50:06', 2, '15:50:38', '2018-12-18', 'k6s33afakfiqj9tfj3417fa1h3itg895'),
(593, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:51:38', 2, '15:52:50', '2018-12-18', '240s9vejv49s92j9f7do2uhnu67grub7'),
(594, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:53:04', 2, '15:54:18', '2018-12-18', 'n4rcuqs7m745r0is07bfo2dclnqtb7aa'),
(595, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '15:54:48', 2, '15:55:29', '2018-12-18', '725lsrjn40d6bhk1sp4gj6u8nppp1dtm'),
(596, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:05:22', 2, '16:08:28', '2018-12-18', 'kunkdi1uc2rdh23q2ks0aebqavtoiuii'),
(597, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:08:59', 2, '16:09:59', '2018-12-18', 'btdsu05o603nlsis4jvn6t25g9bpelvb'),
(598, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:10:27', 2, '16:11:00', '2018-12-18', 'v52l2k6b0ql18eqr4hjo6gkka1snnt18'),
(599, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:11:30', 1, NULL, NULL, '0e2m6liujr869p1qp8aaj5c57s7hivq8'),
(600, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:41:32', 1, NULL, NULL, 'q8qsd1lmnmcg7rd9pll6c1f1hglbknph'),
(601, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:47:23', 2, '16:47:38', '2018-12-18', 'aikm3bb3i6c82pbs27vjc7b3vgo7e46v'),
(602, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:47:52', 2, '16:48:53', '2018-12-18', '094cjqqa85pgh8n03unr3vkt6prq1vnb'),
(603, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '16:50:33', 1, NULL, NULL, '3mu2aeeluc0aiuek675tvh4besbu1quk'),
(604, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"65.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:65.0) Gecko\\/20100101 Firefox\\/65.0\"}', '192.168.0.4', '2018-12-18', '17:04:49', 1, NULL, NULL, '5uf627urg563lb8cl80dkk9m918vta1f'),
(605, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:17:35', 1, NULL, NULL, '7eaub6lpipgqu76djfad2oj86hc4bamd'),
(606, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:35:00', 2, '17:36:32', '2018-12-18', 'tn9d0nut39uc3fab7fp4p639306c6bhp'),
(607, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:37:25', 2, '17:40:19', '2018-12-18', 'sq15ibcirfbls30vqh61tv47i01mkng0'),
(608, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:40:32', 2, '17:41:47', '2018-12-18', 'h5sbmtqofa3rqpuvl6f323oobro25tqf'),
(609, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:42:04', 2, '17:42:16', '2018-12-18', 'l69lrisuqj4cq2ccnqnnahbguh2qm3qa'),
(610, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:42:58', 2, '17:43:22', '2018-12-18', 'u1mu7feo0sbe5gumogoklseer5tj7emo'),
(611, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:44:00', 1, NULL, NULL, '598lhb1afehlcgot69ncvpatkf5k4grk'),
(612, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:54:16', 2, '17:56:45', '2018-12-18', '8hj40f7jb1df1s2tt2pkuqpfamreti8d'),
(613, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '17:58:17', 2, '18:01:03', '2018-12-18', '9utlmkj9ifku0jdlvfbkl7t903n68vdu'),
(614, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:03:25', 1, NULL, NULL, 'cu8n3n36uivl47r8e7crd62t7nmv7pbv'),
(615, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:11:48', 2, '18:12:38', '2018-12-18', 'fn3ik2ov2mhe16mrb94jhfl43eu4fkj7'),
(616, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:13:04', 2, '18:13:54', '2018-12-18', 'men541bldteq69emns1etbfjktard4dg'),
(617, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:14:23', 2, '18:15:34', '2018-12-18', 'pfmd9lnqcju9baoue0ougtgsgvpbpuuc'),
(618, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:15:49', 2, '18:16:24', '2018-12-18', '1ftt249icv9p2fda7dsoieic6cku9h32'),
(619, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:16:56', 2, '18:17:18', '2018-12-18', 'h0prr2vdre169daaugccvqalp1uh93vq'),
(620, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:18:01', 2, '18:19:11', '2018-12-18', 't6vlori3r5hv9m6n8pmv8lnhesedpoq6'),
(621, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:19:22', 2, '18:20:13', '2018-12-18', '0d2gl7om628c89optp4sf18u712s224i'),
(622, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:20:43', 2, '18:22:01', '2018-12-18', '91m76j44l6i7rtvhsc2n8erjtfasnaof'),
(623, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:24:01', 1, NULL, NULL, '8lnl89074diooiu20koq8n5m4f00d17a'),
(624, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:28:23', 1, NULL, NULL, 'oflo7od0238tcfrlvdbecialbv5s233g'),
(625, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:29:39', 2, '18:31:18', '2018-12-18', 'elqvcduof8sv7srm9m7urjq0js3p9n69'),
(626, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:32:19', 2, '18:32:29', '2018-12-18', 'utosvo858tdvdmv1o0doobgisn0rmg1r'),
(627, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:33:01', 2, '18:34:27', '2018-12-18', '08b8tut4b3pdc7srqa7rcha78biqvb88'),
(628, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:34:41', 2, '18:35:35', '2018-12-18', '2efsdh0iocmhprdcic75399mpnunh5md'),
(629, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:36:36', 1, NULL, NULL, 'oik86rk26a4arv7ii88h72c9u5igjc30'),
(630, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:37:38', 2, '18:38:33', '2018-12-18', 'n1h5fi8io90g1er32a8llgcvul29ko80'),
(631, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:39:38', 1, NULL, NULL, '58b6533b08lfaa220qjp04itpnrst65i'),
(632, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:46:31', 1, NULL, NULL, 'n8i6ecjrfh8d697lbepl5aqfelgv063s'),
(633, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:50:56', 2, '18:52:08', '2018-12-18', 'nqei8444cm65dv5b7ahcgmffuvp34jus'),
(634, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:52:23', 2, '18:54:24', '2018-12-18', 'bi1pt2i0neu147lp3plqg5ej70j46a57'),
(635, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:54:39', 2, '18:55:16', '2018-12-18', 'sjkoo5mck79mbl4k93o5muumu57052l8'),
(636, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:55:40', 1, NULL, NULL, 'vaspj5gbj3qf9f2hpjnh6avr92gk1pkj'),
(637, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:57:35', 2, '18:58:44', '2018-12-18', 'tfbh4pkhoc1gp6l2cpp6pcc41h1hku58'),
(638, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '18:59:14', 2, '18:59:23', '2018-12-18', '66j4vrt0qb0fohsgq45g5sejldjj83jj'),
(639, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-19', '13:45:59', 1, NULL, NULL, 'g6uu9nj1r9oddhk468q178i46io5lvi5'),
(640, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '12:55:43', 1, NULL, NULL, '7k68cildjef2pfg8gatrd23lcj3mv6tk'),
(641, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '15:46:53', 1, NULL, NULL, 'uncuk5r54qutsu86tskm9d6lo6p85jhv'),
(642, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '15:48:01', 1, NULL, NULL, 'u1vrpj6hh9ss9pf502tje3siuv6q9ni5'),
(643, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '15:57:29', 1, NULL, NULL, 'jiqla2qprme8r6ukul064f8p99feasf3'),
(644, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '18:13:48', 1, NULL, NULL, 'h0ll3pj7u57njjlt3ldp0umtqt508vsf'),
(645, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '18:25:02', 1, NULL, NULL, 'l699rtfpsrngnrggl8kheon06kq2qini'),
(646, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '19:39:53', 1, NULL, NULL, 'e4tiplc375pine0kv1dhb72co5sh4uls'),
(647, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-21', '17:54:57', 1, NULL, NULL, 'ddqp1ftj6ak8qosnkdikjep36njito37'),
(648, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '16:34:16', 1, NULL, NULL, '87bl59qvi02nuld7sl52ni2a5ktbe4m7'),
(649, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:00:34', 1, NULL, NULL, 'tjjtkhg7ecd9h8nsdercr77o2h8ou8jb'),
(650, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:00:34', 1, NULL, NULL, 'iist3hg3fjv8f2ht65k50bk8sttvfekp'),
(651, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:24:40', 2, '17:28:16', '2018-12-22', '6voppvkbec6s3ke80136vnvji57q6mgd'),
(652, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:29:16', 2, '17:30:40', '2018-12-22', '6ptsfidihm1jepnooe1jkgt7i9aqfng7'),
(653, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:31:28', 2, '17:32:09', '2018-12-22', 'rfg9sfhaa1k3jbdk774g76ek9po74rgv'),
(654, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:33:09', 2, '17:33:48', '2018-12-22', '423dppcsu8a9a48hgo2hj2s1ilj17ve5'),
(655, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:34:14', 2, '17:36:16', '2018-12-22', 'n2c0fcrco51aqbac727lgg8gbup7ba3m'),
(656, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:36:46', 2, '17:38:28', '2018-12-22', 'qg6auj1cq5n0r43b5qu5omdgpbcbkivs'),
(657, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:39:03', 2, '17:40:04', '2018-12-22', 'hjp6jp9gfk57pru4duen0mahbvb6t7ln'),
(658, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:40:22', 2, '17:40:42', '2018-12-22', '86dp3ddpfn0tckj4hhbt8kbqhh3g24va'),
(659, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:42:02', 2, '17:42:53', '2018-12-22', 'pkti3ht0vi426i61c0l72lh6cv3po0mt'),
(660, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:43:24', 1, NULL, NULL, 'p2k6sl018111r9q5bmpmb66i4uohbcha'),
(661, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '17:51:09', 1, NULL, NULL, 'mbpqliv9779dva7q9vg7iel6bsum2ili'),
(662, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.2', '2018-12-22', '18:02:41', 1, NULL, NULL, '9qqpuuavt39p8pmlfak792u5mdmbqtmv'),
(663, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:19:33', 1, NULL, NULL, 'j7c74bbrjjiamu7ddn2la9kao6k3j9fj'),
(664, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:29:26', 2, '18:33:41', '2018-12-22', '9i6d6q24egdskpsndrsjjsr956k4al6d'),
(665, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:34:42', 2, '18:34:55', '2018-12-22', 'tkb8hjkjmjk73rt94dt3dctdj2clrff6'),
(666, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:35:26', 2, '18:36:09', '2018-12-22', 'dukieflgd4hqq9mgcdlditfm2imidckp'),
(667, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:36:39', 2, '18:36:48', '2018-12-22', 'd4gvflmn3369b4j69h9q5bpvr9feunpc'),
(668, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '18:37:15', 1, NULL, NULL, 'gcm99rejggi3ciqfreccgs20q21971vl'),
(669, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:48:52', 2, '16:49:58', '2018-12-24', 'ro1b96kml54bpg74lkpr1pp78sfpr3jr'),
(670, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:50:29', 2, '16:51:12', '2018-12-24', 'j3lsk5mogoop72r616sjje792f6qkmkm'),
(671, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:51:31', 2, '16:52:02', '2018-12-24', '0oeuo7tnuq9kq9fj9npmar0ftmavhg5m'),
(672, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:52:32', 1, NULL, NULL, 'a3d5kvkjnl9paim0sibppape949itltg'),
(673, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:59:27', 2, '17:01:21', '2018-12-24', 'ihdtb8t6nre9s6vkkbl1kv4heo4u4g7f'),
(674, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:01:51', 2, '17:03:40', '2018-12-24', 'fsdg1fbf6b837k8rm8ob1svdmvhs8na1'),
(675, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:04:40', 1, NULL, NULL, 'b3picj98oupo3b64qeqjijqm6ds5a94l'),
(676, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:06:21', 2, '17:07:16', '2018-12-24', '1g63q9fc87edubd7docfv15d9s9gr0p5'),
(677, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:07:46', 2, '17:09:02', '2018-12-24', 'lhmfmdgjvovv6k47lt25bmbrk8brcg10'),
(678, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:09:50', 1, NULL, NULL, 's2cl64un98qo2v3b7ot44mggmk739acf'),
(679, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:11:03', 1, NULL, NULL, '01ioud0kccgug6qbtse9o5u9m0v3ir1p'),
(680, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:14:31', 2, '17:16:27', '2018-12-24', '3ruuksj5rbblu5uldmg5s60i776hnbbn'),
(681, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:16:59', 2, '17:18:16', '2018-12-24', 'b95h8qhchksp3cr6fuc5cttui4pfjlf8'),
(682, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:18:36', 2, '17:19:26', '2018-12-24', 'v2lh5b5jj6vhc0n7ac79i88gu5mig0ge'),
(683, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:19:56', 2, '17:20:06', '2018-12-24', 'pfms1efstt5sjqsvel139n1alhl9l7ag'),
(684, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:24:11', 1, NULL, NULL, 'p4ipebfbtn4vpm8pu862ngjv0pf3c2s9'),
(685, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:42:01', 1, NULL, NULL, '2ue3ajrh7l3608q052dpl9ok802mmcdh'),
(686, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:53:23', 2, '17:57:20', '2018-12-24', 'do6onvplbq2t2hcle4p52ggtp0lnsil8'),
(687, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '17:57:50', 2, '18:00:26', '2018-12-24', '13nitt0dgipml0pe8iobplge0u490pt2'),
(688, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '18:01:08', 1, NULL, NULL, '54osutqi86arim3n4pell1onn14bpokp'),
(689, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '18:05:32', 1, NULL, NULL, 'r9jvsd84kbhqf1pf0pm4p4nluc9c5gha'),
(690, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '18:56:00', 1, NULL, NULL, '2is1gu1ds88fdau73mhqjkautjhjrsaa'),
(691, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:05:20', 2, '19:06:28', '2018-12-24', 'fbc64u848plc27oc0tchs6rgvognu7vt'),
(692, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:07:32', 2, '19:08:07', '2018-12-24', '006gfcpjtsf256458qiukelh73e23bum'),
(693, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:08:38', 2, '19:09:11', '2018-12-24', '4vnlffomedssuqjrt1978kr8kadhu9uk'),
(694, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:09:41', 2, '19:12:48', '2018-12-24', '2k75rf3cb4gsgrifanjggrjbmj1rikgk'),
(695, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:13:03', 2, '19:15:40', '2018-12-24', 'jt0c3qvi6iggb9db06evr9sbj6rj4rhv'),
(696, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:17:09', 2, '19:17:39', '2018-12-24', 'stoudpgeipk4fu7o42o1lj8bgivruo6a'),
(697, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:19:20', 1, NULL, NULL, 'qd47ek20fg80jbtlhn02fugb8bjtsc3d'),
(698, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:22:09', 2, '19:22:26', '2018-12-24', '717bu139fpl32epbkh0518jb4phpcmr7'),
(699, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:23:33', 1, NULL, NULL, '90v1ahf6m84a7vbs08j3u2cq8dbl93pt'),
(700, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:26:15', 2, '19:28:39', '2018-12-24', 'bbdfvjmaqnhj6t9djtc10jbir4idubd5'),
(701, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:29:10', 1, NULL, NULL, 'h3388b9nbb4a66704h0hu0ctscrtujvq'),
(702, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '20:22:05', 1, NULL, NULL, 'ihln1dbs78lq3j8v3ghnlvqaacsg0023'),
(703, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:32:30', 2, '15:35:29', '2018-12-25', 'nb31a804asijbg7ptgaa33k5pv5ea25a'),
(704, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:35:43', 2, '15:36:34', '2018-12-25', 'cbi84cp0cmplcmhbflc3uhtcsrgfip6h');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(705, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:36:50', 2, '15:37:15', '2018-12-25', 'osakvjdh74h3s0cbu09ta82n5glvaalg'),
(706, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:38:18', 1, NULL, NULL, 'lvsfnll9tc9f62a55nm681i5f52bj689'),
(707, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:39:10', 1, NULL, NULL, 'lo92k2vmqln9q0jr8h9ectu8is3dhon1'),
(708, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:39:57', 1, NULL, NULL, '21jh65rnufd4p5d9pia89f1llp28iu0r'),
(709, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-25', '16:05:37', 1, NULL, NULL, 'o7jbuvnrir8na6gtopov92dm1scos3hr'),
(710, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '16:14:11', 1, NULL, NULL, 'ch8p78dj6mn1aq7e589d6ge93o7p7fo3'),
(711, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:07:32', 2, '17:09:23', '2018-12-25', 'hsl21s3f789c2cv6b35tatoahvsfasj4'),
(712, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:10:36', 1, NULL, NULL, 'eic6a735etl38q5tinh8u927kldhb90k'),
(713, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:22:24', 1, NULL, NULL, 'j0aqmucaf9m4hai35582cbi56h7klc4q'),
(714, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:28:11', 2, '17:30:55', '2018-12-25', '986tr5sv03lbpeoar5gd1vnhfmjhavn6'),
(715, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:32:07', 2, '17:33:56', '2018-12-25', 'u4523epjahb4pkh9mj453dn7nake9nfr'),
(716, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:35:27', 2, '17:35:59', '2018-12-25', 'v0ghmr91h0qnd8i9qco1hvigb40b1cil'),
(717, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:37:12', 1, NULL, NULL, '7o7btnse536j9othksvenf8t3t04cpss'),
(718, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:45:42', 1, NULL, NULL, '0lcof25bm850tk6altl78jttp1kp8cer'),
(719, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '12:43:53', 1, NULL, NULL, '73akp00cgv7sdn9kp4oi6bpegekeabpk'),
(720, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '12:55:13', 1, NULL, NULL, 'udgpjomng8ohn09gfscvdam4bghu5r9h'),
(721, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '13:10:19', 1, NULL, NULL, 'ej5rjhc6jqhuv0grmg9ac5o4bvl6bkbk'),
(722, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '13:11:50', 1, NULL, NULL, 'a0cub08q5iib0opp1l2e3jvjqm6g14ti'),
(723, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '13:17:05', 1, NULL, NULL, 'mij57r0nu51ab7faia3agcbq9k4ms69b'),
(724, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '18:55:01', 1, NULL, NULL, 'sntkdjfqpfkrilmuhodvk03ap6l75m39'),
(725, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-26', '19:17:25', 1, NULL, NULL, 'is6lo3rtkfkbeapj3qbvu4rpe5aissot'),
(726, 'zz11@gmail.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-27', '12:29:13', 1, NULL, NULL, 'bfkg7kt7bc3g204csc4kgdrp68ie3b8t'),
(727, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-27', '12:34:03', 1, NULL, NULL, 'aiogvasabhcg08idofbnnbhgran3olqf'),
(728, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '12:40:05', 1, NULL, NULL, 'q9bmjrcj5k3h5apbma31l77u5rqtnqsf'),
(729, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '12:40:50', 1, NULL, NULL, 'cgd2m4nif5rsc7itsnfh4f588nmtf3s9'),
(730, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '13:06:55', 1, NULL, NULL, '5ud50ldss6kjgjjc3qqrnvpqgch4eoi4'),
(731, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '13:07:38', 1, NULL, NULL, '1qdhqln3ppedv0memqmurlhkgmqlegqm'),
(732, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '14:46:04', 1, NULL, NULL, 'k86eld2sgm2a7clg07vap1jd1f917ent'),
(733, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '14:59:20', 1, NULL, NULL, 'hmjk2jggdek7t2icpjmjuq36h133tfun'),
(734, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '14:59:42', 1, NULL, NULL, 'c1oi887u8r6bh9q16cngoot0i0q7lbbj'),
(735, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:01:08', 1, NULL, NULL, 'mtk8bqr7nh50rq4d5ddkd0a6qa1i1brf'),
(736, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-27', '15:05:41', 1, NULL, NULL, 'ajid0dd5kmd2pvdilhe8f65mee2v691j'),
(737, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:22:28', 1, NULL, NULL, '5n0an2ee47j6p6q2qb4r2b35crsfmti3'),
(738, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:25:15', 1, NULL, NULL, 'lb5v1ir5mr1ifbf4fq2d9nqdum371f5e'),
(739, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:30:09', 1, NULL, NULL, '32246tb2br541tjjnsekn4q33q4a640v'),
(740, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:40:19', 1, NULL, NULL, 'f74s87vbq2heer7t6apsenvcht7pd566'),
(741, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:40:53', 2, '15:40:59', '2018-12-27', 'lh54pj4hbcju8heu1o3f2f2e7v3gtome'),
(742, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:43:32', 1, NULL, NULL, 'eouqcd8mooger9ugen43ljt2ps9pj042'),
(743, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:46:19', 1, NULL, NULL, 'p254tdgpqg6dnamhs8lognnilrrknpht'),
(744, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '15:52:47', 1, NULL, NULL, 'hu5gkvbla5tbm2h0avp80j97gbiq6d75'),
(745, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '16:54:57', 1, NULL, NULL, 'tmr0jb4kke5qvritdcvm3foajjenpnmt'),
(746, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-27', '17:17:54', 1, NULL, NULL, 'ivgg461stt9ipa7g9faeleleqj2ga7p7'),
(747, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-27', '17:27:40', 1, NULL, NULL, '14n6idcfgpfn5a2ldm1n8o4359pv7s3a'),
(748, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '18:21:11', 1, NULL, NULL, 'f612fukv5cmnn4m70ki6btilo5o6hs78'),
(749, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-12-27', '18:31:29', 1, NULL, NULL, 'duh4r7parnsltc3et0tt8ka51cp7lrnt'),
(750, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '18:32:21', 1, NULL, NULL, 'q227s4l8gbomlntek7rj2cu66lrjdm7u'),
(751, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '18:33:41', 1, NULL, NULL, 'ki2uhtqi7aq1ud9oma2vqcuv4qd6g377'),
(752, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '19:51:11', 2, '19:53:38', '2018-12-27', 'uf6g7gma1dmk5h7vbj675sdhcvegor2t'),
(753, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '19:54:08', 2, '19:56:52', '2018-12-27', '1nl9l7v3us03087dgl3vcnetaqvtq61h'),
(754, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '19:57:24', 1, NULL, NULL, 'uae7hhopjjejuu0fkenpthl8ud1l8ff9'),
(755, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '20:02:42', 1, NULL, NULL, 'dtfaiupi6t56bicutrm166gdf6le1dk4'),
(756, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '20:04:54', 1, NULL, NULL, 'q15npfke1cj2tm7o08tkg1tr4nlq6u2n'),
(757, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '11:22:24', 1, NULL, NULL, 'unb0f4prvce3hppjo0is2h3bc7f34aoa'),
(758, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '12:27:22', 1, NULL, NULL, 'mgha44c7cv0haa1hbphat6gn137n57p4'),
(759, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '12:28:02', 1, NULL, NULL, 'a9puqk980t7nvj8gojjpc831tqabmc61'),
(760, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '12:32:42', 1, NULL, NULL, '17m1a307f3rqmpt5hpf0ag463usvf8je'),
(761, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '12:42:12', 1, NULL, NULL, 'jb5o08i1sa73sca330bt7iiaoig7npl2'),
(762, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '12:50:17', 1, NULL, NULL, 'qkmutb13o9isj3uneg6tl4sjo0pdlrad'),
(763, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '12:54:50', 1, NULL, NULL, 'anku03ksc23d8sdkbvat3c8iauer0pnm'),
(764, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '13:10:04', 1, NULL, NULL, '4t52jdqbcjspc3sb1uj66l42470lr2d1'),
(765, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '16:05:10', 1, NULL, NULL, 't9u40nqbi43a6dbkn7takabdlj9hajav'),
(766, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '17:34:36', 1, NULL, NULL, 't1lierh4frfi3j4j9fdnvhfkuvhed8tc'),
(767, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '18:23:11', 1, NULL, NULL, 'kuje2pic25ba313sl126fi6k7nbl1cpr'),
(768, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '18:24:27', 1, NULL, NULL, 'gih3abfqr1i39f0f0krbf27jp92ea391'),
(769, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"71.0.3578.98\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/71.0.3578.98 Safari\\/537.36\"}', '192.168.0.4', '2018-12-28', '18:27:06', 1, NULL, NULL, '3fj7bp76iibjst2h63ieodrvueeeu6fp'),
(770, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '18:37:43', 1, NULL, NULL, 'ft8v74uj4euqla3ee2a5lmmhg67esqin'),
(771, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '18:55:24', 1, NULL, NULL, 'eh4enec93jgb6mgrecd65vqb9ldc4p6e'),
(772, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '19:29:16', 1, NULL, NULL, 'eadbm2s5b8hh0mma33905n9u45d2t46n'),
(773, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-28', '19:34:10', 1, NULL, NULL, 'om4mor1qrgeo6u7nl8mt28g12fae2pjn'),
(774, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '19:49:38', 1, NULL, NULL, 'fsspv8u6lr1hd4fmgehjr0t56346vlp6'),
(775, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '12:25:01', 1, NULL, NULL, 'lvn0ihisk6q5uvnrnc7qf0p3nk2brpk7'),
(776, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '12:45:07', 1, NULL, NULL, 'm0q96i260r5r73b136crh3bv4r5ph9ob'),
(777, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '12:56:51', 1, NULL, NULL, 'lhj4stle3g15uahjcqka5p2gbr21g97j'),
(778, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '15:18:51', 1, NULL, NULL, '5s2vunm59fo7e2n3j5q37gg8h0anhsg7'),
(779, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '15:31:32', 2, '15:32:21', '2018-12-29', '0km13g6bskopapp97p3bfdcdl0g7cfl5'),
(780, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:11:04', 1, NULL, NULL, 'np6udorq641vdtb3tk1of8sk81odckii'),
(781, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:11:22', 2, '16:12:04', '2018-12-29', '6b8l3ueeu92301tcodulacam1ko0cpsb'),
(782, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:12:21', 1, NULL, NULL, 'nhdpkg90l5m94vbkavf87ketnh4mca4r'),
(783, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:15:14', 2, '16:16:43', '2018-12-29', 'bcok9ne4i2iqpip09092c2leo9mrkkkv'),
(784, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:22:18', 1, NULL, NULL, '4qdpbr85udebmc6ans479oehcttom2pr'),
(785, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:28:45', 2, '16:29:08', '2018-12-29', '4ldmin5tc7podqn62e8i911vcm015iop'),
(786, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:29:27', 1, NULL, NULL, 'oq5pdmeckto4tlhv3p6rss7057rih2ps'),
(787, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '17:39:53', 2, '17:40:37', '2018-12-29', '76jtjc672rigs4dptpv1n4fgm8pfncld'),
(788, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '17:40:49', 1, NULL, NULL, '3e45abi1sfg8fd59gs7ruu1funniapn3'),
(789, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '18:17:32', 2, '18:19:12', '2018-12-29', 'l1sciudmhcu882g253vq09r8gn2f8ik8'),
(790, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '18:19:42', 1, NULL, NULL, 'ubf18ubq8m64djdlidb4l22esh0c752s'),
(791, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '11:15:12', 1, NULL, NULL, 'pc3lcbe4clinounabo1fe1pvnkhmblg3'),
(792, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '11:15:55', 1, NULL, NULL, '420krethrnrn5egskvb8rg7p3ule9kdi'),
(793, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '11:26:29', 1, NULL, NULL, '3eouk1eurpn1um7ce34dviepiej9srvp'),
(794, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '12:00:45', 1, NULL, NULL, 'egg9fae1l0g85cv3nri5ssk7oajobq04'),
(795, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-31', '15:55:44', 1, NULL, NULL, 'sthfr1hm7bp54okpp6a4i8l9vbqdmu4v'),
(796, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '18:47:01', 2, '18:47:32', '2018-12-31', 'ctogave4hllvtm47d8aittp7psa9luhf'),
(797, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-31', '18:48:02', 1, NULL, NULL, 'iss570fsesa7ufafop0mmc6fl56jb5hf'),
(798, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-01', '10:52:07', 1, NULL, NULL, '58bufsvt5e662l76o4kpeeg7hr0odqjh'),
(799, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-01', '10:53:28', 1, NULL, NULL, 'fq6b60946dp16qfkdbu1jlsv63ujpuih'),
(800, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-01', '16:15:00', 2, '16:16:40', '2019-01-01', 'f11qkq1av0kpm275jne2llth6krunu6i'),
(801, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-01', '16:17:11', 1, NULL, NULL, '78lo8ifgfa8dq8e75h668qu136304qli'),
(802, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-02', '19:22:05', 1, NULL, NULL, '0eqoqavu5lih66dl9cokfogrivvmtg0b'),
(803, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '14:05:48', 1, NULL, NULL, 'f8q14ivh16a8vnojp0gims4dc8cub2ig'),
(804, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '18:52:07', 2, '18:53:53', '2019-01-03', 't87e9ur7ve7r0685pntbel4ldpj00e3s'),
(805, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '18:54:01', 2, '18:54:39', '2019-01-03', 'p32cs2vh89v7om1t4n5hm7rtokj56gi5'),
(806, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '18:54:51', 1, NULL, NULL, '8b6vipbt318dmq8u2tg15ipqesb2tt7l'),
(807, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:08:34', 1, NULL, NULL, 'qimbu4pfq9b4efp9tq7kqc7uo4k1j01i'),
(808, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:20:35', 2, '19:21:59', '2019-01-03', 'd9ac3lk0i7q8a2h5lktaniqlpk42bq0r'),
(809, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:22:31', 2, '19:23:23', '2019-01-03', 'lgu9ts2ohl04lnhb0vk321gro84iarmp'),
(810, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:23:36', 2, '19:25:28', '2019-01-03', 'b0o6ubl9vkp71rart4f3pad7vurmf403'),
(811, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:28:11', 1, NULL, NULL, '2g4e63jtvll4indhpqpsrrd8j4r9n5lo'),
(812, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:31:11', 1, NULL, NULL, '4prug5mfqe9urp3i84gpej18ib0ge5vd'),
(813, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '19:54:54', 1, NULL, NULL, 'v670r9lm7cjpmpb4tno04ajqlbcq185j'),
(814, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-04', '20:00:02', 2, '20:00:34', '2019-01-04', 'jh3nbn0uvik302ec8dfhqtov8b2me5ia'),
(815, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-04', '20:00:51', 1, NULL, NULL, 'pb9c5e3n68vv9alohckodbn0u46e214b'),
(816, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '127.0.0.1', '2019-01-07', '13:03:52', 1, NULL, NULL, '04139qr30jqmu8cd2sq8oh8189rptbgq'),
(817, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '127.0.0.1', '2019-01-07', '16:42:16', 1, NULL, NULL, '2dbrjv1hafc1bqllkbppr47n5vqsdf5a'),
(818, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '15:57:31', 1, NULL, NULL, '2orqc5v6p2mj3krri56ga16govcfum1p'),
(819, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '16:48:44', 1, NULL, NULL, 'c9ofmd7h0t15u4de4gjcr7b88cttet8l'),
(820, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:00:31', 2, '17:01:41', '2019-01-08', 'i29c06fq2oekkkp6bcbjhve376h02635'),
(821, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:02:42', 2, '17:03:51', '2019-01-08', '6u1fl9e5rulstrttsqanv6f1ess4k2jj'),
(822, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:05:35', 2, '17:05:58', '2019-01-08', '744jcaf1s400msmb4ucieqklquaok9ht'),
(823, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:06:25', 1, NULL, NULL, 'euml9odaboj2nbkst9b3t2l47nckiqnj'),
(824, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:55:08', 1, NULL, NULL, '8dn7o1m39trmrgvsm2rgnm3sqk3pijln'),
(825, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '18:11:16', 1, NULL, NULL, '78ep9lj6ak0jo8io38i8to5mg3qaahua'),
(826, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '18:18:23', 1, NULL, NULL, 'nkjidkrqmp1073ogtqukv0go3s3e3btg'),
(827, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '18:19:41', 1, NULL, NULL, 'd4toicurt3735fdad2hp4torbq66k49h'),
(828, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"65.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:65.0) Gecko\\/20100101 Firefox\\/65.0\"}', '192.168.0.7', '2019-01-08', '18:34:01', 1, NULL, NULL, '7g7oovebfsalmd18eh23rgioav41qp4a'),
(829, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"65.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:65.0) Gecko\\/20100101 Firefox\\/65.0\"}', '192.168.0.7', '2019-01-08', '18:35:56', 1, NULL, NULL, '3pho76eq8s31lcn6ipu58kc31ir07gv1'),
(830, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"71.0.3578.98\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/71.0.3578.98 Safari\\/537.36\"}', '192.168.0.4', '2019-01-08', '18:49:30', 1, NULL, NULL, '0vh1veu81fipgkrvr9ncbs30dkdiplc8'),
(831, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '18:58:15', 1, NULL, NULL, 'a6e767mubg8a27k62ccauj9ront5k1h0'),
(832, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '19:00:13', 1, NULL, NULL, 'nqm36pn2v8dj31jm25g26ued6efnlvvv'),
(833, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-10', '11:51:05', 1, NULL, NULL, '3uajr2550pvbjkvs3c8k1bl7h4g8p9q7'),
(834, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-11', '17:02:50', 1, NULL, NULL, 'svqbi5rmal7no5ddbtvlsf0jq11fo7gg'),
(835, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-11', '17:51:07', 1, NULL, NULL, '4gtgko1bs8kliofq5u0vkjahni3nqsbe'),
(836, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-12', '12:23:00', 1, NULL, NULL, '94hnmed4be31bertefd3s3p20g42k4o4'),
(837, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-12', '15:19:52', 1, NULL, NULL, 'u4ki3sb60v65sb940uvdp1uv5frt857b'),
(838, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-12', '17:51:17', 1, NULL, NULL, 'jo3a5oqulrb2e545kfa41lggl3ogar54'),
(839, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:43:06', 2, '13:44:06', '2019-01-14', 'fpsc8c34i6fsos4g26nq4777qmvi8tc3'),
(840, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:44:27', 1, NULL, NULL, 'idd705vu1nf5roq3qs1ckrjc4524spnp'),
(841, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:44:27', 2, '13:45:31', '2019-01-14', '417o1akh82f3ljthgg9f79f7b9hv2mle'),
(842, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:47:04', 1, NULL, NULL, 'q3ukdslnij19d2fkv6cc349mpr8o96r2'),
(843, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:49:14', 1, NULL, NULL, '2kuv1h9d3d5l5v3t0cari330d4ebaf32'),
(844, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-14', '13:49:14', 1, NULL, NULL, 'nirr9qgbe3g2cck2tf3gd4gkhgfmi9lq'),
(845, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-15', '12:13:34', 1, NULL, NULL, 't222nfguhgg10a5gml5fph9p3ta508q6');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(846, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-15', '15:38:27', 1, NULL, NULL, '9i3308ceq7q5muss86dpe7orm1aeb5ti'),
(847, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-15', '18:46:39', 1, NULL, NULL, 'qm0eksuacubmo8ttd4m6kiiig1e7fc0e'),
(848, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '11:26:41', 1, NULL, NULL, 'e1sich38t571rbl1og0eri2trem3delq'),
(849, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-16', '11:28:19', 1, NULL, NULL, '3u7buj348qov6k1p87vv72skani05sqr'),
(850, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '12:11:39', 1, NULL, NULL, 'vbmsrknqssnnoqtkel4e4ltv1vgqlbg0'),
(851, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '15:19:15', 1, NULL, NULL, 'c1eg4eidnrp939hh1ogj3vll0j51e1jd'),
(852, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '15:41:42', 1, NULL, NULL, 'c19h6643hda8cqjeesoo08vnpt7kiqvd'),
(853, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '16:15:19', 1, NULL, NULL, 'g0tr6gepsd99jpvbpp102aa0tmtgcbhg'),
(854, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-16', '16:23:08', 1, NULL, NULL, 'uld11ngkn5houiqo2ftv5l06mibk0k8m'),
(855, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '17:26:33', 1, NULL, NULL, '2ln6eelraipqdvplp0r1o4m9r4nkntpf'),
(856, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '17:29:49', 1, NULL, NULL, 'mlmatd80bkct2pd1ac2l3a49grq9rb2a'),
(857, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '17:58:50', 1, NULL, NULL, 'qmqk21n2ief0npbhib20o5a70r2ih13c'),
(858, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '19:14:53', 1, NULL, NULL, 'c5sfgquk020lfcpckc4f65adqlf2e9gv'),
(859, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-16', '19:15:49', 1, NULL, NULL, '8a1rjanqoprdntkgplen2ebp0mt9ckld'),
(860, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '12:09:12', 2, '12:10:53', '2019-01-17', 'vqbh5lhbdl7jlegqva5cuujtk4kudq8o'),
(861, 'tvs31@gmail.com', 'user77', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '12:20:59', 1, NULL, NULL, 'qf4bijnhm8di46k5b40mi2bhb36fnk3g'),
(862, 'tvs31@gmail.com', 'user77', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '12:29:30', 1, NULL, NULL, 'gjjh08nnkshqolgkuus97t2lb8vqhp1v'),
(863, 'tvs31@gmail.com', 'user77', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:10:51', 1, NULL, NULL, '0sbb44j2ptptctp1r84hp5f0q2ff5kho'),
(864, 'sam@ilab.com', 'sam', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:41:05', 2, '13:42:55', '2019-01-17', '4p1ecft4vh69d1rv1tpfid8i8upjmbk3'),
(865, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:43:26', 1, NULL, NULL, 'ho42krr1pjrfddllalghqnjtfsplltlv'),
(866, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:57:24', 2, '13:58:14', '2019-01-17', 'lmc2lo9dbe1onjn3cql9ac3cjibqhlqs'),
(867, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:58:47', 2, '13:59:17', '2019-01-17', 'uv90shfr1be2mqcpgma6lmtl98l5dvlb'),
(868, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-17', '13:59:48', 1, NULL, NULL, 'oj89lac50nn0rb7kd6e5ocf19ck8608o'),
(869, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-17', '16:30:35', 1, NULL, NULL, 'mu5ssjvmf34br4gupbjpq4andkq266f7'),
(870, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-18', '15:05:13', 1, NULL, NULL, 'jeknee1rgnqkjqnc5q5g52qseq2uison'),
(871, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '15:37:42', 1, NULL, NULL, '4n6phikhpd5ln6bvueumfmv62hbbvneb'),
(872, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '15:39:14', 1, NULL, NULL, 'bdphf7gkon7do4no396hm8grhahf3qui'),
(873, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:04:54', 1, NULL, NULL, '044c626qj02jns8mm9tsnh7isnd8jr2v'),
(874, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:14:10', 1, NULL, NULL, 'k6vuv7h2n0hmatdtvpcormu6lqrbckpg'),
(875, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:14:33', 1, NULL, NULL, '1khf19rssle7vh16nsj77tuen8dbj9qb'),
(876, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:35:00', 1, NULL, NULL, '7750dcnamq1kefj7pcmrpclshc744pf3'),
(877, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:35:37', 1, NULL, NULL, 'osqfbdtj8nutch9facfc1538hfqse7hf'),
(878, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:36:24', 1, NULL, NULL, '2drur3j4pl358bb1nekku2mavhcdl212'),
(879, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '16:40:31', 1, NULL, NULL, '0ig2j6olreofd963e4lfk84drmgmoumo'),
(880, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '17:26:23', 1, NULL, NULL, '5bthdk1nvuue8l8p0jah6kffi26d23pn'),
(881, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:08:52', 1, NULL, NULL, 'skds6koj294b4f9v5g5s5ueujj9gi6vl'),
(882, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:12:37', 1, NULL, NULL, '2l1ptk5kdmt29lse1p4mi3471it0vb24'),
(883, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:21:31', 1, NULL, NULL, 'd99genv611706e0mhguedodcqac552ug'),
(884, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:22:07', 1, NULL, NULL, 'rp25vkuq1a5s3i5kfp53nuo1o2lsnjfu'),
(885, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:25:25', 1, NULL, NULL, '4jqskel1c467o8umrlok8e9v07te8n2b'),
(886, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:32:17', 2, '18:32:30', '2019-01-19', 'p0nrulvmld4jir37l7mqpig25qktrcfk'),
(887, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:33:18', 2, '18:36:24', '2019-01-19', 'ahqub2c3p524ghc33l65ebk54sk22lnd'),
(888, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:36:38', 1, NULL, NULL, 'nbhfusp7d72d4743ra4598vlhkkh5kf0'),
(889, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:37:32', 1, NULL, NULL, 'ia0fgqt2tl004he02nvj5fhevne0mn78'),
(890, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:42:18', 1, NULL, NULL, 'i7g4cdvc47r3pqvnu5vlgatkmddj3j8d'),
(891, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:43:11', 1, NULL, NULL, 'gupf7u7tq69kaijpbc6l75cst350bbb4'),
(892, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:53:04', 1, NULL, NULL, '06pqi18plaaf2evprllo2ajf6on75btr'),
(893, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '18:54:06', 1, NULL, NULL, 'r6lok5va9r7lh1n3b2tq0mqd79s13mcu'),
(894, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '19:14:34', 2, '19:17:31', '2019-01-19', '6eggp6553art29jhhf2oar9698hdum10'),
(895, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '19:18:04', 1, NULL, NULL, '4gbedks4ctp56jv5cfr140jo1q56cvjj'),
(896, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '19:31:09', 2, '19:31:22', '2019-01-19', '7ori7qtd8677vtbla6qbbvj610srlskh'),
(897, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '19:31:49', 1, NULL, NULL, '744c7kb7dadu02d2980sm11o923rjj2l'),
(898, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '20:00:20', 1, NULL, NULL, 'hqvumebhjnrftjvbg0n81ijk5drgam4m'),
(899, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '11:36:08', 1, NULL, NULL, 'f5ip83tumdhkqna51s36rn8ti4iiv2hl'),
(900, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-21', '11:37:59', 1, NULL, NULL, 'jca9i46cf8rolb6eukpkeod3plmsmt3f'),
(901, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '11:39:44', 1, NULL, NULL, 'l5knopncaltcs7vp9mqb3bh1cipvq7oj'),
(902, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '11:49:19', 1, NULL, NULL, 'nslsv4ethihch93hlche43e1ai7mu775'),
(903, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-21', '12:40:32', 1, NULL, NULL, 'gh9108ojbo0d6nu2q0r5n6urh6i23nbi'),
(904, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '13:02:46', 1, NULL, NULL, 'l59279vr3jgkp68a013n02epqpock7or'),
(905, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '13:21:35', 1, NULL, NULL, 'urmb9gi8a64c0tmggaim48cscvdpuild'),
(906, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '13:25:06', 1, NULL, NULL, 'ovad2oitbbcqcbufh3orbb7eg8at4m2q'),
(907, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '15:27:24', 2, '15:27:31', '2019-01-21', 'muk8b1oubnpo1bstttt6pthej6m87m1k'),
(908, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '15:27:42', 1, NULL, NULL, 'jle7kv5m9ehb10tvvrd59or9rds7iiii'),
(909, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '16:47:10', 1, NULL, NULL, 'gee25um2m2jevcs37ee910lb9j2unggj'),
(910, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:08:02', 1, NULL, NULL, 'ua78qdve2u94vc3cororiub7nmh9vnls'),
(911, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:08:02', 1, NULL, NULL, 'l3r11vsvj7t27lp7lpqq3nbbu4uiu54q'),
(912, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:08:02', 1, NULL, NULL, 'fied892o6rfm0bu6eg20etimtoddaibc'),
(913, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:08:02', 1, NULL, NULL, 'chc3rce3234re2h4ao7uesji3gvmgeeq'),
(914, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:08:18', 1, NULL, NULL, '5rqu7dqlm7i6cr0i3smmiumnmrnin50h'),
(915, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:17:37', 2, '17:17:49', '2019-01-21', 'j26q6rertarckf64olvlejb2nmv9bh0u'),
(916, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:18:10', 1, NULL, NULL, 'agn46hiqhbj62a51d5vmqsqafn6mq7rt'),
(917, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:35:56', 2, '17:36:28', '2019-01-21', 'sv1iai844balkiv68ug1bi5ogbbl1cem'),
(918, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:36:58', 1, NULL, NULL, '84v7ibtsgufpso1iiilkln85pb3o89ji'),
(919, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:52:20', 2, '17:52:50', '2019-01-21', 'vrc80ir68hc4rh4pmbi4prv25p255frb'),
(920, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '17:53:19', 1, NULL, NULL, 'humij5g1mqfp4dmo2h0vquq8o38h1j9s'),
(921, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '18:03:24', 1, NULL, NULL, 'ufg0pnolq2ue3u5m7qdpont0kqfabgga'),
(922, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-21', '19:47:28', 1, NULL, NULL, '2vadp06efr8q84d61ttbe2j8vrjq2dr7'),
(923, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-21', '20:03:30', 1, NULL, NULL, '9tcj717p1v1jpefipj6brb12hojbg52t'),
(924, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-22', '12:56:46', 1, NULL, NULL, '4camlf95ufdfeiaie2fk6oigkidk0cv1'),
(925, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:12:26', 1, NULL, NULL, 'la4fdfoomvv7cgk4l94qm7osfpkarpgf'),
(926, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:20:03', 1, NULL, NULL, 'qqsenlif96b6h63pihv41olslrr17gav'),
(927, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:20:47', 1, NULL, NULL, 'gm3dkpkhldtjlljkdpts9qpgto08pffu'),
(928, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:24:27', 1, NULL, NULL, 'jig7kuippbjei5rlndh818bc6d0pb62l'),
(929, 'bu1@ilab.com', 'bu user1', 6, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:25:46', 1, NULL, NULL, '3ul9h3mucccus10661s05556e87qh9n2'),
(930, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:45:23', 2, '15:45:51', '2019-01-22', '1h88g1tpl4sqq4rc68b4dj6lu8qa0lcb'),
(931, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '15:46:21', 1, NULL, NULL, '86pn0rbt3ifomfn4l1b1q4ner3qsto53'),
(932, 'admin@ilab.com', 'Admin', 1, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '20:03:01', 1, NULL, NULL, 'bvhl48p9dv8i1bt94fond4srok9i983l'),
(933, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '16:26:36', 1, NULL, NULL, 'g0v69r0hvbgmak4nui05959hi7f7cd91'),
(934, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '17:39:44', 1, NULL, NULL, 'ruvr5hs96e8i0qdief8r3h8abv3rt8vc'),
(935, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '18:38:50', 1, NULL, NULL, 'eftp2hr95il88ej2kgsckanis5auisio'),
(936, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '18:49:18', 1, NULL, NULL, '2oqifb4plmv6q2kjfh2cegfg89tubqfv'),
(937, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '19:02:38', 1, NULL, NULL, 'aluh2ql63ci9n5os5ohj31k7nkd716t5'),
(938, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '19:19:02', 1, NULL, NULL, '81l4ciuk75i8ernr113q3lql53ddftf2'),
(939, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '19:26:30', 1, NULL, NULL, '59vf0h8c7crfelanmjn4kbqk53pvdn1q'),
(940, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '19:36:00', 2, '19:38:42', '2019-01-23', 'ml4k341vopr3bqdev0b6ubf77iet17iv'),
(941, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '19:41:20', 1, NULL, NULL, 'o1jt46qqctvmf1noilvcd86jiur9dksk'),
(942, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-24', '11:59:28', 1, NULL, NULL, 'lpk7mj9e5u1gfgnr7tss32ne7aa2i4d1'),
(943, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:02:20', 1, NULL, NULL, 'epg6cqojbnt9mf5il9obbckpo950t3af'),
(944, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:24:42', 1, NULL, NULL, '0ksqh2cnldfiskeb9uhsapgh1h9liaab'),
(945, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:35:00', 1, NULL, NULL, 'nan60a1rpukv4nhlith8fe6adfig0s3k'),
(946, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:36:43', 2, '12:38:12', '2019-01-24', '9sa66a61qlin7hdbdc9rhl5s35rnsug6'),
(947, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:38:42', 1, NULL, NULL, 'ere9s02k3rdi8s978c0lt7eh6spsrnns'),
(948, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:46:23', 1, NULL, NULL, 'rg3v7nvfocc3628otomctn382fb494d1'),
(949, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:51:58', 2, '12:54:07', '2019-01-24', 'dmo2oep67e0cq1u02tv6sl22d23p3cno'),
(950, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '12:54:57', 1, NULL, NULL, 'g1id1icfte47ukl19piui7sp7kvtqjru'),
(951, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '13:07:11', 1, NULL, NULL, 'c6vvjhlhscpg1s9hkbbjpeemf2hkjgsc'),
(952, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '13:18:30', 1, NULL, NULL, 'hpeabc74f0eab3veprqa7omhkevedt09'),
(953, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '15:58:26', 1, NULL, NULL, 'sts436aog8c0tohfs8pvn8sn3q0t343t'),
(954, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:08:56', 2, '16:11:21', '2019-01-24', 'spgo6tqgsirll72fg97586hn78omdrh3'),
(955, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:11:53', 2, '16:12:36', '2019-01-24', 'bjlfa0m520ueesgugjpbcmih11h5j2ns'),
(956, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:13:59', 1, NULL, NULL, 'm9ltrftr0qgedkocvpac6kseba4lao1b'),
(957, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:33:19', 1, NULL, NULL, 'hpakv6nes8im6ri9ratft3qu2blpgkmm'),
(958, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-24', '16:50:17', 1, NULL, NULL, '245g7vhrr1l9vejn3u41uhn197n0gnum'),
(959, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:56:44', 1, NULL, NULL, '7h88kk7r7ttgh66tte1eaimd0b0qq3qb'),
(960, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-24', '17:13:04', 2, '17:17:38', '2019-01-24', 'rp3a8mu8ks653jlf8tcibf92e35opd9v'),
(961, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-24', '17:17:50', 1, NULL, NULL, '575sm7bm6eg4iue6l8hfj6f1775b5r8g'),
(962, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:21:57', 2, '17:26:22', '2019-01-24', 'i55pkd42o48oouao9ulf53ijugjebe9s'),
(963, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:26:36', 2, '17:29:05', '2019-01-24', 'u5momd7hmott329ommpm59lgj13dvols'),
(964, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:30:19', 2, '17:31:40', '2019-01-24', '9q3m1u7asmq1u97hgd573l24780lmusg'),
(965, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:33:01', 1, NULL, NULL, '9ov64v6modmo3pg57mjii74kr4iamcb1'),
(966, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-24', '18:53:16', 1, NULL, NULL, 'ha0tjs2p5hmm1dqgek3pthdbbv37ua2d'),
(967, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '19:10:08', 1, NULL, NULL, 'qe0339esjef265ag56dp53bsn4ip48pi'),
(968, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-25', '11:58:32', 1, NULL, NULL, '86068613d1sj6frfg96uddjkq7lkuldv'),
(969, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-25', '15:28:31', 1, NULL, NULL, 'sr8ubp1vnvhm9vdj23hr0nv5skoib2bp'),
(970, 'commerical@ilab.com', 'user3', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-25', '18:04:15', 1, NULL, NULL, 'inaoiud6pif4lmban0sdfhi0l3t55rmo'),
(971, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '18:49:13', 2, '18:50:51', '2019-01-25', '797knr9he5l9dvduujmnlevj2e9s3tsv'),
(972, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '18:51:21', 2, '18:52:15', '2019-01-25', 'sn7s3o5ngug9rn14dphd2n6m856tp278'),
(973, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '18:52:37', 2, '18:53:37', '2019-01-25', 'jsuuks86t9d5ahpruee4eui5gclogka4'),
(974, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '18:53:56', 1, NULL, NULL, 'a8p2je88k30653a2luadqp52qq4a9kjq'),
(975, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:15:14', 2, '19:19:11', '2019-01-25', 'l5pt4tpls6vf4kk2hbtbdk1t7p8mh5ji'),
(976, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:19:40', 1, NULL, NULL, 'ger69ru0am9dkfo86nokub6vmtqppsg9'),
(977, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:19:40', 2, '19:21:37', '2019-01-25', 'nl20nl1o3kqsjovc2i889smp5clpikk7'),
(978, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:22:10', 2, '19:23:01', '2019-01-25', '0r5lfatau9cnc1erkmncjvv79o59ob8l'),
(979, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:23:37', 1, NULL, NULL, 'p6rnmfv2e3jrns7ougjsd4vrk0md6cv5'),
(980, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:39:39', 2, '19:40:54', '2019-01-25', 'i3dp19rrhfh0ha1bp6qm0lekvht02fsn'),
(981, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:41:33', 2, '19:42:00', '2019-01-25', 'p80jm5j5kdtfs3p1i0r7n2asi0kulp3h'),
(982, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:42:20', 2, '19:42:38', '2019-01-25', 'mbk8aqso3ekprbn7rok4vege4v07f9ql');
INSERT INTO `Ilab_master_session_history` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(983, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:43:04', 1, NULL, NULL, 'i357rfbba1pour43qol3ob6r00gom8sq'),
(984, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:49:25', 2, '19:50:25', '2019-01-25', 'dbukk8l31q1178rlk48pkjh0b2usvrpi'),
(985, 'siprah@gmail.com', 'Approver5', 8, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:50:55', 2, '19:51:21', '2019-01-25', '1egiluiri4e8ub7uvlma63c5r15k37ku'),
(986, 'pro@ilab.com', 'procurement user 1', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:51:50', 2, '19:52:07', '2019-01-25', 'rrqboluq65283hogkeu74v1l2uaq4l14'),
(987, 'buy1@ilab.com', 'buyer 1', 7, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:52:39', 2, '19:55:17', '2019-01-25', 'ea6ia4mlbpqrfhcj0pf5m0d072c4p9gv');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_session_history_vendors`
--

CREATE TABLE `Ilab_master_session_history_vendors` (
  `slno_history` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT '0' COMMENT 'here serial id of vendor will be used',
  `browser_detail` text,
  `ip` varchar(255) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `logout_time` time DEFAULT NULL,
  `logout_date` date DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here user history of login';

--
-- Dumping data for table `Ilab_master_session_history_vendors`
--

INSERT INTO `Ilab_master_session_history_vendors` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(1, 'ven121@gmail.com', 'INFOLEX METAMORF BUSINESS SOLUTIONS PRIVATE LIMITED', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-22', '18:10:35', 2, '18:10:43', '2018-11-22', 'm5eci3prusk7fpqi6pv2t8j4tspglat3'),
(2, 'ven121@gmail.com', 'INFOLEX METAMORF BUSINESS SOLUTIONS PRIVATE LIMITED', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-22', '18:13:35', 1, NULL, NULL, 'ssklu715niijkh2d7dp0qfhqa96ish7d'),
(3, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-11-22', '18:19:57', 1, NULL, NULL, '4ipina04hge0i3q2eq8q40vssdnsoip8'),
(4, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-01', '12:20:47', 1, NULL, NULL, 'ctkkijkb9deta7qv4d9em8r0mhghq6pq'),
(5, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-01', '13:08:10', 1, NULL, NULL, 'g3r8snsgg57gkrb67aj39qqgpaamq6ue'),
(6, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-01', '13:11:09', 1, NULL, NULL, 'rlcqjcc8bmu4kgv61facu9lm90c2r3en'),
(7, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-01', '13:16:52', 1, NULL, NULL, 'rib1jrm0egpp9vsuk993su6f83rtjatf'),
(8, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}', '192.168.0.5', '2018-12-01', '13:30:57', 1, NULL, NULL, 'dglf5h9fkod7dg190i3emkmm7h11gj11'),
(9, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-01', '14:42:03', 1, NULL, NULL, 'uf53obv4brekk3ksrg9ogls0tdl6uhqa'),
(10, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-03', '12:15:18', 1, NULL, NULL, '4ciu4htgud9ns8ap4708fp1pqr1o8k13'),
(11, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-03', '12:17:15', 1, NULL, NULL, '9nhnv35ka1feib3pm0j81g7q863jltv8'),
(12, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '15:45:41', 1, NULL, NULL, 'ukrethi7124nklpo7gqjsfs3mdp5782p'),
(13, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '15:59:49', 2, '16:00:51', '2018-12-03', 'gvsbcqck1m1nq8e8396o7a0mr3thn3em'),
(14, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-03', '16:00:34', 1, NULL, NULL, '94ej4rg202biaasfbjb1ptrgtq5fa8jc'),
(15, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-03', '17:22:39', 1, NULL, NULL, 'h1imomm3j9phc39v49l8rjak2qa3st46'),
(16, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '10:54:26', 1, NULL, NULL, 'imm6vb0e8jfjg82dip8g4nu90hlfnl0k'),
(17, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '13:46:41', 1, NULL, NULL, '9h62bsgkcufiapgq9q1dkdhm4nnpmcan'),
(18, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '13:48:07', 1, NULL, NULL, '9u85nssnf9b0q8hfcqq1ih7vu9dfp21c'),
(19, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '13:49:12', 1, NULL, NULL, 'c6vnvq35blq7hqh37rv9hiuqr9358e47'),
(20, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '14:57:49', 1, NULL, NULL, 'fqi6hac84nrji62nggm3ak99aa3uj9uq'),
(21, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-04', '16:13:39', 1, NULL, NULL, '1hfnijem3udlnk1jd4k81589q32ooc05'),
(22, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-04', '18:54:22', 1, NULL, NULL, 'ntrpf5ti3l2d1p14oi6qgtr5nl2hpriu'),
(23, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-05', '10:45:31', 1, NULL, NULL, '2khgqoupqaei1rahf86avm835v2bfcno'),
(24, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-05', '13:25:52', 1, NULL, NULL, 'mvlp5h7moeduq05d3kq9a6ak0d8er4js'),
(25, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-05', '16:08:12', 1, NULL, NULL, '1ohk2gm54rs56ot4b6ei4k1hcru418ba'),
(26, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-05', '18:04:14', 1, NULL, NULL, '2cvtqmv9j4o8dnl9hiomlomgt8sunpmi'),
(27, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-06', '11:00:26', 1, NULL, NULL, '00okkg8aboslbkdrp21hauokp5ov7h47'),
(28, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-06', '18:16:03', 1, NULL, NULL, 'gp76vfjsd8keatjbc6s8r71mbkkamqd7'),
(29, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '12:04:09', 1, NULL, NULL, '9cou1e7p6pcqukvco13te2sslu0pq7v3'),
(30, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-07', '17:48:18', 1, NULL, NULL, 'b94f8712nbojohslf0k55sdttek9fsm2'),
(31, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-07', '18:48:17', 1, NULL, NULL, 'ab2nppmppqiv8ufs0kp94h20qqmmkomj'),
(32, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-08', '12:20:47', 1, NULL, NULL, 'vshtlnhov70rncugbrtc284noik6seg1'),
(33, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-08', '12:45:03', 1, NULL, NULL, '0j16lm6qs5cae20mes842qr6dai463mq'),
(34, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-08', '15:35:54', 1, NULL, NULL, '52skkjm56upevtvmf0a84jr49u1kj2pf'),
(35, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-10', '14:36:11', 2, '14:37:43', '2018-12-10', 'n6h41s4aam3l2hob5vqjn9jdhh37vdsd'),
(36, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '15:06:31', 1, NULL, NULL, 'nqiirekhrf2a770s9vuv1t49ngn4efde'),
(37, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '19:40:36', 1, NULL, NULL, 'gps6llcrjoiugpudtrir0dk3uaia4la1'),
(38, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '19:48:06', 1, NULL, NULL, 'ormde4s2jfqrb92jmg21aq9tfbv9277p'),
(39, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"70.0.3538.77\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.77 Safari\\/537.36\"}', '192.168.0.4', '2018-12-10', '19:51:37', 1, NULL, NULL, 'l3e9gduuk7lt2sn6ve0caqbgogrgg334'),
(40, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-10', '20:13:49', 1, NULL, NULL, 'v76vsopdfkvo4rdm5e1lbqpl90tkifv6'),
(41, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '12:06:56', 1, NULL, NULL, 'od36muf3sdjsj8bt8fc0upfjdmaja9jl'),
(42, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}', '192.168.0.4', '2018-12-11', '13:19:55', 1, NULL, NULL, 'gpe3rfblmovm671mm7n71jb9j8b3g5b6'),
(43, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-13', '20:16:45', 2, '20:19:41', '2018-12-13', 'u668rljgv87q06iht56dee8ipfrm0etn'),
(44, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '16:11:45', 1, NULL, NULL, 'kiarvcoaafcdorfcf3fn2ivbqhter2ed'),
(45, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '17:25:26', 1, NULL, NULL, 'loi2q9in3e1r3q0khcupo4uesonf9fa5'),
(46, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '18:28:23', 1, NULL, NULL, 'docg2l7hvjmi7g859umekpsgdveulqi3'),
(47, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-14', '19:17:18', 1, NULL, NULL, 'ga5f635pl07nhhonkt2fu888om9gu5hg'),
(48, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-15', '17:28:55', 1, NULL, NULL, 'pv5aj2igpclk9klplbq5r79rhs2t0ffn'),
(49, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-17', '10:59:20', 1, NULL, NULL, 'skin0g1li54ifd14quid5q38dum86fij'),
(50, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '15:12:58', 1, NULL, NULL, 'g8o5od8d8o2nr5e5evqsn01gurkphr0n'),
(51, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '19:04:58', 1, NULL, NULL, '1v1q2iq50pllf5dsk31tof0mrig14j3m'),
(52, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-18', '11:26:54', 1, NULL, NULL, '578pj6eub7poe0b3c7ucc2mc9jiea2l8'),
(53, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"67.0.3396.87\",\"platform\":\"Android\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Linux; Android 8.1.0; CPH1819 Build\\/O11019) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/67.0.3396.87 Mobile Safari\\/537.36\"}', '157.41.133.199', '2018-12-18', '17:03:58', 1, NULL, NULL, 'sftq38kmff15flep344ora7dvb10foas'),
(54, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-18', '18:05:06', 1, NULL, NULL, 'hb62elhqhqb0uabb8ac1q1nqgb1o6t2b'),
(55, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-19', '13:47:44', 1, NULL, NULL, '05ivkkmcuqsc4lp7pf14ubnef4i2or5g'),
(56, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-19', '15:51:45', 1, NULL, NULL, 'pf4ra8mkckf5roe6rmescbl7s25lf86i'),
(57, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '10:32:43', 1, NULL, NULL, 'p88hads4vhimeq6a060r80o21fikn7fn'),
(58, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-20', '11:47:46', 1, NULL, NULL, 'tnh6o0d1bm04ak0n8mqktl7opeqrrmft'),
(59, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '14:46:36', 1, NULL, NULL, 'r6pg0onn4mso5ffch49dmrs6on5c588m'),
(60, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-20', '15:36:19', 1, NULL, NULL, 'vhncoifgci8o5epcuo9n0867lsdjbp73'),
(61, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-20', '18:21:47', 1, NULL, NULL, '60l5opdp9d7hrnfa4mkml7lhmgaq0ggr'),
(62, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-21', '11:02:07', 1, NULL, NULL, 'sf4vakronb9bl9kothp7ahlgmnevfsvc'),
(63, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-21', '15:31:10', 1, NULL, NULL, 'gc36kmudeh66ottqkdm4hbq42ksai0ep'),
(64, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-21', '17:41:14', 1, NULL, NULL, '8bn1pda2oqtq97iuudilf3r2nsj7ripa'),
(65, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-21', '18:55:11', 1, NULL, NULL, 'h1sn4lo0kit4qrbedie0fe4fmtte1l48'),
(66, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '203.129.207.248', '2018-12-22', '11:28:41', 1, NULL, NULL, 'dad78e9puturl5fff43ehjd0ok1ua7au'),
(67, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '12:03:48', 1, NULL, NULL, '0f38i38089tfdmo4slv831c7v42sg46s'),
(68, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '16:09:44', 1, NULL, NULL, '9cd1ttq9fko4okjr78irq7i7oh8k02kj'),
(69, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-22', '19:23:00', 1, NULL, NULL, 'joq29sfb09nm5kn74sb707mo6ulmd2ro'),
(70, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '11:35:02', 1, NULL, NULL, '4u8lkcjml1dcc79s25aj51405kqcuhl3'),
(71, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '13:14:49', 1, NULL, NULL, '3u45gt02u6ja6nremoimoskvgj4aolcv'),
(72, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '15:51:25', 1, NULL, NULL, 'pa7fmc9mfmqlidqisbuhi8t0vqf9de4s'),
(73, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '16:58:36', 2, '16:59:12', '2018-12-24', '40qiplied0o3bl3qfujnn63ck9lku9mn'),
(74, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '18:37:57', 1, NULL, NULL, 'cq42fbsisn4uc4j9kacsg44tc1ugo0rb'),
(75, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-24', '19:17:56', 1, NULL, NULL, 'liht1f81bgnkmo8cka1jba54r0rcql3a'),
(76, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-24', '19:35:42', 1, NULL, NULL, 'g54n284thqnriiuhfrc6e30onqkmj0q2'),
(77, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '13:05:22', 1, NULL, NULL, 'rfu9b7994o0p4pf8oh6d7hjn6e814p65'),
(78, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '15:30:16', 2, '15:32:01', '2018-12-25', 'rpp2856kafilu94k69gdat34bhr5q2i5'),
(79, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:09:54', 2, '17:10:15', '2018-12-25', 's68o83vnbeluipel6hllt6co6cdk7rmo'),
(80, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:23:17', 2, '17:27:51', '2018-12-25', '37d7n4erpt6c8dm9j2o6c48mdm1i2fjf'),
(81, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:31:08', 2, '17:31:41', '2018-12-25', 'd315hb0f0ipotvfri6d8l2iubtbklglj'),
(82, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:34:11', 2, '17:35:13', '2018-12-25', 'j1fldc7gr0u6f2tojrd8qqkm387kiv13'),
(83, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:36:22', 2, '17:36:59', '2018-12-25', '1nclm1eudtcn221a36cthhmnorqjomm6'),
(84, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:44:42', 2, '17:45:25', '2018-12-25', 'oe3svp2jn06amiiok3d8m7ftgpsvaccu'),
(85, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '17:54:19', 1, NULL, NULL, '7idqcb51lavjqm81l2tjoboh3a5446o2'),
(86, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-25', '18:25:21', 1, NULL, NULL, 'derh50749r9ff0o8i3m6c7b0mjamc8hp'),
(87, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-25', '19:43:13', 1, NULL, NULL, 'k16trir1r4k5mnfq355mn2sb055ipgfc'),
(88, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '11:31:48', 1, NULL, NULL, 'p2ho6jvan9aj431t9druspi47gv24irb'),
(89, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '13:22:12', 1, NULL, NULL, 'krvnn4s3mqq6jijh0nq65pjchbf8bkus'),
(90, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '15:48:01', 1, NULL, NULL, '2jpupulsenf8tea3s2b8j3gobfh51j9s'),
(91, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-26', '17:54:58', 1, NULL, NULL, '3ljfq2nloooita4fjih3fo4qa3ku81dm'),
(92, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-26', '17:55:50', 1, NULL, NULL, 'jhiqf5t192ttq71qbtbibnqh1018n5ec'),
(93, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '11:07:22', 1, NULL, NULL, 'rg3hur4cb75pfjphkt5mun1ji6j9as8a'),
(94, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '11:09:37', 1, NULL, NULL, '01lrflh4ct5slcbgba5pkssq7ik34utd'),
(95, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '11:11:47', 1, NULL, NULL, '2dfb5apv88iga9htm53scl166llejpbh'),
(96, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '11:57:25', 1, NULL, NULL, 'lo2chg8f32hp92eft3ujejgle6v908bp'),
(97, 'ven97@gmail.com', 'Vendor779', 10, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '12:21:14', 1, NULL, NULL, '326li5ick01h6slg8mbtk9fid2sa4gqk'),
(98, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"65.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:65.0) Gecko\\/20100101 Firefox\\/65.0\"}', '192.168.0.4', '2018-12-27', '15:13:38', 1, NULL, NULL, 'kk8ived5m4sh7gkv9804lp3ovhq1mr7h'),
(99, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-27', '20:09:38', 2, '20:10:39', '2018-12-27', 'i1vqdhks3ci1jgqh7js7efm9rghmpm3p'),
(100, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '11:27:16', 1, NULL, NULL, 'n6fpq35q63urvuo1chfsuoql8jculepr'),
(101, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '11:59:08', 1, NULL, NULL, 'ut36ub7qki11mbcdnef95otencrmtdd9'),
(102, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '12:11:09', 1, NULL, NULL, '27pusv1jmi5lmo171nhi3th4f2ebi85i'),
(103, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-28', '12:11:12', 1, NULL, NULL, '0oufjrpeknmnbv1qjv4q2712v2hb0jq5'),
(104, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '15:10:17', 1, NULL, NULL, 'a8egd7ukn9924jik75v19lph81bkeuhf'),
(105, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2018-12-29', '16:19:36', 1, NULL, NULL, 'm45magp7ebf2vp1q4t7821nfiq0nfgoh'),
(106, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '19:21:59', 1, NULL, NULL, 'td70ieba9s8915f81rjk99in2unpo8nt'),
(107, 'ven97@gmail.com', 'Vendor779', 10, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '19:55:14', 2, '19:56:43', '2018-12-29', 'ah9t6jkfs173do9l5ev7c4opegl2p8h2'),
(108, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '19:56:58', 1, NULL, NULL, '7dssk3qpv8h6agp2v1i4rgoae3qffme9'),
(109, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '20:08:58', 1, NULL, NULL, 'qrmbpdnmkfno2tr65njj4bsqem6a0a40'),
(110, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-29', '20:13:10', 1, NULL, NULL, 'mf56n8re4aapbjngl5h50a5ln6lde9f0'),
(111, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-31', '11:42:13', 1, NULL, NULL, 'fgcki6gs7res1dtnh1d4pvinf8n0mlo2'),
(112, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-31', '18:40:32', 1, NULL, NULL, 'afagahkj6k4fjstql5a0b6i4eo6gj3j5'),
(113, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-31', '19:24:29', 1, NULL, NULL, '157rd2u7aibcildigrpsv2l30cq552nj'),
(114, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-31', '20:08:38', 1, NULL, NULL, 'tuaoace7ep0bojvj4a1hlipfk4mfcha5'),
(115, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-01', '11:38:03', 1, NULL, NULL, 'q9062h0nq9rq0r3bli4kgbkr1gvi42jc'),
(116, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-01', '12:05:50', 1, NULL, NULL, '5cr4a7rltjaeriavlpehptuiarg21n30'),
(117, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-01', '12:09:41', 1, NULL, NULL, 'bfte59ch18d9695afojj267bcat8fu8j'),
(118, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-01', '16:40:16', 1, NULL, NULL, '3h1mdp546mon08mm40n4l01isgq80492'),
(119, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-01', '16:50:39', 1, NULL, NULL, '9c7vo4tvg2tkrdetbnko96mq0qa2i5g5'),
(120, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '12:58:20', 1, NULL, NULL, '3fim0mvp6svffidemoq678ptm4t7lfsc'),
(121, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-03', '20:20:53', 1, NULL, NULL, '4bkivo6qpd7v0ldhukv8lms4at6kcgnt'),
(122, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-04', '11:54:23', 1, NULL, NULL, 'o77lmjfdela3nqgh90lp1a2ujtg8rdu0'),
(123, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-04', '15:14:05', 1, NULL, NULL, 'clua8jvpn0g73stl86cl41pt882151r8'),
(124, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-04', '19:54:15', 2, '19:57:16', '2019-01-04', '45tq5k2q4vqb6gfub283hjjjtor1s3nu'),
(125, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:39:05', 1, NULL, NULL, 'oobdd7th6ir6sbp470gknpo1g57c7h7v'),
(126, 'vender@ilab.com', 'vendor 1', 2, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-08', '17:52:12', 1, NULL, NULL, 'upn9b9r9qvllpthn7eea0fmo2q4olka6'),
(127, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-18', '19:26:44', 2, '19:26:52', '2019-01-18', 'd1bmtjl6obg0shmkef10vjg895ekgmns'),
(128, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-18', '19:27:22', 1, NULL, NULL, 'p36qmeioikqeigi531a61nop3p8q1ohh'),
(129, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-18', '19:31:57', 1, NULL, NULL, 's66apn2vf1r0jobnkh3vpl7gocf87ge0'),
(130, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-18', '19:34:01', 1, NULL, NULL, 'jo09rb43dhmj1uafco10qgv6nuud0u19'),
(131, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '11:25:52', 1, NULL, NULL, 'd5ln32lsi8dj35o769au2rk2lhqkpjco'),
(132, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '11:43:25', 1, NULL, NULL, 'fgn4e9f0l791ke8o9ka5d7b56075utgu'),
(133, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '11:44:49', 1, NULL, NULL, 's3ish3n64sfs5k3r53cjsgtffog3focu'),
(134, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '11:49:15', 1, NULL, NULL, 'r000731ai7j4772qj9ii1at70hs5us1b'),
(135, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:00:37', 1, NULL, NULL, 'o2n8ujliobu6kddrn8vrcbmfktcg3t3o'),
(136, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:02:00', 1, NULL, NULL, 'ra0lhlpls4osn8umke030i606gil7u3d'),
(137, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:04:14', 1, NULL, NULL, '5thfte46iikf9mvb7hu3rqo2ssc6r02g'),
(138, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:14:15', 1, NULL, NULL, 'dmh9uct6pigo49rn1rmeddfh6to7rmgt');
INSERT INTO `Ilab_master_session_history_vendors` (`slno_history`, `user_id`, `username`, `user_role`, `browser_detail`, `ip`, `entry_date`, `entry_time`, `status`, `logout_time`, `logout_date`, `session_id`) VALUES
(139, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:26:11', 1, NULL, NULL, 'cmo0iips13qlklcuda5unbiqc4lq3jrv'),
(140, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '12:46:05', 1, NULL, NULL, '51kk93mamerc3o636tamc73vum86t2fb'),
(141, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '15:18:09', 2, '15:18:31', '2019-01-19', 'dqb953d0eklnn3vh7b18bllkr2imf866'),
(142, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '15:20:12', 1, NULL, NULL, '71ggso8o9in3fg887pjt7lrpq4umhhqi'),
(143, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '17:42:18', 1, NULL, NULL, '6vputuuau5ce27nfqk11dj5kmvafcpio'),
(144, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '17:44:49', 1, NULL, NULL, '65c95roafonvt42b30k2e6vu06vjbgug'),
(145, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '17:45:36', 1, NULL, NULL, 'km7rhcb19pqm18pm3n77l2m6ibul7ba4'),
(146, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-19', '17:46:51', 1, NULL, NULL, 'n34p653lftilgub8ao76glnrohe34mbh'),
(147, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-22', '11:32:23', 1, NULL, NULL, '1cs1eu22kf7prdmggj7n5r526v9jbv8o'),
(148, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '18:35:06', 2, '18:38:14', '2019-01-23', '8dkh3bgn169cfruabl63cs6t0vuskrpa'),
(149, 'ven111@gmail.com', 'ven10', 3, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '18:43:05', 1, NULL, NULL, 'fh1dosrkvmvm692bcrcoklocchaqlk5s'),
(150, 'ven111@gmail.com', 'ven10', 3, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.5', '2019-01-23', '18:43:30', 1, NULL, NULL, '6o1ujgsag3pl7cdbtrfv1hkvcnjr5nrd'),
(151, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2019-01-23', '18:46:23', 1, NULL, NULL, '5hu99v7djf4c5schps02v8s64i3r0pj9'),
(152, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '13:38:14', 1, NULL, NULL, 'qmma37q05knmek7tej2qskl586ts1fk5'),
(153, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '16:51:47', 1, NULL, NULL, '6huto9lv15ggbv51mgi91dchptn6lanb'),
(154, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:01:39', 1, NULL, NULL, 'sonqik26oacj91ifc3dhq1ua184me900'),
(155, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '17:03:22', 1, NULL, NULL, 'am82af2vf2k0vtnujh1vdsi548gc5d7i'),
(156, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-24', '19:06:39', 2, '19:07:19', '2019-01-24', '07a93pmm3qf0qsui9tl2hp4mlhr3ftbs'),
(157, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:11:58', 2, '19:14:51', '2019-01-25', '0q6imn4pt7icv4jg41r417i4l3eukqlt'),
(158, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:38:32', 2, '19:39:02', '2019-01-25', '143lf921tm2d8sshfb65fgr2gf7eafor'),
(159, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:48:01', 2, '19:49:04', '2019-01-25', 'nn6idqarfo636h1dgqiuc7of9kdg03ti'),
(160, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-25', '19:55:39', 1, NULL, NULL, 'sgq785galr1ue3op37s0cbar1g23fov3');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_simple_bid`
--

CREATE TABLE `Ilab_master_simple_bid` (
  `Slno_simple` int(11) NOT NULL,
  `Bid_master_id_comm` int(11) NOT NULL,
  `Bid_ref_no` varchar(255) NOT NULL,
  `Bid_vendor_id` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_of_bid` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_bid_id` int(11) NOT NULL,
  `comment` text,
  `comment_by` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `resubmission` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_simple_bid`
--

INSERT INTO `Ilab_master_simple_bid` (`Slno_simple`, `Bid_master_id_comm`, `Bid_ref_no`, `Bid_vendor_id`, `Vendor_id`, `date_entry`, `type_of_bid`, `category_id`, `type_bid_id`, `comment`, `comment_by`, `comment_date`, `resubmission`) VALUES
(1, 4, 'qq	', '20', 'ven121@gmail.com', '2018-12-26 13:14:07', 'Simple Bid', 2, 1, NULL, NULL, NULL, 0),
(2, 5, '6756	', '26', 'ven121@gmail.com', '2018-12-26 13:19:30', 'Simple Bid', 3, 1, NULL, NULL, NULL, 0),
(3, 21, '6578	', '126', 'ven121@gmail.com', '2018-12-26 13:21:03', 'Simple Bid', 1, 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_simple_bid_item`
--

CREATE TABLE `Ilab_master_simple_bid_item` (
  `Slno_simple_item` int(11) NOT NULL,
  `Simple_id_slno` int(11) NOT NULL,
  `Bid_master_id_com` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Item_id` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Uom_unit` varchar(255) NOT NULL,
  `Unit_price` varchar(255) NOT NULL,
  `Total_unitprice` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comm_item_slno` varchar(255) NOT NULL,
  `Mr_item_slno` varchar(255) NOT NULL,
  `bid_slno` varchar(255) NOT NULL,
  `Vendor_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_simple_bid_item`
--

INSERT INTO `Ilab_master_simple_bid_item` (`Slno_simple_item`, `Simple_id_slno`, `Bid_master_id_com`, `Item_name`, `Item_id`, `Quantity`, `Uom_unit`, `Unit_price`, `Total_unitprice`, `date_entry`, `Comm_item_slno`, `Mr_item_slno`, `bid_slno`, `Vendor_id`) VALUES
(1, 1, 4, 'Progressing cavity pump.', 'Mat003', '10', 'Capacity', '987', '9870.00', '2018-12-26 13:14:07', '1', '', '20', 'ven121@gmail.com'),
(2, 1, 4, 'Pump', 'Mat001', '11', 'Horse Power', '994346', '10937806.00', '2018-12-26 13:14:07', '2', '', '20', 'ven121@gmail.com'),
(3, 1, 4, 'Rotary lobe pump', 'Mat002', '15', 'Max Pump volume', '98778', '1481670.00', '2018-12-26 13:14:07', '3', '', '20', 'ven121@gmail.com'),
(4, 3, 21, 'material item 1', 'mat001', '15', 'nos', '0966435', '14496525.00', '2018-12-26 13:21:03', '54', '', '126', 'ven121@gmail.com'),
(5, 3, 21, 'material item 17', 'mat0087', '15', 'nos', '7665', '114975.00', '2018-12-26 13:21:03', '55', '', '126', 'ven121@gmail.com'),
(6, 3, 21, 'material item 19', 'mat0018', '17', 'nos', '97867', '1663739.00', '2018-12-26 13:21:03', '56', '', '126', 'ven121@gmail.com'),
(7, 3, 21, 'material item 22', 'mat00910', '18', 'nos', '7648', '137664.00', '2018-12-26 13:21:03', '57', '', '126', 'ven121@gmail.com'),
(8, 3, 21, 'material10', '10', '10', '21', '4373', '43730.00', '2018-12-26 13:21:03', '58', '', '126', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_simple_bid_item_misc`
--

CREATE TABLE `Ilab_master_simple_bid_item_misc` (
  `Slno_simple_misc` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `simple_id_slno_misc` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_simple_bid_item_misc`
--

INSERT INTO `Ilab_master_simple_bid_item_misc` (`Slno_simple_misc`, `master_bid_id_com`, `simple_id_slno_misc`, `field_name`, `field_value`, `date_entry`, `Bid_slno`, `Vendor_id`) VALUES
(1, 4, 1, 'delivery basis', 'uyjr', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(2, 4, 1, 'gaurantee warranty', 'nhdf', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(3, 4, 1, 'delivery schedule', 'dhb', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(4, 4, 1, 'payment terms', 'gfh', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(5, 4, 1, 'validity of offer', 'hbd', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(6, 4, 1, 'security BG', 'hhb', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(7, 4, 1, 'liquidity damage', 'hdh', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(8, 4, 1, 'remarks', 'hbbbh', '2018-12-26 13:14:07', '20', 'ven121@gmail.com'),
(9, 5, 2, 'delivery basis', 'ggbbn', '2018-12-26 13:19:30', '26', 'ven121@gmail.com'),
(10, 5, 2, 'gaurantee warranty', 'jkkk', '2018-12-26 13:19:30', '26', 'ven121@gmail.com'),
(11, 5, 2, 'delivery schedule', 'opoiku', '2018-12-26 13:19:30', '26', 'ven121@gmail.com'),
(12, 5, 2, 'payment terms', 'fggg', '2018-12-26 13:19:30', '26', 'ven121@gmail.com'),
(13, 5, 2, 'validity of offer', 'hhvvg', '2018-12-26 13:19:30', '26', 'ven121@gmail.com'),
(14, 5, 2, 'security BG', 'ghhj', '2018-12-26 13:19:31', '26', 'ven121@gmail.com'),
(15, 5, 2, 'liquidity damage', 'hjuu', '2018-12-26 13:19:31', '26', 'ven121@gmail.com'),
(16, 5, 2, 'remarks', 'uuy', '2018-12-26 13:19:31', '26', 'ven121@gmail.com'),
(17, 21, 3, 'delivery basis', 'hjb', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(18, 21, 3, 'gaurantee warranty', 'vgb', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(19, 21, 3, 'delivery schedule', 'vftd', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(20, 21, 3, 'payment terms', 'jghgf', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(21, 21, 3, 'validity of offer', 'fgcgh', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(22, 21, 3, 'security BG', 'jhuj', '2018-12-26 13:21:03', '126', 'ven121@gmail.com'),
(23, 21, 3, 'liquidity damage', 'fgvy', '2018-12-26 13:21:04', '126', 'ven121@gmail.com'),
(24, 21, 3, 'remarks', 'redhg', '2018-12-26 13:21:04', '126', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_simple_bid_item_total`
--

CREATE TABLE `Ilab_master_simple_bid_item_total` (
  `Slno_simple_item_total` int(11) NOT NULL,
  `master_bid_id_com` int(11) NOT NULL,
  `simple_id_slno_total` int(11) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_assumption_charge` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `current_rate` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `vendor_Bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_simple_bid_item_total`
--

INSERT INTO `Ilab_master_simple_bid_item_total` (`Slno_simple_item_total`, `master_bid_id_com`, `simple_id_slno_total`, `sub_total`, `total_tax`, `total_price`, `user_assumption_charge`, `date`, `current_rate`, `currency_name`, `vendor_Bid_slno`, `Vendor_id`) VALUES
(1, 4, 1, '12429346.00', '064.00656', '12429410.01', '0.00', '2018-12-26 13:14:07', NULL, NULL, '20', 'ven121@gmail.com'),
(2, 5, 2, '6965507.00', '0345.00', '6965852.00', '0.00', '2018-12-26 13:19:31', NULL, NULL, '26', 'ven121@gmail.com'),
(3, 21, 3, '16456633.00', '05437.00', '16462070.00', '0.00', '2018-12-26 13:21:04', NULL, NULL, '126', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_simple_bid_logistic`
--

CREATE TABLE `Ilab_master_simple_bid_logistic` (
  `Slno_simple_item` int(11) NOT NULL,
  `simple_id_slno` int(11) NOT NULL,
  `bid_master_id_com` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `from_location` varchar(255) NOT NULL,
  `to_location` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_unit_price` varchar(255) NOT NULL,
  `date_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comm_item_slno` varchar(255) NOT NULL,
  `mr_item_slno` varchar(255) DEFAULT NULL,
  `vendor_bid_slno` varchar(255) NOT NULL,
  `Vendor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_simple_bid_logistic`
--

INSERT INTO `Ilab_master_simple_bid_logistic` (`Slno_simple_item`, `simple_id_slno`, `bid_master_id_com`, `vehicle_type`, `capacity`, `detail`, `no`, `from_location`, `to_location`, `unit_price`, `total_unit_price`, `date_entry`, `comm_item_slno`, `mr_item_slno`, `vendor_bid_slno`, `Vendor_id`) VALUES
(1, 2, 5, '504ponds', '5ponds', ' tyyy', '1', 'bhu1', 'bhu1', '998', '998.00', '2018-12-26 13:19:30', '17', NULL, '26', 'ven121@gmail.com'),
(2, 2, 5, 'vehicle10', '8000ponds', 'XYZ', '1', 'bhu', 'bhu', '6768778', '6768778.00', '2018-12-26 13:19:30', '18', NULL, '26', 'ven121@gmail.com'),
(3, 2, 5, 'vehicle10', '5ponds', '2345', '1', 'sailahree vihar', 'sailahree vihar', '9866', '9866.00', '2018-12-26 13:19:30', '19', NULL, '26', 'ven121@gmail.com'),
(4, 2, 5, 'vehicle12', '60000ponds', 'abc', '1', 'irc', 'irc', '86754', '86754.00', '2018-12-26 13:19:30', '20', NULL, '26', 'ven121@gmail.com'),
(5, 2, 5, 'vehicle12', '60000ponds', '12345', '1', 'bhu1', 'bhu1', '346', '346.00', '2018-12-26 13:19:30', '21', NULL, '26', 'ven121@gmail.com'),
(6, 2, 5, 'vehicle12', '8000ponds', '3456', '1', 'sailahree vihar', 'sailahree vihar', '98765', '98765.00', '2018-12-26 13:19:30', '22', NULL, '26', 'ven121@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_technical_detail`
--

CREATE TABLE `Ilab_master_technical_detail` (
  `Slno_technical` int(11) NOT NULL,
  `technical_name` varchar(255) NOT NULL,
  `technical_desc` text NOT NULL,
  `technical_id` varchar(255) NOT NULL,
  `category_slno` varchar(255) NOT NULL,
  `material_slno` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_technical_detail`
--

INSERT INTO `Ilab_master_technical_detail` (`Slno_technical`, `technical_name`, `technical_desc`, `technical_id`, `category_slno`, `material_slno`, `status`, `date_entry`, `time_entry`) VALUES
(1, '316Ls', '316L stainless steel head and casing', 'Tech001', '2', 4, 3, '2019-01-18', '17:31:08'),
(2, 'tec10', 'xxx', '101', '1', 6, 1, '2018-09-26', '15:16:54'),
(3, 'tec10', 'xxx', '101', '2', 3, 1, '2018-09-26', '15:19:18'),
(4, '67tyu', 'cvbnmxrt', '126709', '1', 6, 1, '2018-10-09', '21:20:46'),
(5, 'BNTRY', 'bnmiyutre', '0290321', '1', 6, 1, '2018-10-09', '21:21:46'),
(6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 'techid00155', '1', 7, 1, '2018-10-15', '17:42:53'),
(7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 'techid001sssd', '1', 7, 1, '2018-10-15', '17:43:28'),
(8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 'techid0013343434', '1', 8, 1, '2018-10-15', '17:44:00'),
(9, 'tech34311', 'xxxxx', '12131', '1', 2, 1, '2019-01-18', '17:23:05'),
(10, 'tech454', 'xxxxx', '455555', '1', 6, 1, '2019-01-18', '17:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_tech_bid_comment`
--

CREATE TABLE `Ilab_master_tech_bid_comment` (
  `Slno` int(11) NOT NULL,
  `master_bid` varchar(255) NOT NULL,
  `vendor_bid_id` varchar(255) NOT NULL,
  `comment` text,
  `status` varchar(255) NOT NULL COMMENT 'p-positive n-negative',
  `active_status` int(11) NOT NULL DEFAULT '0',
  `token_no` varchar(255) NOT NULL,
  `token_id` varchar(255) NOT NULL COMMENT 'Serial id to tokken',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_tracking_tools`
--

CREATE TABLE `Ilab_master_tracking_tools` (
  `Slno_tracking` int(11) NOT NULL,
  `Job_code` varchar(255) DEFAULT NULL,
  `Po_no` varchar(255) NOT NULL,
  `Po_date` varchar(255) DEFAULT NULL,
  `Date_creation` varchar(255) DEFAULT NULL,
  `Bg_submission_date` varchar(255) DEFAULT NULL,
  `Drg_submission_date` varchar(255) DEFAULT NULL,
  `Advance_payment_date` varchar(255) DEFAULT NULL,
  `Drg_approval_date` varchar(255) DEFAULT NULL,
  `Inspection_call_date` varchar(255) DEFAULT NULL,
  `Inspection_call_remark` text,
  `Inspection_clearance_date` varchar(255) DEFAULT NULL,
  `Inspection_clearance_remark` text,
  `Dispatch_clearance_date` varchar(255) DEFAULT NULL,
  `Dispatch_clearance_remark` text,
  `Qty_receipt_at_site` text,
  `Qty_pending` varchar(255) DEFAULT NULL,
  `Supply_completion` varchar(255) DEFAULT NULL,
  `Remark_process` text,
  `ACE_Basic` varchar(255) DEFAULT NULL,
  `Invoice_value` varchar(255) DEFAULT NULL,
  `Order_value` varchar(255) DEFAULT NULL,
  `Cost_saving` varchar(255) DEFAULT NULL,
  `Mfg_clear_date` varchar(255) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `submitted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_tracking_tools`
--

INSERT INTO `Ilab_master_tracking_tools` (`Slno_tracking`, `Job_code`, `Po_no`, `Po_date`, `Date_creation`, `Bg_submission_date`, `Drg_submission_date`, `Advance_payment_date`, `Drg_approval_date`, `Inspection_call_date`, `Inspection_call_remark`, `Inspection_clearance_date`, `Inspection_clearance_remark`, `Dispatch_clearance_date`, `Dispatch_clearance_remark`, `Qty_receipt_at_site`, `Qty_pending`, `Supply_completion`, `Remark_process`, `ACE_Basic`, `Invoice_value`, `Order_value`, `Cost_saving`, `Mfg_clear_date`, `Status`, `Entry_date`, `Update`, `submitted_by`) VALUES
(1, '33', '345434', '2018-11-28', '2018-11-28', '', NULL, '', NULL, '', '', '', '', '', '', '', '', '2', '', '', '', '', '', '', 1, '2018-11-09 12:16:15', '2018-11-09 12:16:15', 'bu1@ilab.com'),
(2, '787867', '678989', '2019-01-28', '2019-01-18', '2019-01-21', NULL, '2018-11-12', NULL, '2019-01-07', 'xxx', '2019-01-29', 'xxxx', '2019-02-09', 'xxxxxx', '77879898700', '0', '1', 'xx', '12', '980000', '9', '56000', '2019-01-24', 1, '2019-01-16 11:26:04', '2019-01-16 11:26:04', 'bu1@ilab.com'),
(3, '98778', '758808', '2019-01-18', '2019-01-05', '2019-01-11', NULL, '', '', '2019-01-24', 'xxxxx', '2019-01-28', 'xxxxx', '2019-01-30', 'xxx', '12', '0', '1', 'x', '17', '3500', '9', '8000', '2019-01-21', 1, '2019-01-16 11:55:00', '2019-01-16 12:08:04', 'bu1@ilab.com'),
(4, '7776', '66767', '2019-01-12', '2019-01-09', '2019-01-18', NULL, '', NULL, '2019-01-11', 'xxxx', '2019-01-16', 'xxxxxxxxxxxxxx', '2019-01-17', 'xx', '8700', '8900', '1', 'xxxx', '7.9', '7000', '9.9', '6750', '2019-01-21', 1, '2019-01-19 12:48:01', '2019-01-19 12:48:01', 'bu1@ilab.com');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vehicle`
--

CREATE TABLE `Ilab_master_vehicle` (
  `Slno_vehicle` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_capacity` varchar(255) NOT NULL,
  `vehicle_desc` text NOT NULL,
  `category_slno` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vehicle`
--

INSERT INTO `Ilab_master_vehicle` (`Slno_vehicle`, `vehicle_type`, `vehicle_capacity`, `vehicle_desc`, `category_slno`, `status`, `date_entry`, `time_entry`) VALUES
(1, '504ponds', '5ponds', ' tyyy', '3', 2, '2018-10-11', '21:29:54'),
(2, 'vehicle10', '8000ponds', 'XYZ', '3', 2, '2018-10-22', '15:44:52'),
(3, 'vehicle12', '60000ponds', 'abc', '3', 1, '2018-10-22', '15:45:09'),
(4, 'vehicle12', '60000ponds', '12345', '3', 1, '2018-10-22', '15:45:27'),
(5, 'vehicle12', '8000ponds', '3456', '3', 3, '2018-10-22', '15:45:44'),
(6, 'vehicle10', '5ponds', '2345', '3', 1, '2018-10-22', '15:46:01'),
(7, 'vehicle3s', '8000ponds', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '3', 3, '2019-01-18', '18:28:57'),
(8, 'vehicle10', '50s ponds', 'xxxxxx', '3', 1, '2019-01-18', '18:29:37'),
(9, 'vehicle10', '50s ponds', 'xxxxxx', '3', 1, '2019-01-18', '18:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vehicle_capacity`
--

CREATE TABLE `Ilab_master_vehicle_capacity` (
  `Slno_vehicle` int(11) NOT NULL,
  `vehicle_capacity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vehicle_capacity`
--

INSERT INTO `Ilab_master_vehicle_capacity` (`Slno_vehicle`, `vehicle_capacity`, `status`, `date_entry`, `time_entry`) VALUES
(1, '500ponds', 3, '2018-09-25', '16:34:29'),
(2, '50 ponds', 2, '2018-09-25', '16:35:24'),
(3, '5ponds', 3, '2018-09-25', '16:37:33'),
(4, '8000ponds', 1, '2018-09-25', '16:59:37'),
(5, '60000ponds', 1, '2018-09-26', '15:26:05'),
(12, '50s ponds', 1, '2018-10-11', '21:18:24'),
(13, 'vehicle111211', 1, '2019-01-18', '18:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vehicle_type`
--

CREATE TABLE `Ilab_master_vehicle_type` (
  `Slno_vehicle` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vehicle_type`
--

INSERT INTO `Ilab_master_vehicle_type` (`Slno_vehicle`, `vehicle_type`, `status`, `date_entry`, `time_entry`) VALUES
(1, 'vehicle3s', 1, '2018-09-25', '16:34:29'),
(2, '504ponds', 1, '2018-09-25', '16:35:24'),
(3, 'vehicle10', 1, '2018-09-25', '16:37:33'),
(4, 'vehicle12', 1, '2018-09-25', '16:59:37'),
(5, 'vehicle2', 3, '2018-09-26', '15:26:05'),
(6, 'vehech', 3, '2018-10-11', '18:01:42'),
(7, 'vehicle13343', 1, '2019-01-18', '17:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vendor_detail`
--

CREATE TABLE `Ilab_master_vendor_detail` (
  `Slno_vendor` int(11) NOT NULL,
  `Vendor_name` varchar(255) NOT NULL,
  `Vendor_email_id` varchar(255) NOT NULL,
  `Mobile_no` varchar(255) NOT NULL,
  `Organisation_name` text NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Password_hash` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  `Date_entry` date NOT NULL,
  `Time_entry` time NOT NULL,
  `Vendor_desc` text NOT NULL,
  `Organisation_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='here vendor list will appear which list';

--
-- Dumping data for table `Ilab_master_vendor_detail`
--

INSERT INTO `Ilab_master_vendor_detail` (`Slno_vendor`, `Vendor_name`, `Vendor_email_id`, `Mobile_no`, `Organisation_name`, `Password`, `Password_hash`, `Status`, `Date_entry`, `Time_entry`, `Vendor_desc`, `Organisation_address`) VALUES
(1, 'vendor 2', 'vender2@ilab.com', '99330', 'vendor 2 pvt ltd', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2019-01-18', '16:56:30', 'teartt', 'wqqwqw'),
(2, 'vendor 1', 'vender@ilab.com', '99330', 'vendor pvt ltd', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2018-09-22', '19:08:40', 'teartt', 'wqqwqw'),
(3, 'ven10', 'ven111@gmail.com', '985676768', 'xyz', '111', '698d51a19d8a121ce581499d7b701668', 1, '2018-09-26', '15:14:25', 'ttt', 'xxxt'),
(4, 'INFOLEX METAMORF ', 'ven121@gmail.com', '76673498510', 'INFOLEX METAMORF BUSINESS SOLUTIONS PRIVATE LIMITED', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2018-09-26', '15:24:14', 'xxxy', 'No.3, 3rd Main, Bahubalinagar, MES Ring Road, Jalahalli Post Bangalore Bangalore KA 560013 IN'),
(5, 'Vendor 4', 'ven221@gmail.com', '8635787011', 'T&T', '5432', '2e92962c0b6996add9517e4242ea9bdc', 1, '2018-11-13', '11:44:36', 'abc', 'Chennai'),
(6, 'Vendor5', 'ven001@gmail.com', '76453892344', 'WWPE', '4444', 'dbc4d84bfcfe2284ba11beffb853a8c4', 1, '2018-11-13', '11:46:49', 'xxxc', 'odisha'),
(7, 'Vendor 7', 'ven310@yahoo.com', '7767443790', 'ipts', '567', '99c5e07b4d5de9d18c350cdf64c5aa3d', 1, '2018-11-13', '11:48:12', 'vvvy', 'Jharkhand'),
(8, 'Vendors10', 'ven1011@yahoo.com', '74683983390', 'GTPS', '9990', 'a8eaf88e26451020bf62ab0bc441ec13', 1, '2018-11-13', '11:49:32', 'tttz', 'Mumbai'),
(9, 'Vendor 13', 'ven331@gmail.com', '738985412', 'P&G', '747', '8d317bdcf4aafcfc22149d77babee96d', 1, '2018-11-13', '11:52:34', 'aaac', 'BBSR'),
(10, 'Vendor779', 'ven97@gmail.com', '7437878342', 'AATG', '8888', 'cf79ae6addba60ad018347359bd144d2', 1, '2018-11-13', '11:54:37', 'cvcd', 'ctc'),
(11, 'Vendor55', 'ven979@yahoo.com', '7564566850', 'DDTC', '7771', 'cd81cfd0a3397761fac44ddbe5ec3349', 1, '2018-11-13', '12:07:01', 'gtch', 'RNC'),
(12, 'Vendor11', 'ven90@gmail.com', '8576902112', 'TTS', '555', '15de21c670ae7c3f6f3f1f37029303c9', 1, '2018-11-13', '12:12:29', 'vvs', 'BBSR'),
(13, 'Vendor31', 'ven66@gmail.com', '656349001', 'UTPS', '5557', '73f715c6cc2b110fc67503ba813f7f0e', 1, '2018-11-13', '12:20:40', 'DCH', 'CTC'),
(14, 'Vendor21', 'ven371@yahoo.com', '743578980', 'LGP', '779', '67d96d458abdef21792e6d8e590244e7', 1, '2018-11-13', '13:19:25', 'ttc', 'CTC'),
(15, 'Vendors11', 'ven170@yahoo.com', '74657390', 'C&Z', '7100', '9d94c8981a48d12adfeecfe1ae6e0ec1', 1, '2018-11-13', '13:22:56', 'vvvvn', 'BBSR'),
(16, 'veh1231', 'ven454@yahoo.com', '86578757500', 'xxxx1', 'xxx', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 1, '2019-01-18', '16:55:33', 'xxxxxxx', 'xxxx1211');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vendor_file_token`
--

CREATE TABLE `Ilab_master_vendor_file_token` (
  `slno_tech_file` int(11) NOT NULL,
  `token_id` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_attach` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_entry` date NOT NULL,
  `time_entry` time NOT NULL,
  `bid_user_slno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vendor_file_token`
--

INSERT INTO `Ilab_master_vendor_file_token` (`slno_tech_file`, `token_id`, `master_bid_id`, `vendor_id`, `file_name`, `file_attach`, `status`, `date_entry`, `time_entry`, `bid_user_slno`) VALUES
(1, '8sBuXpWj', 1, 'ven121@gmail.com', 'profile of company', '2019-01-04-vdb1anner.jpg', 1, '2019-01-04', '12:13:05', 3),
(2, '8sBuXpWj', 1, 'ven121@gmail.com', 'patener details', '2019-01-04-slider-main-bg.jpg', 1, '2019-01-04', '12:17:23', 3),
(3, '5mgCKD7n', 1, 'vender@ilab.com', 'profile', '2019-01-04-banner-1.jpg', 1, '2019-01-04', '19:55:57', 1),
(4, '5mgCKD7n', 1, 'vender@ilab.com', 'persd', '2019-01-04-banner-1.jpg', 1, '2019-01-04', '19:56:07', 1),
(5, 'kiL6n7Yc', 1, 'vender@ilab.com', 'pra', '2019-01-04-gree5.jpg', 1, '2019-01-04', '19:56:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vendor_notifications`
--

CREATE TABLE `Ilab_master_vendor_notifications` (
  `slno_approve` int(11) NOT NULL,
  `vendor_id_bid` varchar(255) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `date_entry` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `view_status` int(11) NOT NULL DEFAULT '0' COMMENT '0->not view 1->view',
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vendor_notifications`
--

INSERT INTO `Ilab_master_vendor_notifications` (`slno_approve`, `vendor_id_bid`, `vendor_id`, `date_entry`, `date_update`, `view_status`, `message`) VALUES
(1, '131', 'vender@ilab.com', '2018-12-29 12:52:15', '2018-12-29 12:52:15', 0, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(2, '132', 'ven121@gmail.com', '2018-12-29 12:52:15', '2018-12-29 15:06:58', 1, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(3, '131', 'vender@ilab.com', '2018-12-29 13:44:44', '2018-12-29 13:44:44', 0, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(4, '132', 'ven121@gmail.com', '2018-12-29 13:44:44', '2019-01-03 14:51:03', 1, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(5, '131', 'vender@ilab.com', '2018-12-29 13:45:09', '2018-12-29 13:45:09', 0, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(6, '132', 'ven121@gmail.com', '2018-12-29 13:45:09', '2018-12-31 07:28:57', 1, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 12/31/2018 11:10 AM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(7, '131', 'vender@ilab.com', '2018-12-31 10:26:55', '2018-12-31 10:26:55', 0, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 01/03/2019 3:56 PM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(8, '132', 'ven121@gmail.com', '2018-12-31 10:26:55', '2019-01-19 07:29:08', 1, 'A Rank order reverse auction shall be conducted for the bid no  4334 dated on 01/03/2019 3:56 PM you are requested to participate. <br> <p>For any query send your queries accross ther application no '),
(9, '1', 'vender@ilab.com', '2019-01-23 13:03:16', '2019-01-23 13:03:16', 0, 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for. '),
(10, '1', 'vender@ilab.com', '2019-01-23 13:03:47', '2019-01-23 13:03:47', 0, 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for. '),
(11, '3', 'ven121@gmail.com', '2019-01-23 13:03:47', '2019-01-23 13:05:21', 1, 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for. '),
(12, '2', 'ven111@gmail.com', '2019-01-23 13:15:58', '2019-01-23 13:17:27', 1, 'same name in the Pacific Ocean. Kusche also argued that a large percentage of the incidents that sparked allegations of the Triangle\'s mysterious influence actually occurred well outside it. Often his research was simple: he would review period newspapers of the dates of reported incidents and find reports on possibly relevant events like unusual weather, that were never mentioned in the disappearance stories. ');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_master_vendor_tech_token_bid`
--

CREATE TABLE `Ilab_master_vendor_tech_token_bid` (
  `Slno_token` int(11) NOT NULL,
  `token_no` varchar(255) NOT NULL,
  `bid_id_vendor` varchar(255) NOT NULL,
  `master_bid_id` int(11) NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `submitted_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-for not submitted 1-submitted 5-update submission',
  `date_creation` date NOT NULL,
  `date_updation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_vendor_tech_token_bid`
--

INSERT INTO `Ilab_master_vendor_tech_token_bid` (`Slno_token`, `token_no`, `bid_id_vendor`, `master_bid_id`, `vendor_id`, `submitted_status`, `date_creation`, `date_updation`, `comment`) VALUES
(1, '8sBuXpWj', '3', 1, 'ven121@gmail.com', 1, '2019-01-04', '2019-01-04 07:16:14', NULL),
(2, '5mgCKD7n', '1', 1, 'vender@ilab.com', 5, '2019-01-04', '2019-01-04 14:26:46', NULL),
(3, 'kiL6n7Yc', '1', 1, 'vender@ilab.com', 1, '2019-01-04', '2019-01-04 14:26:46', NULL),
(4, 'Fg4cfo2S', '3', 1, 'ven121@gmail.com', 0, '2019-01-18', '2019-01-18 13:58:39', NULL),
(5, 'S8EdG4ch', '3', 1, 'ven121@gmail.com', 0, '2019-01-19', '2019-01-19 06:13:38', NULL),
(6, 'W4gYAbm9', '3', 1, 'ven121@gmail.com', 0, '2019-01-19', '2019-01-19 06:36:59', NULL),
(7, 'nmz8OHBQ', '3', 1, 'ven121@gmail.com', 0, '2019-01-19', '2019-01-19 06:45:17', NULL),
(8, '6LGMxtFu', '3', 1, 'ven121@gmail.com', 0, '2019-01-19', '2019-01-19 12:13:18', NULL),
(9, 'xtZkoL0a', '3', 1, 'ven121@gmail.com', 0, '2019-01-22', '2019-01-22 06:04:39', NULL),
(10, 'O598MWXd', '3', 1, 'ven121@gmail.com', 0, '2019-01-22', '2019-01-22 06:07:26', NULL),
(11, 'aILF63ib', '3', 1, 'ven121@gmail.com', 0, '2019-01-22', '2019-01-22 07:51:08', NULL),
(12, 'zboOwQJ4', '3', 1, 'ven121@gmail.com', 0, '2019-01-22', '2019-01-22 07:54:52', NULL),
(13, '0dbQo45v', '3', 1, 'ven121@gmail.com', 0, '2019-01-24', '2019-01-24 11:35:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_pms_log_entries`
--

CREATE TABLE `Ilab_pms_log_entries` (
  `Slno` int(11) NOT NULL,
  `Form_name` varchar(255) NOT NULL,
  `Data_entry` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Location_Id` varchar(255) NOT NULL,
  `browser_information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_pms_log_entries`
--

INSERT INTO `Ilab_pms_log_entries` (`Slno`, `Form_name`, `Data_entry`, `status`, `Date`, `Time`, `Location_Id`, `browser_information`) VALUES
(1, 'User_Entry_Form', '{\"email_id\":\"sam@ilab.com\",\"Username\":\"sam\",\"Password\":\"1234Ars2\",\"password_hash\":\"b637b89ccae8a537eeb3b64cd57be090\",\"Status\":1,\"role_id\":\"2\",\"user_mobile\":\"7412365890\",\"user_degination\":\"user\"}', 1, '2018-09-04', '20:20:12', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(2, 'update users password', '{\"data_insert\":\"{\\\"Password\\\":\\\"abcd!2345aA\\\",\\\"password_hash\\\":\\\"f2189e3b6b4807018b83f3540e8bc4bf\\\"}\",\"update_id\":\"{\\\"slno\\\":\\\"6\\\"}\"}', 1, '2018-09-05', '19:15:03', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(3, 'User_Entry_Form', '{\"email_id\":\"bu1@ilab.com\",\"Username\":\"bu user1\",\"Password\":\"Abcd1234\",\"password_hash\":\"325a2cc052914ceeb8c19016c091d2ac\",\"Status\":1,\"role_id\":\"6\",\"user_mobile\":\"1234567890\",\"user_degination\":\"bu user\"}', 1, '2018-09-07', '15:54:26', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(4, 'User_Entry_Form', '{\"email_id\":\"bu2@ilab.com\",\"Username\":\"bu user2\",\"Password\":\"ABcd1234\",\"password_hash\":\"bb4e90a7639add09cf8629499638760c\",\"Status\":1,\"role_id\":\"6\",\"user_mobile\":\"2314567890\",\"user_degination\":\"bu user\"}', 1, '2018-09-07', '15:55:13', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(5, 'User_Entry_Form', '{\"email_id\":\"design!@ilab.com\",\"Username\":\"design user 1\",\"Password\":\"A12345678b\",\"password_hash\":\"4af25c60a5017ac5833227804b04551a\",\"Status\":1,\"role_id\":\"2\",\"user_mobile\":\"2345678910\",\"user_degination\":\"design user\"}', 1, '2018-09-08', '16:45:21', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(6, 'User_Entry_Form', '{\"email_id\":\"design2@ilab.com\",\"Username\":\"design user 2\",\"Password\":\"12345678Ab\",\"password_hash\":\"2a4a3ea4095c1f5453b5463c3a746c99\",\"Status\":1,\"role_id\":\"2\",\"user_mobile\":\"3456789012\",\"user_degination\":\"design user\"}', 1, '2018-09-08', '16:48:54', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(7, 'User_Entry_Form', '{\"email_id\":\"project1@ilab.com\",\"Username\":\"project user 1\",\"Password\":\"123456789Ab\",\"password_hash\":\"d1bfa0b6240156b7972de61f67a1e632\",\"Status\":1,\"role_id\":\"3\",\"user_mobile\":\"4567890123\",\"user_degination\":\"project user\"}', 1, '2018-09-08', '16:50:09', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(8, 'User_Entry_Form', '{\"email_id\":\"project2@ilab.com\",\"Username\":\"project user 2\",\"Password\":\"12345678Ab\",\"password_hash\":\"2a4a3ea4095c1f5453b5463c3a746c99\",\"Status\":1,\"role_id\":\"3\",\"user_mobile\":\"5678901234\",\"user_degination\":\"project user\"}', 1, '2018-09-08', '16:51:21', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(9, 'User_Entry_Form', '{\"email_id\":\"pro@ilab.com1\",\"Username\":\"procurement user 1\",\"Password\":\"123456789Abc\",\"password_hash\":\"e636ecc38ae7ffa94006a13408d673db\",\"Status\":1,\"role_id\":\"4\",\"user_mobile\":\"7895432105\",\"user_degination\":\"procurement\"}', 1, '2018-09-08', '16:54:00', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(10, 'User_Entry_Form', '{\"email_id\":\"pro2@ilab.com1\",\"Username\":\"procurement user 2\",\"Password\":\"12345abcA\",\"password_hash\":\"7f3efd1261d5e49fa2423f2b2cc8cf9e\",\"Status\":1,\"role_id\":\"4\",\"user_mobile\":\"9876543210\",\"user_degination\":\"procurement\"}', 1, '2018-09-08', '16:55:11', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(11, 'User_Entry_Form', '{\"email_id\":\"buy1@ilab.com\",\"Username\":\"buyer 1\",\"Password\":\"1234567890Ab\",\"password_hash\":\"c0d7659e35f9e7b793c4257d565e7390\",\"Status\":1,\"role_id\":\"7\",\"user_mobile\":\"8978564210\",\"user_degination\":\"buyser\"}', 1, '2018-09-08', '17:04:38', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(12, 'User_Entry_Form', '{\"email_id\":\"buy2@ilab.com\",\"Username\":\"buyer 2\",\"Password\":\"123456789Ab\",\"password_hash\":\"d1bfa0b6240156b7972de61f67a1e632\",\"Status\":1,\"role_id\":\"7\",\"user_mobile\":\"4567933580\",\"user_degination\":\"buyer\"}', 1, '2018-09-08', '17:09:10', '127.0.0.1', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(13, 'Project Entry Form', '{\"Project_Name\":\"project management\",\"job_Code\":\"job21\",\"Date_Start\":\"2018-10-31\",\"Customer_Name\":\"sipra\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"project incharege\",\"status\":\"1\",\"Date_Entry\":\"2018-09-11\",\"Time_Entry\":\"16:29:10\"}', 1, '2018-09-11', '16:29:10', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(14, 'Project Entry Form', '{\"Project_Name\":\"project management\",\"job_Code\":\"0774\",\"Date_Start\":\"2018-09-30\",\"Customer_Name\":\"sipra\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"test\",\"status\":\"1\",\"Date_Entry\":\"2018-09-11\",\"Time_Entry\":\"16:41:13\"}', 1, '2018-09-11', '16:41:13', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(15, 'Project Entry Form', '{\"Project_Name\":\"project management\",\"job_Code\":\"07744\",\"Date_Start\":\"2018-09-30\",\"Customer_Name\":\"sipra\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"wwww\",\"status\":\"1\",\"Date_Entry\":\"2018-09-11\",\"Time_Entry\":\"20:03:43\"}', 1, '2018-09-11', '20:03:43', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(16, 'Project Entry Form', '{\"Project_Name\":\"project management\",\"job_Code\":\"07746\",\"Date_Start\":\"2018-09-29\",\"Customer_Name\":\"sipra\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"666\",\"status\":\"1\",\"Date_Entry\":\"2018-09-11\",\"Time_Entry\":\"20:05:29\"}', 1, '2018-09-11', '20:05:29', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(17, 'Project Entry Form', '{\"Project_Name\":\"project management d\",\"job_Code\":\"0770ee\",\"Date_Start\":\"2018-09-30\",\"Customer_Name\":\"sipradd\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"jjjjj\",\"status\":\"1\",\"Date_Entry\":\"2018-09-11\",\"Time_Entry\":\"20:13:26\"}', 1, '2018-09-11', '20:13:26', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(18, 'Project Entry Form', '{\"Project_Name\":\"project management me\",\"job_Code\":\"12345\",\"Date_Start\":\"2018-09-29\",\"Customer_Name\":\"sipradd\",\"Customer_Mobile_No\":\"9776069881\",\"project_Description\":\"Breaking the Affordability Barrier\\r\\n\\r\\nWith over 4 billion people around the globe still not connected to the internet, affordability remains a key challenge. We break the affordability barrier with the world\'s most affordable tablets, phablets and smartphones\",\"status\":\"1\",\"Date_Entry\":\"2018-09-12\",\"Time_Entry\":\"19:45:12\"}', 1, '2018-09-12', '19:45:12', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"61.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko\\/20100101 Firefox\\/61.0\"}'),
(19, 'User_Entry_Form', '{\"section_Name\":\"xyz\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-14\",\"Time_Entry\":\"21:35:46\"}', 1, '2018-09-14', '21:35:46', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(20, 'section entry', '{\"section_Name\":\"section 1\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-15\",\"Time_Entry\":\"13:06:47\"}', 1, '2018-09-15', '13:06:47', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(21, 'section entry', '{\"section_Name\":\"activity 1\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-15\",\"Time_Entry\":\"15:50:18\"}', 1, '2018-09-15', '15:50:18', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(22, 'activity entry', '{\"Activity_Name\":\"\'activity\'\",\"Activity_Description\":\"\'Director : Bhaskar Producer : Nagendra Babu Music Director : Harris Jayaraj Lyricst : Surendra Krishna, Kedarnath, Vanamali, Ramajogaya Sastry Cast : Ram Charan Teja, Genelia D\\\\\'Souza, Shazahn Padamsee, Sanchita Shetty\'\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-15\",\"Time_Entry\":\"16:00:27\"}', 1, '2018-09-15', '16:00:27', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(23, 'activity entry', '{\"Activity_Name\":\"activity 1\",\"Activity_Description\":\"I already have XSS enabled by default in configuration.\\r\\n\\r\\nThank you for your patience. But still, this not resolves unescaped chars in my value, is it?\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-15\",\"Time_Entry\":\"16:05:10\"}', 1, '2018-09-15', '16:05:10', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(24, 'activity edit', '{\"date_change\":{\"Activity_Name\":\"activitys\",\"Activity_Description\":\"I already have XSS enabled by default in configuration.\\r\\n\\r\\nThank you for your patience. But still, this not resolves unescaped chars in my value, is it?\"},\"$data_id\":{\"Activity_Slno\":\"2\"}}', 1, '2018-09-17', '14:03:23', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(25, 'section entry', '{\"section_Name\":\"\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-18\",\"Time_Entry\":\"12:52:03\"}', 1, '2018-09-18', '12:52:03', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(26, 'Category entry', '{\"category_name\":\"standard catalogued item\",\"category_id\":\"cat001\",\"category_desc\":\"A cataloger is an individual responsible for the processes of description, subject analysis, classification, and authority control of library materials. Catalogers serve as the \\\"foundation of all library service, as they are the ones who organize information in such a way as to make it easily accessible\\\"\",\"short_code\":\"sci\",\"status\":\"1\",\"date_entry\":\"2018-09-18\",\"time_entry\":\"13:06:40\"}', 1, '2018-09-18', '13:06:40', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(27, 'Category update', '{\"data_change\":{\"category_name\":\"standard catalogued item\",\"category_id\":\"cat001\",\"category_desc\":\"A cataloger is an individual responsible for the processes of description, subject analysis, classification, and authority control of library materials. Catalogers serve as the \\\"foundation of all library service, as they are the ones who organize information in such a way as to make it easily accessible\\\"\",\"short_code\":\"sci\"},\"data_id\":{\"Slno_cat\":\"1\"}}', 1, '2018-09-18', '16:39:28', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(28, 'Category update', '{\"data_change\":{\"category_name\":\"standard catalogued item\",\"category_id\":\"cat001\",\"category_desc\":\"A cataloger is an individual responsible for the processes of description, subject analysis, classification, and authority control of library materials. Catalogers serve as the \\\"foundation of all library service, as they are the ones who organize information in such a way as to make it easily accessible\\\"\",\"short_code\":\"sci tech\"},\"data_id\":{\"Slno_cat\":\"1\"}}', 1, '2018-09-18', '16:39:40', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(29, 'Category entry', '{\"category_name\":\"make to order items\",\"category_id\":\"cat002\",\"category_desc\":\"The make to order (MTO) strategy only manufactures the end product once the customer places the order, creating additional wait time for the consumer to receive the product, but allowing for more flexible customization compared to purchasing directly from retailers\' shelves.\\r\\n\\r\\nRead more: Make To Order (MTO) https:\\/\\/www.investopedia.com\\/terms\\/m\\/make-to-order.asp#ixzz5RS3c3b1d\\r\\nFollow us: Investopedia on Facebook\",\"short_code\":\"moi\",\"status\":\"1\",\"date_entry\":\"2018-09-18\",\"time_entry\":\"16:52:56\"}', 1, '2018-09-18', '16:52:56', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(30, 'Category entry', '{\"category_name\":\"logistics\",\"category_id\":\"cat003\",\"category_desc\":\"Logistics is generally the detailed organization and implementation of a complex operation. In a general business sense, logistics is the management of the flow of things between the point of origin and the point of consumption in order to meet requirements of customers or corporations.\",\"short_code\":\"logistics\",\"status\":\"1\",\"date_entry\":\"2018-09-18\",\"time_entry\":\"16:54:45\"}', 1, '2018-09-18', '16:54:45', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(31, 'other charges entry', '{\"Charges_name\":\"freight Charges\",\"description_charge\":\"\",\"charge_value\":\"\",\"status\":\"1\",\"date_entry\":\"2018-09-20\",\"time_entry\":\"14:15:49\"}', 1, '2018-09-20', '14:15:49', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(32, 'other charge update', '{\"data_change\":{\"Charges_name\":\"freight Charge\"},\"data_id\":{\"Slno_other\":\"1\"}}', 1, '2018-09-20', '15:32:09', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(33, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"xyz\",\"item_id\":\"11\",\"item_detail\":\"abc\",\"item_uom\":\"20\",\"category_id\":\"cat001\",\"category_name\":\"cat001\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"15:39:45\"}', 1, '2018-09-21', '15:39:45', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(34, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"material item 1\",\"item_id\":\"mat001\",\"item_detail\":\"about testing material present\",\"item_uom\":\"nos\",\"category_id\":\"cat001\",\"category_name\":\"cat001\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"15:46:43\"}', 1, '2018-09-21', '15:46:43', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(35, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"1\",\"item_name\":\"xyz\",\"item_id\":\"11\",\"item_detail\":\"abc\",\"item_uom\":\"20\",\"category_id\":\"\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"18:20:55\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-21', '18:20:55', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(36, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"1\",\"item_name\":\"xyz\",\"item_id\":\"mat008\",\"item_detail\":\"abc\",\"item_uom\":\"20\",\"category_id\":\"cat001\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"18:21:33\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-21', '18:21:33', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(37, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"1\",\"item_name\":\"xyz\",\"item_id\":\"mat009\",\"item_detail\":\"abc\",\"item_uom\":\"20\",\"category_id\":\"\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"18:21:54\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-21', '18:21:54', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(38, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"2\",\"item_name\":\"material2\",\"item_id\":\"101\",\"item_detail\":\"xxx\",\"item_uom\":\"240\",\"category_id\":\"cat002\",\"category_name\":\"make to order items\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"18:22:01\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-21', '18:22:01', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(39, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"3\",\"item_name\":\"material2\",\"item_id\":\"101\",\"item_detail\":\"xxx\",\"item_uom\":\"240\",\"category_id\":\"cat003\",\"category_name\":\"logistics\",\"status\":\"1\",\"date_entry\":\"2018-09-21\",\"time_entry\":\"18:24:34\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-21', '18:24:34', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(40, 'Vendors Entery Form', '{\"Vendor_name\":\"vendor 1\",\"Vendor_email_id\":\"vender@ilab.com\",\"Mobile_no\":\"99330\",\"Organisation_name\":\"vendor pvt ltd\",\"Password\":\"2203\",\"Password_hash\":\"2d969e2cee8cfa07ce7ca0bb13c7a36d\",\"Status\":1,\"Date_entry\":\"2018-09-22\",\"Time_entry\":\"19:05:03\",\"Vendor_desc\":\"tesrt\",\"Organisation_address\":\"tesr\"}', 1, '2018-09-22', '19:05:03', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(41, 'Vendors Entery Form', '{\"Vendor_name\":\"VENDOR2\",\"Vendor_email_id\":\"ven11@gmail.com\",\"Mobile_no\":\"987664467\",\"Organisation_name\":\"xxx\",\"Password\":\"1234\",\"Password_hash\":\"81dc9bdb52d04dc20036dbd8313ed055\",\"Status\":1,\"Date_entry\":\"2018-09-22\",\"Time_entry\":\"19:05:14\",\"Vendor_desc\":\"XYZ\",\"Organisation_address\":\"BBSR\"}', 1, '2018-09-22', '19:05:14', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(42, 'Vendors Entery Form', '{\"Vendor_name\":\"vendor 1\",\"Vendor_email_id\":\"vender@ilab.com\",\"Mobile_no\":\"99330\",\"Organisation_name\":\"vendor pvt ltd\",\"Password\":\"1234\",\"Password_hash\":\"81dc9bdb52d04dc20036dbd8313ed055\",\"Status\":1,\"Date_entry\":\"2018-09-22\",\"Time_entry\":\"19:08:08\",\"Vendor_desc\":\"teartt\",\"Organisation_address\":\"wqqwqw\"}', 1, '2018-09-22', '19:08:08', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(43, 'Vendors Entery Form', '{\"Vendor_name\":\"vendor 1\",\"Vendor_email_id\":\"vender@ilab.com\",\"Mobile_no\":\"99330\",\"Organisation_name\":\"vendor pvt ltd\",\"Password\":\"1234\",\"Password_hash\":\"81dc9bdb52d04dc20036dbd8313ed055\",\"Status\":1,\"Date_entry\":\"2018-09-22\",\"Time_entry\":\"19:08:40\",\"Vendor_desc\":\"teartt\",\"Organisation_address\":\"wqqwqw\"}', 1, '2018-09-22', '19:08:40', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(44, 'Technical Entery Form', '{\"technical_name\":\"technical 1\",\"technical_desc\":\"The Tecno Camon I comes with a 5.65 inches touchscreen HD+ IPS display and features a 3 GB RAM along with a 32 GB internal memory. It features a Quad Core 1.25 GHz Processor for all the processing power. The phone is also decked with a 13 MP Camera with LED Flash for your images and videos. For power, the Phone relies on a 3050 mAh Li-Ion battery to give you that extra juice and power when you are on your phone.\",\"technical_id\":\"techid001\",\"category_slno\":\"cat001\",\"status\":1,\"date_entry\":\"2018-09-24\",\"time_entry\":\"12:47:51\"}', 1, '2018-09-24', '12:47:51', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(45, 'material item entry', '{\"Category_slno\":\"2\",\"item_name\":\"Pump\",\"item_id\":\"Mat001\",\"item_detail\":\"Submersible Pump\",\"item_uom\":\"Horse Power\",\"category_id\":\"cat002\",\"category_name\":\"make to order items\",\"status\":\"1\",\"date_entry\":\"2018-09-24\",\"time_entry\":\"15:55:07\"}', 1, '2018-09-24', '15:55:07', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(46, 'material item entry', '{\"Category_slno\":\"2\",\"item_name\":\"Rotary lobe pump\",\"item_id\":\"Mat002\",\"item_detail\":\"Pump complete with drive motor, reduction gear system, clutch and base plate\\r\\n Housing material AISI-316 or AISI 420, rotary piston and shaft seals made of NBR, EPDM or FKM\\r\\n  Constant i.e. non-pulsing feed rates\\r\\n  Valveless construction enables reversed pump direction\\r\\n  Different versions of power end\\/drive via three-phase   motor (On\\/Off mode, adjustable motor with integrated frequency converter or external fan)\\r\\n Connection to bus system is possible (integrated frequency converter needed)\\r\\n Hydraulic connection as standard by means of DIN flange (DN 50, 65, 80, 100, 125), other connectors available\\r\\n Simple replacement of wear discs thanks to   maintenance-friendly construction\",\"item_uom\":\"Max Pump volume\",\"category_id\":\"cat002\",\"category_name\":\"make to order items\",\"status\":\"1\",\"date_entry\":\"2018-09-24\",\"time_entry\":\"16:03:37\"}', 1, '2018-09-24', '16:03:37', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(47, 'material item entry', '{\"Category_slno\":\"2\",\"item_name\":\"Progressing cavity pump.\",\"item_id\":\"Mat003\",\"item_detail\":\"A progressive cavity pump is a type of positive displacement pump and is also known as a progressing cavity pump, progg cavity pump, eccentric screw pump or cavity pump. It transfers fluid by means of the progress, through the pump, of a sequence of small, fixed shape, discrete cavities, as its rotor is turned. This leads to the volumetric flow rate being proportional to the rotation rate (bidirectionally) and to low levels of shearing being applied to the pumped fluid.\",\"item_uom\":\"Capacity\",\"category_id\":\"cat002\",\"category_name\":\"make to order items\",\"status\":\"1\",\"date_entry\":\"2018-09-24\",\"time_entry\":\"16:10:38\"}', 1, '2018-09-24', '16:10:38', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(48, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"3\",\"item_name\":\"material2f\",\"item_id\":\"101\",\"item_detail\":\"xxx\",\"item_uom\":\"240\",\"category_id\":\"\",\"category_name\":\"logistics\",\"status\":\"1\",\"date_entry\":\"2018-09-24\",\"time_entry\":\"16:32:43\"},\"data_id\":{\"Slno_item\":\"1\"}}', 1, '2018-09-24', '16:32:43', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(49, 'Technical Entery Form', '{\"technical_name\":\"316L\",\"technical_desc\":\"316L stainless steel head and casing\",\"technical_id\":\"Tech001\",\"category_slno\":\"2\",\"status\":1,\"date_entry\":\"2018-09-24\",\"time_entry\":\"16:51:14\",\"material_slno\":\"undefined\"}', 1, '2018-09-24', '16:51:14', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(50, 'Technical Update Form', '{\"updated_data\":{\"technical_name\":\"316Ls\",\"technical_desc\":\"316L stainless steel head and casing\",\"technical_id\":\"Tech001\",\"category_slno\":\"2\",\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"13:13:11\",\"material_slno\":\"3\"},\"updated_id\":{\"Slno_technical\":\"1\"}}', 1, '2018-09-25', '13:13:11', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(51, 'Technical Update Form', '{\"updated_data\":{\"technical_name\":\"316Ls\",\"technical_desc\":\"316L stainless steel head and casing\",\"technical_id\":\"Tech001\",\"category_slno\":\"2\",\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"13:13:22\",\"material_slno\":\"4\"},\"updated_id\":{\"Slno_technical\":\"1\"}}', 1, '2018-09-25', '13:13:22', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(52, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle1\",\"vehicle_capacity\":\"5000ponds\",\"vehicle_desc\":\"xxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"16:34:29\"}', 1, '2018-09-25', '16:34:29', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(53, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle1\",\"vehicle_capacity\":\"5000ponds\",\"vehicle_desc\":\"xxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"16:35:24\"}', 1, '2018-09-25', '16:35:24', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(54, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle1\",\"vehicle_capacity\":\"5000ponds\",\"vehicle_desc\":\"xxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"16:37:33\"}', 1, '2018-09-25', '16:37:33', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(55, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle1\",\"vehicle_capacity\":\"5000ponds\",\"vehicle_desc\":\"xxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-09-25\",\"time_entry\":\"16:59:37\"}', 1, '2018-09-25', '16:59:37', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(56, 'User_Entry_Form', '{\"email_id\":\"abc2@gmail.com\",\"Username\":\"user1\",\"Password\":\"121Aa111\",\"password_hash\":\"9c4ee8fb6bfd3755eabc1437ac0ccdaa\",\"Status\":1,\"role_id\":\"7\",\"user_mobile\":\"87678\",\"user_degination\":\"designation1\"}', 1, '2018-09-26', '14:44:20', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(57, 'update users password', '{\"data_insert\":\"{\\\"Password\\\":\\\"111Aa111\\\",\\\"password_hash\\\":\\\"6b3c06db02609285b33b732fc57a0352\\\"}\",\"update_id\":\"{\\\"slno\\\":\\\"6\\\"}\"}', 1, '2018-09-26', '14:45:31', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(58, 'Project Entry Form', '{\"Project_Name\":\"pro1\",\"job_Code\":\"111\",\"Date_Start\":\"2018-09-18\",\"Customer_Name\":\"cust1\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"xxx\",\"status\":\"1\",\"Date_Entry\":\"2018-09-26\",\"Time_Entry\":\"14:55:15\"}', 1, '2018-09-26', '14:55:15', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(59, 'section entry', '{\"section_Name\":\"section2\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-26\",\"Time_Entry\":\"14:58:49\"}', 1, '2018-09-26', '14:58:49', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(60, 'activity entry', '{\"Activity_Name\":\"activity10\",\"Activity_Description\":\"xxx\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-26\",\"Time_Entry\":\"15:00:18\"}', 1, '2018-09-26', '15:00:18', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(61, 'activity edit', '{\"date_change\":{\"Activity_Name\":\"\'activity\'\",\"Activity_Description\":\"\'Director : Bhaskar Producer : Nagendra Babu Music Director : Harris Jayaraj Lyricst : Surendra Krishna, Kedarnath, Vanamali, Ramajogaya Sastry Cast : Ram Charan Teja, Genelia D\\\\\'Souza, Shazahn Padamsee, Sanchita Shetty\'\"},\"$data_id\":{\"Activity_Slno\":\"1\"}}', 1, '2018-09-26', '15:00:40', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(62, 'activity edit', '{\"date_change\":{\"Activity_Name\":\"\'activity1\'\",\"Activity_Description\":\"\'Director : Bhaskar Producer : Nagendra Babu Music Director : Harris Jayaraj Lyricst : Surendra Krishna, Kedarnath, Vanamali, Ramajogaya Sastry Cast : Ram Charan Teja, Genelia D\\\\\'Souza, Shazahn Padamsee, Sanchita Shetty\'\"},\"$data_id\":{\"Activity_Slno\":\"1\"}}', 1, '2018-09-26', '15:01:05', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(63, 'Category entry', '{\"category_name\":\"cat2\",\"category_id\":\"cat111\",\"category_desc\":\"xxx\",\"short_code\":\"ct1\",\"status\":\"1\",\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:06:48\"}', 1, '2018-09-26', '15:06:48', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(64, 'Category update', '{\"data_change\":{\"category_name\":\"standard catalogued item\",\"category_id\":\"cat005\",\"category_desc\":\"A cataloger is an individual responsible for the processes of description, subject analysis, classification, and authority control of library materials. Catalogers serve as the \\\"foundation of all library service, as they are the ones who organize information in such a way as to make it easily accessible\\\"\",\"short_code\":\"sci tech\"},\"data_id\":{\"Slno_cat\":\"1\"}}', 1, '2018-09-26', '15:07:10', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(65, 'other charges entry', '{\"Charges_name\":\"char11\",\"description_charge\":\"\",\"charge_value\":\"\",\"status\":\"1\",\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:08:38\"}', 1, '2018-09-26', '15:08:38', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(66, 'other charge update', '{\"data_change\":{\"Charges_name\":\"freight Charge1\"},\"data_id\":{\"Slno_other\":\"1\"}}', 1, '2018-09-26', '15:09:00', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(67, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"material10\",\"item_id\":\"10\",\"item_detail\":\"xyz\",\"item_uom\":\"21\",\"category_id\":\"cat005\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:10:33\"}', 1, '2018-09-26', '15:10:33', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(68, 'Vendors Entery Form', '{\"Vendor_name\":\"ven10\",\"Vendor_email_id\":\"ven111@gmail.com\",\"Mobile_no\":\"985676768\",\"Organisation_name\":\"xyz\",\"Password\":\"111\",\"Password_hash\":\"698d51a19d8a121ce581499d7b701668\",\"Status\":1,\"Date_entry\":\"2018-09-26\",\"Time_entry\":\"15:14:25\",\"Vendor_desc\":\"ttt\",\"Organisation_address\":\"xxxt\"}', 1, '2018-09-26', '15:14:25', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(69, 'Technical Entery Form', '{\"technical_name\":\"tec10\",\"technical_desc\":\"xxx\",\"technical_id\":\"101\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:16:54\",\"material_slno\":\"6\"}', 1, '2018-09-26', '15:16:54', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(70, 'Technical Entery Form', '{\"technical_name\":\"tec10\",\"technical_desc\":\"xxx\",\"technical_id\":\"101\",\"category_slno\":\"2\",\"status\":1,\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:19:18\",\"material_slno\":\"3\"}', 1, '2018-09-26', '15:19:18', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(71, 'Vendors Entery Form', '{\"Vendor_name\":\"vendor20\",\"Vendor_email_id\":\"ven121@gmail.com\",\"Mobile_no\":\"766734985\",\"Organisation_name\":\"abc\",\"Password\":\"141\",\"Password_hash\":\"0f28b5d49b3020afeecd95b4009adf4c\",\"Status\":1,\"Date_entry\":\"2018-09-26\",\"Time_entry\":\"15:23:38\",\"Vendor_desc\":\"xxxy\",\"Organisation_address\":\"aaa\"}', 1, '2018-09-26', '15:23:38', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(72, 'Vendors update Form', '{\"update_data\":{\"Vendor_name\":\"vendor20\",\"Vendor_email_id\":\"ven121@gmail.com\",\"Mobile_no\":\"76673498510\",\"Organisation_name\":\"abc\",\"Status\":1,\"Date_entry\":\"2018-09-26\",\"Time_entry\":\"15:24:14\",\"Vendor_desc\":\"xxxy\",\"Organisation_address\":\"aaa\"},\"id\":{\"Slno_vendor\":\"4\"}}', 1, '2018-09-26', '15:24:14', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(73, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle2\",\"vehicle_capacity\":\"60000ponds\",\"vehicle_desc\":\"xxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-09-26\",\"time_entry\":\"15:26:05\"}', 1, '2018-09-26', '15:26:05', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(74, 'activity entry', '{\"Activity_Name\":\"\",\"Activity_Description\":\"\",\"Status\":\"1\",\"Date_Entry\":\"2018-09-28\",\"Time_Entry\":\"18:01:35\"}', 1, '2018-09-28', '18:01:35', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(75, 'Bu User New Order Book Entry', '{\"Slno_project\":\"7\",\"Job_code\":\"12345\",\"Job_description\":\"Breaking the Affordability Barrier news\\r\\n\\r\\nWith over 4 billion people around the globe still not connected to the internet, affordability remains a key challenge. We break the affordability barrier with the world\'s most affordable tablets, phablets and smartphones\",\"Project_name\":\"project management me\",\"LOI_date_contract\":\"2018-09-22\",\"Contract_sign_date\":\"2018-09-25\",\"Contract_value\":\"2018-09-22\",\"Supply_order_value\":\"55555\",\"Contract_start_date\":\"2018-10-01\",\"Contractual_completion\":\"2019-01-31\",\"Contract_duration\":\"6 month\",\"Remark\":\"But with JavaScript, methods and properties are also available to primitive values, because JavaScript treats primitive values as objects when executing methods and properties.\",\"Status\":\"1\",\"Date_entry\":\"2018-09-28\",\"Time_entry\":\"18:55:12\"}', 1, '2018-09-28', '18:55:12', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(76, 'Project Entry Form', '{\"Project_Name\":\"project 1\",\"job_Code\":\"0770\",\"Date_Start\":\"2018-11-01\",\"Customer_Name\":\"sandy\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to\",\"status\":\"1\",\"Date_Entry\":\"2018-09-28\",\"Time_Entry\":\"20:38:23\"}', 1, '2018-09-28', '20:38:23', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(77, 'Bu User New Order Book Entry', '{\"Slno_project\":\"1\",\"Job_code\":\"0770\",\"Job_description\":\"This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to seem ok to me preetish\",\"Project_name\":\"project 1\",\"LOI_date_contract\":\"2018-09-29\",\"Contract_sign_date\":\"2018-11-08\",\"Contract_value\":\"2018-09-29\",\"Supply_order_value\":\"55555\",\"Contract_start_date\":\"2019-02-02\",\"Contractual_completion\":\"2019-04-20\",\"Contract_duration\":\"6 month\",\"Remark\":\"For switch statements, case statements must be indented once from switch, and bodies for the cases must be indented once from case. When not breaking after any kind of operations in case, you must write a comment.\",\"Status\":\"1\",\"Date_entry\":\"2018-09-28\",\"Time_entry\":\"21:28:07\"}', 1, '2018-09-28', '21:28:07', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(78, 'Project Entry Form', '{\"Project_Name\":\"Project 3\",\"job_Code\":\"23456\",\"Date_Start\":\"2018-09-22\",\"Customer_Name\":\"ABC Ltd\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"status\":\"1\",\"Date_Entry\":\"2018-09-28\",\"Time_Entry\":\"21:28:53\"}', 1, '2018-09-28', '21:28:53', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(79, 'Project Entry Form', '{\"Project_Name\":\"Project 5\",\"job_Code\":\"679034\",\"Date_Start\":\"2018-09-05\",\"Customer_Name\":\"ZXC Ltd\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"vvvvvvvvvvvvvv\",\"status\":\"1\",\"Date_Entry\":\"2018-09-28\",\"Time_Entry\":\"21:30:19\"}', 1, '2018-09-28', '21:30:19', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(80, 'Bu User Update Order Book edit', '{\"update_date\":{\"Job_description\":\"This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to seem ok to me preetish\",\"LOI_date_contract\":\"2018-09-29\",\"Contract_sign_date\":\"2018-11-08\",\"Contract_value\":\"2018-09-29\",\"Supply_order_value\":\"55555\",\"Contract_start_date\":\"2019-02-02\",\"Contractual_completion\":\"2019-04-20\",\"Contract_duration\":\"6 month\",\"Remark\":\"For switch statements, case statements must be indented once from switch, and bodies for the cases must be indented once from case. When not breaking after any kind of operations in case, you must write a comment.\",\"Status\":\"1\",\"Date_entry\":\"2018-09-29\",\"Time_entry\":\"12:53:11\"},\"data_id\":{\"Slno_n_order\":\"1\"}}', 1, '2018-09-29', '12:53:11', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(81, 'Bu User Update Order Book edit', '{\"update_date\":{\"Job_description\":\"This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to seem ok to me preetish\",\"LOI_date_contract\":\"2018-09-29\",\"Contract_sign_date\":\"2018-11-08\",\"Contract_value\":\"2018-09-29\",\"Supply_order_value\":\"55555\",\"Contract_start_date\":\"2019-02-02\",\"Contractual_completion\":\"2019-04-20\",\"Contract_duration\":\"6 month\",\"Remark\":\"For switch statements, case statements must be indented once from switch, and bodies for the cases must be indented once from case. When not breaking after any kind of operations in case, you must write a comment.\",\"Status\":\"1\",\"Date_entry\":\"2018-09-29\",\"Time_entry\":\"12:54:00\"},\"data_id\":{\"Slno_n_order\":\"1\"}}', 1, '2018-09-29', '12:54:00', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(82, 'Bu User Update Order Book edit', '{\"update_date\":{\"Job_description\":\"This page contains top rated real world PHP examples of method Flight::set from package flight extracted from open source projects. You can rate examples to seem ok to me preetish\",\"LOI_date_contract\":\"2018-09-29\",\"Contract_sign_date\":\"2018-11-08\",\"Contract_value\":\"2018-09-29\",\"Supply_order_value\":\"25089\",\"Contract_start_date\":\"2019-02-02\",\"Contractual_completion\":\"2019-04-20\",\"Contract_duration\":\"6 month\",\"Remark\":\"For switch statements, case statements must be indented once from switch, and bodies for the cases must be indented once from case. When not breaking after any kind of operations in case, you must write a comment.\",\"Status\":\"1\",\"Date_entry\":\"2018-09-29\",\"Time_entry\":\"12:54:12\"},\"data_id\":{\"Slno_n_order\":\"1\"}}', 1, '2018-09-29', '12:54:12', '192.168.0.3', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}');
INSERT INTO `Ilab_pms_log_entries` (`Slno`, `Form_name`, `Data_entry`, `status`, `Date`, `Time`, `Location_Id`, `browser_information`) VALUES
(83, 'User_Entry_Form', '{\"email_id\":\"siprah@gmail.com\",\"Username\":\"Approver5\",\"Password\":\"Sipra2306\",\"password_hash\":\"66b81209092c081cf72358adf720884c\",\"Status\":1,\"role_id\":\"8\",\"user_mobile\":\"9776069881\",\"user_degination\":\"Approver\"}', 1, '2018-10-02', '18:43:40', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(84, 'Technical Entery Form', '{\"technical_name\":\"67tyu\",\"technical_desc\":\"cvbnmxrt\",\"technical_id\":\"126709\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-10-09\",\"time_entry\":\"21:20:46\",\"material_slno\":\"6\"}', 1, '2018-10-09', '21:20:46', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(85, 'Technical Entery Form', '{\"technical_name\":\"BNTRY\",\"technical_desc\":\"bnmiyutre\",\"technical_id\":\"0290321\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-10-09\",\"time_entry\":\"21:21:46\",\"material_slno\":\"6\"}', 1, '2018-10-09', '21:21:46', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(86, 'Vehicle Type Entery Form', '{\"vehicle_type\":\"vehech\",\"status\":1,\"date_entry\":\"2018-10-11\",\"time_entry\":\"18:01:42\"}', 1, '2018-10-11', '18:01:42', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(87, 'Vehicle Capacity Entery Form', '{\"vehicle_capacity\":\"50s ponds\",\"status\":1,\"date_entry\":\"2018-10-11\",\"time_entry\":\"21:18:24\"}', 1, '2018-10-11', '21:18:24', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(88, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle3s\",\"vehicle_capacity\":\"50 ponds\",\"vehicle_desc\":\" tyyy\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-11\",\"time_entry\":\"21:29:54\"}', 1, '2018-10-11', '21:29:54', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(89, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"material item 17\",\"item_id\":\"mat0087\",\"item_detail\":\"oops execute a block of code a specified number of times.\",\"item_uom\":\"nos\",\"category_id\":\"cat005\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-10-15\",\"time_entry\":\"17:41:19\"}', 1, '2018-10-15', '17:41:19', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(90, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"material item 19\",\"item_id\":\"mat0018\",\"item_detail\":\"nitialize the loop counter value\",\"item_uom\":\"nos\",\"category_id\":\"cat005\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-10-15\",\"time_entry\":\"17:41:55\"}', 1, '2018-10-15', '17:41:55', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(91, 'Technical Entery Form', '{\"technical_name\":\"technical 1\",\"technical_desc\":\"et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \\\"this is how you loop an array with foreach\\\".\",\"technical_id\":\"techid00155\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-10-15\",\"time_entry\":\"17:42:53\",\"material_slno\":\"7\"}', 1, '2018-10-15', '17:42:53', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(92, 'Technical Entery Form', '{\"technical_name\":\"technical 1667\",\"technical_desc\":\"For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i\",\"technical_id\":\"techid001sssd\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-10-15\",\"time_entry\":\"17:43:28\",\"material_slno\":\"7\"}', 1, '2018-10-15', '17:43:28', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(93, 'Technical Entery Form', '{\"technical_name\":\"ABCD 3333\",\"technical_desc\":\"This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:\",\"technical_id\":\"techid0013343434\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2018-10-15\",\"time_entry\":\"17:44:00\",\"material_slno\":\"8\"}', 1, '2018-10-15', '17:44:00', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(94, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"material item 22\",\"item_id\":\"mat00910\",\"item_detail\":\"Evaluated for each loop iteration. If it evaluates to TRUE, the loop continues. If it evaluates to FALSE, the loop ends.\",\"item_uom\":\"nos\",\"category_id\":\"cat005\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2018-10-15\",\"time_entry\":\"18:41:26\"}', 1, '2018-10-15', '18:41:26', '192.168.0.4', '{\"browser\":\"Firefox\",\"browserVersion\":\"62.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko\\/20100101 Firefox\\/62.0\"}'),
(95, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle10\",\"vehicle_capacity\":\"8000ponds\",\"vehicle_desc\":\"XYZ\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-22\",\"time_entry\":\"15:44:52\"}', 1, '2018-10-22', '15:44:52', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(96, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle12\",\"vehicle_capacity\":\"60000ponds\",\"vehicle_desc\":\"abc\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-22\",\"time_entry\":\"15:45:09\"}', 1, '2018-10-22', '15:45:09', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(97, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle12\",\"vehicle_capacity\":\"60000ponds\",\"vehicle_desc\":\"12345\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-22\",\"time_entry\":\"15:45:27\"}', 1, '2018-10-22', '15:45:27', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(98, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle12\",\"vehicle_capacity\":\"8000ponds\",\"vehicle_desc\":\"3456\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-22\",\"time_entry\":\"15:45:44\"}', 1, '2018-10-22', '15:45:44', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(99, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle10\",\"vehicle_capacity\":\"5ponds\",\"vehicle_desc\":\"2345\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2018-10-22\",\"time_entry\":\"15:46:01\"}', 1, '2018-10-22', '15:46:01', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(100, 'Project Entry Form', '{\"Project_Name\":\"Nalanda\",\"job_Code\":\"902345\",\"Date_Start\":\"2018-10-01\",\"Customer_Name\":\"sdcf\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"nmmkku\",\"status\":\"1\",\"Date_Entry\":\"2018-10-23\",\"Time_Entry\":\"16:11:35\"}', 1, '2018-10-23', '16:11:35', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(101, 'Project Entry Form', '{\"Project_Name\":\"Dream\",\"job_Code\":\"567432\",\"Date_Start\":\"2018-10-01\",\"Customer_Name\":\"mntyu\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"nmmkkk\",\"status\":\"1\",\"Date_Entry\":\"2018-10-23\",\"Time_Entry\":\"16:12:34\"}', 1, '2018-10-23', '16:12:34', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(102, 'Project Entry Form', '{\"Project_Name\":\"revenue\",\"job_Code\":\"189067\",\"Date_Start\":\"2018-10-03\",\"Customer_Name\":\"msdfrt\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"mnghtyu\",\"status\":\"1\",\"Date_Entry\":\"2018-10-23\",\"Time_Entry\":\"16:13:34\"}', 1, '2018-10-23', '16:13:34', '192.168.0.6', '{\"browser\":\"Firefox\",\"browserVersion\":\"63.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko\\/20100101 Firefox\\/63.0\"}'),
(103, 'User_Entry_Form', '{\"email_id\":\"abc@ilab.com\",\"Username\":\"Technical User\",\"Password\":\"Ab12345678\",\"password_hash\":\"5fb6e2a60c9da41e0a94fe6157ddb93f\",\"Status\":1,\"role_id\":\"9\",\"user_mobile\":\"9937826311\",\"user_degination\":\"Design Engineer\"}', 1, '2018-11-12', '20:17:35', '192.168.0.7', '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}'),
(104, 'User_Entry_Form', '{\"email_id\":\"qert@ilab.com\",\"Username\":\"Technical Evaluator1\",\"Password\":\"Aacv12345678\",\"password_hash\":\"db71eec5a12e729fa2c45f8d03fc7be4\",\"Status\":1,\"role_id\":\"9\",\"user_mobile\":\"2345671290\",\"user_degination\":\"Design User\"}', 1, '2018-11-12', '20:22:01', '192.168.0.7', '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Windows 8.1\",\"full_user_agent_string\":\"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}'),
(105, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor 4\",\"Vendor_email_id\":\"ven221@gmail.com\",\"Mobile_no\":\"8635787011\",\"Organisation_name\":\"T&T\",\"Password\":\"5432\",\"Password_hash\":\"2e92962c0b6996add9517e4242ea9bdc\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:44:36\",\"Vendor_desc\":\"abc\",\"Organisation_address\":\"Chennai\"}', 1, '2018-11-13', '11:44:36', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(106, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor5\",\"Vendor_email_id\":\"ven001@gmail.com\",\"Mobile_no\":\"76453892344\",\"Organisation_name\":\"WWPE\",\"Password\":\"4444\",\"Password_hash\":\"dbc4d84bfcfe2284ba11beffb853a8c4\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:46:49\",\"Vendor_desc\":\"xxxc\",\"Organisation_address\":\"odisha\"}', 1, '2018-11-13', '11:46:49', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(107, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor 7\",\"Vendor_email_id\":\"ven310@yahoo.com\",\"Mobile_no\":\"7767443790\",\"Organisation_name\":\"ipts\",\"Password\":\"567\",\"Password_hash\":\"99c5e07b4d5de9d18c350cdf64c5aa3d\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:48:12\",\"Vendor_desc\":\"vvvy\",\"Organisation_address\":\"Jharkhand\"}', 1, '2018-11-13', '11:48:12', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(108, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendors10\",\"Vendor_email_id\":\"ven1011@yahoo.com\",\"Mobile_no\":\"74683983390\",\"Organisation_name\":\"GTPS\",\"Password\":\"9990\",\"Password_hash\":\"a8eaf88e26451020bf62ab0bc441ec13\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:49:32\",\"Vendor_desc\":\"tttz\",\"Organisation_address\":\"Mumbai\"}', 1, '2018-11-13', '11:49:32', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(109, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor 13\",\"Vendor_email_id\":\"ven331@gmail.com\",\"Mobile_no\":\"738985412\",\"Organisation_name\":\"P&G\",\"Password\":\"747\",\"Password_hash\":\"8d317bdcf4aafcfc22149d77babee96d\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:52:34\",\"Vendor_desc\":\"aaac\",\"Organisation_address\":\"BBSR\"}', 1, '2018-11-13', '11:52:34', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(110, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor779\",\"Vendor_email_id\":\"ven97@gmail.com\",\"Mobile_no\":\"7437878342\",\"Organisation_name\":\"AATG\",\"Password\":\"8888\",\"Password_hash\":\"cf79ae6addba60ad018347359bd144d2\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"11:54:37\",\"Vendor_desc\":\"cvcd\",\"Organisation_address\":\"ctc\"}', 1, '2018-11-13', '11:54:37', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(111, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor55\",\"Vendor_email_id\":\"ven979@yahoo.com\",\"Mobile_no\":\"7564566850\",\"Organisation_name\":\"DDTC\",\"Password\":\"7771\",\"Password_hash\":\"cd81cfd0a3397761fac44ddbe5ec3349\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"12:07:01\",\"Vendor_desc\":\"gtch\",\"Organisation_address\":\"RNC\"}', 1, '2018-11-13', '12:07:01', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(112, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor11\",\"Vendor_email_id\":\"ven90@gmail.com\",\"Mobile_no\":\"8576902112\",\"Organisation_name\":\"TTS\",\"Password\":\"555\",\"Password_hash\":\"15de21c670ae7c3f6f3f1f37029303c9\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"12:12:29\",\"Vendor_desc\":\"vvs\",\"Organisation_address\":\"BBSR\"}', 1, '2018-11-13', '12:12:29', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(113, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor31\",\"Vendor_email_id\":\"ven66@gmail.com\",\"Mobile_no\":\"656349001\",\"Organisation_name\":\"UTPS\",\"Password\":\"5557\",\"Password_hash\":\"73f715c6cc2b110fc67503ba813f7f0e\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"12:20:40\",\"Vendor_desc\":\"DCH\",\"Organisation_address\":\"CTC\"}', 1, '2018-11-13', '12:20:40', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(114, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendor21\",\"Vendor_email_id\":\"ven371@yahoo.com\",\"Mobile_no\":\"743578980\",\"Organisation_name\":\"LGP\",\"Password\":\"779\",\"Password_hash\":\"67d96d458abdef21792e6d8e590244e7\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"13:19:25\",\"Vendor_desc\":\"ttc\",\"Organisation_address\":\"CTC\"}', 1, '2018-11-13', '13:19:25', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(115, 'Vendors Entery Form', '{\"Vendor_name\":\"Vendors11\",\"Vendor_email_id\":\"ven170@yahoo.com\",\"Mobile_no\":\"74657390\",\"Organisation_name\":\"C&Z\",\"Password\":\"7100\",\"Password_hash\":\"9d94c8981a48d12adfeecfe1ae6e0ec1\",\"Status\":1,\"Date_entry\":\"2018-11-13\",\"Time_entry\":\"13:22:56\",\"Vendor_desc\":\"vvvvn\",\"Organisation_address\":\"BBSR\"}', 1, '2018-11-13', '13:22:56', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(116, 'User_Entry_Form', '{\"email_id\":\"zz11@gmail.com\",\"Username\":\"user3\",\"Password\":\"cC2345670\",\"password_hash\":\"164ba08fa522f904fc17e46c7a54c2ed\",\"Status\":1,\"role_id\":\"10\",\"user_mobile\":\"6563423248\",\"user_degination\":\"designation3\"}', 1, '2018-11-13', '15:27:52', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(117, 'User_Entry_Form', '{\"email_id\":\"gyt2@gmail.com\",\"Username\":\"user7\",\"Password\":\"dD111111110\",\"password_hash\":\"3efc512e8690e67e5e034b02bfc9a3d2\",\"Status\":1,\"role_id\":\"3\",\"user_mobile\":\"6567784466\",\"user_degination\":\"designation7\"}', 1, '2018-11-13', '15:29:48', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(118, 'User_Entry_Form', '{\"email_id\":\"911@gmail.com\",\"Username\":\"user911\",\"Password\":\"Xx91110000\",\"password_hash\":\"4b273c8ef61a5532fcc705a375ed4f4f\",\"Status\":1,\"role_id\":\"5\",\"user_mobile\":\"9835466220\",\"user_degination\":\"designation911\"}', 1, '2018-11-13', '15:31:54', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(119, 'User_Entry_Form', '{\"email_id\":\"ut11@gmail.com\",\"Username\":\"user4510\",\"Password\":\"Vc8jjj78768\",\"password_hash\":\"66ebde315e58a3dcb6c632dd0fa89373\",\"Status\":1,\"role_id\":\"5\",\"user_mobile\":\"8765544783\",\"user_degination\":\"designation003\"}', 1, '2018-11-13', '15:35:29', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(120, 'User_Entry_Form', '{\"email_id\":\"vch33@yahoo.com\",\"Username\":\"user901\",\"Password\":\"Nv66763vbv\",\"password_hash\":\"19457690528514f39e59b4e23eab715c\",\"Status\":1,\"role_id\":\"8\",\"user_mobile\":\"8754897860\",\"user_degination\":\"designation08\"}', 1, '2018-11-13', '15:37:55', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(121, 'User_Entry_Form', '{\"email_id\":\"tvs31@gmail.com\",\"Username\":\"user77\",\"Password\":\"Hd5600003hnb\",\"password_hash\":\"0d4dd4a6f73051ed47458896bc97ac85\",\"Status\":1,\"role_id\":\"2\",\"user_mobile\":\"7754484233\",\"user_degination\":\"designation99\"}', 1, '2018-11-13', '15:40:40', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(122, 'User_Entry_Form', '{\"email_id\":\"gtps09@gmail.com\",\"Username\":\"user9912\",\"Password\":\"Nc7vyh77897\",\"password_hash\":\"85c346a057275105c71fc016d29361ff\",\"Status\":1,\"role_id\":\"3\",\"user_mobile\":\"8568987421\",\"user_degination\":\"designation009\"}', 1, '2018-11-13', '15:42:26', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(123, 'User_Entry_Form', '{\"email_id\":\"ups2@yahoo.com\",\"Username\":\"user090\",\"Password\":\"Xz9jnumfhhj\",\"password_hash\":\"262f287d6b337fe94d624bccfb0339cc\",\"Status\":1,\"role_id\":\"6\",\"user_mobile\":\"7987533880\",\"user_degination\":\"designation05\"}', 1, '2018-11-13', '15:45:47', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(124, 'User_Entry_Form', '{\"email_id\":\"gcg2@gmail.com\",\"Username\":\"user464\",\"Password\":\"bN416768HHG\",\"password_hash\":\"0a84b0efcbd5427f4caeea4df5b14cb9\",\"Status\":1,\"role_id\":\"7\",\"user_mobile\":\"8527427442\",\"user_degination\":\"designation84\"}', 1, '2018-11-13', '15:47:56', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(125, 'User_Entry_Form', '{\"email_id\":\"xt12@gmail.com\",\"Username\":\"user122\",\"Password\":\"hT43hgdfdfgh\",\"password_hash\":\"10df2290a27c95a0d0fd35ea2186d9e1\",\"Status\":1,\"role_id\":\"9\",\"user_mobile\":\"7755775094\",\"user_degination\":\"designation99\"}', 1, '2018-11-13', '15:50:17', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(126, 'User_Entry_Form', '{\"email_id\":\"ats101@gmail.com\",\"Username\":\"user932\",\"Password\":\"fCT46FGH\",\"password_hash\":\"f3ac5a1f8b095c107f09a49bb6f19100\",\"Status\":1,\"role_id\":\"8\",\"user_mobile\":\"7895644333\",\"user_degination\":\"designation710\"}', 1, '2018-11-13', '16:05:53', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(127, 'User_Entry_Form', '{\"email_id\":\"yy013@gmaill.com\",\"Username\":\"user003\",\"Password\":\"tT7GHGJT\",\"password_hash\":\"34f996214cd9683befeedc8ecc2f3110\",\"Status\":1,\"role_id\":\"4\",\"user_mobile\":\"7884587201\",\"user_degination\":\"designation051\"}', 1, '2018-11-13', '16:08:51', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(128, 'User_Entry_Form', '{\"email_id\":\"tts5@gmaill.com\",\"Username\":\"user780\",\"Password\":\"sT6YHUY8 6788\",\"password_hash\":\"2a224b5f97af51d369af7f1ed44f8707\",\"Status\":1,\"role_id\":\"8\",\"user_mobile\":\"8764676987\",\"user_degination\":\"designation87\"}', 1, '2018-11-13', '16:11:35', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(129, 'User_Entry_Form', '{\"email_id\":\"uvt99@gmail.com\",\"Username\":\"user797\",\"Password\":\"vT976786vvn\",\"password_hash\":\"4e1aa3921ac7f7d3595e6f843a876f22\",\"Status\":1,\"role_id\":\"5\",\"user_mobile\":\"7897459893\",\"user_degination\":\"designation09\"}', 1, '2018-11-13', '16:41:56', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(130, 'User_Entry_Form', '{\"email_id\":\"abc1@gmail.com\",\"Username\":\"user 101\",\"Password\":\"1234JAzz\",\"password_hash\":\"6e32b54b3c884e3527465eae355c673e\",\"Status\":1,\"role_id\":\"2\",\"user_mobile\":\"9878765676\",\"user_degination\":\"designation111\"}', 1, '2019-01-17', '15:16:30', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(131, 'Project Entry Form', '{\"Project_Name\":\"proj1112\",\"job_Code\":\"7877\",\"Date_Start\":\"06\\/06\\/2017\",\"Customer_Name\":\"cust22201\",\"Customer_Mobile_No\":\"12345667890\",\"project_Description\":\"xxxx\",\"status\":\"1\",\"Date_Entry\":\"2019-01-17\",\"Time_Entry\":\"17:57:06\"}', 1, '2019-01-17', '17:57:06', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(132, 'section entry', '{\"section_Name\":\"section2311\",\"Status\":\"1\",\"Date_Entry\":\"2019-01-17\",\"Time_Entry\":\"18:22:23\"}', 1, '2019-01-17', '18:22:23', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(133, 'activity entry', '{\"Activity_Name\":\"activity 77700\",\"Activity_Description\":\"xxxxx\",\"Status\":\"1\",\"Date_Entry\":\"2019-01-17\",\"Time_Entry\":\"18:51:57\"}', 1, '2019-01-17', '18:51:57', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(134, 'activity edit', '{\"date_change\":{\"Activity_Name\":\"xxxx\",\"Activity_Description\":\"xxxxxxx\"},\"$data_id\":{\"Activity_Slno\":\"4\"}}', 1, '2019-01-17', '18:53:00', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(135, 'Category entry', '{\"category_name\":\"cat301\",\"category_id\":\"cat11174\",\"category_desc\":\"xxxx\",\"short_code\":\"ct232\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"15:08:55\"}', 1, '2019-01-18', '15:08:55', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(136, 'Category entry', '{\"category_name\":\"cat333\",\"category_id\":\"cat555\",\"category_desc\":\"xxxx\",\"short_code\":\"ct555\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"15:09:26\"}', 1, '2019-01-18', '15:09:26', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(137, 'Category update', '{\"data_change\":{\"category_name\":\"logistics\",\"category_id\":\"cat003\",\"category_desc\":\"Logistics is generally the detailed organization and implementation of a complex operation. In a general business sense, logistics is the management of the flow of things between the point of origin and the point of consumption in order to meet requirements of customers or corporations.\",\"short_code\":\"logistics\"},\"data_id\":{\"Slno_cat\":\"3\"}}', 1, '2019-01-18', '15:10:55', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(138, 'other charges entry', '{\"Charges_name\":\"char122311\",\"description_charge\":\"\",\"charge_value\":\"\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"15:37:27\"}', 1, '2019-01-18', '15:37:27', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(139, 'other charges entry', '{\"Charges_name\":\"char1234511\",\"description_charge\":\"\",\"charge_value\":\"\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"15:37:45\"}', 1, '2019-01-18', '15:37:45', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(140, 'other charge update', '{\"data_change\":{\"Charges_name\":\"freight Charge11\"},\"data_id\":{\"Slno_other\":\"1\"}}', 1, '2019-01-18', '15:38:30', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(141, 'material item entry', '{\"Category_slno\":\"1\",\"item_name\":\"xxxx11\",\"item_id\":\"132432131\",\"item_detail\":\"xxxxxx\",\"item_uom\":\"5664\",\"category_id\":\"cat005\",\"category_name\":\"standard catalogued item\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"16:03:38\"}', 1, '2019-01-18', '16:03:38', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(142, 'material item update', '{\"data_update_item_material\":{\"Category_slno\":\"2\",\"item_name\":\"material item 22\",\"item_id\":\"mat00910\",\"item_detail\":\"Evaluated for each loop iteration. If it evaluates to TRUE, the loop continues. If it evaluates to FALSE, the loop ends.\",\"item_uom\":\"nos\",\"category_id\":\"cat002\",\"category_name\":\"make to order items\",\"status\":\"1\",\"date_entry\":\"2019-01-18\",\"time_entry\":\"16:04:41\"},\"data_id\":{\"Slno_item\":\"9\"}}', 1, '2019-01-18', '16:04:41', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(143, 'Vendors Entery Form', '{\"Vendor_name\":\"veh1231\",\"Vendor_email_id\":\"ven454@yahoo.com\",\"Mobile_no\":\"86578757500\",\"Organisation_name\":\"xxxx1\",\"Password\":\"xxx\",\"Password_hash\":\"f561aaf6ef0bf14d4208bb46a4ccb3ad\",\"Status\":1,\"Date_entry\":\"2019-01-18\",\"Time_entry\":\"16:55:33\",\"Vendor_desc\":\"xxxxxxx\",\"Organisation_address\":\"xxxx1211\"}', 1, '2019-01-18', '16:55:33', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(144, 'Vendors update Form', '{\"update_data\":{\"Vendor_name\":\"vendor 2\",\"Vendor_email_id\":\"vender2@ilab.com\",\"Mobile_no\":\"99330\",\"Organisation_name\":\"vendor 2 pvt ltd\",\"Status\":1,\"Date_entry\":\"2019-01-18\",\"Time_entry\":\"16:56:30\",\"Vendor_desc\":\"teartt\",\"Organisation_address\":\"wqqwqw\"},\"id\":{\"Slno_vendor\":\"1\"}}', 1, '2019-01-18', '16:56:30', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(145, 'Technical Entery Form', '{\"technical_name\":\"tech34311\",\"technical_desc\":\"xxxxx\",\"technical_id\":\"12131\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"17:23:05\",\"material_slno\":\"2\"}', 1, '2019-01-18', '17:23:05', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(146, 'Technical Entery Form', '{\"technical_name\":\"tech454\",\"technical_desc\":\"xxxxx\",\"technical_id\":\"455555\",\"category_slno\":\"1\",\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"17:30:26\",\"material_slno\":\"6\"}', 1, '2019-01-18', '17:30:26', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(147, 'Technical Update Form', '{\"updated_data\":{\"technical_name\":\"316Ls\",\"technical_desc\":\"316L stainless steel head and casing\",\"technical_id\":\"Tech001\",\"category_slno\":\"2\",\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"17:31:08\",\"material_slno\":\"4\"},\"updated_id\":{\"Slno_technical\":\"1\"}}', 1, '2019-01-18', '17:31:08', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(148, 'Vehicle Type Entery Form', '{\"vehicle_type\":\"vehicle13343\",\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"17:46:35\"}', 1, '2019-01-18', '17:46:35', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(149, 'Vehicle Capacity Entery Form', '{\"vehicle_capacity\":\"vehicle111211\",\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"18:03:55\"}', 1, '2019-01-18', '18:03:55', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(150, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle3s\",\"vehicle_capacity\":\"8000ponds\",\"vehicle_desc\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"18:28:57\"}', 1, '2019-01-18', '18:28:57', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(151, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle10\",\"vehicle_capacity\":\"50s ponds\",\"vehicle_desc\":\"xxxxxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"18:29:37\"}', 1, '2019-01-18', '18:29:37', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}'),
(152, 'Vehicle Entery Form', '{\"vehicle_type\":\"vehicle10\",\"vehicle_capacity\":\"50s ponds\",\"vehicle_desc\":\"xxxxxx\",\"category_slno\":3,\"status\":1,\"date_entry\":\"2019-01-18\",\"time_entry\":\"18:31:11\"}', 1, '2019-01-18', '18:31:11', '192.168.0.6', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_section`
--

CREATE TABLE `Ilab_section` (
  `Section_Slno` int(255) NOT NULL,
  `section_Name` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL COMMENT '1-Active,2-Inactive,3-Delete',
  `Date_Entry` date NOT NULL,
  `Time_Entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_section`
--

INSERT INTO `Ilab_section` (`Section_Slno`, `section_Name`, `Status`, `Date_Entry`, `Time_Entry`) VALUES
(1, 'xyz', 3, '2018-09-14', '21:35:46'),
(2, 'section 4', 3, '2018-09-15', '13:06:47'),
(3, 'sec 1', 3, '2018-09-15', '15:50:18'),
(4, 'section2', 1, '2018-09-18', '12:52:03'),
(5, 'section2', 1, '2018-09-26', '14:58:49'),
(6, 'section2311', 1, '2019-01-17', '18:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `Ilab_Vendor_operation_detail`
--

CREATE TABLE `Ilab_Vendor_operation_detail` (
  `Slno_Vendor_operation` int(11) NOT NULL,
  `Slno_id_Vendor_slno` varchar(255) NOT NULL,
  `Operation_name` varchar(255) NOT NULL,
  `Operation_slno` varchar(255) NOT NULL,
  `Date_entry` date NOT NULL,
  `Time_entry` time NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  `Operation_short` varchar(255) NOT NULL,
  `Operation_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Here Vendor opperation';

--
-- Dumping data for table `Ilab_Vendor_operation_detail`
--

INSERT INTO `Ilab_Vendor_operation_detail` (`Slno_Vendor_operation`, `Slno_id_Vendor_slno`, `Operation_name`, `Operation_slno`, `Date_entry`, `Time_entry`, `Status`, `Operation_short`, `Operation_id`) VALUES
(1, '2', 'standard catalogued item', '1', '2018-09-22', '19:08:40', 1, 'sci tech', 'cat001'),
(2, '2', 'make to order items', '2', '2018-09-24', '17:37:20', 1, 'moi', 'cat002'),
(3, '3', 'standard catalogued item', '1', '2018-09-26', '15:14:25', 1, 'sci tech', 'cat005'),
(4, '3', 'make to order items', '2', '2018-09-26', '15:14:25', 1, 'moi', 'cat002'),
(5, '3', 'logistics', '3', '2018-09-26', '15:14:25', 1, 'logistics', 'cat003'),
(6, '4', 'standard catalogued item', '1', '2018-09-26', '15:23:38', 1, 'sci tech', 'cat005'),
(7, '4', 'make to order items', '2', '2018-09-26', '15:23:38', 1, 'moi', 'cat002'),
(8, '4', 'logistics', '3', '2018-09-26', '15:23:38', 1, 'logistics', 'cat003'),
(9, '5', 'standard catalogued item', '1', '2018-11-13', '11:44:36', 1, 'sci tech', 'cat005'),
(10, '5', 'make to order items', '2', '2018-11-13', '11:44:36', 1, 'moi', 'cat002'),
(11, '5', 'logistics', '3', '2018-11-13', '11:44:36', 1, 'logistics', 'cat003'),
(12, '6', 'make to order items', '2', '2018-11-13', '11:46:49', 1, 'moi', 'cat002'),
(13, '6', 'logistics', '3', '2018-11-13', '11:46:49', 1, 'logistics', 'cat003'),
(14, '7', 'standard catalogued item', '1', '2018-11-13', '11:48:12', 1, 'sci tech', 'cat005'),
(15, '7', 'logistics', '3', '2018-11-13', '11:48:12', 1, 'logistics', 'cat003'),
(16, '8', 'standard catalogued item', '1', '2018-11-13', '11:49:32', 1, 'sci tech', 'cat005'),
(17, '8', 'make to order items', '2', '2018-11-13', '11:49:32', 1, 'moi', 'cat002'),
(18, '9', 'standard catalogued item', '1', '2018-11-13', '11:52:34', 1, 'sci tech', 'cat005'),
(19, '9', 'make to order items', '2', '2018-11-13', '11:52:34', 1, 'moi', 'cat002'),
(20, '9', 'logistics', '3', '2018-11-13', '11:52:34', 1, 'logistics', 'cat003'),
(21, '10', 'standard catalogued item', '1', '2018-11-13', '11:54:37', 1, 'sci tech', 'cat005'),
(22, '10', 'make to order items', '2', '2018-11-13', '11:54:37', 1, 'moi', 'cat002'),
(23, '10', 'logistics', '3', '2018-11-13', '11:54:37', 1, 'logistics', 'cat003'),
(24, '11', 'standard catalogued item', '1', '2018-11-13', '12:07:01', 1, 'sci tech', 'cat005'),
(25, '11', 'make to order items', '2', '2018-11-13', '12:07:01', 1, 'moi', 'cat002'),
(26, '11', 'logistics', '3', '2018-11-13', '12:07:01', 1, 'logistics', 'cat003'),
(27, '12', 'standard catalogued item', '1', '2018-11-13', '12:12:29', 1, 'sci tech', 'cat005'),
(28, '12', 'logistics', '3', '2018-11-13', '12:12:29', 1, 'logistics', 'cat003'),
(29, '13', 'standard catalogued item', '1', '2018-11-13', '12:20:40', 1, 'sci tech', 'cat005'),
(30, '13', 'make to order items', '2', '2018-11-13', '12:20:40', 1, 'moi', 'cat002'),
(31, '13', 'logistics', '3', '2018-11-13', '12:20:40', 1, 'logistics', 'cat003'),
(32, '14', 'standard catalogued item', '1', '2018-11-13', '13:19:25', 1, 'sci tech', 'cat005'),
(33, '14', 'make to order items', '2', '2018-11-13', '13:19:25', 1, 'moi', 'cat002'),
(34, '14', 'logistics', '3', '2018-11-13', '13:19:25', 1, 'logistics', 'cat003'),
(35, '15', 'standard catalogued item', '1', '2018-11-13', '13:22:56', 1, 'sci tech', 'cat005'),
(36, '15', 'logistics', '3', '2018-11-13', '13:22:56', 1, 'logistics', 'cat003'),
(37, '16', 'standard catalogued item', '1', '2019-01-18', '16:55:33', 1, 'sci tech', 'cat005'),
(38, '16', 'make to order items', '2', '2019-01-18', '16:55:33', 1, 'moi', 'cat002'),
(39, '16', 'logistics', '3', '2019-01-18', '16:55:33', 1, 'logistics', 'cat003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ilab_activity`
--
ALTER TABLE `Ilab_activity`
  ADD PRIMARY KEY (`Activity_Slno`);

--
-- Indexes for table `Ilab_assign_project_user`
--
ALTER TABLE `Ilab_assign_project_user`
  ADD PRIMARY KEY (`slno_assign_project`);

--
-- Indexes for table `Ilab_master_admin`
--
ALTER TABLE `Ilab_master_admin`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `Ilab_master_bid`
--
ALTER TABLE `Ilab_master_bid`
  ADD PRIMARY KEY (`Slno_bid`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_commerical`
--
ALTER TABLE `Ilab_master_bid_commerical`
  ADD PRIMARY KEY (`Slno_bid`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_commericalevaluation`
--
ALTER TABLE `Ilab_master_bid_commericalevaluation`
  ADD PRIMARY KEY (`slno_bid_tech_id`),
  ADD KEY `bid_slno` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_date_details`
--
ALTER TABLE `Ilab_master_bid_date_details`
  ADD PRIMARY KEY (`Slno_bid_date`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_date_details_commerical`
--
ALTER TABLE `Ilab_master_bid_date_details_commerical`
  ADD PRIMARY KEY (`Slno_bid_date`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_details`
--
ALTER TABLE `Ilab_master_bid_details`
  ADD PRIMARY KEY (`slno_bid_detail`),
  ADD KEY `bid_slno` (`bid_slno`),
  ADD KEY `buyer_sl no` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_details_commerical`
--
ALTER TABLE `Ilab_master_bid_details_commerical`
  ADD PRIMARY KEY (`slno_bid_detail`),
  ADD KEY `bid_slno` (`bid_slno`),
  ADD KEY `buyer_sl no` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_file_commerical`
--
ALTER TABLE `Ilab_master_bid_file_commerical`
  ADD PRIMARY KEY (`Slno_bid_file`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `bid_buyer_slno` (`bid_buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_file_technical`
--
ALTER TABLE `Ilab_master_bid_file_technical`
  ADD PRIMARY KEY (`Slno_bid_file`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `bid_buyer_slno` (`bid_buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_invitation_rank`
--
ALTER TABLE `Ilab_master_bid_invitation_rank`
  ADD PRIMARY KEY (`slno_invi`);

--
-- Indexes for table `Ilab_master_bid_invi_otp`
--
ALTER TABLE `Ilab_master_bid_invi_otp`
  ADD PRIMARY KEY (`slno_otp`);

--
-- Indexes for table `Ilab_master_bid_invi_rank_approvals`
--
ALTER TABLE `Ilab_master_bid_invi_rank_approvals`
  ADD PRIMARY KEY (`slno_approve`);

--
-- Indexes for table `Ilab_master_bid_invi_rank_not_app`
--
ALTER TABLE `Ilab_master_bid_invi_rank_not_app`
  ADD PRIMARY KEY (`slno_not`);

--
-- Indexes for table `Ilab_master_bid_otp_commerical`
--
ALTER TABLE `Ilab_master_bid_otp_commerical`
  ADD PRIMARY KEY (`slno_comm`);

--
-- Indexes for table `Ilab_master_bid_query`
--
ALTER TABLE `Ilab_master_bid_query`
  ADD PRIMARY KEY (`Slno_query`);

--
-- Indexes for table `Ilab_master_bid_query_commerical`
--
ALTER TABLE `Ilab_master_bid_query_commerical`
  ADD PRIMARY KEY (`Slno_query`);

--
-- Indexes for table `Ilab_master_bid_technicalevaluation`
--
ALTER TABLE `Ilab_master_bid_technicalevaluation`
  ADD PRIMARY KEY (`slno_bid_tech_id`),
  ADD KEY `bid_slno` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_vendor`
--
ALTER TABLE `Ilab_master_bid_vendor`
  ADD PRIMARY KEY (`slno_vendor`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_vendor_commerical`
--
ALTER TABLE `Ilab_master_bid_vendor_commerical`
  ADD PRIMARY KEY (`slno_vendor`),
  ADD KEY `bid_sl no` (`bid_slno`),
  ADD KEY `buyer_slno` (`buyer_slno`);

--
-- Indexes for table `Ilab_master_bid_vendor_file_details`
--
ALTER TABLE `Ilab_master_bid_vendor_file_details`
  ADD PRIMARY KEY (`slno_document`),
  ADD KEY `bid_sl no` (`bid_sl no`),
  ADD KEY `buyer_sl no` (`buyer_sl no`),
  ADD KEY `vendor_slno` (`vendor_slno`);

--
-- Indexes for table `Ilab_master_buyer_material_details`
--
ALTER TABLE `Ilab_master_buyer_material_details`
  ADD PRIMARY KEY (`slno_mat`);

--
-- Indexes for table `Ilab_master_buyer_MR`
--
ALTER TABLE `Ilab_master_buyer_MR`
  ADD PRIMARY KEY (`Slno_buyer`),
  ADD KEY `Mr_id` (`Mr_id`),
  ADD KEY `Slno_mr_id` (`Slno_mr_id`),
  ADD KEY `Slno_procurement_id` (`Slno_procurement_id`),
  ADD KEY `procurement_id` (`procurement_id`);

--
-- Indexes for table `Ilab_master_category`
--
ALTER TABLE `Ilab_master_category`
  ADD PRIMARY KEY (`Slno_cat`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `Ilab_master_charges_other`
--
ALTER TABLE `Ilab_master_charges_other`
  ADD PRIMARY KEY (`Slno_other`);

--
-- Indexes for table `Ilab_master_closed_bid`
--
ALTER TABLE `Ilab_master_closed_bid`
  ADD PRIMARY KEY (`Slno_closed`);

--
-- Indexes for table `Ilab_master_closed_bid_item`
--
ALTER TABLE `Ilab_master_closed_bid_item`
  ADD PRIMARY KEY (`Slno_closed_item`);

--
-- Indexes for table `Ilab_master_closed_bid_item_misc`
--
ALTER TABLE `Ilab_master_closed_bid_item_misc`
  ADD PRIMARY KEY (`Slno_closed_misc`);

--
-- Indexes for table `Ilab_master_closed_bid_item_total`
--
ALTER TABLE `Ilab_master_closed_bid_item_total`
  ADD PRIMARY KEY (`Slno_closed_item_total`);

--
-- Indexes for table `Ilab_master_closed_bid_logistics`
--
ALTER TABLE `Ilab_master_closed_bid_logistics`
  ADD PRIMARY KEY (`Slno_closed_item`);

--
-- Indexes for table `Ilab_master_commercial_notifications`
--
ALTER TABLE `Ilab_master_commercial_notifications`
  ADD PRIMARY KEY (`slno_notification`);

--
-- Indexes for table `Ilab_master_createuser`
--
ALTER TABLE `Ilab_master_createuser`
  ADD PRIMARY KEY (`Create_Slno`);

--
-- Indexes for table `Ilab_master_final_closed_bid_item`
--
ALTER TABLE `Ilab_master_final_closed_bid_item`
  ADD PRIMARY KEY (`Slno_closed_item`);

--
-- Indexes for table `Ilab_master_final_simple_bid_item`
--
ALTER TABLE `Ilab_master_final_simple_bid_item`
  ADD PRIMARY KEY (`Slno_simple_item`);

--
-- Indexes for table `Ilab_master_items_material`
--
ALTER TABLE `Ilab_master_items_material`
  ADD PRIMARY KEY (`Slno_item`);

--
-- Indexes for table `Ilab_master_loaction_details`
--
ALTER TABLE `Ilab_master_loaction_details`
  ADD PRIMARY KEY (`slno_loc`);

--
-- Indexes for table `Ilab_master_logistic_vehicle_commerical`
--
ALTER TABLE `Ilab_master_logistic_vehicle_commerical`
  ADD PRIMARY KEY (`Slno_logic_comm`);

--
-- Indexes for table `Ilab_master_mr_approver_order`
--
ALTER TABLE `Ilab_master_mr_approver_order`
  ADD PRIMARY KEY (`Slno_approver`),
  ADD KEY `Mr_id` (`Mr_id`),
  ADD KEY `Slno_mr_id` (`Slno_mr_id`),
  ADD KEY `Job_code` (`Job_code`);

--
-- Indexes for table `Ilab_master_mr_file_upload`
--
ALTER TABLE `Ilab_master_mr_file_upload`
  ADD PRIMARY KEY (`slno_file`),
  ADD KEY `mr_no_id` (`mr_no_id`),
  ADD KEY `slno_mr_id` (`slno_mr_id`);

--
-- Indexes for table `Ilab_master_mr_job_comments`
--
ALTER TABLE `Ilab_master_mr_job_comments`
  ADD PRIMARY KEY (`Slno_comment`),
  ADD KEY `Mr_id` (`Mr_id`),
  ADD KEY `Slno_mr_id` (`Slno_mr_id`);

--
-- Indexes for table `Ilab_master_mr_job_details`
--
ALTER TABLE `Ilab_master_mr_job_details`
  ADD PRIMARY KEY (`slno_mr`),
  ADD UNIQUE KEY `mr_no` (`mr_no`);

--
-- Indexes for table `Ilab_master_mr_location`
--
ALTER TABLE `Ilab_master_mr_location`
  ADD PRIMARY KEY (`slno_loca_mr`);

--
-- Indexes for table `Ilab_master_mr_material_item`
--
ALTER TABLE `Ilab_master_mr_material_item`
  ADD PRIMARY KEY (`slno_item_mr`),
  ADD KEY `material_item_id` (`material_item_id`),
  ADD KEY `mr_no_item` (`mr_no_item`),
  ADD KEY `slno_mr_id` (`slno_mr_id`);

--
-- Indexes for table `Ilab_master_mr_technical_parameter_info`
--
ALTER TABLE `Ilab_master_mr_technical_parameter_info`
  ADD PRIMARY KEY (`slno_para`),
  ADD KEY `mr_no_tech` (`mr_no_tech`),
  ADD KEY `slno_mr_id_tech` (`slno_mr_id_tech`),
  ADD KEY `tech_slno_id` (`tech_slno_id`),
  ADD KEY `slno_item_mr_tech` (`slno_item_mr_tech`);

--
-- Indexes for table `Ilab_master_mr_vehicle_mr_detail`
--
ALTER TABLE `Ilab_master_mr_vehicle_mr_detail`
  ADD PRIMARY KEY (`slno_mr_logistic`),
  ADD KEY `mr_no_vehicle` (`mr_no_vehicle`),
  ADD KEY `slno_mr_id_vehicle` (`slno_mr_id_vehicle`),
  ADD KEY `vehicle_slno_id` (`vehicle_slno_id`);

--
-- Indexes for table `Ilab_master_new_order_book`
--
ALTER TABLE `Ilab_master_new_order_book`
  ADD PRIMARY KEY (`Slno_n_order`),
  ADD KEY `Slno_project` (`Slno_project`);

--
-- Indexes for table `Ilab_master_procurement_MR`
--
ALTER TABLE `Ilab_master_procurement_MR`
  ADD PRIMARY KEY (`Slno_procurement`),
  ADD KEY `Mr_id` (`Mr_id`),
  ADD KEY `Job_code` (`Job_code`),
  ADD KEY `Slno_approver_id` (`Slno_approver_id`),
  ADD KEY `Procurement_id` (`Procurement_id`),
  ADD KEY `Buyer_id` (`buyer_name`),
  ADD KEY `Slno_MR_id` (`Slno_MR_id`);

--
-- Indexes for table `Ilab_master_project`
--
ALTER TABLE `Ilab_master_project`
  ADD PRIMARY KEY (`Project_Slno`);

--
-- Indexes for table `Ilab_master_rankorder_bid`
--
ALTER TABLE `Ilab_master_rankorder_bid`
  ADD PRIMARY KEY (`Slno_rankorder`);

--
-- Indexes for table `Ilab_master_rankorder_bid_item`
--
ALTER TABLE `Ilab_master_rankorder_bid_item`
  ADD PRIMARY KEY (`Slno_rankorder_item`);

--
-- Indexes for table `Ilab_master_rankorder_bid_item_misc`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_misc`
  ADD PRIMARY KEY (`Slno_rankorder_misc`);

--
-- Indexes for table `Ilab_master_rankorder_bid_item_misc_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_misc_temp`
  ADD PRIMARY KEY (`Slno_rankorder_misc`);

--
-- Indexes for table `Ilab_master_rankorder_bid_item_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_temp`
  ADD PRIMARY KEY (`Slno_rankorder_item`);

--
-- Indexes for table `Ilab_master_rankorder_bid_logistics`
--
ALTER TABLE `Ilab_master_rankorder_bid_logistics`
  ADD PRIMARY KEY (`Slno_rankorder_item`);

--
-- Indexes for table `Ilab_master_rankorder_bid_logistics_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_logistics_temp`
  ADD PRIMARY KEY (`Slno_rankorder_item`);

--
-- Indexes for table `Ilab_master_rankorder_bid_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_temp`
  ADD PRIMARY KEY (`Slno_rankorder`);

--
-- Indexes for table `Ilab_master_rankorder_item_total`
--
ALTER TABLE `Ilab_master_rankorder_item_total`
  ADD PRIMARY KEY (`Slno_rankorder_item_total`);

--
-- Indexes for table `Ilab_master_rankorder_item_total_temp`
--
ALTER TABLE `Ilab_master_rankorder_item_total_temp`
  ADD PRIMARY KEY (`Slno_rankorder_item_total`);

--
-- Indexes for table `Ilab_master_session_history`
--
ALTER TABLE `Ilab_master_session_history`
  ADD PRIMARY KEY (`slno_history`);

--
-- Indexes for table `Ilab_master_session_history_vendors`
--
ALTER TABLE `Ilab_master_session_history_vendors`
  ADD PRIMARY KEY (`slno_history`);

--
-- Indexes for table `Ilab_master_simple_bid`
--
ALTER TABLE `Ilab_master_simple_bid`
  ADD PRIMARY KEY (`Slno_simple`);

--
-- Indexes for table `Ilab_master_simple_bid_item`
--
ALTER TABLE `Ilab_master_simple_bid_item`
  ADD PRIMARY KEY (`Slno_simple_item`);

--
-- Indexes for table `Ilab_master_simple_bid_item_misc`
--
ALTER TABLE `Ilab_master_simple_bid_item_misc`
  ADD PRIMARY KEY (`Slno_simple_misc`);

--
-- Indexes for table `Ilab_master_simple_bid_item_total`
--
ALTER TABLE `Ilab_master_simple_bid_item_total`
  ADD PRIMARY KEY (`Slno_simple_item_total`);

--
-- Indexes for table `Ilab_master_simple_bid_logistic`
--
ALTER TABLE `Ilab_master_simple_bid_logistic`
  ADD PRIMARY KEY (`Slno_simple_item`);

--
-- Indexes for table `Ilab_master_technical_detail`
--
ALTER TABLE `Ilab_master_technical_detail`
  ADD PRIMARY KEY (`Slno_technical`),
  ADD KEY `material_slno` (`material_slno`);

--
-- Indexes for table `Ilab_master_tech_bid_comment`
--
ALTER TABLE `Ilab_master_tech_bid_comment`
  ADD PRIMARY KEY (`Slno`);

--
-- Indexes for table `Ilab_master_tracking_tools`
--
ALTER TABLE `Ilab_master_tracking_tools`
  ADD PRIMARY KEY (`Slno_tracking`),
  ADD UNIQUE KEY `Po_no` (`Po_no`),
  ADD KEY `Job_code` (`Job_code`);

--
-- Indexes for table `Ilab_master_vehicle`
--
ALTER TABLE `Ilab_master_vehicle`
  ADD PRIMARY KEY (`Slno_vehicle`),
  ADD KEY `vehicle_type` (`vehicle_type`),
  ADD KEY `vehicle_capacity` (`vehicle_capacity`);

--
-- Indexes for table `Ilab_master_vehicle_capacity`
--
ALTER TABLE `Ilab_master_vehicle_capacity`
  ADD PRIMARY KEY (`Slno_vehicle`),
  ADD UNIQUE KEY `vehicle_capacity` (`vehicle_capacity`);

--
-- Indexes for table `Ilab_master_vehicle_type`
--
ALTER TABLE `Ilab_master_vehicle_type`
  ADD PRIMARY KEY (`Slno_vehicle`),
  ADD UNIQUE KEY `vehicle_type` (`vehicle_type`);

--
-- Indexes for table `Ilab_master_vendor_detail`
--
ALTER TABLE `Ilab_master_vendor_detail`
  ADD PRIMARY KEY (`Slno_vendor`),
  ADD UNIQUE KEY `Vendor_email_id` (`Vendor_email_id`);

--
-- Indexes for table `Ilab_master_vendor_file_token`
--
ALTER TABLE `Ilab_master_vendor_file_token`
  ADD PRIMARY KEY (`slno_tech_file`);

--
-- Indexes for table `Ilab_master_vendor_notifications`
--
ALTER TABLE `Ilab_master_vendor_notifications`
  ADD PRIMARY KEY (`slno_approve`);

--
-- Indexes for table `Ilab_master_vendor_tech_token_bid`
--
ALTER TABLE `Ilab_master_vendor_tech_token_bid`
  ADD PRIMARY KEY (`Slno_token`);

--
-- Indexes for table `Ilab_pms_log_entries`
--
ALTER TABLE `Ilab_pms_log_entries`
  ADD PRIMARY KEY (`Slno`);

--
-- Indexes for table `Ilab_section`
--
ALTER TABLE `Ilab_section`
  ADD PRIMARY KEY (`Section_Slno`);

--
-- Indexes for table `Ilab_Vendor_operation_detail`
--
ALTER TABLE `Ilab_Vendor_operation_detail`
  ADD PRIMARY KEY (`Slno_Vendor_operation`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ilab_activity`
--
ALTER TABLE `Ilab_activity`
  MODIFY `Activity_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ilab_assign_project_user`
--
ALTER TABLE `Ilab_assign_project_user`
  MODIFY `slno_assign_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `Ilab_master_admin`
--
ALTER TABLE `Ilab_master_admin`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `Ilab_master_bid`
--
ALTER TABLE `Ilab_master_bid`
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commerical`
--
ALTER TABLE `Ilab_master_bid_commerical`
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commericalevaluation`
--
ALTER TABLE `Ilab_master_bid_commericalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details`
--
ALTER TABLE `Ilab_master_bid_date_details`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details_commerical`
--
ALTER TABLE `Ilab_master_bid_date_details_commerical`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details`
--
ALTER TABLE `Ilab_master_bid_details`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details_commerical`
--
ALTER TABLE `Ilab_master_bid_details_commerical`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_commerical`
--
ALTER TABLE `Ilab_master_bid_file_commerical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_technical`
--
ALTER TABLE `Ilab_master_bid_file_technical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_invitation_rank`
--
ALTER TABLE `Ilab_master_bid_invitation_rank`
  MODIFY `slno_invi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_invi_otp`
--
ALTER TABLE `Ilab_master_bid_invi_otp`
  MODIFY `slno_otp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_invi_rank_approvals`
--
ALTER TABLE `Ilab_master_bid_invi_rank_approvals`
  MODIFY `slno_approve` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_invi_rank_not_app`
--
ALTER TABLE `Ilab_master_bid_invi_rank_not_app`
  MODIFY `slno_not` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_otp_commerical`
--
ALTER TABLE `Ilab_master_bid_otp_commerical`
  MODIFY `slno_comm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query`
--
ALTER TABLE `Ilab_master_bid_query`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query_commerical`
--
ALTER TABLE `Ilab_master_bid_query_commerical`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_technicalevaluation`
--
ALTER TABLE `Ilab_master_bid_technicalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor`
--
ALTER TABLE `Ilab_master_bid_vendor`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_commerical`
--
ALTER TABLE `Ilab_master_bid_vendor_commerical`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_file_details`
--
ALTER TABLE `Ilab_master_bid_vendor_file_details`
  MODIFY `slno_document` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_material_details`
--
ALTER TABLE `Ilab_master_buyer_material_details`
  MODIFY `slno_mat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_MR`
--
ALTER TABLE `Ilab_master_buyer_MR`
  MODIFY `Slno_buyer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Ilab_master_category`
--
ALTER TABLE `Ilab_master_category`
  MODIFY `Slno_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_charges_other`
--
ALTER TABLE `Ilab_master_charges_other`
  MODIFY `Slno_other` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid`
--
ALTER TABLE `Ilab_master_closed_bid`
  MODIFY `Slno_closed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item`
--
ALTER TABLE `Ilab_master_closed_bid_item`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item_misc`
--
ALTER TABLE `Ilab_master_closed_bid_item_misc`
  MODIFY `Slno_closed_misc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item_total`
--
ALTER TABLE `Ilab_master_closed_bid_item_total`
  MODIFY `Slno_closed_item_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_logistics`
--
ALTER TABLE `Ilab_master_closed_bid_logistics`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Ilab_master_commercial_notifications`
--
ALTER TABLE `Ilab_master_commercial_notifications`
  MODIFY `slno_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_createuser`
--
ALTER TABLE `Ilab_master_createuser`
  MODIFY `Create_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_final_closed_bid_item`
--
ALTER TABLE `Ilab_master_final_closed_bid_item`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_final_simple_bid_item`
--
ALTER TABLE `Ilab_master_final_simple_bid_item`
  MODIFY `Slno_simple_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_items_material`
--
ALTER TABLE `Ilab_master_items_material`
  MODIFY `Slno_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Ilab_master_loaction_details`
--
ALTER TABLE `Ilab_master_loaction_details`
  MODIFY `slno_loc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_logistic_vehicle_commerical`
--
ALTER TABLE `Ilab_master_logistic_vehicle_commerical`
  MODIFY `Slno_logic_comm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_approver_order`
--
ALTER TABLE `Ilab_master_mr_approver_order`
  MODIFY `Slno_approver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_file_upload`
--
ALTER TABLE `Ilab_master_mr_file_upload`
  MODIFY `slno_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_comments`
--
ALTER TABLE `Ilab_master_mr_job_comments`
  MODIFY `Slno_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_details`
--
ALTER TABLE `Ilab_master_mr_job_details`
  MODIFY `slno_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_location`
--
ALTER TABLE `Ilab_master_mr_location`
  MODIFY `slno_loca_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_material_item`
--
ALTER TABLE `Ilab_master_mr_material_item`
  MODIFY `slno_item_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_technical_parameter_info`
--
ALTER TABLE `Ilab_master_mr_technical_parameter_info`
  MODIFY `slno_para` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_vehicle_mr_detail`
--
ALTER TABLE `Ilab_master_mr_vehicle_mr_detail`
  MODIFY `slno_mr_logistic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `Ilab_master_new_order_book`
--
ALTER TABLE `Ilab_master_new_order_book`
  MODIFY `Slno_n_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_procurement_MR`
--
ALTER TABLE `Ilab_master_procurement_MR`
  MODIFY `Slno_procurement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `Ilab_master_project`
--
ALTER TABLE `Ilab_master_project`
  MODIFY `Project_Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid`
--
ALTER TABLE `Ilab_master_rankorder_bid`
  MODIFY `Slno_rankorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item`
--
ALTER TABLE `Ilab_master_rankorder_bid_item`
  MODIFY `Slno_rankorder_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item_misc`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_misc`
  MODIFY `Slno_rankorder_misc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item_misc_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_misc_temp`
  MODIFY `Slno_rankorder_misc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_temp`
  MODIFY `Slno_rankorder_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_logistics`
--
ALTER TABLE `Ilab_master_rankorder_bid_logistics`
  MODIFY `Slno_rankorder_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_logistics_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_logistics_temp`
  MODIFY `Slno_rankorder_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_temp`
--
ALTER TABLE `Ilab_master_rankorder_bid_temp`
  MODIFY `Slno_rankorder` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_item_total`
--
ALTER TABLE `Ilab_master_rankorder_item_total`
  MODIFY `Slno_rankorder_item_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_item_total_temp`
--
ALTER TABLE `Ilab_master_rankorder_item_total_temp`
  MODIFY `Slno_rankorder_item_total` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history`
--
ALTER TABLE `Ilab_master_session_history`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history_vendors`
--
ALTER TABLE `Ilab_master_session_history_vendors`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid`
--
ALTER TABLE `Ilab_master_simple_bid`
  MODIFY `Slno_simple` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item`
--
ALTER TABLE `Ilab_master_simple_bid_item`
  MODIFY `Slno_simple_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item_misc`
--
ALTER TABLE `Ilab_master_simple_bid_item_misc`
  MODIFY `Slno_simple_misc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item_total`
--
ALTER TABLE `Ilab_master_simple_bid_item_total`
  MODIFY `Slno_simple_item_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_logistic`
--
ALTER TABLE `Ilab_master_simple_bid_logistic`
  MODIFY `Slno_simple_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_technical_detail`
--
ALTER TABLE `Ilab_master_technical_detail`
  MODIFY `Slno_technical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Ilab_master_tech_bid_comment`
--
ALTER TABLE `Ilab_master_tech_bid_comment`
  MODIFY `Slno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_tracking_tools`
--
ALTER TABLE `Ilab_master_tracking_tools`
  MODIFY `Slno_tracking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle`
--
ALTER TABLE `Ilab_master_vehicle`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle_capacity`
--
ALTER TABLE `Ilab_master_vehicle_capacity`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle_type`
--
ALTER TABLE `Ilab_master_vehicle_type`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_detail`
--
ALTER TABLE `Ilab_master_vendor_detail`
  MODIFY `Slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_file_token`
--
ALTER TABLE `Ilab_master_vendor_file_token`
  MODIFY `slno_tech_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_notifications`
--
ALTER TABLE `Ilab_master_vendor_notifications`
  MODIFY `slno_approve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_tech_token_bid`
--
ALTER TABLE `Ilab_master_vendor_tech_token_bid`
  MODIFY `Slno_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_pms_log_entries`
--
ALTER TABLE `Ilab_pms_log_entries`
  MODIFY `Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `Ilab_section`
--
ALTER TABLE `Ilab_section`
  MODIFY `Section_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_Vendor_operation_detail`
--
ALTER TABLE `Ilab_Vendor_operation_detail`
  MODIFY `Slno_Vendor_operation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ilab_master_mr_file_upload`
--
ALTER TABLE `Ilab_master_mr_file_upload`
  ADD CONSTRAINT `file_mr_create` FOREIGN KEY (`mr_no_id`) REFERENCES `Ilab_master_mr_job_details` (`mr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_mr_create_slno` FOREIGN KEY (`slno_mr_id`) REFERENCES `Ilab_master_mr_job_details` (`slno_mr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_mr_material_item`
--
ALTER TABLE `Ilab_master_mr_material_item`
  ADD CONSTRAINT `mr_no_link` FOREIGN KEY (`mr_no_item`) REFERENCES `Ilab_master_mr_job_details` (`mr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `slno_mr_no_link` FOREIGN KEY (`slno_mr_id`) REFERENCES `Ilab_master_mr_job_details` (`slno_mr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_mr_technical_parameter_info`
--
ALTER TABLE `Ilab_master_mr_technical_parameter_info`
  ADD CONSTRAINT `mr_no_link_TECH` FOREIGN KEY (`mr_no_tech`) REFERENCES `Ilab_master_mr_job_details` (`mr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `slno_item_no_link_TECH` FOREIGN KEY (`slno_item_mr_tech`) REFERENCES `Ilab_master_mr_material_item` (`slno_item_mr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `slno_mr_no_link_TECH` FOREIGN KEY (`slno_mr_id_tech`) REFERENCES `Ilab_master_mr_job_details` (`slno_mr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_mr_vehicle_mr_detail`
--
ALTER TABLE `Ilab_master_mr_vehicle_mr_detail`
  ADD CONSTRAINT `mr_no_link_vehicle` FOREIGN KEY (`mr_no_vehicle`) REFERENCES `Ilab_master_mr_job_details` (`mr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vechile_mr_create_slno` FOREIGN KEY (`slno_mr_id_vehicle`) REFERENCES `Ilab_master_mr_job_details` (`slno_mr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_new_order_book`
--
ALTER TABLE `Ilab_master_new_order_book`
  ADD CONSTRAINT `new_project_slno` FOREIGN KEY (`Slno_project`) REFERENCES `Ilab_master_project` (`Project_Slno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_technical_detail`
--
ALTER TABLE `Ilab_master_technical_detail`
  ADD CONSTRAINT `technical_link_item_master` FOREIGN KEY (`material_slno`) REFERENCES `Ilab_master_items_material` (`Slno_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ilab_master_vehicle`
--
ALTER TABLE `Ilab_master_vehicle`
  ADD CONSTRAINT `vechile_capacitys` FOREIGN KEY (`vehicle_capacity`) REFERENCES `Ilab_master_vehicle_capacity` (`vehicle_capacity`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vechile_types` FOREIGN KEY (`vehicle_type`) REFERENCES `Ilab_master_vehicle_type` (`vehicle_type`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
