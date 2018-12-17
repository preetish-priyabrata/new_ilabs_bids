-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2018 at 04:20 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
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
(4, '', '', 1, '2018-09-28', '18:01:35');

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
(39, 17, 'abc2@gmail.com', 6, '189067', 1, 7, '2018-10-23', '16:13:34');

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
(21, 'zz11@gmail.com', 'user3', 'cC2345670', '164ba08fa522f904fc17e46c7a54c2ed', 1, 10, '6563423248', 'designation3'),
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
(34, 'uvt99@gmail.com', 'user797', 'vT976786vvn', '4e1aa3921ac7f7d3595e6f843a876f22', 1, 5, '7897459893', 'designation09');

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
(1, 1, '2018-12-03', 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 1, 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-03 09:25:44', 'buy1@ilab.com', '2018-12-06', '2018-12-30'),
(2, 5, '2018-12-05', 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 1, 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-05 13:46:03', 'buy1@ilab.com', '2018-05-02', '2018-12-29');

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
-- Dumping data for table `Ilab_master_bid_commerical`
--

INSERT INTO `Ilab_master_bid_commerical` (`Slno_bid`, `buyer_slno`, `bid_date_entry`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `status_bid`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `bid_title`, `bid_description`, `data_entry`, `bid_creator_id`, `date_publish`, `date_closing`) VALUES
(1, 2, '2018-12-14', 'test001ee', 'ee', '1', 'Simple Bid', '2', 4, 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-14 09:56:34', 'buy1@ilab.com', '2018-12-14', '2018-12-31');

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
  `status_bid` int(11) NOT NULL DEFAULT '0' COMMENT '0->not started  1->started  8->complete bid',
  `view_status` int(11) NOT NULL DEFAULT '0' COMMENT '0->not viewed 1->viewied'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_commericalevaluation`
--

INSERT INTO `Ilab_master_bid_commericalevaluation` (`slno_bid_tech_id`, `bid_slno`, `buyer_slno`, `Technical_id_person`, `master_bid_id`, `status_bid`, `view_status`) VALUES
(1, 1, 2, '21', 1, 0, 0);

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
(1, 3, 1, '2018-12-04', '2018-12-15', '2018-12-06', 1, 1, ' What is Lorem Ipsum?  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(2, 8, 5, '2018-12-02', '2018-12-29', '2018-12-14', 1, 2, 'In this section, we\'ll see various algorithms for supervised machine learning. Different algorithms perform better for different types of data, where deciding factors would include total number of dimensions in input data, whether the data is text or numerical or a time series, whether or not the data is sparse, size of dataset, and so on. For each algorithm, we\'ll explain how it works and the applications for which it produces state-of-the-art results. ');

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
(1, 1, 2, '2018-12-15', '2018-12-31', '2018-12-19', 4, 1, 'Getting the right cover is not rocket science. Today online calculators are available to help you find the cover you need, once you’ve decided your goals.');

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
(1, 3, 1, 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '6 month', 'Delhi', 1),
(2, 8, 5, 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '6 month', 'fortunev tower', 2);

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
(1, 1, 2, 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '6 month', 'fortunev tower', 1);

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

--
-- Dumping data for table `Ilab_master_bid_file_technical`
--

INSERT INTO `Ilab_master_bid_file_technical` (`Slno_bid_file`, `bid_slno`, `bid_buyer_slno`, `file_name`, `file_code_name`, `date`, `status`, `who_loaded_file`) VALUES
(1, 11, 4, 'login_lnt.png', '2018-11-13-login_lnt.png', '2018-11-13 08:03:05', 1, 'buy1@ilab.com'),
(2, 11, 4, 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-13-Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-13 08:10:46', 1, 'buy1@ilab.com'),
(3, 12, 6, 'e Bid.jpg', '2018-11-13-e Bid.jpg', '2018-11-13 08:10:53', 1, 'buy1@ilab.com'),
(4, 11, 4, 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-13-Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-13 09:48:42', 1, 'buy1@ilab.com'),
(5, 11, 4, 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-13-Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-13 11:37:40', 1, 'buy1@ilab.com'),
(6, 11, 4, 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-13-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-13 11:54:42', 1, 'buy1@ilab.com'),
(7, 3, 1, 'vdbanner.jpg', '2018-12-03-vdbanner.jpg', '2018-12-03 07:50:56', 1, 'buy1@ilab.com'),
(8, 8, 5, '10omc.jpg', '2018-12-05-10omc.jpg', '2018-12-05 13:45:38', 1, 'buy1@ilab.com'),
(9, 3, 1, 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 09:12:49', 1, 'buy1@ilab.com'),
(10, 8, 5, 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 09:14:13', 1, 'buy1@ilab.com');

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
(1, 1, 'ven121@gmail.com', 'what details required for this bid', 'ok', NULL, '2018-12-04', '2018-12-04', 1),
(2, 1, 'ven121@gmail.com', 'what is reuirement ?', 'best required', 'buy1@ilab.com', '2018-12-04', '2018-12-08', 1),
(3, 1, 'ven121@gmail.com', 'when it is needed?', 'materials required', 'buy1@ilab.com', '2018-12-07', '2018-12-14', 1),
(4, 2, 'ven121@gmail.com', 'hello please help me in this? bid', 'materials required ', 'buy1@ilab.com', '2018-12-08', '2018-12-14', 1);

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
(1, 1, 'ven121@gmail.com', 'test', NULL, NULL, '2018-12-14', NULL, 0),
(2, 1, 'ven121@gmail.com', 'tyuyiyiyijljlo ', NULL, NULL, '2018-12-14', NULL, 0),
(3, 1, 'ven121@gmail.com', 'plese check this ', NULL, NULL, '2018-12-14', NULL, 0);

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
(1, 3, 1, '19', 1, 1, 0),
(2, 8, 5, '19', 2, 1, 0);

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
(1, 3, 1, 'ven111@gmail.com', 1, '', '', '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 0, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-10 15:48:10', 1, 5, NULL),
(2, 3, 1, 'ven121@gmail.com', 1, '1', '1', '1', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 1, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-17 08:50:48', 1, 7, ''),
(3, 3, 1, 'ven221@gmail.com', 1, '', '', '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 0, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-14 11:56:07', 1, 6, NULL),
(4, 3, 1, 'ven310@yahoo.com', 1, '', '', '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 0, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-10 15:48:10', 1, 5, NULL),
(5, 3, 1, 'ven97@gmail.com', 1, '', '', '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 0, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-10 15:48:10', 1, 5, NULL),
(6, 3, 1, 'ven979@yahoo.com', 1, '', '', '0', 'SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', 'INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI', '2018-12-04', '2018-12-15', '2018-12-06', 1, 0, 'REF 2018', 'REF 2018', '3', 'Closed Bid', '1', 3, '2018-11-05-pUgws', '679034', 1, 'logistics [ logistics ]', '2018-12-03 09:25:44', '2018-12-10 15:48:10', 1, 5, NULL),
(7, 8, 5, 'vender@ilab.com', 1, NULL, NULL, '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-06 06:22:09', 1, 5, NULL),
(8, 8, 5, 'ven121@gmail.com', 1, NULL, '0', '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-17 08:59:28', 1, 8, 'Please attach new all data send again'),
(9, 8, 5, 'ven221@gmail.com', 1, NULL, NULL, '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-06 06:22:09', 1, 5, NULL),
(10, 8, 5, 'ven331@gmail.com', 1, NULL, NULL, '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-06 06:22:09', 1, 5, NULL),
(11, 8, 5, 'ven979@yahoo.com', 1, NULL, NULL, '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-06 06:22:09', 1, 5, NULL),
(12, 8, 5, 'ven66@gmail.com', 1, NULL, NULL, '0', 'What is the best online site for practicing aptitude ', 'Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow', '2018-12-02', '2018-12-29', '2018-12-14', 2, 0, 'ref /2018 f', 'myt', '2', 'Rank Order Bid', '1', 8, '2018-11-06-EDNHT', '189067', 1, 'make to order items [ moi ]', '2018-12-05 13:46:04', '2018-12-06 06:22:09', 1, 5, NULL);

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
  `status_view` int(11) NOT NULL DEFAULT '5' COMMENT '5-not viewed 6-viewed 7-submitted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ilab_master_bid_vendor_commerical`
--

INSERT INTO `Ilab_master_bid_vendor_commerical` (`slno_vendor`, `bid_slno`, `buyer_slno`, `vendor_id`, `status`, `approval_status`, `submission_status`, `submission_count`, `title`, `description`, `date_start`, `date_end`, `query_end_date`, `master_bid_id`, `view_status`, `bid_ref`, `bid_id`, `category`, `mode_bid`, `technical_bid_type`, `mr_slno`, `mr_no`, `job_code`, `edit_id`, `material_category_name`, `date_entry`, `date_update`, `status_active`, `status_view`) VALUES
(1, 1, 2, 'vender@ilab.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(2, 1, 2, 'ven111@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(3, 1, 2, 'ven121@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-17 10:18:08', 1, 6),
(4, 1, 2, 'ven310@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(5, 1, 2, 'ven1011@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(6, 1, 2, 'ven97@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(7, 1, 2, 'ven979@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(8, 1, 2, 'ven90@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(9, 1, 2, 'ven170@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 1, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:56:35', '2018-12-14 09:56:35', 0, 5),
(10, 1, 2, 'vender@ilab.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(11, 1, 2, 'ven111@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(12, 1, 2, 'ven121@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(13, 1, 2, 'ven310@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(14, 1, 2, 'ven1011@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(15, 1, 2, 'ven97@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(16, 1, 2, 'ven979@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(17, 1, 2, 'ven90@gmail.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5),
(18, 1, 2, 'ven170@yahoo.com', 4, NULL, NULL, '0', 'test bid summary', 'How much insurance do you need? The objective of an insurance cover is to provide adequate financial support to your family, in case you are no more or are unable to earn because of a disability or illness.', '2018-12-15', '2018-12-31', '2018-12-19', 2, 0, 'test001ee', 'ee', '1', 'Simple Bid', '2', 1, '2018-11-05-Qts0z', '0770', 1, 'standard catalogued item [ sci tech ]', '2018-12-14 09:57:11', '2018-12-14 09:57:11', 0, 5);

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
(1, 1, 'material item 1', 'mat001', 'nos', '[\"No Parameter Found\"]', '1', '15', 1),
(2, 2, 'material item 17', 'mat0087', 'nos', '[\"technical 1\"]', '1', '20', 1),
(3, 3, 'material item 19', 'mat0018', 'nos', '[\"ABCD 3333\"]', '1', '35', 1),
(4, 4, 'material item 22', 'mat00910', 'nos', '[\"No Parameter Found\"]', '1', '25', 1),
(5, 5, 'material10', '10', '21', '[\"tec10\",\"67tyu\"]', '1', '789', 1);

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
(1, '2018-11-05-pUgws', 3, '679034', 3, 'buy1@ilab.com', 1, '1', 1, 2, 2, '2018-12-03', '2018-12-14', 'Simple Bid', '2018-11-06 07:13:56', 'pro@ilab.com'),
(2, '2018-11-05-Qts0z', 1, '0770', 1, 'buy1@ilab.com', 1, '2', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-11-06 09:13:07', 'pro@ilab.com'),
(3, '2018-11-05-zjLgq', 2, '23456', 2, 'buy2@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-11-06 09:17:24', 'pro@ilab.com'),
(4, '2018-11-10-aEGtF', 11, '0770', 10, 'buy1@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-11-10 14:39:10', 'pro@ilab.com'),
(5, '2018-11-06-EDNHT', 8, '189067', 4, 'buy1@ilab.com', 1, '1', 1, 2, 2, '2018-12-05', '2018-12-14', 'Simple Bid', '2018-11-10 14:51:30', 'pro@ilab.com'),
(6, '2018-11-10-6LUp1', 12, '23456', 11, 'buy1@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-11-10 14:51:58', 'pro@ilab.com'),
(7, '2018-11-06-OfkqH', 6, '679034', 6, 'buy1@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:43:25', 'pro@ilab.com'),
(8, '2018-11-06-5bciu', 4, '567432', 7, 'buy2@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:43:43', 'pro@ilab.com'),
(9, '2018-12-14-KWgN3', 13, '0770', 12, 'abc2@gmail.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:43:56', 'pro@ilab.com'),
(10, '2018-11-06-VHfBc', 7, '567432', 5, 'buy1@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:46:27', 'pro2@ilab.com'),
(11, '2018-11-06-GucKA', 10, '679034', 9, 'buy2@ilab.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:47:20', 'pro2@ilab.com'),
(12, '2018-12-14-ZlvpW', 19, '0770', 14, 'abc2@gmail.com', 1, '2', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:47:35', 'pro2@ilab.com'),
(13, '2018-12-14-DvqNS', 20, '0770', 15, 'abc2@gmail.com', 1, '2', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:47:53', 'pro2@ilab.com'),
(14, '2018-12-14-THb9P', 14, '0770', 13, 'gcg2@gmail.com', 1, '2', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:49:09', 'pro2@ilab.com'),
(15, '2018-11-06-WwsEK', 9, '189067', 8, 'abc2@gmail.com', 1, '1', 1, 0, 2, NULL, '2018-12-14', 'Simple Bid', '2018-12-14 08:49:42', 'pro2@ilab.com');

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
(4, 'cat2', 'cat111', 'xxx', 'ct1', 3, '2018-09-26', '15:06:48');

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
(1, 'freight Charge1', '', '', 1, '2018-09-20', '14:15:49'),
(2, 'char11', '', '', 3, '2018-09-26', '15:08:38');

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
(9, '1', 'material item 22', 'mat00910', 'Evaluated for each loop iteration. If it evaluates to TRUE, the loop continues. If it evaluates to FALSE, the loop ends.', 'nos', 1, '2018-10-15', '18:41:26', 'cat005', 'standard catalogued item');

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
(1, 'bhu1', NULL, 1, '2018-10-20 12:00:26', '2018-10-22 07:41:51'),
(2, 'bhu', NULL, 1, '2018-10-22 07:39:58', '2018-10-22 07:39:58'),
(3, 'sailahree vihar', NULL, 1, '2018-10-22 07:40:17', '2018-10-22 07:40:17'),
(4, 'irc', NULL, 1, '2018-10-22 07:40:29', '2018-10-22 07:40:29'),
(5, 'nayapali', NULL, 1, '2018-10-22 07:40:54', '2018-10-22 07:40:54');

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
(1, '2018-11-05-Qts0z', 1, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-05', 1, 1, '2018-11-06', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(2, '2018-11-05-zjLgq', 2, '23456', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-05', 1, 1, '2018-11-06', '2', '1', 'buy2@ilab.com', 'buyer 2'),
(3, '2018-11-05-pUgws', 3, '679034', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-05', 1, 1, '2018-11-06', '3', '1', 'buy1@ilab.com', 'buyer 1'),
(4, '2018-11-06-EDNHT', 8, '189067', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-06', 1, 1, '2018-11-10', '2', '1', 'buy1@ilab.com', 'buyer 1'),
(5, '2018-11-06-VHfBc', 7, '567432', 'siprah@gmail.com', 'pro2@ilab.com', '2018-11-06', 1, 1, '2018-12-14', '2', '1', 'buy1@ilab.com', 'buyer 1'),
(6, '2018-11-06-OfkqH', 6, '679034', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-06', 1, 1, '2018-12-14', '3', '1', 'buy1@ilab.com', 'buyer 1'),
(7, '2018-11-06-5bciu', 4, '567432', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-06', 1, 1, '2018-12-14', '3', '1', 'buy2@ilab.com', 'buyer 2'),
(8, '2018-11-06-WwsEK', 9, '189067', 'siprah@gmail.com', 'pro2@ilab.com', '2018-11-06', 1, 1, '2018-12-14', '2', '1', 'abc2@gmail.com', 'buyer'),
(9, '2018-11-06-GucKA', 10, '679034', 'siprah@gmail.com', 'pro2@ilab.com', '2018-11-06', 1, 1, '2018-12-14', '1', '1', 'buy2@ilab.com', 'buyer 2'),
(10, '2018-11-10-aEGtF', 11, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-10', 1, 1, '2018-11-10', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(11, '2018-11-10-6LUp1', 12, '23456', 'siprah@gmail.com', 'pro@ilab.com', '2018-11-10', 1, 1, '2018-11-10', '1', '1', 'buy1@ilab.com', 'buyer 1'),
(12, '2018-12-14-KWgN3', 13, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 1, '2018-12-14', '1', '1', 'abc2@gmail.com', 'buyer'),
(13, '2018-12-14-THb9P', 14, '0770', 'siprah@gmail.com', 'pro2@ilab.com', '2018-12-14', 1, 1, '2018-12-14', '1', '1', 'gcg2@gmail.com', 'user464'),
(14, '2018-12-14-ZlvpW', 19, '0770', 'siprah@gmail.com', 'pro2@ilab.com', '2018-12-14', 1, 1, '2018-12-14', '2', '1', 'abc2@gmail.com', 'buyer'),
(15, '2018-12-14-DvqNS', 20, '0770', 'siprah@gmail.com', 'pro2@ilab.com', '2018-12-14', 1, 1, '2018-12-14', '1', '1', 'abc2@gmail.com', 'buyer'),
(16, '2018-11-06-wS2aT', 5, '23456', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '3', '2', NULL, NULL),
(17, '2018-12-14-cEvFd', 27, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '2', '2', NULL, NULL),
(18, '2018-12-14-WSc7Q', 32, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '1', '1', NULL, NULL),
(19, '2018-12-14-SW62x', 34, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '1', '1', NULL, NULL),
(20, '2018-12-14-ROs2j', 36, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '2', '1', NULL, NULL),
(21, '2018-12-14-9x3aj', 42, '0770', 'siprah@gmail.com', 'pro@ilab.com', '2018-12-14', 1, 2, '0000-00-00', '3', '1', NULL, NULL);

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
(2, '2018-11-05-Qts0z', 1, '2018-11-05-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-05 12:49:23'),
(3, '2018-11-05-Qts0z', 1, '2018-11-05-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-05 12:49:32'),
(4, '2018-11-05-zjLgq', 2, '2018-11-05-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-05 12:51:50'),
(5, '2018-11-05-zjLgq', 2, '2018-11-05-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-05 12:51:57'),
(6, '2018-11-05-zjLgq', 2, '2018-11-05-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-05 12:52:05'),
(7, '2018-11-05-pUgws', 3, '2018-11-05-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-05 12:53:04'),
(8, '2018-11-05-pUgws', 3, '2018-11-05-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-05 12:53:10'),
(9, '2018-11-05-pUgws', 3, '2018-11-05-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-05 12:53:18'),
(10, '2018-11-06-5bciu', 4, '2018-11-06-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-06 09:08:23'),
(11, '2018-11-06-5bciu', 4, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:08:30'),
(12, '2018-11-06-5bciu', 4, '2018-11-06-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-06 09:08:37'),
(13, '2018-11-06-wS2aT', 5, '2018-11-06-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-06 09:12:20'),
(14, '2018-11-06-wS2aT', 5, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:12:27'),
(15, '2018-11-06-wS2aT', 5, '2018-11-06-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-06 09:12:34'),
(16, '2018-11-06-OfkqH', 6, '2018-11-06-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-06 09:16:49'),
(17, '2018-11-06-OfkqH', 6, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:16:56'),
(18, '2018-11-06-OfkqH', 6, '2018-11-06-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-06 09:17:10'),
(19, '2018-11-06-VHfBc', 7, '2018-11-06-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-06 09:18:37'),
(20, '2018-11-06-VHfBc', 7, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:18:46'),
(21, '2018-11-06-VHfBc', 7, '2018-11-06-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-06 09:18:54'),
(22, '2018-11-06-EDNHT', 8, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:20:18'),
(23, '2018-11-06-EDNHT', 8, '2018-11-06-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-11-06 09:20:25'),
(24, '2018-11-06-WwsEK', 9, '2018-11-06-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-11-06 09:52:20'),
(25, '2018-11-06-WwsEK', 9, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:52:26'),
(26, '2018-11-06-WwsEK', 9, '2018-11-06-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-06 09:52:33'),
(27, '2018-11-06-GucKA', 10, '2018-11-06-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-11-06 09:56:09'),
(28, '2018-11-06-GucKA', 10, '2018-11-06-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-11-06 09:56:15'),
(29, '2018-11-06-GucKA', 10, '2018-11-06-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-11-06 09:56:23'),
(30, '2018-11-10-aEGtF', 11, '2018-11-10-login_lnt.png', 'login_lnt.png', '2018-11-10 14:36:30'),
(31, '2018-11-10-aEGtF', 11, '2018-11-10-e Bid.jpg', 'e Bid.jpg', '2018-11-10 14:36:38'),
(32, '2018-11-10-6LUp1', 12, '2018-11-10-download (27).png', 'download (27).png', '2018-11-10 14:47:21'),
(33, '2018-12-14-KWgN3', 13, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:50:05'),
(34, '2018-12-14-THb9P', 14, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:51:01'),
(35, '2018-12-14-SCeaV', 15, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:51:57'),
(36, '2018-12-14-SCeaV', 15, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 07:52:07'),
(37, '2018-12-14-n4SUj', 16, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:52:58'),
(38, '2018-12-14-n4SUj', 16, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 07:53:07'),
(39, '2018-12-14-3Nats', 17, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:56:58'),
(40, '2018-12-14-3Nats', 17, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 07:57:13'),
(41, '2018-12-14-KwuDz', 18, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:02:00'),
(42, '2018-12-14-ZlvpW', 19, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 08:04:49'),
(43, '2018-12-14-ZlvpW', 19, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 08:08:26'),
(44, '2018-12-14-ZlvpW', 19, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:08:46'),
(45, '2018-12-14-DvqNS', 20, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:11:06'),
(46, '2018-12-14-DvqNS', 20, '2018-12-14-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-12-14 08:11:14'),
(47, '2018-12-14-KL4Ce', 21, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:12:24'),
(48, '2018-12-14-KL4Ce', 21, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:12:59'),
(49, '2018-12-14-vtbnh', 22, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:13:58'),
(50, '2018-12-14-vtbnh', 22, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:14:27'),
(51, '2018-12-14-vtbnh', 22, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:14:37'),
(52, '2018-12-14-7w5YP', 23, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:16:22'),
(53, '2018-12-14-7w5YP', 23, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 08:16:36'),
(54, '2018-12-14-W7LTQ', 24, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:19:15'),
(55, '2018-12-14-aiAWV', 25, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:20:15'),
(56, '2018-12-14-aiAWV', 25, '2018-12-14-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-12-14 08:20:28'),
(57, '2018-12-14-MlHRJ', 26, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:21:45'),
(58, '2018-12-14-MlHRJ', 26, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 08:22:03'),
(59, '2018-12-14-cEvFd', 27, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:23:44'),
(60, '2018-12-14-cEvFd', 27, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 08:23:53'),
(61, '2018-12-14-VNCxF', 28, '2018-12-14-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-12-14 08:24:57'),
(62, '2018-12-14-VNCxF', 28, '2018-12-14-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-12-14 08:25:04'),
(63, '2018-12-14-zpEh4', 29, '2018-12-14-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-12-14 08:25:39'),
(64, '2018-12-14-zpEh4', 29, '2018-12-14-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-12-14 08:25:46'),
(65, '2018-12-14-zpEh4', 29, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:27:46'),
(66, '2018-12-14-zpEh4', 29, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 08:27:55'),
(67, '2018-12-14-diEVD', 30, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 08:28:48'),
(68, '2018-12-14-W7LTQ', 24, '2018-12-14-Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', 'Screenshot_2018-07-17 Top NGO in India to Support Child Rights Underprivileged Children- CRY.png', '2018-12-14 09:02:17'),
(69, '2018-11-06-wS2aT', 5, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 09:02:43'),
(70, '2018-12-14-XL8iq', 31, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:05:35'),
(71, '2018-12-14-XL8iq', 31, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:05:45'),
(72, '2018-12-14-WSc7Q', 32, '2018-12-14-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-12-14 11:07:04'),
(73, '2018-12-14-WSc7Q', 32, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:07:15'),
(74, '2018-12-14-pvqYj', 33, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:08:19'),
(75, '2018-12-14-pvqYj', 33, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:08:38'),
(76, '2018-12-14-SW62x', 34, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:09:27'),
(77, '2018-12-14-SW62x', 34, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:09:34'),
(78, '2018-12-14-0A1Up', 35, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:10:24'),
(79, '2018-12-14-0A1Up', 35, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 11:10:32'),
(80, '2018-12-14-ROs2j', 36, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:11:57'),
(81, '2018-12-14-ROs2j', 36, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:12:05'),
(82, '2018-12-14-bJ7Wx', 37, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:13:18'),
(83, '2018-12-14-bJ7Wx', 37, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:13:26'),
(84, '2018-12-14-sepoa', 38, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:14:02'),
(85, '2018-12-14-sepoa', 38, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:14:09'),
(86, '2018-12-14-WpEvF', 39, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:15:27'),
(87, '2018-12-14-WpEvF', 39, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 11:15:35'),
(88, '2018-12-14-ta9XQ', 40, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:16:18'),
(89, '2018-12-14-ta9XQ', 40, '2018-12-14-Screenshot_2018-07-25 Bootstrap Example.png', 'Screenshot_2018-07-25 Bootstrap Example.png', '2018-12-14 11:16:26'),
(90, '2018-12-14-ta9XQ', 40, '2018-12-14-Screenshot_2018-07-27 Bootstrap Example.png', 'Screenshot_2018-07-27 Bootstrap Example.png', '2018-12-14 11:16:39'),
(91, '2018-12-14-9JOuy', 41, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:26:42'),
(92, '2018-12-14-9JOuy', 41, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:27:00'),
(93, '2018-12-14-9x3aj', 42, '2018-12-14-Screenshot_2018-07-18 EZ-Robot Inc .jpg', 'Screenshot_2018-07-18 EZ-Robot Inc .jpg', '2018-12-14 11:28:02'),
(94, '2018-12-14-9x3aj', 42, '2018-12-14-Screenshot_2018-07-26 Bootstrap Example.png', 'Screenshot_2018-07-26 Bootstrap Example.png', '2018-12-14 11:28:17');

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

--
-- Dumping data for table `Ilab_master_mr_job_details`
--

INSERT INTO `Ilab_master_mr_job_details` (`slno_mr`, `mr_no`, `approver_id_slno`, `approver_id`, `approver_name`, `job_code_id_slno`, `job_code_id`, `materilal_category_id_slno`, `material_category_name`, `techinal_evalution`, `status`, `status_resubmit`, `resubmit_count`, `edit_id`, `date_creation`, `time_creation`, `time_date_creation`, `date_submition`, `time_submition`, `date_required`, `creators_id`, `mr_forword_status`, `mr_forword_date`) VALUES
(1, '2018-11-05-Qts0z', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-11-05', '18:19:03', '2018-11-09 13:16:39', '2018-11-05', '18:21:04', '2018-11-21', 'sam@ilab.com', 1, '2018-11-05'),
(2, '2018-11-05-zjLgq', 18, 'siprah@gmail.com', 'Approver5', 2, '23456', 2, 'make to order items', 1, 1, 0, 0, 1, '2018-11-05', '18:21:44', '2018-11-05 12:56:42', '2018-11-05', '18:22:27', '2018-11-27', 'sam@ilab.com', 1, '2018-11-05'),
(3, '2018-11-05-pUgws', 18, 'siprah@gmail.com', 'Approver5', 3, '679034', 3, 'logistics', 1, 1, 0, 0, 1, '2018-11-05', '18:22:54', '2018-11-05 12:56:55', '2018-11-05', '18:24:38', '2018-11-29', 'sam@ilab.com', 1, '2018-11-05'),
(4, '2018-11-06-5bciu', 18, 'siprah@gmail.com', 'Approver5', 5, '567432', 3, 'logistics', 1, 1, 0, 0, 1, '2018-11-06', '14:38:10', '2018-11-06 09:30:51', '2018-11-06', '14:40:28', '2018-11-27', 'sam@ilab.com', 1, '2018-11-06'),
(5, '2018-11-06-wS2aT', 18, 'siprah@gmail.com', 'Approver5', 2, '23456', 3, 'logistics', 1, 1, 0, 0, 2, '2018-11-06', '14:42:12', '2018-12-14 11:40:34', '2018-12-14', '14:33:01', '2018-11-19', 'sam@ilab.com', 1, '2018-12-14'),
(6, '2018-11-06-OfkqH', 18, 'siprah@gmail.com', 'Approver5', 3, '679034', 3, 'logistics', 1, 1, 0, 0, 1, '2018-11-06', '14:46:42', '2018-11-06 09:29:50', '2018-11-06', '14:48:04', '2018-11-28', 'sam@ilab.com', 1, '2018-11-06'),
(7, '2018-11-06-VHfBc', 18, 'siprah@gmail.com', 'Approver5', 5, '567432', 2, 'make to order items', 1, 1, 0, 0, 1, '2018-11-06', '14:48:29', '2018-11-06 09:29:20', '2018-11-06', '14:49:15', '2018-11-29', 'sam@ilab.com', 1, '2018-11-06'),
(8, '2018-11-06-EDNHT', 18, 'siprah@gmail.com', 'Approver5', 6, '189067', 2, 'make to order items', 1, 1, 0, 0, 1, '2018-11-06', '14:50:11', '2018-11-06 09:28:43', '2018-11-06', '14:50:46', '2018-11-26', 'sam@ilab.com', 1, '2018-11-06'),
(9, '2018-11-06-WwsEK', 18, 'siprah@gmail.com', 'Approver5', 6, '189067', 2, 'make to order items', 1, 1, 0, 0, 1, '2018-11-06', '15:22:13', '2018-11-06 09:53:51', '2018-11-06', '15:22:56', '2018-11-29', 'sam@ilab.com', 1, '2018-11-06'),
(10, '2018-11-06-GucKA', 18, 'siprah@gmail.com', 'Approver5', 3, '679034', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2018-11-06', '15:26:02', '2018-11-06 09:57:52', '2018-11-06', '15:26:52', '2018-11-29', 'sam@ilab.com', 1, '2018-11-06'),
(11, '2018-11-10-aEGtF', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2018-11-10', '20:06:14', '2018-11-10 14:38:10', '2018-11-10', '20:07:13', '2018-11-30', 'sam@ilab.com', 1, '2018-11-10'),
(12, '2018-11-10-6LUp1', 18, 'siprah@gmail.com', 'Approver5', 2, '23456', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2018-11-10', '20:16:12', '2018-11-10 14:50:03', '2018-11-10', '20:17:41', '2018-11-30', 'sam@ilab.com', 1, '2018-11-10'),
(13, '2018-12-14-KWgN3', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 1, 1, 0, 0, 1, '2018-12-14', '13:18:57', '2018-12-14 08:34:36', '2018-12-14', '13:20:28', '2018-12-26', 'design2@ilab.com', 1, '2018-12-14'),
(14, '2018-12-14-THb9P', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '13:20:54', '2018-12-14 08:35:51', '2018-12-14', '13:21:33', '2018-12-24', 'design2@ilab.com', 1, '2018-12-14'),
(15, '2018-12-14-SCeaV', 25, 'vch33@yahoo.com', 'user901', 1, '0770', 2, 'make to order items', 1, 1, 0, 0, 1, '2018-12-14', '13:21:50', '2018-12-14 07:52:23', '2018-12-14', '13:22:23', '2018-12-27', 'design2@ilab.com', 0, NULL),
(16, '2018-12-14-n4SUj', 31, 'ats101@gmail.com', 'user932', 1, '0770', 3, 'logistics', 1, 1, 0, 0, 1, '2018-12-14', '13:22:51', '2018-12-14 07:54:10', '2018-12-14', '13:24:10', '2018-12-28', 'design2@ilab.com', 0, NULL),
(17, '2018-12-14-3Nats', 33, 'tts5@gmaill.com', 'user780', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2018-12-14', '13:26:36', '2018-12-14 07:58:57', '2018-12-14', '13:28:57', '2018-12-27', 'design2@ilab.com', 0, NULL),
(18, '2018-12-14-KwuDz', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 2, '2018-12-14', '13:31:40', '2018-12-14 09:01:08', '2018-12-14', '14:31:08', '2018-12-28', 'design2@ilab.com', 0, NULL),
(19, '2018-12-14-ZlvpW', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '13:33:00', '2018-12-14 08:36:45', '2018-12-14', '13:40:31', '2018-12-24', 'design2@ilab.com', 1, '2018-12-14'),
(20, '2018-12-14-DvqNS', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '13:40:59', '2018-12-14 08:40:10', '2018-12-14', '13:41:45', '2018-12-27', 'design2@ilab.com', 1, '2018-12-14'),
(21, '2018-12-14-KL4Ce', 25, 'vch33@yahoo.com', 'user901', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '13:42:17', '2018-12-14 08:13:13', '2018-12-14', '13:43:12', '2018-12-31', 'design2@ilab.com', 0, NULL),
(22, '2018-12-14-vtbnh', 31, 'ats101@gmail.com', 'user932', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 2, '2018-12-14', '13:43:51', '2018-12-14 09:01:21', '2018-12-14', '14:31:21', '2018-12-27', 'design2@ilab.com', 0, NULL),
(23, '2018-12-14-7w5YP', 33, 'tts5@gmaill.com', 'user780', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2018-12-14', '13:46:14', '2018-12-14 08:17:52', '2018-12-14', '13:47:52', '2018-12-27', 'design2@ilab.com', 0, NULL),
(24, '2018-12-14-W7LTQ', 25, 'vch33@yahoo.com', 'user901', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 2, '2018-12-14', '13:49:06', '2018-12-14 09:02:22', '2018-12-14', '14:32:22', '2018-12-27', 'design2@ilab.com', 0, NULL),
(25, '2018-12-14-aiAWV', 31, 'ats101@gmail.com', 'user932', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 2, '2018-12-14', '13:50:03', '2018-12-14 08:59:25', '2018-12-14', '14:29:25', '2018-12-27', 'design2@ilab.com', 0, NULL),
(26, '2018-12-14-MlHRJ', 33, 'tts5@gmaill.com', 'user780', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 2, '2018-12-14', '13:51:39', '2018-12-14 08:59:56', '2018-12-14', '14:29:56', '2018-12-31', 'design2@ilab.com', 0, NULL),
(27, '2018-12-14-cEvFd', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 2, '2018-12-14', '13:53:38', '2018-12-14 11:41:00', '2018-12-14', '14:30:11', '2018-12-31', 'design2@ilab.com', 1, '2018-12-14'),
(28, '2018-12-14-VNCxF', 25, 'vch33@yahoo.com', 'user901', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '13:54:50', '2018-12-14 08:25:15', '2018-12-14', '13:55:15', '2018-12-27', 'design2@ilab.com', 0, NULL),
(29, '2018-12-14-zpEh4', 31, 'ats101@gmail.com', 'user932', 1, '0770', 3, 'logistics', 1, 1, 0, 0, 1, '2018-12-14', '13:55:32', '2018-12-14 08:28:26', '2018-12-14', '13:58:26', '2018-12-28', 'design2@ilab.com', 0, NULL),
(30, '2018-12-14-diEVD', 33, 'tts5@gmaill.com', 'user780', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2018-12-14', '13:58:41', '2018-12-14 08:31:02', '2018-12-14', '14:01:02', '2018-12-27', 'design2@ilab.com', 0, NULL),
(31, '2018-12-14-XL8iq', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '16:34:48', '2018-12-14 11:06:22', '2018-12-14', '16:36:22', '2018-12-28', 'design2@ilab.com', 0, NULL),
(32, '2018-12-14-WSc7Q', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '16:36:54', '2018-12-14 11:41:31', '2018-12-14', '16:37:40', '2018-12-11', 'design2@ilab.com', 1, '2018-12-14'),
(33, '2018-12-14-pvqYj', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '16:38:12', '2018-12-14 11:08:54', '2018-12-14', '16:38:54', '2018-12-03', 'design2@ilab.com', 0, NULL),
(34, '2018-12-14-SW62x', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '16:39:19', '2018-12-14 11:42:11', '2018-12-14', '16:39:49', '2018-12-05', 'design2@ilab.com', 1, '2018-12-14'),
(35, '2018-12-14-0A1Up', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 1, 'standard catalogued item', 2, 1, 0, 0, 1, '2018-12-14', '16:40:15', '2018-12-14 11:10:57', '2018-12-14', '16:40:57', '2018-12-04', 'design2@ilab.com', 0, NULL),
(36, '2018-12-14-ROs2j', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '16:41:50', '2018-12-14 11:42:38', '2018-12-14', '16:42:22', '2018-12-01', 'design2@ilab.com', 1, '2018-12-14'),
(37, '2018-12-14-bJ7Wx', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '16:43:12', '2018-12-14 11:13:39', '2018-12-14', '16:43:39', '2018-12-12', 'design2@ilab.com', 0, NULL),
(38, '2018-12-14-sepoa', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '16:43:56', '2018-12-14 11:14:23', '2018-12-14', '16:44:23', '2018-12-07', 'design2@ilab.com', 0, NULL),
(39, '2018-12-14-WpEvF', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '16:45:19', '2018-12-14 11:15:50', '2018-12-14', '16:45:50', '2018-12-18', 'design2@ilab.com', 0, NULL),
(40, '2018-12-14-ta9XQ', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 2, 'make to order items', 2, 1, 0, 0, 1, '2018-12-14', '16:46:11', '2018-12-14 11:16:55', '2018-12-14', '16:46:55', '2018-12-17', 'design2@ilab.com', 0, NULL),
(41, '2018-12-14-9JOuy', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2018-12-14', '16:56:11', '2018-12-14 11:27:35', '2018-12-14', '16:57:35', '2018-12-12', 'design2@ilab.com', 0, NULL),
(42, '2018-12-14-9x3aj', 18, 'siprah@gmail.com', 'Approver5', 1, '0770', 3, 'logistics', 2, 1, 0, 0, 1, '2018-12-14', '16:57:53', '2018-12-14 11:47:30', '2018-12-14', '16:59:09', '2018-12-17', 'design2@ilab.com', 1, '2018-12-14');

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
(1, '2018-11-05-pUgws', 3, 1, 3, 1, '2018-11-05 12:54:38'),
(2, '2018-11-06-5bciu', 4, 1, 4, 1, '2018-11-06 09:10:28'),
(3, '2018-11-06-wS2aT', 5, 3, 5, 1, '2018-11-06 09:14:13'),
(4, '2018-11-06-OfkqH', 6, 1, 3, 1, '2018-11-06 09:18:04'),
(5, '2018-12-14-n4SUj', 16, 2, 4, 1, '2018-12-14 07:54:10'),
(6, '2018-12-14-3Nats', 17, 1, 3, 1, '2018-12-14 07:58:57'),
(7, '2018-12-14-vtbnh', 22, 2, 5, 1, '2018-12-14 08:15:52'),
(8, '2018-12-14-7w5YP', 23, 2, 5, 1, '2018-12-14 08:17:52'),
(9, '2018-12-14-aiAWV', 25, 1, 3, 1, '2018-12-14 08:21:20'),
(10, '2018-12-14-MlHRJ', 26, 1, 3, 1, '2018-12-14 08:23:20'),
(11, '2018-12-14-zpEh4', 29, 3, 3, 1, '2018-12-14 08:28:26'),
(12, '2018-12-14-diEVD', 30, 3, 5, 1, '2018-12-14 08:31:02'),
(13, '2018-12-14-aiAWV', 25, 1, 3, 2, '2018-12-14 08:59:25'),
(14, '2018-12-14-MlHRJ', 26, 1, 3, 2, '2018-12-14 08:59:56'),
(15, '2018-12-14-vtbnh', 22, 2, 5, 2, '2018-12-14 09:01:21'),
(16, '2018-11-06-wS2aT', 5, 3, 5, 2, '2018-12-14 09:03:01'),
(17, '2018-12-14-9JOuy', 41, 1, 5, 1, '2018-12-14 11:27:35'),
(18, '2018-12-14-9x3aj', 42, 2, 5, 1, '2018-12-14 11:29:09');

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
(1, '2018-11-05-Qts0z', 1, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-11-05 12:51:03', NULL, NULL, NULL),
(2, '2018-11-05-Qts0z', 1, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-11-05 12:51:03', NULL, NULL, NULL),
(3, '2018-11-05-Qts0z', 1, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-11-05 12:51:03', NULL, NULL, NULL),
(4, '2018-11-05-Qts0z', 1, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-11-05 12:51:03', NULL, NULL, NULL),
(5, '2018-11-05-Qts0z', 1, 6, 'material10', '1', '21', '10', 1, '2018-11-05 12:51:03', NULL, NULL, NULL),
(6, '2018-11-05-zjLgq', 2, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-11-05 12:52:27', NULL, NULL, NULL),
(7, '2018-11-05-zjLgq', 2, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-11-05 12:52:27', NULL, NULL, NULL),
(8, '2018-11-05-zjLgq', 2, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-11-05 12:52:27', NULL, NULL, NULL),
(9, '2018-11-06-VHfBc', 7, 5, 'Progressing cavity pump.', '10', 'Capacity', 'Mat003', 1, '2018-11-06 09:19:15', NULL, NULL, NULL),
(10, '2018-11-06-VHfBc', 7, 3, 'Pump', '11', 'Horse Power', 'Mat001', 1, '2018-11-06 09:19:15', NULL, NULL, NULL),
(11, '2018-11-06-VHfBc', 7, 4, 'Rotary lobe pump', '11', 'Max Pump volume', 'Mat002', 1, '2018-11-06 09:19:15', NULL, NULL, NULL),
(12, '2018-11-06-EDNHT', 8, 5, 'Progressing cavity pump.', '10', 'Capacity', 'Mat003', 1, '2018-11-06 09:20:46', NULL, NULL, NULL),
(13, '2018-11-06-EDNHT', 8, 3, 'Pump', '11', 'Horse Power', 'Mat001', 1, '2018-11-06 09:20:46', NULL, NULL, NULL),
(14, '2018-11-06-EDNHT', 8, 4, 'Rotary lobe pump', '10', 'Max Pump volume', 'Mat002', 1, '2018-11-06 09:20:46', NULL, NULL, NULL),
(15, '2018-11-06-WwsEK', 9, 5, 'Progressing cavity pump.', '10', 'Capacity', 'Mat003', 1, '2018-11-06 09:52:56', NULL, NULL, NULL),
(16, '2018-11-06-WwsEK', 9, 3, 'Pump', '11', 'Horse Power', 'Mat001', 1, '2018-11-06 09:52:56', NULL, NULL, NULL),
(17, '2018-11-06-WwsEK', 9, 4, 'Rotary lobe pump', '10', 'Max Pump volume', 'Mat002', 1, '2018-11-06 09:52:56', NULL, NULL, NULL),
(18, '2018-11-06-GucKA', 10, 2, 'material item 1', '10', 'nos', 'mat001', 1, '2018-11-06 09:56:51', NULL, NULL, NULL),
(19, '2018-11-06-GucKA', 10, 7, 'material item 17', '11', 'nos', 'mat0087', 1, '2018-11-06 09:56:51', NULL, NULL, NULL),
(20, '2018-11-06-GucKA', 10, 8, 'material item 19', '10', 'nos', 'mat0018', 1, '2018-11-06 09:56:51', NULL, NULL, NULL),
(21, '2018-11-06-GucKA', 10, 9, 'material item 22', '11', 'nos', 'mat00910', 1, '2018-11-06 09:56:51', NULL, NULL, NULL),
(22, '2018-11-10-aEGtF', 11, 2, 'material item 1', '18', 'nos', 'mat001', 1, '2018-11-10 14:37:12', NULL, NULL, NULL),
(23, '2018-11-10-aEGtF', 11, 7, 'material item 17', '15', 'nos', 'mat0087', 1, '2018-11-10 14:37:13', NULL, NULL, NULL),
(24, '2018-11-10-aEGtF', 11, 9, 'material item 22', '10', 'nos', 'mat00910', 1, '2018-11-10 14:37:13', NULL, NULL, NULL),
(25, '2018-11-10-aEGtF', 11, 6, 'material10', '166', '21', '10', 1, '2018-11-10 14:37:13', NULL, NULL, NULL),
(26, '2018-11-10-6LUp1', 12, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-11-10 14:47:40', NULL, NULL, NULL),
(27, '2018-11-10-6LUp1', 12, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-11-10 14:47:41', NULL, NULL, NULL),
(28, '2018-11-10-6LUp1', 12, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-11-10 14:47:41', NULL, NULL, NULL),
(29, '2018-12-14-KWgN3', 13, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 07:50:28', NULL, NULL, NULL),
(30, '2018-12-14-KWgN3', 13, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 07:50:28', NULL, NULL, NULL),
(31, '2018-12-14-KWgN3', 13, 6, 'material10', '1', '21', '10', 1, '2018-12-14 07:50:28', NULL, NULL, NULL),
(32, '2018-12-14-THb9P', 14, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 07:51:32', NULL, NULL, NULL),
(33, '2018-12-14-THb9P', 14, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 07:51:32', NULL, NULL, NULL),
(34, '2018-12-14-THb9P', 14, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 07:51:32', NULL, NULL, NULL),
(35, '2018-12-14-THb9P', 14, 6, 'material10', '1', '21', '10', 1, '2018-12-14 07:51:32', NULL, NULL, NULL),
(36, '2018-12-14-THb9P', 14, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 07:51:32', NULL, NULL, NULL),
(37, '2018-12-14-SCeaV', 15, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 07:52:23', NULL, NULL, NULL),
(38, '2018-12-14-SCeaV', 15, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 07:52:23', NULL, NULL, NULL),
(39, '2018-12-14-SCeaV', 15, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 07:52:23', NULL, NULL, NULL),
(40, '2018-12-14-KwuDz', 18, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 08:02:45', NULL, NULL, NULL),
(41, '2018-12-14-KwuDz', 18, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 08:02:45', NULL, NULL, NULL),
(42, '2018-12-14-KwuDz', 18, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 08:02:45', NULL, NULL, NULL),
(43, '2018-12-14-ZlvpW', 19, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 08:10:30', NULL, NULL, NULL),
(44, '2018-12-14-ZlvpW', 19, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 08:10:31', NULL, NULL, NULL),
(45, '2018-12-14-ZlvpW', 19, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 08:10:31', NULL, NULL, NULL),
(46, '2018-12-14-DvqNS', 20, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 08:11:45', NULL, NULL, NULL),
(47, '2018-12-14-DvqNS', 20, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 08:11:45', NULL, NULL, NULL),
(48, '2018-12-14-DvqNS', 20, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 08:11:45', NULL, NULL, NULL),
(49, '2018-12-14-DvqNS', 20, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 08:11:45', NULL, NULL, NULL),
(50, '2018-12-14-DvqNS', 20, 6, 'material10', '1', '21', '10', 1, '2018-12-14 08:11:45', NULL, NULL, NULL),
(51, '2018-12-14-KL4Ce', 21, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 08:13:12', NULL, NULL, NULL),
(52, '2018-12-14-KL4Ce', 21, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 08:13:12', NULL, NULL, NULL),
(53, '2018-12-14-KL4Ce', 21, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 08:13:12', NULL, NULL, NULL),
(54, '2018-12-14-W7LTQ', 24, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 08:19:44', NULL, NULL, NULL),
(55, '2018-12-14-W7LTQ', 24, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 08:19:44', NULL, NULL, NULL),
(56, '2018-12-14-W7LTQ', 24, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 08:19:45', NULL, NULL, NULL),
(57, '2018-12-14-cEvFd', 27, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 08:24:35', NULL, NULL, NULL),
(58, '2018-12-14-cEvFd', 27, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 08:24:35', NULL, NULL, NULL),
(59, '2018-12-14-cEvFd', 27, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 08:24:35', NULL, NULL, NULL),
(60, '2018-12-14-VNCxF', 28, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 08:25:15', NULL, NULL, NULL),
(61, '2018-12-14-VNCxF', 28, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 08:25:15', NULL, NULL, NULL),
(62, '2018-12-14-cEvFd', 27, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 2, '2018-12-14 09:00:11', NULL, NULL, NULL),
(63, '2018-12-14-cEvFd', 27, 3, 'Pump', '1', 'Horse Power', 'Mat001', 2, '2018-12-14 09:00:11', NULL, NULL, NULL),
(64, '2018-12-14-cEvFd', 27, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 2, '2018-12-14 09:00:11', NULL, NULL, NULL),
(65, '2018-12-14-KwuDz', 18, 2, 'material item 1', '1', 'nos', 'mat001', 2, '2018-12-14 09:01:08', NULL, NULL, NULL),
(66, '2018-12-14-KwuDz', 18, 7, 'material item 17', '1', 'nos', 'mat0087', 2, '2018-12-14 09:01:08', NULL, NULL, NULL),
(67, '2018-12-14-KwuDz', 18, 8, 'material item 19', '1', 'nos', 'mat0018', 2, '2018-12-14 09:01:08', NULL, NULL, NULL),
(68, '2018-12-14-W7LTQ', 24, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 2, '2018-12-14 09:02:22', NULL, NULL, NULL),
(69, '2018-12-14-W7LTQ', 24, 3, 'Pump', '1', 'Horse Power', 'Mat001', 2, '2018-12-14 09:02:22', NULL, NULL, NULL),
(70, '2018-12-14-W7LTQ', 24, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 2, '2018-12-14 09:02:22', NULL, NULL, NULL),
(71, '2018-12-14-XL8iq', 31, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 11:06:22', NULL, NULL, NULL),
(72, '2018-12-14-XL8iq', 31, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 11:06:22', NULL, NULL, NULL),
(73, '2018-12-14-XL8iq', 31, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 11:06:22', NULL, NULL, NULL),
(74, '2018-12-14-XL8iq', 31, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 11:06:22', NULL, NULL, NULL),
(75, '2018-12-14-WSc7Q', 32, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 11:07:40', NULL, NULL, NULL),
(76, '2018-12-14-WSc7Q', 32, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 11:07:40', NULL, NULL, NULL),
(77, '2018-12-14-WSc7Q', 32, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 11:07:40', NULL, NULL, NULL),
(78, '2018-12-14-WSc7Q', 32, 6, 'material10', '1', '21', '10', 1, '2018-12-14 11:07:40', NULL, NULL, NULL),
(79, '2018-12-14-pvqYj', 33, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 11:08:54', NULL, NULL, NULL),
(80, '2018-12-14-pvqYj', 33, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 11:08:54', NULL, NULL, NULL),
(81, '2018-12-14-pvqYj', 33, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 11:08:54', NULL, NULL, NULL),
(82, '2018-12-14-pvqYj', 33, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 11:08:54', NULL, NULL, NULL),
(83, '2018-12-14-SW62x', 34, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 11:09:48', NULL, NULL, NULL),
(84, '2018-12-14-SW62x', 34, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 11:09:49', NULL, NULL, NULL),
(85, '2018-12-14-SW62x', 34, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 11:09:49', NULL, NULL, NULL),
(86, '2018-12-14-SW62x', 34, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 11:09:49', NULL, NULL, NULL),
(87, '2018-12-14-0A1Up', 35, 2, 'material item 1', '1', 'nos', 'mat001', 1, '2018-12-14 11:10:56', NULL, NULL, NULL),
(88, '2018-12-14-0A1Up', 35, 7, 'material item 17', '1', 'nos', 'mat0087', 1, '2018-12-14 11:10:57', NULL, NULL, NULL),
(89, '2018-12-14-0A1Up', 35, 8, 'material item 19', '1', 'nos', 'mat0018', 1, '2018-12-14 11:10:57', NULL, NULL, NULL),
(90, '2018-12-14-0A1Up', 35, 9, 'material item 22', '1', 'nos', 'mat00910', 1, '2018-12-14 11:10:57', NULL, NULL, NULL),
(91, '2018-12-14-0A1Up', 35, 6, 'material10', '1', '21', '10', 1, '2018-12-14 11:10:57', NULL, NULL, NULL),
(92, '2018-12-14-ROs2j', 36, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 11:12:22', NULL, NULL, NULL),
(93, '2018-12-14-ROs2j', 36, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 11:12:22', NULL, NULL, NULL),
(94, '2018-12-14-ROs2j', 36, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 11:12:22', NULL, NULL, NULL),
(95, '2018-12-14-bJ7Wx', 37, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 11:13:38', NULL, NULL, NULL),
(96, '2018-12-14-bJ7Wx', 37, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 11:13:39', NULL, NULL, NULL),
(97, '2018-12-14-bJ7Wx', 37, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 11:13:39', NULL, NULL, NULL),
(98, '2018-12-14-sepoa', 38, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 11:14:23', NULL, NULL, NULL),
(99, '2018-12-14-sepoa', 38, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 11:14:23', NULL, NULL, NULL),
(100, '2018-12-14-sepoa', 38, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 11:14:23', NULL, NULL, NULL),
(101, '2018-12-14-WpEvF', 39, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 11:15:50', NULL, NULL, NULL),
(102, '2018-12-14-WpEvF', 39, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 11:15:50', NULL, NULL, NULL),
(103, '2018-12-14-WpEvF', 39, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 11:15:50', NULL, NULL, NULL),
(104, '2018-12-14-ta9XQ', 40, 5, 'Progressing cavity pump.', '1', 'Capacity', 'Mat003', 1, '2018-12-14 11:16:55', NULL, NULL, NULL),
(105, '2018-12-14-ta9XQ', 40, 3, 'Pump', '1', 'Horse Power', 'Mat001', 1, '2018-12-14 11:16:55', NULL, NULL, NULL),
(106, '2018-12-14-ta9XQ', 40, 4, 'Rotary lobe pump', '1', 'Max Pump volume', 'Mat002', 1, '2018-12-14 11:16:55', NULL, NULL, NULL);

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
(1, '2018-11-05-Qts0z', 1, 0, 'No Parameter Found', 'No details Found', 1, 1, '2018-11-05 12:51:03'),
(2, '2018-11-05-Qts0z', 1, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 2, 1, '2018-11-05 12:51:03'),
(3, '2018-11-05-Qts0z', 1, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 3, 1, '2018-11-05 12:51:03'),
(4, '2018-11-05-Qts0z', 1, 0, 'No Parameter Found', 'No details Found', 4, 1, '2018-11-05 12:51:03'),
(5, '2018-11-05-Qts0z', 1, 2, 'tec10', 'xxx', 5, 1, '2018-11-05 12:51:04'),
(6, '2018-11-05-Qts0z', 1, 4, '67tyu', 'cvbnmxrt', 5, 1, '2018-11-05 12:51:04'),
(7, '2018-11-05-zjLgq', 2, 0, 'No Parameter Found', 'No details Found', 6, 1, '2018-11-05 12:52:27'),
(8, '2018-11-05-zjLgq', 2, 1, '316Ls', '316L stainless steel head and casing', 8, 1, '2018-11-05 12:52:27'),
(9, '2018-11-06-VHfBc', 7, 0, 'No Parameter Found', 'No details Found', 9, 1, '2018-11-06 09:19:15'),
(10, '2018-11-06-EDNHT', 8, 0, 'No Parameter Found', 'No details Found', 12, 1, '2018-11-06 09:20:46'),
(11, '2018-11-06-WwsEK', 9, 0, 'No Parameter Found', 'No details Found', 15, 1, '2018-11-06 09:52:56'),
(12, '2018-11-06-WwsEK', 9, 3, 'tec10', 'xxx', 16, 1, '2018-11-06 09:52:56'),
(13, '2018-11-06-WwsEK', 9, 1, '316Ls', '316L stainless steel head and casing', 17, 1, '2018-11-06 09:52:56'),
(14, '2018-11-06-GucKA', 10, 0, 'No Parameter Found', 'No details Found', 18, 1, '2018-11-06 09:56:51'),
(15, '2018-11-06-GucKA', 10, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 19, 1, '2018-11-06 09:56:51'),
(16, '2018-11-06-GucKA', 10, 0, 'No Parameter Found', 'No details Found', 21, 1, '2018-11-06 09:56:52'),
(17, '2018-11-10-aEGtF', 11, 0, 'No Parameter Found', 'No details Found', 22, 1, '2018-11-10 14:37:12'),
(18, '2018-11-10-aEGtF', 11, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 23, 1, '2018-11-10 14:37:13'),
(19, '2018-11-10-aEGtF', 11, 0, 'No Parameter Found', 'No details Found', 24, 1, '2018-11-10 14:37:13'),
(20, '2018-11-10-aEGtF', 11, 4, '67tyu', 'cvbnmxrt', 25, 1, '2018-11-10 14:37:13'),
(21, '2018-11-10-6LUp1', 12, 0, 'No Parameter Found', 'No details Found', 26, 1, '2018-11-10 14:47:40'),
(22, '2018-11-10-6LUp1', 12, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 27, 1, '2018-11-10 14:47:41'),
(23, '2018-11-10-6LUp1', 12, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 27, 1, '2018-11-10 14:47:41'),
(24, '2018-11-10-6LUp1', 12, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 28, 1, '2018-11-10 14:47:41'),
(25, '2018-12-14-KWgN3', 13, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 29, 1, '2018-12-14 07:50:28'),
(26, '2018-12-14-KWgN3', 13, 0, 'No Parameter Found', 'No details Found', 30, 1, '2018-12-14 07:50:28'),
(27, '2018-12-14-KWgN3', 13, 2, 'tec10', 'xxx', 31, 1, '2018-12-14 07:50:28'),
(28, '2018-12-14-KWgN3', 13, 4, '67tyu', 'cvbnmxrt', 31, 1, '2018-12-14 07:50:28'),
(29, '2018-12-14-THb9P', 14, 0, 'No Parameter Found', 'No details Found', 32, 1, '2018-12-14 07:51:32'),
(30, '2018-12-14-THb9P', 14, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 33, 1, '2018-12-14 07:51:32'),
(31, '2018-12-14-THb9P', 14, 0, 'No Parameter Found', 'No details Found', 34, 1, '2018-12-14 07:51:32'),
(32, '2018-12-14-THb9P', 14, 2, 'tec10', 'xxx', 35, 1, '2018-12-14 07:51:32'),
(33, '2018-12-14-THb9P', 14, 4, '67tyu', 'cvbnmxrt', 35, 1, '2018-12-14 07:51:32'),
(34, '2018-12-14-THb9P', 14, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 36, 1, '2018-12-14 07:51:33'),
(35, '2018-12-14-SCeaV', 15, 0, 'No Parameter Found', 'No details Found', 37, 1, '2018-12-14 07:52:23'),
(36, '2018-12-14-SCeaV', 15, 3, 'tec10', 'xxx', 38, 1, '2018-12-14 07:52:23'),
(37, '2018-12-14-SCeaV', 15, 1, '316Ls', '316L stainless steel head and casing', 39, 1, '2018-12-14 07:52:23'),
(38, '2018-12-14-KwuDz', 18, 0, 'No Parameter Found', 'No details Found', 40, 1, '2018-12-14 08:02:45'),
(39, '2018-12-14-KwuDz', 18, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 41, 1, '2018-12-14 08:02:45'),
(40, '2018-12-14-KwuDz', 18, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 42, 1, '2018-12-14 08:02:45'),
(41, '2018-12-14-ZlvpW', 19, 0, 'No Parameter Found', 'No details Found', 43, 1, '2018-12-14 08:10:31'),
(42, '2018-12-14-ZlvpW', 19, 3, 'tec10', 'xxx', 44, 1, '2018-12-14 08:10:31'),
(43, '2018-12-14-ZlvpW', 19, 1, '316Ls', '316L stainless steel head and casing', 45, 1, '2018-12-14 08:10:31'),
(44, '2018-12-14-DvqNS', 20, 0, 'No Parameter Found', 'No details Found', 46, 1, '2018-12-14 08:11:45'),
(45, '2018-12-14-DvqNS', 20, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 47, 1, '2018-12-14 08:11:45'),
(46, '2018-12-14-DvqNS', 20, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 47, 1, '2018-12-14 08:11:45'),
(47, '2018-12-14-DvqNS', 20, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 48, 1, '2018-12-14 08:11:45'),
(48, '2018-12-14-DvqNS', 20, 0, 'No Parameter Found', 'No details Found', 49, 1, '2018-12-14 08:11:45'),
(49, '2018-12-14-DvqNS', 20, 2, 'tec10', 'xxx', 50, 1, '2018-12-14 08:11:45'),
(50, '2018-12-14-DvqNS', 20, 5, 'BNTRY', 'bnmiyutre', 50, 1, '2018-12-14 08:11:45'),
(51, '2018-12-14-KL4Ce', 21, 0, 'No Parameter Found', 'No details Found', 51, 1, '2018-12-14 08:13:12'),
(52, '2018-12-14-KL4Ce', 21, 3, 'tec10', 'xxx', 52, 1, '2018-12-14 08:13:12'),
(53, '2018-12-14-KL4Ce', 21, 1, '316Ls', '316L stainless steel head and casing', 53, 1, '2018-12-14 08:13:12'),
(54, '2018-12-14-W7LTQ', 24, 0, 'No Parameter Found', 'No details Found', 54, 1, '2018-12-14 08:19:44'),
(55, '2018-12-14-W7LTQ', 24, 3, 'tec10', 'xxx', 55, 1, '2018-12-14 08:19:44'),
(56, '2018-12-14-W7LTQ', 24, 1, '316Ls', '316L stainless steel head and casing', 56, 1, '2018-12-14 08:19:45'),
(57, '2018-12-14-cEvFd', 27, 0, 'No Parameter Found', 'No details Found', 57, 1, '2018-12-14 08:24:35'),
(58, '2018-12-14-cEvFd', 27, 3, 'tec10', 'xxx', 58, 1, '2018-12-14 08:24:35'),
(59, '2018-12-14-cEvFd', 27, 1, '316Ls', '316L stainless steel head and casing', 59, 1, '2018-12-14 08:24:35'),
(60, '2018-12-14-VNCxF', 28, 0, 'No Parameter Found', 'No details Found', 60, 1, '2018-12-14 08:25:15'),
(61, '2018-12-14-VNCxF', 28, 3, 'tec10', 'xxx', 61, 1, '2018-12-14 08:25:15'),
(62, '2018-12-14-cEvFd', 27, 0, 'No Parameter Found', 'No details Found', 62, 2, '2018-12-14 09:00:11'),
(63, '2018-12-14-cEvFd', 27, 3, 'tec10', 'xxx', 63, 2, '2018-12-14 09:00:11'),
(64, '2018-12-14-cEvFd', 27, 1, '316Ls', '316L stainless steel head and casing', 64, 2, '2018-12-14 09:00:11'),
(65, '2018-12-14-KwuDz', 18, 0, 'No Parameter Found', 'No details Found', 65, 2, '2018-12-14 09:01:08'),
(66, '2018-12-14-KwuDz', 18, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 66, 2, '2018-12-14 09:01:08'),
(67, '2018-12-14-KwuDz', 18, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 67, 2, '2018-12-14 09:01:08'),
(68, '2018-12-14-W7LTQ', 24, 0, 'No Parameter Found', 'No details Found', 68, 2, '2018-12-14 09:02:22'),
(69, '2018-12-14-W7LTQ', 24, 3, 'tec10', 'xxx', 69, 2, '2018-12-14 09:02:22'),
(70, '2018-12-14-W7LTQ', 24, 1, '316Ls', '316L stainless steel head and casing', 70, 2, '2018-12-14 09:02:22'),
(71, '2018-12-14-XL8iq', 31, 0, 'No Parameter Found', 'No details Found', 71, 1, '2018-12-14 11:06:22'),
(72, '2018-12-14-XL8iq', 31, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 72, 1, '2018-12-14 11:06:22'),
(73, '2018-12-14-XL8iq', 31, 0, 'No Parameter Found', 'No details Found', 73, 1, '2018-12-14 11:06:22'),
(74, '2018-12-14-XL8iq', 31, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 74, 1, '2018-12-14 11:06:22'),
(75, '2018-12-14-WSc7Q', 32, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 75, 1, '2018-12-14 11:07:40'),
(76, '2018-12-14-WSc7Q', 32, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 75, 1, '2018-12-14 11:07:40'),
(77, '2018-12-14-WSc7Q', 32, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 76, 1, '2018-12-14 11:07:40'),
(78, '2018-12-14-WSc7Q', 32, 0, 'No Parameter Found', 'No details Found', 77, 1, '2018-12-14 11:07:40'),
(79, '2018-12-14-WSc7Q', 32, 2, 'tec10', 'xxx', 78, 1, '2018-12-14 11:07:40'),
(80, '2018-12-14-WSc7Q', 32, 5, 'BNTRY', 'bnmiyutre', 78, 1, '2018-12-14 11:07:40'),
(81, '2018-12-14-pvqYj', 33, 0, 'No Parameter Found', 'No details Found', 79, 1, '2018-12-14 11:08:54'),
(82, '2018-12-14-pvqYj', 33, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 80, 1, '2018-12-14 11:08:54'),
(83, '2018-12-14-pvqYj', 33, 0, 'No Parameter Found', 'No details Found', 81, 1, '2018-12-14 11:08:54'),
(84, '2018-12-14-pvqYj', 33, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 82, 1, '2018-12-14 11:08:54'),
(85, '2018-12-14-SW62x', 34, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 83, 1, '2018-12-14 11:09:49'),
(86, '2018-12-14-SW62x', 34, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 83, 1, '2018-12-14 11:09:49'),
(87, '2018-12-14-SW62x', 34, 0, 'No Parameter Found', 'No details Found', 84, 1, '2018-12-14 11:09:49'),
(88, '2018-12-14-SW62x', 34, 0, 'No Parameter Found', 'No details Found', 85, 1, '2018-12-14 11:09:49'),
(89, '2018-12-14-SW62x', 34, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 86, 1, '2018-12-14 11:09:49'),
(90, '2018-12-14-0A1Up', 35, 0, 'No Parameter Found', 'No details Found', 87, 1, '2018-12-14 11:10:56'),
(91, '2018-12-14-0A1Up', 35, 6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 88, 1, '2018-12-14 11:10:57'),
(92, '2018-12-14-0A1Up', 35, 7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 88, 1, '2018-12-14 11:10:57'),
(93, '2018-12-14-0A1Up', 35, 8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 89, 1, '2018-12-14 11:10:57'),
(94, '2018-12-14-0A1Up', 35, 0, 'No Parameter Found', 'No details Found', 90, 1, '2018-12-14 11:10:57'),
(95, '2018-12-14-0A1Up', 35, 2, 'tec10', 'xxx', 91, 1, '2018-12-14 11:10:57'),
(96, '2018-12-14-0A1Up', 35, 4, '67tyu', 'cvbnmxrt', 91, 1, '2018-12-14 11:10:57'),
(97, '2018-12-14-0A1Up', 35, 5, 'BNTRY', 'bnmiyutre', 91, 1, '2018-12-14 11:10:57'),
(98, '2018-12-14-ROs2j', 36, 0, 'No Parameter Found', 'No details Found', 92, 1, '2018-12-14 11:12:22'),
(99, '2018-12-14-ROs2j', 36, 3, 'tec10', 'xxx', 93, 1, '2018-12-14 11:12:22'),
(100, '2018-12-14-ROs2j', 36, 1, '316Ls', '316L stainless steel head and casing', 94, 1, '2018-12-14 11:12:22'),
(101, '2018-12-14-bJ7Wx', 37, 0, 'No Parameter Found', 'No details Found', 95, 1, '2018-12-14 11:13:38'),
(102, '2018-12-14-bJ7Wx', 37, 3, 'tec10', 'xxx', 96, 1, '2018-12-14 11:13:39'),
(103, '2018-12-14-bJ7Wx', 37, 1, '316Ls', '316L stainless steel head and casing', 97, 1, '2018-12-14 11:13:39'),
(104, '2018-12-14-sepoa', 38, 0, 'No Parameter Found', 'No details Found', 98, 1, '2018-12-14 11:14:23'),
(105, '2018-12-14-sepoa', 38, 3, 'tec10', 'xxx', 99, 1, '2018-12-14 11:14:23'),
(106, '2018-12-14-sepoa', 38, 1, '316Ls', '316L stainless steel head and casing', 100, 1, '2018-12-14 11:14:23'),
(107, '2018-12-14-WpEvF', 39, 0, 'No Parameter Found', 'No details Found', 101, 1, '2018-12-14 11:15:50'),
(108, '2018-12-14-WpEvF', 39, 3, 'tec10', 'xxx', 102, 1, '2018-12-14 11:15:50'),
(109, '2018-12-14-WpEvF', 39, 1, '316Ls', '316L stainless steel head and casing', 103, 1, '2018-12-14 11:15:50'),
(110, '2018-12-14-ta9XQ', 40, 0, 'No Parameter Found', 'No details Found', 104, 1, '2018-12-14 11:16:55'),
(111, '2018-12-14-ta9XQ', 40, 3, 'tec10', 'xxx', 105, 1, '2018-12-14 11:16:55'),
(112, '2018-12-14-ta9XQ', 40, 1, '316Ls', '316L stainless steel head and casing', 106, 1, '2018-12-14 11:16:55');

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
(1, '2018-11-05-pUgws', 3, 1, '504ponds', '5ponds', 'sailahree vihar', 3, 'irc', 4, ' official', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(2, '2018-11-05-pUgws', 3, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'nayapali', 5, ' official', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(3, '2018-11-05-pUgws', 3, 6, 'vehicle10', '5ponds', 'irc', 4, 'sailahree vihar', 3, ' test', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(4, '2018-11-05-pUgws', 3, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'nayapali', 5, ' official', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(5, '2018-11-05-pUgws', 3, 4, 'vehicle12', '60000ponds', 'irc', 4, 'sailahree vihar', 3, ' test', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(6, '2018-11-05-pUgws', 3, 5, 'vehicle12', '8000ponds', 'sailahree vihar', 3, 'bhu', 2, ' test', '2018-11-05 12:54:38', 1, NULL, 'sam@ilab.com', '1', NULL),
(7, '2018-11-06-5bciu', 4, 1, '504ponds', '5ponds', 'bhu', 2, 'irc', 4, ' official', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(8, '2018-11-06-5bciu', 4, 2, 'vehicle10', '8000ponds', 'irc', 4, 'sailahree vihar', 3, ' official', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(9, '2018-11-06-5bciu', 4, 5, 'vehicle12', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' test', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(10, '2018-11-06-5bciu', 4, 4, 'vehicle12', '60000ponds', 'irc', 4, 'bhu1', 1, 'test ', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(11, '2018-11-06-5bciu', 4, 3, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' official', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(12, '2018-11-06-5bciu', 4, 6, 'vehicle10', '5ponds', 'bhu1', 1, 'irc', 4, ' test', '2018-11-06 09:10:28', 1, NULL, 'sam@ilab.com', '1', NULL),
(13, '2018-11-06-wS2aT', 5, 1, '504ponds', '5ponds', 'bhu1', 1, 'bhu', 2, ' test', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '1', NULL),
(14, '2018-11-06-wS2aT', 5, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' test', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '1', NULL),
(15, '2018-11-06-wS2aT', 5, 4, 'vehicle12', '60000ponds', 'bhu', 2, 'irc', 4, ' official', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '10', NULL),
(16, '2018-11-06-wS2aT', 5, 5, 'vehicle12', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' test', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '5', NULL),
(17, '2018-11-06-wS2aT', 5, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'sailahree vihar', 3, ' test', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '7', NULL),
(18, '2018-11-06-wS2aT', 5, 6, 'vehicle10', '5ponds', 'bhu', 2, 'irc', 4, ' official', '2018-11-06 09:14:13', 1, NULL, 'sam@ilab.com', '5', NULL),
(19, '2018-11-06-OfkqH', 6, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' test', '2018-11-06 09:18:04', 1, NULL, 'sam@ilab.com', '1', NULL),
(20, '2018-11-06-OfkqH', 6, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'irc', 4, ' test', '2018-11-06 09:18:04', 1, NULL, 'sam@ilab.com', '1', NULL),
(21, '2018-11-06-OfkqH', 6, 6, 'vehicle10', '5ponds', 'sailahree vihar', 3, 'bhu1', 1, ' official', '2018-11-06 09:18:04', 1, NULL, 'sam@ilab.com', '1', NULL),
(22, '2018-12-14-n4SUj', 16, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 07:54:10', 1, NULL, 'design2@ilab.com', '1', NULL),
(23, '2018-12-14-n4SUj', 16, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' work', '2018-12-14 07:54:10', 1, NULL, 'design2@ilab.com', '1', NULL),
(24, '2018-12-14-3Nats', 17, 1, '504ponds', '5ponds', 'sailahree vihar', 3, 'irc', 4, ' official', '2018-12-14 07:58:57', 1, NULL, 'design2@ilab.com', '1', NULL),
(25, '2018-12-14-3Nats', 17, 2, 'vehicle10', '8000ponds', 'irc', 4, 'bhu1', 1, ' work', '2018-12-14 07:58:57', 1, NULL, 'design2@ilab.com', '1', NULL),
(26, '2018-12-14-3Nats', 17, 5, 'vehicle12', '8000ponds', 'bhu', 2, 'irc', 4, ' work', '2018-12-14 07:58:57', 1, NULL, 'design2@ilab.com', '1', NULL),
(27, '2018-12-14-3Nats', 17, 4, 'vehicle12', '60000ponds', 'bhu1', 1, 'irc', 4, ' official', '2018-12-14 07:58:57', 1, NULL, 'design2@ilab.com', '1', NULL),
(28, '2018-12-14-vtbnh', 22, 1, '504ponds', '5ponds', 'sailahree vihar', 3, 'irc', 4, ' official', '2018-12-14 08:15:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(29, '2018-12-14-vtbnh', 22, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' work', '2018-12-14 08:15:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(30, '2018-12-14-vtbnh', 22, 3, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' office', '2018-12-14 08:15:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(31, '2018-12-14-vtbnh', 22, 4, 'vehicle12', '60000ponds', 'bhu1', 1, 'nayapali', 5, ' work', '2018-12-14 08:15:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(32, '2018-12-14-7w5YP', 23, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' office', '2018-12-14 08:17:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(33, '2018-12-14-7w5YP', 23, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' work', '2018-12-14 08:17:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(34, '2018-12-14-7w5YP', 23, 3, 'vehicle12', '60000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:17:52', 1, NULL, 'design2@ilab.com', '1', NULL),
(35, '2018-12-14-aiAWV', 25, 1, '504ponds', '5ponds', 'bhu1', 1, 'irc', 4, ' official', '2018-12-14 08:21:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(36, '2018-12-14-aiAWV', 25, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' work', '2018-12-14 08:21:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(37, '2018-12-14-aiAWV', 25, 4, 'vehicle12', '60000ponds', 'irc', 4, 'bhu1', 1, ' official', '2018-12-14 08:21:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(38, '2018-12-14-MlHRJ', 26, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:23:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(39, '2018-12-14-MlHRJ', 26, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:23:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(40, '2018-12-14-MlHRJ', 26, 6, 'vehicle10', '5ponds', 'sailahree vihar', 3, 'nayapali', 5, ' work', '2018-12-14 08:23:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(41, '2018-12-14-MlHRJ', 26, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'irc', 4, ' official', '2018-12-14 08:23:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(42, '2018-12-14-MlHRJ', 26, 4, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'bhu', 2, ' work', '2018-12-14 08:23:20', 1, NULL, 'design2@ilab.com', '1', NULL),
(43, '2018-12-14-zpEh4', 29, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:28:26', 1, NULL, 'design2@ilab.com', '1', NULL),
(44, '2018-12-14-zpEh4', 29, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'bhu', 2, 'work ', '2018-12-14 08:28:26', 1, NULL, 'design2@ilab.com', '1', NULL),
(45, '2018-12-14-zpEh4', 29, 5, 'vehicle12', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' official', '2018-12-14 08:28:26', 1, NULL, 'design2@ilab.com', '1', NULL),
(46, '2018-12-14-zpEh4', 29, 6, 'vehicle10', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:28:26', 1, NULL, 'design2@ilab.com', '1', NULL),
(47, '2018-12-14-zpEh4', 29, 3, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'bhu', 2, ' work', '2018-12-14 08:28:26', 1, NULL, 'design2@ilab.com', '1', NULL),
(48, '2018-12-14-diEVD', 30, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:31:02', 1, NULL, 'design2@ilab.com', '1', NULL),
(49, '2018-12-14-diEVD', 30, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'irc', 4, ' official', '2018-12-14 08:31:02', 1, NULL, 'design2@ilab.com', '1', NULL),
(50, '2018-12-14-diEVD', 30, 4, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' work', '2018-12-14 08:31:02', 1, NULL, 'design2@ilab.com', '1', NULL),
(51, '2018-12-14-aiAWV', 25, 1, '504ponds', '5ponds', 'bhu1', 1, 'irc', 4, ' official', '2018-12-14 08:59:25', 2, NULL, 'design2@ilab.com', '1', NULL),
(52, '2018-12-14-aiAWV', 25, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' work', '2018-12-14 08:59:25', 2, NULL, 'design2@ilab.com', '1', NULL),
(53, '2018-12-14-aiAWV', 25, 4, 'vehicle12', '60000ponds', 'irc', 4, 'bhu1', 1, ' official', '2018-12-14 08:59:25', 2, NULL, 'design2@ilab.com', '1', NULL),
(54, '2018-12-14-MlHRJ', 26, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:59:56', 2, NULL, 'design2@ilab.com', '1', NULL),
(55, '2018-12-14-MlHRJ', 26, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' official', '2018-12-14 08:59:56', 2, NULL, 'design2@ilab.com', '1', NULL),
(56, '2018-12-14-MlHRJ', 26, 6, 'vehicle10', '5ponds', 'sailahree vihar', 3, 'nayapali', 5, ' work', '2018-12-14 08:59:56', 2, NULL, 'design2@ilab.com', '1', NULL),
(57, '2018-12-14-MlHRJ', 26, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'irc', 4, ' official', '2018-12-14 08:59:56', 2, NULL, 'design2@ilab.com', '1', NULL),
(58, '2018-12-14-MlHRJ', 26, 4, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'bhu', 2, ' work', '2018-12-14 08:59:56', 2, NULL, 'design2@ilab.com', '1', NULL),
(59, '2018-12-14-vtbnh', 22, 1, '504ponds', '5ponds', 'sailahree vihar', 3, 'irc', 4, ' official', '2018-12-14 09:01:21', 2, NULL, NULL, '1', NULL),
(60, '2018-12-14-vtbnh', 22, 2, 'vehicle10', '8000ponds', 'bhu1', 1, 'sailahree vihar', 3, ' work', '2018-12-14 09:01:21', 2, NULL, NULL, '1', NULL),
(61, '2018-12-14-vtbnh', 22, 3, 'vehicle12', '60000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' office', '2018-12-14 09:01:21', 2, NULL, NULL, '1', NULL),
(62, '2018-12-14-vtbnh', 22, 4, 'vehicle12', '60000ponds', 'bhu1', 1, 'nayapali', 5, ' work', '2018-12-14 09:01:21', 2, NULL, NULL, '1', NULL),
(63, '2018-11-06-wS2aT', 5, 1, '504ponds', '5ponds', 'bhu1', 1, 'bhu', 2, ' test', '2018-12-14 09:03:01', 2, NULL, NULL, '1', NULL),
(64, '2018-11-06-wS2aT', 5, 2, 'vehicle10', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' test', '2018-12-14 09:03:01', 2, NULL, NULL, '1', NULL),
(65, '2018-11-06-wS2aT', 5, 4, 'vehicle12', '60000ponds', 'bhu', 2, 'irc', 4, ' official', '2018-12-14 09:03:01', 2, NULL, NULL, '10', NULL),
(66, '2018-11-06-wS2aT', 5, 5, 'vehicle12', '8000ponds', 'sailahree vihar', 3, 'nayapali', 5, ' test', '2018-12-14 09:03:01', 2, NULL, NULL, '5', NULL),
(67, '2018-11-06-wS2aT', 5, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'sailahree vihar', 3, ' test', '2018-12-14 09:03:01', 2, NULL, NULL, '7', NULL),
(68, '2018-11-06-wS2aT', 5, 6, 'vehicle10', '5ponds', 'bhu', 2, 'irc', 4, ' official', '2018-12-14 09:03:01', 2, NULL, NULL, '5', NULL),
(69, '2018-12-14-9JOuy', 41, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' ofc', '2018-12-14 11:27:34', 1, NULL, 'design2@ilab.com', '1', NULL),
(70, '2018-12-14-9JOuy', 41, 2, 'vehicle10', '8000ponds', 'bhu', 2, 'irc', 4, ' work', '2018-12-14 11:27:34', 1, NULL, 'design2@ilab.com', '1', NULL),
(71, '2018-12-14-9x3aj', 42, 1, '504ponds', '5ponds', 'bhu1', 1, 'sailahree vihar', 3, ' ofc', '2018-12-14 11:29:08', 1, NULL, 'design2@ilab.com', '1', NULL),
(72, '2018-12-14-9x3aj', 42, 2, 'vehicle10', '8000ponds', 'bhu', 2, 'irc', 4, ' work', '2018-12-14 11:29:08', 1, NULL, 'design2@ilab.com', '1', NULL),
(73, '2018-12-14-9x3aj', 42, 3, 'vehicle12', '60000ponds', 'bhu', 2, 'sailahree vihar', 3, ' ofc', '2018-12-14 11:29:08', 1, NULL, 'design2@ilab.com', '1', NULL),
(74, '2018-12-14-9x3aj', 42, 4, 'vehicle12', '60000ponds', 'irc', 4, 'bhu', 2, ' work', '2018-12-14 11:29:08', 1, NULL, 'design2@ilab.com', '1', NULL);

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
(1, '2018-11-05-Qts0z', 1, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-05', 1, 1, '1', 1, 1, '2018-11-06'),
(2, '2018-11-05-zjLgq', 2, '23456', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 2', 'buy2@ilab.com', '2018-11-05', 1, 1, '2', 1, 1, '2018-11-06'),
(3, '2018-11-05-pUgws', 3, '679034', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-05', 1, 1, '3', 1, 1, '2018-11-06'),
(4, '2018-11-06-EDNHT', 8, '189067', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-06', 1, 1, '2', 1, 1, '2018-11-10'),
(5, '2018-11-06-VHfBc', 7, '567432', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer 1', 'buy1@ilab.com', '2018-11-06', 1, 1, '2', 1, 1, '2018-12-14'),
(6, '2018-11-06-OfkqH', 6, '679034', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-06', 1, 1, '3', 1, 1, '2018-12-14'),
(7, '2018-11-06-5bciu', 4, '567432', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 2', 'buy2@ilab.com', '2018-11-06', 1, 1, '3', 1, 1, '2018-12-14'),
(8, '2018-11-06-WwsEK', 9, '189067', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer', 'abc2@gmail.com', '2018-11-06', 1, 1, '2', 1, 1, '2018-12-14'),
(9, '2018-11-06-GucKA', 10, '679034', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer 2', 'buy2@ilab.com', '2018-11-06', 1, 1, '1', 1, 1, '2018-12-14'),
(10, '2018-11-10-aEGtF', 11, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-10', 1, 1, '1', 1, 1, '2018-11-10'),
(11, '2018-11-10-6LUp1', 12, '23456', 18, 'pro@ilab.com', 'procurement user 1', 'buyer 1', 'buy1@ilab.com', '2018-11-10', 1, 1, '1', 1, 1, '2018-11-10'),
(12, '2018-12-14-KWgN3', 13, '0770', 18, 'pro@ilab.com', 'procurement user 1', 'buyer', 'abc2@gmail.com', '2018-12-14', 1, 1, '1', 1, 1, '2018-12-14'),
(13, '2018-12-14-THb9P', 14, '0770', 18, 'pro2@ilab.com', 'procurement user 2', 'user464', 'gcg2@gmail.com', '2018-12-14', 1, 1, '1', 1, 2, '2018-12-14'),
(14, '2018-12-14-ZlvpW', 19, '0770', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer', 'abc2@gmail.com', '2018-12-14', 1, 1, '2', 1, 2, '2018-12-14'),
(15, '2018-12-14-DvqNS', 20, '0770', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer', 'abc2@gmail.com', '2018-12-14', 1, 1, '1', 1, 2, '2018-12-14'),
(16, '2018-12-14-DvqNS', 20, '0770', 18, 'pro2@ilab.com', 'procurement user 2', 'buyer', 'abc2@gmail.com', '2018-12-14', 1, 1, '1', 1, 2, '2018-12-14'),
(17, '2018-11-06-wS2aT', 5, '23456', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '3', 2, 1, NULL),
(18, '2018-12-14-cEvFd', 27, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '2', 2, 2, NULL),
(19, '2018-12-14-WSc7Q', 32, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '1', 1, 2, NULL),
(20, '2018-12-14-SW62x', 34, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '1', 1, 2, NULL),
(21, '2018-12-14-ROs2j', 36, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '2', 1, 2, NULL),
(22, '2018-12-14-9x3aj', 42, '0770', 18, 'pro@ilab.com', 'procurement user 1', NULL, NULL, '2018-12-14', 1, 2, '3', 1, 2, NULL);

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
(6, 'revenue', '189067', '2018-10-03', 'msdfrt', '12345667890', 'mnghtyu', 1, 0, '2018-10-23', '16:13:34');

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
(534, 'abc@ilab.com', 'Technical User', 9, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '14:30:49', 2, '14:31:48', '2018-12-17', 'bbvgijgebgebr6m7rcgas0csp917ub3p');

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
(50, 'ven121@gmail.com', 'INFOLEX METAMORF ', 4, '{\"browser\":\"Firefox\",\"browserVersion\":\"64.0\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko\\/20100101 Firefox\\/64.0\"}', '192.168.0.4', '2018-12-17', '15:12:58', 1, NULL, NULL, 'g8o5od8d8o2nr5e5evqsn01gurkphr0n');

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
(1, '316Ls', '316L stainless steel head and casing', 'Tech001', '2', 4, 1, '2018-09-25', '13:13:22'),
(2, 'tec10', 'xxx', '101', '1', 6, 1, '2018-09-26', '15:16:54'),
(3, 'tec10', 'xxx', '101', '2', 3, 1, '2018-09-26', '15:19:18'),
(4, '67tyu', 'cvbnmxrt', '126709', '1', 6, 1, '2018-10-09', '21:20:46'),
(5, 'BNTRY', 'bnmiyutre', '0290321', '1', 6, 1, '2018-10-09', '21:21:46'),
(6, 'technical 1', 'et me prefix this by saying that I know what foreach is, does and how to use it. This question concerns how it works under the bonnet, and I don\'t want any answers along the lines of \"this is how you loop an array with foreach\".', 'techid00155', '1', 7, 1, '2018-10-15', '17:42:53'),
(7, 'technical 1667', 'For a long time I assumed that foreach worked with the array itself. Then I found many references to the fact that it works with a copy of the array, and I have since assumed this to be the end of the story. But I recently got i', 'techid001sssd', '1', 7, 1, '2018-10-15', '17:43:28'),
(8, 'ABCD 3333', 'This clearly shows that we are not working directly with the source array - otherwise the loop would continue forever, since we are constantly pushing items onto the array during the loop. But just to be sure this is the case:', 'techid0013343434', '1', 8, 1, '2018-10-15', '17:44:00');

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

--
-- Dumping data for table `Ilab_master_tech_bid_comment`
--

INSERT INTO `Ilab_master_tech_bid_comment` (`Slno`, `master_bid`, `vendor_bid_id`, `comment`, `status`, `active_status`, `token_no`, `token_id`, `date`) VALUES
(1, '1', '2', '', 'P', 1, 'RCjVxtKL', '7', '2018-12-17 08:53:15'),
(2, '2', '8', 'Please attach new all data send again', 'N', 3, 'OSA8BuvU', '8', '2018-12-17 08:59:28');

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
(1, '33', '345434', '2018-11-28', '2018-11-28', '', NULL, '', NULL, '', '', '', '', '', '', '', '', '2', '', '', '', '', '', '', 1, '2018-11-09 12:16:15', '2018-11-09 12:16:15', 'bu1@ilab.com');

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
(1, '504ponds', '5ponds', ' tyyy', '3', 1, '2018-10-11', '21:29:54'),
(2, 'vehicle10', '8000ponds', 'XYZ', '3', 1, '2018-10-22', '15:44:52'),
(3, 'vehicle12', '60000ponds', 'abc', '3', 1, '2018-10-22', '15:45:09'),
(4, 'vehicle12', '60000ponds', '12345', '3', 1, '2018-10-22', '15:45:27'),
(5, 'vehicle12', '8000ponds', '3456', '3', 1, '2018-10-22', '15:45:44'),
(6, 'vehicle10', '5ponds', '2345', '3', 1, '2018-10-22', '15:46:01');

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
(2, '50 ponds', 1, '2018-09-25', '16:35:24'),
(3, '5ponds', 1, '2018-09-25', '16:37:33'),
(4, '8000ponds', 1, '2018-09-25', '16:59:37'),
(5, '60000ponds', 1, '2018-09-26', '15:26:05'),
(12, '50s ponds', 1, '2018-10-11', '21:18:24');

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
(5, 'vehicle2', 1, '2018-09-26', '15:26:05'),
(6, 'vehech', 3, '2018-10-11', '18:01:42');

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
(1, 'vendor 2', 'vender2@ilab.com', '99330', 'vendor 2 pvt ltd', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2018-09-22', '19:08:08', 'teartt', 'wqqwqw'),
(2, 'vendor 1', 'vender@ilab.com', '99330', 'vendor pvt ltd', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2018-09-22', '19:08:40', 'teartt', 'wqqwqw'),
(3, 'ven10', 'ven111@gmail.com', '985676768', 'xyz', '111', '698d51a19d8a121ce581499d7b701668', 1, '2018-09-26', '15:14:25', 'ttt', 'xxxt'),
(4, 'INFOLEX METAMORF ', 'ven121@gmail.com', '76673498510', 'INFOLEX METAMORF BUSINESS SOLUTIONS PRIVATE LIMITED', '141', '0f28b5d49b3020afeecd95b4009adf4c', 1, '2018-09-26', '15:24:14', 'xxxy', 'No.3, 3rd Main, Bahubalinagar, MES Ring Road, Jalahalli Post Bangalore Bangalore KA 560013 IN'),
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
(15, 'Vendors11', 'ven170@yahoo.com', '74657390', 'C&Z', '7100', '9d94c8981a48d12adfeecfe1ae6e0ec1', 1, '2018-11-13', '13:22:56', 'vvvvn', 'BBSR');

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
(1, 'ELXxTyY4', 1, 'ven121@gmail.com', 'Screenshot from 2018-09-13 17-21-59.png', '2018-12-10-Screenshot from 2018-09-13 17-21-59.png', 1, '2018-12-10', '19:18:41', 2),
(2, 'mVkxIK2M', 1, 'ven121@gmail.com', 'e Bid.jpg', '2018-12-10-e Bid.jpg', 1, '2018-12-10', '19:56:00', 2),
(4, 'RCjVxtKL', 1, 'ven121@gmail.com', 'aLpqK--J.jpg', '2018-12-10-aLpqK--J.jpg', 1, '2018-12-10', '20:21:51', 2),
(5, 'RCjVxtKL', 1, 'ven121@gmail.com', '2', '2018-12-10-care.png', 1, '2018-12-10', '20:22:41', 2),
(6, 'RCjVxtKL', 1, 'ven121@gmail.com', 'test', '2018-12-10-logo.jpg', 1, '2018-12-10', '20:23:20', 2),
(7, 'Jlj41WUg', 1, 'ven121@gmail.com', 'mest', '2018-12-10-aLpqK--J.jpg', 1, '2018-12-10', '21:39:29', 2),
(8, 'OSA8BuvU', 2, 'ven121@gmail.com', 'mest', '2018-12-11-login_lnt.png', 1, '2018-12-11', '12:15:49', 8),
(10, 'dBuoZ7UO', 1, 'ven121@gmail.com', 'ddd', '2018-12-11-155286486-612x612.jpg', 1, '2018-12-11', '13:20:30', 2),
(11, 'dBuoZ7UO', 1, 'ven121@gmail.com', 'uuu', '2018-12-11-Screenshot from 2018-11-05 14-45-23.png', 1, '2018-12-11', '13:20:43', 2),
(12, 'XOIBGf05', 1, 'ven121@gmail.com', 'uuu', '2018-12-11-login_lnt.png', 1, '2018-12-11', '13:22:48', 2),
(13, 'kuED2S5c', 1, 'ven121@gmail.com', 'profile', '2018-12-13-care.png', 1, '2018-12-13', '20:18:07', 2);

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
(1, 'Jlj41WUg', '2', 1, 'ven121@gmail.com', 5, '2018-12-10', '2018-12-11 07:04:56', NULL),
(2, 'Rz4Lmqfs', '2', 1, 'ven121@gmail.com', 0, '2018-12-10', '2018-12-10 09:40:53', NULL),
(3, 'SpiqoYnZ', '2', 1, 'ven121@gmail.com', 0, '2018-12-10', '2018-12-10 09:44:50', NULL),
(4, 'dBuoZ7UO', '2', 1, 'ven121@gmail.com', 5, '2018-12-10', '2018-12-13 14:48:17', NULL),
(5, 'ELXxTyY4', '2', 1, 'ven121@gmail.com', 5, '2018-12-10', '2018-12-11 07:50:47', NULL),
(6, 'mVkxIK2M', '2', 1, 'ven121@gmail.com', 0, '2018-12-10', '2018-12-10 14:11:31', NULL),
(7, 'RCjVxtKL', '2', 1, 'ven121@gmail.com', 1, '2018-12-10', '2018-12-17 08:51:21', '0'),
(8, 'OSA8BuvU', '8', 2, 'ven121@gmail.com', 1, '2018-12-11', '2018-12-17 10:01:06', 'check '),
(9, 'n8YIS24X', '2', 1, 'ven121@gmail.com', 0, '2018-12-11', '2018-12-11 07:52:00', NULL),
(10, 'XOIBGf05', '2', 1, 'ven121@gmail.com', 0, '2018-12-11', '2018-12-11 07:52:21', NULL),
(11, 'kuED2S5c', '2', 1, 'ven121@gmail.com', 5, '2018-12-13', '2018-12-17 06:48:50', NULL),
(12, 'dLaBUbMP', '8', 2, 'ven121@gmail.com', 0, '2018-12-17', '2018-12-17 10:01:27', NULL);

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
(129, 'User_Entry_Form', '{\"email_id\":\"uvt99@gmail.com\",\"Username\":\"user797\",\"Password\":\"vT976786vvn\",\"password_hash\":\"4e1aa3921ac7f7d3595e6f843a876f22\",\"Status\":1,\"role_id\":\"5\",\"user_mobile\":\"7897459893\",\"user_degination\":\"designation09\"}', 1, '2018-11-13', '16:41:56', '192.168.0.5', '{\"browser\":\"Chrome\",\"browserVersion\":\"68.0.3440.106\",\"platform\":\"Linux\",\"full_user_agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/68.0.3440.106 Safari\\/537.36\"}');

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
(3, 'sec 1', 1, '2018-09-15', '15:50:18'),
(4, 'section2', 1, '2018-09-18', '12:52:03'),
(5, 'section2', 1, '2018-09-26', '14:58:49');

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
(36, '15', 'logistics', '3', '2018-11-13', '13:22:56', 1, 'logistics', 'cat003');

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
-- Indexes for table `Ilab_master_createuser`
--
ALTER TABLE `Ilab_master_createuser`
  ADD PRIMARY KEY (`Create_Slno`);

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
  MODIFY `Activity_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_assign_project_user`
--
ALTER TABLE `Ilab_assign_project_user`
  MODIFY `slno_assign_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `Ilab_master_admin`
--
ALTER TABLE `Ilab_master_admin`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `Ilab_master_bid`
--
ALTER TABLE `Ilab_master_bid`
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commerical`
--
ALTER TABLE `Ilab_master_bid_commerical`
  MODIFY `Slno_bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_commericalevaluation`
--
ALTER TABLE `Ilab_master_bid_commericalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details`
--
ALTER TABLE `Ilab_master_bid_date_details`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_date_details_commerical`
--
ALTER TABLE `Ilab_master_bid_date_details_commerical`
  MODIFY `Slno_bid_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details`
--
ALTER TABLE `Ilab_master_bid_details`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_details_commerical`
--
ALTER TABLE `Ilab_master_bid_details_commerical`
  MODIFY `slno_bid_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_commerical`
--
ALTER TABLE `Ilab_master_bid_file_commerical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_file_technical`
--
ALTER TABLE `Ilab_master_bid_file_technical`
  MODIFY `Slno_bid_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query`
--
ALTER TABLE `Ilab_master_bid_query`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_query_commerical`
--
ALTER TABLE `Ilab_master_bid_query_commerical`
  MODIFY `Slno_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_technicalevaluation`
--
ALTER TABLE `Ilab_master_bid_technicalevaluation`
  MODIFY `slno_bid_tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor`
--
ALTER TABLE `Ilab_master_bid_vendor`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_commerical`
--
ALTER TABLE `Ilab_master_bid_vendor_commerical`
  MODIFY `slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Ilab_master_bid_vendor_file_details`
--
ALTER TABLE `Ilab_master_bid_vendor_file_details`
  MODIFY `slno_document` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_material_details`
--
ALTER TABLE `Ilab_master_buyer_material_details`
  MODIFY `slno_mat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ilab_master_buyer_MR`
--
ALTER TABLE `Ilab_master_buyer_MR`
  MODIFY `Slno_buyer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Ilab_master_category`
--
ALTER TABLE `Ilab_master_category`
  MODIFY `Slno_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Ilab_master_charges_other`
--
ALTER TABLE `Ilab_master_charges_other`
  MODIFY `Slno_other` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_createuser`
--
ALTER TABLE `Ilab_master_createuser`
  MODIFY `Create_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_items_material`
--
ALTER TABLE `Ilab_master_items_material`
  MODIFY `Slno_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Ilab_master_loaction_details`
--
ALTER TABLE `Ilab_master_loaction_details`
  MODIFY `slno_loc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_approver_order`
--
ALTER TABLE `Ilab_master_mr_approver_order`
  MODIFY `Slno_approver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_file_upload`
--
ALTER TABLE `Ilab_master_mr_file_upload`
  MODIFY `slno_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_comments`
--
ALTER TABLE `Ilab_master_mr_job_comments`
  MODIFY `Slno_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_job_details`
--
ALTER TABLE `Ilab_master_mr_job_details`
  MODIFY `slno_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_location`
--
ALTER TABLE `Ilab_master_mr_location`
  MODIFY `slno_loca_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_material_item`
--
ALTER TABLE `Ilab_master_mr_material_item`
  MODIFY `slno_item_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_technical_parameter_info`
--
ALTER TABLE `Ilab_master_mr_technical_parameter_info`
  MODIFY `slno_para` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `Ilab_master_mr_vehicle_mr_detail`
--
ALTER TABLE `Ilab_master_mr_vehicle_mr_detail`
  MODIFY `slno_mr_logistic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `Ilab_master_new_order_book`
--
ALTER TABLE `Ilab_master_new_order_book`
  MODIFY `Slno_n_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_procurement_MR`
--
ALTER TABLE `Ilab_master_procurement_MR`
  MODIFY `Slno_procurement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `Ilab_master_project`
--
ALTER TABLE `Ilab_master_project`
  MODIFY `Project_Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history`
--
ALTER TABLE `Ilab_master_session_history`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
--
-- AUTO_INCREMENT for table `Ilab_master_session_history_vendors`
--
ALTER TABLE `Ilab_master_session_history_vendors`
  MODIFY `slno_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `Ilab_master_technical_detail`
--
ALTER TABLE `Ilab_master_technical_detail`
  MODIFY `Slno_technical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Ilab_master_tech_bid_comment`
--
ALTER TABLE `Ilab_master_tech_bid_comment`
  MODIFY `Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ilab_master_tracking_tools`
--
ALTER TABLE `Ilab_master_tracking_tools`
  MODIFY `Slno_tracking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle`
--
ALTER TABLE `Ilab_master_vehicle`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle_capacity`
--
ALTER TABLE `Ilab_master_vehicle_capacity`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Ilab_master_vehicle_type`
--
ALTER TABLE `Ilab_master_vehicle_type`
  MODIFY `Slno_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_detail`
--
ALTER TABLE `Ilab_master_vendor_detail`
  MODIFY `Slno_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_file_token`
--
ALTER TABLE `Ilab_master_vendor_file_token`
  MODIFY `slno_tech_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Ilab_master_vendor_tech_token_bid`
--
ALTER TABLE `Ilab_master_vendor_tech_token_bid`
  MODIFY `Slno_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Ilab_pms_log_entries`
--
ALTER TABLE `Ilab_pms_log_entries`
  MODIFY `Slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `Ilab_section`
--
ALTER TABLE `Ilab_section`
  MODIFY `Section_Slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ilab_Vendor_operation_detail`
--
ALTER TABLE `Ilab_Vendor_operation_detail`
  MODIFY `Slno_Vendor_operation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
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
