-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2019 at 12:47 PM
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
(1, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-28', '12:32:57', 1, NULL, NULL, '8afk46g6qfduv61ei4s9s4h95mkpief0'),
(2, 'design2@ilab.com', 'design user 2', 2, '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}', '192.168.0.6', '2019-01-28', '12:32:57', 1, NULL, NULL, '50in2ee57j8qaqot7k31s4q6om6boq28');

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
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commerical`
--
ALTER TABLE `Ilab_master_bid_commerical`
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commericalevaluation`
--
ALTER TABLE `Ilab_master_bid_commericalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details`
--
ALTER TABLE `Ilab_master_bid_date_details`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details_commerical`
--
ALTER TABLE `Ilab_master_bid_date_details_commerical`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details`
--
ALTER TABLE `Ilab_master_bid_details`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details_commerical`
--
ALTER TABLE `Ilab_master_bid_details_commerical`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_commerical`
--
ALTER TABLE `Ilab_master_bid_file_commerical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_technical`
--
ALTER TABLE `Ilab_master_bid_file_technical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `slno_comm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query`
--
ALTER TABLE `Ilab_master_bid_query`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query_commerical`
--
ALTER TABLE `Ilab_master_bid_query_commerical`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_technicalevaluation`
--
ALTER TABLE `Ilab_master_bid_technicalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor`
--
ALTER TABLE `Ilab_master_bid_vendor`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_commerical`
--
ALTER TABLE `Ilab_master_bid_vendor_commerical`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_file_details`
--
ALTER TABLE `Ilab_master_bid_vendor_file_details`
  MODIFY `slno_document` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_material_details`
--
ALTER TABLE `Ilab_master_buyer_material_details`
  MODIFY `slno_mat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_MR`
--
ALTER TABLE `Ilab_master_buyer_MR`
  MODIFY `Slno_buyer` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `Slno_closed` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item`
--
ALTER TABLE `Ilab_master_closed_bid_item`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item_misc`
--
ALTER TABLE `Ilab_master_closed_bid_item_misc`
  MODIFY `Slno_closed_misc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_item_total`
--
ALTER TABLE `Ilab_master_closed_bid_item_total`
  MODIFY `Slno_closed_item_total` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_closed_bid_logistics`
--
ALTER TABLE `Ilab_master_closed_bid_logistics`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_commercial_notifications`
--
ALTER TABLE `Ilab_master_commercial_notifications`
  MODIFY `slno_notification` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_createuser`
--
ALTER TABLE `Ilab_master_createuser`
  MODIFY `Create_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_final_closed_bid_item`
--
ALTER TABLE `Ilab_master_final_closed_bid_item`
  MODIFY `Slno_closed_item` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `Slno_approver` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_file_upload`
--
ALTER TABLE `Ilab_master_mr_file_upload`
  MODIFY `slno_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_comments`
--
ALTER TABLE `Ilab_master_mr_job_comments`
  MODIFY `Slno_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_details`
--
ALTER TABLE `Ilab_master_mr_job_details`
  MODIFY `slno_mr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_location`
--
ALTER TABLE `Ilab_master_mr_location`
  MODIFY `slno_loca_mr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_material_item`
--
ALTER TABLE `Ilab_master_mr_material_item`
  MODIFY `slno_item_mr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_technical_parameter_info`
--
ALTER TABLE `Ilab_master_mr_technical_parameter_info`
  MODIFY `slno_para` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_vehicle_mr_detail`
--
ALTER TABLE `Ilab_master_mr_vehicle_mr_detail`
  MODIFY `slno_mr_logistic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_new_order_book`
--
ALTER TABLE `Ilab_master_new_order_book`
  MODIFY `Slno_n_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_procurement_MR`
--
ALTER TABLE `Ilab_master_procurement_MR`
  MODIFY `Slno_procurement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_project`
--
ALTER TABLE `Ilab_master_project`
  MODIFY `Project_Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid`
--
ALTER TABLE `Ilab_master_rankorder_bid`
  MODIFY `Slno_rankorder` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item`
--
ALTER TABLE `Ilab_master_rankorder_bid_item`
  MODIFY `Slno_rankorder_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_bid_item_misc`
--
ALTER TABLE `Ilab_master_rankorder_bid_item_misc`
  MODIFY `Slno_rankorder_misc` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `Slno_rankorder_item_total` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_rankorder_item_total_temp`
--
ALTER TABLE `Ilab_master_rankorder_item_total_temp`
  MODIFY `Slno_rankorder_item_total` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history`
--
ALTER TABLE `Ilab_master_session_history`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history_vendors`
--
ALTER TABLE `Ilab_master_session_history_vendors`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid`
--
ALTER TABLE `Ilab_master_simple_bid`
  MODIFY `Slno_simple` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item`
--
ALTER TABLE `Ilab_master_simple_bid_item`
  MODIFY `Slno_simple_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item_misc`
--
ALTER TABLE `Ilab_master_simple_bid_item_misc`
  MODIFY `Slno_simple_misc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_item_total`
--
ALTER TABLE `Ilab_master_simple_bid_item_total`
  MODIFY `Slno_simple_item_total` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_simple_bid_logistic`
--
ALTER TABLE `Ilab_master_simple_bid_logistic`
  MODIFY `Slno_simple_item` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `slno_tech_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_notifications`
--
ALTER TABLE `Ilab_master_vendor_notifications`
  MODIFY `slno_approve` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_tech_token_bid`
--
ALTER TABLE `Ilab_master_vendor_tech_token_bid`
  MODIFY `Slno_token` int(11) NOT NULL AUTO_INCREMENT;
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
