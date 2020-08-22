-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 06:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itpwcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `creator_name` varchar(100) NOT NULL,
  `type_of_blogs` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `delete_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `description`, `creator_name`, `type_of_blogs`, `date`, `delete_status`) VALUES
(1, 'blog-img15.jpg', 'I try to look at design ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'BY JAY BENJAMIN', 'CORE COMPANY', '2020-08-01', 0),
(2, 'blog-img16.jpg', 'Good design accelerates ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', ' BY HERMAN MILLER', 'CORE COMPANY', '2020-08-20', 0),
(3, 'blog-img17.jpg', 'Design is inherently optimistic. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', ' BY HUGH MACLEOD', 'CORE COMPANY', '2020-08-08', 0),
(4, 'blog-img18.jpg', 'I wish someone ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', ' JENNIFER FREEMAN', 'CORE COMPANY', '2020-08-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `corporates`
--

CREATE TABLE `corporates` (
  `id` int(11) NOT NULL,
  `prefix` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `state1` varchar(100) NOT NULL,
  `city1` varchar(100) NOT NULL,
  `pin_code` varchar(50) NOT NULL,
  `state2` varchar(100) NOT NULL,
  `area_of_interest` varchar(300) NOT NULL,
  `technology_categories_of_interest` varchar(300) NOT NULL,
  `how_does_your_organization_drive_revenue` varchar(300) NOT NULL,
  `which_size_markets_do_you_sell_into` varchar(100) DEFAULT NULL,
  `company_information` varchar(400) NOT NULL,
  `year` int(100) NOT NULL,
  `number_of_employees` int(100) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corporates`
--

INSERT INTO `corporates` (`id`, `prefix`, `name`, `email`, `organization_name`, `job_title`, `state`, `city`, `phone_number`, `email1`, `address`, `state1`, `city1`, `pin_code`, `state2`, `area_of_interest`, `technology_categories_of_interest`, `how_does_your_organization_drive_revenue`, `which_size_markets_do_you_sell_into`, `company_information`, `year`, `number_of_employees`, `delete_status`) VALUES
(1, 'india', 'anu', 'anu@gmail.com', 'Youth organization', 'developer', 'kerrala', 'mangav', '36648223', 'anuzz@gmail.com', 'kerala ,mangav ', 'kerala', 'mangav', '12334', 'kerala', 'Advancing Diversity in Technology', 'Artificial Intelligence', 'Custom Software/Mobile Application', 'Medium Enterprise', 'tech company , mangav', 2020, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `adm_name` varchar(100) NOT NULL,
  `role` varchar(40) NOT NULL,
  `online_status` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `login_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `email`, `password`, `adm_name`, `role`, `online_status`, `user_status`, `login_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '', '123456', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsevents`
--

CREATE TABLE `newsevents` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(300) NOT NULL,
  `news_description` text NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `type_of_news` varchar(200) NOT NULL,
  `created_date` date NOT NULL,
  `news_photo` varchar(500) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsevents`
--

INSERT INTO `newsevents` (`news_id`, `news_title`, `news_description`, `posted_by`, `type_of_news`, `created_date`, `news_photo`, `delete_status`) VALUES
(1, ' JENNIFER FREEMAN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', ' JENNIFER FREEMAN', 'CORE COMPANY', '2020-08-22', 'student.jpg', 0),
(2, ' JENNIFER FREEMAN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum text...', ' JENNIFER FREEMAN', 'COMPANY', '2020-08-22', 'blog-img18.jpg', 0),
(3, ' JENNIFER FREEMAN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum text...', 'JENNIFER Lophus', 'CORE COMPANY', '2020-08-22', '103blog-img18.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proffesionals`
--

CREATE TABLE `proffesionals` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pin_code` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `preferred_mode_of_contact` varchar(100) DEFAULT NULL,
  `institution_name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `graduation_date` varchar(200) NOT NULL,
  `graduation_type` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `major_type` varchar(100) NOT NULL,
  `major_stream` varchar(100) NOT NULL,
  `pdf1` varchar(500) NOT NULL,
  `internalship_experience` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `place1` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `familiar_tool` varchar(100) NOT NULL,
  `familiar_tools` varchar(200) NOT NULL,
  `pdf2` varchar(500) NOT NULL,
  `intrested_career` varchar(100) NOT NULL,
  `pdf3` varchar(500) NOT NULL,
  `resume` varchar(500) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proffesionals`
--

INSERT INTO `proffesionals` (`id`, `name`, `email`, `organization_name`, `job_title`, `dob`, `country`, `state`, `city`, `address`, `pin_code`, `gender`, `preferred_mode_of_contact`, `institution_name`, `place`, `graduation_date`, `graduation_type`, `stream`, `major_type`, `major_stream`, `pdf1`, `internalship_experience`, `company_name`, `place1`, `course`, `familiar_tool`, `familiar_tools`, `pdf2`, `intrested_career`, `pdf3`, `resume`, `delete_status`) VALUES
(1, 'ram', 'ram@gmail.com', 'Youth organization', 'deleloper', '2020-08-11', 'india', 'kerala', 'malappuram', 'kerala', '1234', 'male', 'whatsapp', 'tech', 'mangav', '2020-08-10', 'normal', 'normal', 'normal', 'normal', 'pdf', 'yes', 'tech', 'ernklm', 'php', 'nothing', '', 'pdf2', 'developer', 'pdf3', 'resume', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `organization_name` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `preferred_mode_of_contact` varchar(100) DEFAULT NULL,
  `institution_name` varchar(200) NOT NULL,
  `place` varchar(100) NOT NULL,
  `graduation_date` varchar(200) NOT NULL,
  `graduation_type` varchar(200) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `major_type` varchar(200) NOT NULL,
  `major_stream` varchar(100) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `organization_name`, `job_title`, `dob`, `country`, `state`, `city`, `address`, `pincode`, `gender`, `preferred_mode_of_contact`, `institution_name`, `place`, `graduation_date`, `graduation_type`, `stream`, `major_type`, `major_stream`, `resume`, `delete_status`) VALUES
(1, 'shameer', 'shameer@gmail.com', 'shameer', 'developer', '2020-08-18', 'india', 'kerala', 'mangav', 'kerala,cct, mangav', '12664', 'male', 'whatsapp', 'willowy', 'mangav', '2020-08-16', 'normal', 'normal', 'normal', 'normal', 'this is resume', 0),
(12, 'hoy', 'sneha@gmail.com', '12w', 'aaaa', '0000-00-00', '2', '2', '3', 'ssssssssss', '111111', 'on', '', 'aaa', 'aaa', '3', '2', '3', '3', '2', '1597992063.pdf', 0),
(13, 'faslu', 'sneha@gmail.com', '12w', 'sssss', '0000-00-00', '2', '1', '3', 'sssss sss', '2332321', 'on', '', 'aaa', 'aaa', '3', '3', '2', '3', '2', '1597992212.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporates`
--
ALTER TABLE `corporates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `newsevents`
--
ALTER TABLE `newsevents`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `proffesionals`
--
ALTER TABLE `proffesionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `corporates`
--
ALTER TABLE `corporates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsevents`
--
ALTER TABLE `newsevents`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proffesionals`
--
ALTER TABLE `proffesionals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
