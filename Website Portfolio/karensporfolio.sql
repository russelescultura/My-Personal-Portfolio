-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 10:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karensporfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `headline`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Karen\'s Portfolios', 'As a passionate and dedicated professional, I bring a wealth of experience and creativity to every project. With a background in [Your Field], I specialize in [Your Specialties]. My portfolio showcases a diverse range of work that demonstrates my skills in [Key Skills]. I believe in [Your Philosophy or Approach], and I\'m always eager to take on new challenges and push the boundaries of what\'s possible in my field. Explore my portfolio to see how I can bring value to your next project!s', '2024-07-21 07:10:53', '2024-07-21 08:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `change_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`id`, `table_name`, `operation_type`, `change_time`, `change_details`) VALUES
(1, 'experience', 'UPDATE', '2024-07-29 05:10:07', 'Record updated. Old: id=1, user_id=0, company_name=Tech Solutionsewfhhrohjr01, location=New Yorkesfhhrohjr01, job_title=Software Engineerfsehhrohjr01, date_started=2020-06-06, date_ended=2023-06-07 New: id=1, user_id=0, company_name=Tech Solutionsewfhhrohjr01, location=New Yorkesfhhrohjr01d, job_title=Software Engineerfsehhrohjr01, date_started=2020-06-06, date_ended=2023-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `email_address`, `phone_number`, `message`) VALUES
(11, 'Jessica Martinez', 'jmartinez@techcorp.com', '(555) 234-5678', 'We were impressed by your resume and would like to schedule an interview for the Senior Developer position. Are you available next week?');

--
-- Triggers `contact`
--
DELIMITER $$
CREATE TRIGGER `after_contact_delete` AFTER DELETE ON `contact` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('contact', 'DELETE', CONCAT('Record deleted: id=', OLD.id, ', name=', OLD.full_name, ', email=', OLD.email_address, ', phone=', OLD.phone_number));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_contact_insert` AFTER INSERT ON `contact` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('contact', 'INSERT', CONCAT('New record added: id=', NEW.id, ', name=', NEW.full_name, ', email=', NEW.email_address, ', phone=', NEW.phone_number));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_contact_update` AFTER UPDATE ON `contact` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('contact', 'UPDATE', CONCAT('Record updated. Old: id=', OLD.id, ', name=', OLD.full_name, ', email=', OLD.email_address, ', phone=', OLD.phone_number, ' New: id=', NEW.id, ', name=', NEW.full_name, ', email=', NEW.email_address, ', phone=', NEW.phone_number));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `year_started` int(11) NOT NULL,
  `year_ended` int(11) DEFAULT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_location` varchar(255) NOT NULL,
  `school_level` enum('Elementary','High School','Senior High School','College') NOT NULL,
  `grade_or_year` varchar(50) DEFAULT NULL,
  `course_or_track` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `year_started`, `year_ended`, `school_name`, `school_location`, `school_level`, `grade_or_year`, `course_or_track`, `description`) VALUES
(1, 2015, 2019, 'computersd', 'awdwwaedsd', 'High School', 'segrsdgsd', 'efsfsefsd', 'esfefsesd');

--
-- Triggers `education`
--
DELIMITER $$
CREATE TRIGGER `after_education_delete` AFTER DELETE ON `education` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('education', 'DELETE', CONCAT('Record deleted: id=', OLD.id, ', year_started=', OLD.year_started, ', year_ended=', OLD.year_ended, ', school_name=', OLD.school_name, ', location=', OLD.school_location, ', level=', OLD.school_level, ', grade_or_year=', OLD.grade_or_year, ', course_or_track=', OLD.course_or_track));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_education_insert` AFTER INSERT ON `education` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('education', 'INSERT', CONCAT('New record added: id=', NEW.id, ', year_started=', NEW.year_started, ', year_ended=', NEW.year_ended, ', school_name=', NEW.school_name, ', location=', NEW.school_location, ', level=', NEW.school_level, ', grade_or_year=', NEW.grade_or_year, ', course_or_track=', NEW.course_or_track));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_education_update` AFTER UPDATE ON `education` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('education', 'UPDATE', CONCAT('Record updated. Old: id=', OLD.id, ', year_started=', OLD.year_started, ', year_ended=', OLD.year_ended, ', school_name=', OLD.school_name, ', location=', OLD.school_location, ', level=', OLD.school_level, ', grade_or_year=', OLD.grade_or_year, ', course_or_track=', OLD.course_or_track, ' New: id=', NEW.id, ', year_started=', NEW.year_started, ', year_ended=', NEW.year_ended, ', school_name=', NEW.school_name, ', location=', NEW.school_location, ', level=', NEW.school_level, ', grade_or_year=', NEW.grade_or_year, ', course_or_track=', NEW.course_or_track));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) NOT NULL,
  `date_started` date NOT NULL,
  `date_ended` date DEFAULT NULL,
  `job_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `user_id`, `company_name`, `company_location`, `job_title`, `date_started`, `date_ended`, `job_description`) VALUES
(1, 0, 'Tech Solutionsewfhhrohjr01', 'New Yorkesfhhrohjr01d', 'Software Engineerfsehhrohjr01', '2020-06-06', '2023-06-07', 'Developed and maintained web sefapplications.hhrr1'),
(5, 0, 'daw', 'dawd', 'daw', '2024-07-26', '2024-07-30', 'dawdawd'),
(6, 0, 'egye', 'gergrg', 'rggdg', '2024-07-26', '2024-07-27', 'fsefsef');

--
-- Triggers `experience`
--
DELIMITER $$
CREATE TRIGGER `after_experience_delete` AFTER DELETE ON `experience` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('experience', 'DELETE', CONCAT('Record deleted: id=', OLD.id, ', user_id=', OLD.user_id, ', company_name=', OLD.company_name, ', location=', OLD.company_location, ', job_title=', OLD.job_title, ', date_started=', OLD.date_started, ', date_ended=', OLD.date_ended));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_experience_insert` AFTER INSERT ON `experience` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('experience', 'INSERT', CONCAT('New record added: id=', NEW.id, ', user_id=', NEW.user_id, ', company_name=', NEW.company_name, ', location=', NEW.company_location, ', job_title=', NEW.job_title, ', date_started=', NEW.date_started, ', date_ended=', NEW.date_ended));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_experience_update` AFTER UPDATE ON `experience` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('experience', 'UPDATE', CONCAT('Record updated. Old: id=', OLD.id, ', user_id=', OLD.user_id, ', company_name=', OLD.company_name, ', location=', OLD.company_location, ', job_title=', OLD.job_title, ', date_started=', OLD.date_started, ', date_ended=', OLD.date_ended, ' New: id=', NEW.id, ', user_id=', NEW.user_id, ', company_name=', NEW.company_name, ', location=', NEW.company_location, ', job_title=', NEW.job_title, ', date_started=', NEW.date_started, ', date_ended=', NEW.date_ended));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `seminars`
--

CREATE TABLE `seminars` (
  `id` int(11) NOT NULL,
  `seminar_name` varchar(255) NOT NULL,
  `conductor` varchar(100) NOT NULL,
  `seminar_year` int(11) NOT NULL,
  `seminar_month` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seminars`
--

INSERT INTO `seminars` (`id`, `seminar_name`, `conductor`, `seminar_year`, `seminar_month`, `description`, `picture_path`) VALUES
(2, 'Advanced Data Structures', 'Prof. John Doe', 2024, 6, 'Deep dive into complex data structures and their implementations in various programming languages.', NULL),
(3, 'Cybersecurity Essentials', 'Sarah Johnson, CISSP', 2024, 9, 'Learn the fundamentals of cybersecurity and best practices for protecting digital assets.', NULL),
(4, 'Web Development with React', 'Mike Chen', 2024, 11, 'Hands-on workshop covering React fundamentals and building modern, responsive web applications.', NULL),
(5, 'Artificial Intelligence Ethics', 'Dr. Emily Brown', 2025, 1, 'Exploring the ethical implications of AI and machine learning in society and industry.', 'uploads/1721529241_452248489_818186047112590_4000686985305834567_n.jpg'),
(6, 'dad', 'dawd', 2001, 1, 'sefasfasefasdf', 'uploads/1721529219_450186586_3183707405096288_5243790106949378364_n.jpg'),
(7, '3rwrr', 'erwrew', 2002, 11, '0dawdaw', 'uploads/1721468708_450492393_1622204931894069_4249829569396210723_n-removebg-preview.png'),
(8, 'dad', 'dawd', 2001, 1, '0dawdawd', 'uploads/1721469821_450186586_3183707405096288_5243790106949378364_n-removebg-preview.png');

--
-- Triggers `seminars`
--
DELIMITER $$
CREATE TRIGGER `after_seminars_delete` AFTER DELETE ON `seminars` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES (
        'seminars',
        'DELETE',
        CONCAT(
            'Record deleted: id=', OLD.id, 
            ', seminar_title=', OLD.seminar_name, 
            ', conductor=', OLD.conductor, 
            ', seminar_year=', OLD.seminar_year, 
            ', seminar_month=', OLD.seminar_month, 
            ', description=', OLD.description
        )
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_seminars_insert` AFTER INSERT ON `seminars` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES (
        'seminars',
        'INSERT',
        CONCAT(
            'New record added: id=', NEW.id, 
            ', seminar_title=', NEW.seminar_name, 
            ', conductor=', NEW.conductor, 
            ', seminar_year=', NEW.seminar_year, 
            ', seminar_month=', NEW.seminar_month, 
            ', description=', NEW.description
        )
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_seminars_update` AFTER UPDATE ON `seminars` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES (
        'seminars',
        'UPDATE',
        CONCAT(
            'Record updated. Old: id=', OLD.id, 
            ', seminar_title from "', OLD.seminar_name, '" to "', NEW.seminar_name, '"',
            ', conductor from "', OLD.conductor, '" to "', NEW.conductor, '"',
            ', seminar_year from "', OLD.seminar_year, '" to "', NEW.seminar_year, '"',
            ', seminar_month from "', OLD.seminar_month, '" to "', NEW.seminar_month, '"',
            ', description from "', OLD.description, '" to "', NEW.description, '"'
        )
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `skill_level` enum('Beginner','Intermediate','Advanced','Expert') NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`, `description`) VALUES
(3, 'fsefsde', 'Advanced', 'fsefsde');

--
-- Triggers `skills`
--
DELIMITER $$
CREATE TRIGGER `after_skills_delete` AFTER DELETE ON `skills` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('skills', 'DELETE', CONCAT('Record deleted: id=', OLD.id, ', skill_name=', OLD.skill_name, ', skill_level=', OLD.skill_level, ', description=', OLD.description));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_skills_insert` AFTER INSERT ON `skills` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('skills', 'INSERT', CONCAT('New record added: id=', NEW.id, ', skill_name=', NEW.skill_name, ', skill_level=', NEW.skill_level, ', description=', NEW.description));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_skills_update` AFTER UPDATE ON `skills` FOR EACH ROW BEGIN
    INSERT INTO audit_trail (table_name, operation_type, change_details)
    VALUES ('skills', 'UPDATE', CONCAT('Record updated. Old: id=', OLD.id, ', skill_name=', OLD.skill_name, ', skill_level=', OLD.skill_level, ', description=', OLD.description, ' New: id=', NEW.id, ', skill_name=', NEW.skill_name, ', skill_level=', NEW.skill_level, ', description=', NEW.description));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(3, 'karenhagupit', '$2y$10$.iB1748jYVpe7zNAH8LMQ.kY04WgyL07ieOa5EzZXh7z3MkYDzFBK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminars`
--
ALTER TABLE `seminars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seminars`
--
ALTER TABLE `seminars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
