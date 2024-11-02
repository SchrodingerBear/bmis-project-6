-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2024 at 03:16 PM
-- Server version: 10.4.33-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bims`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Emailaddress` varchar(100) NOT NULL,
  `device_Id` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Committee` varchar(100) NOT NULL,
  `position_id` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `Fullname`, `Username`, `Emailaddress`, `device_Id`, `Password`, `Position`, `Committee`, `position_id`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '1234', 'admin', 'Barangay Secretary', 'None', 3),
(66, 'Princess', 'captain', '32', '32', 'captain', 'Barangay Captain', 'None', 0),
(70, 'Arianne Rose D. Aquino', 'infrastructure', 'aryan@gmail.com', '0', 'infrastructure', 'Barangay Captain', 'None', 0),
(71, 'Jerick B. Marimat', 'Finance', 'jerick@gmail.com', '0', 'Finance', 'Barangay Councilor', 'Finance', 0),
(72, 'Jesty J. Justo', 'Sports', 'jesty@gmail.com', '0', 'Sports', 'Barangay Councilor', 'None', 0),
(73, 'Carl Wency B. Seniel', 'education', 'carl@gmail.com', '0', 'education', 'Barangay Captain', 'None', 0),
(74, 'Paul Micahael C. Insular', 'Treasurer', 'paul@gmail.com', '0', 'Treasurer', 'Barangay Treasurer', 'None', 0),
(75, 'Hughie F. Molar', 'Chairman', 'yuwi@gmail.com', '0', 'Chairman', 'SK Chairman', 'None', 0),
(76, 'Ronald F. Rado', 'healthworker', 'rado@gmail.com', '0', 'healthworker', 'Barangay Health Worker', 'None', 0),
(80, 'Mary Ann A Auxtero', 'Peace', 'mean@ygmail.com', '1234', 'Peace', 'Barangay Councilor', 'Peace and Order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `announceId` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `announcement` varchar(1000) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `receiver` varchar(255) NOT NULL COMMENT 'officials_or_residents_or_all'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`announceId`, `category`, `announcement`, `image`, `date`, `receiver`) VALUES
(1, 'Thesis', 'Bawal na magthesis ', 'image/business-banner-template-design-f4b281ca556e3d500e78fc6260273284_screen.jpg', '2024-10-28 18:33:48', 'All');

-- --------------------------------------------------------

--
-- Table structure for table `annual_project`
--

CREATE TABLE `annual_project` (
  `project_id` int(11) NOT NULL,
  `aip` int(11) NOT NULL,
  `program` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `e_output` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `amount` int(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `annual_project`
--

INSERT INTO `annual_project` (`project_id`, `aip`, `program`, `department`, `start`, `end`, `e_output`, `source`, `amount`, `status`, `year`) VALUES
(31, 0, 'jkhjkk', 'jhjkhk', '2012-03-14', '2014-03-10', 'dajskdsajkdjl', 'Barangay Development Fund', 100000, 'On-Going', '2018'),
(34, 2213, 'gargatrolls', 'Pabahay', '2016-01-10', '2017-12-30', 'qwerty', 'Barangay Development Fund', 56789123, 'On-Going', '2017'),
(35, 0, 'asd', 'asda', '2018-02-01', '2018-03-19', 'saaD', 'Barangay Development Fund', 1000, 'On-Going', '2018'),
(36, 0, 'asd', 'asdsdf', '2018-03-07', '2024-03-08', 'asdasd', 'Barangay Development Fund', 1232345, 'On-Going', '2018'),
(37, 12345, 'qwerty', 'qwerty', '2017-07-19', '2018-07-23', 'qwert', 'Barangay Development Fund', 543211, 'On-Going', '2018'),
(38, 12398, 'rty', 'ert', '2019-02-05', '2022-03-08', 'sdgdf', 'Barangay Development Fund', 234456, 'On-Going', '2018'),
(39, 123, 'asd', 'asdfsdfg', '2018-03-14', '2018-06-20', 'dfgdfg', 'Barangay Disaster Risk Reduction Management Fund', 12345, 'On-Going', '2018'),
(40, 123, '123', '123', '2018-03-13', '2018-03-13', '123', 'Barangay Disaster Risk Reduction Management Fund', 123, 'On-Going', '2018'),
(41, 123, '123', 'qwe', '0099-09-08', '0099-09-08', '1678', 'Sangguniang Kabataan Fund', 123, 'On-Going', '2018'),
(42, 123, 'qwe', 'qwe', '2018-03-16', '2018-03-17', 'aervaerv', 'Barangay Development Fund', 1234, 'On-Going', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `anouncement_raw`
--

CREATE TABLE `anouncement_raw` (
  `ann_ID` int(11) UNSIGNED NOT NULL COMMENT 'primary key',
  `receiver_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'category of receiver',
  `ann_Title` varchar(255) DEFAULT NULL COMMENT 'Announcement title',
  `ann_Detail` text DEFAULT NULL COMMENT 'Announcement Detail',
  `ann_detail_sms_format` text DEFAULT NULL COMMENT 'Announcement Detail SMS Format without HTML/or other web codes',
  `ann_Date` timestamp NULL DEFAULT current_timestamp() COMMENT 'Announce date created '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `anouncement_raw`
--

INSERT INTO `anouncement_raw` (`ann_ID`, `receiver_ID`, `ann_Title`, `ann_Detail`, `ann_detail_sms_format`, `ann_Date`) VALUES
(1, 1, 'sample1', 'asdklhj2ik34hik2h34h234', 'asdasdasd', '2018-02-21 14:46:26'),
(3, 1, 'asdasdasd', 'asdasdasdasd asdasdasdasd ', '', '2018-04-21 20:24:10'),
(4, 4, 'pambili', 'akjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdhakjshdkjahskjdh akjshdkjahskjdh', NULL, '2018-04-21 20:33:50'),
(5, 1, 'jljklpoi;', 'hiuuyiuiuiouoiuio', 'dfgdfgdfg', '2018-04-23 11:58:55'),
(6, 2, 'vaptain', 'captain', 'asdasdd', '2018-04-27 18:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `apiv2_access_token`
--

CREATE TABLE `apiv2_access_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_last_used` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apiv2_api_key`
--

CREATE TABLE `apiv2_api_key` (
  `id` int(11) NOT NULL,
  `key_public` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `background_task`
--

CREATE TABLE `background_task` (
  `id` int(11) NOT NULL,
  `task` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `status` enum('running','finished','not_run') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `background_task`
--

INSERT INTO `background_task` (`id`, `task`, `last_update`, `status`) VALUES
(1, 'auto_prune.cron.php', NULL, 'not_run'),
(3, 'create_internal_notifications.cron.php', NULL, 'not_run'),
(4, 'downgrade_accounts.cron.php', NULL, 'not_run'),
(5, 'plugin_tasks.cron.php', NULL, 'not_run'),
(6, 'delete_redundant_files.cron.php', NULL, 'not_run'),
(7, 'process_file_queue.cron.php', NULL, 'not_run'),
(8, 'process_remote_file_downloads.cron.php', NULL, 'not_run');

-- --------------------------------------------------------

--
-- Table structure for table `background_task_log`
--

CREATE TABLE `background_task_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('started','finished') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'started',
  `server_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `log_message` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banned_files`
--

CREATE TABLE `banned_files` (
  `id` int(11) NOT NULL,
  `fileHash` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fileSize` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ip`
--

CREATE TABLE `banned_ip` (
  `id` int(11) NOT NULL,
  `ipAddress` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateBanned` datetime NOT NULL,
  `banType` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banNotes` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banExpiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blotter_complain_defendant`
--

CREATE TABLE `blotter_complain_defendant` (
  `cdef_ID` int(11) UNSIGNED NOT NULL,
  `blotter_ID` int(11) UNSIGNED DEFAULT NULL,
  `defendant_ID` int(11) UNSIGNED DEFAULT NULL,
  `complainantType_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blotter_complain_defendant`
--

INSERT INTO `blotter_complain_defendant` (`cdef_ID`, `blotter_ID`, `defendant_ID`, `complainantType_ID`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 2),
(3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blotter_incident_witnesses`
--

CREATE TABLE `blotter_incident_witnesses` (
  `witness_ID` int(11) UNSIGNED NOT NULL,
  `blotter_ID` int(11) UNSIGNED DEFAULT NULL,
  `witness_P_ID` int(11) NOT NULL COMMENT 'witness outsider/resident ID',
  `complainantType_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blotter_incident_witnesses`
--

INSERT INTO `blotter_incident_witnesses` (`witness_ID`, `blotter_ID`, `witness_P_ID`, `complainantType_ID`) VALUES
(1, 3, 1, 1),
(2, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `brgy_address_info`
--

CREATE TABLE `brgy_address_info` (
  `brgy_Name` varchar(100) DEFAULT NULL,
  `citymun_Name` varchar(100) NOT NULL,
  `province_Name` varchar(100) DEFAULT NULL,
  `caller_Code` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brgy_address_info`
--

INSERT INTO `brgy_address_info` (`brgy_Name`, `citymun_Name`, `province_Name`, `caller_Code`) VALUES
('Project 6', 'QUEZON CITY', 'METRO MANILA', 'setter');

-- --------------------------------------------------------

--
-- Table structure for table `brgy_official_detail`
--

CREATE TABLE `brgy_official_detail` (
  `official_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `commitee_assignID` int(11) UNSIGNED DEFAULT NULL,
  `official_Start` date DEFAULT NULL COMMENT 'Elected / Norminate / Appointed Started',
  `official_End` date DEFAULT NULL COMMENT 'Elected / Norminate / Appointed Endded',
  `visibility` tinyint(1) UNSIGNED DEFAULT 1 COMMENT 'if ''0'' hide info /if ''1'' show info in the organization chart'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brgy_official_detail`
--

INSERT INTO `brgy_official_detail` (`official_ID`, `res_ID`, `commitee_assignID`, `official_Start`, `official_End`, `visibility`) VALUES
(5, 9, 2, NULL, '0000-00-00', NULL),
(9, 11, 3, '2018-09-30', '2020-09-30', 1),
(10, 1, 4, '0000-00-00', '0000-00-00', NULL),
(12, 10, 17, '0000-00-00', '0000-00-00', 1),
(13, 4, 11, '0000-00-00', '0000-00-00', 1),
(14, 6, 9, '0000-00-00', '0000-00-00', 1),
(15, 3, 12, '0000-00-00', '0000-00-00', 1),
(16, 5, 13, '0000-00-00', '0000-00-00', 1),
(17, 8, 15, '0000-00-00', '0000-00-00', 1),
(18, 2, 14, '0000-00-00', '0000-00-00', 1),
(20, 7, 4, '0000-00-00', '0000-00-00', 1),
(21, 1, 2, '2024-09-30', '2024-09-30', 1),
(22, 2, 2, '2024-09-30', '2024-10-08', 1),
(23, 1, 2, '2024-10-01', '2024-10-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brgy_official_position`
--

CREATE TABLE `brgy_official_position` (
  `bop_ID` int(11) UNSIGNED NOT NULL,
  `official_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'official_id',
  `position_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'this position_ID is required from ref_position, to indicate their respective positions',
  `res_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate of validation`
--

CREATE TABLE `certificate of validation` (
  `barangay` varchar(50) NOT NULL,
  `startdate` int(2) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `barangaychairman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_info`
--

CREATE TABLE `country_info` (
  `id` int(11) NOT NULL,
  `iso_alpha2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iso_alpha3` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `currency_code` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `currency_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `currrency_symbol` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_info`
--

INSERT INTO `country_info` (`id`, `iso_alpha2`, `iso_alpha3`, `name`, `currency_code`, `currency_name`, `currrency_symbol`) VALUES
(1, 'AD', 'AND', 'Andorra', 'EUR', 'Euro', '€'),
(2, 'AE', 'ARE', 'United Arab Emirates', 'AED', 'Dirham', NULL),
(3, 'AF', 'AFG', 'Afghanistan', 'AFN', 'Afghani', '؋'),
(4, 'AG', 'ATG', 'Antigua and Barbuda', 'XCD', 'Dollar', '$'),
(5, 'AI', 'AIA', 'Anguilla', 'XCD', 'Dollar', '$'),
(6, 'AL', 'ALB', 'Albania', 'ALL', 'Lek', 'Lek'),
(7, 'AM', 'ARM', 'Armenia', 'AMD', 'Dram', NULL),
(8, 'AN', 'ANT', 'Netherlands Antilles', 'ANG', 'Guilder', 'ƒ'),
(9, 'AO', 'AGO', 'Angola', 'AOA', 'Kwanza', 'Kz'),
(10, 'AQ', 'ATA', 'Antarctica', '', '', NULL),
(11, 'AR', 'ARG', 'Argentina', 'ARS', 'Peso', '$'),
(12, 'AS', 'ASM', 'American Samoa', 'USD', 'Dollar', '$'),
(13, 'AT', 'AUT', 'Austria', 'EUR', 'Euro', '€'),
(14, 'AU', 'AUS', 'Australia', 'AUD', 'Dollar', '$'),
(15, 'AW', 'ABW', 'Aruba', 'AWG', 'Guilder', 'ƒ'),
(16, 'AX', 'ALA', 'Aland Islands', 'EUR', 'Euro', '€'),
(17, 'AZ', 'AZE', 'Azerbaijan', 'AZN', 'Manat', 'ман'),
(18, 'BA', 'BIH', 'Bosnia and Herzegovina', 'BAM', 'Marka', 'KM'),
(19, 'BB', 'BRB', 'Barbados', 'BBD', 'Dollar', '$'),
(20, 'BD', 'BGD', 'Bangladesh', 'BDT', 'Taka', NULL),
(21, 'BE', 'BEL', 'Belgium', 'EUR', 'Euro', '€'),
(22, 'BF', 'BFA', 'Burkina Faso', 'XOF', 'Franc', NULL),
(23, 'BG', 'BGR', 'Bulgaria', 'BGN', 'Lev', 'лв'),
(24, 'BH', 'BHR', 'Bahrain', 'BHD', 'Dinar', NULL),
(25, 'BI', 'BDI', 'Burundi', 'BIF', 'Franc', NULL),
(26, 'BJ', 'BEN', 'Benin', 'XOF', 'Franc', NULL),
(27, 'BL', 'BLM', 'Saint Barthélemy', 'EUR', 'Euro', '€'),
(28, 'BM', 'BMU', 'Bermuda', 'BMD', 'Dollar', '$'),
(29, 'BN', 'BRN', 'Brunei', 'BND', 'Dollar', '$'),
(30, 'BO', 'BOL', 'Bolivia', 'BOB', 'Boliviano', '$b'),
(31, 'BR', 'BRA', 'Brazil', 'BRL', 'Real', 'R$'),
(32, 'BS', 'BHS', 'Bahamas', 'BSD', 'Dollar', '$'),
(33, 'BT', 'BTN', 'Bhutan', 'BTN', 'Ngultrum', NULL),
(34, 'BV', 'BVT', 'Bouvet Island', 'NOK', 'Krone', 'kr'),
(35, 'BW', 'BWA', 'Botswana', 'BWP', 'Pula', 'P'),
(36, 'BY', 'BLR', 'Belarus', 'BYR', 'Ruble', 'p.'),
(37, 'BZ', 'BLZ', 'Belize', 'BZD', 'Dollar', 'BZ$'),
(38, 'CA', 'CAN', 'Canada', 'CAD', 'Dollar', '$'),
(39, 'CC', 'CCK', 'Cocos Islands', 'AUD', 'Dollar', '$'),
(40, 'CD', 'COD', 'Democratic Republic of the Congo', 'CDF', 'Franc', NULL),
(41, 'CF', 'CAF', 'Central African Republic', 'XAF', 'Franc', 'FCF'),
(42, 'CG', 'COG', 'Republic of the Congo', 'XAF', 'Franc', 'FCF'),
(43, 'CH', 'CHE', 'Switzerland', 'CHF', 'Franc', 'CHF'),
(44, 'CI', 'CIV', 'Ivory Coast', 'XOF', 'Franc', NULL),
(45, 'CK', 'COK', 'Cook Islands', 'NZD', 'Dollar', '$'),
(46, 'CL', 'CHL', 'Chile', 'CLP', 'Peso', NULL),
(47, 'CM', 'CMR', 'Cameroon', 'XAF', 'Franc', 'FCF'),
(48, 'CN', 'CHN', 'China', 'CNY', 'Yuan Renminbi', '¥'),
(49, 'CO', 'COL', 'Colombia', 'COP', 'Peso', '$'),
(50, 'CR', 'CRI', 'Costa Rica', 'CRC', 'Colon', '₡'),
(51, 'CU', 'CUB', 'Cuba', 'CUP', 'Peso', '₱'),
(52, 'CV', 'CPV', 'Cape Verde', 'CVE', 'Escudo', NULL),
(53, 'CX', 'CXR', 'Christmas Island', 'AUD', 'Dollar', '$'),
(54, 'CY', 'CYP', 'Cyprus', 'CYP', 'Pound', NULL),
(55, 'CZ', 'CZE', 'Czech Republic', 'CZK', 'Koruna', 'Kč'),
(56, 'DE', 'DEU', 'Germany', 'EUR', 'Euro', '€'),
(57, 'DJ', 'DJI', 'Djibouti', 'DJF', 'Franc', NULL),
(58, 'DK', 'DNK', 'Denmark', 'DKK', 'Krone', 'kr'),
(59, 'DM', 'DMA', 'Dominica', 'XCD', 'Dollar', '$'),
(60, 'DO', 'DOM', 'Dominican Republic', 'DOP', 'Peso', 'RD$'),
(61, 'DZ', 'DZA', 'Algeria', 'DZD', 'Dinar', NULL),
(62, 'EC', 'ECU', 'Ecuador', 'USD', 'Dollar', '$'),
(63, 'EE', 'EST', 'Estonia', 'EEK', 'Kroon', 'kr'),
(64, 'EG', 'EGY', 'Egypt', 'EGP', 'Pound', '£'),
(65, 'EH', 'ESH', 'Western Sahara', 'MAD', 'Dirham', NULL),
(66, 'ER', 'ERI', 'Eritrea', 'ERN', 'Nakfa', 'Nfk'),
(67, 'ES', 'ESP', 'Spain', 'EUR', 'Euro', '€'),
(68, 'ET', 'ETH', 'Ethiopia', 'ETB', 'Birr', NULL),
(69, 'FI', 'FIN', 'Finland', 'EUR', 'Euro', '€'),
(70, 'FJ', 'FJI', 'Fiji', 'FJD', 'Dollar', '$'),
(71, 'FK', 'FLK', 'Falkland Islands', 'FKP', 'Pound', '£'),
(72, 'FM', 'FSM', 'Micronesia', 'USD', 'Dollar', '$'),
(73, 'FO', 'FRO', 'Faroe Islands', 'DKK', 'Krone', 'kr'),
(74, 'FR', 'FRA', 'France', 'EUR', 'Euro', '€'),
(75, 'GA', 'GAB', 'Gabon', 'XAF', 'Franc', 'FCF'),
(76, 'GB', 'GBR', 'United Kingdom', 'GBP', 'Pound', '£'),
(77, 'GD', 'GRD', 'Grenada', 'XCD', 'Dollar', '$'),
(78, 'GE', 'GEO', 'Georgia', 'GEL', 'Lari', NULL),
(79, 'GF', 'GUF', 'French Guiana', 'EUR', 'Euro', '€'),
(80, 'GG', 'GGY', 'Guernsey', 'GGP', 'Pound', '£'),
(81, 'GH', 'GHA', 'Ghana', 'GHC', 'Cedi', '¢'),
(82, 'GI', 'GIB', 'Gibraltar', 'GIP', 'Pound', '£'),
(83, 'GL', 'GRL', 'Greenland', 'DKK', 'Krone', 'kr'),
(84, 'GM', 'GMB', 'Gambia', 'GMD', 'Dalasi', 'D'),
(85, 'GN', 'GIN', 'Guinea', 'GNF', 'Franc', NULL),
(86, 'GP', 'GLP', 'Guadeloupe', 'EUR', 'Euro', '€'),
(87, 'GQ', 'GNQ', 'Equatorial Guinea', 'XAF', 'Franc', 'FCF'),
(88, 'GR', 'GRC', 'Greece', 'EUR', 'Euro', '€'),
(89, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'GBP', 'Pound', '£'),
(90, 'GT', 'GTM', 'Guatemala', 'GTQ', 'Quetzal', 'Q'),
(91, 'GU', 'GUM', 'Guam', 'USD', 'Dollar', '$'),
(92, 'GW', 'GNB', 'Guinea-Bissau', 'XOF', 'Franc', NULL),
(93, 'GY', 'GUY', 'Guyana', 'GYD', 'Dollar', '$'),
(94, 'HK', 'HKG', 'Hong Kong', 'HKD', 'Dollar', '$'),
(95, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'AUD', 'Dollar', '$'),
(96, 'HN', 'HND', 'Honduras', 'HNL', 'Lempira', 'L'),
(97, 'HR', 'HRV', 'Croatia', 'HRK', 'Kuna', 'kn'),
(98, 'HT', 'HTI', 'Haiti', 'HTG', 'Gourde', 'G'),
(99, 'HU', 'HUN', 'Hungary', 'HUF', 'Forint', 'Ft'),
(100, 'ID', 'IDN', 'Indonesia', 'IDR', 'Rupiah', 'Rp'),
(101, 'IE', 'IRL', 'Ireland', 'EUR', 'Euro', '€'),
(102, 'IL', 'ISR', 'Israel', 'ILS', 'Shekel', '₪'),
(103, 'IM', 'IMN', 'Isle of Man', 'GPD', 'Pound', '£'),
(104, 'IN', 'IND', 'India', 'INR', 'Rupee', '₨'),
(105, 'IO', 'IOT', 'British Indian Ocean Territory', 'USD', 'Dollar', '$'),
(106, 'IQ', 'IRQ', 'Iraq', 'IQD', 'Dinar', NULL),
(107, 'IR', 'IRN', 'Iran', 'IRR', 'Rial', '﷼'),
(108, 'IS', 'ISL', 'Iceland', 'ISK', 'Krona', 'kr'),
(109, 'IT', 'ITA', 'Italy', 'EUR', 'Euro', '€'),
(110, 'JE', 'JEY', 'Jersey', 'JEP', 'Pound', '£'),
(111, 'JM', 'JAM', 'Jamaica', 'JMD', 'Dollar', '$'),
(112, 'JO', 'JOR', 'Jordan', 'JOD', 'Dinar', NULL),
(113, 'JP', 'JPN', 'Japan', 'JPY', 'Yen', '¥'),
(114, 'KE', 'KEN', 'Kenya', 'KES', 'Shilling', NULL),
(115, 'KG', 'KGZ', 'Kyrgyzstan', 'KGS', 'Som', 'лв'),
(116, 'KH', 'KHM', 'Cambodia', 'KHR', 'Riels', '៛'),
(117, 'KI', 'KIR', 'Kiribati', 'AUD', 'Dollar', '$'),
(118, 'KM', 'COM', 'Comoros', 'KMF', 'Franc', NULL),
(119, 'KN', 'KNA', 'Saint Kitts and Nevis', 'XCD', 'Dollar', '$'),
(120, 'KP', 'PRK', 'North Korea', 'KPW', 'Won', '₩'),
(121, 'KR', 'KOR', 'South Korea', 'KRW', 'Won', '₩'),
(122, 'KW', 'KWT', 'Kuwait', 'KWD', 'Dinar', NULL),
(123, 'KY', 'CYM', 'Cayman Islands', 'KYD', 'Dollar', '$'),
(124, 'KZ', 'KAZ', 'Kazakhstan', 'KZT', 'Tenge', 'лв'),
(125, 'LA', 'LAO', 'Laos', 'LAK', 'Kip', '₭'),
(126, 'LB', 'LBN', 'Lebanon', 'LBP', 'Pound', '£'),
(127, 'LC', 'LCA', 'Saint Lucia', 'XCD', 'Dollar', '$'),
(128, 'LI', 'LIE', 'Liechtenstein', 'CHF', 'Franc', 'CHF'),
(129, 'LK', 'LKA', 'Sri Lanka', 'LKR', 'Rupee', '₨'),
(130, 'LR', 'LBR', 'Liberia', 'LRD', 'Dollar', '$'),
(131, 'LS', 'LSO', 'Lesotho', 'LSL', 'Loti', 'L'),
(132, 'LT', 'LTU', 'Lithuania', 'LTL', 'Litas', 'Lt'),
(133, 'LU', 'LUX', 'Luxembourg', 'EUR', 'Euro', '€'),
(134, 'LV', 'LVA', 'Latvia', 'LVL', 'Lat', 'Ls'),
(135, 'LY', 'LBY', 'Libya', 'LYD', 'Dinar', NULL),
(136, 'MA', 'MAR', 'Morocco', 'MAD', 'Dirham', NULL),
(137, 'MC', 'MCO', 'Monaco', 'EUR', 'Euro', '€'),
(138, 'MD', 'MDA', 'Moldova', 'MDL', 'Leu', NULL),
(139, 'ME', 'MNE', 'Montenegro', 'EUR', 'Euro', '€'),
(140, 'MF', 'MAF', 'Saint Martin', 'EUR', 'Euro', '€'),
(141, 'MG', 'MDG', 'Madagascar', 'MGA', 'Ariary', NULL),
(142, 'MH', 'MHL', 'Marshall Islands', 'USD', 'Dollar', '$'),
(143, 'MK', 'MKD', 'Macedonia', 'MKD', 'Denar', 'ден'),
(144, 'ML', 'MLI', 'Mali', 'XOF', 'Franc', NULL),
(145, 'MM', 'MMR', 'Myanmar', 'MMK', 'Kyat', 'K'),
(146, 'MN', 'MNG', 'Mongolia', 'MNT', 'Tugrik', '₮'),
(147, 'MO', 'MAC', 'Macao', 'MOP', 'Pataca', 'MOP'),
(148, 'MP', 'MNP', 'Northern Mariana Islands', 'USD', 'Dollar', '$'),
(149, 'MQ', 'MTQ', 'Martinique', 'EUR', 'Euro', '€'),
(150, 'MR', 'MRT', 'Mauritania', 'MRO', 'Ouguiya', 'UM'),
(151, 'MS', 'MSR', 'Montserrat', 'XCD', 'Dollar', '$'),
(152, 'MT', 'MLT', 'Malta', 'MTL', 'Lira', NULL),
(153, 'MU', 'MUS', 'Mauritius', 'MUR', 'Rupee', '₨'),
(154, 'MV', 'MDV', 'Maldives', 'MVR', 'Rufiyaa', 'Rf'),
(155, 'MW', 'MWI', 'Malawi', 'MWK', 'Kwacha', 'MK'),
(156, 'MX', 'MEX', 'Mexico', 'MXN', 'Peso', '$'),
(157, 'MY', 'MYS', 'Malaysia', 'MYR', 'Ringgit', 'RM'),
(158, 'MZ', 'MOZ', 'Mozambique', 'MZN', 'Meticail', 'MT'),
(159, 'NA', 'NAM', 'Namibia', 'NAD', 'Dollar', '$'),
(160, 'NC', 'NCL', 'New Caledonia', 'XPF', 'Franc', NULL),
(161, 'NE', 'NER', 'Niger', 'XOF', 'Franc', NULL),
(162, 'NF', 'NFK', 'Norfolk Island', 'AUD', 'Dollar', '$'),
(163, 'NG', 'NGA', 'Nigeria', 'NGN', 'Naira', '₦'),
(164, 'NI', 'NIC', 'Nicaragua', 'NIO', 'Cordoba', 'C$'),
(165, 'NL', 'NLD', 'Netherlands', 'EUR', 'Euro', '€'),
(166, 'NO', 'NOR', 'Norway', 'NOK', 'Krone', 'kr'),
(167, 'NP', 'NPL', 'Nepal', 'NPR', 'Rupee', '₨'),
(168, 'NR', 'NRU', 'Nauru', 'AUD', 'Dollar', '$'),
(169, 'NU', 'NIU', 'Niue', 'NZD', 'Dollar', '$'),
(170, 'NZ', 'NZL', 'New Zealand', 'NZD', 'Dollar', '$'),
(171, 'OM', 'OMN', 'Oman', 'OMR', 'Rial', '﷼'),
(172, 'PA', 'PAN', 'Panama', 'PAB', 'Balboa', 'B/.'),
(173, 'PE', 'PER', 'Peru', 'PEN', 'Sol', 'S/.'),
(174, 'PF', 'PYF', 'French Polynesia', 'XPF', 'Franc', NULL),
(175, 'PG', 'PNG', 'Papua New Guinea', 'PGK', 'Kina', NULL),
(176, 'PH', 'PHL', 'Philippines', 'PHP', 'Peso', 'Php'),
(177, 'PK', 'PAK', 'Pakistan', 'PKR', 'Rupee', '₨'),
(178, 'PL', 'POL', 'Poland', 'PLN', 'Zloty', 'zł'),
(179, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'EUR', 'Euro', '€'),
(180, 'PN', 'PCN', 'Pitcairn', 'NZD', 'Dollar', '$'),
(181, 'PR', 'PRI', 'Puerto Rico', 'USD', 'Dollar', '$'),
(182, 'PS', 'PSE', 'Palestinian Territory', 'ILS', 'Shekel', '₪'),
(183, 'PT', 'PRT', 'Portugal', 'EUR', 'Euro', '€'),
(184, 'PW', 'PLW', 'Palau', 'USD', 'Dollar', '$'),
(185, 'PY', 'PRY', 'Paraguay', 'PYG', 'Guarani', 'Gs'),
(186, 'QA', 'QAT', 'Qatar', 'QAR', 'Rial', '﷼'),
(187, 'RE', 'REU', 'Reunion', 'EUR', 'Euro', '€'),
(188, 'RO', 'ROU', 'Romania', 'RON', 'Leu', 'lei'),
(189, 'RS', 'SRB', 'Serbia', 'RSD', 'Dinar', 'Дин'),
(190, 'RU', 'RUS', 'Russia', 'RUB', 'Ruble', 'руб'),
(191, 'RW', 'RWA', 'Rwanda', 'RWF', 'Franc', NULL),
(192, 'SA', 'SAU', 'Saudi Arabia', 'SAR', 'Rial', '﷼'),
(193, 'SB', 'SLB', 'Solomon Islands', 'SBD', 'Dollar', '$'),
(194, 'SC', 'SYC', 'Seychelles', 'SCR', 'Rupee', '₨'),
(195, 'SD', 'SDN', 'Sudan', 'SDD', 'Dinar', NULL),
(196, 'SE', 'SWE', 'Sweden', 'SEK', 'Krona', 'kr'),
(197, 'SG', 'SGP', 'Singapore', 'SGD', 'Dollar', '$'),
(198, 'SH', 'SHN', 'Saint Helena', 'SHP', 'Pound', '£'),
(199, 'SI', 'SVN', 'Slovenia', 'EUR', 'Euro', '€'),
(200, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'NOK', 'Krone', 'kr'),
(201, 'SK', 'SVK', 'Slovakia', 'SKK', 'Koruna', 'Sk'),
(202, 'SL', 'SLE', 'Sierra Leone', 'SLL', 'Leone', 'Le'),
(203, 'SM', 'SMR', 'San Marino', 'EUR', 'Euro', '€'),
(204, 'SN', 'SEN', 'Senegal', 'XOF', 'Franc', NULL),
(205, 'SO', 'SOM', 'Somalia', 'SOS', 'Shilling', 'S'),
(206, 'SR', 'SUR', 'Suriname', 'SRD', 'Dollar', '$'),
(207, 'ST', 'STP', 'Sao Tome and Principe', 'STD', 'Dobra', 'Db'),
(208, 'SV', 'SLV', 'El Salvador', 'SVC', 'Colone', '$'),
(209, 'SY', 'SYR', 'Syria', 'SYP', 'Pound', '£'),
(210, 'SZ', 'SWZ', 'Swaziland', 'SZL', 'Lilangeni', NULL),
(211, 'TC', 'TCA', 'Turks and Caicos Islands', 'USD', 'Dollar', '$'),
(212, 'TD', 'TCD', 'Chad', 'XAF', 'Franc', NULL),
(213, 'TF', 'ATF', 'French Southern Territories', 'EUR', 'Euro  ', '€'),
(214, 'TG', 'TGO', 'Togo', 'XOF', 'Franc', NULL),
(215, 'TH', 'THA', 'Thailand', 'THB', 'Baht', '฿'),
(216, 'TJ', 'TJK', 'Tajikistan', 'TJS', 'Somoni', NULL),
(217, 'TK', 'TKL', 'Tokelau', 'NZD', 'Dollar', '$'),
(218, 'TL', 'TLS', 'East Timor', 'USD', 'Dollar', '$'),
(219, 'TM', 'TKM', 'Turkmenistan', 'TMM', 'Manat', 'm'),
(220, 'TN', 'TUN', 'Tunisia', 'TND', 'Dinar', NULL),
(221, 'TO', 'TON', 'Tonga', 'TOP', 'Pa\'anga', 'T$'),
(222, 'TR', 'TUR', 'Turkey', 'TRY', 'Lira', 'YTL'),
(223, 'TT', 'TTO', 'Trinidad and Tobago', 'TTD', 'Dollar', 'TT$'),
(224, 'TV', 'TUV', 'Tuvalu', 'AUD', 'Dollar', '$'),
(225, 'TW', 'TWN', 'Taiwan', 'TWD', 'Dollar', 'NT$'),
(226, 'TZ', 'TZA', 'Tanzania', 'TZS', 'Shilling', NULL),
(227, 'UA', 'UKR', 'Ukraine', 'UAH', 'Hryvnia', '₴'),
(228, 'UG', 'UGA', 'Uganda', 'UGX', 'Shilling', NULL),
(229, 'UM', 'UMI', 'United States Minor Outlying Islands', 'USD', 'Dollar ', '$'),
(230, 'US', 'USA', 'United States', 'USD', 'Dollar', '$'),
(231, 'UY', 'URY', 'Uruguay', 'UYU', 'Peso', '$U'),
(232, 'UZ', 'UZB', 'Uzbekistan', 'UZS', 'Som', 'лв'),
(233, 'VA', 'VAT', 'Vatican', 'EUR', 'Euro', '€'),
(234, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'XCD', 'Dollar', '$'),
(235, 'VE', 'VEN', 'Venezuela', 'VEF', 'Bolivar', 'Bs'),
(236, 'VG', 'VGB', 'British Virgin Islands', 'USD', 'Dollar', '$'),
(237, 'VI', 'VIR', 'U.S. Virgin Islands', 'USD', 'Dollar', '$'),
(238, 'VN', 'VNM', 'Vietnam', 'VND', 'Dong', '₫'),
(239, 'VU', 'VUT', 'Vanuatu', 'VUV', 'Vatu', 'Vt'),
(240, 'WF', 'WLF', 'Wallis and Futuna', 'XPF', 'Franc', NULL),
(241, 'WS', 'WSM', 'Samoa', 'WST', 'Tala', 'WS$'),
(242, 'YE', 'YEM', 'Yemen', 'YER', 'Rial', '﷼'),
(243, 'YT', 'MYT', 'Mayotte', 'EUR', 'Euro', '€'),
(244, 'ZA', 'ZAF', 'South Africa', 'ZAR', 'Rand', 'R'),
(245, 'ZM', 'ZMB', 'Zambia', 'ZMK', 'Kwacha', 'ZK'),
(246, 'ZW', 'ZWE', 'Zimbabwe', 'ZWD', 'Dollar', 'Z$'),
(247, 'CS', 'SCG', 'Serbia and Montenegro', 'RSD', 'Dinar', 'Дин');

-- --------------------------------------------------------

--
-- Table structure for table `cross_site_action`
--

CREATE TABLE `cross_site_action` (
  `id` int(11) NOT NULL,
  `key1` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `key2` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cross_site_action`
--

INSERT INTO `cross_site_action` (`id`, `key1`, `key2`, `data`, `date_added`) VALUES
(1, '222c27b6b453fd9d59cc8fcd80022078cc6b68ac0d5bb9854470715e6813b4e6', '6eaba993c2ccc969dbe57aed8d808ed011a669e9cef88f2de0f376322227918e', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:38:05'),
(2, 'b62fe5071c96b055258f54346004aa32e6380b321116a5285482657888945da6', 'e27e51dd17b85601ab7fc480fcc920e110a28c111b4f35fa3236b380eea58640', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:38:05'),
(3, 'c009d7c2c6665bee2ce74cc7aa9fb7228f68155378db261c2c10755e67ea0dc4', '7806d229b37178d8cf94d49dfaea6f266a38685e6b7b4301f2345d23c60133cf', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:38:36'),
(4, 'fce920575939f4a251fa9472dfba2cc044e2a1ed29fb89a9dec521b6fe7e7ab3', '14a7c99e3bcace168bdc38650d72aad0b5e3817adde038a2fb4985ff9e5ac7f0', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:38:36'),
(5, '7e33477b8bb2e3fa82e1c01732e2c43fd5f50624f7195caf5de47159a0a412d3', '27ebc9963e2ce8dc93d0f0f545de0570a5f7b592a218404afb48a2344aff23d5', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:49:16'),
(6, '2d062c060bcca6d8d56a9fe7c300d64b4add49a26fa9f2ceb271edda60b6a446', '42cb484c01fe6f496f6ae8ddc3cdb3c1fbaef0c6d7dcad67b05463c5d7b543ad', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:49:16'),
(7, '3433e4bb6c482fe1f24bfc3e54a378262f5258b5483f148966f060b85ae4b4c2', 'ac9d326751b283ad08ae0fb432690e39c9a31ef32d4a4b822c31c5da56d89be0', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:49:18'),
(8, '6f1045d243471822baed08df928f4b7459ffdb9f2ea86f93c83fd65cd6557ac3', '34c2cffefab58e840f90cca4756160dd7d64129be069a8e830c1e6ff47f39c61', '{\"_session_id\":\"qnkshfs5nq6t6ivh9rgfpjjs21\",\"_logged_in_user_id\":\"1\"}', '2015-12-31 13:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `device_setting`
--

CREATE TABLE `device_setting` (
  `device_ID` int(11) NOT NULL,
  `reg_email` varchar(250) DEFAULT NULL,
  `reg_pass` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `device_setting`
--

INSERT INTO `device_setting` (`device_ID`, `reg_email`, `reg_pass`) VALUES
(82979, 'rhalpdarrencabrera@gmail.com', 'zxc123');

-- --------------------------------------------------------

--
-- Table structure for table `download_page`
--

CREATE TABLE `download_page` (
  `id` int(11) NOT NULL,
  `download_page` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `page_order` int(5) NOT NULL DEFAULT 0,
  `additional_javascript_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `additional_settings` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_token`
--

CREATE TABLE `download_token` (
  `id` int(11) NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `expiry` datetime NOT NULL,
  `download_speed` int(11) NOT NULL DEFAULT 0,
  `max_threads` int(3) NOT NULL DEFAULT 0,
  `file_transfer` int(1) NOT NULL DEFAULT 1,
  `process_ppd` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_tracker`
--

CREATE TABLE `download_tracker` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `download_username` varchar(65) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date_started` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_finished` datetime NOT NULL,
  `status` enum('downloading','finished','error','cancelled') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start_offset` bigint(20) NOT NULL,
  `seek_end` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `originalFilename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shortUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fileType` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fileSize` bigint(15) DEFAULT NULL,
  `localFilePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `uploadedUserId` int(11) DEFAULT NULL,
  `totalDownload` int(11) DEFAULT NULL,
  `uploadedIP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uploadedDate` timestamp NULL DEFAULT NULL,
  `statusId` int(2) DEFAULT NULL,
  `status` enum('active','trash','deleted') DEFAULT 'active',
  `visits` int(11) DEFAULT 0,
  `lastAccessed` timestamp NULL DEFAULT NULL,
  `deleteHash` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `folderId` int(11) DEFAULT NULL,
  `serverId` int(11) DEFAULT 1,
  `adminNotes` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fileLevel` enum('free','premium') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'free',
  `accessPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fileHash` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `originalFileHash` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apikey` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minUserLevel` int(3) DEFAULT NULL,
  `linkedFileId` int(11) DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isPublic` int(1) NOT NULL DEFAULT 1,
  `total_likes` int(11) NOT NULL DEFAULT 0,
  `uploadSource` enum('direct','remote','ftp','torrent','leech','webdav','api','fileimport','other') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'direct',
  `unique_hash` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_action`
--

CREATE TABLE `file_action` (
  `id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `server_id` int(11) NOT NULL,
  `file_path` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_uploaded_file` int(11) NOT NULL DEFAULT 0,
  `file_action` enum('delete','move','restore') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('pending','processing','complete','failed','cancelled') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `action_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_block_hash`
--

CREATE TABLE `file_block_hash` (
  `id` int(11) NOT NULL,
  `file_hash` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_folder`
--

CREATE TABLE `file_folder` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedUserId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `folderName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalSize` bigint(15) DEFAULT 0,
  `isPublic` int(1) NOT NULL DEFAULT 0,
  `accessPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coverImageId` int(11) DEFAULT NULL,
  `watermarkPreviews` tinyint(1) NOT NULL,
  `showDownloadLinks` tinyint(1) NOT NULL,
  `urlHash` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` enum('active','trash','deleted') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'active',
  `date_added` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_folder_share`
--

CREATE TABLE `file_folder_share` (
  `id` int(11) NOT NULL,
  `access_key` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `last_accessed` datetime DEFAULT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `shared_with_user_id` int(11) DEFAULT NULL,
  `is_global` int(1) NOT NULL DEFAULT 0,
  `share_permission_level` enum('view','upload_download','all') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'view'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_folder_share_item`
--

CREATE TABLE `file_folder_share_item` (
  `id` int(11) NOT NULL,
  `file_folder_share_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `file_report`
--

CREATE TABLE `file_report` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `reported_by_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reported_by_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reported_by_address` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reported_by_telephone_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `digital_signature` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `report_status` enum('pending','cancelled','accepted') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reported_by_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `other_information` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_server`
--

CREATE TABLE `file_server` (
  `id` int(11) NOT NULL,
  `serverLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serverType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'local',
  `ipAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ftpPort` int(11) NOT NULL DEFAULT 21,
  `ftpUsername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ftpPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `statusId` int(11) NOT NULL DEFAULT 1,
  `scriptRootPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `storagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fileServerDomainName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `scriptPath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `totalSpaceUsed` float(18,0) NOT NULL DEFAULT 0,
  `totalFiles` int(11) NOT NULL DEFAULT 0,
  `maximumStorageBytes` bigint(20) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `routeViaMainSite` int(1) NOT NULL DEFAULT 0,
  `lastFileActionQueueProcess` datetime DEFAULT NULL,
  `serverConfig` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dlAccelerator` int(1) NOT NULL DEFAULT 0,
  `serverAccess` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `geoUploadCountries` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_server`
--

INSERT INTO `file_server` (`id`, `serverLabel`, `serverType`, `ipAddress`, `ftpPort`, `ftpUsername`, `ftpPassword`, `statusId`, `scriptRootPath`, `storagePath`, `fileServerDomainName`, `scriptPath`, `totalSpaceUsed`, `totalFiles`, `maximumStorageBytes`, `priority`, `routeViaMainSite`, `lastFileActionQueueProcess`, `serverConfig`, `dlAccelerator`, `serverAccess`, `geoUploadCountries`) VALUES
(1, 'Local Default', 'local', '', 0, '', '', 2, NULL, 'files/', '', '', 0, 0, 0, 0, 0, NULL, '{\"ftp_server_type\":\"\",\"ftp_passive_mode\":\"\"}', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_server_container`
--

CREATE TABLE `file_server_container` (
  `id` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entrypoint` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expected_config_json` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_server_container`
--

INSERT INTO `file_server_container` (`id`, `label`, `entrypoint`, `expected_config_json`, `is_enabled`) VALUES
(1, 'FTP', 'flysystem_ftp', '{\"host\":{\"label\":\"FTP Host\",\"type\":\"text\",\"default\":\"\"},\"username\":{\"label\":\"FTP Username\",\"type\":\"text\",\"default\":\"\"},\"password\":{\"label\":\"FTP Password\",\"type\":\"text\",\"default\":\"\"},\"port\":{\"label\":\"Port\",\"type\":\"number\",\"default\":\"21\"},\"root\":{\"label\":\"Root Path\",\"type\":\"text\",\"default\":\"\\/\"},\"passive\":{\"label\":\"Enable Passive Mode\",\"type\":\"select\",\"default\":\"1\",\"option_values\":[\"No\",\"Yes\"]},\"ssl\":{\"label\":\"Use SSL\",\"type\":\"select\",\"default\":\"0\",\"option_values\":[\"No\",\"Yes\"]},\"timeout\":{\"label\":\"Connection Timeout\",\"type\":\"number\",\"default\":\"30\"}}', 1),
(2, 'SFTP', 'flysystem_sftp', '{\"host\":{\"label\":\"SFTP Host\",\"type\":\"text\",\"default\":\"\"},\"username\":{\"label\":\"SFTP Username\",\"type\":\"text\",\"default\":\"\"},\"password\":{\"label\":\"SFTP Password\",\"type\":\"text\",\"default\":\"\"},\"port\":{\"label\":\"Port\",\"type\":\"number\",\"default\":\"21\"},\"root\":{\"label\":\"Root Path\",\"type\":\"text\",\"default\":\"\\/\"},\"timeout\":{\"label\":\"Connection Timeout\",\"type\":\"number\",\"default\":\"30\"}}', 1),
(3, 'Amazon S3', 'flysystem_aws', '{\"key\":{\"label\":\"Public Key\",\"type\":\"text\",\"default\":\"\"},\"secret\":{\"label\":\"Secret Key\",\"type\":\"text\",\"default\":\"\"},\"bucket\":{\"label\":\"S3 Bucket\",\"type\":\"text\",\"default\":\"\"},\"region\":{\"label\":\"Your Bucket Region\",\"type\":\"select\",\"default\":\"us-east-1\",\"option_values\":{\"us-east-1\":\"US East (N. Virginia)\",\"us-east-2\":\"US East (Ohio) - us-east-2\",\"us-west-1\":\"US West (N. California) - us-west-1\",\"us-west-2\":\"US West (Oregon) - us-west-2\",\"ca-central-1\":\"Canada (Central) - ca-central-1\",\"ap-south-1\":\"Asia Pacific (Mumbai) - ap-south-1\",\"ap-northeast-2\":\"Asia Pacific (Seoul) - ap-northeast-2\",\"ap-southeast-1\":\"Asia Pacific (Singapore) - ap-southeast-1\",\"ap-southeast-2\":\"Asia Pacific (Sydney) - ap-southeast-2\",\"ap-northeast-1\":\"Asia Pacific (Tokyo) - ap-northeast-1\",\"eu-central-1\":\"EU (Frankfurt) - eu-central-1\",\"eu-west-1\":\"EU (Ireland) - eu-west-1\",\"eu-west-2\":\"EU (London) - eu-west-2\",\"sa-east-1\":\"South America (S\\u00e3o Paulo) - sa-east-1\"}},\"version\":{\"label\":\"Version (Don\'t Change)\",\"type\":\"string\",\"default\":\"latest\"}}', 1),
(4, 'Rackspace Cloud Files', 'flysystem_rackspace', '{\"username\":{\"label\":\"Rackspace Username\",\"type\":\"text\",\"default\":\"\"},\"apiKey\":{\"label\":\"API Key\",\"type\":\"text\",\"default\":\"\"},\"container\":{\"label\":\"Cloud Files Container\",\"type\":\"text\",\"default\":\"\"},\"region\":{\"label\":\"Container Region\",\"type\":\"\r\nselect \",\" default \":\" IAD \",\" option_values \":{\" IAD \":\" Nothern Virginia (IAD)\",\" DFW \":\" Dallas (DFW)\",\" HKG \":\" Hong Kong (HKG)\",\" SYD \":\" Sydney (SYD)\",\" LON \":\" London (LON) \"}}}', 1),
(5, 'Azure Blob Storage', 'flysystem_azure', '{\" account- name \":{\" label \":\" Account Name \",\" type \":\" text \",\" default \":\"\"},\" api- key \":{\" label \":\" API Key \",\" type \":\" text \",\" default \":\"\"},\" container \":{\" label \":\" Files Container \",\" type \":\" text \",\" default \":\"\"}}', 0),
(6, 'Backblaze B2', 'flysystem_backblaze_b2', '{\"account_id\":{\"label\":\"Master Key Id\",\"type\":\"text\",\"default\":\"\"},\"application_key\":{\"label\":\"Master Application Key (Master Only Supported)\",\"type\":\"text\",\"default\":\"\"},\"bucket\":{\"label\":\"Bucket Name\",\"type\":\"text\",\"default\":\"\"}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `file_server_status`
--

CREATE TABLE `file_server_status` (
  `id` int(11) NOT NULL,
  `label` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_server_status`
--

INSERT INTO `file_server_status` (`id`, `label`) VALUES
(1, 'disabled'),
(2, 'active'),
(3, 'read only');

-- --------------------------------------------------------

--
-- Table structure for table `file_status`
--

CREATE TABLE `file_status` (
  `id` int(11) NOT NULL,
  `label` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_status`
--

INSERT INTO `file_status` (`id`, `label`) VALUES
(1, 'active'),
(2, 'user removed'),
(3, 'admin removed'),
(4, 'copyright removed'),
(5, 'system expired');

-- --------------------------------------------------------

--
-- Table structure for table `finance_clearance_list`
--

CREATE TABLE `finance_clearance_list` (
  `clearance_id` int(11) NOT NULL,
  `clearance_form` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_clearance_list`
--

INSERT INTO `finance_clearance_list` (`clearance_id`, `clearance_form`) VALUES
(33, 'Barangay Clearance'),
(34, 'Building Permit'),
(35, 'Business Permit'),
(36, 'Certificate of Indigency'),
(37, 'Cutting Trees'),
(38, 'Electrical Permit'),
(39, 'Fencing Permit'),
(40, 'Film Making'),
(44, 'qwee'),
(43, 'Residency Certificate'),
(41, 'Transient Information'),
(42, 'Working Permit');

-- --------------------------------------------------------

--
-- Table structure for table `finance_clearance_set`
--

CREATE TABLE `finance_clearance_set` (
  `clearance_id` int(11) NOT NULL,
  `purpose_id` int(10) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_clearance_set`
--

INSERT INTO `finance_clearance_set` (`clearance_id`, `purpose_id`, `purpose`, `price`) VALUES
(26, 6, 'Financial Assistance', 50),
(26, 7, 'Loans', 30),
(27, 8, 'Sari-sari Store', 100),
(32, 10, 'asdfghjk', 80),
(26, 11, 'Scholarship', 20),
(33, 13, 'Scholarship', 20),
(34, 14, 'hdsajdh', 40);

-- --------------------------------------------------------

--
-- Table structure for table `finance_collection`
--

CREATE TABLE `finance_collection` (
  `collection_id` int(10) NOT NULL,
  `collection_date` date NOT NULL,
  `collection_particular` varchar(50) NOT NULL,
  `collection_amount` double NOT NULL,
  `col` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_collection`
--

INSERT INTO `finance_collection` (`collection_id`, `collection_date`, `collection_particular`, `collection_amount`, `col`) VALUES
(6, '2018-03-11', 'BIR', 987, '2018-03'),
(7, '2018-12-11', 'yoyo', 9878, '2018-12'),
(8, '2015-03-11', 'yoyo', 78, '2015-03');

-- --------------------------------------------------------

--
-- Table structure for table `finance_disbursement`
--

CREATE TABLE `finance_disbursement` (
  `disbursement_id` int(10) NOT NULL,
  `disbursement_date` date NOT NULL,
  `disbursement_particular` varchar(50) NOT NULL,
  `disbursement_amount` double NOT NULL,
  `dis` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_disbursement`
--

INSERT INTO `finance_disbursement` (`disbursement_id`, `disbursement_date`, `disbursement_particular`, `disbursement_amount`, `dis`) VALUES
(4, '2018-03-11', 'Meralco', 500, '2018-03'),
(5, '2018-05-11', 'yeye', 87933, '2018-05'),
(6, '2021-03-11', 'yeye', 789, '2021-03'),
(7, '2020-03-11', 'rr', -5, '2020-03'),
(8, '2018-05-12', '123123', 1231.23, '2018-05');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_income`
--

CREATE TABLE `finance_fundoperation_income` (
  `income_id` int(11) NOT NULL,
  `income_code` int(11) NOT NULL,
  `income_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_income`
--

INSERT INTO `finance_fundoperation_income` (`income_id`, `income_code`, `income_type`) VALUES
(16, 1233, 'Community Tax'),
(19, 678, 'Local tax'),
(21, 6533, 'Internal Revenue Allotment'),
(23, 234, 'Real Property Tax'),
(24, 567, 'Service Income');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_incomeset`
--

CREATE TABLE `finance_fundoperation_incomeset` (
  `income_id` int(11) NOT NULL,
  `income_setid` int(11) NOT NULL,
  `income_amount` double NOT NULL,
  `income_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_incomeset`
--

INSERT INTO `finance_fundoperation_incomeset` (`income_id`, `income_setid`, `income_amount`, `income_year`) VALUES
(16, 8, 3432, '2015'),
(19, 10, 343, '2015'),
(23, 12, 9000, '2020'),
(16, 13, 800, '2014'),
(24, 14, 8990, '2014');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_mooe`
--

CREATE TABLE `finance_fundoperation_mooe` (
  `mooe_id` int(11) NOT NULL,
  `mooe_code` int(11) NOT NULL,
  `mooe_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_mooe`
--

INSERT INTO `finance_fundoperation_mooe` (`mooe_id`, `mooe_code`, `mooe_type`) VALUES
(7, 234, 'Travelling Expense'),
(8, 980, 'Training Expense');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_mooeset`
--

CREATE TABLE `finance_fundoperation_mooeset` (
  `mooe_id` int(11) NOT NULL,
  `mooe_setid` int(11) NOT NULL,
  `mooe_amount` double NOT NULL,
  `mooe_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_mooeset`
--

INSERT INTO `finance_fundoperation_mooeset` (`mooe_id`, `mooe_setid`, `mooe_amount`, `mooe_year`) VALUES
(8, 1, 3565, '2014'),
(7, 3, 3434, '2019'),
(7, 4, 1200, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_noe`
--

CREATE TABLE `finance_fundoperation_noe` (
  `noe_id` int(11) NOT NULL,
  `noe_type` varchar(100) NOT NULL,
  `noe_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_noe`
--

INSERT INTO `finance_fundoperation_noe` (`noe_id`, `noe_type`, `noe_code`) VALUES
(1, 'Barangay Development Fund', 1000),
(2, 'Sangguniang Kabataan Fund', 2000),
(3, 'Senior Citizen Persons With Disability Fund', 3000),
(4, 'Barangay Council For The Protection Of Children Fund', 4000),
(5, 'Barangay Disaster Risk Reduction Mangement Fund', 5000),
(6, 'Barangay Annual Fund', 6000),
(7, 'Youth Investment Plan', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_noeset`
--

CREATE TABLE `finance_fundoperation_noeset` (
  `noe_id` int(11) NOT NULL,
  `noe_setid` int(11) NOT NULL,
  `noe_amount` double NOT NULL,
  `noe_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_noeset`
--

INSERT INTO `finance_fundoperation_noeset` (`noe_id`, `noe_setid`, `noe_amount`, `noe_year`) VALUES
(1, 2, 5656, '2016'),
(2, 3, 654, '2019'),
(1, 4, 99, '2019'),
(2, 5, 1, '2019'),
(1, 6, 1, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_ps`
--

CREATE TABLE `finance_fundoperation_ps` (
  `service_id` int(11) NOT NULL,
  `service_code` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_ps`
--

INSERT INTO `finance_fundoperation_ps` (`service_id`, `service_code`, `service_type`) VALUES
(9, 346, 'Honoraria');

-- --------------------------------------------------------

--
-- Table structure for table `finance_fundoperation_psset`
--

CREATE TABLE `finance_fundoperation_psset` (
  `service_id` int(11) NOT NULL,
  `service_setid` int(11) NOT NULL,
  `service_position` varchar(100) NOT NULL,
  `service_amount` double NOT NULL,
  `service_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finance_fundoperation_psset`
--

INSERT INTO `finance_fundoperation_psset` (`service_id`, `service_setid`, `service_position`, `service_amount`, `service_year`) VALUES
(9, 14, 'fgfgh', 65754, '2015');

-- --------------------------------------------------------

--
-- Table structure for table `form_release`
--

CREATE TABLE `form_release` (
  `release_ID` int(11) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `form_ID` int(11) UNSIGNED DEFAULT NULL,
  `purpose_ID` int(11) UNSIGNED DEFAULT NULL,
  `release_Date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `form_release`
--

INSERT INTO `form_release` (`release_ID`, `res_ID`, `form_ID`, `purpose_ID`, `release_Date`) VALUES
(1, 1, 1, 1, '2024-10-21 23:53:35'),
(2, 1, 1, 1, '2024-10-27 08:58:04'),
(3, 1, 1, 1, '2024-10-27 08:58:48'),
(4, 1, 1, 1, '2024-10-27 09:00:45'),
(5, 1, 1, 1, '2024-10-27 09:02:07'),
(6, 1, 1, 1, '2024-10-27 09:02:14'),
(7, 1, 1, 1, '2024-10-27 09:02:17'),
(8, 1, 1, 1, '2024-10-27 09:02:27'),
(9, 1, 1, 1, '2024-10-27 09:03:19'),
(10, 1, 1, 1, '2024-10-27 09:03:22'),
(11, 1, 1, 1, '2024-10-27 09:05:07'),
(12, 1, 1, 1, '2024-10-27 09:05:17'),
(13, 1, 1, 1, '2024-10-27 09:09:45'),
(14, 1, 1, 1, '2024-10-27 09:12:16'),
(15, 1, 1, 1, '2024-10-27 09:14:23'),
(16, 1, 1, 1, '2024-10-27 09:14:40'),
(17, 1, 1, 1, '2024-10-27 09:14:44'),
(18, 1, 1, 1, '2024-10-27 09:15:29'),
(19, 1, 1, 1, '2024-10-27 09:16:01'),
(20, 1, 1, 1, '2024-10-27 09:16:04'),
(21, 1, 1, 1, '2024-10-27 09:16:10'),
(22, 1, 1, 1, '2024-10-27 09:16:24'),
(23, 1, 1, 1, '2024-10-27 09:16:28'),
(24, 1, 1, 1, '2024-10-27 09:16:35'),
(25, 1, 1, 1, '2024-10-27 09:17:17'),
(26, 1, 1, 1, '2024-10-27 09:30:07'),
(27, 1, 1, 1, '2024-10-27 09:32:23'),
(28, 1, 1, 1, '2024-10-27 09:51:35'),
(29, 1, 1, 1, '2024-10-27 10:04:23'),
(30, 1, 1, 1, '2024-10-27 10:09:05'),
(31, 1, 1, 1, '2024-10-27 10:09:33'),
(32, 1, 1, 1, '2024-10-27 10:36:03'),
(33, 1, 1, 1, '2024-10-27 10:51:39'),
(34, 1, 1, 1, '2024-10-27 10:52:39'),
(35, 1, 1, 1, '2024-10-27 10:55:53'),
(36, 1, 1, 1, '2024-10-27 10:56:16'),
(37, 1, 1, 1, '2024-10-27 10:57:05'),
(38, 1, 1, 1, '2024-10-27 10:57:12'),
(39, 1, 1, 1, '2024-10-27 10:57:25'),
(40, 1, 1, 1, '2024-10-27 11:03:40'),
(41, 1, 1, 1, '2024-10-27 11:04:12'),
(42, 1, 1, 1, '2024-10-27 11:07:06'),
(43, 1, 1, 1, '2024-10-27 11:07:17'),
(44, 1, 1, 1, '2024-10-27 11:09:29'),
(45, 1, 1, 1, '2024-10-27 11:10:57'),
(46, 1, 1, 1, '2024-10-27 11:13:21'),
(47, 1, 1, 1, '2024-10-27 11:13:34'),
(48, 2, 1, 1, '2024-10-27 11:15:27'),
(49, 2, 1, 1, '2024-10-27 11:15:48'),
(50, 1, 1, 1, '2024-10-29 10:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `form_request`
--

CREATE TABLE `form_request` (
  `res_ID` int(11) NOT NULL,
  `purpose_ID` int(11) DEFAULT NULL,
  `request_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `form_request`
--

INSERT INTO `form_request` (`res_ID`, `purpose_ID`, `request_Date`) VALUES
(1, 5, '2018-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `internal_notification`
--

CREATE TABLE `internal_notification` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `notification_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'entypo-info',
  `href_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `onclick` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `is_read` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_drugs`
--

CREATE TABLE `inventory_drugs` (
  `drug_ID` int(11) UNSIGNED NOT NULL,
  `drug_Name` varchar(250) DEFAULT NULL,
  `unit_ID` int(11) UNSIGNED DEFAULT NULL,
  `drug_Qnty` int(11) UNSIGNED DEFAULT NULL,
  `drug_Description` varchar(250) DEFAULT NULL,
  `drug_Expiration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory_drugs`
--

INSERT INTO `inventory_drugs` (`drug_ID`, `drug_Name`, `unit_ID`, `drug_Qnty`, `drug_Description`, `drug_Expiration_Date`) VALUES
(10, 'Medicol', NULL, 1000, 'Gamot sa error', '2018-03-24'),
(11, 'Biogesic', NULL, 2000, 'sa ulo', '2018-03-11'),
(12, 'Yacapsul', NULL, 2000, 'shdaj', '2018-03-27'),
(13, 'kisspirin', NULL, 90000, 'dhasgd', '2018-03-24'),
(16, 'asd', NULL, 5000, 'gamot sa sakit', '2018-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_drugs_release`
--

CREATE TABLE `inventory_drugs_release` (
  `drgrelease_ID` int(11) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `drug_ID` int(11) UNSIGNED DEFAULT NULL,
  `drgrelease_Qnty` int(11) UNSIGNED DEFAULT NULL,
  `drgrelease_Date_Record` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory_drugs_release`
--

INSERT INTO `inventory_drugs_release` (`drgrelease_ID`, `res_ID`, `drug_ID`, `drgrelease_Qnty`, `drgrelease_Date_Record`) VALUES
(10, 1, 2, 23, '2018-03-08 00:02:11'),
(11, 9, 4, 12, '2018-03-08 00:02:41'),
(12, 13, 1, 12, '2018-03-08 00:03:15'),
(13, 7, 9, 3, '2018-03-12 21:16:51'),
(14, 11, 9, 1, '2018-03-12 21:17:11'),
(15, 9, 10, 2, '2018-03-12 23:46:38'),
(16, 1, 13, 1, '2018-03-13 01:06:09'),
(17, 0, 11, 2232, '2018-03-13 19:12:19'),
(18, 0, 11, 2232, '2018-03-13 19:12:59'),
(19, 0, 10, 12, '2018-03-13 19:13:09'),
(20, 0, 10, 12, '2018-03-13 19:31:33'),
(21, 1, 10, 12, '2018-03-13 19:31:54'),
(22, 13, 10, 2, '2018-03-13 23:01:07'),
(23, 4, 12, 2, '2018-03-13 23:02:32'),
(24, 3, 16, 1, '2018-03-16 19:16:35'),
(25, 4, 10, 32, '2018-03-17 03:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `languageName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isLocked` int(1) NOT NULL,
  `isActive` int(1) NOT NULL DEFAULT 1,
  `flag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direction` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'LTR',
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `languageName`, `isLocked`, `isActive`, `flag`, `direction`, `language_code`) VALUES
(1, 'English (en)', 1, 1, 'us', 'LTR', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `language_content`
--

CREATE TABLE `language_content` (
  `id` int(11) NOT NULL,
  `languageKeyId` int(11) NOT NULL,
  `languageId` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_locked` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language_content`
--

INSERT INTO `language_content` (`id`, `languageKeyId`, `languageId`, `content`, `is_locked`) VALUES
(1, 1, 1, 'home', 1),
(2, 3, 1, 'banned words / urls', 1),
(3, 4, 1, 'admin users', 1),
(4, 5, 1, 'banned ips', 1),
(5, 6, 1, 'site settings', 1),
(6, 7, 1, 'languages', 1),
(7, 8, 1, 'logout', 1),
(8, 9, 1, 'Language Details', 1),
(9, 10, 1, 'Are you sure you want to remove this IP ban?', 1),
(10, 11, 1, 'Are you sure you want to update the status of this user?', 1),
(11, 12, 1, 'view', 1),
(12, 13, 1, 'disable', 1),
(13, 14, 1, 'enable', 1),
(14, 15, 1, 'Are you sure you want to remove this banned word?', 1),
(15, 16, 1, 'IP address appears to be invalid, please try again.', 1),
(16, 17, 1, 'IP address is already in the blocked list.', 1),
(17, 18, 1, 'There was a problem inserting/updating the record, please try again later.', 1),
(18, 19, 1, 'Banned word is already in the list.', 1),
(19, 20, 1, 'Language already in the system.', 1),
(20, 21, 1, 'Username must be between 6-16 characters long.', 1),
(21, 22, 1, 'Password must be between 6-16 characters long.', 1),
(22, 23, 1, 'Please enter the firstname.', 1),
(23, 24, 1, 'Please enter the lastname.', 1),
(24, 25, 1, 'Please enter the email address.', 1),
(25, 26, 1, 'The email address you entered appears to be invalid.', 1),
(26, 17482, 1, 'copyright', 1),
(27, 28, 1, 'Support', 1),
(28, 30, 1, 'Admin Panel', 1),
(29, 31, 1, 'Logged in as', 1),
(30, 32, 1, 'To ban an IP Address <a href=\"#\" onClick=\"displayBannedIpPopup(); return false;\">click here</a> or delete any existing ones below', 1),
(31, 33, 1, 'Add banned IP address', 1),
(32, 34, 1, 'remove', 1),
(33, 35, 1, 'IP Address', 1),
(34, 36, 1, 'Ban From', 1),
(35, 37, 1, 'Notes', 1),
(36, 38, 1, 'Add Banned IP', 1),
(37, 39, 1, 'There was an error submitting the form, please try again later.', 1),
(38, 40, 1, 'Enter IP Address details', 1),
(39, 41, 1, 'To ban an word within the original url <a href=\"#\" onClick=\"displayBannedWordsPopup(); return false;\">click here</a> or delete any existing ones below', 1),
(40, 42, 1, 'Add banned word', 1),
(41, 43, 1, 'Banned Word', 1),
(42, 44, 1, 'Date Banned', 1),
(43, 45, 1, 'Ban Notes', 1),
(44, 46, 1, 'Action', 1),
(45, 47, 1, 'Enter Banned Word details', 1),
(46, 48, 1, 'Use the main navigation above to manage this site. A quick overview of the site can be seen below', 1),
(47, 49, 1, 'New Files (last 14 days)', 1),
(48, 50, 1, 'New Files (last 12 months)', 1),
(49, 51, 1, 'Urls', 1),
(50, 52, 1, 'active', 1),
(51, 53, 1, 'disabled', 1),
(52, 54, 1, 'spam', 1),
(53, 55, 1, 'expired', 1),
(54, 56, 1, 'Total active files', 1),
(55, 57, 1, 'Total disabled files', 1),
(56, 58, 1, 'Total downloads to all files', 1),
(57, 59, 1, 'Item Name', 1),
(58, 60, 1, 'Value', 1),
(59, 61, 1, 'Manage the available content for the selected language. Click on any of the \'Translated Content\' cells to edit the value.', 1),
(60, 62, 1, 'Select a language to manage or <a href=\'#\' onClick=\'displayAddLanguagePopup(); return false;\'>add a new one here</a>. NOTE Once translated, to set the site default language go to the <a href=\'settings.php\'>site settings</a> area.', 1),
(61, 63, 1, 'Language Key', 1),
(62, 64, 1, 'Default Content', 1),
(63, 65, 1, 'Translated Content', 1),
(64, 66, 1, 'Error Changes to this section can not be made within demo mode.', 1),
(65, 67, 1, 'Manage other languages', 1),
(66, 68, 1, 'There is no available content.', 1),
(67, 69, 1, 'select language', 1),
(68, 70, 1, 'Add Language', 1),
(69, 71, 1, 'Language Name', 1),
(70, 72, 1, 'Click on any of the items within the \"Config Value\" column below to edit', 1),
(71, 73, 1, 'Group', 1),
(72, 74, 1, 'Config Description', 1),
(73, 75, 1, 'Config Value', 1),
(74, 76, 1, 'Filter results', 1),
(75, 77, 1, 'Double click on any of the users below to edit the account information or <a href=\"#\" onClick=\"displayUserPopup(); return false;\">click here to add a new user</a>', 1),
(76, 78, 1, 'Add new user', 1),
(77, 79, 1, 'Username', 1),
(78, 19498, 1, 'Email Address', 1),
(79, 17447, 1, 'account type', 1),
(80, 82, 1, 'Last Login', 1),
(81, 17446, 1, 'account status', 1),
(82, 84, 1, 'Password', 1),
(83, 85, 1, 'Title', 1),
(84, 86, 1, 'Firstname', 1),
(85, 87, 1, 'Lastname', 1),
(86, 88, 1, 'Enter user details', 1),
(87, 17487, 1, 'test', 1),
(88, 515, 1, 'Main Navigation', 1),
(89, 19411, 1, 'hour', 1),
(90, 1427, 1, 'dat', 1),
(91, 617, 1, 'Fast and instant downloading!', 1),
(92, 618, 1, 'Our premium members benefit from no waiting time and direct downloads for all of their files. Unlike other file hosts we don\'t limit the transfer speed of our downloads.', 1),
(93, 616, 1, 'We supply you with all the tools necessary to easily share your files. Use our pre-generated html code to link from your website or post directly to Facebook or Twitter.', 1),
(94, 1429, 1, 'Publicly Accessible (using ~s on url)', 1),
(95, 108, 1, 'please wait', 1),
(96, 109, 1, 'There was a general site error, please try again later.', 1),
(97, 110, 1, 'Error', 1),
(98, 615, 1, 'Share your files with everyone!', 1),
(99, 603, 1, 'Could not load server details.', 1),
(100, 604, 1, 'FTP Host', 1),
(101, 605, 1, 'FTP Port', 1),
(102, 606, 1, 'Please specify the server ftp host.', 1),
(103, 607, 1, 'By File Server', 1),
(104, 608, 1, 'view files', 1),
(105, 609, 1, 'By User', 1),
(106, 19364, 1, 'ADMIN AREA', 1),
(107, 611, 1, 'system expired', 1),
(108, 612, 1, 'Upload, share and manage your files for free.', 1),
(109, 613, 1, 'Store and manage all your files!', 1),
(110, 614, 1, 'Upload multiple files at once and keep them forever on this site. If you\'re using FireFox or Chrome, you can simply drag &amp; drop your files to begin uploading.', 1),
(111, 567, 1, 'error, file, upload, script', 1),
(112, 568, 1, 'Choose free or premium download', 1),
(113, 569, 1, 'slow download', 1),
(114, 570, 1, 'wait', 1),
(115, 571, 1, 'sec', 1),
(116, 572, 1, 'FAST INSTANT DOWNLOAD', 1),
(117, 573, 1, 'download type', 1),
(118, 575, 1, 'download speed', 1),
(119, 576, 1, 'maximum', 1),
(120, 577, 1, 'waiting time', 1),
(121, 578, 1, 'seconds', 1),
(122, 579, 1, 'instant', 1),
(123, 580, 1, 'site advertising', 1),
(124, 581, 1, 'yes', 1),
(125, 582, 1, 'none', 1),
(126, 583, 1, 'how long to keep files', 1),
(127, 584, 1, 'forever', 1),
(128, 585, 1, 'Maximum file upload size', 1),
(129, 586, 1, 'interface to manage uploaded files', 1),
(130, 587, 1, 'not available', 1),
(131, 588, 1, 'available', 1),
(132, 589, 1, 'fast download even when servers are busy', 1),
(133, 1849, 1, '', 1),
(134, 561, 1, 'Uploaded file statistics', 1),
(135, 562, 1, 'stats, statistics, unique, visitors, hits, file, upload', 1),
(136, 563, 1, 'upgrade now for instant access', 1),
(137, 564, 1, 'downloading', 1),
(138, 565, 1, 'Error', 1),
(139, 566, 1, 'Error', 1),
(140, 552, 1, 'Please enter your lastname', 1),
(141, 553, 1, 'Report Abuse', 1),
(142, 554, 1, 'Report Abuse or Copyright Infringement', 1),
(143, 555, 1, 'report, abuse, copyright, infringement, file, hosting', 1),
(144, 556, 1, 'Please use the following form to report any copyright infringements ensuring you supply all the following information<br/><br/>\n<ul class=\'formattedList\'>\n<li>A physical or electronic signature of the copyright owner or the person authorized to act on its behalf;</li>\n<li>A description of the copyrighted work claimed to have been infringed;</li>\n<li>A description of the infringing material and information reasonably sufficient to permit File Upload Script to locate the material;</li>\n<li>Your contact information, including your address, telephone number, and email;</li>\n<li>A statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and</li>\n<li>A statement that the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.</li>\n</ul>', 1),
(145, 557, 1, 'submit report', 1),
(146, 558, 1, 'Paid Expiry Y-m-d (optional)', 1),
(147, 559, 1, 'Account expiry date is invalid. It should be in the format YYYY-mm-dd', 1),
(148, 153, 1, 'visits', 1),
(149, 154, 1, 'created', 1),
(150, 155, 1, 'Visitors', 1),
(151, 156, 1, 'Countries', 1),
(152, 157, 1, 'Top Referrers', 1),
(153, 158, 1, 'Browsers', 1),
(154, 159, 1, 'Operating Systems', 1),
(155, 160, 1, 'last 24 hours', 1),
(156, 161, 1, 'last 7 days', 1),
(157, 162, 1, 'last 30 days', 1),
(158, 163, 1, 'last 12 months', 1),
(159, 164, 1, 'Hour', 1),
(160, 165, 1, 'Visits', 1),
(161, 166, 1, 'Date', 1),
(162, 167, 1, 'Total visits', 1),
(163, 168, 1, 'Percentage', 1),
(164, 169, 1, 'Day', 1),
(165, 170, 1, 'Month', 1),
(166, 171, 1, 'Country', 1),
(167, 172, 1, 'Site', 1),
(168, 173, 1, 'Browser', 1),
(169, 174, 1, 'Operating System', 1),
(170, 175, 1, 'Andorra', 1),
(171, 176, 1, 'United Arab Emirates', 1),
(172, 177, 1, 'Afghanistan', 1),
(173, 178, 1, 'Antigua And Barbuda', 1),
(174, 179, 1, 'Anguilla', 1),
(175, 180, 1, 'Albania', 1),
(176, 181, 1, 'Armenia', 1),
(177, 182, 1, 'Netherlands Antilles', 1),
(178, 183, 1, 'Angola', 1),
(179, 184, 1, 'Antarctica', 1),
(180, 185, 1, 'Argentina', 1),
(181, 186, 1, 'American Samoa', 1),
(182, 187, 1, 'Austria', 1),
(183, 188, 1, 'Australia', 1),
(184, 189, 1, 'Aruba', 1),
(185, 190, 1, 'Azerbaijan', 1),
(186, 191, 1, 'Bosnia And Herzegovina', 1),
(187, 192, 1, 'Barbados', 1),
(188, 193, 1, 'Bangladesh', 1),
(189, 194, 1, 'Belgium', 1),
(190, 195, 1, 'Burkina Faso', 1),
(191, 196, 1, 'Bulgaria', 1),
(192, 197, 1, 'Bahrain', 1),
(193, 198, 1, 'Burundi', 1),
(194, 199, 1, 'Benin', 1),
(195, 200, 1, 'Bermuda', 1),
(196, 201, 1, 'Brunei Darussalam', 1),
(197, 202, 1, 'Bolivia', 1),
(198, 203, 1, 'Brazil', 1),
(199, 204, 1, 'Bahamas', 1),
(200, 205, 1, 'Bhutan', 1),
(201, 206, 1, 'Botswana', 1),
(202, 207, 1, 'Belarus', 1),
(203, 208, 1, 'Belize', 1),
(204, 209, 1, 'Canada', 1),
(205, 210, 1, 'The Democratic Republic Of The Congo', 1),
(206, 211, 1, 'Central African Republic', 1),
(207, 212, 1, 'Congo', 1),
(208, 213, 1, 'Switzerland', 1),
(209, 214, 1, 'Cote Divoire', 1),
(210, 215, 1, 'Cook Islands', 1),
(211, 216, 1, 'Chile', 1),
(212, 217, 1, 'Cameroon', 1),
(213, 218, 1, 'China', 1),
(214, 219, 1, 'Colombia', 1),
(215, 220, 1, 'Costa Rica', 1),
(216, 221, 1, 'Serbia And Montenegro', 1),
(217, 222, 1, 'Cuba', 1),
(218, 223, 1, 'Cape Verde', 1),
(219, 224, 1, 'Cyprus', 1),
(220, 225, 1, 'Czech Republic', 1),
(221, 226, 1, 'Germany', 1),
(222, 227, 1, 'Djibouti', 1),
(223, 228, 1, 'Denmark', 1),
(224, 229, 1, 'Dominica', 1),
(225, 230, 1, 'Dominican Republic', 1),
(226, 231, 1, 'Algeria', 1),
(227, 232, 1, 'Ecuador', 1),
(228, 233, 1, 'Estonia', 1),
(229, 234, 1, 'Egypt', 1),
(230, 235, 1, 'Eritrea', 1),
(231, 236, 1, 'Spain', 1),
(232, 237, 1, 'Ethiopia', 1),
(233, 238, 1, 'European Union', 1),
(234, 239, 1, 'Finland', 1),
(235, 240, 1, 'Fiji', 1),
(236, 241, 1, 'Falkland Islands (Malvinas)', 1),
(237, 242, 1, 'Federated States Of Micronesia', 1),
(238, 243, 1, 'Faroe Islands', 1),
(239, 244, 1, 'France', 1),
(240, 245, 1, 'Gabon', 1),
(241, 246, 1, 'United Kingdom', 1),
(242, 247, 1, 'Grenada', 1),
(243, 248, 1, 'Georgia', 1),
(244, 249, 1, 'French Guiana', 1),
(245, 250, 1, 'Ghana', 1),
(246, 251, 1, 'Gibraltar', 1),
(247, 252, 1, 'Greenland', 1),
(248, 253, 1, 'Gambia', 1),
(249, 254, 1, 'Guinea', 1),
(250, 255, 1, 'Guadeloupe', 1),
(251, 256, 1, 'Equatorial Guinea', 1),
(252, 257, 1, 'Greece', 1),
(253, 258, 1, 'South Georgia And The South Sandwich Islands', 1),
(254, 259, 1, 'Guatemala', 1),
(255, 260, 1, 'Guam', 1),
(256, 261, 1, 'Guinea-Bissau', 1),
(257, 262, 1, 'Guyana', 1),
(258, 263, 1, 'Hong Kong', 1),
(259, 264, 1, 'Honduras', 1),
(260, 265, 1, 'Croatia', 1),
(261, 266, 1, 'Haiti', 1),
(262, 267, 1, 'Hungary', 1),
(263, 268, 1, 'Indonesia', 1),
(264, 269, 1, 'Ireland', 1),
(265, 270, 1, 'Israel', 1),
(266, 271, 1, 'India', 1),
(267, 272, 1, 'British Indian Ocean Territory', 1),
(268, 273, 1, 'Iraq', 1),
(269, 274, 1, 'Islamic Republic Of Iran', 1),
(270, 275, 1, 'Iceland', 1),
(271, 276, 1, 'Italy', 1),
(272, 277, 1, 'Jamaica', 1),
(273, 278, 1, 'Jordan', 1),
(274, 279, 1, 'Japan', 1),
(275, 280, 1, 'Kenya', 1),
(276, 281, 1, 'Kyrgyzstan', 1),
(277, 282, 1, 'Cambodia', 1),
(278, 283, 1, 'Kiribati', 1),
(279, 284, 1, 'Comoros', 1),
(280, 285, 1, 'Saint Kitts And Nevis', 1),
(281, 286, 1, 'Republic Of Korea', 1),
(282, 287, 1, 'Kuwait', 1),
(283, 288, 1, 'Cayman Islands', 1),
(284, 289, 1, 'Kazakhstan', 1),
(285, 290, 1, 'Lao Peoples Democratic Republic', 1),
(286, 291, 1, 'Lebanon', 1),
(287, 292, 1, 'Saint Lucia', 1),
(288, 293, 1, 'Liechtenstein', 1),
(289, 294, 1, 'Sri Lanka', 1),
(290, 295, 1, 'Liberia', 1),
(291, 296, 1, 'Lesotho', 1),
(292, 297, 1, 'Lithuania', 1),
(293, 298, 1, 'Luxembourg', 1),
(294, 299, 1, 'Latvia', 1),
(295, 300, 1, 'Libyan Arab Jamahiriya', 1),
(296, 301, 1, 'Morocco', 1),
(297, 302, 1, 'Monaco', 1),
(298, 303, 1, 'Republic Of Moldova', 1),
(299, 304, 1, 'Madagascar', 1),
(300, 305, 1, 'Marshall Islands', 1),
(301, 306, 1, 'The Former Yugoslav Republic Of Macedonia', 1),
(302, 307, 1, 'Mali', 1),
(303, 308, 1, 'Myanmar', 1),
(304, 309, 1, 'Mongolia', 1),
(305, 310, 1, 'Macao', 1),
(306, 311, 1, 'Northern Mariana Islands', 1),
(307, 312, 1, 'Martinique', 1),
(308, 313, 1, 'Mauritania', 1),
(309, 314, 1, 'Malta', 1),
(310, 315, 1, 'Mauritius', 1),
(311, 316, 1, 'Maldives', 1),
(312, 317, 1, 'Malawi', 1),
(313, 318, 1, 'Mexico', 1),
(314, 319, 1, 'Malaysia', 1),
(315, 320, 1, 'Mozambique', 1),
(316, 321, 1, 'Namibia', 1),
(317, 322, 1, 'New Caledonia', 1),
(318, 323, 1, 'Niger', 1),
(319, 324, 1, 'Norfolk Island', 1),
(320, 325, 1, 'Nigeria', 1),
(321, 326, 1, 'Nicaragua', 1),
(322, 327, 1, 'Netherlands', 1),
(323, 328, 1, 'Norway', 1),
(324, 329, 1, 'Nepal', 1),
(325, 330, 1, 'Nauru', 1),
(326, 331, 1, 'Niue', 1),
(327, 332, 1, 'New Zealand', 1),
(328, 333, 1, 'Oman', 1),
(329, 334, 1, 'Panama', 1),
(330, 335, 1, 'Peru', 1),
(331, 336, 1, 'French Polynesia', 1),
(332, 337, 1, 'Papua New Guinea', 1),
(333, 338, 1, 'Philippines', 1),
(334, 339, 1, 'Pakistan', 1),
(335, 340, 1, 'Poland', 1),
(336, 341, 1, 'Puerto Rico', 1),
(337, 342, 1, 'Palestinian Territory', 1),
(338, 343, 1, 'Portugal', 1),
(339, 344, 1, 'Palau', 1),
(340, 345, 1, 'Paraguay', 1),
(341, 346, 1, 'Qatar', 1),
(342, 347, 1, 'Reunion', 1),
(343, 348, 1, 'Romania', 1),
(344, 349, 1, 'Russian Federation', 1),
(345, 350, 1, 'Rwanda', 1),
(346, 351, 1, 'Saudi Arabia', 1),
(347, 352, 1, 'Solomon Islands', 1),
(348, 353, 1, 'Seychelles', 1),
(349, 354, 1, 'Sudan', 1),
(350, 355, 1, 'Sweden', 1),
(351, 356, 1, 'Singapore', 1),
(352, 357, 1, 'Slovenia', 1),
(353, 358, 1, 'Slovakia (Slovak Republic)', 1),
(354, 359, 1, 'Sierra Leone', 1),
(355, 360, 1, 'San Marino', 1),
(356, 361, 1, 'Senegal', 1),
(357, 362, 1, 'Somalia', 1),
(358, 363, 1, 'Suriname', 1),
(359, 364, 1, 'Sao Tome And Principe', 1),
(360, 365, 1, 'El Salvador', 1),
(361, 366, 1, 'Syrian Arab Republic', 1),
(362, 367, 1, 'Swaziland', 1),
(363, 368, 1, 'Chad', 1),
(364, 369, 1, 'French Southern Territories', 1),
(365, 370, 1, 'Togo', 1),
(366, 371, 1, 'Thailand', 1),
(367, 372, 1, 'Tajikistan', 1),
(368, 373, 1, 'Tokelau', 1),
(369, 374, 1, 'Timor-Leste', 1),
(370, 375, 1, 'Turkmenistan', 1),
(371, 376, 1, 'Tunisia', 1),
(372, 377, 1, 'Tonga', 1),
(373, 378, 1, 'Turkey', 1),
(374, 379, 1, 'Trinidad And Tobago', 1),
(375, 380, 1, 'Tuvalu', 1),
(376, 381, 1, 'Taiwan Province Of China', 1),
(377, 382, 1, 'United Republic Of Tanzania', 1),
(378, 383, 1, 'Ukraine', 1),
(379, 384, 1, 'Uganda', 1),
(380, 385, 1, 'United States', 1),
(381, 386, 1, 'Uruguay', 1),
(382, 387, 1, 'Uzbekistan', 1),
(383, 388, 1, 'Holy See (Vatican City State)', 1),
(384, 389, 1, 'Saint Vincent And The Grenadines', 1),
(385, 390, 1, 'Venezuela', 1),
(386, 391, 1, 'Virgin Islands', 1),
(387, 392, 1, 'Virgin Islands', 1),
(388, 393, 1, 'Viet Nam', 1),
(389, 394, 1, 'Vanuatu', 1),
(390, 395, 1, 'Samoa', 1),
(391, 396, 1, 'Yemen', 1),
(392, 397, 1, 'Mayotte', 1),
(393, 398, 1, 'Serbia And Montenegro (Formally Yugoslavia)', 1),
(394, 399, 1, 'South Africa', 1),
(395, 400, 1, 'Zambia', 1),
(396, 401, 1, 'Zimbabwe', 1),
(397, 402, 1, 'Unknown', 1),
(398, 17403, 1, 'Art', 1),
(399, 410, 1, 'Registration completed', 1),
(400, 411, 1, 'Your registration has been completed.', 1),
(401, 412, 1, 'registration, completed, file, hosting, site', 1),
(402, 413, 1, 'Thank you for registering!', 1),
(403, 414, 1, 'We\'ve sent an email to your registered email address with your access password. Please check your spam filters to ensure emails from this site get through. ', 1),
(404, 415, 1, 'Emails from this site are sent from ', 1),
(405, 416, 1, 'Login', 1),
(406, 417, 1, 'Login to your account', 1),
(407, 418, 1, 'login, register, short url', 1),
(408, 419, 1, 'Your username and password are invalid', 1),
(409, 420, 1, 'Account Login', 1),
(410, 421, 1, 'Please enter your username and password below to login.', 1),
(411, 422, 1, 'Your account username. 6 characters or more and alpha numeric.', 1),
(412, 423, 1, 'Your account password. Min 6 characters, alpha numeric, no spaces.', 1),
(413, 551, 1, 'Click here to browse your files...', 1),
(414, 16601, 1, 'share, track, image, picture, pic, img, hosting, sharing, upload, storage, site, website', 1),
(415, 550, 1, 'Please enter your firstname', 1),
(416, 428, 1, 'Please enter your username', 1),
(417, 17594, 1, 'Account Home', 1),
(418, 17595, 1, 'Your Account Home', 1),
(419, 20578, 1, 'next', 1),
(420, 434, 1, 'FAQ', 1),
(421, 435, 1, 'Frequently Asked Questions', 1),
(422, 436, 1, 'faq, frequently, asked, questions, file, hosting, site', 1),
(423, 437, 1, 'Please enter your password', 1),
(424, 590, 1, 'estimated Download time', 1),
(425, 511, 1, 'Report Abuse', 1),
(426, 441, 1, 'Register Account', 1),
(427, 19369, 1, 'Account Settings', 1),
(428, 16599, 1, 'Upload, share, track, manage your images in one simple to use image host.', 1),
(429, 1428, 1, 'File Statistics', 1),
(430, 446, 1, 'info', 1),
(431, 447, 1, 'Email Confirm', 1),
(432, 19413, 1, 'minute', 1),
(433, 449, 1, 'Created/Last Visited', 1),
(434, 450, 1, 'Status', 1),
(435, 19478, 1, 'options', 1),
(436, 17472, 1, 'upload file', 1),
(437, 453, 1, 'Register', 1),
(438, 454, 1, 'Register for an account', 1),
(439, 455, 1, 'register, account, short, url, user', 1),
(440, 17483, 1, 'created by ', 1),
(441, 457, 1, 'File has been removed.', 1),
(442, 18639, 1, 'uploaded', 1),
(443, 459, 1, 'downloads', 1),
(444, 460, 1, 'download now', 1),
(445, 461, 1, 'loading file, please wait', 1),
(446, 462, 1, 'Download File', 1),
(447, 463, 1, 'Download file', 1),
(448, 464, 1, 'download, file, upload, mp3, avi, zip', 1),
(449, 465, 1, 'Your Files', 1),
(450, 466, 1, 'Download Url', 1),
(451, 467, 1, 'Uploaded/Last Visited', 1),
(452, 468, 1, 'Download Url/Filename', 1),
(453, 469, 1, 'Total Active Files', 1),
(454, 470, 1, 'Total Inactive Files', 1),
(455, 471, 1, 'Total Downloads', 1),
(456, 472, 1, 'user removed', 1),
(457, 473, 1, 'files', 1),
(458, 474, 1, 'Manage Files', 1),
(459, 475, 1, 'Filter Results', 1),
(460, 476, 1, 'Show Disabled', 1),
(461, 477, 1, 'Export File Data', 1),
(462, 478, 1, 'File has been removed by the site administrator.', 1),
(463, 479, 1, 'Show Removed', 1),
(464, 480, 1, 'admin removed', 1),
(465, 481, 1, 'Delete File', 1),
(466, 482, 1, 'Delete File', 1),
(467, 483, 1, 'delete, remove, file', 1),
(468, 484, 1, 'Delete File', 1),
(469, 485, 1, 'Please confirm whether to delete the file below.', 1),
(470, 486, 1, 'Cancel', 1),
(471, 17488, 1, 'Switch site language to', 1),
(472, 20574, 1, 'Download', 1),
(473, 489, 1, 'Terms and Conditions', 1),
(474, 490, 1, 'Terms and Conditions', 1),
(475, 491, 1, 'terms, and, conditions, file, hosting, site', 1),
(476, 19374, 1, 'Image Manager', 1),
(477, 493, 1, 'Extend Account', 1),
(478, 494, 1, 'Extend Your Account', 1),
(479, 496, 1, 'Payment Complete', 1),
(480, 497, 1, 'Payment Complete', 1),
(481, 498, 1, 'payment, complete, file, hosting, site', 1),
(482, 499, 1, 'premium account benefits', 1),
(483, 17451, 1, 'account benefits', 1),
(484, 501, 1, ' Information', 1),
(485, 502, 1, 'Information about ', 1),
(486, 503, 1, ', share, information, file, upload, download, site', 1),
(487, 504, 1, 'download urls', 1),
(488, 505, 1, 'statistics', 1),
(489, 506, 1, 'share', 1),
(490, 507, 1, 'other options', 1),
(491, 508, 1, 'Enter the details of the file (as above) you wish to report.', 1),
(492, 591, 1, 'File can not be located, please try again later.', 1),
(493, 592, 1, 'File Servers', 1),
(494, 593, 1, 'Double click on any of the servers below to edit.', 1),
(495, 594, 1, 'Add new server', 1),
(496, 595, 1, 'server label', 1),
(497, 596, 1, 'server type', 1),
(498, 597, 1, 'storage path', 1),
(499, 598, 1, 'Enter Server Details', 1),
(500, 599, 1, 'total space used', 1),
(501, 600, 1, 'total files', 1),
(502, 601, 1, 'Testing connection to file server... (via ftp)', 1),
(503, 602, 1, 'Back to Server Management', 1),
(504, 510, 1, 'Please enter the details of the reported file.', 1),
(505, 516, 1, 'Legal Bits', 1),
(506, 19532, 1, 'Double click to view/hide subfolders', 1),
(507, 518, 1, 'days', 1),
(508, 17398, 1, 'Powerful Features', 1),
(509, 520, 1, 'Pay via PayPal', 1),
(510, 17443, 1, 'Secure Payment', 1),
(511, 17444, 1, '100% Safe & Anonymous', 1),
(512, 523, 1, 'Add files...', 1),
(513, 19438, 1, 'Start upload', 1),
(514, 19439, 1, 'Cancel upload', 1),
(515, 526, 1, 'Select files', 1),
(516, 527, 1, 'Drag &amp; drop files here or click to browse...', 1),
(517, 19445, 1, 'Max file size', 1),
(518, 529, 1, 'add file', 1),
(519, 530, 1, 'copy all links', 1),
(520, 531, 1, 'File uploads completed.', 1),
(521, 532, 1, 'Delete Url', 1),
(522, 533, 1, 'Stats Url', 1),
(523, 18655, 1, 'HTML Code', 1),
(524, 18659, 1, 'forum code', 1),
(525, 536, 1, 'Full Info', 1),
(526, 537, 1, 'click here', 1),
(527, 17383, 1, 'extend', 1),
(528, 17449, 1, 'reverts to free account', 1),
(529, 17450, 1, 'never', 1),
(530, 541, 1, 'filename', 1),
(531, 542, 1, 'download', 1),
(532, 18640, 1, 'filesize', 1),
(533, 544, 1, 'url', 1),
(534, 19343, 1, 'register', 1),
(535, 546, 1, 'share file', 1),
(536, 619, 1, 'Email large attachments!', 1),
(537, 620, 1, 'No longer do you have to risk a large file being bounced by a mail server. Upload and send your recipient a link to download the file. You can even track when it\'s been downloaded.', 1),
(538, 621, 1, 'Server Info', 1),
(539, 622, 1, 'Edit', 1),
(540, 623, 1, 'Edit existing item', 1),
(541, 624, 1, 'edit, existing, item', 1),
(542, 625, 1, 'Edit Existing Item', 1),
(543, 626, 1, 'Use the form below to amend the selected item.', 1),
(544, 627, 1, 'new long url', 1),
(545, 628, 1, 'reset stats', 1),
(546, 629, 1, 'update url', 1),
(547, 630, 1, 'No (keep existing stats)', 1),
(548, 631, 1, 'Yes (remove existing stats)', 1),
(549, 632, 1, 'Whether to reset the statistics or not', 1),
(550, 633, 1, 'No, keep stats', 1),
(551, 634, 1, 'Yes, remove stats', 1),
(552, 635, 1, 'update item', 1),
(553, 636, 1, 'folder', 1),
(554, 637, 1, 'The items folder', 1),
(555, 19506, 1, '- None -', 1),
(556, 639, 1, 'The filename on download', 1),
(557, 640, 1, 'folders', 1),
(558, 641, 1, 'File Folders', 1),
(559, 642, 1, 'Your File Folders', 1),
(560, 643, 1, 'file, folders, home, file, your, interface, upload, download, site', 1),
(561, 644, 1, 'Folder Name', 1),
(562, 645, 1, 'Public', 1),
(563, 646, 1, 'no', 1),
(564, 647, 1, 'Total Active Files', 1),
(565, 648, 1, 'Active Files', 1),
(566, 649, 1, 'Add', 1),
(567, 650, 1, 'Add existing item', 1),
(568, 651, 1, 'add, existing, item', 1),
(569, 652, 1, 'Add Folder', 1),
(570, 653, 1, 'Use the form below to add a new folder to your account.', 1),
(571, 654, 1, 'The folder name', 1),
(572, 655, 1, 'No, keep private', 1),
(573, 656, 1, 'Yes, allow sharing', 1),
(574, 657, 1, 'Whether to allow public access to the folder or not', 1),
(575, 658, 1, 'add item', 1),
(576, 659, 1, 'Edit Existing Folder', 1),
(577, 660, 1, 'Use the form below to amend the selected folder.', 1),
(578, 661, 1, 'yes', 1),
(579, 662, 1, 'folder password', 1),
(580, 663, 1, 'The folder password. (must be a public folder)', 1),
(581, 664, 1, 'Please enter the folder name', 1),
(582, 665, 1, 'You already have a folder with that name, please use another', 1),
(583, 666, 1, 'Listing Url', 1),
(584, 667, 1, 'Files Within Folder', 1),
(585, 668, 1, 'There are no files within this folder.', 1),
(586, 669, 1, 'Sharing Url', 1),
(587, 670, 1, 'public link', 1),
(588, 671, 1, 'Folder Login', 1),
(589, 672, 1, 'Please enter the password below to access this folder.', 1),
(590, 673, 1, 'The folder password.', 1),
(591, 674, 1, 'continue', 1),
(592, 675, 1, 'Folder Restricted', 1),
(593, 676, 1, 'Please enter the folder password', 1),
(594, 677, 1, 'The folder password is invalid', 1),
(595, 678, 1, 'Save To Folder', 1),
(596, 679, 1, 'forgot password', 1),
(597, 680, 1, 'Forgot Password', 1),
(598, 681, 1, 'Forgot account password', 1),
(599, 682, 1, 'forgot, password, account, short, url, user', 1),
(600, 683, 1, 'Enter your email address below to receive further instructions on how to reset your account password.', 1),
(601, 684, 1, 'reset', 1),
(602, 685, 1, 'Please enter the account email address', 1),
(603, 686, 1, 'Account with that email address not found', 1),
(604, 687, 1, 'An email has been sent to [[[EMAIL_ADDRESS]]] with further instructions on how to reset your password.', 1),
(605, 688, 1, 'An email has been sent to [[[EMAIL_ADDRESS]]] with further instructions on how to reset your password.', 1),
(606, 689, 1, 'request reset', 1),
(607, 690, 1, 'Set your new password below to access your account.', 1),
(608, 691, 1, 'confirm password', 1),
(609, 692, 1, 'update password', 1),
(610, 693, 1, 'Password should be between 6 - 20 characters in length', 1),
(611, 694, 1, 'Your password confirmation does not match', 1),
(612, 695, 1, 'Your password has been reset. You can now login to the site above.', 1),
(613, 696, 1, 'Your username must be between 6 and 20 characters', 1),
(614, 697, 1, 'Account Details', 1),
(615, 698, 1, 'Account details', 1),
(616, 699, 1, 'details, account, short, url, user', 1),
(617, 700, 1, 'Account Details', 1),
(618, 701, 1, 'Change Password', 1),
(619, 702, 1, 'update account', 1),
(620, 703, 1, 'Email address already exists', 1),
(621, 704, 1, 'Account details successfully updated', 1),
(622, 705, 1, 'admin', 1),
(623, 17384, 1, 'account', 1),
(624, 707, 1, 'settings', 1),
(625, 708, 1, 'Captcha Confirmation', 1),
(626, 709, 1, 'In order to prevent abuse of this service, please copy the words into the text box on the right.', 1),
(627, 710, 1, 'Captcha confirmation text is invalid.', 1),
(628, 711, 1, 'process to payment', 1),
(629, 712, 1, 'Register Account - Complete', 1),
(630, 713, 1, 'Your username can only contact alpha numeric and underscores.', 1),
(631, 714, 1, 'upgrade', 1),
(632, 715, 1, 'Username already exists on another account', 1),
(633, 716, 1, 'Login to the admin area below', 1),
(634, 717, 1, 'admin login', 1),
(635, 718, 1, 'submit', 1),
(636, 719, 1, 'manage file servers', 1),
(637, 720, 1, 'file servers', 1),
(638, 721, 1, 'manage users', 1),
(639, 722, 1, 'users', 1),
(640, 723, 1, 'payments', 1),
(641, 724, 1, 'translations', 1),
(642, 725, 1, 'Short Url', 1),
(643, 726, 1, 'Date Uploaded', 1),
(644, 727, 1, 'Total Downloads', 1),
(645, 728, 1, 'Upload IP', 1),
(646, 729, 1, 'Last Downloaded', 1),
(647, 730, 1, 'Actions', 1),
(648, 731, 1, 'Date Uploaded/IP', 1),
(649, 732, 1, 'HD Used', 1),
(650, 733, 1, 'Type', 1),
(651, 734, 1, 'server information', 1),
(652, 735, 1, 'Account expiry date invalid, it should be in the format dd/mm/yyyy', 1),
(653, 736, 1, 'Description', 1),
(654, 737, 1, 'Ban Type', 1),
(655, 738, 1, 'Please enter the IP address.', 1),
(656, 739, 1, 'Please enter the language name.', 1),
(657, 740, 1, 'A language with that name already exists in the database.', 1),
(658, 741, 1, 'English Content', 1),
(659, 742, 1, 'Default', 1),
(660, 743, 1, 'File Status', 1),
(661, 744, 1, 'Last 14 days user registrations', 1),
(662, 745, 1, 'free user', 1),
(663, 746, 1, 'File Type', 1),
(664, 747, 1, 'paid user', 1),
(665, 748, 1, 'dll', 1),
(666, 749, 1, 'doc', 1),
(667, 750, 1, 'exe', 1),
(668, 751, 1, 'ini', 1),
(669, 752, 1, 'jpg', 1),
(670, 753, 1, 'mp3', 1),
(671, 754, 1, 'php', 1),
(672, 755, 1, 'png', 1),
(673, 756, 1, 'sql', 1),
(674, 757, 1, 'txt', 1),
(675, 758, 1, 'ftp username', 1),
(676, 759, 1, 'ftp password', 1),
(677, 760, 1, 'Please specify the server label.', 1),
(678, 761, 1, 'That server label has already been used, please choose another.', 1),
(679, 762, 1, 'Please specify the server ftp username.', 1),
(680, 763, 1, 'Owner', 1),
(681, 764, 1, 'other', 1),
(682, 765, 1, 'wmv', 1),
(683, 766, 1, 'date started', 1),
(684, 767, 1, 'file name', 1),
(685, 768, 1, 'file size', 1),
(686, 769, 1, 'total threads', 1),
(687, 770, 1, 'threads', 1),
(688, 771, 1, 'Username is reserved and can not be used, please choose another', 1),
(689, 19412, 1, 'hours', 1),
(690, 19843, 1, 'Total Comments', 1),
(691, 774, 1, 'French', 1),
(692, 775, 1, 'German', 1),
(693, 776, 1, 'Spanish', 1),
(694, 19452, 1, 'delete', 1),
(695, 778, 1, 'File is too big', 1),
(696, 779, 1, 'File is too small', 1),
(697, 780, 1, 'Filetype not allowed', 1),
(698, 781, 1, 'Max number of files exceeded', 1),
(699, 782, 1, 'File exceeds upload_max_filesize (php.ini directive)', 1),
(700, 783, 1, 'File exceeds MAX_FILE_SIZE (HTML form directive)', 1),
(701, 784, 1, 'File was only partially uploaded', 1),
(702, 785, 1, 'No File was uploaded', 1),
(703, 786, 1, 'Missing a temporary folder', 1),
(704, 787, 1, 'Failed to write file to disk', 1),
(705, 788, 1, 'File upload stopped by extension', 1),
(706, 789, 1, 'Uploaded bytes exceed file size', 1),
(707, 790, 1, 'Empty file upload result', 1),
(708, 791, 1, 'from', 1),
(709, 792, 1, 'Quick Overview', 1),
(710, 793, 1, 'Please enter your information below to register for an account. Your new account password will be sent to your email address.', 1),
(711, 794, 1, 'Mrs', 1),
(712, 795, 1, 'Miss', 1),
(713, 796, 1, 'Dr', 1),
(714, 797, 1, 'Pro', 1),
(715, 798, 1, 'Your title', 1),
(716, 799, 1, 'Your firstname', 1),
(717, 800, 1, 'Your lastname', 1),
(718, 801, 1, 'Your email address', 1),
(719, 802, 1, 'Confirm your email address', 1),
(720, 803, 1, 'Your account username. 6 characters or more and alpha numeric.', 1),
(721, 805, 1, 'By clicking \'register\', you agree to our <a href=\'terms.html\'>Terms of service</a>.', 1),
(722, 806, 1, 'Mr', 1),
(723, 807, 1, 'Mrs', 1),
(724, 808, 1, 'Miss', 1),
(725, 809, 1, 'Dr', 1),
(726, 810, 1, 'Pro', 1),
(727, 811, 1, 'Download From', 1),
(728, 812, 1, '<strong>Basic TOS</strong><br/>\n<br/>\nAll users must be of at least the age of 13, and agree to not use the [[[SITE_NAME]]] service for any illegal or unauthorized purposes. All users must agree to comply with local laws regarding online conduct, and copyright laws. [[[SITE_NAME]]] is intended for personal use, and any business use is strictly prohibited. All users must not use [[[SITE_NAME]]]\'s services to violate any laws which include but are not limited to copyright laws. Any violations will result in immediate deletion of all files [[[SITE_NAME]]] has on record for your IP Address.<br/>\n<br/>\nAll users use [[[SITE_NAME]]] at their own risk, users understand that files uploaded on [[[SITE_NAME]]] are not private, they may be displayed for others to view, and [[[SITE_NAME]]] users understand and agree that [[[SITE_NAME]]] cannot be responsible for the content posted on its web site and you nonetheless may be exposed to such materials and that you use [[[SITE_NAME]]]\'s service at your own risk.<br/>\n<br/>\n<strong>Conditions</strong><br/>\n<br/>\n- We reserve the right to modify or terminate the [[[SITE_NAME]]] service for any reason, without notice at any time.<br/>\n- We reserve the right to alter these Terms of Use at any time.<br/>\n- We reserve the right to refuse service to anyone for any reason at any time.<br/>\n- We may, but have no obligation to, remove Content and accounts containing Content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, obscene or otherwise objectionable or violates any party\'s intellectual property or these Terms of Use.<br/>\n- If a user is found to be using [[[SITE_NAME]]] to host icons, smileys, buddy icons, forum avatars, forum badges, forum signature images, or any other graphic for website design all your images will be removed.<br/>\n<br/>\n<strong>Copyright Information</strong><br/>\n<br/>\n[[[SITE_NAME]]] claims no intellectual property rights over the images uploaded by its\' users.<br/>\n<br/>\n[[[SITE_NAME]]] will review all copyright &copy; infringement claims received and remove files found to have been upload or distributed in violation of any such laws. To make a valid claim you must provide [[[SITE_NAME]]] with the following information:<br/>\n<br/>\n- A physical or electronic signature of the copyright owner or the person authorized to act on its behalf;<br/>\n- A description of the copyrighted work claimed to have been infringed;<br/>\n- A description of the infringing material and information reasonably sufficient to permit [[[SITE_NAME]]] to locate the material;<br/>\n- Your contact information, including your address, telephone number, and email;<br/>\n- A statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and<br/>\n- A statement that the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.<br/>\n<br/>\nClaims can be sent to us via the <a href=\"report_file\">report abuse</a> page.', 1),
(729, 813, 1, 'Account details for [[[SITE_NAME]]]', 1),
(730, 814, 1, 'Dear [[[FIRST_NAME]]],<br/><br/>Your account on [[[SITE_NAME]]] has been created. Use the details below to login to your new account:<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><strong>Password:</strong> [[[PASSWORD]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(731, 815, 1, 'sftp host', 1),
(732, 816, 1, 'sftp port', 1),
(733, 817, 1, 'sftp username', 1),
(734, 818, 1, 'sftp password', 1),
(735, 819, 1, 'manage plugins', 1),
(736, 820, 1, 'add plugin', 1),
(737, 822, 1, 'directory name', 1),
(738, 823, 1, 'is installed', 1),
(739, 824, 1, 'installed?', 1),
(740, 825, 1, 'No file found, please try again.', 1),
(741, 826, 1, 'The uploaded file does not appear to be a zip file.', 1),
(742, 827, 1, 'There was a problem creating the plugin folder. Please ensure the following folder has CHMOD 777 permissions: /var/www/php_site_scripts/file_hosting/plugins/', 1),
(743, 828, 1, 'Could not read the plugin settings file \'_plugin_config.inc.php\'.', 1),
(744, 829, 1, 'There was a problem unzipping the file, please try and manually upload the zip files contents into the plugins directory or contact support.', 1),
(745, 831, 1, 'User Earnings', 1),
(746, 832, 1, 'Detailed Referrals', 1),
(747, 833, 1, 'Payment Requests', 1),
(748, 834, 1, 'Keep your account details up to date below.', 1),
(749, 835, 1, 'Your new email address', 1),
(750, 836, 1, 'Optional. A new account password, leave this blank to keep your existing.', 1),
(751, 837, 1, 'active downloads', 1),
(752, 17452, 1, 'Direct downloads. No waiting.', 1),
(753, 17453, 1, 'No advertising.', 1),
(754, 17454, 1, 'Unlimited simultaneous downloads.', 1),
(755, 17455, 1, 'Maximum download speeds possible.', 1),
(756, 17456, 1, 'Download manager support.', 1),
(757, 17457, 1, 'Unlimited storage.', 1),
(758, 17247, 1, 'Files kept for [[[DAYS]]] days.', 1),
(759, 17248, 1, 'Upload files up to [[[MAX_UPLOAD_FILESIZE]]] in size.', 1),
(760, 17460, 1, 'No limits on the amount of downloads.', 1),
(761, 17461, 1, 'Low price per day.', 1),
(762, 17462, 1, 'No subscriptions.', 1),
(763, 849, 1, 'Rewards', 1),
(764, 850, 1, 'earn, money, rewards, cash, sales, affiliate, file, hosting, site', 1),
(765, 851, 1, 'overview', 1),
(766, 852, 1, 'total rewards', 1),
(767, 853, 1, 'cleared rewards', 1),
(768, 854, 1, 'available for withdrawal', 1),
(769, 856, 1, 'this months rewards', 1),
(770, 857, 1, '- You have not uploaded any files recently. <a href=\"[[[WEB_ROOT]]]/index\">Click here</a> to upload some now.', 1),
(771, 858, 1, 'If you have an account, <a href=\"[[[WEB_ROOT]]]/login\">click here</a> to login and manage your files.', 1),
(772, 859, 1, 'detailed rewards', 1),
(773, 860, 1, 'how to start earning', 1),
(774, 861, 1, 'Reward Date', 1),
(775, 862, 1, 'Amount', 1),
(776, 863, 1, 'recent rewards', 1),
(777, 864, 1, 'copyright removed', 1),
(778, 865, 1, 'User Status', 1),
(779, 866, 1, 'free user', 1),
(780, 867, 1, 'paid user', 1),
(781, 868, 1, 'Amount', 1),
(782, 869, 1, 'Original Order #', 1),
(783, 870, 1, 'Upgrade Source', 1),
(784, 871, 1, 'User', 1),
(785, 872, 1, 'Filter Results', 1),
(786, 873, 1, 'By Folder', 1),
(787, 874, 1, 'all', 1),
(788, 875, 1, 'By Status', 1),
(789, 877, 1, 'Aggregated Earnings', 1),
(790, 878, 1, 'monthly totals', 1),
(791, 879, 1, 'Rewards withdrawal request for [[[AMOUNT]]]', 1),
(792, 880, 1, 'Dear Admin,<br/><br/>A rewards withdrawal request has been received. Please login to [[[SITE_NAME]]] and process the request:<br/><br/><a href=\'[[[ADMIN_WEB_ROOT]]]\'>[[[ADMIN_WEB_ROOT]]]</a><br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(793, 881, 1, 'Date Requested', 1),
(794, 882, 1, 'Русский', 1),
(795, 883, 1, 'File', 1),
(796, 884, 1, 'File permanently removed.', 1),
(797, 885, 1, 'zip', 1),
(798, 886, 1, 'Please enter your Skrill account email address.', 1),
(799, 887, 1, 'You must register for a premium account for files of this size. Please use the links above to register or login.', 1),
(800, 888, 1, 'You have reached the maximum concurrent downloads. Please wait for your existing downloads to complete or register for a premium account above.', 1),
(801, 889, 1, 'Newsletters', 1),
(802, 890, 1, 'Create Newsletter', 1),
(803, 891, 1, 'Manage Newsletters', 1),
(804, 892, 1, 'Export User Data', 1),
(805, 893, 1, 'date', 1),
(806, 894, 1, 'title', 1),
(807, 895, 1, 'subject', 1),
(808, 896, 1, 'status', 1),
(809, 897, 1, 'send to', 1),
(810, 898, 1, 'newsletter content (html)', 1),
(811, 899, 1, 'upload', 1),
(812, 900, 1, 'file upload', 1),
(813, 19433, 1, 'remote url upload', 1),
(814, 19463, 1, 'FTP Upload', 1),
(815, 903, 1, 'Enter Urls', 1),
(816, 19479, 1, 'Enter up to [[[MAX_REMOTE_URL_FILES]]] file urls. Separate each url on it\'s own line.', 1),
(817, 19462, 1, 'processing', 1),
(818, 906, 1, 'File transfers completed.', 1),
(819, 907, 1, 'html', 1),
(820, 908, 1, 'ico', 1),
(821, 909, 1, 'MPG', 1),
(822, 19471, 1, 'Please enter the urls to start.', 1),
(823, 19472, 1, 'No valid urls found, please make sure any start with http or https and try again.', 1),
(824, 913, 1, 'Could not rename plugin folder, it may be that the plugin is already installed or a permissions issue.', 1),
(825, 914, 1, 'com:8080/p', 1),
(826, 915, 1, 'created', 1),
(827, 916, 1, 'newsletter unsubscribe', 1),
(828, 917, 1, 'Unsubscribe', 1),
(829, 918, 1, 'newsletter, unsubscribe, file, hosting, site', 1),
(830, 919, 1, 'newsletter unsubscribe', 1),
(831, 920, 1, 'Enter your email address below to be removed from future newsletters from our site.', 1),
(832, 921, 1, 'Your registered email address.', 1),
(833, 922, 1, 'unsubscribe', 1),
(834, 923, 1, 'There was a problem unsubscribing your from our mailing list. Please contact us and we\'ll manually remove you', 1),
(835, 924, 1, 'The email address you\'ve provided has already been unsubscribed', 1),
(836, 925, 1, 'Your email address has been sucessfully removed from our mailing lists', 1),
(837, 928, 1, 'newsletter subscribe', 1),
(838, 929, 1, 'Subscribe', 1),
(839, 930, 1, 'newsletter, subscribe, file, hosting, site', 1),
(840, 931, 1, 'newsletter subscribe', 1),
(841, 932, 1, 'Enter your email address below to be added to future newsletters from our site. Note, you must have a registered account to be added to the mailing list.', 1),
(842, 933, 1, 'Your registered email address.', 1),
(843, 17468, 1, 'Subscribe', 1),
(844, 935, 1, 'Your email address is invalid', 1),
(845, 936, 1, 'Could not find an account with that email address', 1),
(846, 937, 1, 'Your email address has been sucessfully added to our mailing lists', 1),
(847, 939, 1, 'Thanks for your payment!', 1),
(848, 940, 1, 'Once we receive notification from the payment gateway, your account will be upgraded/extended. Please allow up to an hour for this to complete.', 1),
(849, 941, 1, 'You can check your account status by going ', 1),
(850, 942, 1, 'here', 1),
(851, 943, 1, 'download/view now', 1),
(852, 944, 1, 'mp4', 1),
(853, 945, 1, 'Watch', 1),
(854, 946, 1, 'Watch or listen to ', 1),
(855, 947, 1, ', watch, listen, file, upload, download, site', 1),
(856, 948, 1, 'ogv', 1),
(857, 949, 1, 'limited', 1),
(858, 950, 1, 'file details', 1),
(859, 951, 1, 'Please enter your Tranzila account id.', 1),
(860, 952, 1, 'get plugins', 1),
(861, 953, 1, 'The ftp path you\'ve set does not exist.', 1),
(862, 954, 1, 'Please set the path to store ftp accounts.', 1),
(863, 958, 1, 'Error message', 1),
(864, 959, 1, 'FTP Details', 1),
(865, 969, 1, 'Please enter your PaymentWall application key. This can be found in Application Settings.', 1),
(866, 970, 1, 'Please enter your OKPay wallet number.', 1),
(867, 971, 1, 'Please enter the filename', 1),
(868, 972, 1, 'Please enter your First Data transaction key.', 1),
(869, 973, 1, 'downloader', 1),
(870, 974, 1, 'Watch', 1),
(871, 975, 1, 'Watch or listen to ', 1),
(872, 976, 1, ', view, picture, file, upload, download, site', 1),
(873, 978, 1, 'HTML Thumbnail Code', 1),
(874, 979, 1, 'Forum Thumbnail Code', 1),
(875, 980, 1, 'Full Url', 1),
(876, 981, 1, 'embed code', 1),
(877, 982, 1, 'Thumbnail Url', 1),
(878, 983, 1, 'Full Image Url', 1),
(879, 984, 1, 'Confirmation Text', 1),
(880, 985, 1, 'First', 1),
(881, 986, 1, 'Last', 1),
(882, 987, 1, 'Next', 1),
(883, 988, 1, 'Previous', 1),
(884, 989, 1, 'No data found.', 1),
(885, 990, 1, 'Showing _START_ to _END_ of _TOTAL_ entries', 1),
(886, 991, 1, 'Show _MENU_ entries', 1),
(887, 992, 1, 'dfdf', 1),
(888, 993, 1, 'You must wait [[[WAITING_TIME_LABEL]]] between downloads. Please try again later or register for a premium account above to remove the restriction.', 1),
(889, 994, 1, 'Max uploads reached.', 1),
(890, 995, 1, 'You have reached the maximum permitted uploads for today.', 1),
(891, 996, 1, 'AVI', 1),
(892, 997, 1, '3gp', 1),
(893, 998, 1, 'Embed Video', 1),
(894, 1002, 1, 'Plugin Settings', 1),
(895, 1003, 1, 'Plugin State', 1),
(896, 1004, 1, 'Whether the search system is enabled', 1),
(897, 1005, 1, 'Plugin Enabled', 1),
(898, 1006, 1, 'Users which have access', 1),
(899, 1007, 1, 'Select from the drop down who you want to have access to the search feature', 1),
(900, 1008, 1, 'Who has access', 1),
(901, 1009, 1, 'Search Files', 1),
(902, 1010, 1, 'webmaster', 1),
(903, 1011, 1, 'Level', 1),
(904, 1012, 1, 'Status/Level:', 1),
(905, 1013, 1, 'file level', 1),
(906, 1014, 1, 'By Level', 1),
(907, 1015, 1, 'file server domain name', 1),
(908, 1016, 1, 'script path', 1),
(909, 1017, 1, 'upload script path', 1),
(910, 1018, 1, 'code setup', 1),
(911, 1019, 1, 'server storage path', 1),
(912, 1020, 1, 'Please specify the file server domain name.', 1),
(913, 1021, 1, 'The file server domain name you\'ve entered is invalid.', 1),
(914, 1022, 1, 'set password:', 1),
(915, 1023, 1, 'When downloading these files, users will be prompted for a password, if set. Download managers will not work if a password is set.', 1),
(916, 1024, 1, 'Set Password', 1),
(917, 19496, 1, 'send via email:', 1),
(918, 1026, 1, 'Enter an email address below to send the list of urls via email once they\'re uploaded.', 1),
(919, 19422, 1, 'Links copied to clipboard:\\n\\n', 1),
(920, 1028, 1, 'File Password', 1),
(921, 1029, 1, 'Enter file password', 1),
(922, 1030, 1, 'file, password, account, short, url, user', 1),
(923, 1031, 1, 'file password', 1),
(924, 1032, 1, 'A password is required to access this file, please enter it below.', 1),
(925, 1033, 1, 'The file password', 1),
(926, 1034, 1, 'access file', 1),
(927, 1035, 1, 'File password is invalid.', 1),
(928, 1036, 1, 'Image Url', 1),
(929, 1037, 1, 'Size', 1),
(930, 1038, 1, 'Your url links from [[[SITE_NAME]]]', 1),
(931, 1039, 1, 'Copies of your urls, which completed uploading on [[[UPDATE_COMPLETED_DATE_TIME]]] are below:<br/><br/>[[[FILE_URLS]]]<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(932, 1040, 1, 'You have reached the maximum permitted downloads in the last 24 hours.', 1),
(933, 1041, 1, 'resize image', 1),
(934, 1042, 1, 'fixed size', 1),
(935, 1043, 1, 'keep proportion', 1),
(936, 1044, 1, 'custom size', 1),
(937, 1045, 1, 'resize', 1),
(938, 1046, 1, 'Please enter the width', 1),
(939, 1047, 1, 'Please enter the height', 1),
(940, 1048, 1, 'Please enter a valid number for the width', 1),
(941, 1049, 1, 'Please enter a valid number for the height', 1),
(942, 1050, 1, 'Detailed Referrals (PPS)', 1),
(943, 1051, 1, 'Detailed Downloads (PPD)', 1),
(944, 1052, 1, 'Detailed Referrals PPS', 1),
(945, 1053, 1, 'Detailed PPD', 1),
(946, 1054, 1, 'Detailed Referrals P.P.S', 1),
(947, 1055, 1, 'Detailed P.P.D', 1),
(948, 1056, 1, 'Detailed Referrals P P S', 1),
(949, 1057, 1, 'Detailed P P D', 1),
(950, 1058, 1, 'Detailed (ppd)', 1),
(951, 1059, 1, 'Referrals (pps)', 1),
(952, 1060, 1, 'Downloads (ppd)', 1),
(953, 1061, 1, 'Please select at least 1 country for row [[[ROW_NUMBER]]]', 1),
(954, 1062, 1, 'Please enter the payout rate for row [[[ROW_NUMBER]]]', 1),
(955, 1063, 1, 'Download Date', 1),
(956, 1064, 1, 'Reward Group', 1),
(957, 1065, 1, 'Reward User', 1),
(958, 1066, 1, 'Pay Per Download (PPD) Rates', 1),
(959, 1067, 1, 'recent downloads', 1),
(960, 1068, 1, 'Upload your files and you\'ll be paid for every file downloaded on your account.', 1),
(961, 1069, 1, 'Files above [[[FILE_SIZE]]]MB will count.', 1),
(962, 1070, 1, 'Group Name', 1),
(963, 1071, 1, 'Paid Per 1,000 Downloads', 1),
(964, 1072, 1, 'Downloading Country', 1),
(965, 1073, 1, 'See the payment rates below:', 1),
(966, 1074, 1, 'ppd recent downloads', 1),
(967, 1075, 1, 'uncleared ppd downloads', 1),
(968, 1076, 1, 'total rewards pps', 1),
(969, 1077, 1, 'total rewards (pps)', 1),
(970, 1078, 1, 'uncleared downloads (ppd)', 1),
(971, 1079, 1, '(mixed groups)', 1),
(972, 1080, 1, 'New abuse report on [[[SITE_NAME]]]', 1),
(973, 1081, 1, 'There is a new abuse report on [[[SITE_NAME]]] with the following details:<br/><br/>***************************************<br/>[[[FILE_DETAILS]]]<br/>***************************************<br/>Submitted IP: [[[USERS_IP]]]<br/>***************************************<br/><br/>Please login via [[[WEB_ROOT]]]/admin/ to investigate further.', 1),
(974, 1098, 1, 'view logs', 1),
(975, 1100, 1, 'system tools', 1),
(976, 1101, 1, 'database browser', 1),
(977, 1102, 1, 'system logs', 1),
(978, 1103, 1, 'You have [[[ACTIVE_FILES]]] active file(s) within your account. Use the table below to navigate or search for files you\'ve previously uploaded. <a href=\"index\">Click here</a> to upload a file.', 1),
(979, 1104, 1, 'add user', 1),
(980, 1105, 1, 'view payments', 1),
(981, 1106, 1, 'payment date', 1),
(982, 1107, 1, 'user name', 1),
(983, 1108, 1, 'received payments', 1),
(984, 1109, 1, 'Please use the following form to report any copyright infringements ensuring you supply all the following information:', 1),
(985, 1110, 1, 'Please enter the url of the reported file.', 1),
(986, 1111, 1, 'Please enter the url of the file you\\\'re reporting.', 1),
(987, 1112, 1, 'Please confirm you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.', 1),
(988, 1113, 1, 'Could not find a file with that url, please check and try again.', 1),
(989, 1114, 1, 'The file url you\'ve set is not active.', 1),
(990, 1115, 1, 'Key', 1),
(991, 1116, 1, 'You have no active files within your account. <a href=\"index\">Click here</a> to upload a file.', 1),
(992, 1117, 1, 'File upload space full.', 1),
(993, 1118, 1, 'You have reached the maximum permitted storage within your account, please delete some active files and try again.', 1),
(994, 1119, 1, 'Please enter the description and support information of the reported file.', 1),
(995, 1120, 1, 'Thanks for submitted the information needed to report a file on our servers. We\'ll review the file as soon as possible and remove if required.', 1),
(996, 1121, 1, 'abuse reports', 1),
(997, 1122, 1, 'Report Date', 1),
(998, 1123, 1, 'Reported Name', 1),
(999, 1124, 1, 'Reported By IP', 1),
(1000, 1125, 1, 'File has been removed due to copyright issues.', 1),
(1001, 1126, 1, 'By Upload Date', 1),
(1002, 1127, 1, 'Parent Folder:', 1),
(1003, 1128, 1, 'Base Folder', 1),
(1004, 1129, 1, '- root -', 1),
(1005, 1130, 1, 'The parent folder to create this within', 1),
(1006, 1131, 1, 'folder name', 1),
(1007, 1132, 1, 'Parent Folder:', 1),
(1008, 1133, 1, 'Public:', 1),
(1009, 1134, 1, 'Password:', 1),
(1010, 1135, 1, 'Folder Name:', 1),
(1011, 1136, 1, 'Sharing Url:', 1),
(1012, 1137, 1, 'update folder', 1),
(1013, 19510, 1, 'Filter', 1),
(1014, 19514, 1, 'Upload Date', 1),
(1015, 1140, 1, 'You can share this page with other users who do not have access to your account.', 1),
(1016, 1141, 1, 'You can share this page with other users who do not have access to your account. Just copy the website url in the url bar and provide this via email or other sharing method.', 1),
(1017, 1142, 1, 'Note: As you\'ve set a password on this folder, users will need to correctly enter this before they gain access to this page.', 1),
(1018, 1143, 1, 'This folder can not be shared as it is not set to a publicly accessible folder.', 1),
(1019, 1144, 1, 'This folder can not be shared as it is not set to a publicly accessible folder. Only users with access to your account can see this listing.', 1),
(1020, 1145, 1, 'Testing file server... (direct file server)', 1),
(1021, 1146, 1, 'Language', 1),
(1022, 1147, 1, 'The language to use on the site.', 1),
(1023, 1148, 1, 'Please select the username.', 1),
(1024, 1149, 1, 'Please enter the payment amount.', 1),
(1025, 1150, 1, 'Plugin folder is not writable. Ensure you set the following folder to CHMOD 755 or 777: [[[PLUGIN_FOLDER]]]', 1),
(1026, 1151, 1, 'moderator area', 1),
(1027, 1152, 1, 'ogg', 1),
(1028, 1153, 1, 'Page', 1),
(1029, 19366, 1, 'of', 1),
(1030, 1155, 1, 'last accessed', 1),
(1031, 1156, 1, 'added', 1),
(1032, 1157, 1, 'statistics url', 1),
(1033, 1158, 1, 'delete file url', 1),
(1034, 1159, 1, 'store in folder:', 1),
(1035, 1160, 1, 'Select a folder below to store these uploaded files in.', 1),
(1036, 1161, 1, 'Select a folder below to store these files in. All uploads files will be available within these folders.', 1),
(1037, 1162, 1, '- Default -', 1),
(1038, 1163, 1, 'Order By', 1),
(1039, 1164, 1, 'Filename ASC', 1),
(1040, 1165, 1, 'Filename DESC', 1),
(1041, 1166, 1, 'Uploaded Date ASC', 1),
(1042, 1167, 1, 'Uploaded Date DESC', 1),
(1043, 1168, 1, 'Downloads ASC', 1),
(1044, 1169, 1, 'Downloads DESC', 1),
(1045, 1170, 1, 'Filesize ASC', 1),
(1046, 1171, 1, 'Filesize DESC', 1),
(1047, 1172, 1, 'Last Access Date ASC', 1),
(1048, 1173, 1, 'Last Access Date DESC', 1),
(1049, 1174, 1, 'File updated.', 1),
(1050, 1175, 1, 'Your Uploads', 1),
(1051, 1176, 1, 'Recent Uploads', 1);
INSERT INTO `language_content` (`id`, `languageKeyId`, `languageId`, `content`, `is_locked`) VALUES
(1052, 19380, 1, 'Trash Can', 1),
(1053, 19530, 1, 'Close', 1),
(1054, 1179, 1, 'Upload Files', 1),
(1055, 1180, 1, 'Edit', 1),
(1056, 1181, 1, 'Share Folder', 1),
(1057, 19385, 1, 'Edit', 1),
(1058, 19386, 1, 'Delete', 1),
(1059, 1184, 1, 'Are you sure you want to remove this folder? Any files within the folder will be moved into your default root folder and remain active.', 1),
(1060, 19391, 1, 'Are you sure you want to empty the trash can? Any statistics and other file information will be permanently deleted.', 1),
(1061, 1186, 1, 'selected files', 1),
(1062, 1187, 1, 'Close Fullscreen', 1),
(1063, 1188, 1, 'Fullscreen', 1),
(1064, 1189, 1, 'List View', 1),
(1065, 1190, 1, 'Icon View', 1),
(1066, 1191, 1, 'Show Tree', 1),
(1067, 1192, 1, 'Hide Tree', 1),
(1068, 1193, 1, 'File Url', 1),
(1069, 19526, 1, 'File Urls', 1),
(1070, 1195, 1, 'Error: No files selected.', 1),
(1071, 1196, 1, 'Refresh', 1),
(1072, 1197, 1, 'Show Links', 1),
(1073, 1198, 1, 'Update', 1),
(1074, 1201, 1, 'Status Text', 1),
(1075, 19362, 1, 'Upload', 1),
(1076, 1203, 1, 'No files found.', 1),
(1077, 1204, 1, 'File Urls', 1),
(1078, 19523, 1, 'HTML Code', 1),
(1079, 19524, 1, 'Forum BBCode', 1),
(1080, 1207, 1, 'Forum BBCode', 1),
(1081, 1208, 1, 'This video is awaiting conversion, please check back again later.', 1),
(1082, 1209, 1, 'This video is in the process of being converted, please check back again soon.', 1),
(1083, 19381, 1, 'Empty Trash', 1),
(1084, 1211, 1, 'copy file', 1),
(1085, 1212, 1, 'File copied into your account. [[[FILE_LINK]]]', 1),
(1086, 1213, 1, 'public info page', 1),
(1087, 1214, 1, 'There was a problem copying the file, please try again later.', 1),
(1088, 1215, 1, 'maxiumum storage space', 1),
(1089, 1216, 1, 'maxiumum storage', 1),
(1090, 1217, 1, 'max storage (bytes)', 1),
(1091, 1218, 1, 'server priority', 1),
(1092, 1219, 1, 'unpaid earnings', 1),
(1093, 1220, 1, 'estimated PPS earnings', 1),
(1094, 1221, 1, 'PPD estimated earnings', 1),
(1095, 1222, 1, '(from all PPD rate groups)', 1),
(1096, 1223, 1, 'total unpaid earnings', 1),
(1097, 1224, 1, 'pps recent rewards', 1),
(1098, 1225, 1, '(from [[[ITEMS]]] items accross all PPD rate groups)', 1),
(1099, 1226, 1, 'PPD recent earnings', 1),
(1100, 1227, 1, 'Period', 1),
(1101, 1228, 1, 'Links', 1),
(1102, 1229, 1, 'removed', 1),
(1103, 1230, 1, 'Preview', 1),
(1104, 1231, 1, 'Preview ', 1),
(1105, 1232, 1, ', preview, file, upload, download, site', 1),
(1106, 1233, 1, 'Embed Document', 1),
(1107, 1235, 1, 'pdf', 1),
(1108, 1236, 1, 'docx', 1),
(1109, 1237, 1, 'xls', 1),
(1110, 1240, 1, 'site path', 1),
(1111, 1241, 1, 'file storage path', 1),
(1112, 1242, 1, 'gdoc', 1),
(1113, 1243, 1, 'Select File (max: [[[MAX_SIZE]]])', 1),
(1114, 1244, 1, 'Delete <span class=\"fileCount\"></span>Files', 1),
(1115, 1245, 1, 'Move <span class=\"fileCount\"></span>Files', 1),
(1116, 1246, 1, 'Delete Files[[[fileCount]]]', 1),
(1117, 1247, 1, 'Move Files[[[fileCount]]]', 1),
(1118, 1248, 1, 'Delete Files[[[FILE_COUNT]]]', 1),
(1119, 1249, 1, 'Move Files[[[FILE_COUNT]]]', 1),
(1120, 19396, 1, 'Links', 1),
(1121, 1251, 1, 'Delete', 1),
(1122, 1252, 1, 'Are you sure you want to remove the selected files?', 1),
(1123, 1253, 1, 'Are you sure you want to remove the selected [[[TOTAL_FILES]]] file(s)?', 1),
(1124, 1254, 1, 'Full file url', 1),
(1125, 1255, 1, 'Description of the copyrighted works and supporting information', 1),
(1126, 1256, 1, 'Your name', 1),
(1127, 1257, 1, 'Email address', 1),
(1128, 1258, 1, 'Postal address', 1),
(1129, 1259, 1, 'Phone number', 1),
(1130, 1260, 1, 'Signature', 1),
(1131, 1261, 1, 'Electronic signature of the copyright owner or the person authorized to act on its behalf', 1),
(1132, 1262, 1, 'Confirm 1', 1),
(1133, 1263, 1, 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.', 1),
(1134, 1264, 1, 'The information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.', 1),
(1135, 1265, 1, 'unlimited', 1),
(1136, 1266, 1, 'Q: Is this free?', 1),
(1137, 1267, 1, 'A: Yes, uploading and downloading is 100% Free for all users. We offer premium accounts which allows for greater flexibility with uploading/downloading.', 1),
(1138, 1268, 1, 'Q: Will my files be removed?', 1),
(1139, 1269, 1, 'A: Free/non accounts files are kept for [[[KEPT_FOR_DAYS_FREE]]] days. Premium accounts files are kept for [[[KEPT_FOR_DAYS_PAID]]] days.', 1),
(1140, 1270, 1, 'Q: How many files can I upload?', 1),
(1141, 1271, 1, 'A: You can upload as many files as you want, as long as each one adheres to the Terms of Service and the maximum file upload size.', 1),
(1142, 1272, 1, 'Q: Which files types am I allowed to upload?', 1),
(1143, 1273, 1, 'Any', 1),
(1144, 1274, 1, 'A: You may upload the following types of files: [[[FILE_TYPES]]].', 1),
(1145, 1275, 1, 'Q: Are there any restrictions to the size of my uploaded files?', 1),
(1146, 1276, 1, 'A: Each file you upload must be less than [[[MAX_UPLOAD_SIZE_FREE]]] in size for free/non accounts or less than [[[MAX_UPLOAD_SIZE_PAID]]] in size for premium accounts. If it is greater than that amount, your file will be rejected.', 1),
(1147, 1277, 1, 'Q: Can I upload music or videos?', 1),
(1148, 1278, 1, 'A: Yes. Music and video hosting is permitted as long as you own the copyright on the content and it adheres to the terms and conditions.', 1),
(1149, 1279, 1, 'Q: There are some files on our servers which may have been subject to copyright protection, how can I notify you of them?', 1),
(1150, 1280, 1, 'A: Via our <a href=\"report_file\">report abuse</a> pages.', 1),
(1151, 1281, 1, 'use main site url', 1),
(1152, 1282, 1, 'no', 1),
(1153, 1283, 1, 'yes', 1),
(1154, 1284, 1, 'Test Trans', 1),
(1155, 1285, 1, 'File has been removed due to inactivity.', 1),
(1156, 17489, 1, 'Arabic', 1),
(1157, 1287, 1, 'Contact Us', 1),
(1158, 1288, 1, 'Contact us', 1),
(1159, 1289, 1, 'contact, us, questions, queries, file, hosting', 1),
(1160, 1290, 1, 'Contact Us', 1),
(1161, 1962, 1, 'Please fill out the following contact form to contact us', 1),
(1162, 1963, 1, 'If you wish to contact us regarding a copyright claim then please submit an abuse report. Abuse reports should be sent via our <a href=\"[[[ABUSE_URL]]]\">abuse pages</a>.', 1),
(1163, 1292, 1, 'Your full name', 1),
(1164, 1293, 1, 'Your email address', 1),
(1165, 1294, 1, 'Your query', 1),
(1166, 1295, 1, 'submit query', 1),
(1167, 1296, 1, 'submit form', 1),
(1168, 1297, 1, 'Please enter your query.', 1),
(1169, 20594, 1, 'Please submit all abuse reports via our dedicated abuse report page. Click OK to continue to it now.', 1),
(1170, 20595, 1, '\"[[[QUERY_TYPE]]]\" contact from [[[SITE_NAME]]] by \"[[[LOGGED_IN_USERNAME]]]\" user.', 1),
(1171, 20596, 1, 'There has been a contact form submission from [[[SITE_NAME]]] with the following details:<br/><br/>***************************************<br/>Full Name: [[[FULL_NAME]]]<br/>Email Address: [[[EMAIL_ADDRESS]]]<br/>Query Type: [[[QUERY_TYPE]]]<br/><br/>[[[QUERY]]]<br/>***************************************<br/>Logged In: [[[LOGGED_IN]]]<br/>Username: [[[LOGGED_IN_USERNAME]]]<br/>Submitted IP: [[[USERS_IP]]]<br/>***************************************<br/><br/>', 1),
(1172, 1300, 1, 'Thanks for submitting the contact form on our site. We\'ll review the query as soon as possible and get back to your within the nexr 48 hours.', 1),
(1173, 1301, 1, 'Please enter your name.', 1),
(1174, 1302, 1, 'Please enter your email.', 1),
(1175, 1303, 1, 'Please enter a valid email address.', 1),
(1176, 1304, 1, 'js', 1),
(1177, 1305, 1, 'Remove Files[[[FILE_COUNT]]] (keep stats)', 1),
(1178, 1306, 1, 'Delete Files And Data[[[FILE_COUNT]]]', 1),
(1179, 1307, 1, 'All Files', 1),
(1180, 1308, 1, 'Allowed file types', 1),
(1181, 1310, 1, '20', 1),
(1182, 1311, 1, '2', 1),
(1183, 1312, 1, '10', 1),
(1184, 1313, 1, 'moderator', 1),
(1185, 1315, 1, 'pls', 1),
(1186, 1316, 1, 'time', 1),
(1187, 1317, 1, 'No data', 1),
(1188, 1318, 1, 'dev.mellowfish.com:8080', 1),
(1189, 1319, 1, 'firefox', 1),
(1190, 1320, 1, 'windows', 1),
(1191, 1321, 1, 'Your registered account email address', 1),
(1192, 1322, 1, 'login form', 1),
(1193, 1323, 1, 'm4v', 1),
(1194, 1324, 1, 'chrome', 1),
(1195, 1325, 1, 'Line [[[LINE]]] should have [[[COLUMNS]]] columns.', 1),
(1196, 1326, 1, 'No file selected, please try again.', 1),
(1197, 1327, 1, 'Line [[[LINE]]] should have [[[COLUMNS]]] columns. Please check there\'s not a double quote in the text content causing the error. Any double quotes in text should be escaped with a backslash. i.e. \\\"', 1),
(1198, 1328, 1, '<a href=\"[[[WEB_ROOT]]]\">Click here</a> to upload more files.', 1),
(1199, 1329, 1, 'Per Page:', 1),
(1200, 20792, 1, 'First', 1),
(1201, 20793, 1, 'Previous', 1),
(1202, 20794, 1, 'Next', 1),
(1203, 20795, 1, 'Last', 1),
(1204, 19484, 1, 'No data available in table', 1),
(1205, 19485, 1, 'Showing _START_ to _END_ of _TOTAL_ entries', 1),
(1206, 19486, 1, 'No data', 1),
(1207, 19487, 1, 'Show _MENU_ entries', 1),
(1208, 19488, 1, 'Loading, please wait...', 1),
(1209, 19489, 1, ' (filtered)', 1),
(1210, 19490, 1, 'Search:', 1),
(1211, 19491, 1, 'No matching records found', 1),
(1212, 17404, 1, 'Cars', 1),
(1213, 17405, 1, 'Colorful', 1),
(1214, 1344, 1, 'Edit File', 1),
(1215, 19395, 1, 'Delete', 1),
(1216, 19393, 1, 'Download', 1),
(1217, 1377, 1, 'Your new password. Min 6 characters, alpha numeric and hypens only.', 1),
(1218, 1378, 1, 'Confirm your new password.', 1),
(1219, 1379, 1, 'ERROR: There was a server problem when attempting the upload, please try again later.', 1),
(1220, 19423, 1, 'Progress', 1),
(1221, 19424, 1, 'Speed', 1),
(1222, 19426, 1, 'Remaining', 1),
(1223, 1383, 1, 'Error', 1),
(1224, 1384, 1, 'file details', 1),
(1225, 1385, 1, 'Please register for an account to upload.', 1),
(1226, 1386, 1, 'Uploading has been disabled.', 1),
(1227, 19451, 1, 'Error', 1),
(1228, 1388, 1, '- login to enable -', 1),
(1229, 19569, 1, '- default -', 1),
(1230, 1390, 1, 'Error', 1),
(1231, 1391, 1, 'Filename not found.', 1),
(1232, 1392, 1, 'File received has zero size. This is likely an issue with the maximum permitted size within PHP', 1),
(1233, 1393, 1, 'File received has zero size.', 1),
(1234, 1394, 1, 'Could not move the file into storage, possibly a permissions issue.', 1),
(1235, 1395, 1, 'Search Results', 1),
(1236, 1396, 1, '[Download File]', 1),
(1237, 1397, 1, '<p>You didn\\\'t enter anything to search for.</p>', 1),
(1238, 1398, 1, '<p>Your search query is too short, minimum is ', 1),
(1239, 1399, 1, ' characters.</p>', 1),
(1240, 1400, 1, 'No Files Found', 1),
(1241, 1405, 1, 'Torrent Url', 1),
(1242, 1406, 1, 'Please enter your name.', 1),
(1243, 1407, 1, 'Please enter your email.', 1),
(1244, 1408, 1, 'Please provide the electronic signature of yourself or the copyright owner.', 1),
(1245, 1409, 1, 'Please confirm the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.', 1),
(1246, 1410, 1, 'Failed reporting file, please try again later', 1),
(1247, 1411, 1, 'There was a problem updating the item, please try again later.', 1),
(1248, 1412, 1, 'Password contains invalid characters, please choose another.', 1),
(1249, 19397, 1, 'Stats', 1),
(1250, 1414, 1, 'Please enter your title', 1),
(1251, 1415, 1, 'There was a problem creating your account, please try again later', 1),
(1252, 1416, 1, 'Your email address confirmation does not match', 1),
(1253, 1417, 1, 'Please enter your preferred username', 1),
(1254, 19367, 1, 'unlimited', 1),
(1255, 1419, 1, 'Registration required.', 1),
(1256, 1420, 1, 'Unavailable.', 1),
(1257, 1421, 1, 'PHP Upload Limit.', 1),
(1258, 1422, 1, 'Please enter the file password.', 1),
(1259, 1423, 1, 'per day', 1),
(1260, 1424, 1, 'Curl module not found. Please enable within PHP to enable remote uploads.', 1),
(1261, 19436, 1, 'torrent', 1),
(1262, 1426, 1, 'Could not find an account with that email address', 1),
(1263, 1430, 1, 'Private (only via your account)', 1),
(1264, 1431, 1, 'Whether to keep all file stats private or allow public access.', 1),
(1265, 1432, 1, 'Statistics for this file are not publicly viewable.', 1),
(1266, 1433, 1, 'Error: Uploading has been disabled.', 1),
(1267, 1434, 1, 'registered', 1),
(1268, 1435, 1, 'yes', 1),
(1269, 1436, 1, 'none', 1),
(1270, 1437, 1, 'PREMIUM', 1),
(1271, 1438, 1, 'slow download', 1),
(1272, 1439, 1, 'high speed download', 1),
(1273, 1440, 1, 'upgrade to premium', 1),
(1274, 1441, 1, 'File', 1),
(1275, 1442, 1, 'Size', 1),
(1276, 1443, 1, 'download pages', 1),
(1277, 1444, 1, 'manage download pages', 1),
(1278, 1445, 1, 'User Level', 1),
(1279, 1446, 1, 'Download Page', 1),
(1280, 1447, 1, 'View Order', 1),
(1281, 1448, 1, 'User Level / Page', 1),
(1282, 20568, 1, 'Rotate Right', 1),
(1283, 20572, 1, 'Join Files', 1),
(1284, 19414, 1, 'minutes', 1),
(1285, 20569, 1, 'Rotate Left', 1),
(1286, 1455, 1, 'Please enter your Payload Mercant Key.', 1),
(1287, 1456, 1, 'Page order can not be zero or less.', 1),
(1288, 1457, 1, 'ftp server type', 1),
(1289, 1458, 1, 'enable passive mode', 1),
(1290, 1459, 1, 'gif', 1),
(1291, 1460, 1, 'access password', 1),
(1292, 1461, 1, 'The password to access the file', 1),
(1293, 17448, 1, 'Admin', 1),
(1294, 1463, 1, 'system expired', 1),
(1295, 1464, 1, 'minute', 1),
(1296, 1465, 1, 'minutes', 1),
(1297, 1466, 1, 'second', 1),
(1298, 1467, 1, 'Moving', 1),
(1299, 1468, 1, 'file(s)', 1),
(1300, 1469, 1, 'Free User', 1),
(1301, 1470, 1, 'Download', 1),
(1302, 1471, 1, 'Edit', 1),
(1303, 1472, 1, 'unknown', 1),
(1304, 1473, 1, 'Select All', 1),
(1305, 1474, 1, 'Select All Files', 1),
(1306, 1476, 1, 'Could not get remote file. [[[FILE_URL]]]', 1),
(1307, 1477, 1, 'Error: Please enter your PayPal email address for the payment.', 1),
(1308, 1478, 1, 'There was a problem requesting the withdrawal, please try again later.', 1),
(1309, 1479, 1, 'PPD recent earnings are added to your unpaid earnings each night.', 1),
(1310, 1480, 1, 'Earnings can be withdrawn when balance is over [[[SYMBOL]]][[[PAYMENT_THRESHOLD]]].', 1),
(1311, 1832, 1, 'Please confirm your withdrawal of [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[AVAILABLE_FOR_WITHDRAWAL]]]:', 1),
(1312, 1482, 1, 'Your PayPal Email Address:', 1),
(1313, 1483, 1, '\n                Once you\'ve completed your registration just start uploading your files and sharing the download links with your family and friends.<br/><br/>You\'ll be paid for any downloads outside of your account. Note: We only count completed downloads and downloads from unique IP addresses.\n                ', 1),
(1314, 1484, 1, '<p class=\"rewardsTopPadding\"><strong>How can I claim my rewards?</strong></p>\n            <p>\n                Any rewards will take [[[PAYMENT_LEAD_TIME]]] days to clear within your account. Once your cleared rewards are over [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[PAYMENT_THRESHOLD]]] you can request a payment via your account. Payments are made on the [[[PAYMENT_DATE]]] of every month via PayPal.\n            </p>\n            <p class=\"rewardsTopPadding\"><strong>How do I get started?</strong></p>\n            <p>\n                Signup for an account on our <a href=\"[[[WEB_ROOT]]]/register\">registration page</a>.\n                [[[ADDITIONAL_TEXT]]]\n            </p>', 1),
(1315, 1485, 1, 'Password must be more than #VALUE# characters long', 1),
(1316, 1486, 1, 'Password must be less than #VALUE# characters long', 1),
(1317, 1487, 1, 'Password must contain at least #VALUE# uppercase characters', 1),
(1318, 1488, 1, 'Password must contain at least #VALUE# numbers', 1),
(1319, 1489, 1, 'Password must contain at least #VALUE# non-aplhanumeric characters', 1),
(1320, 1490, 1, 'Confirm Password', 1),
(1321, 1491, 1, 'Your password confirmation does not match', 1),
(1322, 1492, 1, 'Optional. Confirm the password entered above, leave this blank to keep your existing.', 1),
(1323, 1493, 1, 'webm', 1),
(1324, 1494, 1, 'Please enter your PaySafeCard application key. This can be found in Application Settings.', 1),
(1325, 1495, 1, 'Please enter your PaySafeCard password.', 1),
(1326, 1496, 1, 'Plugin Settings', 1),
(1327, 1497, 1, 'Plugin State', 1),
(1328, 1498, 1, 'Whether the Micropayment payment option for upgrades is enabled', 1),
(1329, 1499, 1, 'Plugin Enabled', 1),
(1330, 1500, 1, 'Your Micropayment account number.', 1),
(1331, 1501, 1, 'Account number', 1),
(1332, 1502, 1, 'Project Name', 1),
(1333, 1503, 1, 'Campaign Name', 1),
(1334, 1504, 1, 'Theme Name', 1),
(1335, 1505, 1, 'Gfx Name', 1),
(1336, 1506, 1, 'Currency', 1),
(1337, 1507, 1, 'Credit Card Enabled?', 1),
(1338, 1508, 1, 'Direct Debit Enabled?', 1),
(1339, 1509, 1, 'Telephone Payment Enabled?', 1),
(1340, 1510, 1, 'SMS Payment Enabled?', 1),
(1341, 1511, 1, 'Your Micropayment account number. Signup via <a href=\"http://micropayment.ch\" target=\"_blank\">micropayment.ch</a>', 1),
(1342, 1512, 1, 'Please enter your Micropayment Account.', 1),
(1343, 1513, 1, 'Please enter your Micropayment Project Name.', 1),
(1344, 1514, 1, 'Please enter your Micropayment Theme.', 1),
(1345, 1515, 1, 'Please enter your Micropayment Gfx Name.', 1),
(1346, 1516, 1, 'Please enter your Micropayment Currency.', 1),
(1347, 1517, 1, 'html?', 1),
(1348, 17386, 1, ', account, paid, membership, download,  image, picture, pic, img, hosting, sharing, upload, storage, site, website', 1),
(1349, 1540, 1, 'com', 1),
(1350, 1541, 1, '7e0ov', 1),
(1351, 1542, 1, 'Download All Files (Zip)', 1),
(1352, 19398, 1, 'Are you sure you want to download all the files in this folder? This may take some time to complete.', 1),
(1353, 1544, 1, '- Getting ', 1),
(1354, 1545, 1, 'Download Zip File', 1),
(1355, 1546, 1, 'Confirm 2', 1),
(1356, 1547, 1, '- Added folder ', 1),
(1357, 1548, 1, 'File received is larger than permitted. (max [[[MAX_FILESIZE]]])', 1),
(1358, 1550, 1, 'srt', 1),
(1359, 1551, 1, '- select page -', 1),
(1360, 19417, 1, 'Maximum number of files exceeded', 1),
(1361, 19418, 1, 'File type not allowed', 1),
(1362, 19419, 1, 'File is too large', 1),
(1363, 19420, 1, 'File is too small', 1),
(1364, 1556, 1, 'user removed', 1),
(1365, 1557, 1, 'hours', 1),
(1366, 1558, 1, 'mkv', 1),
(1367, 1559, 1, '[[[DAYS]]] day clearing period on all PPS rewards. Next update [[[NEXT_UPDATE]]].', 1),
(1368, 1560, 1, '<p>\n                    Earn [[[PERCENTAGE]]]% of each sale you refer to this site! You can earn money from upgrading users in 2 ways:\n                </p>\n                <ol class=\"rewardsTextList\">\n                    <li>Using your unique affiliate id, simply link to the site via your existing website. You\'ll earn [[[PERCENTAGE]]]% for any users which register for an account and subsequently upgrade.</li>\n                    <li>From users which upgrade to download files within your account.</li>\n                </ol>\n                <p>\n                    Begin by uploading and sharing your files or by linking from your existing site using your affiliate id like this:\n                </p>\n                <ul>\n                    <li><a href=\"[[[WEB_ROOT]]]/?aff=[[[AFFILIATE_KEY]]]\">[[[WEB_ROOT]]]/?aff=[[[AFFILIATE_KEY]]]</a></li>\n                </ul>', 1),
(1369, 1561, 1, '<p>\n                    Earn [[[PERCENTAGE]]]% of each sale you refer to this site! You can earn money from upgrading users in 2 ways:\n                </p>\n                <ol class=\"rewardsTextList\">\n                    <li>Using your unique affiliate id, simply link to the site via your existing website. You\'ll earn [[[PERCENTAGE]]]% for any users which register for an account and subsequently upgrade.</li>\n                    <li>From users which upgrade to download files within your account.</li>\n                </ol>\n                <p><strong>How much can you earn?</strong></p>\n                \n                <p>Based on [[[MONTHLY_UPGRADE_EXAMPLE]]] upgrades and each upgrade costing [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[SITE_CONFIG_COST_FOR_30_DAYS_PREMIUM]]] per month, you could earn the following:</p>', 1),
(1370, 1562, 1, 'Month:', 1),
(1371, 1563, 1, 'Referrals:', 1),
(1372, 1564, 1, 'Total Referrals: (inc renewals)', 1),
(1373, 1565, 1, 'Monthly Total:', 1),
(1374, 1566, 1, 'Total:', 1),
(1375, 1567, 1, '\n                Once you\'ve completed your registration you\'ll find your affiliate id in the \'rewards\' section of your account. Begin by uploading and sharing your files or by linking from your existing site using your affiliate id like this:\n                <ul>\n                    <li><a href=\"[[[WEB_ROOT]]]/?aff=[AFFILIATE_ID]\">[[[WEB_ROOT]]]/?aff=[AFFILIATE_ID]</a></li>\n                </ul>', 1),
(1376, 19425, 1, 'ps', 1),
(1377, 19427, 1, 'Uploaded', 1),
(1378, 1570, 1, 'Active file with same name found in the same folder. Please ensure the file name is unique.', 1),
(1379, 1571, 1, 'There are already [[[TOTAL_SAME]]] file(s) with the same filename in that folder. Files can not be removed.', 1),
(1380, 19517, 1, 'Clear Filter', 1),
(1381, 19518, 1, 'Apply Filter', 1),
(1382, 1574, 1, 'Filter Your Files', 1),
(1383, 1575, 1, 'Error: No active files in folder.', 1),
(1384, 1576, 1, 'Optional Password:', 1),
(1385, 1577, 1, 'Folder created.', 1),
(1386, 1578, 1, 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</span>', 1),
(1387, 1579, 1, 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</strong>', 1),
(1388, 1580, 1, 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</li>', 1),
(1389, 1581, 1, 'Folder updated.', 1),
(1390, 1582, 1, 'rdp', 1),
(1391, 1583, 1, 'Loading...', 1),
(1392, 1584, 1, 'Success', 1),
(1393, 1585, 1, 'Available Storage', 1),
(1394, 1586, 1, 'Used Storage', 1),
(1395, 1587, 1, 'Upload Files', 1),
(1396, 1588, 1, 'Click to <a href=\"#\" onClick=\"uploadFiles(); return false;\">Upload</a>', 1),
(1397, 1589, 1, 'Sort By', 1),
(1398, 1590, 1, 'Welcome, to, the,File Upload Scriptterms, of, service. Please, read, them, fully', 1),
(1399, 1991, 1, 'Please use the following form to report any copyright infringements ensuring you supply all the following information', 1),
(1400, 1592, 1, 'Enter Text or something.... ', 1),
(1401, 19529, 1, 'Loading, please wait...', 1),
(1402, 1875, 1, 'A password is required to access this file, please enter it below.', 1),
(1403, 1594, 1, 'Enter Text or something.... ', 1),
(1404, 1857, 1, 'Please check your spam filters to ensure emails from this site get through. Emails from this site are sent from [[[SITE_CONFIG_DEFAULT_EMAIL_ADDRESS_FROM]]]', 1),
(1405, 1869, 1, 'Statistics', 1),
(1406, 1596, 1, 'Enter Text or something.... ', 1),
(1407, 1800, 1, 'Information about', 1),
(1408, 1801, 1, 'psd', 1),
(1409, 1598, 1, 'Enter Text or something.... ', 1),
(1410, 1860, 1, '[[[SITE_CONFIG_SITE_NAME]]] frequently asked questions. If you have anymore questions please <a href=\'[[[WEB_ROOT]]]/contact\'>contact us</a>', 1),
(1411, 1600, 1, 'Enter some text or something.....', 1),
(1412, 1856, 1, 'Please enter your information to register for an account. Your new account password will be sent to your email address.', 1),
(1413, 1603, 1, 'Enter some text or something.....', 1),
(1414, 1864, 1, 'Share Files', 1),
(1415, 1605, 1, 'Enter some text or something.....', 1),
(1416, 1607, 1, 'Enter Text or something.... ', 1),
(1417, 1609, 1, 'Enter some text or something.....', 1),
(1418, 19508, 1, 'Save Options', 1),
(1419, 19457, 1, 'Processing...', 1),
(1420, 1615, 1, 'Download files directly from other sites into your account. Note: If the files are on another file download site or password protected, this may not work.', 1),
(1421, 19495, 1, 'Transfer Files', 1),
(1422, 1861, 1, 'Sign up now!', 1),
(1423, 1862, 1, 'Home', 1),
(1424, 1618, 1, 'Enter Text or something.... ', 1),
(1425, 1619, 1, 'File Information', 1),
(1426, 1876, 1, '', 1),
(1427, 1621, 1, 'Enter Text or something.... ', 1),
(1428, 19399, 1, 'Uploading...', 1),
(1429, 19402, 1, 'Upload Progress:', 1),
(1430, 19401, 1, 'Upload complete. Click here to view links.', 1),
(1431, 1627, 1, 'account settings', 1),
(1432, 1628, 1, 'Welcome', 1),
(1433, 16996, 1, 'Or', 1),
(1434, 19372, 1, 'Logout', 1),
(1435, 1866, 1, 'Safe and Secure', 1),
(1436, 1632, 1, 'Downloads [[[DOWNLOAD_DATE]]]', 1),
(1437, 1633, 1, 'Change password.', 1),
(1438, 1634, 1, 'Account avatar.', 1),
(1439, 1635, 1, 'Select File (jpg, png or gif)', 1),
(1440, 1636, 1, 'The uploaded image can not be more than [[[MAX_SIZE_FORMATTED]]]', 1),
(1441, 1637, 1, 'Your avatar must be a jpg, png or gif image.', 1),
(1442, 1638, 1, 'Remove avatar', 1),
(1443, 1639, 1, '- File is too large to include in zip file ([[[FILE_NAME]]], [[[FILE_SIZE_FORMATTED]]])', 1),
(1444, 1640, 1, 'Error: Selected files are greater than [[[MAX_FILESIZE]]] in total. Can not create zip.', 1),
(1445, 1641, 1, 'Error: Selected files are greater than [[[MAX_FILESIZE]]] (total [[[TOTAL_SIZE_FORMATTED]]]). Can not create zip.', 1),
(1446, 1642, 1, 'Folder', 1),
(1447, 1643, 1, 'Filename', 1),
(1448, 1644, 1, 'Folder:', 1),
(1449, 1645, 1, 'Where', 1),
(1450, 1646, 1, 'Current Folder', 1),
(1451, 1647, 1, 'All Files', 1),
(1452, 19511, 1, 'Freetext search...', 1),
(1453, 19515, 1, 'Select range...', 1),
(1454, 1651, 1, 'Uploaded [[[UPLOADED_DATE]]]', 1),
(1455, 1872, 1, 'csv', 1),
(1456, 1873, 1, 'Mcypt functions not found within PHP, please ask support to install and try again.', 1),
(1457, 1653, 1, 'Uploaded [[[UPLOADED_DATE]]]', 1),
(1458, 1870, 1, 'mozilla', 1),
(1459, 1871, 1, 'View file statistics', 1),
(1460, 1655, 1, 'Uploaded [[[UPLOADED_DATE]]] Downloads [[[DOWNLOAD_DATE]]]', 1),
(1461, 1656, 1, 'Uploaded [[[UPLOADED_DATE]]]</br> Downloads [[[DOWNLOAD_DATE]]]', 1),
(1462, 1657, 1, 'The expiry date is in the past.', 1),
(1463, 1658, 1, 'Ban Expiry', 1),
(1464, 1659, 1, 'You have been temporarily blocked from logging in due to too many failed login attempts. Please try again [[[EXPIRY_TIME]]].', 1),
(1465, 1660, 1, 'Password changed for account on [[[SITE_NAME]]]', 1),
(1466, 1661, 1, 'Dear [[[FIRST_NAME]]],<br/><br/>This is a courtesy email notifying you that your account password on [[[SITE_NAME]]] has been changed.<br/><br/>If you didn\'t change your password, please contact us immediately. Otherwise just ignore this email.<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(1467, 1662, 1, 'Email changed for account on [[[SITE_NAME]]]', 1),
(1468, 1663, 1, 'Dear [[[FIRST_NAME]]],<br/><br/>This is a courtesy email notifying you that your account email address on [[[SITE_NAME]]] has been changed to [[[NEW_EMAIL]]].<br/><br/>If you didn\'t change your email address, please contact us immediately. Otherwise just ignore this email.<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><strong>New Email:</strong> [[[NEW_EMAIL]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(1469, 1664, 1, 'Could not find file owner username. Leave blank to set the file with no owner.', 1),
(1470, 1665, 1, 'Short url already exists on another file.', 1),
(1471, 1666, 1, 'Short url structure is invalid. Only alphanumeric values are allowed.', 1),
(1472, 1667, 1, 'Secure and safe', 1),
(1473, 1668, 1, 'secure and safe uploads', 1),
(1474, 1669, 1, 'ods', 1),
(1475, 1670, 1, 'odt', 1),
(1476, 1671, 1, 'Instant Access', 1),
(1477, 1672, 1, 'manage themes', 1),
(1478, 1673, 1, 'add theme', 1),
(1479, 1674, 1, 'themes', 1),
(1480, 1675, 1, 'theme title', 1),
(1481, 1676, 1, 'Theme folder is not writable. Ensure you set the following folder to CHMOD 755 or 777: [[[THEME_FOLDER]]]', 1),
(1482, 1677, 1, 'What are you waiting for?', 1),
(1483, 1678, 1, 'Register below!', 1),
(1484, 1679, 1, 'Register', 1),
(1485, 1680, 1, 'Slow...', 1),
(1486, 1681, 1, 'Super Fast!', 1),
(1487, 1682, 1, 'test sdkjfgk dsfkudfh gkusdf hgukdg sdugshfdgsdfgsughuft hfsghsfghsfghf ', 1),
(1488, 1683, 1, 'test', 1),
(1489, 1684, 1, 'File', 1),
(1490, 1685, 1, 'Safe and Secure', 1),
(1491, 1686, 1, 'Safely store and backup all your essential files. From family photos & videos to important documents, you can rely on us to store all your media securely and forever.', 1),
(1492, 1687, 1, 'Select Payment Method:', 1),
(1493, 1689, 1, 'Enter Text or something.... ', 1),
(1494, 1690, 1, 'Direction', 1),
(1495, 1706, 1, 's', 1),
(1496, 1709, 1, 's', 1),
(1497, 1708, 1, 's', 1),
(1498, 19507, 1, 'Cancel', 1),
(1499, 1705, 1, 's', 1),
(1500, 1704, 1, 's', 1),
(1501, 1752, 1, 'Error: Can not download root folder as zip file.', 1),
(1502, 1703, 1, 's', 1),
(1503, 1702, 1, 's', 1),
(1504, 19446, 1, 'Hide', 1),
(1505, 1698, 1, 's', 1),
(1506, 1699, 1, 's', 1),
(1507, 1885, 1, 'File is larger than permitted. (max [[[MAX_FILESIZE]]])', 1),
(1508, 1700, 1, 's', 1),
(1509, 1697, 1, 's', 1),
(1510, 1859, 1, '', 1),
(1511, 1855, 1, 'You\'re just one step away from taking advantage of our file sharing service!', 1),
(1512, 1696, 1, 's', 1),
(1513, 20579, 1, 'last', 1),
(1514, 19832, 1, 'By', 1),
(1515, 16898, 1, 'Share on Facebook, Twitter, via Email & more.', 1),
(1516, 16894, 1, 'Upload Your Images From <strong>Any Device</strong>.', 1),
(1517, 20581, 1, 'view now', 1),
(1518, 19580, 1, 'Browse Categories', 1),
(1519, 1692, 1, 's', 1),
(1520, 1777, 1, 'Dear [[[FIRST_NAME]]],<br/><br/>We\'ve received a request to reset your password on [[[SITE_NAME]]] for account [[[USERNAME]]]. Follow the url below to set a new account password:<br/><br/><a href=\'[[[WEB_ROOT]]]/forgot_password_reset?u=[[[ACCOUNT_ID]]]&h=[[[RESET_HASH]]]\'>[[[WEB_ROOT]]]/forgot_password_reset?u=[[[ACCOUNT_ID]]]&h=[[[RESET_HASH]]]</a><br/><br/>If you didn\'t request a password reset, just ignore this email and your existing password will continue to work.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(1521, 1778, 1, 'Password reset instructions for account on [[[SITE_NAME]]]', 1),
(1522, 1695, 1, 's', 1),
(1523, 1691, 1, 's', 1),
(1524, 3073, 1, 'Powerful Image Hosting', 1),
(1525, 20582, 1, 'Choose free or premium access', 1),
(1526, 1868, 1, 'Welcome to the [[[SITE_CONFIG_SITE_NAME]]] terms of service. Please read them fully.', 1),
(1527, 17385, 1, 'See below for the various account and payment options.', 1),
(1528, 1854, 1, '', 1),
(1529, 1714, 1, 's', 1),
(1530, 1715, 1, 's', 1),
(1531, 1721, 1, 's', 1),
(1532, 1722, 1, 's', 1),
(1533, 1723, 1, 's', 1),
(1534, 1754, 1, 'Send Via Email', 1),
(1535, 1753, 1, 'File Details', 1),
(1536, 19443, 1, 'Upload Queue', 1),
(1537, 1840, 1, 'Your withdrawal request has been made. You\'ll receive further information once the request has been approved.', 1),
(1538, 1725, 1, 's', 1),
(1539, 1726, 1, 's', 1),
(1540, 1727, 1, 's', 1),
(1541, 1738, 1, 's', 1),
(1542, 1739, 1, 's', 1),
(1543, 1741, 1, 's', 1),
(1544, 1746, 1, 's', 1),
(1545, 1747, 1, 's', 1),
(1546, 1751, 1, 'test123456', 1),
(1547, 1748, 1, 's', 1),
(1548, 1749, 1, 's', 1),
(1549, 1750, 1, 's', 1),
(1550, 1757, 1, 'extra info', 1),
(1551, 1756, 1, 'additional info', 1),
(1552, 1755, 1, 'view image', 1),
(1553, 19461, 1, 'Close', 1),
(1554, 16873, 1, 'Upload, access, organize, edit, and share your photos from any device, from anywhere in the world.', 1),
(1555, 1863, 1, 'Store and Manage', 1),
(1556, 1776, 1, 'later', 1),
(1557, 1770, 1, 'view document', 1),
(1558, 1771, 1, 'watch video', 1),
(1559, 1772, 1, 'play audio', 1),
(1560, 1773, 1, 'profile', 1),
(1561, 1774, 1, 'logging in...', 1),
(1562, 1775, 1, 'requesting reset...', 1),
(1563, 1779, 1, 'setting password...', 1),
(1564, 1780, 1, 'General error', 1),
(1565, 1781, 1, 'Your password has been reset. You can now login to the site below.', 1),
(1566, 1782, 1, 'You must be a [[[USER_TYPE]]] to download this file.', 1),
(1567, 18664, 1, 'send email', 1),
(1568, 18660, 1, 'Use the form below to share this file via email. The recipient will receive a link to download the file.', 1),
(1569, 1785, 1, 'message', 1),
(1570, 18662, 1, 'recipient email address', 1),
(1571, 20879, 1, 'extra message (optional)', 1),
(1572, 18661, 1, 'recipient full name', 1),
(1573, 1789, 1, 'Please enter the recipient name.', 1),
(1574, 1790, 1, 'Please enter the recipient email address.', 1),
(1575, 1791, 1, 'File shared by [[[SHARED_BY_NAME]]] on [[[SITE_NAME]]]', 1),
(1576, 1792, 1, 'n/a', 1),
(1577, 1793, 1, 'File sent via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 1),
(1578, 1795, 1, 'Please enter a valid recipient email address.', 1),
(1579, 1796, 1, 'Dear [[[RECIPIENT_NAME]]],<br/><br/>[[[SHARED_BY_NAME]]] has shared the following file with you via <a href=\'[[[WEB_ROOT]]]\'>[[[SITE_NAME]]]</a>:<br/><br/><strong>File:</strong> [[[FILE_NAME]]]<br/><strong>Url:</strong> [[[FILE_URL]]]<br/><strong>From:</strong> [[[SHARED_BY_NAME]]] ([[[SHARED_EMAIL_ADDRESS]]])<br/><strong>Message:</strong> [[[EXTRA_MESSAGE]]]<br/><br/>Feel free to contact us if you have any difficulties downloading the file.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(1580, 1797, 1, 'get themes', 1),
(1581, 1799, 1, 'newsletter text', 1),
(1582, 1804, 1, 'Your PHP limits on [[[SERVER_NAME]]] need to be set to at least [[[MAX_SIZE]]] to allow larger files to be uploaded (currently [[[CURRENT_LIMIT]]]). Contact your host to set.', 1),
(1583, 1805, 1, 'Could not move the file into storage on [[[SERVER]]], possibly a permissions issue with the file storage directory.', 1),
(1584, 1806, 1, 'admin removed', 1),
(1585, 1867, 1, 'Register', 1),
(1586, 1809, 1, 'Download file', 1),
(1587, 1813, 1, 'Registration from email addresses on [[[EMAIL_DOMAIN]]] have been blocked on this site.', 1),
(1588, 1814, 1, 'Date Added', 1),
(1589, 1816, 1, '', 1),
(1590, 1817, 1, 'Your paid account is expiring in [[[DAYS]]] days. Your inactive files may removed if you do not renew your membership. Click here for more information.', 1),
(1591, 1818, 1, 'admin User', 1),
(1592, 1819, 1, 'Could not read the theme settings file \'_theme_config.inc.php\'.', 1),
(1593, 1820, 1, 'Active Servers', 1),
(1594, 1821, 1, 'File Path', 1),
(1595, 1822, 1, 'Server', 1),
(1596, 1823, 1, 'File Action', 1),
(1597, 1824, 1, 'manage file action queue', 1),
(1598, 1825, 1, 'action queue', 1),
(1599, 1826, 1, 'dev.mellowfish.com', 1),
(1600, 1865, 1, 'Fast Downloading', 1),
(1601, 1828, 1, '', 1),
(1602, 1829, 1, 'Embed HTML Code', 1),
(1603, 1830, 1, 'Embed Forum Code', 1),
(1604, 1831, 1, 'Direct Link', 1),
(1605, 1833, 1, 'Payment Method:', 1),
(1606, 1834, 1, 'Paypal Email:', 1),
(1607, 1835, 1, 'Your Postal Address:', 1),
(1608, 1836, 1, 'Your Account Name:', 1),
(1609, 1837, 1, 'International Iban Number:', 1),
(1610, 1838, 1, 'Swift Number:', 1),
(1611, 1839, 1, 'Error: Please enter all the outpayment details.', 1),
(1612, 1841, 1, 'Method', 1),
(1613, 1842, 1, 'total paid', 1),
(1614, 1846, 1, '', 1),
(1615, 1847, 1, 'Thanks for registering and welcome to your account! Start uploading files straight away by clicking the \'Upload\' button below. Feel free to contact us if you need any help.', 1),
(1616, 1848, 1, 'xlsx', 1),
(1617, 16880, 1, 'First Class Image Manager', 1),
(1618, 1880, 1, '91838000 1', 1),
(1619, 1881, 1, '34782400 1', 1),
(1620, 1882, 1, '99907800 1', 1),
(1621, 1883, 1, 'xml', 1),
(1622, 1884, 1, 'profsave', 1),
(1623, 1886, 1, 'mov', 1),
(1624, 1887, 1, 'db', 1),
(1625, 1888, 1, 'Paid User', 1),
(1626, 1889, 1, 'Want to earn some money?', 1),
(1627, 1890, 1, 'You can earn thousands of dollers from us!', 1),
(1628, 1891, 1, 'Earn Money', 1),
(1629, 1894, 1, 'View Tickets', 1),
(1630, 1895, 1, 'Create Ticket', 1),
(1631, 1896, 1, 'Support Tickets', 1),
(1632, 1934, 1, 'Delete Selected', 1),
(1633, 19403, 1, 'Are you sure you want to duplicate the selected [[[TOTAL_FILES]]] file(s)?', 1),
(1634, 1957, 1, 'Duplicate', 1),
(1635, 1958, 1, 'Files duplicated in current folder.', 1),
(1636, 1959, 1, 'Enter Your Account Home', 1),
(1637, 1960, 1, 'Your Files', 1),
(1638, 1961, 1, 'Upload, share and manage your files', 1),
(1639, 1964, 1, 'Please confirm whether to delete the file below.', 1),
(1640, 1965, 1, 'Logout', 1),
(1641, 1966, 1, 'File Hosting Script', 1),
(1642, 1967, 1, 'Upload', 1),
(1643, 1968, 1, 'Free File Hosting Manager', 1),
(1644, 1969, 1, 'Happy Customers', 1),
(1645, 1970, 1, 'Facebook Likes', 1),
(1646, 1971, 1, 'Twiter Followers', 1),
(1647, 1972, 1, 'Files Downloaded', 1),
(1648, 1973, 1, 'Upload', 1),
(1649, 1974, 1, 'Premium', 1),
(1650, 1975, 1, 'Terms & Conditions', 1),
(1651, 1976, 1, 'FAQ', 1),
(1652, 1977, 1, 'Report Files', 1),
(1653, 1978, 1, 'Contact Us', 1),
(1654, 1979, 1, '100% Safe &', 1),
(1655, 1980, 1, 'Anonymous', 1),
(1656, 1981, 1, 'Contact', 1),
(1657, 1982, 1, 'Home', 1),
(1658, 1983, 1, 'Submit Form', 1),
(1659, 1984, 1, 'Report File', 1),
(1660, 1985, 1, 'Submit Report', 1),
(1661, 1986, 1, 'Thanks for your payment!', 1),
(1662, 1987, 1, '', 1),
(1663, 1988, 1, 'Password Reset', 1),
(1664, 1989, 1, 'Request Reset', 1),
(1665, 1990, 1, 'Login', 1),
(1666, 1992, 1, 'download / view now', 1),
(1667, 19836, 1, 'Total Images', 1),
(1668, 1994, 1, 'There was a problem creating the theme folder. Please ensure the following folder has CHMOD 777 permissions: /var/www/php_site_scripts/file_hosting/themes/', 1),
(1669, 17396, 1, ' HOME', 1),
(1670, 1996, 1, 'rewards', 1),
(1671, 1997, 1, 'rewards', 1),
(1672, 1998, 1, 'index1', 1),
(1673, 1999, 1, 'index2', 1),
(1674, 2000, 1, 'index3', 1),
(1675, 2001, 1, '', 1),
(1676, 2002, 1, '', 1),
(1677, 2003, 1, 'Thank you for registering!', 1),
(1678, 2004, 1, '', 1),
(1679, 2006, 1, 'remote access', 1),
(1680, 20577, 1, 'previous', 1),
(1681, 2045, 1, 'Extract Files', 1),
(1682, 2046, 1, 'Compress to Zip/Rar', 1),
(1683, 16882, 1, 'Slick image management for the digital generation', 1),
(1684, 2071, 1, 'No', 1),
(1685, 2072, 1, 'Yes', 1),
(1686, 2079, 1, 'Frequently Asked Questions', 1),
(1687, 2080, 1, 'Register', 1),
(1688, 2083, 1, 'rar', 1),
(1689, 2084, 1, 'Alert', 1),
(1690, 2085, 1, 'Search', 1),
(1691, 2086, 1, 'dashboard', 1),
(1692, 2087, 1, 'Plugins', 1),
(1693, 2088, 1, 'Configuration', 1),
(1694, 2089, 1, 'more....', 1),
(1695, 2090, 1, 'new notifications.', 1),
(1696, 19363, 1, 'You have <strong>[[[UNREAD]]]</strong> new notifications.', 1),
(1697, 2092, 1, 'Premium Download (No Waiting Time)', 1),
(1698, 2093, 1, 'Download', 1),
(1699, 2094, 1, 'Manage Torrents', 1),
(1700, 2095, 1, 'Torrents', 1),
(1701, 2103, 1, 'Ms', 1),
(1702, 2104, 1, 'View Torrents', 1),
(1703, 2126, 1, 'background task logs', 1),
(1704, 2127, 1, 'Task Name', 1),
(1705, 2128, 1, 'Last Update', 1),
(1706, 2129, 1, 'Last Run', 1),
(1707, 2130, 1, 'Start Time', 1),
(1708, 2131, 1, 'End Time', 1),
(1709, 19839, 1, 'Total Likes', 1),
(1710, 2133, 1, 'css', 1),
(1711, 2134, 1, 'Item1', 1),
(1712, 2135, 1, 'Item2', 1),
(1713, 2140, 1, 'week', 1),
(1714, 2141, 1, 'weeks', 1),
(1715, 16886, 1, 'Desktop Image Manager', 1),
(1716, 2152, 1, 'Mark all Read', 1),
(1717, 2153, 1, 'You have <strong>[[[UNREAD]]]</strong> new notification.', 1),
(1718, 2155, 1, '000', 1),
(1719, 2156, 1, 'Date Added', 1),
(1720, 2157, 1, 'Type', 1),
(1721, 2158, 1, 'Please enter your G2aPay secret key.', 1),
(1722, 2159, 1, '001', 1),
(1723, 19440, 1, 'Drag &amp; drop images here or click to browse...', 1),
(1724, 17395, 1, 'UPLOAD', 1),
(1725, 19437, 1, 'Add images...', 1),
(1726, 2174, 1, 'add more...', 1),
(1727, 2175, 1, 'add more', 1),
(1728, 19421, 1, 'ERROR: There was a server problem when attempting the upload.', 1),
(1729, 2177, 1, 'Album', 1),
(1730, 19383, 1, 'Add Album', 1),
(1731, 2179, 1, 'Edit', 1),
(1732, 2180, 1, 'Delete', 1),
(1733, 19389, 1, 'Share Album', 1),
(1734, 19512, 1, 'Current Album', 1),
(1735, 2183, 1, 'Album Name:', 1),
(1736, 2184, 1, 'Parent Album:', 1),
(1737, 2185, 1, 'Public:', 1),
(1738, 2186, 1, 'Optional Password:', 1),
(1739, 19387, 1, 'Add Album', 1),
(1740, 19390, 1, 'Are you sure you want to remove this album? Any files within the album will be moved into your default root folder and remain active.', 1),
(1741, 2189, 1, 'Please enter the album name', 1),
(1742, 2190, 1, 'There was a problem updating the album, please try again later.', 1),
(1743, 19346, 1, 'your albums', 1),
(1744, 2192, 1, 'Album created.', 1),
(1745, 2193, 1, 'Edit Existing Album', 1),
(1746, 2194, 1, 'update album', 1),
(1747, 19388, 1, 'Download All Images (Zip)', 1),
(1748, 19509, 1, 'Filter Your Images', 1),
(1749, 19513, 1, 'All Albums', 1),
(1750, 19522, 1, 'Image Urls', 1),
(1751, 2199, 1, 'Theme', 1),
(1752, 2200, 1, 'Manage', 1),
(1753, 2201, 1, 'Add', 1),
(1754, 2202, 1, 'Image Categories', 1),
(1755, 2203, 1, 'Manage Categories', 1),
(1756, 2204, 1, 'Add Category', 1),
(1757, 2205, 1, 'Album updated.', 1),
(1758, 2206, 1, 'Leave us a message', 1),
(1759, 2207, 1, 'More Info', 1),
(1760, 2208, 1, 'No categories found in current search filter.', 1),
(1761, 2209, 1, 'Category with same name or url key already exists. Please try again.', 1),
(1762, 2210, 1, 'Please enter the category url key', 1),
(1763, 2211, 1, 'Please enter the category name', 1),
(1764, 2212, 1, 'category', 1),
(1765, 19505, 1, 'public category', 1),
(1766, 2214, 1, 'public category (shown on the public image browsing pages)', 1),
(1767, 2215, 1, '(shown on the public image browsing pages)', 1),
(1768, 2216, 1, 'album', 1),
(1769, 2217, 1, 'Image Privacy:', 1),
(1770, 2218, 1, 'Private, no access outside of your account.', 1),
(1771, 2219, 1, 'Limited, access only if users know the sharing link.', 1),
(1772, 2220, 1, 'Public, listed on the site and within search results.', 1),
(1773, 2221, 1, 'File Privacy:', 1),
(1774, 18649, 1, 'views', 1),
(1775, 2224, 1, 'track 1', 1),
(1776, 2225, 1, 'Image Stats', 1),
(1777, 19394, 1, 'Edit Image', 1),
(1778, 18645, 1, 'Image Stats', 1),
(1779, 18646, 1, 'Download Image', 1),
(1780, 2229, 1, 'Delete Image', 1),
(1781, 18652, 1, 'sharing code', 1),
(1782, 18654, 1, 'image data', 1),
(1783, 19340, 1, 'Browse', 1),
(1784, 19341, 1, 'Browse Images', 1),
(1785, 19342, 1, 'browser, images, file, your, interface, upload, download, site', 1),
(1786, 2235, 1, 'Search Images...', 1),
(1787, 19359, 1, 'Search images...', 1),
(1788, 19361, 1, 'Advanced Search', 1),
(1789, 2238, 1, 'used', 1),
(1790, 2239, 1, 'Unlimited Storage', 1),
(1791, 2240, 1, 'account types', 1),
(1792, 2241, 1, 'account packages', 1),
(1793, 2242, 1, 'upload allowed', 1),
(1794, 2243, 1, 'max upload size', 1),
(1795, 2244, 1, 'upgrade page', 1),
(1796, 2245, 1, 'total users', 1),
(1797, 2246, 1, 'label', 1),
(1798, 2247, 1, 'period label', 1),
(1799, 2248, 1, 'price usd', 1),
(1800, 2249, 1, 'price gbp', 1),
(1801, 2250, 1, 'price eur', 1),
(1802, 2251, 1, 'pricing label', 1),
(1803, 2252, 1, 'price', 1),
(1804, 2253, 1, 'account package', 1),
(1805, 2255, 1, 'Note', 1),
(1806, 2256, 1, 'PPD is not available with your account.', 1),
(1807, 2257, 1, 'Note: PPD is not available with your account.', 1),
(1808, 2258, 1, 'Buy Now', 1),
(1809, 2260, 1, '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 1),
(1810, 2261, 1, 'Upgrade To', 1),
(1811, 2262, 1, 'support info', 1),
(1812, 2263, 1, 'Method', 1),
(1813, 2264, 1, 'progress', 1),
(1814, 2265, 1, 'Are you sure you want to cancel this download?', 1),
(1815, 2267, 1, 'clear', 1),
(1816, 2268, 1, 'Please specify the label.', 1),
(1817, 2269, 1, 'That label has already been used, please choose another.', 1),
(1818, 2270, 1, 'Premium account expiry details.', 1),
(1819, 2271, 1, 'Account expiry date', 1),
(1820, 19352, 1, 'Browse', 1),
(1821, 19353, 1, 'Featured', 1),
(1822, 2275, 1, 'Profile', 1),
(1823, 19356, 1, 'Likes', 1),
(1824, 18733, 1, 'last seen', 1),
(1825, 2278, 1, 'Feed', 1),
(1826, 19536, 1, 'albums', 1),
(1827, 18738, 1, 'Likes', 1),
(1828, 19533, 1, 'Images', 1),
(1829, 18735, 1, 'likes received', 1),
(1830, 2283, 1, 'Profile Image.', 1),
(1831, 2284, 1, 'Select File (jpg, png or gif)', 1),
(1832, 2285, 1, 'Your profile image must be a jpg, png or gif image.', 1),
(1833, 2286, 1, 'Remove profile image', 1),
(1834, 18736, 1, 'Edit Profile', 1),
(1835, 2288, 1, 'No albums found.', 1),
(1836, 2289, 1, 'repeat password', 1),
(1837, 2290, 1, 'Speed', 1),
(1838, 2291, 1, 'Comments Overview', 1),
(1839, 2292, 1, 'Reported Comments', 1),
(1840, 18648, 1, 'comments', 1),
(1841, 2299, 1, 'Image sent via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 1),
(1842, 2303, 1, 'by', 1),
(1843, 2305, 1, 'at', 1),
(1844, 2308, 1, 'Like', 1),
(1845, 16995, 1, 'Register', 1),
(1846, 19378, 1, 'All Images', 1),
(1847, 20576, 1, 'first', 1),
(1848, 18647, 1, 'Click to view comments', 1),
(1849, 2318, 1, 'Click to view stats', 1),
(1850, 18650, 1, 'Like this image', 1),
(1851, 19357, 1, 'Your Images', 1),
(1852, 19350, 1, 'selected file', 1),
(1853, 2322, 1, 'private info page', 1),
(1854, 2323, 1, 'Sharing links has been disabled on this file.', 1),
(1855, 2324, 1, 'Premium for', 1),
(1856, 2325, 1, 'user settings', 1),
(1857, 2326, 1, 'package price', 1),
(1858, 2327, 1, 'package pricing label', 1),
(1859, 2328, 1, 'payment period', 1),
(1860, 2329, 1, 'package label', 1),
(1861, 2330, 1, 'allow upload', 1),
(1862, 2331, 1, 'Test User', 1),
(1863, 2332, 1, 'Public - access only if users know the sharing link.', 1),
(1864, 2333, 1, 'file privacy', 1),
(1865, 2334, 1, 'Whether to keep all files private or allow sharing.', 1),
(1866, 2335, 1, 'All Files Publicly Accessible', 1),
(1867, 2336, 1, 'All Files Private (only via your account', 1),
(1868, 2337, 1, 'File is not shared publicly.', 1),
(1869, 2338, 1, 'View Folder', 1),
(1870, 2339, 1, 'View Folder', 1),
(1871, 2340, 1, 'File is not publicly available.', 1),
(1872, 2341, 1, 'permissions', 1),
(1873, 20845, 1, 'Private File - Only available via your account, or via a generated sharing url.', 1),
(1874, 18641, 1, 'Sharing', 1),
(1875, 18642, 1, 'Public File - Can be Shared', 1),
(1876, 2345, 1, 'm2v', 1),
(1877, 2346, 1, 'flv', 1),
(1878, 2348, 1, 'TEST USER USER', 1),
(1879, 2349, 1, 'TEST USER', 1),
(1880, 2350, 1, '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 1),
(1881, 2351, 1, 'Guest', 1),
(1882, 3074, 1, 'Upload, access, organize, edit, and share your photos from any device, from anywhere in the world.', 1),
(1883, 15041, 1, 'Or', 1),
(1884, 15042, 1, 'Premium Pricing', 1),
(1885, 2357, 1, 'Login to your Account', 1),
(1886, 16890, 1, 'Mobile Phone Image Manager', 1),
(1887, 2359, 1, 'Guest User', 1),
(1888, 2361, 1, 'Home', 1),
(1889, 17414, 1, 'Weddings', 1),
(1890, 17415, 1, 'Work', 1),
(1891, 16872, 1, 'Powerful Image Hosting', 1),
(1892, 17406, 1, 'Illustrations', 1),
(1893, 17407, 1, 'Just For Fun', 1),
(1894, 17409, 1, 'Nature', 1),
(1895, 17411, 1, 'Scenes', 1),
(1896, 16924, 1, 'Safely store all of your precious images. You can rely on us to keep your images safe and secure.', 1),
(1897, 2376, 1, '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 1),
(1898, 2377, 1, '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 1),
(1899, 2378, 1, '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 1),
(1900, 17430, 1, 'Most Popular', 1),
(1901, 17439, 1, 'Upgrade Now', 1),
(1902, 2381, 1, 'Register', 1),
(1903, 2382, 1, '<li><i class=\"fa fa-hdd-o\"></i> Advert Supported</li>', 1),
(1904, 2383, 1, 'Register Now', 1),
(1905, 17441, 1, 'Unique Members Area', 1),
(1906, 17420, 1, 'Advert Supported', 1),
(1907, 17442, 1, 'No Adverts', 1),
(1908, 2387, 1, 'Priority Support', 1),
(1909, 2388, 1, 'Features Overview', 1),
(1910, 2389, 1, 'Some of the Features that are gonna blow your mind off', 1),
(1911, 11757, 1, 'Unique Image Manager', 1),
(1912, 11758, 1, 'Our high peformance image manager allows you to control all of your pictures with its easy to use interface.', 1),
(1913, 11760, 1, 'Mobile, Tablet &amp; Desktop', 1),
(1914, 11761, 1, 'Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.', 1),
(1915, 11763, 1, 'Safe &amp; Secure', 1),
(1916, 11764, 1, 'Safely store all of your precious images. You can rely on us to keep your images protected.', 1),
(1917, 11766, 1, 'Backed Up Forever', 1),
(1918, 11767, 1, 'All of your images are securely backed up on our databases to give you peace of mind.', 1),
(1919, 11769, 1, 'Powerful Image Tools', 1),
(1920, 11772, 1, 'Share Your Memories', 1),
(1921, 11773, 1, 'We supply you with all the tools necessary to easily share your images with friends &amp; family.', 1),
(1922, 11775, 1, 'Fast Image Searching', 1),
(1923, 11776, 1, 'Quickly access all of your images by using our fast image searching tools.', 1),
(1924, 11778, 1, 'Private Albums', 1),
(1925, 11779, 1, 'Keep your most personal &amp; valued images entirely private with our locked albums feature.', 1),
(1926, 11781, 1, 'Always On', 1),
(1927, 11782, 1, 'Access our site at any time from any location to store &amp; manage your images.', 1),
(1928, 2408, 1, 'Navigation', 1),
(1929, 17413, 1, 'Travel', 1),
(1930, 16997, 1, 'Premium Access', 1),
(1931, 17412, 1, 'Sports', 1),
(1932, 6169, 1, 'First Class Image Manager', 1),
(1933, 6170, 1, 'Some of the Features that are gonna blow your mind off', 1),
(1934, 14512, 1, 'Flexible &amp; Easy Pricing for wide Audience Groups', 1),
(1935, 14791, 1, 'What are you waiting for? Join us!', 1),
(1936, 2417, 1, 'Any', 1),
(1937, 2418, 1, 'Personal', 1),
(1938, 19499, 1, 'store in album:', 1),
(1939, 2420, 1, 'Select an album below to store these files in. All current uploads files will be available within these albums.', 1),
(1940, 2421, 1, 'When downloading these images, users will be prompted for a password, if set. Download managers will not work if a password is set.', 1),
(1941, 19497, 1, 'Enter an email address below to send the list of images via email once they\'re uploaded.', 1),
(1942, 19501, 1, 'Album Name', 1),
(1943, 19447, 1, 'Image uploads completed.', 1),
(1944, 19460, 1, '<a href=\"[[[WEB_ROOT]]]\">Click here</a> to upload more images.', 1),
(1945, 19458, 1, 'View All Links', 1),
(1946, 2427, 1, 'View image on', 1),
(1947, 2428, 1, 'on', 1),
(1948, 2429, 1, 'Sharing Url:', 1),
(1949, 2430, 1, 'Sharing Url:', 1),
(1950, 2431, 1, 'your album', 1),
(1951, 19504, 1, 'Listed in this category whe shared publicly on the site. Leave blank if you are keeping the images private.', 1),
(1952, 2437, 1, 'Public Limited - access only if users know the sharing link.', 1);
INSERT INTO `language_content` (`id`, `languageKeyId`, `languageId`, `content`, `is_locked`) VALUES
(1953, 2438, 1, 'You can not update this [[[FILEFOLDER]]] permissions as your account settings are set to make all files private.', 1),
(1954, 2439, 1, 'Album Privacy:', 1),
(1955, 2440, 1, 'You can not update this album privacy settings as your account settings are set to make all files private or the parent folder is set to private.', 1),
(1956, 2441, 1, 'Note: You can not update this album privacy settings as your account settings are set to make all files private or the parent folder is set to private.', 1),
(1957, 2442, 1, 'Whether to keep all files private or allow sharing. If this is set as public, you can still set albums as private.', 1),
(1958, 2443, 1, 'Privacy', 1),
(1959, 2444, 1, 'Default Album Privacy', 1),
(1960, 2445, 1, 'Image Statistics', 1),
(1961, 2446, 1, 'Folder is not publicly shared. Please contact the owner and request they update the privacy settings.', 1),
(1962, 19384, 1, 'Upload Images', 1),
(1963, 6652, 1, 'Desktop Image Manager', 1),
(1964, 6653, 1, 'Tablet Image Manager', 1),
(1965, 6654, 1, 'Phone Image Manager', 1),
(1966, 2452, 1, 'Image Sample', 1),
(1967, 11756, 1, 'Unique Image Manager', 1),
(1968, 11759, 1, 'Mobile, Tablet &amp; Desktop', 1),
(1969, 11762, 1, 'Safe &amp; Secure', 1),
(1970, 11765, 1, 'Backed Up Forever', 1),
(1971, 11768, 1, 'Powerful Image Tools', 1),
(1972, 11771, 1, 'Share Your Memories', 1),
(1973, 11774, 1, 'Fast Image Searching', 1),
(1974, 11777, 1, 'Private Albums', 1),
(1975, 11780, 1, 'Always On', 1),
(1976, 2462, 1, 'Folder Protected', 1),
(1977, 2463, 1, 'Password Protected', 1),
(1978, 2464, 1, 'This folder requires a password to gain access. Use the form below to enter the password, then click \"unlock\".', 1),
(1979, 2465, 1, 'Password Required', 1),
(1980, 2466, 1, 'Unlock', 1),
(1981, 2467, 1, 'The album password is invalid', 1),
(1982, 2468, 1, 'There was a problem loading the album, please try again later.', 1),
(1983, 20824, 1, 'No files found within this folder. Drag & drop files to upload here or click \'Upload\' above.', 1),
(1984, 2470, 1, 'No images found within this album.', 1),
(1985, 2471, 1, 'You already have an album with that name, please use another', 1),
(1986, 2472, 1, 'This user has not publicly shared any albums..', 1),
(1987, 2473, 1, 'No images found.', 1),
(1988, 2474, 1, 'About Us', 1),
(1989, 2475, 1, 'Facebook url is invalid.', 1),
(1990, 17463, 1, 'Premium image hosting, <strong>Fast Access</strong> to your important images & <strong>Huge Storage</strong> limits. Mobile, tablet & desktop access. See what you missing, <a href=\"[[[WEB_ROOT]]]/register\">join us</a> today.', 1),
(1991, 17464, 1, 'Total Views', 1),
(1992, 17465, 1, 'Total Images', 1),
(1993, 17466, 1, 'Like us', 1),
(1994, 17467, 1, 'on Facebook', 1),
(1995, 20570, 1, 'Add to Zip/Rar', 1),
(1996, 2482, 1, 'Enable Download Accelerators?', 1),
(1997, 2483, 1, 'By Date Taken', 1),
(1998, 19583, 1, 'Categories', 1),
(1999, 2485, 1, 'Profiles', 1),
(2000, 2486, 1, 'There are no albums shared publicly.', 1),
(2001, 2487, 1, 'Account security lock.', 1),
(2002, 2488, 1, 'Account lock status', 1),
(2003, 2489, 1, 'The account security lock, when enabled, prevents your account details (name, email, password) from being edited, it also prevents files from being edited, moved and deleted.<br/>To unlock your account, you will need the password which is emailed to your registered email address when the lock is enabled.', 1),
(2004, 2490, 1, 'Activate security lock', 1),
(2005, 2491, 1, 'Security lock details for [[[SITE_NAME]]]', 1),
(2006, 2492, 1, 'Dear [[[FIRST_NAME]]],<br/><br/>Your account on [[[SITE_NAME]]] has been locked as per your request. Use the code below to unlock your account:<br/><br/><strong>Unlock code:</strong> [[[UNLOCK_CODE]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(2007, 2493, 1, 'Account successfully secured.', 1),
(2008, 2494, 1, 'This account has been locked, please unlock the account to regain full functionality.', 1),
(2009, 2495, 1, 'This account has been locked, please unlock the account to regain full functionality.', 1),
(2010, 2496, 1, 'Account lock code', 1),
(2011, 2497, 1, 'De-activate security lock', 1),
(2012, 2498, 1, 'Resend security code', 1),
(2013, 2499, 1, 'Please enter the unlock code and try again.', 1),
(2014, 2500, 1, 'Locked', 1),
(2015, 2501, 1, 'Account successfully unlocked.', 1),
(2016, 2502, 1, 'Unlocked', 1),
(2017, 2503, 1, 'The email containing the unlock code has been emailed to the registered email account.', 1),
(2018, 2504, 1, 'Account could not be unlocked as the code is incorrect.', 1),
(2019, 2505, 1, 'Uploaded [[[UPLOADED_DATE]]]</br> Downloads [[[DOWNLOAD_DATE]]]', 1),
(2020, 2506, 1, 'Improved Downloads', 1),
(2021, 2507, 1, 'REGISTER', 1),
(2022, 19847, 1, 'Total Views', 1),
(2023, 20571, 1, 'Split File', 1),
(2024, 20573, 1, 'Download from', 1),
(2025, 19851, 1, 'Share', 1),
(2026, 2514, 1, 'browse', 1),
(2027, 19535, 1, 'Browse Albums', 1),
(2028, 20575, 1, 'from', 1),
(2029, 2517, 1, 'Slideshow', 1),
(2030, 2518, 1, 'Play Slideshow', 1),
(2031, 19534, 1, 'Recent Image Uploads', 1),
(2032, 2520, 1, 'PROFESSIONAL', 1),
(2033, 2521, 1, 'This account has been locked, please unlock the account to regain full functionality.', 1),
(2034, 2522, 1, 'Search', 1),
(2035, 2523, 1, 'Search Images', 1),
(2036, 2524, 1, 'Search Albums', 1),
(2037, 2525, 1, 'Search [[[TERM]]]', 1),
(2038, 2526, 1, 'Search \"[[[TERM]]]\"', 1),
(2039, 2527, 1, 'Recent Image Uploads - Search Results', 1),
(2040, 2528, 1, 'Albums Search Results', 1),
(2041, 2529, 1, 'Recent Image Search Results', 1),
(2042, 2530, 1, 'Image Search Results', 1),
(2043, 19408, 1, 'Browse Images', 1),
(2044, 2532, 1, 'There are no albums given the current search criteria.', 1),
(2045, 2533, 1, 'No images found within album or search criteria.', 1),
(2046, 2534, 1, 'In order to prevent abuse of this service, please copy the words into the text box below.', 1),
(2047, 2535, 1, 'Account could not be secured at this time, please try again later.', 1),
(2048, 2536, 1, 'Premium Expires.', 1),
(2049, 2537, 1, 'Account status', 1),
(2050, 2538, 1, 'Account Lock', 1),
(2051, 2539, 1, 'Do Nothing', 1),
(2052, 2540, 1, 'Activate Lock', 1),
(2053, 2541, 1, 'The account security lock prevents your account details and files from being edited, moved and deleted.', 1),
(2054, 2542, 1, 'ppt', 1),
(2055, 2543, 1, 'Image Colors', 1),
(2056, 18643, 1, 'Color Palette', 1),
(2057, 19351, 1, 'Community', 1),
(2058, 19354, 1, 'Account', 1),
(2059, 19368, 1, 'Public Profile', 1),
(2060, 19432, 1, 'image upload', 1),
(2061, 19453, 1, 'Download images directly from other sites into your account. Note: If the images are on another image download site or password protected, this may not work.', 1),
(2062, 19454, 1, 'Transfer Images', 1),
(2063, 19456, 1, 'Enter up to [[[MAX_REMOTE_URL_IMAGES]]] image urls. Separate each url on it\'s own line.', 1),
(2064, 19459, 1, 'Image transfers completed.', 1),
(2065, 19500, 1, 'Select an album below to store these images in. All current uploads will be available within these albums.', 1),
(2066, 2554, 1, 'Unlock Code', 1),
(2067, 2555, 1, 'The unlock code that was sent to the registered email address when the lock was activated.', 1),
(2068, 2556, 1, 'unlock account', 1),
(2069, 2557, 1, 'resend unlock code', 1),
(2070, 2558, 1, 'Account could not be unlocked at this time, please try again later.', 1),
(2071, 17410, 1, 'Other', 1),
(2072, 11259, 1, 'We have a large varierty of features available', 1),
(2073, 11770, 1, 'We have multple tools that you can use for your images such as slide shows, embedding, sharing and more.', 1),
(2074, 19473, 1, 'You can not add more than [[[MAX_URLS]]] urls at once.', 1),
(2075, 16902, 1, 'Unique Image Tools, Watermarking, Slideshows & more.', 1),
(2076, 16597, 1, 'Upload & Share Images', 1),
(2077, 16904, 1, 'Heroic <strong>Support Team</strong>.', 1),
(2078, 16906, 1, 'Powerful Features', 1),
(2079, 16908, 1, 'Packed full of features that will blow your mind!', 1),
(2080, 16910, 1, 'Unique Image Manager', 1),
(2081, 16892, 1, 'What Is [[[SITE_CONFIG_SITE_NAME]]]?', 1),
(2082, 16893, 1, 'Built for the modern world of digital imagery, we\'ve got loads of great features to help you manage your images.', 1),
(2083, 16918, 1, 'Access images on the go using your mobile phone, or show a client photos using your iPad. Use any modern device.', 1),
(2084, 16900, 1, 'Secure Storage & Password Protected Albums.', 1),
(2085, 16920, 1, 'Safe &amp; Secure', 1),
(2086, 16922, 1, 'Safe &amp; Secure', 1),
(2087, 16926, 1, 'Stored In The Cloud', 1),
(2088, 16928, 1, 'Stored In The Cloud', 1),
(2089, 16912, 1, 'Unique Image Manager', 1),
(2090, 16913, 1, 'Our image manager allows you to quickly manage all of your images and photos with its modern, easy to use interface.', 1),
(2091, 16942, 1, 'Fast Image Searching', 1),
(2092, 16944, 1, 'Fast Image Searching', 1),
(2093, 16932, 1, 'Powerful Image Tools', 1),
(2094, 16933, 1, 'Powerful Image Tools', 1),
(2095, 17477, 1, 'terms and conditions', 1),
(2096, 17478, 1, 'report file', 1),
(2097, 16952, 1, 'Keep your most personal & valued images entirely private with our locked albums feature.', 1),
(2098, 16953, 1, 'Always On', 1),
(2099, 19371, 1, 'extend account', 1),
(2100, 16993, 1, 'Get Started Now', 1),
(2101, 16994, 1, 'What are you waiting for? It\'s Free!', 1),
(2102, 17596, 1, 'account, home, file, your, interface, upload, download, site', 1),
(2103, 17394, 1, 'Logo', 1),
(2104, 19344, 1, 'premium', 1),
(2105, 19345, 1, 'login', 1),
(2106, 17399, 1, 'Premium Access', 1),
(2107, 17400, 1, 'Get Started Now', 1),
(2108, 17401, 1, ' BROWSE', 1),
(2109, 17402, 1, 'Animals', 1),
(2110, 16888, 1, 'Tablet Image Manager', 1),
(2111, 17416, 1, 'Type & Hit Enter..', 1),
(2112, 17408, 1, 'Music', 1),
(2113, 16896, 1, 'Lots of <strong>Free Storage</strong> for Your Images.', 1),
(2114, 16914, 1, 'Mobile, Tablet &amp; Desktop', 1),
(2115, 16916, 1, 'Mobile, Tablet &amp; Desktop', 1),
(2116, 16930, 1, 'All of your images are securely stored in the cloud for piece of mind. Don\'t risk loosing CDs or hard drives failing.', 1),
(2117, 16934, 1, 'We have lots of tools that you can use to easily manage your images. Slideshows, embedding, sharing, rotating and more.', 1),
(2118, 16936, 1, 'Share Your Memories', 1),
(2119, 16938, 1, 'Share Your Memories', 1),
(2120, 16940, 1, 'Share your images on social networks like Facebook or provide limited access to just friends & family.', 1),
(2121, 16946, 1, 'Quickly access all of your images by using our fast image searching tools.', 1),
(2122, 16948, 1, 'Private Albums', 1),
(2123, 16950, 1, 'Private Albums', 1),
(2124, 16954, 1, 'Always On', 1),
(2125, 16956, 1, 'Access our site at any time from any location in the world. Upload while travelling or straight after a photoshoot.', 1),
(2126, 16958, 1, 'Premium Access', 1),
(2127, 16960, 1, 'Optional premium access for additional storage space', 1),
(2128, 17479, 1, 'contact', 1),
(2129, 19376, 1, 'Recent Images', 1),
(2130, 17458, 1, 'Images kept for [[[DAYS]]] days.', 1),
(2131, 17473, 1, 'your files', 1),
(2132, 19370, 1, 'upgrade account', 1),
(2133, 17476, 1, 'faq', 1),
(2134, 17445, 1, 'free', 1),
(2135, 17440, 1, 'Storage', 1),
(2136, 17469, 1, 'to RSS Feeds', 1),
(2137, 17471, 1, 'Your Account', 1),
(2138, 20567, 1, 'View', 1),
(2139, 17481, 1, 'rewards', 1),
(2140, 17485, 1, 'English (en)', 1),
(2141, 19415, 1, 'second', 1),
(2142, 19416, 1, 'seconds', 1),
(2143, 17459, 1, 'Upload images up to [[[MAX_UPLOAD_FILESIZE]]] in size.', 1),
(2144, 20583, 1, 'Direct album downloads. No waiting.', 1),
(2145, 20584, 1, 'Search files...', 1),
(2146, 20585, 1, 'select subject', 1),
(2147, 20586, 1, 'Site Support', 1),
(2148, 20587, 1, 'Bug Report', 1),
(2149, 20588, 1, 'Abuse Report', 1),
(2150, 20589, 1, 'Suggest Improvements', 1),
(2151, 20590, 1, 'Other', 1),
(2152, 20591, 1, 'Please select your type of query.', 1),
(2153, 20597, 1, 'Query type', 1),
(2154, 20598, 1, 'Image Link', 1),
(2155, 20599, 1, 'email', 1),
(2156, 20600, 1, 'Meta', 1),
(2157, 20601, 1, 'Album', 1),
(2158, 20602, 1, 'Album', 1),
(2159, 20603, 1, 'album, images, file, your, interface, upload, download, site', 1),
(2160, 20604, 1, 'View', 1),
(2161, 20605, 1, 'Album', 1),
(2162, 20606, 1, 'Image', 1),
(2163, 20607, 1, 'View 630803_87861202.jpg Image', 1),
(2164, 20608, 1, 'image', 1),
(2165, 20609, 1, 'Edit Image Info', 1),
(2166, 20610, 1, 'Set As Album Cover', 1),
(2167, 20611, 1, 'Cover image updated.', 1),
(2168, 20612, 1, 'Cover Image:', 1),
(2169, 20613, 1, 'Cover Image: (Url of the Image in Your Account)', 1),
(2170, 20614, 1, 'nef', 1),
(2171, 20615, 1, 'eip', 1),
(2172, 20616, 1, 'arw', 1),
(2173, 20617, 1, 'erf', 1),
(2174, 20618, 1, 'bmp', 1),
(2175, 20619, 1, 'dng', 1),
(2176, 20620, 1, 'orf', 1),
(2177, 20621, 1, 'cr2', 1),
(2178, 20622, 1, 'crw', 1),
(2179, 20623, 1, 'Images', 1),
(2180, 20624, 1, 'Albums', 1),
(2181, 20625, 1, 'Categories', 1),
(2182, 20626, 1, 'Category Listing', 1),
(2183, 20627, 1, '3fr', 1),
(2184, 20628, 1, 'View on', 1),
(2185, 20629, 1, 'Direct Image Link', 1),
(2186, 20630, 1, 'Image Page Link', 1),
(2187, 20631, 1, 'This image is not publicly shared. You will need to make it public before the recipient can view it.', 1),
(2188, 20632, 1, 'This image is not publicly shared. You will need to make it public before the recipient can view it.', 1),
(2189, 20633, 1, 'Original', 1),
(2190, 20634, 1, 'Version', 1),
(2191, 20635, 1, 'eps', 1),
(2192, 20636, 1, 'Select All Images', 1),
(2193, 20637, 1, 'selected image', 1),
(2194, 20638, 1, 'selected images', 1),
(2195, 20639, 1, 'clear', 1),
(2196, 20640, 1, 'selected', 1),
(2197, 20641, 1, 'Search Your Images', 1),
(2198, 20642, 1, 'Your Images', 1),
(2199, 20643, 1, 'All Images', 1),
(2200, 20652, 1, 'Profile Banner Image.', 1),
(2201, 20654, 1, 'Your passwords do not match.', 1),
(2202, 20655, 1, 'mng', 1),
(2203, 20658, 1, 'Store all of your images with us', 1),
(2204, 20659, 1, 'You can store all of your images on our powerful servers at the touch of a button at home or on the go..', 1),
(2205, 20660, 1, 'Did you know..', 1),
(2206, 20661, 1, 'We also offer a premium membership with lots of bonuses!', 1),
(2207, 20662, 1, 'Premium Pricing', 1),
(2208, 20762, 1, 'Upload and share your images and you\'ll be paid for every image viewed or downloaded on your account.', 1),
(2209, 20753, 1, 'link checker', 1),
(2210, 20754, 1, 'Link Checker', 1),
(2211, 20755, 1, 'Check multiple download links at the same time.', 1),
(2212, 20756, 1, 'link, checker, copyright, infringement, file, hosting', 1),
(2213, 20757, 1, '', 1),
(2214, 20758, 1, '', 1),
(2215, 20759, 1, 'Use this page to check whether multiple download links are still active. Enter up to 200 urls below, a new one on each line and click \'Check Files\'', 1),
(2216, 20682, 1, 'Description of the copyrighted works and supporting information', 1),
(2217, 20761, 1, 'check files', 1),
(2218, 20760, 1, 'List of file download urls, 1 on each line.', 1),
(2219, 20685, 1, 'Please enter the url of the file you\'re reporting.', 1),
(2220, 20782, 1, 'Please enter 1 or more file urls.', 1),
(2221, 20687, 1, 'Found [[[TOTAL_FOUND]]] link(s), [[[TOTAL_ACTIVE]]] active and [[[TOTAL_DISABLED]]] disabled.', 1),
(2222, 20688, 1, 'check more', 1),
(2223, 20764, 1, 'Check multiple download links at the same time.', 1),
(2224, 20765, 1, 'link, checker, copyright, infringement, file, hosting', 1),
(2225, 20766, 1, '', 1),
(2226, 20767, 1, '', 1),
(2227, 20796, 1, 'Search or browse all publicly shared files on this site using the form below.', 1),
(2228, 20784, 1, 'Enter your search term here...', 1),
(2229, 20769, 1, 'List of file download urls, 1 on each line.', 1),
(2230, 20770, 1, 'Filename', 1),
(2231, 20771, 1, 'Filesize', 1),
(2232, 20772, 1, 'Dated Uploaded', 1),
(2233, 20773, 1, 'No files available in search results', 1),
(2234, 20774, 1, 'Showing _START_ to _END_ of _TOTAL_ files', 1),
(2235, 20787, 1, '', 1),
(2236, 20776, 1, 'Show _MENU_ files', 1),
(2237, 20777, 1, 'Images', 1),
(2238, 20778, 1, 'Documents', 1),
(2239, 20779, 1, 'Videos', 1),
(2240, 20780, 1, 'Audio', 1),
(2241, 20781, 1, 'Archives', 1),
(2242, 20786, 1, 'Search', 1),
(2243, 20801, 1, 'public files', 1),
(2244, 20798, 1, 'SEARCH FILES', 1),
(2245, 20816, 1, 'created', 1),
(2246, 20817, 1, 'user', 1),
(2247, 20818, 1, 'period', 1),
(2248, 20819, 1, 'amount', 1),
(2249, 20820, 1, 'status', 1),
(2250, 20821, 1, 'dcr', 1),
(2251, 20822, 1, 'Your Files', 1),
(2252, 20823, 1, 'File Manager', 1),
(2253, 20825, 1, 'File Search Results', 1),
(2254, 20826, 1, 'No files found within folder or search criteria.', 1),
(2255, 20827, 1, 'Recent Files', 1),
(2256, 20829, 1, 'Select', 1),
(2257, 20830, 1, 'Select File', 1),
(2258, 20831, 1, 'Edit File Info', 1),
(2259, 20832, 1, 'Download File', 1),
(2260, 20833, 1, 'Download', 1),
(2261, 20834, 1, 'Filesize', 1),
(2262, 20835, 1, 'Search files...', 1),
(2263, 20836, 1, 'Search Your Files', 1),
(2264, 20837, 1, 'All Folders', 1),
(2265, 20838, 1, 'Upload complete.', 1),
(2266, 20839, 1, 'Enter an email address below to send the list of files via email once they\'re uploaded.', 1),
(2267, 20840, 1, 'Select an album below to store these files in. All current uploads will be available within these albums.', 1),
(2268, 20841, 1, 'Delete Image', 1),
(2269, 20842, 1, 'Image Stats', 1),
(2270, 20843, 1, 'Image Page Link', 1),
(2271, 20844, 1, 'Folder:', 1),
(2272, 20846, 1, 'your folder', 1),
(2273, 20847, 1, 'file folder', 1),
(2274, 20848, 1, 'File is not publicly shared. Please contact the owner and request they update the privacy settings.', 1),
(2275, 20849, 1, 'Add Sub Folder', 1),
(2276, 20850, 1, 'package type', 1),
(2277, 20851, 1, 'download allowance', 1),
(2278, 20852, 1, 'Please specify the download limit for this price.', 1),
(2279, 20853, 1, 'remaining download allowance', 1),
(2280, 20854, 1, 'Folder', 1),
(2281, 20855, 1, 'View', 1),
(2282, 20856, 1, 'Folder', 1),
(2283, 20857, 1, 'folder, images, file, your, interface, upload, download, site', 1),
(2284, 20858, 1, 'your folders', 1),
(2285, 20859, 1, 'Select an folder below to store these files in. All current uploads will be available within these folders.', 1),
(2286, 20860, 1, 'The folder password is invalid', 1),
(2287, 20861, 1, 'There was a problem accessing the folder, please try again later.', 1),
(2288, 20862, 1, 'Set As Folder Cover', 1),
(2289, 20863, 1, 'No files found within this folder. Drag & drop files to upload here or click \'Upload\' above.', 1),
(2290, 20864, 1, 'Cover Image: (Url of the Image in Your Account)', 1),
(2291, 20865, 1, 'Folder Privacy:', 1),
(2292, 20866, 1, 'This file is not publicly shared. You will need to make it public before the recipient can view it.', 1),
(2293, 20867, 1, 'No files found within this folder.', 1),
(2294, 20868, 1, 'registered user', 1),
(2295, 20869, 1, 'Search Folders', 1),
(2296, 20870, 1, 'Search your files...', 1),
(2297, 20871, 1, 'Default Folder Privacy', 1),
(2298, 20872, 1, 'Downloads', 1),
(2299, 20873, 1, 'Download Zip File', 1),
(2300, 20874, 1, 'Share On:', 1),
(2301, 20877, 1, 'Share On', 1),
(2302, 20878, 1, 'Send via Email:', 1),
(2303, 20880, 1, 'send', 1),
(2304, 20881, 1, 'Folder shared by [[[SHARED_BY_NAME]]] on [[[SITE_NAME]]]', 1),
(2305, 20882, 1, '[[[SHARED_BY_NAME]]] has shared the following file with you via <a href=\'[[[WEB_ROOT]]]\'>[[[SITE_NAME]]]</a>:<br/><br/><strong>Folder Name:</strong> [[[FOLDER_NAME]]]<br/><strong>View:</strong> [[[FOLDER_URL]]]<br/><strong>From:</strong> [[[SHARED_BY_NAME]]] [[[SHARED_EMAIL_ADDRESS]]]<br/><strong>Message:</strong><br/>[[[EXTRA_MESSAGE]]]<br/><br/>Feel free to contact us if you have any difficulties viewing the folder.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 1),
(2306, 20884, 1, 'Folder shared via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 1),
(2307, 20885, 1, 'Create Copy', 1),
(2308, 20886, 1, 'Copy Url to Clipboard', 1),
(2309, 20887, 1, 'Copy Url(s) to Clipboard', 1),
(2310, 20888, 1, 'Admin Area', 1),
(2311, 20891, 1, 'Drag & drop files or click here to upload', 1),
(2312, 20892, 1, '- Document can not be previewed as it is too big. Please download the file to view it.', 1),
(2313, 20893, 1, 'safari', 1),
(2314, 20894, 1, 'Clear Selected', 1),
(2315, 20895, 1, 'Note: You can not update this folder privacy settings as your account settings are set to make all files private, or the parent folder is set to private.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_key`
--

CREATE TABLE `language_key` (
  `id` int(11) NOT NULL,
  `languageKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `defaultContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isAdminArea` int(1) NOT NULL DEFAULT 0,
  `foundOnScan` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language_key`
--

INSERT INTO `language_key` (`id`, `languageKey`, `defaultContent`, `isAdminArea`, `foundOnScan`) VALUES
(1, 'home', 'home', 1, 0),
(3, 'banned_words_urls', 'banned words / urls', 1, 0),
(4, 'admin_users', 'admin users', 1, 0),
(5, 'banned_ips', 'banned ips', 1, 0),
(6, 'site_settings', 'site settings', 1, 0),
(7, 'languages', 'languages', 1, 0),
(8, 'logout', 'logout', 1, 1),
(9, 'language_details', 'Language Details', 1, 0),
(10, 'are_you_sure_you_want_to_remove_this_ip_ban', 'Are you sure you want to remove this IP ban?', 1, 0),
(11, 'are_you_sure_update_user_status', 'Are you sure you want to update the status of this user?', 1, 0),
(12, 'view', 'view', 1, 0),
(13, 'disable', 'disable', 1, 0),
(14, 'enable', 'enable', 1, 0),
(15, 'are_you_sure_remove_banned_word', 'Are you sure you want to remove this banned word?', 1, 0),
(16, 'ip_address_invalid_try_again', 'IP address appears to be invalid, please try again.', 1, 0),
(17, 'ip_address_already_blocked', 'IP address is already in the blocked list.', 1, 0),
(18, 'error_problem_record', 'There was a problem inserting/updating the record, please try again later.', 1, 0),
(19, 'banned_word_already_in_list', 'Banned word is already in the list.', 1, 0),
(20, 'language_already_in_system', 'Language already in the system.', 1, 0),
(21, 'username_length_invalid', 'Username must be between 6-16 characters long.', 1, 0),
(22, 'password_length_invalid', 'Password must be between 6-16 characters long.', 1, 0),
(23, 'enter_first_name', 'Please enter the firstname.', 1, 0),
(24, 'enter_last_name', 'Please enter the lastname.', 1, 0),
(25, 'enter_email_address', 'Please enter the email address.', 1, 0),
(26, 'entered_email_address_invalid', 'The email address you entered appears to be invalid.', 1, 0),
(28, 'support', 'Support', 1, 0),
(30, 'admin_panel', 'Admin Panel', 1, 0),
(31, 'logged_in_as', 'Logged in as', 1, 0),
(32, 'banned_ips_intro', 'To ban an IP Address <a href=\"#\" onClick=\"displayBannedIpPopup(); return false;\">click here</a> or delete any existing ones below', 1, 0),
(33, 'banned_ips_add_banned_ip', 'Add banned IP address', 1, 0),
(34, 'remove', 'remove', 1, 0),
(35, 'ip_address', 'IP Address', 1, 0),
(36, 'ban_from', 'Ban From', 1, 0),
(37, 'notes', 'Notes', 1, 0),
(38, 'add_banned_ip', 'Add Banned IP', 1, 0),
(39, 'error_submitting_form', 'There was an error submitting the form, please try again later.', 1, 0),
(40, 'enter_ip_address_details', 'Enter IP Address details', 1, 0),
(41, 'banned_terms_intro', 'To ban an word within the original url <a href=\"#\" onClick=\"displayBannedWordsPopup(); return false;\">click here</a> or delete any existing ones below', 1, 0),
(42, 'add_banned_term', 'Add banned word', 1, 0),
(43, 'banned_term', 'Banned Word', 1, 0),
(44, 'date_banned', 'Date Banned', 1, 0),
(45, 'ban_notes', 'Ban Notes', 1, 0),
(46, 'action', 'Action', 1, 1),
(47, 'enter_banned_term_details', 'Enter Banned Word details', 1, 0),
(48, 'dashboard_intro', 'Use the main navigation above to manage this site. A quick overview of the site can be seen below', 1, 0),
(49, 'dashboard_graph_last_14_days_title', 'New Files (last 14 days)', 1, 0),
(50, 'dashboard_graph_last_12_months_title', 'New Files (last 12 months)', 1, 0),
(51, 'urls', 'Urls', 1, 0),
(52, 'active', 'active', 1, 0),
(53, 'disabled', 'disabled', 1, 0),
(54, 'spam', 'spam', 1, 0),
(55, 'expired', 'expired', 1, 0),
(56, 'dashboard_total_active_urls', 'Total active files', 1, 0),
(57, 'dashboard_total_disabled_urls', 'Total disabled files', 1, 0),
(58, 'dashboard_total_visits_to_all_urls', 'Total downloads to all files', 1, 0),
(59, 'item_name', 'Item Name', 1, 0),
(60, 'value', 'Value', 1, 0),
(61, 'manage_languages_intro_2', 'Manage the available content for the selected language. Click on any of the \'Translated Content\' cells to edit the value.', 1, 0),
(62, 'manage_languages_intro_1', 'Select a language to manage or <a href=\'#\' onClick=\'displayAddLanguagePopup(); return false;\'>add a new one here</a>. NOTE Once translated, to set the site default language go to the <a href=\'settings.php\'>site settings</a> area.', 1, 0),
(63, 'language_key', 'Language Key', 1, 0),
(64, 'default_content', 'Default Content', 1, 0),
(65, 'translated_content', 'Translated Content', 1, 0),
(66, 'no_changes_in_demo_mode', 'Error Changes to this section can not be made within demo mode.', 1, 0),
(67, 'manage_other_languages', 'Manage other languages', 1, 0),
(68, 'no_available_content', 'There is no available content.', 1, 0),
(69, 'select_language', 'select language', 1, 0),
(70, 'add_language', 'Add Language', 1, 0),
(71, 'language_name', 'Language Name', 1, 0),
(72, 'settings_intro', 'Click on any of the items within the \"Config Value\" column below to edit', 1, 0),
(73, 'group', 'Group', 1, 1),
(74, 'config_description', 'Config Description', 1, 0),
(75, 'config_value', 'Config Value', 1, 0),
(76, 'shorturls_filter_results', 'Filter results', 1, 0),
(77, 'user_management_intro', 'Double click on any of the users below to edit the account information or <a href=\"#\" onClick=\"displayUserPopup(); return false;\">click here to add a new user</a>', 1, 0),
(78, 'add_new_user', 'Add new user', 1, 0),
(79, 'username', 'Username', 1, 1),
(82, 'last_login', 'Last Login', 1, 0),
(84, 'password', 'Password', 1, 1),
(85, 'title', 'Title', 1, 1),
(86, 'firstname', 'Firstname', 1, 1),
(87, 'lastname', 'Lastname', 1, 1),
(88, 'enter_user_details', 'Enter user details', 1, 0),
(108, 'please_wait', 'please wait', 0, 1),
(109, 'general_site_error', 'There was a general site error, please try again later.', 0, 1),
(110, 'error', 'Error', 0, 1),
(153, 'visits_', 'visits', 0, 0),
(154, 'created_', 'created', 0, 0),
(155, 'visitors', 'Visitors', 0, 1),
(156, 'countries', 'Countries', 0, 1),
(157, 'top_referrers', 'Top Referrers', 0, 1),
(158, 'browsers', 'Browsers', 0, 1),
(159, 'operating_systems', 'Operating Systems', 0, 1),
(160, 'last_24_hours', 'last 24 hours', 0, 1),
(161, 'last_7_days', 'last 7 days', 0, 1),
(162, 'last_30_days', 'last 30 days', 0, 1),
(163, 'last_12_months', 'last 12 months', 0, 1),
(164, 'hour', 'Hour', 0, 0),
(165, 'visits', 'Visits', 0, 0),
(166, 'date', 'Date', 0, 1),
(167, 'total_visits', 'Total visits', 0, 0),
(168, 'percentage', 'Percentage', 0, 1),
(169, 'day', 'Day', 0, 0),
(170, 'month', 'Month', 0, 1),
(171, 'country', 'Country', 0, 1),
(172, 'site', 'Site', 0, 1),
(173, 'browser', 'Browser', 0, 1),
(174, 'operating_system', 'Operating System', 0, 1),
(175, 'AD', 'Andorra', 0, 0),
(176, 'AE', 'United Arab Emirates', 0, 0),
(177, 'AF', 'Afghanistan', 0, 0),
(178, 'AG', 'Antigua And Barbuda', 0, 0),
(179, 'AI', 'Anguilla', 0, 0),
(180, 'AL', 'Albania', 0, 0),
(181, 'AM', 'Armenia', 0, 0),
(182, 'AN', 'Netherlands Antilles', 0, 0),
(183, 'AO', 'Angola', 0, 0),
(184, 'AQ', 'Antarctica', 0, 0),
(185, 'AR', 'Argentina', 0, 0),
(186, 'AS', 'American Samoa', 0, 0),
(187, 'AT', 'Austria', 0, 0),
(188, 'AU', 'Australia', 0, 0),
(189, 'AW', 'Aruba', 0, 0),
(190, 'AZ', 'Azerbaijan', 0, 0),
(191, 'BA', 'Bosnia And Herzegovina', 0, 0),
(192, 'BB', 'Barbados', 0, 0),
(193, 'BD', 'Bangladesh', 0, 0),
(194, 'BE', 'Belgium', 0, 0),
(195, 'BF', 'Burkina Faso', 0, 0),
(196, 'BG', 'Bulgaria', 0, 0),
(197, 'BH', 'Bahrain', 0, 0),
(198, 'BI', 'Burundi', 0, 0),
(199, 'BJ', 'Benin', 0, 0),
(200, 'BM', 'Bermuda', 0, 0),
(201, 'BN', 'Brunei Darussalam', 0, 0),
(202, 'BO', 'Bolivia', 0, 0),
(203, 'BR', 'Brazil', 0, 0),
(204, 'BS', 'Bahamas', 0, 0),
(205, 'BT', 'Bhutan', 0, 0),
(206, 'BW', 'Botswana', 0, 0),
(207, 'BY', 'Belarus', 0, 0),
(208, 'BZ', 'Belize', 0, 0),
(209, 'CA', 'Canada', 0, 0),
(210, 'CD', 'The Democratic Republic Of The Congo', 0, 0),
(211, 'CF', 'Central African Republic', 0, 0),
(212, 'CG', 'Congo', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'CI', 'Cote Divoire', 0, 0),
(215, 'CK', 'Cook Islands', 0, 0),
(216, 'CL', 'Chile', 0, 0),
(217, 'CM', 'Cameroon', 0, 0),
(218, 'CN', 'China', 0, 0),
(219, 'CO', 'Colombia', 0, 0),
(220, 'CR', 'Costa Rica', 0, 0),
(221, 'CS', 'Serbia And Montenegro', 0, 0),
(222, 'CU', 'Cuba', 0, 0),
(223, 'CV', 'Cape Verde', 0, 0),
(224, 'CY', 'Cyprus', 0, 0),
(225, 'CZ', 'Czech Republic', 0, 0),
(226, 'DE', 'Germany', 0, 0),
(227, 'DJ', 'Djibouti', 0, 0),
(228, 'DK', 'Denmark', 0, 0),
(229, 'DM', 'Dominica', 0, 0),
(230, 'DO', 'Dominican Republic', 0, 0),
(231, 'DZ', 'Algeria', 0, 0),
(232, 'EC', 'Ecuador', 0, 0),
(233, 'EE', 'Estonia', 0, 0),
(234, 'EG', 'Egypt', 0, 0),
(235, 'ER', 'Eritrea', 0, 0),
(236, 'ES', 'Spain', 0, 0),
(237, 'ET', 'Ethiopia', 0, 0),
(238, 'EU', 'European Union', 0, 0),
(239, 'FI', 'Finland', 0, 0),
(240, 'FJ', 'Fiji', 0, 0),
(241, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(242, 'FM', 'Federated States Of Micronesia', 0, 0),
(243, 'FO', 'Faroe Islands', 0, 0),
(244, 'FR', 'France', 0, 0),
(245, 'GA', 'Gabon', 0, 0),
(246, 'GB', 'United Kingdom', 0, 0),
(247, 'GD', 'Grenada', 0, 0),
(248, 'GE', 'Georgia', 0, 0),
(249, 'GF', 'French Guiana', 0, 0),
(250, 'GH', 'Ghana', 0, 0),
(251, 'GI', 'Gibraltar', 0, 0),
(252, 'GL', 'Greenland', 0, 0),
(253, 'GM', 'Gambia', 0, 0),
(254, 'GN', 'Guinea', 0, 0),
(255, 'GP', 'Guadeloupe', 0, 0),
(256, 'GQ', 'Equatorial Guinea', 0, 0),
(257, 'GR', 'Greece', 0, 0),
(258, 'GS', 'South Georgia And The South Sandwich Islands', 0, 0),
(259, 'GT', 'Guatemala', 0, 0),
(260, 'GU', 'Guam', 0, 0),
(261, 'GW', 'Guinea-Bissau', 0, 0),
(262, 'GY', 'Guyana', 0, 0),
(263, 'HK', 'Hong Kong', 0, 0),
(264, 'HN', 'Honduras', 0, 0),
(265, 'HR', 'Croatia', 0, 0),
(266, 'HT', 'Haiti', 0, 0),
(267, 'HU', 'Hungary', 0, 0),
(268, 'ID', 'Indonesia', 0, 0),
(269, 'IE', 'Ireland', 0, 0),
(270, 'IL', 'Israel', 0, 0),
(271, 'IN', 'India', 0, 0),
(272, 'IO', 'British Indian Ocean Territory', 0, 0),
(273, 'IQ', 'Iraq', 0, 0),
(274, 'IR', 'Islamic Republic Of Iran', 0, 0),
(275, 'IS', 'Iceland', 0, 0),
(276, 'IT', 'Italy', 0, 0),
(277, 'JM', 'Jamaica', 0, 0),
(278, 'JO', 'Jordan', 0, 0),
(279, 'JP', 'Japan', 0, 0),
(280, 'KE', 'Kenya', 0, 0),
(281, 'KG', 'Kyrgyzstan', 0, 0),
(282, 'KH', 'Cambodia', 0, 0),
(283, 'KI', 'Kiribati', 0, 0),
(284, 'KM', 'Comoros', 0, 0),
(285, 'KN', 'Saint Kitts And Nevis', 0, 0),
(286, 'KR', 'Republic Of Korea', 0, 0),
(287, 'KW', 'Kuwait', 0, 0),
(288, 'KY', 'Cayman Islands', 0, 0),
(289, 'KZ', 'Kazakhstan', 0, 0),
(290, 'LA', 'Lao Peoples Democratic Republic', 0, 0),
(291, 'LB', 'Lebanon', 0, 0),
(292, 'LC', 'Saint Lucia', 0, 0),
(293, 'LI', 'Liechtenstein', 0, 0),
(294, 'LK', 'Sri Lanka', 0, 0),
(295, 'LR', 'Liberia', 0, 0),
(296, 'LS', 'Lesotho', 0, 0),
(297, 'LT', 'Lithuania', 0, 0),
(298, 'LU', 'Luxembourg', 0, 0),
(299, 'LV', 'Latvia', 0, 0),
(300, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(301, 'MA', 'Morocco', 0, 0),
(302, 'MC', 'Monaco', 0, 0),
(303, 'MD', 'Republic Of Moldova', 0, 0),
(304, 'MG', 'Madagascar', 0, 0),
(305, 'MH', 'Marshall Islands', 0, 0),
(306, 'MK', 'The Former Yugoslav Republic Of Macedonia', 0, 0),
(307, 'ML', 'Mali', 0, 0),
(308, 'MM', 'Myanmar', 0, 0),
(309, 'MN', 'Mongolia', 0, 0),
(310, 'MO', 'Macao', 0, 0),
(311, 'MP', 'Northern Mariana Islands', 0, 0),
(312, 'MQ', 'Martinique', 0, 0),
(313, 'MR', 'Mauritania', 0, 0),
(314, 'MT', 'Malta', 0, 0),
(315, 'MU', 'Mauritius', 0, 0),
(316, 'MV', 'Maldives', 0, 0),
(317, 'MW', 'Malawi', 0, 0),
(318, 'MX', 'Mexico', 0, 0),
(319, 'MY', 'Malaysia', 0, 0),
(320, 'MZ', 'Mozambique', 0, 0),
(321, 'NA', 'Namibia', 0, 0),
(322, 'NC', 'New Caledonia', 0, 0),
(323, 'NE', 'Niger', 0, 0),
(324, 'NF', 'Norfolk Island', 0, 0),
(325, 'NG', 'Nigeria', 0, 0),
(326, 'NI', 'Nicaragua', 0, 0),
(327, 'NL', 'Netherlands', 0, 0),
(328, 'NO', 'Norway', 0, 0),
(329, 'NP', 'Nepal', 0, 0),
(330, 'NR', 'Nauru', 0, 0),
(331, 'NU', 'Niue', 0, 0),
(332, 'NZ', 'New Zealand', 0, 0),
(333, 'OM', 'Oman', 0, 0),
(334, 'PA', 'Panama', 0, 0),
(335, 'PE', 'Peru', 0, 0),
(336, 'PF', 'French Polynesia', 0, 0),
(337, 'PG', 'Papua New Guinea', 0, 0),
(338, 'PH', 'Philippines', 0, 0),
(339, 'PK', 'Pakistan', 0, 0),
(340, 'PL', 'Poland', 0, 0),
(341, 'PR', 'Puerto Rico', 0, 0),
(342, 'PS', 'Palestinian Territory', 0, 0),
(343, 'PT', 'Portugal', 0, 0),
(344, 'PW', 'Palau', 0, 0),
(345, 'PY', 'Paraguay', 0, 0),
(346, 'QA', 'Qatar', 0, 0),
(347, 'RE', 'Reunion', 0, 0),
(348, 'RO', 'Romania', 0, 0),
(349, 'RU', 'Russian Federation', 0, 0),
(350, 'RW', 'Rwanda', 0, 0),
(351, 'SA', 'Saudi Arabia', 0, 0),
(352, 'SB', 'Solomon Islands', 0, 0),
(353, 'SC', 'Seychelles', 0, 0),
(354, 'SD', 'Sudan', 0, 0),
(355, 'SE', 'Sweden', 0, 0),
(356, 'SG', 'Singapore', 0, 0),
(357, 'SI', 'Slovenia', 0, 0),
(358, 'SK', 'Slovakia (Slovak Republic)', 0, 0),
(359, 'SL', 'Sierra Leone', 0, 0),
(360, 'SM', 'San Marino', 0, 0),
(361, 'SN', 'Senegal', 0, 0),
(362, 'SO', 'Somalia', 0, 0),
(363, 'SR', 'Suriname', 0, 0),
(364, 'ST', 'Sao Tome And Principe', 0, 0),
(365, 'SV', 'El Salvador', 0, 0),
(366, 'SY', 'Syrian Arab Republic', 0, 0),
(367, 'SZ', 'Swaziland', 0, 0),
(368, 'TD', 'Chad', 0, 0),
(369, 'TF', 'French Southern Territories', 0, 0),
(370, 'TG', 'Togo', 0, 0),
(371, 'TH', 'Thailand', 0, 0),
(372, 'TJ', 'Tajikistan', 0, 0),
(373, 'TK', 'Tokelau', 0, 0),
(374, 'TL', 'Timor-Leste', 0, 0),
(375, 'TM', 'Turkmenistan', 0, 0),
(376, 'TN', 'Tunisia', 0, 0),
(377, 'TO', 'Tonga', 0, 0),
(378, 'TR', 'Turkey', 0, 0),
(379, 'TT', 'Trinidad And Tobago', 0, 0),
(380, 'TV', 'Tuvalu', 0, 0),
(381, 'TW', 'Taiwan Province Of China', 0, 0),
(382, 'TZ', 'United Republic Of Tanzania', 0, 0),
(383, 'UA', 'Ukraine', 0, 0),
(384, 'UG', 'Uganda', 0, 0),
(385, 'US', 'United States', 0, 0),
(386, 'UY', 'Uruguay', 0, 0),
(387, 'UZ', 'Uzbekistan', 0, 0),
(388, 'VA', 'Holy See (Vatican City State)', 0, 0),
(389, 'VC', 'Saint Vincent And The Grenadines', 0, 0),
(390, 'VE', 'Venezuela', 0, 0),
(391, 'VG', 'Virgin Islands', 0, 0),
(392, 'VI', 'Virgin Islands', 0, 0),
(393, 'VN', 'Viet Nam', 0, 0),
(394, 'VU', 'Vanuatu', 0, 0),
(395, 'WS', 'Samoa', 0, 0),
(396, 'YE', 'Yemen', 0, 0),
(397, 'YT', 'Mayotte', 0, 0),
(398, 'YU', 'Serbia And Montenegro (Formally Yugoslavia)', 0, 0),
(399, 'ZA', 'South Africa', 0, 0),
(400, 'ZM', 'Zambia', 0, 0),
(401, 'ZW', 'Zimbabwe', 0, 0),
(402, 'ZZ', 'Unknown', 0, 0),
(410, 'register_complete_page_name', 'Registration completed', 0, 1),
(411, 'register_complete_meta_description', 'Your registration has been completed.', 0, 1),
(412, 'register_complete_meta_keywords', 'registration, completed, file, hosting, site', 0, 1),
(413, 'register_complete_sub_title', 'Thank you for registering!', 0, 0),
(414, 'register_complete_main_text', 'We\'ve sent an email to your registered email address with your access password. Please check your spam filters to ensure emails from this site get through. ', 0, 0),
(415, 'register_complete_email_from', 'Emails from this site are sent from ', 0, 1),
(416, 'login_page_name', 'Login', 0, 1),
(417, 'login_meta_description', 'Login to your account', 0, 1),
(418, 'login_meta_keywords', 'login, register, short url', 0, 1),
(419, 'username_and_password_is_invalid', 'Your username and password are invalid', 0, 1),
(420, 'account_login', 'Account Login', 0, 0),
(421, 'login_intro_text', 'Please enter your username and password below to login.', 0, 1),
(422, 'username_requirements', 'Your account username. 6 characters or more and alpha numeric.', 0, 0),
(423, 'password_requirements', 'Your account password. Min 6 characters, alpha numeric, no spaces.', 0, 0),
(428, 'please_enter_your_username', 'Please enter your username', 0, 1),
(434, 'faq_page_name', 'FAQ', 0, 1),
(435, 'faq_meta_description', 'Frequently Asked Questions', 0, 1),
(436, 'faq_meta_keywords', 'faq, frequently, asked, questions, file, hosting, site', 0, 1),
(437, 'please_enter_your_password', 'Please enter your password', 0, 1),
(441, 'register_account', 'Register Account', 0, 0),
(446, 'info', 'info', 0, 1),
(447, 'email_address_confirm', 'Email Confirm', 0, 1),
(449, 'created_last_visited', 'Created/Last Visited', 0, 0),
(450, 'status', 'Status', 0, 1),
(453, 'register_page_name', 'Register', 0, 1),
(454, 'register_meta_description', 'Register for an account', 0, 1),
(455, 'register_meta_keywords', 'register, account, short, url, user', 0, 1),
(457, 'error_file_has_been_removed_by_user', 'File has been removed.', 0, 1),
(459, 'downloads', 'downloads', 0, 1),
(460, 'download_now', 'download now', 0, 1),
(461, 'loading_file_please_wait', 'loading file, please wait', 0, 0),
(462, 'file_download_title', 'Download File', 0, 0),
(463, 'file_download_description', 'Download file', 0, 1),
(464, 'file_download_keywords', 'download, file, upload, mp3, avi, zip', 0, 1),
(465, 'your_recent_files', 'Your Files', 0, 1),
(466, 'download_url', 'Download Url', 0, 1),
(467, 'uploaded_last_visited', 'Uploaded/Last Visited', 0, 0),
(468, 'download_url_filename', 'Download Url/Filename', 0, 1),
(469, 'dashboard_total_active_files', 'Total Active Files', 0, 0),
(470, 'dashboard_total_disabled_files', 'Total Inactive Files', 0, 0),
(471, 'dashboard_total_downloads_to_all', 'Total Downloads', 0, 0),
(472, 'user removed', 'user removed', 0, 0),
(473, 'files', 'files', 0, 1),
(474, 'manage_files', 'Manage Files', 0, 0),
(475, 'files_filter_results', 'Filter Results', 0, 0),
(476, 'files_filter_disabled', 'Show Disabled', 0, 0),
(477, 'export_files_as_csv', 'Export File Data', 0, 0),
(478, 'error_file_has_been_removed_by_admin', 'File has been removed by the site administrator.', 0, 1),
(479, 'files_filter_removed', 'Show Removed', 0, 0),
(480, 'admin removed', 'admin removed', 0, 0),
(481, 'delete_file_page_name', 'Delete File', 0, 1),
(482, 'delete_file_meta_description', 'Delete File', 0, 1),
(483, 'delete_file_meta_keywords', 'delete, remove, file', 0, 1),
(484, 'delete_file', 'Delete File', 0, 1),
(485, 'delete_file_intro', 'Please confirm whether to delete the file below.', 0, 0),
(486, 'cancel', 'Cancel', 0, 1),
(489, 'terms_page_name', 'Terms and Conditions', 0, 1),
(490, 'terms_meta_description', 'Terms and Conditions', 0, 1),
(491, 'terms_meta_keywords', 'terms, and, conditions, file, hosting, site', 0, 1),
(493, 'upgrade_page_name', 'Extend Account', 0, 0),
(494, 'upgrade_meta_description', 'Extend Your Account', 0, 1),
(496, 'payment_complete_page_name', 'Payment Complete', 0, 1),
(497, 'payment_complete_meta_description', 'Payment Complete', 0, 1),
(498, 'payment_complete_meta_keywords', 'payment, complete, file, hosting, site', 0, 1),
(499, 'premium_account_benefits', 'premium account benefits', 0, 0),
(501, 'file_information_page_name', ' Information', 0, 0),
(502, 'file_information_description', 'Information about ', 0, 1),
(503, 'file_information_meta_keywords', ', share, information, file, upload, download, site', 0, 1),
(504, 'download_urls', 'download urls', 0, 1),
(505, 'statistics', 'statistics', 0, 1),
(506, 'share', 'share', 0, 1),
(507, 'other_options', 'other options', 0, 1),
(508, 'problem_file_requirements', 'Enter the details of the file (as above) you wish to report.', 0, 0),
(510, 'report_abuse_error_no_content', 'Please enter the details of the reported file.', 0, 0),
(511, 'report_abuse', 'Report Abuse', 0, 0),
(515, 'main_navigation', 'Main Navigation', 0, 1),
(516, 'legal_bits', 'Legal Bits', 0, 0),
(518, 'days', 'days', 0, 1),
(520, 'pay_via_paypal', 'Pay via PayPal', 0, 0),
(523, 'add_files', 'Add files...', 0, 1),
(526, 'select_files', 'Select files', 0, 1),
(527, 'drag_and_drop_files_here_or_click_to_browse', 'Drag &amp; drop files here or click to browse...', 0, 1),
(529, 'add_file', 'add file', 0, 1),
(530, 'copy_all_links', 'copy all links', 0, 1),
(531, 'file_upload_completed', 'File uploads completed.', 0, 1),
(532, 'delete_url', 'Delete Url', 0, 1),
(533, 'stats_url', 'Stats Url', 0, 1),
(536, 'full_info', 'Full Info', 0, 1),
(537, 'click_here', 'click here', 0, 1),
(541, 'filename', 'filename', 0, 1),
(542, 'download', 'download', 0, 1),
(544, 'url', 'url', 0, 1),
(546, 'share_file', 'share file', 0, 1),
(550, 'please_enter_your_firstname', 'Please enter your firstname', 0, 1),
(551, 'click_here_to_browse_your_files', 'Click here to browse your files...', 0, 1),
(552, 'please_enter_your_lastname', 'Please enter your lastname', 0, 1),
(553, 'report_abuse_page_name', 'Report Abuse', 0, 1),
(554, 'report_abuse_meta_description', 'Report Abuse or Copyright Infringement', 0, 1),
(555, 'report_abuse_meta_keywords', 'report, abuse, copyright, infringement, file, hosting', 0, 1),
(556, 'report_abuse_intro', 'Please use the following form to report any copyright infringements ensuring you supply all the following information<br/><br/>\n<ul class=\'formattedList\'>\n<li>A physical or electronic signature of the copyright owner or the person authorized to act on its behalf;</li>\n<li>A description of the copyrighted work claimed to have been infringed;</li>\n<li>A description of the infringing material and information reasonably sufficient to permit File Upload Script to locate the material;</li>\n<li>Your contact information, including your address, telephone number, and email;</li>\n<li>A statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and</li>\n<li>A statement that the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.</li>\n</ul>', 0, 0),
(557, 'submit_report', 'submit report', 0, 1),
(558, 'optional_account_expiry', 'Paid Expiry Y-m-d (optional)', 0, 0),
(559, 'account_expiry_invalid', 'Account expiry date is invalid. It should be in the format YYYY-mm-dd', 1, 0),
(561, 'stats_meta_description', 'Uploaded file statistics', 0, 1),
(562, 'stats_meta_keywords', 'stats, statistics, unique, visitors, hits, file, upload', 0, 1),
(563, 'upgrade_now_for_instant_access', 'upgrade now for instant access', 0, 0),
(564, 'downloading', 'downloading', 0, 0),
(565, 'error_page_name', 'Error', 0, 1),
(566, 'error_meta_description', 'Error', 0, 1),
(567, 'error_meta_keywords', 'error, file, upload, script', 0, 1),
(568, 'choose_free_or_premium_download', 'Choose free or premium download', 0, 1),
(569, 'slow_download', 'slow download', 0, 1),
(570, 'wait', 'wait', 0, 1),
(571, 'sec', 'sec', 0, 1),
(572, 'fast_instant_download', 'FAST INSTANT DOWNLOAD', 0, 1),
(573, 'download_type', 'download type', 0, 1),
(575, 'download_speed', 'download speed', 0, 1),
(576, 'maximum', 'maximum', 0, 1),
(577, 'waiting_time', 'waiting time', 0, 1),
(578, 'seconds', 'seconds', 0, 1),
(579, 'instant', 'instant', 0, 1),
(580, 'site_advertising', 'site advertising', 0, 1),
(581, 'yes', 'yes', 0, 1),
(582, 'none', 'none', 0, 1),
(583, 'how_long_to_keep_files', 'how long to keep files', 0, 1),
(584, 'forever', 'forever', 0, 1),
(585, 'maximum_file_upload_size', 'Maximum file upload size', 0, 1),
(586, 'interface_to_manage_uploaded_files', 'interface to manage uploaded files', 0, 1),
(587, 'not_available', 'not available', 0, 1),
(588, 'available', 'available', 0, 1),
(589, 'fast_download_even_when_servers_are_busy', 'fast download even when servers are busy', 0, 1),
(590, 'estimated_download_time', 'estimated Download time', 0, 1),
(591, 'error_can_not_locate_file', 'File can not be located, please try again later.', 0, 1),
(592, 'admin_file_servers', 'File Servers', 1, 0),
(593, 'file_server_management_intro', 'Double click on any of the servers below to edit.', 0, 0),
(594, 'add_new_server', 'Add new server', 0, 0),
(595, 'server_label', 'server label', 0, 0),
(596, 'server_type', 'server type', 0, 0),
(597, 'storage_path', 'storage path', 0, 0),
(598, 'enter_server_details', 'Enter Server Details', 0, 0),
(599, 'total_space_used', 'total space used', 0, 0),
(600, 'total_files', 'total files', 0, 0),
(601, 'file_server_test_ftp_intro', 'Testing connection to file server... (via ftp)', 0, 0),
(602, 'back_to_server_management', 'Back to Server Management', 0, 0),
(603, 'could_not_load_server', 'Could not load server details.', 0, 0),
(604, 'ftp_host', 'FTP Host', 1, 0),
(605, 'ftp_port', 'FTP Port', 1, 0),
(606, 'server_ftp_host_invalid', 'Please specify the server ftp host.', 0, 0),
(607, 'files_filter_server', 'By File Server', 0, 0),
(608, 'view_files', 'view files', 0, 0),
(609, 'files_filter_user', 'By User', 0, 0),
(611, 'system expired', 'system expired', 0, 0),
(612, 'upload_share_and_manage_your_files_for_free', 'Upload, share and manage your files for free.', 0, 1),
(613, 'store_and_manage_all_your_files', 'Store and manage all your files!', 0, 1),
(614, 'upload_multiple_files_at_once_and_keep_them', 'Upload multiple files at once and keep them forever on this site. If you\'re using FireFox or Chrome, you can simply drag &amp; drop your files to begin uploading.', 0, 1),
(615, 'share_your_files_with_everyone', 'Share your files with everyone!', 0, 1),
(616, 'we_supply_you_with_all_the_tools_necessary_to_easily_share', 'We supply you with all the tools necessary to easily share your files. Use our pre-generated html code to link from your website or post directly to Facebook or Twitter.', 0, 1),
(617, 'fast_and_instant_downloading', 'Fast and instant downloading!', 0, 1),
(618, 'our_premium_members_benefit_from_no_waiting_time_and_direct', 'Our premium members benefit from no waiting time and direct downloads for all of their files. Unlike other file hosts we don\'t limit the transfer speed of our downloads.', 0, 1),
(619, 'email_large_attachments', 'Email large attachments!', 0, 0),
(620, 'no_longer_do_you_have_to_risk_a_large_file_being_bounced_by_a_mail', 'No longer do you have to risk a large file being bounced by a mail server. Upload and send your recipient a link to download the file. You can even track when it\'s been downloaded.', 0, 0),
(621, 'server_info', 'Server Info', 0, 0),
(622, 'edit_page_name', 'Edit', 0, 0),
(623, 'edit_meta_description', 'Edit existing item', 0, 0),
(624, 'edit_meta_keywords', 'edit, existing, item', 0, 0),
(625, 'edit_existing_item', 'Edit Existing Item', 0, 1),
(626, 'edit_existing_item_intro_text', 'Use the form below to amend the selected item.', 0, 0),
(627, 'new_long_url', 'new long url', 0, 0),
(628, 'reset_stats', 'reset stats', 0, 1),
(629, 'update_url', 'update url', 0, 0),
(630, 'no_keep_existing_stats', 'No (keep existing stats)', 0, 0),
(631, 'yes_remove_existing_stats', 'Yes (remove existing stats)', 0, 0),
(632, 'whether_to_reset_the_statistics_or_not', 'Whether to reset the statistics or not', 0, 0),
(633, 'no_keep_stats', 'No, keep stats', 0, 1),
(634, 'yes_remove_stats', 'Yes, remove stats', 0, 1),
(635, 'update_item', 'update item', 0, 1),
(636, 'folder', 'folder', 0, 1),
(637, 'the_items_folder', 'The items folder', 0, 0),
(639, 'the_filename_on_download', 'The filename on download', 0, 0),
(640, 'folders', 'folders', 0, 0),
(641, 'account_folder_name', 'File Folders', 0, 0),
(642, 'account_folder_meta_description', 'Your File Folders', 0, 0),
(643, 'account_folder_meta_keywords', 'file, folders, home, file, your, interface, upload, download, site', 0, 0),
(644, 'folder_name', 'Folder Name', 0, 1),
(645, 'is_public', 'Public', 0, 0),
(646, 'public_no', 'no', 0, 0),
(647, 'total_active_files', 'Total Active Files', 0, 0),
(648, 'active_files', 'Active Files', 0, 1),
(649, 'add_page_name', 'Add', 0, 0),
(650, 'add_meta_description', 'Add existing item', 0, 0),
(651, 'add_meta_keywords', 'add, existing, item', 0, 0),
(652, 'add_folder', 'Add Folder', 0, 1),
(653, 'add_folder_intro_text', 'Use the form below to add a new folder to your account.', 0, 0),
(654, 'the_folder_name', 'The folder name', 0, 0),
(655, 'no_keep_private', 'No, keep private', 0, 1),
(656, 'yes_allow_public', 'Yes, allow sharing', 0, 1),
(657, 'whether_to_allow_public_access_to_the_folder', 'Whether to allow public access to the folder or not', 0, 0),
(658, 'add_item', 'add item', 0, 0),
(659, 'edit_existing_folder', 'Edit Existing Folder', 0, 1),
(660, 'edit_existing_folder_intro_text', 'Use the form below to amend the selected folder.', 0, 0),
(661, 'public_yes', 'yes', 0, 0),
(662, 'folder_password', 'folder password', 0, 0),
(663, 'the_folder_password', 'The folder password. (must be a public folder)', 0, 0),
(664, 'please_enter_the_foldername', 'Please enter the folder name', 0, 1),
(665, 'already_a_folder_with_that_name', 'You already have a folder with that name, please use another', 0, 1),
(666, 'listing_url', 'Listing Url', 0, 0),
(667, 'files_within_folder', 'Files Within Folder', 0, 1),
(668, 'there_are_no_files_within_this_folder', 'There are no files within this folder.', 0, 1),
(669, 'sharing_url', 'Sharing Url', 0, 0),
(670, 'public_link', 'public link', 0, 0),
(671, 'folder_login', 'Folder Login', 0, 0),
(672, 'folder_login_intro_text', 'Please enter the password below to access this folder.', 0, 1),
(673, 'folder_password_requirements', 'The folder password.', 0, 0),
(674, 'continue', 'continue', 0, 1),
(675, 'folder_restricted', 'Folder Restricted', 0, 1),
(676, 'please_enter_the_folder_password', 'Please enter the folder password', 0, 1),
(677, 'password_is_invalid', 'The folder password is invalid', 0, 1),
(678, 'save_to_folder', 'Save To Folder', 0, 0),
(679, 'forgot_password', 'forgot password', 0, 1),
(680, 'forgot_password_page_name', 'Forgot Password', 0, 1),
(681, 'forgot_password_meta_description', 'Forgot account password', 0, 1),
(682, 'forgot_password_meta_keywords', 'forgot, password, account, short, url, user', 0, 1),
(683, 'forgot_password_intro_text', 'Enter your email address below to receive further instructions on how to reset your account password.', 0, 1),
(684, 'reset', 'reset', 0, 0),
(685, 'please_enter_your_email_address', 'Please enter the account email address', 0, 1),
(686, 'account_not_found', 'Account with that email address not found', 0, 1),
(687, 'forgot_password_sent_intro_text', 'An email has been sent to [[[EMAIL_ADDRESS]]] with further instructions on how to reset your password.', 0, 1),
(688, 'forgot_password_confirm_intro_text', 'An email has been sent to [[[EMAIL_ADDRESS]]] with further instructions on how to reset your password.', 0, 0),
(689, 'request_reset', 'request reset', 0, 1),
(690, 'forgot_password_reset_intro_text', 'Set your new password below to access your account.', 0, 1),
(691, 'confirm_password', 'confirm password', 0, 1),
(692, 'update_password', 'update password', 0, 1),
(693, 'password_length_incorrect', 'Password should be between 6 - 20 characters in length', 0, 1),
(694, 'password_confirmation_does_not_match', 'Your password confirmation does not match', 0, 1),
(695, 'forgot_password_reset_confirm_intro_text', 'Your password has been reset. You can now login to the site above.', 0, 1),
(696, 'username_must_be_between_6_and_20_characters', 'Your username must be between 6 and 20 characters', 0, 1),
(697, 'account_edit_page_name', 'Account Details', 0, 1),
(698, 'account_edit_meta_description', 'Account details', 0, 1),
(699, 'account_edit_meta_keywords', 'details, account, short, url, user', 0, 1),
(700, 'account_details', 'Account Details', 0, 1),
(701, 'change_password', 'Change Password', 0, 1),
(702, 'update_account', 'update account', 0, 1),
(703, 'email_address_already_exists', 'Email address already exists', 0, 1),
(704, 'account_updated_success_message', 'Account details successfully updated', 0, 1),
(705, 'admin', 'admin', 0, 0),
(707, 'settings', 'settings', 0, 0),
(708, 'captcha_confirmation', 'Captcha Confirmation', 0, 0),
(709, 'in_order_to_prevent_abuse_captcha_intro', 'In order to prevent abuse of this service, please copy the words into the text box on the right.', 0, 1),
(710, 'invalid_captcha', 'Captcha confirmation text is invalid.', 0, 1),
(711, 'proceed_to_payment', 'process to payment', 0, 1),
(712, 'register_account_complete', 'Register Account - Complete', 0, 0),
(713, 'your_username_is_invalid', 'Your username can only contact alpha numeric and underscores.', 0, 1),
(714, 'upgrade', 'upgrade', 0, 1),
(715, 'username_already_exists', 'Username already exists on another account', 0, 1),
(716, 'login_to_the_admin_area_below', 'Login to the admin area below', 0, 0),
(717, 'admin_login', 'admin login', 0, 0),
(718, 'submit', 'submit', 0, 0),
(719, 'manage_file_servers', 'manage file servers', 0, 0),
(720, 'file_servers', 'file servers', 0, 0),
(721, 'manage_users', 'manage users', 0, 0),
(722, 'users', 'users', 0, 0),
(723, 'payments', 'payments', 0, 0),
(724, 'translations', 'translations', 0, 0),
(725, 'short_url', 'Short Url', 0, 0),
(726, 'date_uploaded', 'Date Uploaded', 0, 0),
(727, 'total_downloads', 'Total Downloads', 0, 1),
(728, 'uploaded_ip', 'Upload IP', 0, 0),
(729, 'last_downloaded', 'Last Downloaded', 0, 0),
(730, 'actions', 'Actions', 0, 1),
(731, 'date_uploaded_uploaded_ip', 'Date Uploaded/IP', 0, 0),
(732, 'space_used', 'HD Used', 0, 0),
(733, 'type', 'Type', 0, 0),
(734, 'server_information', 'server information', 0, 0),
(735, 'account_expiry_invalid_dd_mm_yy', 'Account expiry date invalid, it should be in the format dd/mm/yyyy', 0, 0),
(736, 'description', 'Description', 0, 1),
(737, 'ban_type', 'Ban Type', 0, 0),
(738, 'enter_the_ip_address', 'Please enter the IP address.', 0, 0),
(739, 'enter_the_language_name', 'Please enter the language name.', 0, 0),
(740, 'language_already_exists', 'A language with that name already exists in the database.', 0, 0),
(741, 'english_content', 'English Content', 0, 0),
(742, 'default', 'Default', 0, 0),
(743, 'file_status', 'File Status', 0, 0),
(744, 'dashboard_graph_user_registrations_title', 'Last 14 days user registrations', 0, 0),
(745, 'free_user', 'free user', 0, 0),
(746, 'file_type', 'File Type', 0, 0),
(747, 'paid_user', 'paid user', 0, 0),
(748, 'dll', 'dll', 0, 0),
(749, 'doc', 'doc', 0, 0),
(750, 'exe', 'exe', 0, 0),
(751, 'ini', 'ini', 0, 0),
(752, 'jpg', 'jpg', 0, 0),
(753, 'mp3', 'mp3', 0, 0),
(754, 'php', 'php', 0, 0),
(755, 'png', 'png', 0, 0),
(756, 'sql', 'sql', 0, 0),
(757, 'txt', 'txt', 0, 0),
(758, 'ftp_username', 'ftp username', 0, 0),
(759, 'ftp_password', 'ftp password', 0, 0),
(760, 'server_label_invalid', 'Please specify the server label.', 0, 0),
(761, 'server_label_already_in_use', 'That server label has already been used, please choose another.', 0, 0),
(762, 'server_ftp_username_invalid', 'Please specify the server ftp username.', 0, 0),
(763, 'owner', 'Owner', 1, 0),
(764, 'other', 'other', 1, 1),
(765, 'wmv', 'wmv', 1, 0),
(766, 'date_started', 'date started', 1, 0),
(767, 'file_name', 'file name', 1, 0),
(768, 'file_size', 'file size', 1, 0),
(769, 'total_threads', 'total threads', 1, 0),
(770, 'threads', 'threads', 1, 0),
(771, 'username_is_reserved', 'Username is reserved and can not be used, please choose another', 0, 1),
(774, 'French', 'French', 0, 0),
(775, 'German', 'German', 0, 0),
(776, 'Spanish', 'Spanish', 0, 0),
(778, 'file_is_too_big', 'File is too big', 0, 1),
(779, 'file_is_too_small', 'File is too small', 0, 1),
(780, 'filetype_is_not_allowed', 'Filetype not allowed', 0, 1),
(781, 'max_number_of_files_exceeded', 'Max number of files exceeded', 0, 1),
(782, 'file_exceeds_upload_max_filesize_php_ini_directive', 'File exceeds upload_max_filesize (php.ini directive)', 0, 1),
(783, 'file_exceeds_max_file_size_html_form_directive', 'File exceeds MAX_FILE_SIZE (HTML form directive)', 0, 1),
(784, 'file_was_only_partially_uploaded', 'File was only partially uploaded', 0, 1),
(785, 'no_file_was_uploaded', 'No File was uploaded', 0, 1),
(786, 'missing_a_temporary_folder', 'Missing a temporary folder', 0, 1),
(787, 'failed_to_write_file_to_disk', 'Failed to write file to disk', 0, 1),
(788, 'file_upload_stopped_by_extension', 'File upload stopped by extension', 0, 1),
(789, 'uploaded_bytes_exceed_file_size', 'Uploaded bytes exceed file size', 0, 1),
(790, 'empty_file_upload_result', 'Empty file upload result', 0, 1),
(791, 'from', 'from', 0, 1),
(792, 'quick_overview', 'Quick Overview', 1, 0),
(793, 'please_enter_you_information_below_to_register_for_an_account', 'Please enter your information below to register for an account. Your new account password will be sent to your email address.', 0, 0),
(794, 'mrs', 'Mrs', 0, 0),
(795, 'miss', 'Miss', 0, 0),
(796, 'dr', 'Dr', 0, 0),
(797, 'pro', 'Pro', 0, 0),
(798, 'your_title', 'Your title', 0, 1),
(799, 'your_firstname', 'Your firstname', 0, 1),
(800, 'your_lastname', 'Your lastname', 0, 1),
(801, 'your_email_address', 'Your email address', 0, 0),
(802, 'confirm_your_email_address', 'Confirm your email address', 0, 0),
(803, 'your_account_username', 'Your account username. 6 characters or more and alpha numeric.', 0, 0),
(805, 'by_clicking_register_you_agree_to_our_terms', 'By clicking \'register\', you agree to our <a href=\'terms.html\'>Terms of service</a>.', 0, 0),
(806, 'title_mr', 'Mr', 0, 1),
(807, 'title_mrs', 'Mrs', 0, 1),
(808, 'title_miss', 'Miss', 0, 1),
(809, 'title_dr', 'Dr', 0, 1),
(810, 'title_pro', 'Pro', 0, 1),
(811, 'download from', 'Download From', 0, 1),
(812, 'terms_and_conditions_text', '<strong>Basic TOS</strong><br/>\n<br/>\nAll users must be of at least the age of 13, and agree to not use the [[[SITE_NAME]]] service for any illegal or unauthorized purposes. All users must agree to comply with local laws regarding online conduct, and copyright laws. [[[SITE_NAME]]] is intended for personal use, and any business use is strictly prohibited. All users must not use [[[SITE_NAME]]]\'s services to violate any laws which include but are not limited to copyright laws. Any violations will result in immediate deletion of all files [[[SITE_NAME]]] has on record for your IP Address.<br/>\n<br/>\nAll users use [[[SITE_NAME]]] at their own risk, users understand that files uploaded on [[[SITE_NAME]]] are not private, they may be displayed for others to view, and [[[SITE_NAME]]] users understand and agree that [[[SITE_NAME]]] cannot be responsible for the content posted on its web site and you nonetheless may be exposed to such materials and that you use [[[SITE_NAME]]]\'s service at your own risk.<br/>\n<br/>\n<strong>Conditions</strong><br/>\n<br/>\n- We reserve the right to modify or terminate the [[[SITE_NAME]]] service for any reason, without notice at any time.<br/>\n- We reserve the right to alter these Terms of Use at any time.<br/>\n- We reserve the right to refuse service to anyone for any reason at any time.<br/>\n- We may, but have no obligation to, remove Content and accounts containing Content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, obscene or otherwise objectionable or violates any party\'s intellectual property or these Terms of Use.<br/>\n- If a user is found to be using [[[SITE_NAME]]] to host icons, smileys, buddy icons, forum avatars, forum badges, forum signature images, or any other graphic for website design all your images will be removed.<br/>\n<br/>\n<strong>Copyright Information</strong><br/>\n<br/>\n[[[SITE_NAME]]] claims no intellectual property rights over the images uploaded by its\' users.<br/>\n<br/>\n[[[SITE_NAME]]] will review all copyright &copy; infringement claims received and remove files found to have been upload or distributed in violation of any such laws. To make a valid claim you must provide [[[SITE_NAME]]] with the following information:<br/>\n<br/>\n- A physical or electronic signature of the copyright owner or the person authorized to act on its behalf;<br/>\n- A description of the copyrighted work claimed to have been infringed;<br/>\n- A description of the infringing material and information reasonably sufficient to permit [[[SITE_NAME]]] to locate the material;<br/>\n- Your contact information, including your address, telephone number, and email;<br/>\n- A statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and<br/>\n- A statement that the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.<br/>\n<br/>\nClaims can be sent to us via the <a href=\"report_file\">report abuse</a> page.', 0, 0),
(813, 'register_user_email_subject', 'Account details for [[[SITE_NAME]]]', 0, 0),
(814, 'register_user_email_content', 'Dear [[[FIRST_NAME]]],<br/><br/>Your account on [[[SITE_NAME]]] has been created. Use the details below to login to your new account:<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><strong>Password:</strong> [[[PASSWORD]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(815, 'sftp_host', 'sftp host', 1, 0),
(816, 'sftp_port', 'sftp port', 1, 0),
(817, 'sftp_username', 'sftp username', 1, 0),
(818, 'sftp_password', 'sftp password', 1, 0),
(819, 'manage_plugins', 'manage plugins', 1, 0),
(820, 'add_plugin', 'add plugin', 1, 0),
(822, 'directory_name', 'directory name', 1, 0),
(823, 'is_installed', 'is installed', 1, 0),
(824, 'installed', 'installed?', 1, 0),
(825, 'no_file_found', 'No file found, please try again.', 1, 0),
(826, 'not_a_zip_file', 'The uploaded file does not appear to be a zip file.', 1, 0),
(827, 'error_creating_plugin_folder', 'There was a problem creating the plugin folder. Please ensure the following folder has CHMOD 777 permissions: /var/www/php_site_scripts/file_hosting/plugins/', 1, 0),
(828, 'error_reading_plugin_details', 'Could not read the plugin settings file \'_plugin_config.inc.php\'.', 1, 0),
(829, 'error_problem_unzipping_the_file', 'There was a problem unzipping the file, please try and manually upload the zip files contents into the plugins directory or contact support.', 1, 0),
(831, 'User Earnings', 'User Earnings', 1, 0),
(832, 'Detailed Referrals', 'Detailed Referrals', 1, 0),
(833, 'Payment Requests', 'Payment Requests', 1, 0),
(834, 'keep_your_account_details_up_to_date_below', 'Keep your account details up to date below.', 0, 1),
(835, 'your_new_email_address', 'Your new email address', 0, 1),
(836, 'a_new_account_password_leave_blank_to_keep', 'Optional. A new account password, leave this blank to keep your existing.', 0, 1),
(837, 'active_downloads', 'active downloads', 1, 0),
(849, 'rewards_meta_description', 'Rewards', 0, 1),
(850, 'rewards_meta_keywords', 'earn, money, rewards, cash, sales, affiliate, file, hosting, site', 0, 1),
(851, 'overview', 'overview', 0, 1),
(852, 'total_rewards', 'total rewards', 0, 0),
(853, 'cleared_rewards', 'cleared rewards', 0, 0),
(854, 'available_for_withdrawal', 'available for withdrawal', 0, 0),
(856, 'this_months_rewards', 'this months rewards', 0, 0),
(857, 'you_have_not_uploaded_any_file_recently', '- You have not uploaded any files recently. <a href=\"[[[WEB_ROOT]]]/index\">Click here</a> to upload some now.', 0, 0),
(858, 'if_you_have_an_account_signin', 'If you have an account, <a href=\"[[[WEB_ROOT]]]/login\">click here</a> to login and manage your files.', 0, 0),
(859, 'detailed_rewards', 'detailed rewards', 0, 0),
(860, 'how_to_start_earning', 'how to start earning', 0, 1),
(861, 'reward_date', 'Reward Date', 0, 1),
(862, 'reward_amount', 'Amount', 0, 1),
(863, 'recent_rewards', 'recent rewards', 0, 0),
(864, 'copyright removed', 'copyright removed', 1, 0),
(865, 'user_status', 'User Status', 1, 0),
(866, 'free user', 'free user', 1, 0),
(867, 'paid user', 'paid user', 1, 0),
(868, 'amount', 'Amount', 1, 1),
(869, 'original_order_number', 'Original Order #', 1, 1),
(870, 'upgrade_source', 'Upgrade Source', 1, 1),
(871, 'user', 'User', 1, 1),
(872, 'filter_results', 'Filter Results', 0, 0),
(873, 'by_folder', 'By Folder', 0, 0),
(874, 'all', 'all', 0, 0),
(875, 'by_status', 'By Status', 0, 0),
(877, 'Aggregated Earnings', 'Aggregated Earnings', 1, 0),
(878, 'monthly_totals', 'monthly totals', 0, 1),
(879, 'rewards_request_withdrawal_email_to_admin_subject', 'Rewards withdrawal request for [[[AMOUNT]]]', 0, 0),
(880, 'rewards_request_withdrawal_email_to_admin_content', 'Dear Admin,<br/><br/>A rewards withdrawal request has been received. Please login to [[[SITE_NAME]]] and process the request:<br/><br/><a href=\'[[[ADMIN_WEB_ROOT]]]\'>[[[ADMIN_WEB_ROOT]]]</a><br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(881, 'date_requested', 'Date Requested', 1, 1),
(882, 'Русский', 'Русский', 0, 0),
(883, 'file', 'File', 0, 1),
(884, 'file_permanently_removed', 'File permanently removed.', 0, 1),
(885, 'zip', 'zip', 1, 0),
(886, 'please_enter_your_skrill_email_address', 'Please enter your Skrill account email address.', 1, 1),
(887, 'error_you_must_register_for_a_premium_account_for_filesize', 'You must register for a premium account for files of this size. Please use the links above to register or login.', 0, 1),
(888, 'error_you_have_reached_the_max_permitted_downloads', 'You have reached the maximum concurrent downloads. Please wait for your existing downloads to complete or register for a premium account above.', 0, 1),
(889, 'Newsletters', 'Newsletters', 1, 0),
(890, 'Create Newsletter', 'Create Newsletter', 1, 0),
(891, 'Manage Newsletters', 'Manage Newsletters', 1, 0),
(892, 'Export User Data', 'Export User Data', 1, 0),
(893, 'newsletter_date', 'date', 1, 0),
(894, 'newsletter_title', 'title', 1, 1),
(895, 'newsletter_subject', 'subject', 1, 1),
(896, 'newsletter_status', 'status', 1, 1),
(897, 'newsletter_user_group', 'send to', 1, 1),
(898, 'newsletter_html_content', 'newsletter content (html)', 1, 1),
(899, 'upload', 'upload', 0, 0),
(900, 'file_upload', 'file upload', 0, 1),
(903, 'enter_urls', 'Enter Urls', 0, 0),
(906, 'file_transfers_completed', 'File transfers completed.', 0, 1),
(907, 'html', 'html', 1, 0),
(908, 'ico', 'ico', 1, 0),
(909, 'MPG', 'MPG', 1, 0),
(913, 'error_renaming_plugin_folder', 'Could not rename plugin folder, it may be that the plugin is already installed or a permissions issue.', 1, 0),
(914, 'com:8080/p', 'com:8080/p', 1, 0),
(915, 'newsletter_created', 'created', 1, 1),
(916, 'newsletter_unsubscribe_title', 'newsletter unsubscribe', 0, 1),
(917, 'newsletter_unsubscribe_description', 'Unsubscribe', 0, 1),
(918, 'newsletter_unsubscribe_meta_keywords', 'newsletter, unsubscribe, file, hosting, site', 0, 1),
(919, 'newsletter_unsubscribe', 'newsletter unsubscribe', 0, 1),
(920, 'newsletter_unsubscribe_intro_text', 'Enter your email address below to be removed from future newsletters from our site.', 0, 1),
(921, 'newsletter_unsubscribe_email_tip', 'Your registered email address.', 0, 1),
(922, 'unsubscribe', 'unsubscribe', 0, 1),
(923, 'newsletter_unsubscribe_problem_unsubscribing', 'There was a problem unsubscribing your from our mailing list. Please contact us and we\'ll manually remove you', 0, 1),
(924, 'newsletter_unsubscribe_account_already_unsubscribed', 'The email address you\'ve provided has already been unsubscribed', 0, 1),
(925, 'newsletter_unsubscribe_successfully_unsubscribed', 'Your email address has been sucessfully removed from our mailing lists', 0, 1),
(928, 'newsletter_subscribe_title', 'newsletter subscribe', 0, 1),
(929, 'newsletter_subscribe_description', 'Subscribe', 0, 1),
(930, 'newsletter_subscribe_meta_keywords', 'newsletter, subscribe, file, hosting, site', 0, 1),
(931, 'newsletter_subscribe', 'newsletter subscribe', 0, 1),
(932, 'newsletter_subscribe_intro_text', 'Enter your email address below to be added to future newsletters from our site. Note, you must have a registered account to be added to the mailing list.', 0, 1),
(933, 'newsletter_subscribe_email_tip', 'Your registered email address.', 0, 1),
(935, 'your_email_address_is_invalid', 'Your email address is invalid', 0, 1),
(936, 'newsletter_subscribe_could_not_find_account', 'Could not find an account with that email address', 0, 1),
(937, 'newsletter_subscribe_successfully_subscribed', 'Your email address has been sucessfully added to our mailing lists', 0, 1),
(939, 'thanks_for_your_payment', 'Thanks for your payment!', 0, 0),
(940, 'once_we_receive_notication_from_gateway_your_account_will_be_upgraded', 'Once we receive notification from the payment gateway, your account will be upgraded/extended. Please allow up to an hour for this to complete.', 0, 1),
(941, 'you_can_check_your_accout_status_by_going', 'You can check your account status by going ', 0, 1),
(942, 'here', 'here', 0, 1),
(943, 'download_view_now', 'download/view now', 0, 1),
(944, 'mp4', 'mp4', 1, 0),
(945, 'media_player_plugin_watch_page_name', 'Watch', 0, 1),
(946, 'media_player_plugin_page_description', 'Watch or listen to ', 0, 1),
(947, 'media_player_plugin_meta_keywords', ', watch, listen, file, upload, download, site', 0, 1),
(948, 'ogv', 'ogv', 1, 0),
(949, 'limited', 'limited', 0, 1),
(950, 'file_details', 'file details', 0, 1),
(951, 'please_enter_your_tranzila_account_id', 'Please enter your Tranzila account id.', 1, 1),
(952, 'get_plugin', 'get plugins', 1, 0),
(953, 'ftp_directory_does_not_exist', 'The ftp path you\'ve set does not exist.', 1, 0),
(954, 'set_the_ftp_path', 'Please set the path to store ftp accounts.', 1, 1),
(958, 'error_message', 'Error message', 0, 1),
(959, 'ftp_details', 'FTP Details', 0, 1),
(969, 'please_enter_your_paymentwall_application_key', 'Please enter your PaymentWall application key. This can be found in Application Settings.', 1, 1),
(970, 'please_enter_your_okpay_waller_number', 'Please enter your OKPay wallet number.', 1, 1),
(971, 'please_enter_the_filename', 'Please enter the filename', 0, 1),
(972, 'please_enter_your_firstdata_transaction_key', 'Please enter your First Data transaction key.', 1, 1),
(973, 'downloader', 'downloader', 1, 0),
(974, 'image_viewer_plugin_page_name', 'Watch', 0, 1),
(975, 'image_viewer_plugin_page_description', 'Watch or listen to ', 0, 1),
(976, 'image_viewer_plugin_meta_keywords', ', view, picture, file, upload, download, site', 0, 1),
(978, 'html_thumb_code', 'HTML Thumbnail Code', 0, 1),
(979, 'forum_thumb_code', 'Forum Thumbnail Code', 0, 1),
(980, 'full_url', 'Full Url', 0, 0),
(981, 'embed_code', 'embed code', 0, 1),
(982, 'thumb_url', 'Thumbnail Url', 0, 1),
(983, 'full_image_url', 'Full Image Url', 0, 1),
(984, 'confirm_text', 'Confirmation Text', 0, 1),
(985, 'paging_first', 'First', 0, 0),
(986, 'paging_last', 'Last', 0, 0),
(987, 'paging_next', 'Next', 0, 0),
(988, 'paging_previous', 'Previous', 0, 0),
(989, 'datatable_empty', 'No data found.', 0, 0),
(990, 'datatable_data_info', 'Showing _START_ to _END_ of _TOTAL_ entries', 0, 0),
(991, 'datatable_per_page', 'Show _MENU_ entries', 0, 0),
(992, 'dfdf', 'dfdf', 1, 0),
(993, 'error_you_must_wait_between_downloads', 'You must wait [[[WAITING_TIME_LABEL]]] between downloads. Please try again later or register for a premium account above to remove the restriction.', 0, 0),
(994, 'max_uploads_reached', 'Max uploads reached.', 0, 1),
(995, 'reached_maximum_uploads', 'You have reached the maximum permitted uploads for today.', 0, 1),
(996, 'AVI', 'AVI', 1, 0),
(997, '3gp', '3gp', 1, 0),
(998, 'embed_video', 'Embed Video', 0, 1),
(1002, 'search_plugin_settings', 'Plugin Settings', 1, 1),
(1003, 'search_plugin_state', 'Plugin State', 1, 1),
(1004, 'search_plugin_enabled', 'Whether the search system is enabled', 1, 1),
(1005, 'search_enabled', 'Plugin Enabled', 1, 1),
(1006, 'search_disable_selling', 'Users which have access', 1, 1),
(1007, 'search_disable_selling_desc', 'Select from the drop down who you want to have access to the search feature', 1, 1),
(1008, 'search_disable_label', 'Who has access', 1, 1),
(1009, 'search_files', 'Search Files', 0, 1),
(1010, 'webmaster', 'webmaster', 1, 0);
INSERT INTO `language_key` (`id`, `languageKey`, `defaultContent`, `isAdminArea`, `foundOnScan`) VALUES
(1011, 'level', 'Level', 1, 0),
(1012, 'status_level', 'Status/Level:', 0, 0),
(1013, 'file_level', 'file level', 0, 0),
(1014, 'by_level', 'By Level', 0, 0),
(1015, 'file_server_domain_name', 'file server domain name', 1, 0),
(1016, 'script_path', 'script path', 1, 0),
(1017, 'upload_script_path', 'upload script path', 1, 0),
(1018, 'code_setup', 'code setup', 1, 0),
(1019, 'server_storage_path', 'server storage path', 1, 0),
(1020, 'server_file_server_domain_name_empty', 'Please specify the file server domain name.', 1, 0),
(1021, 'server_file_server_domain_name_invalid', 'The file server domain name you\'ve entered is invalid.', 1, 0),
(1022, 'set_password', 'set password:', 0, 1),
(1023, 'enter_a_password_below_to_secure_your_files', 'When downloading these files, users will be prompted for a password, if set. Download managers will not work if a password is set.', 0, 1),
(1024, 'set_file_password', 'Set Password', 0, 1),
(1026, 'enter_an_email_address_below_to_send_the_list_of_urls', 'Enter an email address below to send the list of urls via email once they\'re uploaded.', 0, 1),
(1028, 'file_password_page_name', 'File Password', 0, 1),
(1029, 'file_password_meta_description', 'Enter file password', 0, 1),
(1030, 'file_password_meta_keywords', 'file, password, account, short, url, user', 0, 1),
(1031, 'file_password', 'file password', 0, 0),
(1032, 'file_password_intro_text', 'A password is required to access this file, please enter it below.', 0, 0),
(1033, 'the_file_password', 'The file password', 0, 0),
(1034, 'access_file', 'access file', 0, 1),
(1035, 'file_password_is_invalid', 'File password is invalid.', 0, 1),
(1036, 'image_url', 'Image Url', 0, 1),
(1037, 'image_size', 'Size', 0, 1),
(1038, 'send_urls_by_email_subject', 'Your url links from [[[SITE_NAME]]]', 0, 0),
(1039, 'send_urls_by_email_html_content', 'Copies of your urls, which completed uploading on [[[UPDATE_COMPLETED_DATE_TIME]]] are below:<br/><br/>[[[FILE_URLS]]]<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(1040, 'error_you_have_reached_the_maximum_permitted_downloads_in_the_last_24_hours', 'You have reached the maximum permitted downloads in the last 24 hours.', 0, 1),
(1041, 'resize_image', 'resize image', 0, 1),
(1042, 'fixed_size', 'fixed size', 0, 1),
(1043, 'keep_proportion', 'keep proportion', 0, 1),
(1044, 'custom_size', 'custom size', 0, 1),
(1045, 'resize', 'resize', 0, 1),
(1046, 'please_enter_the_width', 'Please enter the width', 0, 1),
(1047, 'please_enter_the_height', 'Please enter the height', 0, 1),
(1048, 'please_enter_a_valid_number_for_the_width', 'Please enter a valid number for the width', 0, 1),
(1049, 'please_enter_a_valid_number_for_the_height', 'Please enter a valid number for the height', 0, 1),
(1050, 'Detailed Referrals (PPS)', 'Detailed Referrals (PPS)', 1, 0),
(1051, 'Detailed Downloads (PPD)', 'Detailed Downloads (PPD)', 1, 0),
(1052, 'Detailed Referrals PPS', 'Detailed Referrals PPS', 1, 0),
(1053, 'Detailed PPD', 'Detailed PPD', 1, 0),
(1054, 'Detailed Referrals P.P.S', 'Detailed Referrals P.P.S', 1, 0),
(1055, 'Detailed P.P.D', 'Detailed P.P.D', 1, 0),
(1056, 'Detailed Referrals P P S', 'Detailed Referrals P P S', 1, 0),
(1057, 'Detailed P P D', 'Detailed P P D', 1, 0),
(1058, 'Detailed (ppd)', 'Detailed (ppd)', 1, 0),
(1059, 'Referrals (pps)', 'Referrals (pps)', 1, 0),
(1060, 'Downloads (ppd)', 'Downloads (ppd)', 1, 0),
(1061, 'rewards_plugin_error_please_select_at_least_1_country_for_row', 'Please select at least 1 country for row [[[ROW_NUMBER]]]', 1, 0),
(1062, 'rewards_plugin_error_please_enter_payout_rate_for_row', 'Please enter the payout rate for row [[[ROW_NUMBER]]]', 1, 0),
(1063, 'download_date', 'Download Date', 1, 1),
(1064, 'reward_group', 'Reward Group', 1, 1),
(1065, 'reward_user', 'Reward User', 1, 1),
(1066, 'pay_per_download_rates', 'Pay Per Download (PPD) Rates', 0, 1),
(1067, 'recent_downloads', 'recent downloads', 0, 0),
(1068, 'upload_your_files_and_youll_be_paid_for_every', 'Upload your files and you\'ll be paid for every file downloaded on your account.', 0, 1),
(1069, 'files_above_x_will_count', 'Files above [[[FILE_SIZE]]]MB will count.', 0, 1),
(1070, 'group_name', 'Group Name', 0, 1),
(1071, 'paid_per_1000_users', 'Paid Per 1,000 Downloads', 0, 1),
(1072, 'downloading_country', 'Downloading Country', 0, 1),
(1073, 'see_the_payment_rates_below', 'See the payment rates below:', 0, 1),
(1074, 'ppd_recent_downloads', 'ppd recent downloads', 0, 1),
(1075, 'noncleared_ppd_downloads', 'uncleared ppd downloads', 0, 0),
(1076, 'total_rewards_pps', 'total rewards pps', 0, 0),
(1077, 'total_rewards_pps_', 'total rewards (pps)', 0, 0),
(1078, 'noncleared_downloads_ppd', 'uncleared downloads (ppd)', 0, 0),
(1079, 'mix_groups', '(mixed groups)', 0, 0),
(1080, 'report_file_email_subject', 'New abuse report on [[[SITE_NAME]]]', 0, 0),
(1081, 'report_file_email_content', 'There is a new abuse report on [[[SITE_NAME]]] with the following details:<br/><br/>***************************************<br/>[[[FILE_DETAILS]]]<br/>***************************************<br/>Submitted IP: [[[USERS_IP]]]<br/>***************************************<br/><br/>Please login via [[[WEB_ROOT]]]/admin/ to investigate further.', 0, 0),
(1098, 'log_viewer', 'view logs', 1, 0),
(1100, 'system_tools', 'system tools', 1, 0),
(1101, 'database_browser', 'database browser', 1, 0),
(1102, 'system_logs', 'system logs', 1, 0),
(1103, 'you_have_x_active_files_within_your_account', 'You have [[[ACTIVE_FILES]]] active file(s) within your account. Use the table below to navigate or search for files you\'ve previously uploaded. <a href=\"index\">Click here</a> to upload a file.', 0, 0),
(1104, 'add_user', 'add user', 1, 0),
(1105, 'view_payments', 'view payments', 1, 0),
(1106, 'payment_date', 'payment date', 1, 0),
(1107, 'user_name', 'user name', 1, 0),
(1108, 'received_payments', 'received payments', 1, 0),
(1109, 'report_file_intro', 'Please use the following form to report any copyright infringements ensuring you supply all the following information:', 0, 0),
(1110, 'report_abuse_error_no_irl', 'Please enter the url of the reported file.', 0, 0),
(1111, 'report_abuse_error_no_url', 'Please enter the url of the file you\\\'re reporting.', 0, 1),
(1112, 'report_abuse_error_confirm_1', 'Please confirm you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.', 0, 1),
(1113, 'report_abuse_error_could_not_find_file', 'Could not find a file with that url, please check and try again.', 0, 1),
(1114, 'report_abuse_error_file_not_active', 'The file url you\'ve set is not active.', 0, 1),
(1115, 'key', 'Key', 1, 0),
(1116, 'you_have_no_active_files_within_your_account', 'You have no active files within your account. <a href=\"index\">Click here</a> to upload a file.', 0, 0),
(1117, 'file_upload_space_full', 'File upload space full.', 0, 1),
(1118, 'file_upload_space_full_text', 'You have reached the maximum permitted storage within your account, please delete some active files and try again.', 0, 1),
(1119, 'report_abuse_error_description', 'Please enter the description and support information of the reported file.', 0, 1),
(1120, 'report_file_success', 'Thanks for submitted the information needed to report a file on our servers. We\'ll review the file as soon as possible and remove if required.', 0, 1),
(1121, 'abuse_reports', 'abuse reports', 1, 0),
(1122, 'report_date', 'Report Date', 1, 0),
(1123, 'reported_by_name', 'Reported Name', 1, 0),
(1124, 'reported_by_ip', 'Reported By IP', 1, 0),
(1125, 'error_file_has_been_removed_due_to_copyright', 'File has been removed due to copyright issues.', 0, 1),
(1126, 'by_upload_date', 'By Upload Date', 0, 0),
(1127, 'parent_folder', 'Parent Folder:', 0, 0),
(1128, 'base_folder', 'Base Folder', 0, 0),
(1129, 'root', '- root -', 0, 0),
(1130, 'the_parent_folder_to_create_this_within', 'The parent folder to create this within', 0, 0),
(1131, 'edit_folder_folder_name', 'folder name', 0, 0),
(1132, 'edit_folder_parent_folder', 'Parent Folder:', 0, 1),
(1133, 'edit_folder_is_public', 'Public:', 0, 1),
(1134, 'edit_folder_password', 'Password:', 0, 0),
(1135, 'edit_folder_name', 'Folder Name:', 0, 1),
(1136, 'edit_folder_sharing_url', 'Sharing Url:', 0, 1),
(1137, 'update_folder', 'update folder', 0, 0),
(1140, 'folder_share_you_can_share_this_page_with_other', 'You can share this page with other users who do not have access to your account.', 0, 0),
(1141, 'folder_share_you_can_share_this_page_with_other_external_users', 'You can share this page with other users who do not have access to your account. Just copy the website url in the url bar and provide this via email or other sharing method.', 0, 1),
(1142, 'folder_share_as_youve_set_a_password_on_this_folder', 'Note: As you\'ve set a password on this folder, users will need to correctly enter this before they gain access to this page.', 0, 1),
(1143, 'folder_share_this_folder_can_not_be_shared_as_it_is_not_public', 'This folder can not be shared as it is not set to a publicly accessible folder.', 0, 0),
(1144, 'folder_share_this_folder_can_not_be_shared_as_it_is_not_publicly_accessible', 'This folder can not be shared as it is not set to a publicly accessible folder. Only users with access to your account can see this listing.', 0, 1),
(1145, 'file_server_test_direct_intro', 'Testing file server... (direct file server)', 0, 0),
(1146, 'language', 'Language', 0, 1),
(1147, 'settings_tip_site_language', 'The language to use on the site.', 0, 1),
(1148, 'please_select_the_username', 'Please select the username.', 1, 0),
(1149, 'please_enter_the_payment_amount', 'Please enter the payment amount.', 1, 0),
(1150, 'error_plugin_folder_is_not_writable', 'Plugin folder is not writable. Ensure you set the following folder to CHMOD 755 or 777: [[[PLUGIN_FOLDER]]]', 1, 0),
(1151, 'moderator_area', 'moderator area', 0, 0),
(1152, 'ogg', 'ogg', 1, 0),
(1153, 'page', 'Page', 0, 0),
(1155, 'last_accessed', 'last accessed', 0, 1),
(1156, 'added', 'added', 0, 1),
(1157, 'statistics_url', 'statistics url', 0, 1),
(1158, 'delete_file_url', 'delete file url', 0, 1),
(1159, 'store_in_folder', 'store in folder:', 0, 1),
(1160, 'select_folder_below_intro_text', 'Select a folder below to store these uploaded files in.', 0, 0),
(1161, 'select_folder_below_to_store_intro_text', 'Select a folder below to store these files in. All uploads files will be available within these folders.', 0, 1),
(1162, '_default_', '- Default -', 0, 1),
(1163, 'order_by', 'Order By', 0, 0),
(1164, 'order_by_filename_asc', 'Filename ASC', 0, 0),
(1165, 'order_by_filename_desc', 'Filename DESC', 0, 0),
(1166, 'order_by_uploaded_date_asc', 'Uploaded Date ASC', 0, 0),
(1167, 'order_by_uploaded_date_desc', 'Uploaded Date DESC', 0, 0),
(1168, 'order_by_downloads_asc', 'Downloads ASC', 0, 0),
(1169, 'order_by_downloads_desc', 'Downloads DESC', 0, 0),
(1170, 'order_by_filesize_asc', 'Filesize ASC', 0, 0),
(1171, 'order_by_filesize_desc', 'Filesize DESC', 0, 0),
(1172, 'order_by_last_access_date_asc', 'Last Access Date ASC', 0, 0),
(1173, 'order_by_last_access_date_desc', 'Last Access Date DESC', 0, 0),
(1174, 'file_item_updated', 'File updated.', 0, 1),
(1175, 'your_uploads', 'Your Uploads', 0, 1),
(1176, 'recent_uploads', 'Recent Uploads', 0, 1),
(1179, 'upload_files', 'Upload Files', 0, 1),
(1180, 'edit', 'Edit', 0, 0),
(1181, 'share_folder', 'Share Folder', 0, 1),
(1184, 'are_you_sure_you_want_to_remove_this_folder', 'Are you sure you want to remove this folder? Any files within the folder will be moved into your default root folder and remain active.', 0, 1),
(1186, 'selected_files', 'selected files', 0, 1),
(1187, 'close_fullscreen', 'Close Fullscreen', 0, 0),
(1188, 'fullscreen', 'Fullscreen', 0, 1),
(1189, 'list_view', 'List View', 0, 1),
(1190, 'icon_view', 'Icon View', 0, 1),
(1191, 'show_tree', 'Show Tree', 0, 0),
(1192, 'hide_tree', 'Hide Tree', 0, 0),
(1193, 'file_url', 'File Url', 0, 0),
(1195, 'error_no_files_selected', 'Error: No files selected.', 0, 0),
(1196, 'refresh', 'Refresh', 0, 0),
(1197, 'show_links', 'Show Links', 0, 0),
(1198, 'update', 'Update', 0, 0),
(1201, 'status_text', 'Status Text', 0, 0),
(1203, 'no_files_found', 'No files found.', 0, 1),
(1204, 'urls_file_urls', 'File Urls', 0, 0),
(1207, 'urls_bb_code', 'Forum BBCode', 0, 0),
(1208, 'media_converter_item_pending', 'This video is awaiting conversion, please check back again later.', 0, 1),
(1209, 'media_converter_item_processing', 'This video is in the process of being converted, please check back again soon.', 0, 1),
(1211, 'copy_into_your_account', 'copy file', 0, 1),
(1212, 'file_copied', 'File copied into your account. [[[FILE_LINK]]]', 0, 0),
(1213, 'public_info_page', 'public info page', 0, 1),
(1214, 'failed_to_copy_file', 'There was a problem copying the file, please try again later.', 0, 0),
(1215, 'max_storage_space', 'maxiumum storage space', 1, 0),
(1216, 'max_storage', 'maxiumum storage', 1, 0),
(1217, 'max_storage_bytes', 'max storage (bytes)', 1, 0),
(1218, 'server_priority', 'server priority', 1, 0),
(1219, 'unpaid_earnings', 'unpaid earnings', 0, 0),
(1220, 'estimated_pps_earnings', 'estimated PPS earnings', 0, 1),
(1221, 'estimated_ppd_earnings', 'PPD estimated earnings', 0, 0),
(1222, 'from_all_ppd_rate_groups', '(from all PPD rate groups)', 0, 0),
(1223, 'total_unpaid_earnings', 'total unpaid earnings', 0, 1),
(1224, 'pps_recent_rewards', 'pps recent rewards', 0, 1),
(1225, 'from_x_items_across_all_ppd_rate_groups', '(from [[[ITEMS]]] items accross all PPD rate groups)', 0, 0),
(1226, 'recent_ppd_earnings', 'PPD recent earnings', 0, 1),
(1227, 'period', 'Period', 1, 1),
(1228, 'links', 'Links', 0, 0),
(1229, 'removed', 'removed', 0, 1),
(1230, 'docviewer_plugin_watch_page_name', 'Preview', 0, 1),
(1231, 'docviewer_plugin_page_description', 'Preview ', 0, 1),
(1232, 'docviewer_plugin_meta_keywords', ', preview, file, upload, download, site', 0, 1),
(1233, 'embed_document', 'Embed Document', 0, 1),
(1235, 'pdf', 'pdf', 1, 0),
(1236, 'docx', 'docx', 1, 0),
(1237, 'xls', 'xls', 1, 0),
(1240, 'site_path', 'site path', 1, 0),
(1241, 'file_storage_path', 'file storage path', 1, 0),
(1242, 'gdoc', 'gdoc', 1, 0),
(1243, 'select_file_max', 'Select File (max: [[[MAX_SIZE]]])', 0, 0),
(1244, 'delete_x_files', 'Delete <span class=\"fileCount\"></span>Files', 0, 0),
(1245, 'move_x_files', 'Move <span class=\"fileCount\"></span>Files', 0, 0),
(1246, 'delete_files_x', 'Delete Files[[[fileCount]]]', 0, 0),
(1247, 'move_files_x', 'Move Files[[[fileCount]]]', 0, 0),
(1248, 'delete_files_total', 'Delete Files[[[FILE_COUNT]]]', 0, 0),
(1249, 'move_files_total', 'Move Files[[[FILE_COUNT]]]', 0, 0),
(1251, 'file_manager_delete', 'Delete', 0, 1),
(1252, 'file_manager_are_you_sure_you_want_to_delete', 'Are you sure you want to remove the selected files?', 0, 0),
(1253, 'file_manager_are_you_sure_you_want_to_delete_x_files', 'Are you sure you want to remove the selected [[[TOTAL_FILES]]] file(s)?', 0, 1),
(1254, 'report_file_full_file_url', 'Full file url', 0, 1),
(1255, 'report_file_description_of_the_works', 'Description of the copyrighted works and supporting information', 0, 1),
(1256, 'report_file_your_name', 'Your name', 0, 1),
(1257, 'report_file_email_address', 'Email address', 0, 1),
(1258, 'report_file_postal_address', 'Postal address', 0, 1),
(1259, 'report_file_phone_number', 'Phone number', 0, 1),
(1260, 'report_file_signature', 'Signature', 0, 1),
(1261, 'report_file_electronic_signature_of_the_copyright', 'Electronic signature of the copyright owner or the person authorized to act on its behalf', 0, 1),
(1262, 'report_file_confirm_1', 'Confirm 1', 0, 1),
(1263, 'report_file_you_have_a_good_faith_belief', 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.', 0, 1),
(1264, 'report_file_the_information_in_this_noticiation', 'The information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.', 0, 1),
(1265, 'faq_unlimited', 'unlimited', 0, 1),
(1266, 'faq_q1_question', 'Q: Is this free?', 0, 1),
(1267, 'faq_q1_answer', 'A: Yes, uploading and downloading is 100% Free for all users. We offer premium accounts which allows for greater flexibility with uploading/downloading.', 0, 1),
(1268, 'faq_q2_question', 'Q: Will my files be removed?', 0, 1),
(1269, 'faq_q2_answer', 'A: Free/non accounts files are kept for [[[KEPT_FOR_DAYS_FREE]]] days. Premium accounts files are kept for [[[KEPT_FOR_DAYS_PAID]]] days.', 0, 0),
(1270, 'faq_q3_question', 'Q: How many files can I upload?', 0, 1),
(1271, 'faq_q3_answer', 'A: You can upload as many files as you want, as long as each one adheres to the Terms of Service and the maximum file upload size.', 0, 1),
(1272, 'faq_q4_question', 'Q: Which files types am I allowed to upload?', 0, 1),
(1273, 'faq_any', 'Any', 0, 0),
(1274, 'faq_q4_answer', 'A: You may upload the following types of files: [[[FILE_TYPES]]].', 0, 1),
(1275, 'faq_q5_question', 'Q: Are there any restrictions to the size of my uploaded files?', 0, 1),
(1276, 'faq_q5_answer', 'A: Each file you upload must be less than [[[MAX_UPLOAD_SIZE_FREE]]] in size for free/non accounts or less than [[[MAX_UPLOAD_SIZE_PAID]]] in size for premium accounts. If it is greater than that amount, your file will be rejected.', 0, 0),
(1277, 'faq_q6_question', 'Q: Can I upload music or videos?', 0, 1),
(1278, 'faq_q6_answer', 'A: Yes. Music and video hosting is permitted as long as you own the copyright on the content and it adheres to the terms and conditions.', 0, 1),
(1279, 'faq_q7_question', 'Q: There are some files on our servers which may have been subject to copyright protection, how can I notify you of them?', 0, 1),
(1280, 'faq_q7_answer', 'A: Via our <a href=\"report_file\">report abuse</a> pages.', 0, 0),
(1281, 'use_main_site_url', 'use main site url', 1, 0),
(1282, 'report_file_no', 'no', 0, 1),
(1283, 'report_file_yes', 'yes', 0, 1),
(1284, 'test_trans', 'Test Trans', 0, 0),
(1285, 'error_file_has_expired', 'File has been removed due to inactivity.', 0, 1),
(1287, 'contact_page_name', 'Contact Us', 0, 1),
(1288, 'contact_meta_description', 'Contact us', 0, 1),
(1289, 'contact_meta_keywords', 'contact, us, questions, queries, file, hosting', 0, 1),
(1290, 'contact_us', 'Contact Us', 0, 0),
(1292, 'contact_full_name', 'Your full name', 0, 1),
(1293, 'contact_email_address', 'Your email address', 0, 1),
(1294, 'contact_your_query', 'Your query', 0, 1),
(1295, 'contact_submit_query', 'submit query', 0, 0),
(1296, 'contact_submit_form', 'submit form', 0, 1),
(1297, 'contact_error_signature', 'Please enter your query.', 0, 1),
(1300, 'contact_success', 'Thanks for submitting the contact form on our site. We\'ll review the query as soon as possible and get back to your within the nexr 48 hours.', 0, 1),
(1301, 'contact_error_name', 'Please enter your name.', 0, 1),
(1302, 'contact_error_email', 'Please enter your email.', 0, 1),
(1303, 'contact_error_email_invalid', 'Please enter a valid email address.', 0, 1),
(1304, 'js', 'js', 1, 0),
(1305, 'remove_files_total', 'Remove Files[[[FILE_COUNT]]] (keep stats)', 0, 0),
(1306, 'delete_files_and_data_total', 'Delete Files And Data[[[FILE_COUNT]]]', 1, 0),
(1307, 'all_files', 'All Files', 0, 1),
(1308, 'allowed_file_types', 'Allowed file types', 0, 1),
(1310, '20', '20', 1, 0),
(1311, '2', '2', 1, 0),
(1312, '10', '10', 1, 0),
(1313, 'moderator', 'moderator', 1, 0),
(1315, 'pls', 'pls', 1, 0),
(1316, 'time', 'time', 0, 1),
(1317, 'no_data', 'No data', 0, 1),
(1318, 'dev.mellowfish.com:8080', 'dev.mellowfish.com:8080', 0, 0),
(1319, 'firefox', 'firefox', 0, 0),
(1320, 'windows', 'windows', 0, 0),
(1321, 'your_registered_account_email_address', 'Your registered account email address', 0, 1),
(1322, 'login_form', 'login form', 0, 1),
(1323, 'm4v', 'm4v', 1, 0),
(1324, 'chrome', 'chrome', 0, 0),
(1325, 'translation_import_csv_incorrect_columns', 'Line [[[LINE]]] should have [[[COLUMNS]]] columns.', 1, 0),
(1326, 'no_file_selected', 'No file selected, please try again.', 1, 0),
(1327, 'translation_import_csv_incorrect_columns_please_check', 'Line [[[LINE]]] should have [[[COLUMNS]]] columns. Please check there\'s not a double quote in the text content causing the error. Any double quotes in text should be escaped with a backslash. i.e. \\\"', 1, 0),
(1328, 'index_upload_more_files', '<a href=\"[[[WEB_ROOT]]]\">Click here</a> to upload more files.', 0, 1),
(1329, 'account_home_per_page', 'Per Page:', 0, 1),
(1344, 'account_file_details_edit_file', 'Edit File', 0, 1),
(1377, 'your_name_password_min_x_characters', 'Your new password. Min 6 characters, alpha numeric and hypens only.', 0, 1),
(1378, 'confirm_your_new_password', 'Confirm your new password.', 0, 1),
(1379, 'indexjs_error_server_problem', 'ERROR: There was a server problem when attempting the upload, please try again later.', 0, 1),
(1383, 'file_download_error', 'Error', 0, 1),
(1384, 'stats_file_details', 'file details', 0, 1),
(1385, 'please_register_for_an_account', 'Please register for an account to upload.', 1, 0),
(1386, 'uploading_has_been_disabled', 'Uploading has been disabled.', 1, 1),
(1388, 'index_login_to_enable', '- login to enable -', 0, 1),
(1390, 'classuploader_error', 'Error', 0, 1),
(1391, 'classuploader_filename_not_found', 'Filename not found.', 0, 1),
(1392, 'classuploader_file_received_has_zero_size', 'File received has zero size. This is likely an issue with the maximum permitted size within PHP', 0, 1),
(1393, 'classuploader_file_has_zero_size', 'File received has zero size.', 0, 1),
(1394, 'classuploader_could_not_move_file_into_storage', 'Could not move the file into storage, possibly a permissions issue.', 0, 1),
(1395, 'search_results', 'Search Results', 0, 1),
(1396, 'search_download_file', '[Download File]', 0, 1),
(1397, 'search_searched_nothing', '<p>You didn\\\'t enter anything to search for.</p>', 0, 1),
(1398, 'search_too_short_p', '<p>Your search query is too short, minimum is ', 0, 1),
(1399, 'search_too_short_a', ' characters.</p>', 0, 1),
(1400, 'search_no_files_found', 'No Files Found', 0, 1),
(1405, 'torrent_url', 'Torrent Url', 0, 1),
(1406, 'report_abuse_error_name', 'Please enter your name.', 0, 1),
(1407, 'report_abuse_error_email', 'Please enter your email.', 0, 1),
(1408, 'report_abuse_error_signature', 'Please provide the electronic signature of yourself or the copyright owner.', 0, 1),
(1409, 'report_abuse_error_confirm_2', 'Please confirm the information in the notification is accurate, and, under the pains and penalties of perjury, that you are authorized to act on behalf of the copyright owner.', 0, 1),
(1410, 'report_abuse_error_failed_reporting', 'Failed reporting file, please try again later', 0, 1),
(1411, 'problem_updating_item', 'There was a problem updating the item, please try again later.', 1, 1),
(1412, 'password_contains_illegal_characters', 'Password contains invalid characters, please choose another.', 1, 1),
(1414, 'please_enter_your_title', 'Please enter your title', 1, 1),
(1415, 'problem_creating_your_account_try_again_later', 'There was a problem creating your account, please try again later', 1, 1),
(1416, 'your_email_address_confirmation_does_not_match', 'Your email address confirmation does not match', 0, 1),
(1417, 'please_enter_your_preferred_username', 'Please enter your preferred username', 0, 1),
(1419, 'registration_required', 'Registration required.', 1, 0),
(1420, 'unavailable', 'Unavailable.', 1, 1),
(1421, 'file_upload_max_upload_php_limit', 'PHP Upload Limit.', 0, 1),
(1422, 'please_enter_the_file_password', 'Please enter the file password.', 0, 1),
(1423, 'upgrade_boxes_per_day', 'per day', 0, 1),
(1424, 'classuploader_curl_module_not_found', 'Curl module not found. Please enable within PHP to enable remote uploads.', 0, 1),
(1426, 'newsletter_unsubscribe_could_not_find_account', 'Could not find an account with that email address', 0, 1),
(1427, 'dat', 'dat', 1, 0),
(1428, 'file_statistics', 'File Statistics', 0, 1),
(1429, 'settings_statistics_public', 'Publicly Accessible (using ~s on url)', 0, 0),
(1430, 'settings_statistics_private', 'Private (only via your account)', 0, 0),
(1431, 'settings_tip_file_statistics', 'Whether to keep all file stats private or allow public access.', 0, 1),
(1432, 'stats_error_file_statistics_are_private', 'Statistics for this file are not publicly viewable.', 0, 1),
(1433, 'index_uploading_disabled', 'Error: Uploading has been disabled.', 0, 1),
(1434, 'registered', 'registered', 0, 1),
(1435, 'download_page_yes', 'yes', 0, 1),
(1436, 'download_page_none', 'none', 0, 1),
(1437, 'download_page_premium', 'PREMIUM', 0, 1),
(1438, 'download_page_slow_download', 'slow download', 0, 1),
(1439, 'download_page_high_speed_download', 'high speed download', 0, 1),
(1440, 'download_page_upgrade_to_premium', 'upgrade to premium', 0, 1),
(1441, 'download_page_file', 'File', 0, 1),
(1442, 'download_page_size', 'Size', 0, 1),
(1443, 'download_pages', 'download pages', 1, 0),
(1444, 'manage_download_pages', 'manage download pages', 1, 0),
(1445, 'user_level', 'User Level', 1, 0),
(1446, 'download_page', 'Download Page', 1, 0),
(1447, 'view_order', 'View Order', 1, 0),
(1448, 'user_level_page', 'User Level / Page', 1, 0),
(1455, 'please_enter_your_payload_account', 'Please enter your Payload Mercant Key.', 1, 0),
(1456, 'download_page_page_order_can_not_be_zero_or_less', 'Page order can not be zero or less.', 1, 0),
(1457, 'ftp_server_type', 'ftp server type', 1, 0),
(1458, 'ftp_enable_passive_mode', 'enable passive mode', 1, 0),
(1459, 'gif', 'gif', 1, 0),
(1460, 'access_password', 'access password', 0, 1),
(1461, 'the_password_to_access_the_file', 'The password to access the file', 0, 0),
(1463, 'file_status_system_expired', 'system expired', 0, 0),
(1464, 'minute', 'minute', 0, 0),
(1465, 'minutes', 'minutes', 0, 0),
(1466, 'second', 'second', 0, 0),
(1467, 'file_manager_moving', 'Moving', 0, 1),
(1468, 'file_manager_moving_files', 'file(s)', 0, 1),
(1469, 'account_type_free_user', 'Free User', 0, 0),
(1470, 'file_manager_download', 'Download', 0, 0),
(1471, 'file_manager_edit', 'Edit', 0, 0),
(1472, 'unknown', 'unknown', 0, 1),
(1473, 'account_file_details_select_all', 'Select All', 0, 0),
(1474, 'account_file_details_select_all_files', 'Select All Files', 0, 1),
(1476, 'classuploader_could_not_get_remote_file', 'Could not get remote file. [[[FILE_URL]]]', 0, 0),
(1477, 'rewards_error_please_enter_your_paypal_email_address', 'Error: Please enter your PayPal email address for the payment.', 0, 1),
(1478, 'rewards_there_was_a_problem_requesting_the_withdraw', 'There was a problem requesting the withdrawal, please try again later.', 0, 1),
(1479, 'rewards_ppd_recent_earnings_are_added', 'PPD recent earnings are added to your unpaid earnings each night.', 0, 1),
(1480, 'rewards_earnings_can_be_withdrawn_when_balance', 'Earnings can be withdrawn when balance is over [[[SYMBOL]]][[[PAYMENT_THRESHOLD]]].', 0, 0),
(1482, 'rewards_your_paypal_email_address', 'Your PayPal Email Address:', 0, 1),
(1483, 'rewards_ppd_logged_out_faq_additional_text', '\n                Once you\'ve completed your registration just start uploading your files and sharing the download links with your family and friends.<br/><br/>You\'ll be paid for any downloads outside of your account. Note: We only count completed downloads and downloads from unique IP addresses.\n                ', 0, 0),
(1484, 'rewards_logged_out_faq', '<p class=\"rewardsTopPadding\"><strong>How can I claim my rewards?</strong></p>\n            <p>\n                Any rewards will take [[[PAYMENT_LEAD_TIME]]] days to clear within your account. Once your cleared rewards are over [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[PAYMENT_THRESHOLD]]] you can request a payment via your account. Payments are made on the [[[PAYMENT_DATE]]] of every month via PayPal.\n            </p>\n            <p class=\"rewardsTopPadding\"><strong>How do I get started?</strong></p>\n            <p>\n                Signup for an account on our <a href=\"[[[WEB_ROOT]]]/register\">registration page</a>.\n                [[[ADDITIONAL_TEXT]]]\n            </p>', 0, 0),
(1485, 'password_policy_password_must_be_more_than_characters', 'Password must be more than #VALUE# characters long', 0, 1),
(1486, 'password_policy_password_must_be_less_than_characters', 'Password must be less than #VALUE# characters long', 0, 1),
(1487, 'password_policy_password_must_contact_uppercase_characters', 'Password must contain at least #VALUE# uppercase characters', 0, 1),
(1488, 'password_policy_password_must_contain_min_numeric_characters', 'Password must contain at least #VALUE# numbers', 0, 1),
(1489, 'password_policy_password_must_contain_min_nonalphanumeric_characters', 'Password must contain at least #VALUE# non-aplhanumeric characters', 0, 1),
(1490, 'confirm_password_edit', 'Confirm Password', 0, 1),
(1491, 'your_password_confirmation_does_not_match', 'Your password confirmation does not match', 0, 1),
(1492, 'a_new_account_password_confirm_leave_blank_to_keep', 'Optional. Confirm the password entered above, leave this blank to keep your existing.', 0, 1),
(1493, 'webm', 'webm', 1, 0),
(1494, 'please_enter_your_paymentwall_sopg_username', 'Please enter your PaySafeCard application key. This can be found in Application Settings.', 1, 1),
(1495, 'please_enter_your_paymentwall_sopg_password', 'Please enter your PaySafeCard password.', 1, 1),
(1496, 'micropayment_plugin_settings', 'Plugin Settings', 1, 1),
(1497, 'micropayment_plugin_state', 'Plugin State', 1, 1),
(1498, 'micropayment_plugin_state_desc', 'Whether the Micropayment payment option for upgrades is enabled', 1, 1),
(1499, 'micropayment_plugin_enabled', 'Plugin Enabled', 1, 1),
(1500, 'micropayment_plugin_acct_number_desc', 'Your Micropayment account number.', 1, 0),
(1501, 'micropayment_plugin_acct_number', 'Account number', 1, 1),
(1502, 'micropayment_plugin_project_name', 'Project Name', 1, 1),
(1503, 'micropayment_plugin_campaign_name', 'Campaign Name', 1, 1),
(1504, 'micropayment_plugin_theme_name', 'Theme Name', 1, 1),
(1505, 'micropayment_plugin_gfx_name', 'Gfx Name', 1, 1),
(1506, 'micropayment_plugin_currency', 'Currency', 1, 1),
(1507, 'micropayment_plugin_cc_enabled', 'Credit Card Enabled?', 1, 1),
(1508, 'micropayment_plugin_dd_enabled', 'Direct Debit Enabled?', 1, 1),
(1509, 'micropayment_plugin_telephone_enabled', 'Telephone Payment Enabled?', 1, 1),
(1510, 'micropayment_plugin_sms_enabled', 'SMS Payment Enabled?', 1, 1),
(1511, 'micropayment_plugin_acct_number_description', 'Your Micropayment account number. Signup via <a href=\"http://micropayment.ch\" target=\"_blank\">micropayment.ch</a>', 1, 1),
(1512, 'please_enter_your_micropayment_account', 'Please enter your Micropayment Account.', 1, 1),
(1513, 'please_enter_your_micropayment_project', 'Please enter your Micropayment Project Name.', 1, 1),
(1514, 'please_enter_your_micropayment_theme', 'Please enter your Micropayment Theme.', 1, 1),
(1515, 'please_enter_your_micropayment_gfx', 'Please enter your Micropayment Gfx Name.', 1, 1),
(1516, 'please_enter_your_micropayment_currency', 'Please enter your Micropayment Currency.', 1, 1),
(1517, 'html?', 'html?', 1, 0),
(1540, 'com', 'com', 1, 0),
(1541, '7e0ov', '7e0ov', 1, 0),
(1542, 'download_all_files', 'Download All Files (Zip)', 0, 1),
(1544, 'account_home_getting', '- Getting ', 0, 1),
(1545, 'account_home_download_zip_file', 'Download Zip File', 0, 1),
(1546, 'report_file_confirm_2', 'Confirm 2', 0, 1),
(1547, 'account_home_added_folder_to_zip', '- Added folder ', 0, 1),
(1548, 'classuploader_file_received_larger_than_permitted', 'File received is larger than permitted. (max [[[MAX_FILESIZE]]])', 0, 0),
(1550, 'srt', 'srt', 1, 0),
(1551, 'responsive_navigation_select_page', '- select page -', 0, 0),
(1556, 'file_status_user_removed', 'user removed', 0, 0),
(1557, 'hours', 'hours', 0, 0),
(1558, 'mkv', 'mkv', 1, 0),
(1559, 'rewards_day_clearing_on_all_pps_rewards_next_update', '[[[DAYS]]] day clearing period on all PPS rewards. Next update [[[NEXT_UPDATE]]].', 0, 0),
(1560, 'rewards_pps_info_text_logged_in', '<p>\n                    Earn [[[PERCENTAGE]]]% of each sale you refer to this site! You can earn money from upgrading users in 2 ways:\n                </p>\n                <ol class=\"rewardsTextList\">\n                    <li>Using your unique affiliate id, simply link to the site via your existing website. You\'ll earn [[[PERCENTAGE]]]% for any users which register for an account and subsequently upgrade.</li>\n                    <li>From users which upgrade to download files within your account.</li>\n                </ol>\n                <p>\n                    Begin by uploading and sharing your files or by linking from your existing site using your affiliate id like this:\n                </p>\n                <ul>\n                    <li><a href=\"[[[WEB_ROOT]]]/?aff=[[[AFFILIATE_KEY]]]\">[[[WEB_ROOT]]]/?aff=[[[AFFILIATE_KEY]]]</a></li>\n                </ul>', 0, 0),
(1561, 'rewards_pps_info_text_logged_out', '<p>\n                    Earn [[[PERCENTAGE]]]% of each sale you refer to this site! You can earn money from upgrading users in 2 ways:\n                </p>\n                <ol class=\"rewardsTextList\">\n                    <li>Using your unique affiliate id, simply link to the site via your existing website. You\'ll earn [[[PERCENTAGE]]]% for any users which register for an account and subsequently upgrade.</li>\n                    <li>From users which upgrade to download files within your account.</li>\n                </ol>\n                <p><strong>How much can you earn?</strong></p>\n                \n                <p>Based on [[[MONTHLY_UPGRADE_EXAMPLE]]] upgrades and each upgrade costing [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[SITE_CONFIG_COST_FOR_30_DAYS_PREMIUM]]] per month, you could earn the following:</p>', 0, 0),
(1562, 'rewards_month', 'Month:', 0, 1),
(1563, 'rewards_referrals', 'Referrals:', 0, 1),
(1564, 'rewards_total_referrals', 'Total Referrals: (inc renewals)', 0, 1),
(1565, 'rewards_monthly_total', 'Monthly Total:', 0, 1),
(1566, 'rewards_total', 'Total:', 0, 1),
(1567, 'rewards_pps_logged_out_faq_additional_text', '\n                Once you\'ve completed your registration you\'ll find your affiliate id in the \'rewards\' section of your account. Begin by uploading and sharing your files or by linking from your existing site using your affiliate id like this:\n                <ul>\n                    <li><a href=\"[[[WEB_ROOT]]]/?aff=[AFFILIATE_ID]\">[[[WEB_ROOT]]]/?aff=[AFFILIATE_ID]</a></li>\n                </ul>', 0, 0),
(1570, 'active_file_with_same_name_found', 'Active file with same name found in the same folder. Please ensure the file name is unique.', 0, 1),
(1571, 'items_with_same_name_in_folder', 'There are already [[[TOTAL_SAME]]] file(s) with the same filename in that folder. Files can not be removed.', 0, 0),
(1574, 'filter_your_files', 'Filter Your Files', 0, 1),
(1575, 'account_home_no_active_files_in_folder', 'Error: No active files in folder.', 0, 1),
(1576, 'edit_folder_optional_password', 'Optional Password:', 0, 1),
(1577, 'folder_created', 'Folder created.', 0, 1),
(1578, '<span>report_file_you_have_a_good_faith_belief', 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</span>', 0, 0),
(1579, '<strong>report_file_you_have_a_good_faith_belief', 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</strong>', 0, 0),
(1580, '<li>report_file_you_have_a_good_faith_belief', 'You have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.</li>', 0, 0),
(1581, 'folder_updated', 'Folder updated.', 0, 1),
(1582, 'rdp', 'rdp', 1, 0),
(1583, 'file_manager_loading', 'Loading...', 0, 1),
(1584, 'success', 'Success', 0, 1),
(1585, 'available_storage', 'Available Storage', 0, 1),
(1586, 'used_storage', 'Used Storage', 0, 1),
(1587, 'upload_files_link', 'Upload Files', 0, 0),
(1588, 'click_to_upload', 'Click to <a href=\"#\" onClick=\"uploadFiles(); return false;\">Upload</a>', 0, 1),
(1589, 'account_home_sort_by', 'Sort By', 0, 1),
(1590, 'title_page_description', 'Welcome, to, the,File Upload Scriptterms, of, service. Please, read, them, fully', 0, 0),
(1592, 'title_page_description_right', 'Enter Text or something.... ', 0, 0),
(1594, 'faq_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1596, 'report_abuse_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1598, 'contact_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1600, 'register_title_page_description_right', 'Enter some text or something.....', 0, 1),
(1603, 'file_delete_title_page_description_right', 'Enter some text or something.....', 0, 1),
(1605, 'payment_complete_title_page_description_right', 'Enter some text or something.....', 0, 1),
(1607, 'terms_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1609, 'register_complete_title_page_description_right', 'Enter some text or something.....', 0, 1),
(1615, 'file_upload_remote_url_intro', 'Download files directly from other sites into your account. Note: If the files are on another file download site or password protected, this may not work.', 0, 1),
(1618, 'file_statistics_title_page_description_right', 'Enter Text or something.... ', 0, 0),
(1619, 'share_file_title', 'File Information', 0, 1),
(1621, 'download_page_captcha_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1627, 'account_settings', 'account settings', 0, 0),
(1628, 'file_manager_welcome', 'Welcome', 0, 1),
(1632, 'files_statistics_title_page_description_right', 'Downloads [[[DOWNLOAD_DATE]]]', 0, 0),
(1633, 'account_settings_change_password', 'Change password.', 0, 1),
(1634, 'account_settings_avatar', 'Account avatar.', 0, 1),
(1635, 'account_settings_avatar_file', 'Select File (jpg, png or gif)', 0, 1),
(1636, 'account_edit_avatar_is_too_large', 'The uploaded image can not be more than [[[MAX_SIZE_FORMATTED]]]', 0, 0),
(1637, 'account_edit_avatar_is_not_an_image', 'Your avatar must be a jpg, png or gif image.', 0, 1),
(1638, 'account_settings_avatar_remove', 'Remove avatar', 0, 1),
(1639, 'account_home_file_item_too_large_for_zip', '- File is too large to include in zip file ([[[FILE_NAME]]], [[[FILE_SIZE_FORMATTED]]])', 0, 1),
(1640, 'account_home_too_many_files', 'Error: Selected files are greater than [[[MAX_FILESIZE]]] in total. Can not create zip.', 0, 0),
(1641, 'account_home_too_many_files_size', 'Error: Selected files are greater than [[[MAX_FILESIZE]]] (total [[[TOTAL_SIZE_FORMATTED]]]). Can not create zip.', 0, 0),
(1642, 'file_manager_folder', 'Folder', 0, 1),
(1643, 'edit_file_filename', 'Filename', 0, 0),
(1644, 'edit_file_folder', 'Folder:', 0, 0),
(1645, 'filter_in_where', 'Where', 0, 0),
(1646, 'file_manager_current_folder', 'Current Folder', 0, 1),
(1647, 'file_manager_all_files', 'All Files', 0, 1),
(1651, 'filess_statistics_title_page_description_right', 'Uploaded [[[UPLOADED_DATE]]]', 0, 0),
(1653, 'filesss_statistics_title_page_description_right', 'Uploaded [[[UPLOADED_DATE]]]', 0, 0),
(1655, 'filessss_statistics_title_page_description_right', 'Uploaded [[[UPLOADED_DATE]]] Downloads [[[DOWNLOAD_DATE]]]', 0, 0),
(1656, 'filesssss_statistics_title_page_description_right', 'Uploaded [[[UPLOADED_DATE]]]</br> Downloads [[[DOWNLOAD_DATE]]]', 0, 0),
(1657, 'banned_ip_expiry_date_is_in_the_past', 'The expiry date is in the past.', 1, 0),
(1658, 'ban_expiry', 'Ban Expiry', 1, 0),
(1659, 'login_ip_banned', 'You have been temporarily blocked from logging in due to too many failed login attempts. Please try again [[[EXPIRY_TIME]]].', 0, 0),
(1660, 'password_change_email_subject', 'Password changed for account on [[[SITE_NAME]]]', 0, 0),
(1661, 'password_change_email_content', 'Dear [[[FIRST_NAME]]],<br/><br/>This is a courtesy email notifying you that your account password on [[[SITE_NAME]]] has been changed.<br/><br/>If you didn\'t change your password, please contact us immediately. Otherwise just ignore this email.<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(1662, 'email_change_email_subject', 'Email changed for account on [[[SITE_NAME]]]', 0, 0),
(1663, 'email_change_email_content', 'Dear [[[FIRST_NAME]]],<br/><br/>This is a courtesy email notifying you that your account email address on [[[SITE_NAME]]] has been changed to [[[NEW_EMAIL]]].<br/><br/>If you didn\'t change your email address, please contact us immediately. Otherwise just ignore this email.<br/><br/><strong>Url:</strong> <a href=\'[[[WEB_ROOT]]]\'>[[[WEB_ROOT]]]</a><br/><strong>Username:</strong> [[[USERNAME]]]<br/><strong>New Email:</strong> [[[NEW_EMAIL]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(1664, 'edit_file_could_not_find_username', 'Could not find file owner username. Leave blank to set the file with no owner.', 1, 0),
(1665, 'edit_file_file_with_same_short_url_exist', 'Short url already exists on another file.', 1, 0),
(1666, 'edit_file_short_url_is_invalid', 'Short url structure is invalid. Only alphanumeric values are allowed.', 1, 0),
(1667, 'secure_and_safe', 'Secure and safe', 0, 0),
(1668, 'secure_and_safe_description', 'secure and safe uploads', 0, 0),
(1669, 'ods', 'ods', 1, 0),
(1670, 'odt', 'odt', 1, 0),
(1671, 'instant_access', 'Instant Access', 0, 0),
(1672, 'manage_themes', 'manage themes', 1, 0),
(1673, 'add_theme', 'add theme', 1, 0),
(1674, 'themes', 'themes', 1, 0),
(1675, 'theme_title', 'theme title', 1, 0),
(1676, 'error_theme_folder_is_not_writable', 'Theme folder is not writable. Ensure you set the following folder to CHMOD 755 or 777: [[[THEME_FOLDER]]]', 1, 0),
(1677, 'register_index', 'What are you waiting for?', 0, 1),
(1678, 'register_index_description', 'Register below!', 0, 0),
(1679, 'register_index_button', 'Register', 0, 1),
(1680, 'index_slow', 'Slow...', 0, 1),
(1681, 'index_super_fast', 'Super Fast!', 0, 1),
(1682, 'contact_title_page_description_lleft', 'test sdkjfgk dsfkudfh gkusdf hgukdg sdugshfdgsdfgsughuft hfsghsfghsfghf ', 0, 1),
(1683, 'share_files_title_page_description_rightssdfsdf', 'test', 0, 0),
(1684, 'share_file_titles', 'File', 0, 0),
(1685, 'safe_and_secure', 'Safe and Secure', 0, 1),
(1686, 'safe_and_secure_description', 'Safely store and backup all your essential files. From family photos & videos to important documents, you can rely on us to store all your media securely and forever.', 0, 1),
(1687, 'select_payment_method', 'Select Payment Method:', 0, 1),
(1689, 'view_folder_title_page_description_right', 'Enter Text or something.... ', 0, 1),
(1690, 'direction', 'Direction', 1, 0),
(1691, 'account_type_\' . str_replace(\' ', 's', 0, 0),
(1692, 'test12345', 's', 0, 0),
(1695, 'problem_adding_item', 's', 0, 1),
(1696, 'share_files_title_page_description_right', 's', 0, 1),
(1697, 'file_status_\' . str_replace(\' ', 's', 0, 0),
(1698, 'account_home_failed_creating_zip_file', 's', 0, 0),
(1699, 'classuploader_failed_creating_tmp_storage_folder', 's', 0, 0),
(1700, 'classuploader_temp_storage_folder_for_uploads_not_writable', 's', 0, 0),
(1702, 'classuploader_could_not_connect_file_server', 's', 0, 0),
(1703, 'classuploader_could_not_authenticate_with_file_server', 's', 0, 0),
(1704, 'classuploader_there_was_problem_uploading_file', 's', 0, 0),
(1705, 'classuploader_failed_adding_to_database', 's', 0, 0),
(1706, 'classuploader_general_upload_error', 's', 0, 0),
(1708, 'account_home_can_not_locate_folder', 's', 0, 1),
(1709, 'account_home_ziparchive_class_no_exists', 's', 0, 1),
(1714, 'please_enter_your_payza_email_address', 's', 1, 1),
(1715, 'please_enter_your_maxipayment_urls_address', 's', 1, 1),
(1721, 'please_enter_your_paymentwall_application_secret_key', 's', 1, 1),
(1722, 'please_enter_your_api_login_id', 's', 1, 1),
(1723, 'please_enter_your_transaction_key', 's', 1, 1),
(1725, 'withdraw', 's', 0, 1),
(1726, 'please_enter_your_secret_key', 's', 1, 1),
(1727, 'please_enter_your_paypal_email_address', 's', 1, 1),
(1738, 'please_enter_your_merchant_id_address', 's', 1, 1),
(1739, 'please_enter_your_api_key', 's', 1, 1),
(1741, 'please_enter_your_firstdata_api_login_id', 's', 1, 1),
(1746, 'please_enter_your_egopay_store_id', 's', 1, 1),
(1747, 'please_enter_your_egopay_store_password', 's', 1, 1),
(1748, 'please_enter_your_micropayment_ccard', 's', 1, 1),
(1749, 'please_enter_your_micropayment_ddebit', 's', 1, 1),
(1750, 'please_enter_your_micropayment_mobpay', 's', 1, 1),
(1751, 'test123456', 'test123456', 0, 0),
(1752, 'account_home_can_not_download_root', 'Error: Can not download root folder as zip file.', 0, 1),
(1753, 'account_home_file_details', 'File Details', 0, 1),
(1754, 'account_home_send_via_email', 'Send Via Email', 0, 1),
(1755, 'view_image', 'view image', 0, 1),
(1756, 'additional_info', 'additional info', 0, 0),
(1757, 'extra_info', 'extra info', 0, 1),
(1770, 'view_document', 'view document', 0, 1),
(1771, 'watch_video', 'watch video', 0, 1),
(1772, 'play_audio', 'play audio', 0, 1),
(1773, 'profile', 'profile', 1, 0),
(1774, 'login_logging_in', 'logging in...', 0, 1),
(1775, 'forgot_password_requesting_reset', 'requesting reset...', 0, 1),
(1776, 'later', 'later', 0, 1),
(1777, 'forgot_password_email_content', 'Dear [[[FIRST_NAME]]],<br/><br/>We\'ve received a request to reset your password on [[[SITE_NAME]]] for account [[[USERNAME]]]. Follow the url below to set a new account password:<br/><br/><a href=\'[[[WEB_ROOT]]]/forgot_password_reset?u=[[[ACCOUNT_ID]]]&h=[[[RESET_HASH]]]\'>[[[WEB_ROOT]]]/forgot_password_reset?u=[[[ACCOUNT_ID]]]&h=[[[RESET_HASH]]]</a><br/><br/>If you didn\'t request a password reset, just ignore this email and your existing password will continue to work.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(1778, 'forgot_password_email_subject', 'Password reset instructions for account on [[[SITE_NAME]]]', 0, 0),
(1779, 'forgot_password_setting_password', 'setting password...', 0, 0),
(1780, 'general_error', 'General error', 0, 0),
(1781, 'forgot_password_reset_confirm_intro_text_login_below', 'Your password has been reset. You can now login to the site below.', 0, 0),
(1782, 'error_you_must_be_a_x_user_to_download_this_file', 'You must be a [[[USER_TYPE]]] to download this file.', 0, 0),
(1785, 'message', 'message', 0, 0),
(1789, 'please_enter_the_recipient_name', 'Please enter the recipient name.', 0, 0),
(1790, 'please_enter_the_recipient_email_address', 'Please enter the recipient email address.', 0, 0),
(1791, 'account_file_details_share_via_email_subject', 'File shared by [[[SHARED_BY_NAME]]] on [[[SITE_NAME]]]', 0, 0),
(1792, 'not_applicable_short', 'n/a', 0, 0),
(1793, 'file_sent_via_email_to_x', 'File sent via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 0, 0),
(1795, 'please_enter_a_valid_recipient_email_address', 'Please enter a valid recipient email address.', 0, 0),
(1796, 'account_file_details_share_via_email_content', 'Dear [[[RECIPIENT_NAME]]],<br/><br/>[[[SHARED_BY_NAME]]] has shared the following file with you via <a href=\'[[[WEB_ROOT]]]\'>[[[SITE_NAME]]]</a>:<br/><br/><strong>File:</strong> [[[FILE_NAME]]]<br/><strong>Url:</strong> [[[FILE_URL]]]<br/><strong>From:</strong> [[[SHARED_BY_NAME]]] ([[[SHARED_EMAIL_ADDRESS]]])<br/><strong>Message:</strong> [[[EXTRA_MESSAGE]]]<br/><br/>Feel free to contact us if you have any difficulties downloading the file.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(1797, 'get_themes', 'get themes', 1, 0),
(1799, 'newsletter_subscribe_title_page_description_right', 'newsletter text', 0, 0),
(1800, 'file_information_left_description', 'Information about', 0, 0),
(1801, 'psd', 'psd', 1, 0),
(1804, 'file_upload_max_upload_php_limit_text', 'Your PHP limits on [[[SERVER_NAME]]] need to be set to at least [[[MAX_SIZE]]] to allow larger files to be uploaded (currently [[[CURRENT_LIMIT]]]). Contact your host to set.', 0, 0),
(1805, 'classuploader_could_not_move_file_into_storage_on_x', 'Could not move the file into storage on [[[SERVER]]], possibly a permissions issue with the file storage directory.', 0, 0),
(1806, 'file_status_admin_removed', 'admin removed', 0, 0),
(1809, 'file_download_title_page_description_right', 'Download file', 0, 0),
(1813, 'email_address_not_allowed', 'Registration from email addresses on [[[EMAIL_DOMAIN]]] have been blocked on this site.', 0, 0),
(1814, 'date_added', 'Date Added', 1, 0),
(1816, 'error_title_page_description_right', '', 0, 0),
(1817, 'internal_notification_paid_account_expiring', 'Your paid account is expiring in [[[DAYS]]] days. Your inactive files may removed if you do not renew your membership. Click here for more information.', 0, 0),
(1818, 'admin_user', 'admin User', 0, 0),
(1819, 'error_reading_theme_details', 'Could not read the theme settings file \'_theme_config.inc.php\'.', 1, 0),
(1820, 'active_servers', 'Active Servers', 1, 0),
(1821, 'file_path', 'File Path', 1, 0),
(1822, 'server', 'Server', 1, 0),
(1823, 'file_action', 'File Action', 1, 0),
(1824, 'manage_file_action_queue', 'manage file action queue', 1, 0),
(1825, 'action_queue', 'action queue', 1, 0),
(1826, 'dev.mellowfish.com', 'dev.mellowfish.com', 0, 0),
(1828, 'forgot_password_title_page_description_right', '', 0, 0),
(1829, 'embed_html_code', 'Embed HTML Code', 0, 0),
(1830, 'embed_forum_code', 'Embed Forum Code', 0, 0),
(1831, 'direct_link', 'Direct Link', 0, 0),
(1832, 'rewards_please_confirm_your_withdrawal', 'Please confirm your withdrawal of [[[SITE_CONFIG_COST_CURRENCY_SYMBOL]]][[[AVAILABLE_FOR_WITHDRAWAL]]]:', 0, 0),
(1833, 'rewards_select_payment_method', 'Payment Method:', 0, 0),
(1834, 'rewards_field_label_paypal_email', 'Paypal Email:', 0, 0),
(1835, 'rewards_field_label_your_postal_address', 'Your Postal Address:', 0, 0),
(1836, 'rewards_field_label_your_account_name', 'Your Account Name:', 0, 0),
(1837, 'rewards_field_label_international_iban_number', 'International Iban Number:', 0, 0),
(1838, 'rewards_field_label_swift_number', 'Swift Number:', 0, 0),
(1839, 'rewards_error_please_enter_all_the_details', 'Error: Please enter all the outpayment details.', 0, 0),
(1840, 'rewards_withdraw_confirmation_on_screen', 'Your withdrawal request has been made. You\'ll receive further information once the request has been approved.', 0, 0),
(1841, 'method', 'Method', 1, 0);
INSERT INTO `language_key` (`id`, `languageKey`, `defaultContent`, `isAdminArea`, `foundOnScan`) VALUES
(1842, 'total_paid', 'total paid', 0, 0),
(1846, 'upgrade_title_page_description_right', '', 0, 0),
(1847, 'register_account_notification_text', 'Thanks for registering and welcome to your account! Start uploading files straight away by clicking the \'Upload\' button below. Feel free to contact us if you need any help.', 0, 0),
(1848, 'xlsx', 'xlsx', 1, 0),
(1849, 'file_download_title_page_description_left', '', 0, 0),
(1854, 'error_title_page_description_left', '', 0, 0),
(1855, 'register_title_page_description_left', 'You\'re just one step away from taking advantage of our file sharing service!', 0, 0),
(1856, 'register_text', 'Please enter your information to register for an account. Your new account password will be sent to your email address.', 0, 0),
(1857, 'register_text_2', 'Please check your spam filters to ensure emails from this site get through. Emails from this site are sent from [[[SITE_CONFIG_DEFAULT_EMAIL_ADDRESS_FROM]]]', 0, 0),
(1859, 'view_folder_title_page_description_left', '', 0, 0),
(1860, 'faq_title_page_description_left', '[[[SITE_CONFIG_SITE_NAME]]] frequently asked questions. If you have anymore questions please <a href=\'[[[WEB_ROOT]]]/contact\'>contact us</a>', 0, 0),
(1861, 'index_sign_up', 'Sign up now!', 0, 0),
(1862, 'navigation_home', 'Home', 0, 0),
(1863, 'navigation_store_and_manage', 'Store and Manage', 0, 0),
(1864, 'navigation_share_files', 'Share Files', 0, 0),
(1865, 'navigation_fast_downloading', 'Fast Downloading', 0, 0),
(1866, 'navigation_safe_and_secure', 'Safe and Secure', 0, 0),
(1867, 'navigation_register', 'Register', 0, 0),
(1868, 'terms_title_page_description_left', 'Welcome to the [[[SITE_CONFIG_SITE_NAME]]] terms of service. Please read them fully.', 0, 0),
(1869, 'stats_title', 'Statistics', 0, 0),
(1870, 'mozilla', 'mozilla', 0, 0),
(1871, 'stats_page_name', 'View file statistics', 0, 0),
(1872, 'csv', 'csv', 1, 0),
(1873, 'mcrypt_not_found', 'Mcypt functions not found within PHP, please ask support to install and try again.', 0, 0),
(1875, 'file_password_title_page_description_left', 'A password is required to access this file, please enter it below.', 0, 0),
(1876, 'file_password_title_page_description_right', '', 0, 0),
(1880, '91838000 1', '91838000 1', 1, 0),
(1881, '34782400 1', '34782400 1', 1, 0),
(1882, '99907800 1', '99907800 1', 1, 0),
(1883, 'xml', 'xml', 1, 0),
(1884, 'profsave', 'profsave', 1, 0),
(1885, 'classuploader_file_larger_than_permitted', 'File is larger than permitted. (max [[[MAX_FILESIZE]]])', 0, 0),
(1886, 'mov', 'mov', 1, 0),
(1887, 'db', 'db', 1, 0),
(1888, 'account_type_paid_user', 'Paid User', 0, 0),
(1889, 'index_earn_money_title_one', 'Want to earn some money?', 0, 0),
(1890, 'index_earn_money_title_two', 'You can earn thousands of dollers from us!', 0, 0),
(1891, 'index_rewards_button', 'Earn Money', 0, 0),
(1894, 'View Tickets', 'View Tickets', 1, 0),
(1895, 'Create Ticket', 'Create Ticket', 1, 0),
(1896, 'Support Tickets', 'Support Tickets', 1, 0),
(1934, 'delete_selected', 'Delete Selected', 0, 0),
(1957, 'file_manager_duplicate', 'Duplicate', 0, 0),
(1958, 'file_manager_files_duplicated_success_message', 'Files duplicated in current folder.', 0, 0),
(1959, 'your_files_index', 'Enter Your Account Home', 0, 0),
(1960, 'your_files_index_button', 'Your Files', 0, 0),
(1961, 'index_your_files_tagline', 'Upload, share and manage your files', 0, 0),
(1962, 'contact_title_page_description_left', 'Please fill out the following contact form to contact us', 0, 0),
(1963, 'contact_intro', 'If you wish to contact us regarding a copyright claim then please submit an abuse report. Abuse reports should be sent via our <a href=\"[[[ABUSE_URL]]]\">abuse pages</a>.', 0, 0),
(1964, 'file_delete_title_page_description_left', 'Please confirm whether to delete the file below.', 0, 0),
(1965, 'user_logout', 'Logout', 0, 0),
(1966, 'brt_file_hosting_script', 'File Hosting Script', 0, 0),
(1967, 'brt_upload', 'Upload', 0, 0),
(1968, 'brt_free_file_hosting', 'Free File Hosting Manager', 0, 0),
(1969, 'brt_happy_customers', 'Happy Customers', 0, 0),
(1970, 'brt_fb_likes', 'Facebook Likes', 0, 0),
(1971, 'brt_twiter_followers', 'Twiter Followers', 0, 0),
(1972, 'brt_files_download', 'Files Downloaded', 0, 0),
(1973, 'brt_upload_files', 'Upload', 0, 0),
(1974, 'brt_premium', 'Premium', 0, 0),
(1975, 'brt_terms', 'Terms & Conditions', 0, 0),
(1976, 'brt_faq', 'FAQ', 0, 0),
(1977, 'brt_report', 'Report Files', 0, 0),
(1978, 'brt_contact', 'Contact Us', 0, 0),
(1979, 'safe_anonymous', '100% Safe &', 0, 0),
(1980, 'safe_anonymou', 'Anonymous', 0, 0),
(1981, 'brt_conatct', 'Contact', 0, 0),
(1982, 'brt_home', 'Home', 0, 0),
(1983, 'brt_submit_form', 'Submit Form', 0, 0),
(1984, 'brt_report_file', 'Report File', 0, 0),
(1985, 'brt_submit_report', 'Submit Report', 0, 0),
(1986, 'payment_complete_title_page_description_left', 'Thanks for your payment!', 0, 0),
(1987, 'forgot_password_title_page_description_left', '', 0, 0),
(1988, 'brt_password_reset', 'Password Reset', 0, 0),
(1989, 'brt_forgot.psw', 'Request Reset', 0, 0),
(1990, 'brt_login', 'Login', 0, 0),
(1991, 'report_abuse_title_page_description_left', 'Please use the following form to report any copyright infringements ensuring you supply all the following information', 0, 0),
(1992, 'download_or_view_now', 'download / view now', 0, 0),
(1994, 'error_creating_theme_folder', 'There was a problem creating the theme folder. Please ensure the following folder has CHMOD 777 permissions: /var/www/php_site_scripts/file_hosting/themes/', 1, 0),
(1996, 'rewards_index', 'rewards', 0, 0),
(1997, 'rewards_index_test', 'rewards', 0, 0),
(1998, 'index1', 'index1', 1, 0),
(1999, 'index2', 'index2', 1, 0),
(2000, 'index3', 'index3', 1, 0),
(2001, 'forgot_password_reset_title_page_description_left', '', 0, 0),
(2002, 'forgot_password_reset_title_page_description_right', '', 0, 0),
(2003, 'register_complete_title_page_description_left', 'Thank you for registering!', 0, 0),
(2004, '', '', 0, 0),
(2006, 'remote_access', 'remote access', 0, 0),
(2045, 'account_file_details_extract', 'Extract Files', 0, 0),
(2046, 'account_file_details_archive', 'Compress to Zip/Rar', 0, 0),
(2071, 'option_no', 'No', 0, 0),
(2072, 'option_yes', 'Yes', 0, 0),
(2079, 'faq_title', 'Frequently Asked Questions', 0, 0),
(2080, 'register_title', 'Register', 0, 0),
(2083, 'rar', 'rar', 1, 0),
(2084, 'alert', 'Alert', 1, 0),
(2085, 'search', 'Search', 1, 0),
(2086, 'dashboard', 'dashboard', 1, 0),
(2087, 'plugins', 'Plugins', 1, 0),
(2088, 'Configuration', 'Configuration', 1, 0),
(2089, 'more', 'more....', 1, 0),
(2090, 'file_manager_new_notifications', 'new notifications.', 0, 0),
(2092, 'custom_premium_download_button', 'Premium Download (No Waiting Time)', 0, 0),
(2093, 'custom_download_button', 'Download', 0, 0),
(2094, 'Manage Torrents', 'Manage Torrents', 1, 0),
(2095, 'Torrents', 'Torrents', 1, 0),
(2103, 'title_ms', 'Ms', 0, 0),
(2104, 'View Torrents', 'View Torrents', 1, 0),
(2126, 'background_task_logs', 'background task logs', 1, 0),
(2127, 'task_name', 'Task Name', 1, 0),
(2128, 'last_update', 'Last Update', 1, 0),
(2129, 'last_run', 'Last Run', 1, 0),
(2130, 'start_time', 'Start Time', 1, 0),
(2131, 'end_time', 'End Time', 1, 0),
(2133, 'css', 'css', 1, 0),
(2134, 'Item1', 'Item1', 1, 0),
(2135, 'Item2', 'Item2', 1, 0),
(2140, 'week', 'week', 0, 0),
(2141, 'weeks', 'weeks', 0, 0),
(2152, 'file_manager_mark_all_read', 'Mark all Read', 0, 0),
(2153, 'file_manager_you_have_x_new_notification', 'You have <strong>[[[UNREAD]]]</strong> new notification.', 0, 0),
(2155, '000', '000', 1, 0),
(2156, 'date_scheduled', 'Date Added', 1, 0),
(2157, 'action_type', 'Type', 1, 0),
(2158, 'please_enter_your_your_secret', 'Please enter your G2aPay secret key.', 1, 0),
(2159, '001', '001', 1, 0),
(2174, 'add_more', 'add more...', 0, 0),
(2175, 'add_more_images', 'add more', 0, 0),
(2177, 'file_manager_album', 'Album', 0, 0),
(2179, 'edit_album', 'Edit', 0, 0),
(2180, 'delete_album', 'Delete', 0, 0),
(2183, 'edit_album_name', 'Album Name:', 0, 0),
(2184, 'edit_folder_parent_album', 'Parent Album:', 0, 0),
(2185, 'edit_album_is_public', 'Public:', 0, 0),
(2186, 'edit_album_optional_password', 'Optional Password:', 0, 0),
(2189, 'please_enter_the_albumname', 'Please enter the album name', 0, 0),
(2190, 'problem_updating_album', 'There was a problem updating the album, please try again later.', 0, 0),
(2192, 'album_created', 'Album created.', 0, 0),
(2193, 'edit_existing_album', 'Edit Existing Album', 0, 0),
(2194, 'update_album', 'update album', 0, 0),
(2199, 'Theme', 'Theme', 1, 0),
(2200, 'Manage', 'Manage', 1, 0),
(2201, 'Add', 'Add', 1, 0),
(2202, 'Image Categories', 'Image Categories', 1, 0),
(2203, 'Manage Categories', 'Manage Categories', 1, 0),
(2204, 'Add Category', 'Add Category', 1, 0),
(2205, 'album_updated', 'Album updated.', 0, 0),
(2206, 'contact_page_title_1', 'Leave us a message', 0, 0),
(2207, 'contact_page_title_2', 'More Info', 0, 0),
(2208, 'theme_reservo_datatable_no_matching_records_found', 'No categories found in current search filter.', 0, 0),
(2209, 'category_with_same_name_found', 'Category with same name or url key already exists. Please try again.', 1, 0),
(2210, 'please_enter_the_category_key', 'Please enter the category url key', 1, 0),
(2211, 'please_enter_the_category_name', 'Please enter the category name', 1, 0),
(2212, 'category', 'category', 0, 0),
(2214, 'public_category_listed_on_site', 'public category (shown on the public image browsing pages)', 0, 0),
(2215, 'public_category_shown_on_site', '(shown on the public image browsing pages)', 0, 0),
(2216, 'album', 'album', 0, 0),
(2217, 'edit_image_privacy', 'Image Privacy:', 0, 0),
(2218, 'privacy_private_no_access', 'Private, no access outside of your account.', 0, 0),
(2219, 'privacy_limited_access', 'Limited, access only if users know the sharing link.', 0, 0),
(2220, 'privacy_yes_allow_public', 'Public, listed on the site and within search results.', 0, 0),
(2221, 'edit_file_privacy', 'File Privacy:', 0, 0),
(2224, 'track 1', 'track 1', 1, 0),
(2225, 'account_image_details_stats', 'Image Stats', 0, 0),
(2229, 'account_file_details_delete_image', 'Delete Image', 0, 0),
(2235, 'account_home_search_images', 'Search Images...', 0, 0),
(2238, 'used', 'used', 0, 0),
(2239, 'umlimited_storage', 'Unlimited Storage', 0, 0),
(2240, 'account_types', 'account types', 1, 0),
(2241, 'account_packages', 'account packages', 1, 0),
(2242, 'upload_allowed', 'upload allowed', 1, 0),
(2243, 'max_upload_size', 'max upload size', 1, 0),
(2244, 'on_upgrade_page', 'upgrade page', 1, 0),
(2245, 'total_users', 'total users', 1, 0),
(2246, 'label', 'label', 1, 0),
(2247, 'period_label', 'period label', 1, 0),
(2248, 'price_usd', 'price usd', 1, 0),
(2249, 'price_gbp', 'price gbp', 1, 0),
(2250, 'price_eur', 'price eur', 1, 0),
(2251, 'pricing_label', 'pricing label', 1, 0),
(2252, 'price', 'price', 1, 0),
(2253, 'account_package', 'account package', 1, 0),
(2255, 'rewards_ppd_note', 'Note', 0, 0),
(2256, 'rewards_ppd_not_available_for_user_type', 'PPD is not available with your account.', 0, 0),
(2257, 'rewards_ppd_note:_not_available_for_user_type', 'Note: PPD is not available with your account.', 0, 0),
(2258, 'buy_paid_account_button_now', 'Buy Now', 0, 0),
(2260, 'upgrade_page_package_features_level_id_2', '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 0, 0),
(2261, 'upgrade_account_choose_pricing_upgrade', 'Upgrade To', 0, 0),
(2262, 'support_info', 'support info', 1, 0),
(2263, 'upload_method', 'Method', 1, 0),
(2264, 'progress', 'progress', 0, 0),
(2265, 'are_you_sure_you_want_to_remove_the_remote_url_download', 'Are you sure you want to cancel this download?', 0, 0),
(2267, 'clear', 'clear', 0, 0),
(2268, 'account_level_label_invalid', 'Please specify the label.', 1, 0),
(2269, 'account_level_label_already_in_use', 'That label has already been used, please choose another.', 1, 0),
(2270, 'paid_account_expiry_section_header', 'Premium account expiry details.', 0, 0),
(2271, 'account_home_expiry_date', 'Account expiry date', 0, 0),
(2275, 'navigation_profile', 'Profile', 0, 0),
(2278, 'feed', 'Feed', 0, 0),
(2283, 'account_settings_profile_image', 'Profile Image.', 0, 0),
(2284, 'account_settings_profile_image_file', 'Select File (jpg, png or gif)', 0, 0),
(2285, 'account_edit_profile_image_is_not_an_image', 'Your profile image must be a jpg, png or gif image.', 0, 0),
(2286, 'account_settings_profile_image_remove', 'Remove profile image', 0, 0),
(2288, 'no_albums_found', 'No albums found.', 0, 0),
(2289, 'repeat_password', 'repeat password', 0, 0),
(2290, 'speed', 'Speed', 0, 0),
(2291, 'Comments Overview', 'Comments Overview', 1, 0),
(2292, 'Reported Comments', 'Reported Comments', 1, 0),
(2299, 'image_sent_via_email_to_x', 'Image sent via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 0, 0),
(2303, 'profile_by', 'by', 0, 0),
(2305, 'file_at', 'at', 0, 0),
(2308, 'like', 'Like', 0, 0),
(2318, 'account_file_details_view_stats', 'Click to view stats', 0, 0),
(2322, 'private_info_page', 'private info page', 0, 0),
(2323, 'account_file_details_send_email_links_disabled', 'Sharing links has been disabled on this file.', 0, 0),
(2324, 'premium_for', 'Premium for', 0, 0),
(2325, 'user_settings', 'user settings', 1, 0),
(2326, 'package_price', 'package price', 1, 0),
(2327, 'package_pricing_label', 'package pricing label', 1, 0),
(2328, 'payment_period', 'payment period', 1, 0),
(2329, 'package_label', 'package label', 1, 0),
(2330, 'allow_upload', 'allow upload', 1, 0),
(2331, 'Test User', 'Test User', 1, 0),
(2332, 'privacy_public_access', 'Public - access only if users know the sharing link.', 0, 0),
(2333, 'file_privacy', 'file privacy', 0, 0),
(2334, 'settings_tip_private_files', 'Whether to keep all files private or allow sharing.', 0, 0),
(2335, 'settings_public_files', 'All Files Publicly Accessible', 0, 0),
(2336, 'settings_private_files', 'All Files Private (only via your account', 0, 0),
(2337, 'error_file_is_not_public', 'File is not shared publicly.', 0, 0),
(2338, 'view_folder_page_name', 'View Folder', 0, 0),
(2339, 'view_folder_meta_description', 'View Folder', 0, 0),
(2340, 'error_file_is_not_publicly_shared', 'File is not publicly available.', 0, 0),
(2341, 'permissions', 'permissions', 0, 0),
(2345, 'm2v', 'm2v', 1, 0),
(2346, 'flv', 'flv', 1, 0),
(2348, 'test_user_user', 'TEST USER USER', 0, 0),
(2349, 'test_user', 'TEST USER', 0, 0),
(2350, 'upgrade_page_package_features_level_id_3', '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 0, 0),
(2351, 'guest', 'Guest', 0, 0),
(2357, 'login_to_your_account', 'Login to your Account', 0, 0),
(2359, 'guest_user', 'Guest User', 0, 0),
(2361, 'home_category_', 'Home', 0, 0),
(2376, 'upgrade_page_package_features_level_id_21', '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 0, 0),
(2377, 'upgrade_page_package_features_level_id_23', '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 0, 0),
(2378, 'upgrade_page_package_features_level_id_24', '<li class=\"list-group-item\"><i class=\"fa fa-lock\"></i> Secure Payment</li><li class=\"list-group-item\"><i class=\"fa fa-eye-slash\"></i> 100% Safe & Anonymous</li>', 0, 0),
(2381, 'register_free_account_button', 'Register', 0, 0),
(2382, 'upgrade_page_package_features_level_id_1', '<li><i class=\"fa fa-hdd-o\"></i> Advert Supported</li>', 0, 0),
(2383, 'register_now', 'Register Now', 0, 0),
(2387, 'priority_support', 'Priority Support', 0, 0),
(2388, 'features_overview_header', 'Features Overview', 0, 0),
(2389, 'features_overview_description', 'Some of the Features that are gonna blow your mind off', 0, 0),
(2408, 'footer_navigation', 'Navigation', 0, 0),
(2417, 'any', 'Any', 0, 0),
(2418, 'Personal', 'Personal', 1, 0),
(2420, 'select_album_below_to_store_intro_text', 'Select an album below to store these files in. All current uploads files will be available within these albums.', 0, 0),
(2421, 'enter_a_password_below_to_secure_your_images', 'When downloading these images, users will be prompted for a password, if set. Download managers will not work if a password is set.', 0, 0),
(2427, 'view_image_on', 'View image on', 0, 0),
(2428, 'on', 'on', 0, 0),
(2429, 'edit_file_sharing_url', 'Sharing Url:', 0, 0),
(2430, 'edit_image_sharing_url', 'Sharing Url:', 0, 0),
(2431, 'your_album', 'your album', 0, 0),
(2437, 'privacy_public_limited_access', 'Public Limited - access only if users know the sharing link.', 0, 0),
(2438, 'file_folder_privacy_notice', 'You can not update this [[[FILEFOLDER]]] permissions as your account settings are set to make all files private.', 0, 0),
(2439, 'edit_album_privacy', 'Album Privacy:', 0, 0),
(2440, 'edit_album_privacy_notice', 'You can not update this album privacy settings as your account settings are set to make all files private or the parent folder is set to private.', 0, 0),
(2441, 'edit_album_privacy_notice_note', 'Note: You can not update this album privacy settings as your account settings are set to make all files private or the parent folder is set to private.', 0, 0),
(2442, 'settings_tip_private_files_text', 'Whether to keep all files private or allow sharing. If this is set as public, you can still set albums as private.', 0, 0),
(2443, 'privacy', 'Privacy', 0, 0),
(2444, 'default_album_privacy', 'Default Album Privacy', 0, 0),
(2445, 'image_statistics', 'Image Statistics', 0, 0),
(2446, 'folder_is_not_publicly_shared_please_contact', 'Folder is not publicly shared. Please contact the owner and request they update the privacy settings.', 0, 0),
(2452, 'image_sample', 'Image Sample', 0, 0),
(2462, 'folder_protected', 'Folder Protected', 0, 0),
(2463, 'password_protected', 'Password Protected', 0, 0),
(2464, 'this_folder_has_a_password_set', 'This folder requires a password to gain access. Use the form below to enter the password, then click \"unlock\".', 0, 0),
(2465, 'password_required', 'Password Required', 0, 0),
(2466, 'unlock', 'Unlock', 0, 0),
(2467, 'album_password_is_invalid', 'The album password is invalid', 0, 0),
(2468, 'problem_loading_album', 'There was a problem loading the album, please try again later.', 0, 0),
(2470, 'no_images_found_in_this_album', 'No images found within this album.', 0, 0),
(2471, 'already_an_album_with_that_name', 'You already have an album with that name, please use another', 0, 0),
(2472, 'this_user_has_not_set_any_albums_public', 'This user has not publicly shared any albums..', 0, 0),
(2473, 'no_images_found', 'No images found.', 0, 0),
(2474, 'footer_about_us', 'About Us', 0, 0),
(2475, 'facebook_page_url_is_invalid', 'Facebook url is invalid.', 1, 0),
(2482, 'enable_download_accelerators', 'Enable Download Accelerators?', 1, 0),
(2483, 'browse_by_date_taben', 'By Date Taken', 0, 0),
(2485, 'profiles', 'Profiles', 0, 0),
(2486, 'there_are_no_albums_shared_publicly', 'There are no albums shared publicly.', 0, 0),
(2487, 'account_edit_security_lock_header', 'Account security lock.', 0, 0),
(2488, 'account_edit_security_lock_description', 'Account lock status', 0, 0),
(2489, 'account_lock_long_description', 'The account security lock, when enabled, prevents your account details (name, email, password) from being edited, it also prevents files from being edited, moved and deleted.<br/>To unlock your account, you will need the password which is emailed to your registered email address when the lock is enabled.', 0, 0),
(2490, 'activate_security_lock', 'Activate security lock', 0, 0),
(2491, 'lock_account_email_subject', 'Security lock details for [[[SITE_NAME]]]', 0, 0),
(2492, 'lock_account_email_content', 'Dear [[[FIRST_NAME]]],<br/><br/>Your account on [[[SITE_NAME]]] has been locked as per your request. Use the code below to unlock your account:<br/><br/><strong>Unlock code:</strong> [[[UNLOCK_CODE]]]<br/><br/>Feel free to contact us if you need any support with your account.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(2493, 'account_lock_activation_success_message', 'Account successfully secured.', 0, 0),
(2494, 'account_locked_folder_delete_error_message', 'This account has been locked, please unlock the account to regain full functionality.', 0, 0),
(2495, 'account_locked_folder_edit_error_message', 'This account has been locked, please unlock the account to regain full functionality.', 0, 0),
(2496, 'account_edit_security_lock_code', 'Account lock code', 0, 0),
(2497, 'deactivate_security_lock', 'De-activate security lock', 0, 0),
(2498, 'deactivate_security_lock_resend_code', 'Resend security code', 0, 0),
(2499, 'account_lock_deactivation_no_code_message', 'Please enter the unlock code and try again.', 0, 0),
(2500, 'account_edit_security_locked', 'Locked', 0, 0),
(2501, 'account_lock_deactivation_success_message', 'Account successfully unlocked.', 0, 0),
(2502, 'account_edit_security_unlocked', 'Unlocked', 0, 0),
(2503, 'account_lock_resend_email_confirm_message', 'The email containing the unlock code has been emailed to the registered email account.', 0, 0),
(2504, 'account_lock_deactivation_code_mismatch', 'Account could not be unlocked as the code is incorrect.', 0, 0),
(2505, 'file_statistics_title_page_description_rights', 'Uploaded [[[UPLOADED_DATE]]]</br> Downloads [[[DOWNLOAD_DATE]]]', 0, 0),
(2506, 'improved_download_management', 'Improved Downloads', 1, 0),
(2507, 'btn_register', 'REGISTER', 0, 0),
(2514, 'browse', 'browse', 0, 0),
(2517, 'slideshow', 'Slideshow', 0, 0),
(2518, 'account_file_play_slideshow', 'Play Slideshow', 0, 0),
(2520, 'professional', 'PROFESSIONAL', 0, 0),
(2521, 'account_locked_file_edit_error_message', 'This account has been locked, please unlock the account to regain full functionality.', 0, 0),
(2522, 'search_page_name', 'Search', 0, 0),
(2523, 'search_images', 'Search Images', 0, 0),
(2524, 'search_albums', 'Search Albums', 0, 0),
(2525, 'search_page_title', 'Search [[[TERM]]]', 0, 0),
(2526, 'search_page_title_term', 'Search \"[[[TERM]]]\"', 0, 0),
(2527, 'recent_image_uploads_search_results', 'Recent Image Uploads - Search Results', 0, 0),
(2528, 'search_albums_results', 'Albums Search Results', 0, 0),
(2529, 'recent_image_search_results', 'Recent Image Search Results', 0, 0),
(2530, 'image_search_results', 'Image Search Results', 0, 0),
(2532, 'there_are_no_album_results_search', 'There are no albums given the current search criteria.', 0, 0),
(2533, 'no_images_found_in_search', 'No images found within album or search criteria.', 0, 0),
(2534, 'download_page_captcha_title_page_description_left', 'In order to prevent abuse of this service, please copy the words into the text box below.', 0, 0),
(2535, 'account_lock_activation_failure_message', 'Account could not be secured at this time, please try again later.', 0, 0),
(2536, 'paid_account_expires', 'Premium Expires.', 0, 0),
(2537, 'account_lock_status', 'Account status', 0, 0),
(2538, 'account_lock', 'Account Lock', 0, 0),
(2539, 'do_nothing', 'Do Nothing', 0, 0),
(2540, 'activate_lock', 'Activate Lock', 0, 0),
(2541, 'account_lock_long_description_blue_v2', 'The account security lock prevents your account details and files from being edited, moved and deleted.', 0, 0),
(2542, 'ppt', 'ppt', 1, 0),
(2543, 'image_colors', 'Image Colors', 0, 0),
(2554, 'account_unlock_code', 'Unlock Code', 0, 0),
(2555, 'account_unlock_long_description', 'The unlock code that was sent to the registered email address when the lock was activated.', 0, 0),
(2556, 'unlock_account', 'unlock account', 0, 0),
(2557, 'resend_unlock_code', 'resend unlock code', 0, 0),
(2558, 'account_lock_deactivation_failure_message', 'Account could not be unlocked at this time, please try again later.', 0, 0),
(3073, 'index_header', 'Powerful Image Hosting', 0, 0),
(3074, 'index_description', 'Upload, access, organize, edit, and share your photos from any device, from anywhere in the world.', 0, 0),
(6169, 'first_class_image_manager', 'First Class Image Manager', 0, 0),
(6170, 'first_class_image_manager_description', 'Some of the Features that are gonna blow your mind off', 0, 0),
(6652, 'image_manager_desktop', 'Desktop Image Manager', 0, 0),
(6653, 'image_manager_tablet', 'Tablet Image Manager', 0, 0),
(6654, 'image_manager_phone', 'Phone Image Manager', 0, 0),
(11259, 'powerful_features_description', 'We have a large varierty of features available', 0, 0),
(11756, 'unique_image_manager_alt', 'Unique Image Manager', 0, 0),
(11757, 'unique_image_manager_header', 'Unique Image Manager', 0, 0),
(11758, 'unique_image_manager_description', 'Our high peformance image manager allows you to control all of your pictures with its easy to use interface.', 0, 0),
(11759, 'mobile_tablet_desktop_alt', 'Mobile, Tablet &amp; Desktop', 0, 0),
(11760, 'responsive_design_header', 'Mobile, Tablet &amp; Desktop', 0, 0),
(11761, 'responsive_design_description', 'Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.', 0, 0),
(11762, 'safe_secure_alt', 'Safe &amp; Secure', 0, 0),
(11763, 'safe_secure_header', 'Safe &amp; Secure', 0, 0),
(11764, 'safe_secure_description', 'Safely store all of your precious images. You can rely on us to keep your images protected.', 0, 0),
(11765, 'backed_up_alt', 'Backed Up Forever', 0, 0),
(11766, 'backup_header', 'Backed Up Forever', 0, 0),
(11767, 'backup_description', 'All of your images are securely backed up on our databases to give you peace of mind.', 0, 0),
(11768, 'image_tools_alt', 'Powerful Image Tools', 0, 0),
(11769, 'image_tools_header', 'Powerful Image Tools', 0, 0),
(11770, 'image_tools_description', 'We have multple tools that you can use for your images such as slide shows, embedding, sharing and more.', 0, 0),
(11771, 'share_memories_alt', 'Share Your Memories', 0, 0),
(11772, 'share_memories_header', 'Share Your Memories', 0, 0),
(11773, 'share_memories_description', 'We supply you with all the tools necessary to easily share your images with friends &amp; family.', 0, 0),
(11774, 'image_searching_alt', 'Fast Image Searching', 0, 0),
(11775, 'image_searching_header', 'Fast Image Searching', 0, 0),
(11776, 'image_searching_description', 'Quickly access all of your images by using our fast image searching tools.', 0, 0),
(11777, 'private_albums_alt', 'Private Albums', 0, 0),
(11778, 'private_albums_header', 'Private Albums', 0, 0),
(11779, 'private_albums_description', 'Keep your most personal &amp; valued images entirely private with our locked albums feature.', 0, 0),
(11780, 'always_on_alt', 'Always On', 0, 0),
(11781, 'always_on_header', 'Always On', 0, 0),
(11782, 'always_on_description', 'Access our site at any time from any location to store &amp; manage your images.', 0, 0),
(14512, 'premium_access_description', 'Flexible &amp; Easy Pricing for wide Audience Groups', 0, 0),
(14791, 'get_started_now_description', 'What are you waiting for? Join us!', 0, 0),
(15041, 'or', 'Or', 0, 0),
(15042, 'premium_pricing', 'Premium Pricing', 0, 0),
(16597, 'index_page_name', 'Upload & Share Images', 0, 0),
(16599, 'index_meta_description', 'Upload, share, track, manage your images in one simple to use image host.', 0, 0),
(16601, 'index_meta_keywords', 'share, track, image, picture, pic, img, hosting, sharing, upload, storage, site, website', 0, 0),
(16872, 'index_slide1_header', 'Powerful Image Hosting', 0, 0),
(16873, 'index_slide1_description', 'Upload, access, organize, edit, and share your photos from any device, from anywhere in the world.', 0, 0),
(16880, 'index_slide2_header', 'First Class Image Manager', 0, 0),
(16882, 'index_slide2_description', 'Slick image management for the digital generation', 0, 0),
(16886, 'index_slide2_image_manager_desktop', 'Desktop Image Manager', 0, 0),
(16888, 'index_slide2_image_manager_tablet', 'Tablet Image Manager', 0, 0),
(16890, 'index_slide2_image_manager_phone', 'Mobile Phone Image Manager', 0, 0),
(16892, 'index_slide2_right_text_title', 'What Is [[[SITE_CONFIG_SITE_NAME]]]?', 0, 0),
(16893, 'index_slide2_right_text_intro', 'Built for the modern world of digital imagery, we\'ve got loads of great features to help you manage your images.', 0, 0),
(16894, 'index_slide2_right_text_bullet_1', 'Upload Your Images From <strong>Any Device</strong>.', 0, 0),
(16896, 'index_slide2_right_text_bullet_2', 'Lots of <strong>Free Storage</strong> for Your Images.', 0, 0),
(16898, 'index_slide2_right_text_bullet_3', 'Share on Facebook, Twitter, via Email & more.', 0, 0),
(16900, 'index_slide2_right_text_bullet_4', 'Secure Storage & Password Protected Albums.', 0, 0),
(16902, 'index_slide2_right_text_bullet_5', 'Unique Image Tools, Watermarking, Slideshows & more.', 0, 0),
(16904, 'index_slide2_right_text_bullet_6', 'Heroic <strong>Support Team</strong>.', 0, 0),
(16906, 'index_slide3_header', 'Powerful Features', 0, 0),
(16908, 'index_slide3_description', 'Packed full of features that will blow your mind!', 0, 0),
(16910, 'index_slide3_unique_image_manager_alt', 'Unique Image Manager', 0, 0),
(16912, 'index_slide3_unique_image_manager_header', 'Unique Image Manager', 0, 0),
(16913, 'index_slide3_unique_image_manager_description', 'Our image manager allows you to quickly manage all of your images and photos with its modern, easy to use interface.', 0, 0),
(16914, 'index_slide3_mobile_tablet_desktop_alt', 'Mobile, Tablet &amp; Desktop', 0, 0),
(16916, 'index_slide3_responsive_design_header', 'Mobile, Tablet &amp; Desktop', 0, 0),
(16918, 'index_slide3_responsive_design_description', 'Access images on the go using your mobile phone, or show a client photos using your iPad. Use any modern device.', 0, 0),
(16920, 'index_slide3_safe_secure_alt', 'Safe &amp; Secure', 0, 0),
(16922, 'index_slide3_safe_secure_header', 'Safe &amp; Secure', 0, 0),
(16924, 'index_slide3_safe_secure_description', 'Safely store all of your precious images. You can rely on us to keep your images safe and secure.', 0, 0),
(16926, 'index_slide3_backed_up_alt', 'Stored In The Cloud', 0, 0),
(16928, 'index_slide3_backup_header', 'Stored In The Cloud', 0, 0),
(16930, 'index_slide3_backup_description', 'All of your images are securely stored in the cloud for piece of mind. Don\'t risk loosing CDs or hard drives failing.', 0, 0),
(16932, 'index_slide3_image_tools_alt', 'Powerful Image Tools', 0, 0),
(16933, 'index_slide3_image_tools_header', 'Powerful Image Tools', 0, 0),
(16934, 'index_slide3_image_tools_description', 'We have lots of tools that you can use to easily manage your images. Slideshows, embedding, sharing, rotating and more.', 0, 0),
(16936, 'index_slide3_share_memories_alt', 'Share Your Memories', 0, 0),
(16938, 'index_slide3_share_memories_header', 'Share Your Memories', 0, 0),
(16940, 'index_slide3_share_memories_description', 'Share your images on social networks like Facebook or provide limited access to just friends & family.', 0, 0),
(16942, 'index_slide3_image_searching_alt', 'Fast Image Searching', 0, 0),
(16944, 'index_slide3_image_searching_header', 'Fast Image Searching', 0, 0),
(16946, 'index_slide3_image_searching_description', 'Quickly access all of your images by using our fast image searching tools.', 0, 0),
(16948, 'index_slide3_private_albums_alt', 'Private Albums', 0, 0),
(16950, 'index_slide3_private_albums_header', 'Private Albums', 0, 0),
(16952, 'index_slide3_private_albums_description', 'Keep your most personal & valued images entirely private with our locked albums feature.', 0, 0),
(16953, 'index_slide3_always_on_alt', 'Always On', 0, 0),
(16954, 'index_slide3_always_on_header', 'Always On', 0, 0),
(16956, 'index_slide3_always_on_description', 'Access our site at any time from any location in the world. Upload while travelling or straight after a photoshoot.', 0, 0),
(16958, 'index_slide4_header', 'Premium Access', 0, 0),
(16960, 'index_slide4_description', 'Optional premium access for additional storage space', 0, 0),
(16993, 'index_slide5_header', 'Get Started Now', 0, 0),
(16994, 'index_slide5_description', 'What are you waiting for? It\'s Free!', 0, 0),
(16995, 'index_slide1_register', 'Register', 0, 0),
(16996, 'index_slide1_or', 'Or', 0, 0),
(16997, 'index_slide1_premium', 'Premium Access', 0, 0),
(17247, 'files_kept_for_x_days', 'Files kept for [[[DAYS]]] days.', 0, 0),
(17248, 'upload_files_up_to_x_in_size', 'Upload files up to [[[MAX_UPLOAD_FILESIZE]]] in size.', 0, 0),
(17383, 'extend', 'extend', 0, 0),
(17384, 'account', 'account', 0, 0),
(17385, 'upgrade_title_page_description_left', 'See below for the various account and payment options.', 0, 0),
(17386, 'upgrade_meta_keywords', ', account, paid, membership, download,  image, picture, pic, img, hosting, sharing, upload, storage, site, website', 0, 0),
(17394, 'logo', 'Logo', 0, 0),
(17395, 'navigation_home_upload', 'UPLOAD', 0, 0),
(17396, 'home_dropdown', ' HOME', 0, 0),
(17398, 'powerful_features', 'Powerful Features', 0, 0),
(17399, 'premium_access', 'Premium Access', 0, 0),
(17400, 'get_started_now', 'Get Started Now', 0, 0),
(17401, 'home_browse', ' BROWSE', 0, 0),
(17402, 'home_category_animals', 'Animals', 0, 0),
(17403, 'home_category_art', 'Art', 0, 0),
(17404, 'home_category_cars', 'Cars', 0, 0),
(17405, 'home_category_colorful', 'Colorful', 0, 0),
(17406, 'home_category_illustrations', 'Illustrations', 0, 0),
(17407, 'home_category_just-for-fun', 'Just For Fun', 0, 0),
(17408, 'home_category_music', 'Music', 0, 0),
(17409, 'home_category_nature', 'Nature', 0, 0),
(17410, 'home_category_other', 'Other', 0, 0),
(17411, 'home_category_scenes', 'Scenes', 0, 0),
(17412, 'home_category_sports', 'Sports', 0, 0),
(17413, 'home_category_travel', 'Travel', 0, 0),
(17414, 'home_category_weddings', 'Weddings', 0, 0),
(17415, 'home_category_work', 'Work', 0, 0),
(17416, 'search_type_and_hit_enter', 'Type & Hit Enter..', 0, 0),
(17420, 'advert_supported', 'Advert Supported', 0, 0),
(17430, 'most_popular', 'Most Popular', 0, 0),
(17439, 'upgrade_now', 'Upgrade Now', 0, 0),
(17440, 'storage', 'Storage', 0, 0),
(17441, 'unique_members_area', 'Unique Members Area', 0, 0),
(17442, 'advert_free', 'No Adverts', 0, 0),
(17443, 'secure_payment', 'Secure Payment', 0, 0),
(17444, 'safe_and_anonymous', '100% Safe & Anonymous', 0, 0),
(17445, 'free', 'free', 0, 0),
(17446, 'account_status', 'account status', 0, 0),
(17447, 'account_type', 'account type', 0, 0),
(17448, 'account_type_admin', 'Admin', 0, 0),
(17449, 'reverts_to_free_account', 'reverts to free account', 0, 0),
(17450, 'never', 'never', 0, 0),
(17451, 'account_benefits', 'account benefits', 0, 0),
(17452, 'direct_downloads_no_waiting', 'Direct downloads. No waiting.', 0, 0),
(17453, 'no_advertising', 'No advertising.', 0, 0),
(17454, 'unlimited_simultaneous_downloads', 'Unlimited simultaneous downloads.', 0, 0),
(17455, 'maximum_downloads_speeds_possible', 'Maximum download speeds possible.', 0, 0),
(17456, 'download_manager_support', 'Download manager support.', 0, 0),
(17457, 'unlimited_storage', 'Unlimited storage.', 0, 0),
(17458, 'images_kept_for_x_days', 'Images kept for [[[DAYS]]] days.', 0, 0),
(17459, 'upload_images_up_to_x_in_size', 'Upload images up to [[[MAX_UPLOAD_FILESIZE]]] in size.', 0, 0),
(17460, 'no_limits_on_the_amount_of_downloads', 'No limits on the amount of downloads.', 0, 0),
(17461, 'low_price_per_day', 'Low price per day.', 0, 0),
(17462, 'no_subscriptions', 'No subscriptions.', 0, 0),
(17463, 'footer_about_us_text', 'Premium image hosting, <strong>Fast Access</strong> to your important images & <strong>Huge Storage</strong> limits. Mobile, tablet & desktop access. See what you missing, <a href=\"[[[WEB_ROOT]]]/register\">join us</a> today.', 0, 0),
(17464, 'total_views', 'Total Views', 0, 0),
(17465, 'total_images', 'Total Images', 0, 0),
(17466, 'like_is', 'Like us', 0, 0),
(17467, 'on_facebook', 'on Facebook', 0, 0),
(17468, 'subscribe', 'Subscribe', 0, 0),
(17469, 'to_rss_feeds', 'to RSS Feeds', 0, 0),
(17471, 'your_account', 'Your Account', 0, 0),
(17472, 'upload_file', 'upload file', 0, 0),
(17473, 'your_files', 'your files', 0, 0),
(17476, 'faq', 'faq', 0, 0),
(17477, 'term_and_conditions', 'terms and conditions', 0, 0),
(17478, 'report_file', 'report file', 0, 0),
(17479, 'contact', 'contact', 0, 0),
(17481, 'rewards', 'rewards', 0, 0),
(17482, 'copyright', 'copyright', 0, 0),
(17483, 'created_by', 'created by ', 0, 0),
(17485, 'English (en)', 'English (en)', 0, 0),
(17487, 'test', 'test', 0, 0),
(17488, 'switch_site_language_to', 'Switch site language to', 0, 0),
(17489, 'Arabic', 'Arabic', 0, 0),
(17594, 'account_home_page_name', 'Account Home', 0, 0),
(17595, 'account_home_meta_description', 'Your Account Home', 0, 0),
(17596, 'account_home_meta_keywords', 'account, home, file, your, interface, upload, download, site', 0, 0),
(18639, 'uploaded', 'uploaded', 0, 0),
(18640, 'filesize', 'filesize', 0, 0),
(18641, 'sharing', 'Sharing', 0, 0),
(18642, 'public_file', 'Public File - Can be Shared', 0, 0),
(18643, 'color_palette', 'Color Palette', 0, 0),
(18645, 'account_file_details_image_stats', 'Image Stats', 0, 0),
(18646, 'account_file_details_download_image', 'Download Image', 0, 0),
(18647, 'account_file_details_view_comments', 'Click to view comments', 0, 0),
(18648, 'comments', 'comments', 0, 0),
(18649, 'views', 'views', 0, 0),
(18650, 'account_file_details_likes', 'Like this image', 0, 0),
(18652, 'sharing_code', 'sharing code', 0, 0),
(18654, 'image_data', 'image data', 0, 0),
(18655, 'html_code', 'HTML Code', 0, 0),
(18659, 'forum_code', 'forum code', 0, 0),
(18660, 'account_file_details_intro_user_the_form_below_send_email', 'Use the form below to share this file via email. The recipient will receive a link to download the file.', 0, 0),
(18661, 'recipient_name', 'recipient full name', 0, 0),
(18662, 'recipient_email_address', 'recipient email address', 0, 0),
(18664, 'send_email', 'send email', 0, 0),
(18733, 'last_seen', 'last seen', 0, 0),
(18735, 'likes received', 'likes received', 0, 0),
(18736, 'edit_profile', 'Edit Profile', 0, 0),
(18738, 'likes', 'Likes', 0, 0),
(19340, 'browse_page_name', 'Browse', 0, 0),
(19341, 'browse_meta_description', 'Browse Images', 0, 0),
(19342, 'browse_meta_keywords', 'browser, images, file, your, interface, upload, download, site', 0, 0),
(19343, 'register', 'register', 0, 0),
(19344, 'premium', 'premium', 0, 0),
(19345, 'login', 'login', 0, 0),
(19346, 'your_albums', 'your albums', 0, 0),
(19350, 'selected_file', 'selected file', 0, 0),
(19351, 'navigation_community', 'Community', 0, 0),
(19352, 'navigation_browse', 'Browse', 0, 0),
(19353, 'navigation_featured', 'Featured', 0, 0),
(19354, 'navigation_account', 'Account', 0, 0),
(19356, 'navigation_likes', 'Likes', 0, 0),
(19357, 'navigation_your_images', 'Your Images', 0, 0),
(19359, 'account_header_search_images', 'Search images...', 0, 0),
(19361, 'advanced_search', 'Advanced Search', 0, 0),
(19362, 'upload_account', 'Upload', 0, 0),
(19363, 'file_manager_you_have_x_new_notifications', 'You have <strong>[[[UNREAD]]]</strong> new notifications.', 0, 0),
(19364, 'admin_area', 'ADMIN AREA', 0, 0),
(19366, 'of', 'of', 0, 0),
(19367, 'unlimited', 'unlimited', 0, 0),
(19368, 'navigation_public_profile', 'Public Profile', 0, 0),
(19369, 'file_manager_account_settings', 'Account Settings', 0, 0),
(19370, 'uprade_account', 'upgrade account', 0, 0),
(19371, 'extend_account', 'extend account', 0, 0),
(19372, 'file_manager_logout', 'Logout', 0, 0),
(19374, 'image_manager', 'Image Manager', 0, 0),
(19376, 'recent_images', 'Recent Images', 0, 0),
(19378, 'all_images', 'All Images', 0, 0),
(19380, 'trash_can', 'Trash Can', 0, 0),
(19381, 'empty_trash', 'Empty Trash', 0, 0),
(19383, 'add_album', 'Add Album', 0, 0),
(19384, 'upload_images', 'Upload Images', 0, 0),
(19385, 'edit_folder', 'Edit', 0, 0),
(19386, 'delete_folder', 'Delete', 0, 0),
(19387, 'add_albumfolder', 'Add Album', 0, 0),
(19388, 'download_all_images', 'Download All Images (Zip)', 0, 0),
(19389, 'share_album', 'Share Album', 0, 0),
(19390, 'are_you_sure_you_want_to_remove_this_album', 'Are you sure you want to remove this album? Any files within the album will be moved into your default root folder and remain active.', 0, 0),
(19391, 'are_you_sure_you_want_to_empty_the_trash', 'Are you sure you want to empty the trash can? Any statistics and other file information will be permanently deleted.', 0, 0),
(19393, 'account_file_details_download', 'Download', 0, 0),
(19394, 'account_file_details_edit_image', 'Edit Image', 0, 0),
(19395, 'account_file_details_delete', 'Delete', 0, 0),
(19396, 'file_manager_links', 'Links', 0, 0),
(19397, 'account_file_details_stats', 'Stats', 0, 0),
(19398, 'account_home_are_you_sure_download_all_files', 'Are you sure you want to download all the files in this folder? This may take some time to complete.', 0, 0),
(19399, 'file_manager_uploading', 'Uploading...', 0, 0),
(19401, 'file_manager_upload_complete_click_here_to_view', 'Upload complete. Click here to view links.', 0, 0),
(19402, 'file_manager_upload_progress', 'Upload Progress:', 0, 0),
(19403, 'file_manager_are_you_sure_you_want_to_duplicate_x_files', 'Are you sure you want to duplicate the selected [[[TOTAL_FILES]]] file(s)?', 0, 0),
(19408, 'browse_images', 'Browse Images', 0, 0),
(19411, 'uploader_hour', 'hour', 0, 0),
(19412, 'uploader_hours', 'hours', 0, 0),
(19413, 'uploader_minute', 'minute', 0, 0),
(19414, 'uploader_minutes', 'minutes', 0, 0),
(19415, 'uploader_second', 'second', 0, 0),
(19416, 'uploader_seconds', 'seconds', 0, 0),
(19417, 'file_upload_maximum_number_of_files_exceeded', 'Maximum number of files exceeded', 0, 0),
(19418, 'file_upload_file_type_not_allowed', 'File type not allowed', 0, 0),
(19419, 'file_upload_file_is_too_large', 'File is too large', 0, 0),
(19420, 'file_upload_file_is_too_small', 'File is too small', 0, 0),
(19421, 'indexjs_error_server_problem_reservo', 'ERROR: There was a server problem when attempting the upload.', 0, 0),
(19422, 'links_copies_to_clipboard', 'Links copied to clipboard:\\n\\n', 0, 0),
(19423, 'indexjs_progress', 'Progress', 0, 0),
(19424, 'indexjs_speed', 'Speed', 0, 0),
(19425, 'indexjs_speed_ps', 'ps', 0, 0),
(19426, 'indexjs_remaining', 'Remaining', 0, 0),
(19427, 'indexjs_uploaded', 'Uploaded', 0, 0),
(19432, 'image_upload', 'image upload', 0, 0),
(19433, 'remote_url_upload', 'remote url upload', 0, 0),
(19436, 'torrent', 'torrent', 0, 0),
(19437, 'add_images', 'Add images...', 0, 0),
(19438, 'start_upload', 'Start upload', 0, 0),
(19439, 'cancel_upload', 'Cancel upload', 0, 0),
(19440, 'drag_and_drop_images_here_or_click_to_browse', 'Drag &amp; drop images here or click to browse...', 0, 0),
(19443, 'set_upload_queue', 'Upload Queue', 0, 0),
(19445, 'max_file_size', 'Max file size', 0, 0),
(19446, 'set_hide', 'Hide', 0, 0),
(19447, 'image_upload_completed', 'Image uploads completed.', 0, 0),
(19451, 'index_error', 'Error', 0, 0),
(19452, 'delete', 'delete', 0, 0),
(19453, 'image_upload_remote_url_intro', 'Download images directly from other sites into your account. Note: If the images are on another image download site or password protected, this may not work.', 0, 0),
(19454, 'set_transfer_images', 'Transfer Images', 0, 0),
(19456, 'enter_up_to_x_image_urls', 'Enter up to [[[MAX_REMOTE_URL_IMAGES]]] image urls. Separate each url on it\'s own line.', 0, 0),
(19457, 'set_upload_processing', 'Processing...', 0, 0),
(19458, 'view_all_links', 'View All Links', 0, 0),
(19459, 'image_transfers_completed', 'Image transfers completed.', 0, 0),
(19460, 'index_upload_more_images', '<a href=\"[[[WEB_ROOT]]]\">Click here</a> to upload more images.', 0, 0),
(19461, 'set_close', 'Close', 0, 0),
(19462, 'processing', 'processing', 0, 0),
(19463, 'ftp_upload', 'FTP Upload', 0, 0),
(19471, 'please_enter_the_urls_to_start', 'Please enter the urls to start.', 0, 0),
(19472, 'no_valid_urls_found_please_make_sure_any_start_with_http_or_https', 'No valid urls found, please make sure any start with http or https and try again.', 0, 0),
(19473, 'you_can_not_add_more_than_x_urls_at_once', 'You can not add more than [[[MAX_URLS]]] urls at once.', 0, 0),
(19478, 'options', 'options', 0, 0),
(19479, 'enter_up_to_x_file_urls', 'Enter up to [[[MAX_REMOTE_URL_FILES]]] file urls. Separate each url on it\'s own line.', 0, 0),
(19484, 'datatable_no_data_available_in_table', 'No data available in table', 0, 0),
(19485, 'datatable_showing_x_to_x_of_total_entries', 'Showing _START_ to _END_ of _TOTAL_ entries', 0, 0),
(19486, 'datatable_no_data', 'No data', 0, 0),
(19487, 'datatable_show_menu_entries', 'Show _MENU_ entries', 0, 0),
(19488, 'datatable_loading_please_wait', 'Loading, please wait...', 0, 0),
(19489, 'datatable_base_filtered', ' (filtered)', 0, 0),
(19490, 'datatable_search_text', 'Search:', 0, 0),
(19491, 'datatable_no_matching_records_found', 'No matching records found', 0, 0),
(19495, 'set_transfer_files', 'Transfer Files', 0, 0),
(19496, 'send_via_email', 'send via email:', 0, 0),
(19497, 'enter_an_email_address_below_to_send_the_list_of_images', 'Enter an email address below to send the list of images via email once they\'re uploaded.', 0, 0),
(19498, 'email_address', 'Email Address', 0, 0),
(19499, 'store_in_album', 'store in album:', 0, 0),
(19500, 'select_album_below_to_store_intro_text_images', 'Select an album below to store these images in. All current uploads will be available within these albums.', 0, 0),
(19501, 'album_name', 'Album Name', 0, 0),
(19504, 'public_category_shown_on_site_intro', 'Listed in this category whe shared publicly on the site. Leave blank if you are keeping the images private.', 0, 0),
(19505, 'public_category', 'public category', 0, 0),
(19506, '_none_', '- None -', 0, 0),
(19507, 'set_cancel', 'Cancel', 0, 0),
(19508, 'set_save_and_close', 'Save Options', 0, 0),
(19509, 'filter_your_images', 'Filter Your Images', 0, 0),
(19510, 'filter', 'Filter', 0, 0),
(19511, 'file_manager_freetext_search', 'Freetext search...', 0, 0),
(19512, 'file_manager_current_album', 'Current Album', 0, 0),
(19513, 'file_manager_all_albums', 'All Albums', 0, 0),
(19514, 'upload_date', 'Upload Date', 0, 0),
(19515, 'file_manager_select_range', 'Select range...', 0, 0),
(19517, 'clear_filter', 'Clear Filter', 0, 0),
(19518, 'apply_filter', 'Apply Filter', 0, 0),
(19522, 'image_urls', 'Image Urls', 0, 0),
(19523, 'urls_html_code', 'HTML Code', 0, 0),
(19524, 'urls_bbcode', 'Forum BBCode', 0, 0),
(19526, 'file_urls', 'File Urls', 0, 0),
(19529, 'loading_please_wait', 'Loading, please wait...', 0, 0),
(19530, 'close', 'Close', 0, 0),
(19532, 'account_home_folder_treeview_double_click', 'Double click to view/hide subfolders', 0, 0),
(19533, 'images', 'Images', 0, 0),
(19534, 'recent_image_uploads', 'Recent Image Uploads', 0, 0),
(19535, 'browse_albums', 'Browse Albums', 0, 0),
(19536, 'albums', 'albums', 0, 0),
(19569, 'index_default', '- default -', 0, 0),
(19580, 'browse_categories', 'Browse Categories', 0, 0),
(19583, 'categories', 'Categories', 0, 0),
(19832, 'album_by', 'By', 0, 0),
(19836, 'album_total_images', 'Total Images', 0, 0),
(19839, 'album_total_likes', 'Total Likes', 0, 0),
(19843, 'album_total_comments', 'Total Comments', 0, 0),
(19847, 'album_total_views', 'Total Views', 0, 0),
(19851, 'album_share', 'Share', 0, 0),
(20567, 'account_file_details_view', 'View', 0, 0),
(20568, 'account_file_details_rotate_right', 'Rotate Right', 0, 0),
(20569, 'account_file_details_rotate_left', 'Rotate Left', 0, 0),
(20570, 'account_file_details_add_archive', 'Add to Zip/Rar', 0, 0),
(20571, 'account_file_details_split', 'Split File', 0, 0),
(20572, 'account_file_details_join', 'Join Files', 0, 0),
(20573, 'download_from', 'Download from', 0, 0),
(20574, 'class_file_download', 'Download', 0, 0),
(20575, 'class_file_from', 'from', 0, 0),
(20576, 'first', 'first', 0, 0),
(20577, 'previous', 'previous', 0, 0),
(20578, 'next', 'next', 0, 0),
(20579, 'last', 'last', 0, 0),
(20581, 'view_now', 'view now', 0, 0),
(20582, 'choose_free_or_premium_access', 'Choose free or premium access', 0, 0),
(20583, 'direct_album_downloads_no_waiting', 'Direct album downloads. No waiting.', 0, 0),
(20584, 'header_search_files', 'Search files...', 1, 0),
(20585, 'contact_select_subject', 'select subject', 0, 0),
(20586, 'contact_query_type_site_support', 'Site Support', 0, 0),
(20587, 'contact_query_type_bug_report', 'Bug Report', 0, 0),
(20588, 'contact_query_type_abuse_report', 'Abuse Report', 0, 0),
(20589, 'contact_query_type_suggest_improvements', 'Suggest Improvements', 0, 0),
(20590, 'contact_query_type_other', 'Other', 0, 0),
(20591, 'contact_error_query_type', 'Please select your type of query.', 0, 0),
(20594, 'contact_abuse_report_popup_notice', 'Please submit all abuse reports via our dedicated abuse report page. Click OK to continue to it now.', 0, 0),
(20595, 'contact_email_subject_v2', '\"[[[QUERY_TYPE]]]\" contact from [[[SITE_NAME]]] by \"[[[LOGGED_IN_USERNAME]]]\" user.', 0, 0),
(20596, 'contact_email_content_v2', 'There has been a contact form submission from [[[SITE_NAME]]] with the following details:<br/><br/>***************************************<br/>Full Name: [[[FULL_NAME]]]<br/>Email Address: [[[EMAIL_ADDRESS]]]<br/>Query Type: [[[QUERY_TYPE]]]<br/><br/>[[[QUERY]]]<br/>***************************************<br/>Logged In: [[[LOGGED_IN]]]<br/>Username: [[[LOGGED_IN_USERNAME]]]<br/>Submitted IP: [[[USERS_IP]]]<br/>***************************************<br/><br/>', 0, 0),
(20597, 'contact_query_type', 'Query type', 0, 0),
(20598, 'Image Link', 'Image Link', 0, 0),
(20599, 'email', 'email', 0, 0),
(20600, 'meta', 'Meta', 0, 0),
(20601, 'album_page_name', 'Album', 0, 0),
(20602, 'album_meta_description', 'Album', 0, 0),
(20603, 'album_meta_keywords', 'album, images, file, your, interface, upload, download, site', 0, 0),
(20604, 'album_view', 'View', 0, 0),
(20605, 'album_album', 'Album', 0, 0),
(20606, 'account_home_image_name_og', 'Image', 0, 0),
(20607, 'account_home_description_og', 'View 630803_87861202.jpg Image', 0, 0),
(20608, 'image', 'image', 0, 0),
(20609, 'account_file_details_edit_image_info', 'Edit Image Info', 0, 0),
(20610, 'account_file_set_as_albume_cover', 'Set As Album Cover', 0, 0),
(20611, 'account_set_cover_image_success', 'Cover image updated.', 0, 0),
(20612, 'edit_album_cover_image', 'Cover Image:', 0, 0),
(20613, 'edit_album_cover_image_description', 'Cover Image: (Url of the Image in Your Account)', 0, 0),
(20614, 'nef', 'nef', 1, 0),
(20615, 'eip', 'eip', 1, 0),
(20616, 'arw', 'arw', 1, 0),
(20617, 'erf', 'erf', 1, 0),
(20618, 'bmp', 'bmp', 1, 0),
(20619, 'dng', 'dng', 1, 0),
(20620, 'orf', 'orf', 1, 0),
(20621, 'cr2', 'cr2', 1, 0),
(20622, 'crw', 'crw', 1, 0),
(20623, 'navigation_images', 'Images', 0, 0),
(20624, 'navigation_albums', 'Albums', 0, 0),
(20625, 'navigation_categories', 'Categories', 0, 0),
(20626, 'category_listing', 'Category Listing', 0, 0),
(20627, '3fr', '3fr', 1, 0),
(20628, 'view_on', 'View on', 0, 0);
INSERT INTO `language_key` (`id`, `languageKey`, `defaultContent`, `isAdminArea`, `foundOnScan`) VALUES
(20629, 'direct_image_link', 'Direct Image Link', 0, 0),
(20630, 'image_page_link', 'Image Page Link', 0, 0),
(20631, 'account_file_details_album_not_publicy_shared', 'This image is not publicly shared. You will need to make it public before the recipient can view it.', 0, 0),
(20632, 'account_file_details_album_not_publicly_shared', 'This image is not publicly shared. You will need to make it public before the recipient can view it.', 0, 0),
(20633, 'account_file_details_original', 'Original', 0, 0),
(20634, 'account_file_details_version', 'Version', 0, 0),
(20635, 'eps', 'eps', 1, 0),
(20636, 'account_file_details_select_all_images', 'Select All Images', 0, 0),
(20637, 'selected_image', 'selected image', 0, 0),
(20638, 'selected_images', 'selected images', 0, 0),
(20639, 'selected_image_clear', 'clear', 0, 0),
(20640, 'selected', 'selected', 0, 0),
(20641, 'search_your_images', 'Search Your Images', 0, 0),
(20642, 'file_manager_your_images', 'Your Images', 0, 0),
(20643, 'file_manager_all_images', 'All Images', 0, 0),
(20652, 'account_settings_profile_banner_image', 'Profile Banner Image.', 0, 0),
(20654, 'passwords_do_not_match', 'Your passwords do not match.', 0, 0),
(20655, 'mng', 'mng', 1, 0),
(20658, 'index_store_title', 'Store all of your images with us', 0, 0),
(20659, 'index_store_description', 'You can store all of your images on our powerful servers at the touch of a button at home or on the go..', 0, 0),
(20660, 'index_premium_title', 'Did you know..', 0, 0),
(20661, 'index_why_choose_us_description', 'We also offer a premium membership with lots of bonuses!', 0, 0),
(20662, 'index_premium_button', 'Premium Pricing', 0, 0),
(20682, 'link_checker_description_of_the_works', 'Description of the copyrighted works and supporting information', 0, 0),
(20685, 'link_checker_error_no_url', 'Please enter the url of the file you\'re reporting.', 0, 0),
(20687, 'link_checker_result', 'Found [[[TOTAL_FOUND]]] link(s), [[[TOTAL_ACTIVE]]] active and [[[TOTAL_DISABLED]]] disabled.', 0, 0),
(20688, 'check_more', 'check more', 0, 0),
(20753, 'link_checker', 'link checker', 0, 0),
(20754, 'link_checker_page_name', 'Link Checker', 0, 0),
(20755, 'link_checker_meta_description', 'Check multiple download links at the same time.', 0, 0),
(20756, 'link_checker_meta_keywords', 'link, checker, copyright, infringement, file, hosting', 0, 0),
(20757, 'link_checker_title_page_description_left', '', 0, 0),
(20758, 'link_checker_title_page_description_right', '', 0, 0),
(20759, 'link_checker_intro', 'Use this page to check whether multiple download links are still active. Enter up to 200 urls below, a new one on each line and click \'Check Files\'', 0, 0),
(20760, 'link_checker_list_of_file_download_urls', 'List of file download urls, 1 on each line.', 0, 0),
(20761, 'check_files', 'check files', 0, 0),
(20762, 'upload_your_image_and_youll_be_paid_for_every', 'Upload and share your images and you\'ll be paid for every image viewed or downloaded on your account.', 0, 0),
(20764, 'search_meta_description', 'Check multiple download links at the same time.', 0, 0),
(20765, 'search_meta_keywords', 'link, checker, copyright, infringement, file, hosting', 0, 0),
(20766, 'search_title_page_description_left', '', 0, 0),
(20767, 'search_title_page_description_right', '', 0, 0),
(20769, 'search_list_of_file_download_urls', 'List of file download urls, 1 on each line.', 0, 0),
(20770, 'search_filename', 'Filename', 0, 0),
(20771, 'search_filesize', 'Filesize', 0, 0),
(20772, 'search_date_uploaded', 'Dated Uploaded', 0, 0),
(20773, 'datatable_no_files_available_in_search_results', 'No files available in search results', 0, 0),
(20774, 'datatable_showing_x_to_x_of_total_files', 'Showing _START_ to _END_ of _TOTAL_ files', 0, 0),
(20776, 'datatable_show_menu_files', 'Show _MENU_ files', 0, 0),
(20777, 'search_type_images', 'Images', 0, 0),
(20778, 'search_type_documents', 'Documents', 0, 0),
(20779, 'search_type_videos', 'Videos', 0, 0),
(20780, 'search_type_audio', 'Audio', 0, 0),
(20781, 'search_type_archives', 'Archives', 0, 0),
(20782, 'link_checker_error_please_enter_1_or_more_urls', 'Please enter 1 or more file urls.', 0, 0),
(20784, 'search_box_placeholder', 'Enter your search term here...', 0, 0),
(20786, 'search_form_search', 'Search', 0, 0),
(20787, 'datatable_no_files', '', 0, 0),
(20792, 'datatable_first', 'First', 0, 0),
(20793, 'datatable_previous', 'Previous', 0, 0),
(20794, 'datatable_next', 'Next', 0, 0),
(20795, 'datatable_last', 'Last', 0, 0),
(20796, 'search_intro', 'Search or browse all publicly shared files on this site using the form below.', 0, 0),
(20798, 'home_search_files', 'SEARCH FILES', 0, 0),
(20801, 'public_files', 'public files', 0, 0),
(20816, 'subscriber_created', 'created', 1, 0),
(20817, 'subscriber_user', 'user', 1, 0),
(20818, 'subscriber_period', 'period', 1, 0),
(20819, 'subscriber_amount', 'amount', 1, 0),
(20820, 'subscriber_status', 'status', 1, 0),
(20821, 'dcr', 'dcr', 1, 0),
(20822, 'file_manager_your_files', 'Your Files', 0, 0),
(20823, 'file_manager', 'File Manager', 0, 0),
(20824, 'no_files_found_in_this_album', 'No files found within this folder. Drag & drop files to upload here or click \'Upload\' above.', 0, 0),
(20825, 'file_search_results', 'File Search Results', 0, 0),
(20826, 'no_files_found_in_search', 'No files found within folder or search criteria.', 0, 0),
(20827, 'recent_files', 'Recent Files', 0, 0),
(20829, 'account_file_details_select', 'Select', 0, 0),
(20830, 'account_file_details_select_file', 'Select File', 0, 0),
(20831, 'account_file_details_edit_file_info', 'Edit File Info', 0, 0),
(20832, 'file_details_download_file', 'Download File', 0, 0),
(20833, 'file_details_download', 'Download', 0, 0),
(20834, 'file_details_filesize', 'Filesize', 0, 0),
(20835, 'account_header_search_files', 'Search files...', 0, 0),
(20836, 'search_your_files', 'Search Your Files', 0, 0),
(20837, 'file_manager_all_folders', 'All Folders', 0, 0),
(20838, 'file_manager_upload_complete', 'Upload complete.', 0, 0),
(20839, 'enter_an_email_address_below_to_send_the_list_of_files', 'Enter an email address below to send the list of files via email once they\'re uploaded.', 0, 0),
(20840, 'select_album_below_to_store_intro_text_files', 'Select an album below to store these files in. All current uploads will be available within these albums.', 0, 0),
(20841, 'account_file_details_delete_file', 'Delete Image', 0, 0),
(20842, 'account_file_details_file_stats', 'Image Stats', 0, 0),
(20843, 'file_page_link', 'Image Page Link', 0, 0),
(20844, 'profile_folder', 'Folder:', 0, 0),
(20845, 'private_file', 'Private File - Only available via your account, or via a generated sharing url.', 0, 0),
(20846, 'your_folder', 'your folder', 0, 0),
(20847, 'file_folder', 'file folder', 0, 0),
(20848, 'file_is_not_publicly_shared_please_contact', 'File is not publicly shared. Please contact the owner and request they update the privacy settings.', 0, 0),
(20849, 'add_sub_folder', 'Add Sub Folder', 0, 0),
(20850, 'package_type', 'package type', 1, 0),
(20851, 'download_allowance', 'download allowance', 1, 0),
(20852, 'download_allowance_invalid', 'Please specify the download limit for this price.', 1, 0),
(20853, 'remaining_download_allowance', 'remaining download allowance', 0, 0),
(20854, 'folder_page_name', 'Folder', 0, 0),
(20855, 'folder_view', 'View', 0, 0),
(20856, 'folder_folder', 'Folder', 0, 0),
(20857, 'folder_meta_keywords', 'folder, images, file, your, interface, upload, download, site', 0, 0),
(20858, 'your_folders', 'your folders', 0, 0),
(20859, 'select_folder_below_to_store_intro_text_files', 'Select an folder below to store these files in. All current uploads will be available within these folders.', 0, 0),
(20860, 'folder_password_is_invalid', 'The folder password is invalid', 0, 0),
(20861, 'problem_updating_folder', 'There was a problem accessing the folder, please try again later.', 0, 0),
(20862, 'account_file_set_as_folder_cover', 'Set As Folder Cover', 0, 0),
(20863, 'no_files_found_in_this_folder', 'No files found within this folder. Drag & drop files to upload here or click \'Upload\' above.', 0, 0),
(20864, 'edit_folder_cover_image_description', 'Cover Image: (Url of the Image in Your Account)', 0, 0),
(20865, 'edit_folder_privacy', 'Folder Privacy:', 0, 0),
(20866, 'account_file_details_folder_not_publicly_shared', 'This file is not publicly shared. You will need to make it public before the recipient can view it.', 0, 0),
(20867, 'no_files_found_in_folder', 'No files found within this folder.', 0, 0),
(20868, 'registered user', 'registered user', 1, 0),
(20869, 'search_folders', 'Search Folders', 0, 0),
(20870, 'account_header_search_your_files', 'Search your files...', 0, 0),
(20871, 'default_folder_privacy', 'Default Folder Privacy', 0, 0),
(20872, 'stats_downloads', 'Downloads', 0, 0),
(20873, 'download_zip_file', 'Download Zip File', 0, 0),
(20874, 'edit_folder_share_on', 'Share On:', 0, 0),
(20877, 'share_on', 'Share On', 0, 0),
(20878, 'edit_folder_send_via_email', 'Send via Email:', 0, 0),
(20879, 'extra_message', 'extra message (optional)', 0, 0),
(20880, 'send', 'send', 0, 0),
(20881, 'email_folder_url_process_subject', 'Folder shared by [[[SHARED_BY_NAME]]] on [[[SITE_NAME]]]', 0, 0),
(20882, 'email_folder_url_process_content', '[[[SHARED_BY_NAME]]] has shared the following file with you via <a href=\'[[[WEB_ROOT]]]\'>[[[SITE_NAME]]]</a>:<br/><br/><strong>Folder Name:</strong> [[[FOLDER_NAME]]]<br/><strong>View:</strong> [[[FOLDER_URL]]]<br/><strong>From:</strong> [[[SHARED_BY_NAME]]] [[[SHARED_EMAIL_ADDRESS]]]<br/><strong>Message:</strong><br/>[[[EXTRA_MESSAGE]]]<br/><br/>Feel free to contact us if you have any difficulties viewing the folder.<br/><br/>Regards,<br/>[[[SITE_NAME]]] Admin', 0, 0),
(20884, 'email_folder_url_process_folder_send_via_email_to', 'Folder shared via email to [[[RECIPIENT_EMAIL_ADDRESS]]]', 0, 0),
(20885, 'account_file_details_create_copy', 'Create Copy', 0, 0),
(20886, 'copy_url_to_clipboard', 'Copy Url to Clipboard', 0, 0),
(20887, 'copy_urls_to_clipboard', 'Copy Url(s) to Clipboard', 0, 0),
(20888, 'admin_area_link', 'Admin Area', 0, 0),
(20891, 'no_files_found_in_this_folder_drag_and_drop', 'Drag & drop files or click here to upload', 0, 0),
(20892, 'document_can_not_be_previewed', '- Document can not be previewed as it is too big. Please download the file to view it.', 0, 0),
(20893, 'safari', 'safari', 0, 0),
(20894, 'account_file_details_clear_selected', 'Clear Selected', 0, 0),
(20895, 'edit_folder_privacy_notice_note', 'Note: You can not update this folder privacy settings as your account settings are set to make all files private, or the parent folder is set to private.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_failure`
--

CREATE TABLE `login_failure` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `username` varchar(65) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_success`
--

CREATE TABLE `login_success` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_success`
--

INSERT INTO `login_success` (`id`, `ip_address`, `date_added`, `user_id`, `country_code`) VALUES
(1, '192.168.1.226', '2015-12-31 13:38:04', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `log_resident_sms_send`
--

CREATE TABLE `log_resident_sms_send` (
  `send_id` int(10) UNSIGNED NOT NULL COMMENT 'primary key',
  `contact_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'contact_ID from resident_contact table',
  `receiver_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'status_ID from ref_sms_status table',
  `ann_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'ann_ID from communication_announcement',
  `send_Date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_resident_sms_send`
--

INSERT INTO `log_resident_sms_send` (`send_id`, `contact_ID`, `receiver_ID`, `ann_ID`, `send_Date`) VALUES
(1, 1, 1, 1, '2018-02-22 12:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `log_visit`
--

CREATE TABLE `log_visit` (
  `visit_ID` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `visitor_fName` varchar(50) DEFAULT NULL,
  `visitor_mName` varchar(50) DEFAULT NULL,
  `visitor_lName` varchar(50) DEFAULT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT NULL,
  `purpose_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'visitor purpose'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_visit`
--

INSERT INTO `log_visit` (`visit_ID`, `visitor_fName`, `visitor_mName`, `visitor_lName`, `suffix_ID`, `purpose_ID`) VALUES
(1, 'Chuchay', 'D', 'Chichoy', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manila_step`
--

CREATE TABLE `manila_step` (
  `step_id` int(15) NOT NULL,
  `k` varchar(100) NOT NULL,
  `l` varchar(100) NOT NULL,
  `r` varchar(100) NOT NULL,
  `n` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manila_step`
--

INSERT INTO `manila_step` (`step_id`, `k`, `l`, `r`, `n`) VALUES
(1, 'k1', 'l1', 'r1', 'n1'),
(1, 'qw', 'qw', 'qw', 'qw'),
(4, 'qedqw', 'qweqwe', 'qweqwe', 'qweqwe'),
(5, 'qwe', 'qwe', 'qwe', 'qwe'),
(5, 'eer', 'qwe', 'qwe', 'qwe'),
(5, '', '', '', ''),
(5, 'qwe', 'qsdcsd', 'qxdscw', ' adfcef'),
(6, '', '', '', ''),
(6, '', '', '', ''),
(6, '', '', '', ''),
(6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ms_blotter_type`
--

CREATE TABLE `ms_blotter_type` (
  `blotterType_id` int(11) NOT NULL,
  `blotterType_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ms_blotter_type`
--

INSERT INTO `ms_blotter_type` (`blotterType_id`, `blotterType_name`) VALUES
(1, 'Complaint'),
(2, 'Incident');

-- --------------------------------------------------------

--
-- Table structure for table `ms_incident`
--

CREATE TABLE `ms_incident` (
  `incident_id` int(11) NOT NULL,
  `case_incident` varchar(250) DEFAULT NULL,
  `incident_title` varchar(255) DEFAULT NULL,
  `date_incident` date DEFAULT NULL,
  `time_incident` time DEFAULT NULL,
  `date_reported` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `narrative` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `blotterType_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_incident_offender`
--

CREATE TABLE `ms_incident_offender` (
  `offender_id` int(11) NOT NULL,
  `incident_id` int(11) NOT NULL,
  `res_ID` int(11) DEFAULT NULL,
  `offender_name` varchar(255) DEFAULT NULL,
  `offender_gender` varchar(6) DEFAULT NULL,
  `offender_address` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `complainantType_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_reporting_person`
--

CREATE TABLE `ms_reporting_person` (
  `person_id` int(11) NOT NULL,
  `incident_id` int(11) NOT NULL,
  `res_ID` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `complainantType_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(3) NOT NULL,
  `official_fName` varchar(50) NOT NULL,
  `official_mName` varchar(20) NOT NULL,
  `official_lName` varchar(50) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `position` varchar(50) NOT NULL,
  `DateA` date NOT NULL,
  `DateE` date NOT NULL,
  `images` varchar(200) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `official_fName`, `official_mName`, `official_lName`, `gender`, `position`, `DateA`, `DateE`, `images`, `Description`) VALUES
(95, 'RACHEL', 'ZEN', 'VALMONTE', 'Female', 'Barangay Captain', '2018-03-07', '2018-02-28', '15319107_1073418996119283_3010125185919971840_n.jpg', 'asdasdasdas'),
(96, 'qweqwe', 'qweqwe', 'qweqwe', 'Male', 'Barangay Councilor', '2018-03-07', '2018-03-07', '1890510_780280112001925_2116960969_o.jpg', 'qweqwe'),
(97, 'qweqw', 'qweqwe', 'qweqweqweqweqwe', 'Male', 'Barangay Councilor', '2018-03-15', '2018-02-13', '22790914_1400063330121513_11385827_o.jpg', 'qweqwe'),
(98, 'qweqwe', 'qweqwe', 'qweqwe', 'Male', 'Barangay Treasurer', '2018-03-21', '2018-03-13', '1890510_780280112001925_2116960969_o.jpg', 'qweqweqwe'),
(99, 'qweqwe', 'qweqew', 'qweqwe', 'Male', 'Barangay Secretary', '2018-03-20', '2018-03-13', '12346299_1258553424160957_5872020942153347775_n.jpg', 'qweqweqw'),
(100, 'qweqweqweqweqwe', 'qwe', 'q', 'Male', 'Barangay Councilor', '2018-03-13', '2018-03-12', '1890510_780280112001925_2116960969_o.jpg', 'qweqw'),
(101, 'aezadskasd', 'asdasd', 'asdasdafafa ', 'Female', 'Barangay Councilor', '2018-03-07', '2018-03-15', '15319107_1073418996119283_3010125185919971840_n.jpg', 'asdas '),
(102, 'agikk', 'agikkkkk', 'akasdkasd', 'Male', 'Barangay Councilor', '2018-03-15', '2018-03-14', '12346299_1258553424160957_5872020942153347775_n.jpg', 'adasdas');

-- --------------------------------------------------------

--
-- Table structure for table `outsider_details`
--

CREATE TABLE `outsider_details` (
  `outsider_ID` int(11) UNSIGNED NOT NULL,
  `outsider_fName` varchar(50) DEFAULT NULL,
  `outsider_mName` varchar(50) DEFAULT NULL,
  `outsider_lName` varchar(50) DEFAULT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT NULL,
  `gender_ID` int(11) UNSIGNED DEFAULT NULL,
  `outsider_telnum` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `outsider_details`
--

INSERT INTO `outsider_details` (`outsider_ID`, `outsider_fName`, `outsider_mName`, `outsider_lName`, `suffix_ID`, `gender_ID`, `outsider_telnum`) VALUES
(1, 'outsider', 'outsider', 'outsider', NULL, 1, '09999999'),
(2, 'outsider2', 'outsider2', 'outsider2', NULL, 2, '09999999');

-- --------------------------------------------------------

--
-- Table structure for table `payment_log`
--

CREATE TABLE `payment_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `amount` float(9,2) NOT NULL,
  `currency_code` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `from_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `to_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `request_log` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_method` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE `plugin` (
  `id` int(11) NOT NULL,
  `plugin_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `folder_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `plugin_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_installed` int(1) NOT NULL DEFAULT 0,
  `date_installed` datetime DEFAULT NULL,
  `plugin_settings` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `plugin_enabled` int(1) NOT NULL DEFAULT 1,
  `load_order` int(3) DEFAULT 999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plugin`
--

INSERT INTO `plugin` (`id`, `plugin_name`, `folder_name`, `plugin_description`, `is_installed`, `date_installed`, `plugin_settings`, `plugin_enabled`, `load_order`) VALUES
(28, 'Social Login', 'sociallogin', 'Login with your Facebook, Twitter or Google+ Account.', 1, NULL, '{\"facebook_enabled\":0,\"facebook_application_id\":\"\",\"facebook_application_secret\":\"\",\"twitter_enabled\":0,\"twitter_application_key\":\"\",\"twitter_application_secret\":\"\",\"google_enabled\":0,\"google_application_id\":\"\",\"google_application_secret\":\"\",\"aol_enabled\":0,\"instagram_enabled\":0,\"instagram_application_key\":\"\",\"instagram_application_secret\":\"\",\"foursquare_enabled\":0,\"foursquare_application_id\":\"\",\"foursquare_application_secret\":\"\",\"linkedin_enabled\":0,\"linkedin_application_key\":\"\",\"linkedin_application_secret\":\"\"}', 1, 999),
(41, 'File Import', 'fileimport', 'Batch import your existing files.', 1, NULL, '', 0, 999),
(58, 'File Previewer', 'filepreviewer', 'Display files directly within the file manager.', 1, NULL, '{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1,\"caching\":1,\"image_quality\":90}', 1, 999);

-- --------------------------------------------------------

--
-- Table structure for table `plugin_filepreviewer_meta`
--

CREATE TABLE `plugin_filepreviewer_meta` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `width` int(8) NOT NULL,
  `height` int(8) NOT NULL,
  `raw_data` text DEFAULT NULL,
  `date_taken` datetime DEFAULT NULL,
  `image_colors` varchar(100) DEFAULT NULL,
  `image_bg_color` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_filepreviewer_watermark`
--

CREATE TABLE `plugin_filepreviewer_watermark` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `image_content` blob NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'images'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `premium_order`
--

CREATE TABLE `premium_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_hash` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_level_pricing_id` int(11) DEFAULT NULL,
  `days` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_status` enum('pending','cancelled','completed') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `upgrade_file_id` int(11) DEFAULT NULL,
  `upgrade_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_address`
--

CREATE TABLE `ref_address` (
  `addressType_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `addressType_Name` varchar(25) DEFAULT NULL COMMENT 'addressType Name like/Prmy/Scnd'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ref_address`
--

INSERT INTO `ref_address` (`addressType_ID`, `addressType_Name`) VALUES
(1, 'Permanent'),
(2, 'Present'),
(3, 'Birth Place');

-- --------------------------------------------------------

--
-- Table structure for table `ref_blotter`
--

CREATE TABLE `ref_blotter` (
  `blotterType_ID` int(11) UNSIGNED NOT NULL,
  `blotterType_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_blotter`
--

INSERT INTO `ref_blotter` (`blotterType_ID`, `blotterType_Name`) VALUES
(1, 'Complain'),
(2, 'Incident');

-- --------------------------------------------------------

--
-- Table structure for table `ref_blotter_status`
--

CREATE TABLE `ref_blotter_status` (
  `bStat_ID` int(11) UNSIGNED NOT NULL,
  `bState_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_blotter_status`
--

INSERT INTO `ref_blotter_status` (`bStat_ID`, `bState_Name`) VALUES
(1, 'Solved'),
(2, 'Unsolved');

-- --------------------------------------------------------

--
-- Table structure for table `ref_brgy`
--

CREATE TABLE `ref_brgy` (
  `brgy_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `brgy_psgcCode` varchar(100) DEFAULT NULL,
  `brgy_Name` varchar(100) DEFAULT NULL,
  `region_Code` varchar(100) DEFAULT NULL,
  `province_Code` varchar(100) DEFAULT NULL,
  `citymun_Code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ref_brgy`
--

INSERT INTO `ref_brgy` (`brgy_ID`, `brgy_psgcCode`, `brgy_Name`, `region_Code`, `province_Code`, `citymun_Code`) VALUES
(10205, '042110001', 'Agus-us', '04', '0421', '042110'),
(10206, '042110002', 'Alulod', '04', '0421', '042110'),
(10207, '042110003', 'Banaba Cerca', '04', '0421', '042110'),
(10208, '042110004', 'Banaba Lejos', '04', '0421', '042110'),
(10209, '042110005', 'Bancod', '04', '0421', '042110'),
(10210, '042110006', 'Buna Cerca', '04', '0421', '042110'),
(10211, '042110007', 'Buna Lejos I', '04', '0421', '042110'),
(10212, '042110008', 'Calumpang Cerca', '04', '0421', '042110'),
(10213, '042110009', 'Calumpang Lejos I', '04', '0421', '042110'),
(10214, '042110010', 'Carasuchi', '04', '0421', '042110'),
(10215, '042110011', 'Kayquit I', '04', '0421', '042110'),
(10216, '042110012', 'Daine I', '04', '0421', '042110'),
(10217, '042110013', 'Guyam Malaki', '04', '0421', '042110'),
(10218, '042110014', 'Guyam Munti', '04', '0421', '042110'),
(10219, '042110015', 'Harasan', '04', '0421', '042110'),
(10220, '042110016', 'Kaytambog', '04', '0421', '042110'),
(10221, '042110018', 'Limbon', '04', '0421', '042110'),
(10222, '042110019', 'Lumampong Balagbag', '04', '0421', '042110'),
(10223, '042110020', 'Lumampong Halayhay', '04', '0421', '042110'),
(10224, '042110021', 'Mahabangkahoy Lejos', '04', '0421', '042110'),
(10225, '042110022', 'Mahabangkahoy Cerca', '04', '0421', '042110'),
(10226, '042110023', 'Barangay 1 (Pob.)', '04', '0421', '042110'),
(10227, '042110024', 'Barangay 2 (Pob.)', '04', '0421', '042110'),
(10228, '042110025', 'Barangay 3 (Pob.)', '04', '0421', '042110'),
(10229, '042110026', 'Barangay 4 (Pob.)', '04', '0421', '042110'),
(10230, '042110027', 'Pulo', '04', '0421', '042110'),
(10231, '042110028', 'Tambo Balagbag', '04', '0421', '042110'),
(10232, '042110029', 'Tambo Ilaya', '04', '0421', '042110'),
(10233, '042110030', 'Tambo Malaki', '04', '0421', '042110'),
(10234, '042110031', 'Tambo Kulit', '04', '0421', '042110'),
(10235, '042110032', 'Buna Lejos II', '04', '0421', '042110'),
(10236, '042110033', 'Daine II', '04', '0421', '042110'),
(10237, '042110034', 'Kayquit II', '04', '0421', '042110'),
(10238, '042110035', 'Kayquit III', '04', '0421', '042110'),
(10239, '042110036', 'Kaytapos', '04', '0421', '042110'),
(10240, '042110037', 'Mataas na Lupa (Checkpoint)', '04', '0421', '042110');

-- --------------------------------------------------------

--
-- Table structure for table `ref_brgy_info`
--

CREATE TABLE `ref_brgy_info` (
  `brgyInfo_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `brgyInfo_History` text DEFAULT NULL,
  `brgyInfo_Mission` text DEFAULT NULL,
  `brgyInfo_Vision` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_brgy_info`
--

INSERT INTO `ref_brgy_info` (`brgyInfo_ID`, `brgyInfo_History`, `brgyInfo_Mission`, `brgyInfo_Vision`) VALUES
(1, '<div class=\"history\">asdasdasdasdasdasd</div>', '<div class=\"mission\">asdasdasdasdasdcxc3123</div>', '<div class=\"vission\">123zda123123213213</div>');

-- --------------------------------------------------------

--
-- Table structure for table `ref_citymun`
--

CREATE TABLE `ref_citymun` (
  `citymun_ID` int(255) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `citymun_psgcCode` varchar(100) DEFAULT NULL,
  `citymun_Name` varchar(100) DEFAULT NULL,
  `region_Code` varchar(100) DEFAULT NULL,
  `province_Code` varchar(100) DEFAULT NULL,
  `citymun_Code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ref_citymun`
--

INSERT INTO `ref_citymun` (`citymun_ID`, `citymun_psgcCode`, `citymun_Name`, `region_Code`, `province_Code`, `citymun_Code`) VALUES
(1, '012801000', 'ADAMS', '01', '0128', '012801'),
(2, '012802000', 'BACARRA', '01', '0128', '012802'),
(3, '012803000', 'BADOC', '01', '0128', '012803'),
(4, '012804000', 'BANGUI', '01', '0128', '012804'),
(5, '012805000', 'CITY OF BATAC', '01', '0128', '012805'),
(6, '012806000', 'BURGOS', '01', '0128', '012806'),
(7, '012807000', 'CARASI', '01', '0128', '012807'),
(8, '012808000', 'CURRIMAO', '01', '0128', '012808'),
(9, '012809000', 'DINGRAS', '01', '0128', '012809'),
(10, '012810000', 'DUMALNEG', '01', '0128', '012810'),
(11, '012811000', 'BANNA (ESPIRITU)', '01', '0128', '012811'),
(12, '012812000', 'LAOAG CITY (Capital)', '01', '0128', '012812'),
(13, '012813000', 'MARCOS', '01', '0128', '012813'),
(14, '012814000', 'NUEVA ERA', '01', '0128', '012814'),
(15, '012815000', 'PAGUDPUD', '01', '0128', '012815'),
(16, '012816000', 'PAOAY', '01', '0128', '012816'),
(17, '012817000', 'PASUQUIN', '01', '0128', '012817'),
(18, '012818000', 'PIDDIG', '01', '0128', '012818'),
(19, '012819000', 'PINILI', '01', '0128', '012819'),
(20, '012820000', 'SAN NICOLAS', '01', '0128', '012820'),
(21, '012821000', 'SARRAT', '01', '0128', '012821'),
(22, '012822000', 'SOLSONA', '01', '0128', '012822'),
(23, '012823000', 'VINTAR', '01', '0128', '012823'),
(24, '012901000', 'ALILEM', '01', '0129', '012901'),
(25, '012902000', 'BANAYOYO', '01', '0129', '012902'),
(26, '012903000', 'BANTAY', '01', '0129', '012903'),
(27, '012904000', 'BURGOS', '01', '0129', '012904'),
(28, '012905000', 'CABUGAO', '01', '0129', '012905'),
(29, '012906000', 'CITY OF CANDON', '01', '0129', '012906'),
(30, '012907000', 'CAOAYAN', '01', '0129', '012907'),
(31, '012908000', 'CERVANTES', '01', '0129', '012908'),
(32, '012909000', 'GALIMUYOD', '01', '0129', '012909'),
(33, '012910000', 'GREGORIO DEL PILAR (CONCEPCION)', '01', '0129', '012910'),
(34, '012911000', 'LIDLIDDA', '01', '0129', '012911'),
(35, '012912000', 'MAGSINGAL', '01', '0129', '012912'),
(36, '012913000', 'NAGBUKEL', '01', '0129', '012913'),
(37, '012914000', 'NARVACAN', '01', '0129', '012914'),
(38, '012915000', 'QUIRINO (ANGKAKI)', '01', '0129', '012915'),
(39, '012916000', 'SALCEDO (BAUGEN)', '01', '0129', '012916'),
(40, '012917000', 'SAN EMILIO', '01', '0129', '012917'),
(41, '012918000', 'SAN ESTEBAN', '01', '0129', '012918'),
(42, '012919000', 'SAN ILDEFONSO', '01', '0129', '012919'),
(43, '012920000', 'SAN JUAN (LAPOG)', '01', '0129', '012920'),
(44, '012921000', 'SAN VICENTE', '01', '0129', '012921'),
(45, '012922000', 'SANTA', '01', '0129', '012922'),
(46, '012923000', 'SANTA CATALINA', '01', '0129', '012923'),
(47, '012924000', 'SANTA CRUZ', '01', '0129', '012924'),
(48, '012925000', 'SANTA LUCIA', '01', '0129', '012925'),
(49, '012926000', 'SANTA MARIA', '01', '0129', '012926'),
(50, '012927000', 'SANTIAGO', '01', '0129', '012927'),
(51, '012928000', 'SANTO DOMINGO', '01', '0129', '012928'),
(52, '012929000', 'SIGAY', '01', '0129', '012929'),
(53, '012930000', 'SINAIT', '01', '0129', '012930'),
(54, '012931000', 'SUGPON', '01', '0129', '012931'),
(55, '012932000', 'SUYO', '01', '0129', '012932'),
(56, '012933000', 'TAGUDIN', '01', '0129', '012933'),
(57, '012934000', 'CITY OF VIGAN (Capital)', '01', '0129', '012934'),
(58, '013301000', 'AGOO', '01', '0133', '013301'),
(59, '013302000', 'ARINGAY', '01', '0133', '013302'),
(60, '013303000', 'BACNOTAN', '01', '0133', '013303'),
(61, '013304000', 'BAGULIN', '01', '0133', '013304'),
(62, '013305000', 'BALAOAN', '01', '0133', '013305'),
(63, '013306000', 'BANGAR', '01', '0133', '013306'),
(64, '013307000', 'BAUANG', '01', '0133', '013307'),
(65, '013308000', 'BURGOS', '01', '0133', '013308'),
(66, '013309000', 'CABA', '01', '0133', '013309'),
(67, '013310000', 'LUNA', '01', '0133', '013310'),
(68, '013311000', 'NAGUILIAN', '01', '0133', '013311'),
(69, '013312000', 'PUGO', '01', '0133', '013312'),
(70, '013313000', 'ROSARIO', '01', '0133', '013313'),
(71, '013314000', 'CITY OF SAN FERNANDO (Capital)', '01', '0133', '013314'),
(72, '013315000', 'SAN GABRIEL', '01', '0133', '013315'),
(73, '013316000', 'SAN JUAN', '01', '0133', '013316'),
(74, '013317000', 'SANTO TOMAS', '01', '0133', '013317'),
(75, '013318000', 'SANTOL', '01', '0133', '013318'),
(76, '013319000', 'SUDIPEN', '01', '0133', '013319'),
(77, '013320000', 'TUBAO', '01', '0133', '013320'),
(78, '015501000', 'AGNO', '01', '0155', '015501'),
(79, '015502000', 'AGUILAR', '01', '0155', '015502'),
(80, '015503000', 'CITY OF ALAMINOS', '01', '0155', '015503'),
(81, '015504000', 'ALCALA', '01', '0155', '015504'),
(82, '015505000', 'ANDA', '01', '0155', '015505'),
(83, '015506000', 'ASINGAN', '01', '0155', '015506'),
(84, '015507000', 'BALUNGAO', '01', '0155', '015507'),
(85, '015508000', 'BANI', '01', '0155', '015508'),
(86, '015509000', 'BASISTA', '01', '0155', '015509'),
(87, '015510000', 'BAUTISTA', '01', '0155', '015510'),
(88, '015511000', 'BAYAMBANG', '01', '0155', '015511'),
(89, '015512000', 'BINALONAN', '01', '0155', '015512'),
(90, '015513000', 'BINMALEY', '01', '0155', '015513'),
(91, '015514000', 'BOLINAO', '01', '0155', '015514'),
(92, '015515000', 'BUGALLON', '01', '0155', '015515'),
(93, '015516000', 'BURGOS', '01', '0155', '015516'),
(94, '015517000', 'CALASIAO', '01', '0155', '015517'),
(95, '015518000', 'DAGUPAN CITY', '01', '0155', '015518'),
(96, '015519000', 'DASOL', '01', '0155', '015519'),
(97, '015520000', 'INFANTA', '01', '0155', '015520'),
(98, '015521000', 'LABRADOR', '01', '0155', '015521'),
(99, '015522000', 'LINGAYEN (Capital)', '01', '0155', '015522'),
(100, '015523000', 'MABINI', '01', '0155', '015523'),
(101, '015524000', 'MALASIQUI', '01', '0155', '015524'),
(102, '015525000', 'MANAOAG', '01', '0155', '015525'),
(103, '015526000', 'MANGALDAN', '01', '0155', '015526'),
(104, '015527000', 'MANGATAREM', '01', '0155', '015527'),
(105, '015528000', 'MAPANDAN', '01', '0155', '015528'),
(106, '015529000', 'NATIVIDAD', '01', '0155', '015529'),
(107, '015530000', 'POZORRUBIO', '01', '0155', '015530'),
(108, '015531000', 'ROSALES', '01', '0155', '015531'),
(109, '015532000', 'SAN CARLOS CITY', '01', '0155', '015532'),
(110, '015533000', 'SAN FABIAN', '01', '0155', '015533'),
(111, '015534000', 'SAN JACINTO', '01', '0155', '015534'),
(112, '015535000', 'SAN MANUEL', '01', '0155', '015535'),
(113, '015536000', 'SAN NICOLAS', '01', '0155', '015536'),
(114, '015537000', 'SAN QUINTIN', '01', '0155', '015537'),
(115, '015538000', 'SANTA BARBARA', '01', '0155', '015538'),
(116, '015539000', 'SANTA MARIA', '01', '0155', '015539'),
(117, '015540000', 'SANTO TOMAS', '01', '0155', '015540'),
(118, '015541000', 'SISON', '01', '0155', '015541'),
(119, '015542000', 'SUAL', '01', '0155', '015542'),
(120, '015543000', 'TAYUG', '01', '0155', '015543'),
(121, '015544000', 'UMINGAN', '01', '0155', '015544'),
(122, '015545000', 'URBIZTONDO', '01', '0155', '015545'),
(123, '015546000', 'CITY OF URDANETA', '01', '0155', '015546'),
(124, '015547000', 'VILLASIS', '01', '0155', '015547'),
(125, '015548000', 'LAOAC', '01', '0155', '015548'),
(126, '020901000', 'BASCO (Capital)', '02', '0209', '020901'),
(127, '020902000', 'ITBAYAT', '02', '0209', '020902'),
(128, '020903000', 'IVANA', '02', '0209', '020903'),
(129, '020904000', 'MAHATAO', '02', '0209', '020904'),
(130, '020905000', 'SABTANG', '02', '0209', '020905'),
(131, '020906000', 'UYUGAN', '02', '0209', '020906'),
(132, '021501000', 'ABULUG', '02', '0215', '021501'),
(133, '021502000', 'ALCALA', '02', '0215', '021502'),
(134, '021503000', 'ALLACAPAN', '02', '0215', '021503'),
(135, '021504000', 'AMULUNG', '02', '0215', '021504'),
(136, '021505000', 'APARRI', '02', '0215', '021505'),
(137, '021506000', 'BAGGAO', '02', '0215', '021506'),
(138, '021507000', 'BALLESTEROS', '02', '0215', '021507'),
(139, '021508000', 'BUGUEY', '02', '0215', '021508'),
(140, '021509000', 'CALAYAN', '02', '0215', '021509'),
(141, '021510000', 'CAMALANIUGAN', '02', '0215', '021510'),
(142, '021511000', 'CLAVERIA', '02', '0215', '021511'),
(143, '021512000', 'ENRILE', '02', '0215', '021512'),
(144, '021513000', 'GATTARAN', '02', '0215', '021513'),
(145, '021514000', 'GONZAGA', '02', '0215', '021514'),
(146, '021515000', 'IGUIG', '02', '0215', '021515'),
(147, '021516000', 'LAL-LO', '02', '0215', '021516'),
(148, '021517000', 'LASAM', '02', '0215', '021517'),
(149, '021518000', 'PAMPLONA', '02', '0215', '021518'),
(150, '021519000', 'PEÑABLANCA', '02', '0215', '021519'),
(151, '021520000', 'PIAT', '02', '0215', '021520'),
(152, '021521000', 'RIZAL', '02', '0215', '021521'),
(153, '021522000', 'SANCHEZ-MIRA', '02', '0215', '021522'),
(154, '021523000', 'SANTA ANA', '02', '0215', '021523'),
(155, '021524000', 'SANTA PRAXEDES', '02', '0215', '021524'),
(156, '021525000', 'SANTA TERESITA', '02', '0215', '021525'),
(157, '021526000', 'SANTO NIÑO (FAIRE)', '02', '0215', '021526'),
(158, '021527000', 'SOLANA', '02', '0215', '021527'),
(159, '021528000', 'TUAO', '02', '0215', '021528'),
(160, '021529000', 'TUGUEGARAO CITY (Capital)', '02', '0215', '021529'),
(161, '023101000', 'ALICIA', '02', '0231', '023101'),
(162, '023102000', 'ANGADANAN', '02', '0231', '023102'),
(163, '023103000', 'AURORA', '02', '0231', '023103'),
(164, '023104000', 'BENITO SOLIVEN', '02', '0231', '023104'),
(165, '023105000', 'BURGOS', '02', '0231', '023105'),
(166, '023106000', 'CABAGAN', '02', '0231', '023106'),
(167, '023107000', 'CABATUAN', '02', '0231', '023107'),
(168, '023108000', 'CITY OF CAUAYAN', '02', '0231', '023108'),
(169, '023109000', 'CORDON', '02', '0231', '023109'),
(170, '023110000', 'DINAPIGUE', '02', '0231', '023110'),
(171, '023111000', 'DIVILACAN', '02', '0231', '023111'),
(172, '023112000', 'ECHAGUE', '02', '0231', '023112'),
(173, '023113000', 'GAMU', '02', '0231', '023113'),
(174, '023114000', 'ILAGAN CITY (Capital)', '02', '0231', '023114'),
(175, '023115000', 'JONES', '02', '0231', '023115'),
(176, '023116000', 'LUNA', '02', '0231', '023116'),
(177, '023117000', 'MACONACON', '02', '0231', '023117'),
(178, '023118000', 'DELFIN ALBANO (MAGSAYSAY)', '02', '0231', '023118'),
(179, '023119000', 'MALLIG', '02', '0231', '023119'),
(180, '023120000', 'NAGUILIAN', '02', '0231', '023120'),
(181, '023121000', 'PALANAN', '02', '0231', '023121'),
(182, '023122000', 'QUEZON', '02', '0231', '023122'),
(183, '023123000', 'QUIRINO', '02', '0231', '023123'),
(184, '023124000', 'RAMON', '02', '0231', '023124'),
(185, '023125000', 'REINA MERCEDES', '02', '0231', '023125'),
(186, '023126000', 'ROXAS', '02', '0231', '023126'),
(187, '023127000', 'SAN AGUSTIN', '02', '0231', '023127'),
(188, '023128000', 'SAN GUILLERMO', '02', '0231', '023128'),
(189, '023129000', 'SAN ISIDRO', '02', '0231', '023129'),
(190, '023130000', 'SAN MANUEL', '02', '0231', '023130'),
(191, '023131000', 'SAN MARIANO', '02', '0231', '023131'),
(192, '023132000', 'SAN MATEO', '02', '0231', '023132'),
(193, '023133000', 'SAN PABLO', '02', '0231', '023133'),
(194, '023134000', 'SANTA MARIA', '02', '0231', '023134'),
(195, '023135000', 'CITY OF SANTIAGO', '02', '0231', '023135'),
(196, '023136000', 'SANTO TOMAS', '02', '0231', '023136'),
(197, '023137000', 'TUMAUINI', '02', '0231', '023137'),
(198, '025001000', 'AMBAGUIO', '02', '0250', '025001'),
(199, '025002000', 'ARITAO', '02', '0250', '025002'),
(200, '025003000', 'BAGABAG', '02', '0250', '025003'),
(201, '025004000', 'BAMBANG', '02', '0250', '025004'),
(202, '025005000', 'BAYOMBONG (Capital)', '02', '0250', '025005'),
(203, '025006000', 'DIADI', '02', '0250', '025006'),
(204, '025007000', 'DUPAX DEL NORTE', '02', '0250', '025007'),
(205, '025008000', 'DUPAX DEL SUR', '02', '0250', '025008'),
(206, '025009000', 'KASIBU', '02', '0250', '025009'),
(207, '025010000', 'KAYAPA', '02', '0250', '025010'),
(208, '025011000', 'QUEZON', '02', '0250', '025011'),
(209, '025012000', 'SANTA FE', '02', '0250', '025012'),
(210, '025013000', 'SOLANO', '02', '0250', '025013'),
(211, '025014000', 'VILLAVERDE', '02', '0250', '025014'),
(212, '025015000', 'ALFONSO CASTANEDA', '02', '0250', '025015'),
(213, '025701000', 'AGLIPAY', '02', '0257', '025701'),
(214, '025702000', 'CABARROGUIS (Capital)', '02', '0257', '025702'),
(215, '025703000', 'DIFFUN', '02', '0257', '025703'),
(216, '025704000', 'MADDELA', '02', '0257', '025704'),
(217, '025705000', 'SAGUDAY', '02', '0257', '025705'),
(218, '025706000', 'NAGTIPUNAN', '02', '0257', '025706'),
(219, '030801000', 'ABUCAY', '03', '0308', '030801'),
(220, '030802000', 'BAGAC', '03', '0308', '030802'),
(221, '030803000', 'CITY OF BALANGA (Capital)', '03', '0308', '030803'),
(222, '030804000', 'DINALUPIHAN', '03', '0308', '030804'),
(223, '030805000', 'HERMOSA', '03', '0308', '030805'),
(224, '030806000', 'LIMAY', '03', '0308', '030806'),
(225, '030807000', 'MARIVELES', '03', '0308', '030807'),
(226, '030808000', 'MORONG', '03', '0308', '030808'),
(227, '030809000', 'ORANI', '03', '0308', '030809'),
(228, '030810000', 'ORION', '03', '0308', '030810'),
(229, '030811000', 'PILAR', '03', '0308', '030811'),
(230, '030812000', 'SAMAL', '03', '0308', '030812'),
(231, '031401000', 'ANGAT', '03', '0314', '031401'),
(232, '031402000', 'BALAGTAS (BIGAA)', '03', '0314', '031402'),
(233, '031403000', 'BALIUAG', '03', '0314', '031403'),
(234, '031404000', 'BOCAUE', '03', '0314', '031404'),
(235, '031405000', 'BULACAN', '03', '0314', '031405'),
(236, '031406000', 'BUSTOS', '03', '0314', '031406'),
(237, '031407000', 'CALUMPIT', '03', '0314', '031407'),
(238, '031408000', 'GUIGUINTO', '03', '0314', '031408'),
(239, '031409000', 'HAGONOY', '03', '0314', '031409'),
(240, '031410000', 'CITY OF MALOLOS (Capital)', '03', '0314', '031410'),
(241, '031411000', 'MARILAO', '03', '0314', '031411'),
(242, '031412000', 'CITY OF MEYCAUAYAN', '03', '0314', '031412'),
(243, '031413000', 'NORZAGARAY', '03', '0314', '031413'),
(244, '031414000', 'OBANDO', '03', '0314', '031414'),
(245, '031415000', 'PANDI', '03', '0314', '031415'),
(246, '031416000', 'PAOMBONG', '03', '0314', '031416'),
(247, '031417000', 'PLARIDEL', '03', '0314', '031417'),
(248, '031418000', 'PULILAN', '03', '0314', '031418'),
(249, '031419000', 'SAN ILDEFONSO', '03', '0314', '031419'),
(250, '031420000', 'CITY OF SAN JOSE DEL MONTE', '03', '0314', '031420'),
(251, '031421000', 'SAN MIGUEL', '03', '0314', '031421'),
(252, '031422000', 'SAN RAFAEL', '03', '0314', '031422'),
(253, '031423000', 'SANTA MARIA', '03', '0314', '031423'),
(254, '031424000', 'DOÑA REMEDIOS TRINIDAD', '03', '0314', '031424'),
(255, '034901000', 'ALIAGA', '03', '0349', '034901'),
(256, '034902000', 'BONGABON', '03', '0349', '034902'),
(257, '034903000', 'CABANATUAN CITY', '03', '0349', '034903'),
(258, '034904000', 'CABIAO', '03', '0349', '034904'),
(259, '034905000', 'CARRANGLAN', '03', '0349', '034905'),
(260, '034906000', 'CUYAPO', '03', '0349', '034906'),
(261, '034907000', 'GABALDON (BITULOK & SABANI)', '03', '0349', '034907'),
(262, '034908000', 'CITY OF GAPAN', '03', '0349', '034908'),
(263, '034909000', 'GENERAL MAMERTO NATIVIDAD', '03', '0349', '034909'),
(264, '034910000', 'GENERAL TINIO (PAPAYA)', '03', '0349', '034910'),
(265, '034911000', 'GUIMBA', '03', '0349', '034911'),
(266, '034912000', 'JAEN', '03', '0349', '034912'),
(267, '034913000', 'LAUR', '03', '0349', '034913'),
(268, '034914000', 'LICAB', '03', '0349', '034914'),
(269, '034915000', 'LLANERA', '03', '0349', '034915'),
(270, '034916000', 'LUPAO', '03', '0349', '034916'),
(271, '034917000', 'SCIENCE CITY OF MUÑOZ', '03', '0349', '034917'),
(272, '034918000', 'NAMPICUAN', '03', '0349', '034918'),
(273, '034919000', 'PALAYAN CITY (Capital)', '03', '0349', '034919'),
(274, '034920000', 'PANTABANGAN', '03', '0349', '034920'),
(275, '034921000', 'PEÑARANDA', '03', '0349', '034921'),
(276, '034922000', 'QUEZON', '03', '0349', '034922'),
(277, '034923000', 'RIZAL', '03', '0349', '034923'),
(278, '034924000', 'SAN ANTONIO', '03', '0349', '034924'),
(279, '034925000', 'SAN ISIDRO', '03', '0349', '034925'),
(280, '034926000', 'SAN JOSE CITY', '03', '0349', '034926'),
(281, '034927000', 'SAN LEONARDO', '03', '0349', '034927'),
(282, '034928000', 'SANTA ROSA', '03', '0349', '034928'),
(283, '034929000', 'SANTO DOMINGO', '03', '0349', '034929'),
(284, '034930000', 'TALAVERA', '03', '0349', '034930'),
(285, '034931000', 'TALUGTUG', '03', '0349', '034931'),
(286, '034932000', 'ZARAGOZA', '03', '0349', '034932'),
(287, '035401000', 'ANGELES CITY', '03', '0354', '035401'),
(288, '035402000', 'APALIT', '03', '0354', '035402'),
(289, '035403000', 'ARAYAT', '03', '0354', '035403'),
(290, '035404000', 'BACOLOR', '03', '0354', '035404'),
(291, '035405000', 'CANDABA', '03', '0354', '035405'),
(292, '035406000', 'FLORIDABLANCA', '03', '0354', '035406'),
(293, '035407000', 'GUAGUA', '03', '0354', '035407'),
(294, '035408000', 'LUBAO', '03', '0354', '035408'),
(295, '035409000', 'MABALACAT CITY', '03', '0354', '035409'),
(296, '035410000', 'MACABEBE', '03', '0354', '035410'),
(297, '035411000', 'MAGALANG', '03', '0354', '035411'),
(298, '035412000', 'MASANTOL', '03', '0354', '035412'),
(299, '035413000', 'MEXICO', '03', '0354', '035413'),
(300, '035414000', 'MINALIN', '03', '0354', '035414'),
(301, '035415000', 'PORAC', '03', '0354', '035415'),
(302, '035416000', 'CITY OF SAN FERNANDO (Capital)', '03', '0354', '035416'),
(303, '035417000', 'SAN LUIS', '03', '0354', '035417'),
(304, '035418000', 'SAN SIMON', '03', '0354', '035418'),
(305, '035419000', 'SANTA ANA', '03', '0354', '035419'),
(306, '035420000', 'SANTA RITA', '03', '0354', '035420'),
(307, '035421000', 'SANTO TOMAS', '03', '0354', '035421'),
(308, '035422000', 'SASMUAN (Sexmoan)', '03', '0354', '035422'),
(309, '036901000', 'ANAO', '03', '0369', '036901'),
(310, '036902000', 'BAMBAN', '03', '0369', '036902'),
(311, '036903000', 'CAMILING', '03', '0369', '036903'),
(312, '036904000', 'CAPAS', '03', '0369', '036904'),
(313, '036905000', 'CONCEPCION', '03', '0369', '036905'),
(314, '036906000', 'GERONA', '03', '0369', '036906'),
(315, '036907000', 'LA PAZ', '03', '0369', '036907'),
(316, '036908000', 'MAYANTOC', '03', '0369', '036908'),
(317, '036909000', 'MONCADA', '03', '0369', '036909'),
(318, '036910000', 'PANIQUI', '03', '0369', '036910'),
(319, '036911000', 'PURA', '03', '0369', '036911'),
(320, '036912000', 'RAMOS', '03', '0369', '036912'),
(321, '036913000', 'SAN CLEMENTE', '03', '0369', '036913'),
(322, '036914000', 'SAN MANUEL', '03', '0369', '036914'),
(323, '036915000', 'SANTA IGNACIA', '03', '0369', '036915'),
(324, '036916000', 'CITY OF TARLAC (Capital)', '03', '0369', '036916'),
(325, '036917000', 'VICTORIA', '03', '0369', '036917'),
(326, '036918000', 'SAN JOSE', '03', '0369', '036918'),
(327, '037101000', 'BOTOLAN', '03', '0371', '037101'),
(328, '037102000', 'CABANGAN', '03', '0371', '037102'),
(329, '037103000', 'CANDELARIA', '03', '0371', '037103'),
(330, '037104000', 'CASTILLEJOS', '03', '0371', '037104'),
(331, '037105000', 'IBA (Capital)', '03', '0371', '037105'),
(332, '037106000', 'MASINLOC', '03', '0371', '037106'),
(333, '037107000', 'OLONGAPO CITY', '03', '0371', '037107'),
(334, '037108000', 'PALAUIG', '03', '0371', '037108'),
(335, '037109000', 'SAN ANTONIO', '03', '0371', '037109'),
(336, '037110000', 'SAN FELIPE', '03', '0371', '037110'),
(337, '037111000', 'SAN MARCELINO', '03', '0371', '037111'),
(338, '037112000', 'SAN NARCISO', '03', '0371', '037112'),
(339, '037113000', 'SANTA CRUZ', '03', '0371', '037113'),
(340, '037114000', 'SUBIC', '03', '0371', '037114'),
(341, '037701000', 'BALER (Capital)', '03', '0377', '037701'),
(342, '037702000', 'CASIGURAN', '03', '0377', '037702'),
(343, '037703000', 'DILASAG', '03', '0377', '037703'),
(344, '037704000', 'DINALUNGAN', '03', '0377', '037704'),
(345, '037705000', 'DINGALAN', '03', '0377', '037705'),
(346, '037706000', 'DIPACULAO', '03', '0377', '037706'),
(347, '037707000', 'MARIA AURORA', '03', '0377', '037707'),
(348, '037708000', 'SAN LUIS', '03', '0377', '037708'),
(349, '041001000', 'AGONCILLO', '04', '0410', '041001'),
(350, '041002000', 'ALITAGTAG', '04', '0410', '041002'),
(351, '041003000', 'BALAYAN', '04', '0410', '041003'),
(352, '041004000', 'BALETE', '04', '0410', '041004'),
(353, '041005000', 'BATANGAS CITY (Capital)', '04', '0410', '041005'),
(354, '041006000', 'BAUAN', '04', '0410', '041006'),
(355, '041007000', 'CALACA', '04', '0410', '041007'),
(356, '041008000', 'CALATAGAN', '04', '0410', '041008'),
(357, '041009000', 'CUENCA', '04', '0410', '041009'),
(358, '041010000', 'IBAAN', '04', '0410', '041010'),
(359, '041011000', 'LAUREL', '04', '0410', '041011'),
(360, '041012000', 'LEMERY', '04', '0410', '041012'),
(361, '041013000', 'LIAN', '04', '0410', '041013'),
(362, '041014000', 'LIPA CITY', '04', '0410', '041014'),
(363, '041015000', 'LOBO', '04', '0410', '041015'),
(364, '041016000', 'MABINI', '04', '0410', '041016'),
(365, '041017000', 'MALVAR', '04', '0410', '041017'),
(366, '041018000', 'MATAASNAKAHOY', '04', '0410', '041018'),
(367, '041019000', 'NASUGBU', '04', '0410', '041019'),
(368, '041020000', 'PADRE GARCIA', '04', '0410', '041020'),
(369, '041021000', 'ROSARIO', '04', '0410', '041021'),
(370, '041022000', 'SAN JOSE', '04', '0410', '041022'),
(371, '041023000', 'SAN JUAN', '04', '0410', '041023'),
(372, '041024000', 'SAN LUIS', '04', '0410', '041024'),
(373, '041025000', 'SAN NICOLAS', '04', '0410', '041025'),
(374, '041026000', 'SAN PASCUAL', '04', '0410', '041026'),
(375, '041027000', 'SANTA TERESITA', '04', '0410', '041027'),
(376, '041028000', 'SANTO TOMAS', '04', '0410', '041028'),
(377, '041029000', 'TAAL', '04', '0410', '041029'),
(378, '041030000', 'TALISAY', '04', '0410', '041030'),
(379, '041031000', 'CITY OF TANAUAN', '04', '0410', '041031'),
(380, '041032000', 'TAYSAN', '04', '0410', '041032'),
(381, '041033000', 'TINGLOY', '04', '0410', '041033'),
(382, '041034000', 'TUY', '04', '0410', '041034'),
(383, '042101000', 'ALFONSO', '04', '0421', '042101'),
(384, '042102000', 'AMADEO', '04', '0421', '042102'),
(385, '042103000', 'BACOOR CITY', '04', '0421', '042103'),
(386, '042104000', 'CARMONA', '04', '0421', '042104'),
(387, '042105000', 'CAVITE CITY', '04', '0421', '042105'),
(388, '042106000', 'CITY OF DASMARIÑAS', '04', '0421', '042106'),
(389, '042107000', 'GENERAL EMILIO AGUINALDO', '04', '0421', '042107'),
(390, '042108000', 'GENERAL TRIAS', '04', '0421', '042108'),
(391, '042109000', 'IMUS CITY', '04', '0421', '042109'),
(392, '042110000', 'INDANG', '04', '0421', '042110'),
(393, '042111000', 'KAWIT', '04', '0421', '042111'),
(394, '042112000', 'MAGALLANES', '04', '0421', '042112'),
(395, '042113000', 'MARAGONDON', '04', '0421', '042113'),
(396, '042114000', 'MENDEZ (MENDEZ-NUÑEZ)', '04', '0421', '042114'),
(397, '042115000', 'NAIC', '04', '0421', '042115'),
(398, '042116000', 'NOVELETA', '04', '0421', '042116'),
(399, '042117000', 'ROSARIO', '04', '0421', '042117'),
(400, '042118000', 'SILANG', '04', '0421', '042118'),
(401, '042119000', 'TAGAYTAY CITY', '04', '0421', '042119'),
(402, '042120000', 'TANZA', '04', '0421', '042120'),
(403, '042121000', 'TERNATE', '04', '0421', '042121'),
(404, '042122000', 'TRECE MARTIRES CITY (Capital)', '04', '0421', '042122'),
(405, '042123000', 'GEN. MARIANO ALVAREZ', '04', '0421', '042123'),
(406, '043401000', 'ALAMINOS', '04', '0434', '043401'),
(407, '043402000', 'BAY', '04', '0434', '043402'),
(408, '043403000', 'CITY OF BIÑAN', '04', '0434', '043403'),
(409, '043404000', 'CABUYAO CITY', '04', '0434', '043404'),
(410, '043405000', 'CITY OF CALAMBA', '04', '0434', '043405'),
(411, '043406000', 'CALAUAN', '04', '0434', '043406'),
(412, '043407000', 'CAVINTI', '04', '0434', '043407'),
(413, '043408000', 'FAMY', '04', '0434', '043408'),
(414, '043409000', 'KALAYAAN', '04', '0434', '043409'),
(415, '043410000', 'LILIW', '04', '0434', '043410'),
(416, '043411000', 'LOS BAÑOS', '04', '0434', '043411'),
(417, '043412000', 'LUISIANA', '04', '0434', '043412'),
(418, '043413000', 'LUMBAN', '04', '0434', '043413'),
(419, '043414000', 'MABITAC', '04', '0434', '043414'),
(420, '043415000', 'MAGDALENA', '04', '0434', '043415'),
(421, '043416000', 'MAJAYJAY', '04', '0434', '043416'),
(422, '043417000', 'NAGCARLAN', '04', '0434', '043417'),
(423, '043418000', 'PAETE', '04', '0434', '043418'),
(424, '043419000', 'PAGSANJAN', '04', '0434', '043419'),
(425, '043420000', 'PAKIL', '04', '0434', '043420'),
(426, '043421000', 'PANGIL', '04', '0434', '043421'),
(427, '043422000', 'PILA', '04', '0434', '043422'),
(428, '043423000', 'RIZAL', '04', '0434', '043423'),
(429, '043424000', 'SAN PABLO CITY', '04', '0434', '043424'),
(430, '043425000', 'CITY OF SAN PEDRO', '04', '0434', '043425'),
(431, '043426000', 'SANTA CRUZ (Capital)', '04', '0434', '043426'),
(432, '043427000', 'SANTA MARIA', '04', '0434', '043427'),
(433, '043428000', 'CITY OF SANTA ROSA', '04', '0434', '043428'),
(434, '043429000', 'SINILOAN', '04', '0434', '043429'),
(435, '043430000', 'VICTORIA', '04', '0434', '043430'),
(436, '045601000', 'AGDANGAN', '04', '0456', '045601'),
(437, '045602000', 'ALABAT', '04', '0456', '045602'),
(438, '045603000', 'ATIMONAN', '04', '0456', '045603'),
(439, '045605000', 'BUENAVISTA', '04', '0456', '045605'),
(440, '045606000', 'BURDEOS', '04', '0456', '045606'),
(441, '045607000', 'CALAUAG', '04', '0456', '045607'),
(442, '045608000', 'CANDELARIA', '04', '0456', '045608'),
(443, '045610000', 'CATANAUAN', '04', '0456', '045610'),
(444, '045615000', 'DOLORES', '04', '0456', '045615'),
(445, '045616000', 'GENERAL LUNA', '04', '0456', '045616'),
(446, '045617000', 'GENERAL NAKAR', '04', '0456', '045617'),
(447, '045618000', 'GUINAYANGAN', '04', '0456', '045618'),
(448, '045619000', 'GUMACA', '04', '0456', '045619'),
(449, '045620000', 'INFANTA', '04', '0456', '045620'),
(450, '045621000', 'JOMALIG', '04', '0456', '045621'),
(451, '045622000', 'LOPEZ', '04', '0456', '045622'),
(452, '045623000', 'LUCBAN', '04', '0456', '045623'),
(453, '045624000', 'LUCENA CITY (Capital)', '04', '0456', '045624'),
(454, '045625000', 'MACALELON', '04', '0456', '045625'),
(455, '045627000', 'MAUBAN', '04', '0456', '045627'),
(456, '045628000', 'MULANAY', '04', '0456', '045628'),
(457, '045629000', 'PADRE BURGOS', '04', '0456', '045629'),
(458, '045630000', 'PAGBILAO', '04', '0456', '045630'),
(459, '045631000', 'PANUKULAN', '04', '0456', '045631'),
(460, '045632000', 'PATNANUNGAN', '04', '0456', '045632'),
(461, '045633000', 'PEREZ', '04', '0456', '045633'),
(462, '045634000', 'PITOGO', '04', '0456', '045634'),
(463, '045635000', 'PLARIDEL', '04', '0456', '045635'),
(464, '045636000', 'POLILLO', '04', '0456', '045636'),
(465, '045637000', 'QUEZON', '04', '0456', '045637'),
(466, '045638000', 'REAL', '04', '0456', '045638'),
(467, '045639000', 'SAMPALOC', '04', '0456', '045639'),
(468, '045640000', 'SAN ANDRES', '04', '0456', '045640'),
(469, '045641000', 'SAN ANTONIO', '04', '0456', '045641'),
(470, '045642000', 'SAN FRANCISCO (AURORA)', '04', '0456', '045642'),
(471, '045644000', 'SAN NARCISO', '04', '0456', '045644'),
(472, '045645000', 'SARIAYA', '04', '0456', '045645'),
(473, '045646000', 'TAGKAWAYAN', '04', '0456', '045646'),
(474, '045647000', 'CITY OF TAYABAS', '04', '0456', '045647'),
(475, '045648000', 'TIAONG', '04', '0456', '045648'),
(476, '045649000', 'UNISAN', '04', '0456', '045649'),
(477, '045801000', 'ANGONO', '04', '0458', '045801'),
(478, '045802000', 'CITY OF ANTIPOLO', '04', '0458', '045802'),
(479, '045803000', 'BARAS', '04', '0458', '045803'),
(480, '045804000', 'BINANGONAN', '04', '0458', '045804'),
(481, '045805000', 'CAINTA', '04', '0458', '045805'),
(482, '045806000', 'CARDONA', '04', '0458', '045806'),
(483, '045807000', 'JALA-JALA', '04', '0458', '045807'),
(484, '045808000', 'RODRIGUEZ (MONTALBAN)', '04', '0458', '045808'),
(485, '045809000', 'MORONG', '04', '0458', '045809'),
(486, '045810000', 'PILILLA', '04', '0458', '045810'),
(487, '045811000', 'SAN MATEO', '04', '0458', '045811'),
(488, '045812000', 'TANAY', '04', '0458', '045812'),
(489, '045813000', 'TAYTAY', '04', '0458', '045813'),
(490, '045814000', 'TERESA', '04', '0458', '045814'),
(491, '174001000', 'BOAC (Capital)', '17', '1740', '174001'),
(492, '174002000', 'BUENAVISTA', '17', '1740', '174002'),
(493, '174003000', 'GASAN', '17', '1740', '174003'),
(494, '174004000', 'MOGPOG', '17', '1740', '174004'),
(495, '174005000', 'SANTA CRUZ', '17', '1740', '174005'),
(496, '174006000', 'TORRIJOS', '17', '1740', '174006'),
(497, '175101000', 'ABRA DE ILOG', '17', '1751', '175101'),
(498, '175102000', 'CALINTAAN', '17', '1751', '175102'),
(499, '175103000', 'LOOC', '17', '1751', '175103'),
(500, '175104000', 'LUBANG', '17', '1751', '175104'),
(501, '175105000', 'MAGSAYSAY', '17', '1751', '175105'),
(502, '175106000', 'MAMBURAO (Capital)', '17', '1751', '175106'),
(503, '175107000', 'PALUAN', '17', '1751', '175107'),
(504, '175108000', 'RIZAL', '17', '1751', '175108'),
(505, '175109000', 'SABLAYAN', '17', '1751', '175109'),
(506, '175110000', 'SAN JOSE', '17', '1751', '175110'),
(507, '175111000', 'SANTA CRUZ', '17', '1751', '175111'),
(508, '175201000', 'BACO', '17', '1752', '175201'),
(509, '175202000', 'BANSUD', '17', '1752', '175202'),
(510, '175203000', 'BONGABONG', '17', '1752', '175203'),
(511, '175204000', 'BULALACAO (SAN PEDRO)', '17', '1752', '175204'),
(512, '175205000', 'CITY OF CALAPAN (Capital)', '17', '1752', '175205'),
(513, '175206000', 'GLORIA', '17', '1752', '175206'),
(514, '175207000', 'MANSALAY', '17', '1752', '175207'),
(515, '175208000', 'NAUJAN', '17', '1752', '175208'),
(516, '175209000', 'PINAMALAYAN', '17', '1752', '175209'),
(517, '175210000', 'POLA', '17', '1752', '175210'),
(518, '175211000', 'PUERTO GALERA', '17', '1752', '175211'),
(519, '175212000', 'ROXAS', '17', '1752', '175212'),
(520, '175213000', 'SAN TEODORO', '17', '1752', '175213'),
(521, '175214000', 'SOCORRO', '17', '1752', '175214'),
(522, '175215000', 'VICTORIA', '17', '1752', '175215'),
(523, '175301000', 'ABORLAN', '17', '1753', '175301'),
(524, '175302000', 'AGUTAYA', '17', '1753', '175302'),
(525, '175303000', 'ARACELI', '17', '1753', '175303'),
(526, '175304000', 'BALABAC', '17', '1753', '175304'),
(527, '175305000', 'BATARAZA', '17', '1753', '175305'),
(528, '175306000', 'BROOKE\'S POINT', '17', '1753', '175306'),
(529, '175307000', 'BUSUANGA', '17', '1753', '175307'),
(530, '175308000', 'CAGAYANCILLO', '17', '1753', '175308'),
(531, '175309000', 'CORON', '17', '1753', '175309'),
(532, '175310000', 'CUYO', '17', '1753', '175310'),
(533, '175311000', 'DUMARAN', '17', '1753', '175311'),
(534, '175312000', 'EL NIDO (BACUIT)', '17', '1753', '175312'),
(535, '175313000', 'LINAPACAN', '17', '1753', '175313'),
(536, '175314000', 'MAGSAYSAY', '17', '1753', '175314'),
(537, '175315000', 'NARRA', '17', '1753', '175315'),
(538, '175316000', 'PUERTO PRINCESA CITY (Capital)', '17', '1753', '175316'),
(539, '175317000', 'QUEZON', '17', '1753', '175317'),
(540, '175318000', 'ROXAS', '17', '1753', '175318'),
(541, '175319000', 'SAN VICENTE', '17', '1753', '175319'),
(542, '175320000', 'TAYTAY', '17', '1753', '175320'),
(543, '175321000', 'KALAYAAN', '17', '1753', '175321'),
(544, '175322000', 'CULION', '17', '1753', '175322'),
(545, '175323000', 'RIZAL (MARCOS)', '17', '1753', '175323'),
(546, '175324000', 'SOFRONIO ESPAÑOLA', '17', '1753', '175324'),
(547, '175901000', 'ALCANTARA', '17', '1759', '175901'),
(548, '175902000', 'BANTON', '17', '1759', '175902'),
(549, '175903000', 'CAJIDIOCAN', '17', '1759', '175903'),
(550, '175904000', 'CALATRAVA', '17', '1759', '175904'),
(551, '175905000', 'CONCEPCION', '17', '1759', '175905'),
(552, '175906000', 'CORCUERA', '17', '1759', '175906'),
(553, '175907000', 'LOOC', '17', '1759', '175907'),
(554, '175908000', 'MAGDIWANG', '17', '1759', '175908'),
(555, '175909000', 'ODIONGAN', '17', '1759', '175909'),
(556, '175910000', 'ROMBLON (Capital)', '17', '1759', '175910'),
(557, '175911000', 'SAN AGUSTIN', '17', '1759', '175911'),
(558, '175912000', 'SAN ANDRES', '17', '1759', '175912'),
(559, '175913000', 'SAN FERNANDO', '17', '1759', '175913'),
(560, '175914000', 'SAN JOSE', '17', '1759', '175914'),
(561, '175915000', 'SANTA FE', '17', '1759', '175915'),
(562, '175916000', 'FERROL', '17', '1759', '175916'),
(563, '175917000', 'SANTA MARIA (IMELDA)', '17', '1759', '175917'),
(564, '050501000', 'BACACAY', '05', '0505', '050501'),
(565, '050502000', 'CAMALIG', '05', '0505', '050502'),
(566, '050503000', 'DARAGA (LOCSIN)', '05', '0505', '050503'),
(567, '050504000', 'GUINOBATAN', '05', '0505', '050504'),
(568, '050505000', 'JOVELLAR', '05', '0505', '050505'),
(569, '050506000', 'LEGAZPI CITY (Capital)', '05', '0505', '050506'),
(570, '050507000', 'LIBON', '05', '0505', '050507'),
(571, '050508000', 'CITY OF LIGAO', '05', '0505', '050508'),
(572, '050509000', 'MALILIPOT', '05', '0505', '050509'),
(573, '050510000', 'MALINAO', '05', '0505', '050510'),
(574, '050511000', 'MANITO', '05', '0505', '050511'),
(575, '050512000', 'OAS', '05', '0505', '050512'),
(576, '050513000', 'PIO DURAN', '05', '0505', '050513'),
(577, '050514000', 'POLANGUI', '05', '0505', '050514'),
(578, '050515000', 'RAPU-RAPU', '05', '0505', '050515'),
(579, '050516000', 'SANTO DOMINGO (LIBOG)', '05', '0505', '050516'),
(580, '050517000', 'CITY OF TABACO', '05', '0505', '050517'),
(581, '050518000', 'TIWI', '05', '0505', '050518'),
(582, '051601000', 'BASUD', '05', '0516', '051601'),
(583, '051602000', 'CAPALONGA', '05', '0516', '051602'),
(584, '051603000', 'DAET (Capital)', '05', '0516', '051603'),
(585, '051604000', 'SAN LORENZO RUIZ (IMELDA)', '05', '0516', '051604'),
(586, '051605000', 'JOSE PANGANIBAN', '05', '0516', '051605'),
(587, '051606000', 'LABO', '05', '0516', '051606'),
(588, '051607000', 'MERCEDES', '05', '0516', '051607'),
(589, '051608000', 'PARACALE', '05', '0516', '051608'),
(590, '051609000', 'SAN VICENTE', '05', '0516', '051609'),
(591, '051610000', 'SANTA ELENA', '05', '0516', '051610'),
(592, '051611000', 'TALISAY', '05', '0516', '051611'),
(593, '051612000', 'VINZONS', '05', '0516', '051612'),
(594, '051701000', 'BAAO', '05', '0517', '051701'),
(595, '051702000', 'BALATAN', '05', '0517', '051702'),
(596, '051703000', 'BATO', '05', '0517', '051703'),
(597, '051704000', 'BOMBON', '05', '0517', '051704'),
(598, '051705000', 'BUHI', '05', '0517', '051705'),
(599, '051706000', 'BULA', '05', '0517', '051706'),
(600, '051707000', 'CABUSAO', '05', '0517', '051707'),
(601, '051708000', 'CALABANGA', '05', '0517', '051708'),
(602, '051709000', 'CAMALIGAN', '05', '0517', '051709'),
(603, '051710000', 'CANAMAN', '05', '0517', '051710'),
(604, '051711000', 'CARAMOAN', '05', '0517', '051711'),
(605, '051712000', 'DEL GALLEGO', '05', '0517', '051712'),
(606, '051713000', 'GAINZA', '05', '0517', '051713'),
(607, '051714000', 'GARCHITORENA', '05', '0517', '051714'),
(608, '051715000', 'GOA', '05', '0517', '051715'),
(609, '051716000', 'IRIGA CITY', '05', '0517', '051716'),
(610, '051717000', 'LAGONOY', '05', '0517', '051717'),
(611, '051718000', 'LIBMANAN', '05', '0517', '051718'),
(612, '051719000', 'LUPI', '05', '0517', '051719'),
(613, '051720000', 'MAGARAO', '05', '0517', '051720'),
(614, '051721000', 'MILAOR', '05', '0517', '051721'),
(615, '051722000', 'MINALABAC', '05', '0517', '051722'),
(616, '051723000', 'NABUA', '05', '0517', '051723'),
(617, '051724000', 'NAGA CITY', '05', '0517', '051724'),
(618, '051725000', 'OCAMPO', '05', '0517', '051725'),
(619, '051726000', 'PAMPLONA', '05', '0517', '051726'),
(620, '051727000', 'PASACAO', '05', '0517', '051727'),
(621, '051728000', 'PILI (Capital)', '05', '0517', '051728'),
(622, '051729000', 'PRESENTACION (PARUBCAN)', '05', '0517', '051729'),
(623, '051730000', 'RAGAY', '05', '0517', '051730'),
(624, '051731000', 'SAGÑAY', '05', '0517', '051731'),
(625, '051732000', 'SAN FERNANDO', '05', '0517', '051732'),
(626, '051733000', 'SAN JOSE', '05', '0517', '051733'),
(627, '051734000', 'SIPOCOT', '05', '0517', '051734'),
(628, '051735000', 'SIRUMA', '05', '0517', '051735'),
(629, '051736000', 'TIGAON', '05', '0517', '051736'),
(630, '051737000', 'TINAMBAC', '05', '0517', '051737'),
(631, '052001000', 'BAGAMANOC', '05', '0520', '052001'),
(632, '052002000', 'BARAS', '05', '0520', '052002'),
(633, '052003000', 'BATO', '05', '0520', '052003'),
(634, '052004000', 'CARAMORAN', '05', '0520', '052004'),
(635, '052005000', 'GIGMOTO', '05', '0520', '052005'),
(636, '052006000', 'PANDAN', '05', '0520', '052006'),
(637, '052007000', 'PANGANIBAN (PAYO)', '05', '0520', '052007'),
(638, '052008000', 'SAN ANDRES (CALOLBON)', '05', '0520', '052008'),
(639, '052009000', 'SAN MIGUEL', '05', '0520', '052009'),
(640, '052010000', 'VIGA', '05', '0520', '052010'),
(641, '052011000', 'VIRAC (Capital)', '05', '0520', '052011'),
(642, '054101000', 'AROROY', '05', '0541', '054101'),
(643, '054102000', 'BALENO', '05', '0541', '054102'),
(644, '054103000', 'BALUD', '05', '0541', '054103'),
(645, '054104000', 'BATUAN', '05', '0541', '054104'),
(646, '054105000', 'CATAINGAN', '05', '0541', '054105'),
(647, '054106000', 'CAWAYAN', '05', '0541', '054106'),
(648, '054107000', 'CLAVERIA', '05', '0541', '054107'),
(649, '054108000', 'DIMASALANG', '05', '0541', '054108'),
(650, '054109000', 'ESPERANZA', '05', '0541', '054109'),
(651, '054110000', 'MANDAON', '05', '0541', '054110'),
(652, '054111000', 'CITY OF MASBATE (Capital)', '05', '0541', '054111'),
(653, '054112000', 'MILAGROS', '05', '0541', '054112'),
(654, '054113000', 'MOBO', '05', '0541', '054113'),
(655, '054114000', 'MONREAL', '05', '0541', '054114'),
(656, '054115000', 'PALANAS', '05', '0541', '054115'),
(657, '054116000', 'PIO V. CORPUZ (LIMBUHAN)', '05', '0541', '054116'),
(658, '054117000', 'PLACER', '05', '0541', '054117'),
(659, '054118000', 'SAN FERNANDO', '05', '0541', '054118'),
(660, '054119000', 'SAN JACINTO', '05', '0541', '054119'),
(661, '054120000', 'SAN PASCUAL', '05', '0541', '054120'),
(662, '054121000', 'USON', '05', '0541', '054121'),
(663, '056202000', 'BARCELONA', '05', '0562', '056202'),
(664, '056203000', 'BULAN', '05', '0562', '056203'),
(665, '056204000', 'BULUSAN', '05', '0562', '056204'),
(666, '056205000', 'CASIGURAN', '05', '0562', '056205'),
(667, '056206000', 'CASTILLA', '05', '0562', '056206'),
(668, '056207000', 'DONSOL', '05', '0562', '056207'),
(669, '056208000', 'GUBAT', '05', '0562', '056208'),
(670, '056209000', 'IROSIN', '05', '0562', '056209'),
(671, '056210000', 'JUBAN', '05', '0562', '056210'),
(672, '056211000', 'MAGALLANES', '05', '0562', '056211'),
(673, '056212000', 'MATNOG', '05', '0562', '056212'),
(674, '056213000', 'PILAR', '05', '0562', '056213'),
(675, '056214000', 'PRIETO DIAZ', '05', '0562', '056214'),
(676, '056215000', 'SANTA MAGDALENA', '05', '0562', '056215'),
(677, '056216000', 'CITY OF SORSOGON (Capital)', '05', '0562', '056216'),
(678, '060401000', 'ALTAVAS', '06', '0604', '060401'),
(679, '060402000', 'BALETE', '06', '0604', '060402'),
(680, '060403000', 'BANGA', '06', '0604', '060403'),
(681, '060404000', 'BATAN', '06', '0604', '060404'),
(682, '060405000', 'BURUANGA', '06', '0604', '060405'),
(683, '060406000', 'IBAJAY', '06', '0604', '060406'),
(684, '060407000', 'KALIBO (Capital)', '06', '0604', '060407'),
(685, '060408000', 'LEZO', '06', '0604', '060408'),
(686, '060409000', 'LIBACAO', '06', '0604', '060409'),
(687, '060410000', 'MADALAG', '06', '0604', '060410'),
(688, '060411000', 'MAKATO', '06', '0604', '060411'),
(689, '060412000', 'MALAY', '06', '0604', '060412'),
(690, '060413000', 'MALINAO', '06', '0604', '060413'),
(691, '060414000', 'NABAS', '06', '0604', '060414'),
(692, '060415000', 'NEW WASHINGTON', '06', '0604', '060415'),
(693, '060416000', 'NUMANCIA', '06', '0604', '060416'),
(694, '060417000', 'TANGALAN', '06', '0604', '060417'),
(695, '060601000', 'ANINI-Y', '06', '0606', '060601'),
(696, '060602000', 'BARBAZA', '06', '0606', '060602'),
(697, '060603000', 'BELISON', '06', '0606', '060603'),
(698, '060604000', 'BUGASONG', '06', '0606', '060604'),
(699, '060605000', 'CALUYA', '06', '0606', '060605'),
(700, '060606000', 'CULASI', '06', '0606', '060606'),
(701, '060607000', 'TOBIAS FORNIER (DAO)', '06', '0606', '060607'),
(702, '060608000', 'HAMTIC', '06', '0606', '060608'),
(703, '060609000', 'LAUA-AN', '06', '0606', '060609'),
(704, '060610000', 'LIBERTAD', '06', '0606', '060610'),
(705, '060611000', 'PANDAN', '06', '0606', '060611'),
(706, '060612000', 'PATNONGON', '06', '0606', '060612'),
(707, '060613000', 'SAN JOSE (Capital)', '06', '0606', '060613'),
(708, '060614000', 'SAN REMIGIO', '06', '0606', '060614'),
(709, '060615000', 'SEBASTE', '06', '0606', '060615'),
(710, '060616000', 'SIBALOM', '06', '0606', '060616'),
(711, '060617000', 'TIBIAO', '06', '0606', '060617'),
(712, '060618000', 'VALDERRAMA', '06', '0606', '060618'),
(713, '061901000', 'CUARTERO', '06', '0619', '061901'),
(714, '061902000', 'DAO', '06', '0619', '061902'),
(715, '061903000', 'DUMALAG', '06', '0619', '061903'),
(716, '061904000', 'DUMARAO', '06', '0619', '061904'),
(717, '061905000', 'IVISAN', '06', '0619', '061905'),
(718, '061906000', 'JAMINDAN', '06', '0619', '061906'),
(719, '061907000', 'MA-AYON', '06', '0619', '061907'),
(720, '061908000', 'MAMBUSAO', '06', '0619', '061908'),
(721, '061909000', 'PANAY', '06', '0619', '061909'),
(722, '061910000', 'PANITAN', '06', '0619', '061910'),
(723, '061911000', 'PILAR', '06', '0619', '061911'),
(724, '061912000', 'PONTEVEDRA', '06', '0619', '061912'),
(725, '061913000', 'PRESIDENT ROXAS', '06', '0619', '061913'),
(726, '061914000', 'ROXAS CITY (Capital)', '06', '0619', '061914'),
(727, '061915000', 'SAPI-AN', '06', '0619', '061915'),
(728, '061916000', 'SIGMA', '06', '0619', '061916'),
(729, '061917000', 'TAPAZ', '06', '0619', '061917'),
(730, '063001000', 'AJUY', '06', '0630', '063001'),
(731, '063002000', 'ALIMODIAN', '06', '0630', '063002'),
(732, '063003000', 'ANILAO', '06', '0630', '063003'),
(733, '063004000', 'BADIANGAN', '06', '0630', '063004'),
(734, '063005000', 'BALASAN', '06', '0630', '063005'),
(735, '063006000', 'BANATE', '06', '0630', '063006'),
(736, '063007000', 'BAROTAC NUEVO', '06', '0630', '063007'),
(737, '063008000', 'BAROTAC VIEJO', '06', '0630', '063008'),
(738, '063009000', 'BATAD', '06', '0630', '063009'),
(739, '063010000', 'BINGAWAN', '06', '0630', '063010'),
(740, '063012000', 'CABATUAN', '06', '0630', '063012'),
(741, '063013000', 'CALINOG', '06', '0630', '063013'),
(742, '063014000', 'CARLES', '06', '0630', '063014'),
(743, '063015000', 'CONCEPCION', '06', '0630', '063015'),
(744, '063016000', 'DINGLE', '06', '0630', '063016'),
(745, '063017000', 'DUEÑAS', '06', '0630', '063017'),
(746, '063018000', 'DUMANGAS', '06', '0630', '063018'),
(747, '063019000', 'ESTANCIA', '06', '0630', '063019'),
(748, '063020000', 'GUIMBAL', '06', '0630', '063020'),
(749, '063021000', 'IGBARAS', '06', '0630', '063021'),
(750, '063022000', 'ILOILO CITY (Capital)', '06', '0630', '063022'),
(751, '063023000', 'JANIUAY', '06', '0630', '063023'),
(752, '063025000', 'LAMBUNAO', '06', '0630', '063025'),
(753, '063026000', 'LEGANES', '06', '0630', '063026'),
(754, '063027000', 'LEMERY', '06', '0630', '063027'),
(755, '063028000', 'LEON', '06', '0630', '063028'),
(756, '063029000', 'MAASIN', '06', '0630', '063029'),
(757, '063030000', 'MIAGAO', '06', '0630', '063030'),
(758, '063031000', 'MINA', '06', '0630', '063031'),
(759, '063032000', 'NEW LUCENA', '06', '0630', '063032'),
(760, '063034000', 'OTON', '06', '0630', '063034'),
(761, '063035000', 'CITY OF PASSI', '06', '0630', '063035'),
(762, '063036000', 'PAVIA', '06', '0630', '063036'),
(763, '063037000', 'POTOTAN', '06', '0630', '063037'),
(764, '063038000', 'SAN DIONISIO', '06', '0630', '063038'),
(765, '063039000', 'SAN ENRIQUE', '06', '0630', '063039'),
(766, '063040000', 'SAN JOAQUIN', '06', '0630', '063040'),
(767, '063041000', 'SAN MIGUEL', '06', '0630', '063041'),
(768, '063042000', 'SAN RAFAEL', '06', '0630', '063042'),
(769, '063043000', 'SANTA BARBARA', '06', '0630', '063043'),
(770, '063044000', 'SARA', '06', '0630', '063044'),
(771, '063045000', 'TIGBAUAN', '06', '0630', '063045'),
(772, '063046000', 'TUBUNGAN', '06', '0630', '063046'),
(773, '063047000', 'ZARRAGA', '06', '0630', '063047'),
(774, '064501000', 'BACOLOD CITY (Capital)', '06', '0645', '064501'),
(775, '064502000', 'BAGO CITY', '06', '0645', '064502'),
(776, '064503000', 'BINALBAGAN', '06', '0645', '064503'),
(777, '064504000', 'CADIZ CITY', '06', '0645', '064504'),
(778, '064505000', 'CALATRAVA', '06', '0645', '064505'),
(779, '064506000', 'CANDONI', '06', '0645', '064506'),
(780, '064507000', 'CAUAYAN', '06', '0645', '064507'),
(781, '064508000', 'ENRIQUE B. MAGALONA (SARAVIA)', '06', '0645', '064508'),
(782, '064509000', 'CITY OF ESCALANTE', '06', '0645', '064509'),
(783, '064510000', 'CITY OF HIMAMAYLAN', '06', '0645', '064510'),
(784, '064511000', 'HINIGARAN', '06', '0645', '064511'),
(785, '064512000', 'HINOBA-AN (ASIA)', '06', '0645', '064512'),
(786, '064513000', 'ILOG', '06', '0645', '064513'),
(787, '064514000', 'ISABELA', '06', '0645', '064514'),
(788, '064515000', 'CITY OF KABANKALAN', '06', '0645', '064515'),
(789, '064516000', 'LA CARLOTA CITY', '06', '0645', '064516'),
(790, '064517000', 'LA CASTELLANA', '06', '0645', '064517'),
(791, '064518000', 'MANAPLA', '06', '0645', '064518'),
(792, '064519000', 'MOISES PADILLA (MAGALLON)', '06', '0645', '064519'),
(793, '064520000', 'MURCIA', '06', '0645', '064520'),
(794, '064521000', 'PONTEVEDRA', '06', '0645', '064521'),
(795, '064522000', 'PULUPANDAN', '06', '0645', '064522'),
(796, '064523000', 'SAGAY CITY', '06', '0645', '064523'),
(797, '064524000', 'SAN CARLOS CITY', '06', '0645', '064524'),
(798, '064525000', 'SAN ENRIQUE', '06', '0645', '064525'),
(799, '064526000', 'SILAY CITY', '06', '0645', '064526'),
(800, '064527000', 'CITY OF SIPALAY', '06', '0645', '064527'),
(801, '064528000', 'CITY OF TALISAY', '06', '0645', '064528'),
(802, '064529000', 'TOBOSO', '06', '0645', '064529'),
(803, '064530000', 'VALLADOLID', '06', '0645', '064530'),
(804, '064531000', 'CITY OF VICTORIAS', '06', '0645', '064531'),
(805, '064532000', 'SALVADOR BENEDICTO', '06', '0645', '064532'),
(806, '067901000', 'BUENAVISTA', '06', '0679', '067901'),
(807, '067902000', 'JORDAN (Capital)', '06', '0679', '067902'),
(808, '067903000', 'NUEVA VALENCIA', '06', '0679', '067903'),
(809, '067904000', 'SAN LORENZO', '06', '0679', '067904'),
(810, '067905000', 'SIBUNAG', '06', '0679', '067905'),
(811, '071201000', 'ALBURQUERQUE', '07', '0712', '071201'),
(812, '071202000', 'ALICIA', '07', '0712', '071202'),
(813, '071203000', 'ANDA', '07', '0712', '071203'),
(814, '071204000', 'ANTEQUERA', '07', '0712', '071204'),
(815, '071205000', 'BACLAYON', '07', '0712', '071205'),
(816, '071206000', 'BALILIHAN', '07', '0712', '071206'),
(817, '071207000', 'BATUAN', '07', '0712', '071207'),
(818, '071208000', 'BILAR', '07', '0712', '071208'),
(819, '071209000', 'BUENAVISTA', '07', '0712', '071209'),
(820, '071210000', 'CALAPE', '07', '0712', '071210'),
(821, '071211000', 'CANDIJAY', '07', '0712', '071211'),
(822, '071212000', 'CARMEN', '07', '0712', '071212'),
(823, '071213000', 'CATIGBIAN', '07', '0712', '071213'),
(824, '071214000', 'CLARIN', '07', '0712', '071214'),
(825, '071215000', 'CORELLA', '07', '0712', '071215'),
(826, '071216000', 'CORTES', '07', '0712', '071216'),
(827, '071217000', 'DAGOHOY', '07', '0712', '071217'),
(828, '071218000', 'DANAO', '07', '0712', '071218'),
(829, '071219000', 'DAUIS', '07', '0712', '071219'),
(830, '071220000', 'DIMIAO', '07', '0712', '071220'),
(831, '071221000', 'DUERO', '07', '0712', '071221'),
(832, '071222000', 'GARCIA HERNANDEZ', '07', '0712', '071222'),
(833, '071223000', 'GUINDULMAN', '07', '0712', '071223'),
(834, '071224000', 'INABANGA', '07', '0712', '071224'),
(835, '071225000', 'JAGNA', '07', '0712', '071225'),
(836, '071226000', 'JETAFE', '07', '0712', '071226'),
(837, '071227000', 'LILA', '07', '0712', '071227'),
(838, '071228000', 'LOAY', '07', '0712', '071228'),
(839, '071229000', 'LOBOC', '07', '0712', '071229'),
(840, '071230000', 'LOON', '07', '0712', '071230'),
(841, '071231000', 'MABINI', '07', '0712', '071231'),
(842, '071232000', 'MARIBOJOC', '07', '0712', '071232'),
(843, '071233000', 'PANGLAO', '07', '0712', '071233'),
(844, '071234000', 'PILAR', '07', '0712', '071234'),
(845, '071235000', 'PRES. CARLOS P. GARCIA (PITOGO)', '07', '0712', '071235'),
(846, '071236000', 'SAGBAYAN (BORJA)', '07', '0712', '071236'),
(847, '071237000', 'SAN ISIDRO', '07', '0712', '071237'),
(848, '071238000', 'SAN MIGUEL', '07', '0712', '071238'),
(849, '071239000', 'SEVILLA', '07', '0712', '071239'),
(850, '071240000', 'SIERRA BULLONES', '07', '0712', '071240'),
(851, '071241000', 'SIKATUNA', '07', '0712', '071241'),
(852, '071242000', 'TAGBILARAN CITY (Capital)', '07', '0712', '071242'),
(853, '071243000', 'TALIBON', '07', '0712', '071243'),
(854, '071244000', 'TRINIDAD', '07', '0712', '071244'),
(855, '071245000', 'TUBIGON', '07', '0712', '071245'),
(856, '071246000', 'UBAY', '07', '0712', '071246'),
(857, '071247000', 'VALENCIA', '07', '0712', '071247'),
(858, '071248000', 'BIEN UNIDO', '07', '0712', '071248'),
(859, '072201000', 'ALCANTARA', '07', '0722', '072201'),
(860, '072202000', 'ALCOY', '07', '0722', '072202'),
(861, '072203000', 'ALEGRIA', '07', '0722', '072203'),
(862, '072204000', 'ALOGUINSAN', '07', '0722', '072204'),
(863, '072205000', 'ARGAO', '07', '0722', '072205'),
(864, '072206000', 'ASTURIAS', '07', '0722', '072206'),
(865, '072207000', 'BADIAN', '07', '0722', '072207'),
(866, '072208000', 'BALAMBAN', '07', '0722', '072208'),
(867, '072209000', 'BANTAYAN', '07', '0722', '072209'),
(868, '072210000', 'BARILI', '07', '0722', '072210'),
(869, '072211000', 'CITY OF BOGO', '07', '0722', '072211'),
(870, '072212000', 'BOLJOON', '07', '0722', '072212'),
(871, '072213000', 'BORBON', '07', '0722', '072213'),
(872, '072214000', 'CITY OF CARCAR', '07', '0722', '072214'),
(873, '072215000', 'CARMEN', '07', '0722', '072215'),
(874, '072216000', 'CATMON', '07', '0722', '072216'),
(875, '072217000', 'CEBU CITY (Capital)', '07', '0722', '072217'),
(876, '072218000', 'COMPOSTELA', '07', '0722', '072218'),
(877, '072219000', 'CONSOLACION', '07', '0722', '072219'),
(878, '072220000', 'CORDOVA', '07', '0722', '072220'),
(879, '072221000', 'DAANBANTAYAN', '07', '0722', '072221'),
(880, '072222000', 'DALAGUETE', '07', '0722', '072222'),
(881, '072223000', 'DANAO CITY', '07', '0722', '072223'),
(882, '072224000', 'DUMANJUG', '07', '0722', '072224'),
(883, '072225000', 'GINATILAN', '07', '0722', '072225'),
(884, '072226000', 'LAPU-LAPU CITY (OPON)', '07', '0722', '072226'),
(885, '072227000', 'LILOAN', '07', '0722', '072227'),
(886, '072228000', 'MADRIDEJOS', '07', '0722', '072228'),
(887, '072229000', 'MALABUYOC', '07', '0722', '072229'),
(888, '072230000', 'MANDAUE CITY', '07', '0722', '072230'),
(889, '072231000', 'MEDELLIN', '07', '0722', '072231'),
(890, '072232000', 'MINGLANILLA', '07', '0722', '072232'),
(891, '072233000', 'MOALBOAL', '07', '0722', '072233'),
(892, '072234000', 'CITY OF NAGA', '07', '0722', '072234'),
(893, '072235000', 'OSLOB', '07', '0722', '072235'),
(894, '072236000', 'PILAR', '07', '0722', '072236'),
(895, '072237000', 'PINAMUNGAHAN', '07', '0722', '072237'),
(896, '072238000', 'PORO', '07', '0722', '072238'),
(897, '072239000', 'RONDA', '07', '0722', '072239'),
(898, '072240000', 'SAMBOAN', '07', '0722', '072240'),
(899, '072241000', 'SAN FERNANDO', '07', '0722', '072241'),
(900, '072242000', 'SAN FRANCISCO', '07', '0722', '072242'),
(901, '072243000', 'SAN REMIGIO', '07', '0722', '072243'),
(902, '072244000', 'SANTA FE', '07', '0722', '072244'),
(903, '072245000', 'SANTANDER', '07', '0722', '072245'),
(904, '072246000', 'SIBONGA', '07', '0722', '072246'),
(905, '072247000', 'SOGOD', '07', '0722', '072247'),
(906, '072248000', 'TABOGON', '07', '0722', '072248');
INSERT INTO `ref_citymun` (`citymun_ID`, `citymun_psgcCode`, `citymun_Name`, `region_Code`, `province_Code`, `citymun_Code`) VALUES
(907, '072249000', 'TABUELAN', '07', '0722', '072249'),
(908, '072250000', 'CITY OF TALISAY', '07', '0722', '072250'),
(909, '072251000', 'TOLEDO CITY', '07', '0722', '072251'),
(910, '072252000', 'TUBURAN', '07', '0722', '072252'),
(911, '072253000', 'TUDELA', '07', '0722', '072253'),
(912, '074601000', 'AMLAN (AYUQUITAN)', '07', '0746', '074601'),
(913, '074602000', 'AYUNGON', '07', '0746', '074602'),
(914, '074603000', 'BACONG', '07', '0746', '074603'),
(915, '074604000', 'BAIS CITY', '07', '0746', '074604'),
(916, '074605000', 'BASAY', '07', '0746', '074605'),
(917, '074606000', 'CITY OF BAYAWAN (TULONG)', '07', '0746', '074606'),
(918, '074607000', 'BINDOY (PAYABON)', '07', '0746', '074607'),
(919, '074608000', 'CANLAON CITY', '07', '0746', '074608'),
(920, '074609000', 'DAUIN', '07', '0746', '074609'),
(921, '074610000', 'DUMAGUETE CITY (Capital)', '07', '0746', '074610'),
(922, '074611000', 'CITY OF GUIHULNGAN', '07', '0746', '074611'),
(923, '074612000', 'JIMALALUD', '07', '0746', '074612'),
(924, '074613000', 'LA LIBERTAD', '07', '0746', '074613'),
(925, '074614000', 'MABINAY', '07', '0746', '074614'),
(926, '074615000', 'MANJUYOD', '07', '0746', '074615'),
(927, '074616000', 'PAMPLONA', '07', '0746', '074616'),
(928, '074617000', 'SAN JOSE', '07', '0746', '074617'),
(929, '074618000', 'SANTA CATALINA', '07', '0746', '074618'),
(930, '074619000', 'SIATON', '07', '0746', '074619'),
(931, '074620000', 'SIBULAN', '07', '0746', '074620'),
(932, '074621000', 'CITY OF TANJAY', '07', '0746', '074621'),
(933, '074622000', 'TAYASAN', '07', '0746', '074622'),
(934, '074623000', 'VALENCIA (LUZURRIAGA)', '07', '0746', '074623'),
(935, '074624000', 'VALLEHERMOSO', '07', '0746', '074624'),
(936, '074625000', 'ZAMBOANGUITA', '07', '0746', '074625'),
(937, '076101000', 'ENRIQUE VILLANUEVA', '07', '0761', '076101'),
(938, '076102000', 'LARENA', '07', '0761', '076102'),
(939, '076103000', 'LAZI', '07', '0761', '076103'),
(940, '076104000', 'MARIA', '07', '0761', '076104'),
(941, '076105000', 'SAN JUAN', '07', '0761', '076105'),
(942, '076106000', 'SIQUIJOR (Capital)', '07', '0761', '076106'),
(943, '082601000', 'ARTECHE', '08', '0826', '082601'),
(944, '082602000', 'BALANGIGA', '08', '0826', '082602'),
(945, '082603000', 'BALANGKAYAN', '08', '0826', '082603'),
(946, '082604000', 'CITY OF BORONGAN (Capital)', '08', '0826', '082604'),
(947, '082605000', 'CAN-AVID', '08', '0826', '082605'),
(948, '082606000', 'DOLORES', '08', '0826', '082606'),
(949, '082607000', 'GENERAL MACARTHUR', '08', '0826', '082607'),
(950, '082608000', 'GIPORLOS', '08', '0826', '082608'),
(951, '082609000', 'GUIUAN', '08', '0826', '082609'),
(952, '082610000', 'HERNANI', '08', '0826', '082610'),
(953, '082611000', 'JIPAPAD', '08', '0826', '082611'),
(954, '082612000', 'LAWAAN', '08', '0826', '082612'),
(955, '082613000', 'LLORENTE', '08', '0826', '082613'),
(956, '082614000', 'MASLOG', '08', '0826', '082614'),
(957, '082615000', 'MAYDOLONG', '08', '0826', '082615'),
(958, '082616000', 'MERCEDES', '08', '0826', '082616'),
(959, '082617000', 'ORAS', '08', '0826', '082617'),
(960, '082618000', 'QUINAPONDAN', '08', '0826', '082618'),
(961, '082619000', 'SALCEDO', '08', '0826', '082619'),
(962, '082620000', 'SAN JULIAN', '08', '0826', '082620'),
(963, '082621000', 'SAN POLICARPO', '08', '0826', '082621'),
(964, '082622000', 'SULAT', '08', '0826', '082622'),
(965, '082623000', 'TAFT', '08', '0826', '082623'),
(966, '083701000', 'ABUYOG', '08', '0837', '083701'),
(967, '083702000', 'ALANGALANG', '08', '0837', '083702'),
(968, '083703000', 'ALBUERA', '08', '0837', '083703'),
(969, '083705000', 'BABATNGON', '08', '0837', '083705'),
(970, '083706000', 'BARUGO', '08', '0837', '083706'),
(971, '083707000', 'BATO', '08', '0837', '083707'),
(972, '083708000', 'CITY OF BAYBAY', '08', '0837', '083708'),
(973, '083710000', 'BURAUEN', '08', '0837', '083710'),
(974, '083713000', 'CALUBIAN', '08', '0837', '083713'),
(975, '083714000', 'CAPOOCAN', '08', '0837', '083714'),
(976, '083715000', 'CARIGARA', '08', '0837', '083715'),
(977, '083717000', 'DAGAMI', '08', '0837', '083717'),
(978, '083718000', 'DULAG', '08', '0837', '083718'),
(979, '083719000', 'HILONGOS', '08', '0837', '083719'),
(980, '083720000', 'HINDANG', '08', '0837', '083720'),
(981, '083721000', 'INOPACAN', '08', '0837', '083721'),
(982, '083722000', 'ISABEL', '08', '0837', '083722'),
(983, '083723000', 'JARO', '08', '0837', '083723'),
(984, '083724000', 'JAVIER (BUGHO)', '08', '0837', '083724'),
(985, '083725000', 'JULITA', '08', '0837', '083725'),
(986, '083726000', 'KANANGA', '08', '0837', '083726'),
(987, '083728000', 'LA PAZ', '08', '0837', '083728'),
(988, '083729000', 'LEYTE', '08', '0837', '083729'),
(989, '083730000', 'MACARTHUR', '08', '0837', '083730'),
(990, '083731000', 'MAHAPLAG', '08', '0837', '083731'),
(991, '083733000', 'MATAG-OB', '08', '0837', '083733'),
(992, '083734000', 'MATALOM', '08', '0837', '083734'),
(993, '083735000', 'MAYORGA', '08', '0837', '083735'),
(994, '083736000', 'MERIDA', '08', '0837', '083736'),
(995, '083738000', 'ORMOC CITY', '08', '0837', '083738'),
(996, '083739000', 'PALO', '08', '0837', '083739'),
(997, '083740000', 'PALOMPON', '08', '0837', '083740'),
(998, '083741000', 'PASTRANA', '08', '0837', '083741'),
(999, '083742000', 'SAN ISIDRO', '08', '0837', '083742'),
(1000, '083743000', 'SAN MIGUEL', '08', '0837', '083743'),
(1001, '083744000', 'SANTA FE', '08', '0837', '083744'),
(1002, '083745000', 'TABANGO', '08', '0837', '083745'),
(1003, '083746000', 'TABONTABON', '08', '0837', '083746'),
(1004, '083747000', 'TACLOBAN CITY (Capital)', '08', '0837', '083747'),
(1005, '083748000', 'TANAUAN', '08', '0837', '083748'),
(1006, '083749000', 'TOLOSA', '08', '0837', '083749'),
(1007, '083750000', 'TUNGA', '08', '0837', '083750'),
(1008, '083751000', 'VILLABA', '08', '0837', '083751'),
(1009, '084801000', 'ALLEN', '08', '0848', '084801'),
(1010, '084802000', 'BIRI', '08', '0848', '084802'),
(1011, '084803000', 'BOBON', '08', '0848', '084803'),
(1012, '084804000', 'CAPUL', '08', '0848', '084804'),
(1013, '084805000', 'CATARMAN (Capital)', '08', '0848', '084805'),
(1014, '084806000', 'CATUBIG', '08', '0848', '084806'),
(1015, '084807000', 'GAMAY', '08', '0848', '084807'),
(1016, '084808000', 'LAOANG', '08', '0848', '084808'),
(1017, '084809000', 'LAPINIG', '08', '0848', '084809'),
(1018, '084810000', 'LAS NAVAS', '08', '0848', '084810'),
(1019, '084811000', 'LAVEZARES', '08', '0848', '084811'),
(1020, '084812000', 'MAPANAS', '08', '0848', '084812'),
(1021, '084813000', 'MONDRAGON', '08', '0848', '084813'),
(1022, '084814000', 'PALAPAG', '08', '0848', '084814'),
(1023, '084815000', 'PAMBUJAN', '08', '0848', '084815'),
(1024, '084816000', 'ROSARIO', '08', '0848', '084816'),
(1025, '084817000', 'SAN ANTONIO', '08', '0848', '084817'),
(1026, '084818000', 'SAN ISIDRO', '08', '0848', '084818'),
(1027, '084819000', 'SAN JOSE', '08', '0848', '084819'),
(1028, '084820000', 'SAN ROQUE', '08', '0848', '084820'),
(1029, '084821000', 'SAN VICENTE', '08', '0848', '084821'),
(1030, '084822000', 'SILVINO LOBOS', '08', '0848', '084822'),
(1031, '084823000', 'VICTORIA', '08', '0848', '084823'),
(1032, '084824000', 'LOPE DE VEGA', '08', '0848', '084824'),
(1033, '086001000', 'ALMAGRO', '08', '0860', '086001'),
(1034, '086002000', 'BASEY', '08', '0860', '086002'),
(1035, '086003000', 'CALBAYOG CITY', '08', '0860', '086003'),
(1036, '086004000', 'CALBIGA', '08', '0860', '086004'),
(1037, '086005000', 'CITY OF CATBALOGAN (Capital)', '08', '0860', '086005'),
(1038, '086006000', 'DARAM', '08', '0860', '086006'),
(1039, '086007000', 'GANDARA', '08', '0860', '086007'),
(1040, '086008000', 'HINABANGAN', '08', '0860', '086008'),
(1041, '086009000', 'JIABONG', '08', '0860', '086009'),
(1042, '086010000', 'MARABUT', '08', '0860', '086010'),
(1043, '086011000', 'MATUGUINAO', '08', '0860', '086011'),
(1044, '086012000', 'MOTIONG', '08', '0860', '086012'),
(1045, '086013000', 'PINABACDAO', '08', '0860', '086013'),
(1046, '086014000', 'SAN JOSE DE BUAN', '08', '0860', '086014'),
(1047, '086015000', 'SAN SEBASTIAN', '08', '0860', '086015'),
(1048, '086016000', 'SANTA MARGARITA', '08', '0860', '086016'),
(1049, '086017000', 'SANTA RITA', '08', '0860', '086017'),
(1050, '086018000', 'SANTO NIÑO', '08', '0860', '086018'),
(1051, '086019000', 'TALALORA', '08', '0860', '086019'),
(1052, '086020000', 'TARANGNAN', '08', '0860', '086020'),
(1053, '086021000', 'VILLAREAL', '08', '0860', '086021'),
(1054, '086022000', 'PARANAS (WRIGHT)', '08', '0860', '086022'),
(1055, '086023000', 'ZUMARRAGA', '08', '0860', '086023'),
(1056, '086024000', 'TAGAPUL-AN', '08', '0860', '086024'),
(1057, '086025000', 'SAN JORGE', '08', '0860', '086025'),
(1058, '086026000', 'PAGSANGHAN', '08', '0860', '086026'),
(1059, '086401000', 'ANAHAWAN', '08', '0864', '086401'),
(1060, '086402000', 'BONTOC', '08', '0864', '086402'),
(1061, '086403000', 'HINUNANGAN', '08', '0864', '086403'),
(1062, '086404000', 'HINUNDAYAN', '08', '0864', '086404'),
(1063, '086405000', 'LIBAGON', '08', '0864', '086405'),
(1064, '086406000', 'LILOAN', '08', '0864', '086406'),
(1065, '086407000', 'CITY OF MAASIN (Capital)', '08', '0864', '086407'),
(1066, '086408000', 'MACROHON', '08', '0864', '086408'),
(1067, '086409000', 'MALITBOG', '08', '0864', '086409'),
(1068, '086410000', 'PADRE BURGOS', '08', '0864', '086410'),
(1069, '086411000', 'PINTUYAN', '08', '0864', '086411'),
(1070, '086412000', 'SAINT BERNARD', '08', '0864', '086412'),
(1071, '086413000', 'SAN FRANCISCO', '08', '0864', '086413'),
(1072, '086414000', 'SAN JUAN (CABALIAN)', '08', '0864', '086414'),
(1073, '086415000', 'SAN RICARDO', '08', '0864', '086415'),
(1074, '086416000', 'SILAGO', '08', '0864', '086416'),
(1075, '086417000', 'SOGOD', '08', '0864', '086417'),
(1076, '086418000', 'TOMAS OPPUS', '08', '0864', '086418'),
(1077, '086419000', 'LIMASAWA', '08', '0864', '086419'),
(1078, '087801000', 'ALMERIA', '08', '0878', '087801'),
(1079, '087802000', 'BILIRAN', '08', '0878', '087802'),
(1080, '087803000', 'CABUCGAYAN', '08', '0878', '087803'),
(1081, '087804000', 'CAIBIRAN', '08', '0878', '087804'),
(1082, '087805000', 'CULABA', '08', '0878', '087805'),
(1083, '087806000', 'KAWAYAN', '08', '0878', '087806'),
(1084, '087807000', 'MARIPIPI', '08', '0878', '087807'),
(1085, '087808000', 'NAVAL (Capital)', '08', '0878', '087808'),
(1086, '097201000', 'DAPITAN CITY', '09', '0972', '097201'),
(1087, '097202000', 'DIPOLOG CITY (Capital)', '09', '0972', '097202'),
(1088, '097203000', 'KATIPUNAN', '09', '0972', '097203'),
(1089, '097204000', 'LA LIBERTAD', '09', '0972', '097204'),
(1090, '097205000', 'LABASON', '09', '0972', '097205'),
(1091, '097206000', 'LILOY', '09', '0972', '097206'),
(1092, '097207000', 'MANUKAN', '09', '0972', '097207'),
(1093, '097208000', 'MUTIA', '09', '0972', '097208'),
(1094, '097209000', 'PIÑAN (NEW PIÑAN)', '09', '0972', '097209'),
(1095, '097210000', 'POLANCO', '09', '0972', '097210'),
(1096, '097211000', 'PRES. MANUEL A. ROXAS', '09', '0972', '097211'),
(1097, '097212000', 'RIZAL', '09', '0972', '097212'),
(1098, '097213000', 'SALUG', '09', '0972', '097213'),
(1099, '097214000', 'SERGIO OSMEÑA SR.', '09', '0972', '097214'),
(1100, '097215000', 'SIAYAN', '09', '0972', '097215'),
(1101, '097216000', 'SIBUCO', '09', '0972', '097216'),
(1102, '097217000', 'SIBUTAD', '09', '0972', '097217'),
(1103, '097218000', 'SINDANGAN', '09', '0972', '097218'),
(1104, '097219000', 'SIOCON', '09', '0972', '097219'),
(1105, '097220000', 'SIRAWAI', '09', '0972', '097220'),
(1106, '097221000', 'TAMPILISAN', '09', '0972', '097221'),
(1107, '097222000', 'JOSE DALMAN (PONOT)', '09', '0972', '097222'),
(1108, '097223000', 'GUTALAC', '09', '0972', '097223'),
(1109, '097224000', 'BALIGUIAN', '09', '0972', '097224'),
(1110, '097225000', 'GODOD', '09', '0972', '097225'),
(1111, '097226000', 'BACUNGAN (Leon T. Postigo)', '09', '0972', '097226'),
(1112, '097227000', 'KALAWIT', '09', '0972', '097227'),
(1113, '097302000', 'AURORA', '09', '0973', '097302'),
(1114, '097303000', 'BAYOG', '09', '0973', '097303'),
(1115, '097305000', 'DIMATALING', '09', '0973', '097305'),
(1116, '097306000', 'DINAS', '09', '0973', '097306'),
(1117, '097307000', 'DUMALINAO', '09', '0973', '097307'),
(1118, '097308000', 'DUMINGAG', '09', '0973', '097308'),
(1119, '097311000', 'KUMALARANG', '09', '0973', '097311'),
(1120, '097312000', 'LABANGAN', '09', '0973', '097312'),
(1121, '097313000', 'LAPUYAN', '09', '0973', '097313'),
(1122, '097315000', 'MAHAYAG', '09', '0973', '097315'),
(1123, '097317000', 'MARGOSATUBIG', '09', '0973', '097317'),
(1124, '097318000', 'MIDSALIP', '09', '0973', '097318'),
(1125, '097319000', 'MOLAVE', '09', '0973', '097319'),
(1126, '097322000', 'PAGADIAN CITY (Capital)', '09', '0973', '097322'),
(1127, '097323000', 'RAMON MAGSAYSAY (LIARGO)', '09', '0973', '097323'),
(1128, '097324000', 'SAN MIGUEL', '09', '0973', '097324'),
(1129, '097325000', 'SAN PABLO', '09', '0973', '097325'),
(1130, '097327000', 'TABINA', '09', '0973', '097327'),
(1131, '097328000', 'TAMBULIG', '09', '0973', '097328'),
(1132, '097330000', 'TUKURAN', '09', '0973', '097330'),
(1133, '097332000', 'ZAMBOANGA CITY', '09', '0973', '097332'),
(1134, '097333000', 'LAKEWOOD', '09', '0973', '097333'),
(1135, '097337000', 'JOSEFINA', '09', '0973', '097337'),
(1136, '097338000', 'PITOGO', '09', '0973', '097338'),
(1137, '097340000', 'SOMINOT (DON MARIANO MARCOS)', '09', '0973', '097340'),
(1138, '097341000', 'VINCENZO A. SAGUN', '09', '0973', '097341'),
(1139, '097343000', 'GUIPOS', '09', '0973', '097343'),
(1140, '097344000', 'TIGBAO', '09', '0973', '097344'),
(1141, '098301000', 'ALICIA', '09', '0983', '098301'),
(1142, '098302000', 'BUUG', '09', '0983', '098302'),
(1143, '098303000', 'DIPLAHAN', '09', '0983', '098303'),
(1144, '098304000', 'IMELDA', '09', '0983', '098304'),
(1145, '098305000', 'IPIL (Capital)', '09', '0983', '098305'),
(1146, '098306000', 'KABASALAN', '09', '0983', '098306'),
(1147, '098307000', 'MABUHAY', '09', '0983', '098307'),
(1148, '098308000', 'MALANGAS', '09', '0983', '098308'),
(1149, '098309000', 'NAGA', '09', '0983', '098309'),
(1150, '098310000', 'OLUTANGA', '09', '0983', '098310'),
(1151, '098311000', 'PAYAO', '09', '0983', '098311'),
(1152, '098312000', 'ROSELLER LIM', '09', '0983', '098312'),
(1153, '098313000', 'SIAY', '09', '0983', '098313'),
(1154, '098314000', 'TALUSAN', '09', '0983', '098314'),
(1155, '098315000', 'TITAY', '09', '0983', '098315'),
(1156, '098316000', 'TUNGAWAN', '09', '0983', '098316'),
(1157, '099701000', 'CITY OF ISABELA', '09', '0997', '099701'),
(1158, '101301000', 'BAUNGON', '10', '1013', '101301'),
(1159, '101302000', 'DAMULOG', '10', '1013', '101302'),
(1160, '101303000', 'DANGCAGAN', '10', '1013', '101303'),
(1161, '101304000', 'DON CARLOS', '10', '1013', '101304'),
(1162, '101305000', 'IMPASUG-ONG', '10', '1013', '101305'),
(1163, '101306000', 'KADINGILAN', '10', '1013', '101306'),
(1164, '101307000', 'KALILANGAN', '10', '1013', '101307'),
(1165, '101308000', 'KIBAWE', '10', '1013', '101308'),
(1166, '101309000', 'KITAOTAO', '10', '1013', '101309'),
(1167, '101310000', 'LANTAPAN', '10', '1013', '101310'),
(1168, '101311000', 'LIBONA', '10', '1013', '101311'),
(1169, '101312000', 'CITY OF MALAYBALAY (Capital)', '10', '1013', '101312'),
(1170, '101313000', 'MALITBOG', '10', '1013', '101313'),
(1171, '101314000', 'MANOLO FORTICH', '10', '1013', '101314'),
(1172, '101315000', 'MARAMAG', '10', '1013', '101315'),
(1173, '101316000', 'PANGANTUCAN', '10', '1013', '101316'),
(1174, '101317000', 'QUEZON', '10', '1013', '101317'),
(1175, '101318000', 'SAN FERNANDO', '10', '1013', '101318'),
(1176, '101319000', 'SUMILAO', '10', '1013', '101319'),
(1177, '101320000', 'TALAKAG', '10', '1013', '101320'),
(1178, '101321000', 'CITY OF VALENCIA', '10', '1013', '101321'),
(1179, '101322000', 'CABANGLASAN', '10', '1013', '101322'),
(1180, '101801000', 'CATARMAN', '10', '1018', '101801'),
(1181, '101802000', 'GUINSILIBAN', '10', '1018', '101802'),
(1182, '101803000', 'MAHINOG', '10', '1018', '101803'),
(1183, '101804000', 'MAMBAJAO (Capital)', '10', '1018', '101804'),
(1184, '101805000', 'SAGAY', '10', '1018', '101805'),
(1185, '103501000', 'BACOLOD', '10', '1035', '103501'),
(1186, '103502000', 'BALOI', '10', '1035', '103502'),
(1187, '103503000', 'BAROY', '10', '1035', '103503'),
(1188, '103504000', 'ILIGAN CITY', '10', '1035', '103504'),
(1189, '103505000', 'KAPATAGAN', '10', '1035', '103505'),
(1190, '103506000', 'SULTAN NAGA DIMAPORO (KAROMATAN)', '10', '1035', '103506'),
(1191, '103507000', 'KAUSWAGAN', '10', '1035', '103507'),
(1192, '103508000', 'KOLAMBUGAN', '10', '1035', '103508'),
(1193, '103509000', 'LALA', '10', '1035', '103509'),
(1194, '103510000', 'LINAMON', '10', '1035', '103510'),
(1195, '103511000', 'MAGSAYSAY', '10', '1035', '103511'),
(1196, '103512000', 'MAIGO', '10', '1035', '103512'),
(1197, '103513000', 'MATUNGAO', '10', '1035', '103513'),
(1198, '103514000', 'MUNAI', '10', '1035', '103514'),
(1199, '103515000', 'NUNUNGAN', '10', '1035', '103515'),
(1200, '103516000', 'PANTAO RAGAT', '10', '1035', '103516'),
(1201, '103517000', 'POONA PIAGAPO', '10', '1035', '103517'),
(1202, '103518000', 'SALVADOR', '10', '1035', '103518'),
(1203, '103519000', 'SAPAD', '10', '1035', '103519'),
(1204, '103520000', 'TAGOLOAN', '10', '1035', '103520'),
(1205, '103521000', 'TANGCAL', '10', '1035', '103521'),
(1206, '103522000', 'TUBOD (Capital)', '10', '1035', '103522'),
(1207, '103523000', 'PANTAR', '10', '1035', '103523'),
(1208, '104201000', 'ALORAN', '10', '1042', '104201'),
(1209, '104202000', 'BALIANGAO', '10', '1042', '104202'),
(1210, '104203000', 'BONIFACIO', '10', '1042', '104203'),
(1211, '104204000', 'CALAMBA', '10', '1042', '104204'),
(1212, '104205000', 'CLARIN', '10', '1042', '104205'),
(1213, '104206000', 'CONCEPCION', '10', '1042', '104206'),
(1214, '104207000', 'JIMENEZ', '10', '1042', '104207'),
(1215, '104208000', 'LOPEZ JAENA', '10', '1042', '104208'),
(1216, '104209000', 'OROQUIETA CITY (Capital)', '10', '1042', '104209'),
(1217, '104210000', 'OZAMIS CITY', '10', '1042', '104210'),
(1218, '104211000', 'PANAON', '10', '1042', '104211'),
(1219, '104212000', 'PLARIDEL', '10', '1042', '104212'),
(1220, '104213000', 'SAPANG DALAGA', '10', '1042', '104213'),
(1221, '104214000', 'SINACABAN', '10', '1042', '104214'),
(1222, '104215000', 'TANGUB CITY', '10', '1042', '104215'),
(1223, '104216000', 'TUDELA', '10', '1042', '104216'),
(1224, '104217000', 'DON VICTORIANO CHIONGBIAN  (DON MARIANO MARCOS)', '10', '1042', '104217'),
(1225, '104301000', 'ALUBIJID', '10', '1043', '104301'),
(1226, '104302000', 'BALINGASAG', '10', '1043', '104302'),
(1227, '104303000', 'BALINGOAN', '10', '1043', '104303'),
(1228, '104304000', 'BINUANGAN', '10', '1043', '104304'),
(1229, '104305000', 'CAGAYAN DE ORO CITY (Capital)', '10', '1043', '104305'),
(1230, '104306000', 'CLAVERIA', '10', '1043', '104306'),
(1231, '104307000', 'CITY OF EL SALVADOR', '10', '1043', '104307'),
(1232, '104308000', 'GINGOOG CITY', '10', '1043', '104308'),
(1233, '104309000', 'GITAGUM', '10', '1043', '104309'),
(1234, '104310000', 'INITAO', '10', '1043', '104310'),
(1235, '104311000', 'JASAAN', '10', '1043', '104311'),
(1236, '104312000', 'KINOGUITAN', '10', '1043', '104312'),
(1237, '104313000', 'LAGONGLONG', '10', '1043', '104313'),
(1238, '104314000', 'LAGUINDINGAN', '10', '1043', '104314'),
(1239, '104315000', 'LIBERTAD', '10', '1043', '104315'),
(1240, '104316000', 'LUGAIT', '10', '1043', '104316'),
(1241, '104317000', 'MAGSAYSAY (LINUGOS)', '10', '1043', '104317'),
(1242, '104318000', 'MANTICAO', '10', '1043', '104318'),
(1243, '104319000', 'MEDINA', '10', '1043', '104319'),
(1244, '104320000', 'NAAWAN', '10', '1043', '104320'),
(1245, '104321000', 'OPOL', '10', '1043', '104321'),
(1246, '104322000', 'SALAY', '10', '1043', '104322'),
(1247, '104323000', 'SUGBONGCOGON', '10', '1043', '104323'),
(1248, '104324000', 'TAGOLOAN', '10', '1043', '104324'),
(1249, '104325000', 'TALISAYAN', '10', '1043', '104325'),
(1250, '104326000', 'VILLANUEVA', '10', '1043', '104326'),
(1251, '112301000', 'ASUNCION (SAUG)', '11', '1123', '112301'),
(1252, '112303000', 'CARMEN', '11', '1123', '112303'),
(1253, '112305000', 'KAPALONG', '11', '1123', '112305'),
(1254, '112314000', 'NEW CORELLA', '11', '1123', '112314'),
(1255, '112315000', 'CITY OF PANABO', '11', '1123', '112315'),
(1256, '112317000', 'ISLAND GARDEN CITY OF SAMAL', '11', '1123', '112317'),
(1257, '112318000', 'SANTO TOMAS', '11', '1123', '112318'),
(1258, '112319000', 'CITY OF TAGUM (Capital)', '11', '1123', '112319'),
(1259, '112322000', 'TALAINGOD', '11', '1123', '112322'),
(1260, '112323000', 'BRAULIO E. DUJALI', '11', '1123', '112323'),
(1261, '112324000', 'SAN ISIDRO', '11', '1123', '112324'),
(1262, '112401000', 'BANSALAN', '11', '1124', '112401'),
(1263, '112402000', 'DAVAO CITY', '11', '1124', '112402'),
(1264, '112403000', 'CITY OF DIGOS (Capital)', '11', '1124', '112403'),
(1265, '112404000', 'HAGONOY', '11', '1124', '112404'),
(1266, '112406000', 'KIBLAWAN', '11', '1124', '112406'),
(1267, '112407000', 'MAGSAYSAY', '11', '1124', '112407'),
(1268, '112408000', 'MALALAG', '11', '1124', '112408'),
(1269, '112410000', 'MATANAO', '11', '1124', '112410'),
(1270, '112411000', 'PADADA', '11', '1124', '112411'),
(1271, '112412000', 'SANTA CRUZ', '11', '1124', '112412'),
(1272, '112414000', 'SULOP', '11', '1124', '112414'),
(1273, '112501000', 'BAGANGA', '11', '1125', '112501'),
(1274, '112502000', 'BANAYBANAY', '11', '1125', '112502'),
(1275, '112503000', 'BOSTON', '11', '1125', '112503'),
(1276, '112504000', 'CARAGA', '11', '1125', '112504'),
(1277, '112505000', 'CATEEL', '11', '1125', '112505'),
(1278, '112506000', 'GOVERNOR GENEROSO', '11', '1125', '112506'),
(1279, '112507000', 'LUPON', '11', '1125', '112507'),
(1280, '112508000', 'MANAY', '11', '1125', '112508'),
(1281, '112509000', 'CITY OF MATI (Capital)', '11', '1125', '112509'),
(1282, '112510000', 'SAN ISIDRO', '11', '1125', '112510'),
(1283, '112511000', 'TARRAGONA', '11', '1125', '112511'),
(1284, '118201000', 'COMPOSTELA', '11', '1182', '118201'),
(1285, '118202000', 'LAAK (SAN VICENTE)', '11', '1182', '118202'),
(1286, '118203000', 'MABINI (DOÑA ALICIA)', '11', '1182', '118203'),
(1287, '118204000', 'MACO', '11', '1182', '118204'),
(1288, '118205000', 'MARAGUSAN (SAN MARIANO)', '11', '1182', '118205'),
(1289, '118206000', 'MAWAB', '11', '1182', '118206'),
(1290, '118207000', 'MONKAYO', '11', '1182', '118207'),
(1291, '118208000', 'MONTEVISTA', '11', '1182', '118208'),
(1292, '118209000', 'NABUNTURAN (Capital)', '11', '1182', '118209'),
(1293, '118210000', 'NEW BATAAN', '11', '1182', '118210'),
(1294, '118211000', 'PANTUKAN', '11', '1182', '118211'),
(1295, '118601000', 'DON MARCELINO', '11', '1186', '118601'),
(1296, '118602000', 'JOSE ABAD SANTOS (TRINIDAD)', '11', '1186', '118602'),
(1297, '118603000', 'MALITA', '11', '1186', '118603'),
(1298, '118604000', 'SANTA MARIA', '11', '1186', '118604'),
(1299, '118605000', 'SARANGANI', '11', '1186', '118605'),
(1300, '124701000', 'ALAMADA', '12', '1247', '124701'),
(1301, '124702000', 'CARMEN', '12', '1247', '124702'),
(1302, '124703000', 'KABACAN', '12', '1247', '124703'),
(1303, '124704000', 'CITY OF KIDAPAWAN (Capital)', '12', '1247', '124704'),
(1304, '124705000', 'LIBUNGAN', '12', '1247', '124705'),
(1305, '124706000', 'MAGPET', '12', '1247', '124706'),
(1306, '124707000', 'MAKILALA', '12', '1247', '124707'),
(1307, '124708000', 'MATALAM', '12', '1247', '124708'),
(1308, '124709000', 'MIDSAYAP', '12', '1247', '124709'),
(1309, '124710000', 'M\'LANG', '12', '1247', '124710'),
(1310, '124711000', 'PIGKAWAYAN', '12', '1247', '124711'),
(1311, '124712000', 'PIKIT', '12', '1247', '124712'),
(1312, '124713000', 'PRESIDENT ROXAS', '12', '1247', '124713'),
(1313, '124714000', 'TULUNAN', '12', '1247', '124714'),
(1314, '124715000', 'ANTIPAS', '12', '1247', '124715'),
(1315, '124716000', 'BANISILAN', '12', '1247', '124716'),
(1316, '124717000', 'ALEOSAN', '12', '1247', '124717'),
(1317, '124718000', 'ARAKAN', '12', '1247', '124718'),
(1318, '126302000', 'BANGA', '12', '1263', '126302'),
(1319, '126303000', 'GENERAL SANTOS CITY (DADIANGAS)', '12', '1263', '126303'),
(1320, '126306000', 'CITY OF KORONADAL (Capital)', '12', '1263', '126306'),
(1321, '126311000', 'NORALA', '12', '1263', '126311'),
(1322, '126312000', 'POLOMOLOK', '12', '1263', '126312'),
(1323, '126313000', 'SURALLAH', '12', '1263', '126313'),
(1324, '126314000', 'TAMPAKAN', '12', '1263', '126314'),
(1325, '126315000', 'TANTANGAN', '12', '1263', '126315'),
(1326, '126316000', 'T\'BOLI', '12', '1263', '126316'),
(1327, '126317000', 'TUPI', '12', '1263', '126317'),
(1328, '126318000', 'SANTO NIÑO', '12', '1263', '126318'),
(1329, '126319000', 'LAKE SEBU', '12', '1263', '126319'),
(1330, '126501000', 'BAGUMBAYAN', '12', '1265', '126501'),
(1331, '126502000', 'COLUMBIO', '12', '1265', '126502'),
(1332, '126503000', 'ESPERANZA', '12', '1265', '126503'),
(1333, '126504000', 'ISULAN (Capital)', '12', '1265', '126504'),
(1334, '126505000', 'KALAMANSIG', '12', '1265', '126505'),
(1335, '126506000', 'LEBAK', '12', '1265', '126506'),
(1336, '126507000', 'LUTAYAN', '12', '1265', '126507'),
(1337, '126508000', 'LAMBAYONG (MARIANO MARCOS)', '12', '1265', '126508'),
(1338, '126509000', 'PALIMBANG', '12', '1265', '126509'),
(1339, '126510000', 'PRESIDENT QUIRINO', '12', '1265', '126510'),
(1340, '126511000', 'CITY OF TACURONG', '12', '1265', '126511'),
(1341, '126512000', 'SEN. NINOY AQUINO', '12', '1265', '126512'),
(1342, '128001000', 'ALABEL (Capital)', '12', '1280', '128001'),
(1343, '128002000', 'GLAN', '12', '1280', '128002'),
(1344, '128003000', 'KIAMBA', '12', '1280', '128003'),
(1345, '128004000', 'MAASIM', '12', '1280', '128004'),
(1346, '128005000', 'MAITUM', '12', '1280', '128005'),
(1347, '128006000', 'MALAPATAN', '12', '1280', '128006'),
(1348, '128007000', 'MALUNGON', '12', '1280', '128007'),
(1349, '129804000', 'COTABATO CITY', '12', '1298', '129804'),
(1350, '133901000', 'TONDO I / II', '13', '1339', '133901'),
(1351, '133902000', 'BINONDO', '13', '1339', '133902'),
(1352, '133903000', 'QUIAPO', '13', '1339', '133903'),
(1353, '133904000', 'SAN NICOLAS', '13', '1339', '133904'),
(1354, '133905000', 'SANTA CRUZ', '13', '1339', '133905'),
(1355, '133906000', 'SAMPALOC', '13', '1339', '133906'),
(1356, '133907000', 'SAN MIGUEL', '13', '1339', '133907'),
(1357, '133908000', 'ERMITA', '13', '1339', '133908'),
(1358, '133909000', 'INTRAMUROS', '13', '1339', '133909'),
(1359, '133910000', 'MALATE', '13', '1339', '133910'),
(1360, '133911000', 'PACO', '13', '1339', '133911'),
(1361, '133912000', 'PANDACAN', '13', '1339', '133912'),
(1362, '133913000', 'PORT AREA', '13', '1339', '133913'),
(1363, '133914000', 'SANTA ANA', '13', '1339', '133914'),
(1364, '137401000', 'CITY OF MANDALUYONG', '13', '1374', '137401'),
(1365, '137402000', 'CITY OF MARIKINA', '13', '1374', '137402'),
(1366, '137403000', 'CITY OF PASIG', '13', '1374', '137403'),
(1367, '137404000', 'QUEZON CITY', '13', '1374', '137404'),
(1368, '137405000', 'CITY OF SAN JUAN', '13', '1374', '137405'),
(1369, '137501000', 'CALOOCAN CITY', '13', '1375', '137501'),
(1370, '137502000', 'CITY OF MALABON', '13', '1375', '137502'),
(1371, '137503000', 'CITY OF NAVOTAS', '13', '1375', '137503'),
(1372, '137504000', 'CITY OF VALENZUELA', '13', '1375', '137504'),
(1373, '137601000', 'CITY OF LAS PIÑAS', '13', '1376', '137601'),
(1374, '137602000', 'CITY OF MAKATI', '13', '1376', '137602'),
(1375, '137603000', 'CITY OF MUNTINLUPA', '13', '1376', '137603'),
(1376, '137604000', 'CITY OF PARAÑAQUE', '13', '1376', '137604'),
(1377, '137605000', 'PASAY CITY', '13', '1376', '137605'),
(1378, '137606000', 'PATEROS', '13', '1376', '137606'),
(1379, '137607000', 'TAGUIG CITY', '13', '1376', '137607'),
(1380, '140101000', 'BANGUED (Capital)', '14', '1401', '140101'),
(1381, '140102000', 'BOLINEY', '14', '1401', '140102'),
(1382, '140103000', 'BUCAY', '14', '1401', '140103'),
(1383, '140104000', 'BUCLOC', '14', '1401', '140104'),
(1384, '140105000', 'DAGUIOMAN', '14', '1401', '140105'),
(1385, '140106000', 'DANGLAS', '14', '1401', '140106'),
(1386, '140107000', 'DOLORES', '14', '1401', '140107'),
(1387, '140108000', 'LA PAZ', '14', '1401', '140108'),
(1388, '140109000', 'LACUB', '14', '1401', '140109'),
(1389, '140110000', 'LAGANGILANG', '14', '1401', '140110'),
(1390, '140111000', 'LAGAYAN', '14', '1401', '140111'),
(1391, '140112000', 'LANGIDEN', '14', '1401', '140112'),
(1392, '140113000', 'LICUAN-BAAY (LICUAN)', '14', '1401', '140113'),
(1393, '140114000', 'LUBA', '14', '1401', '140114'),
(1394, '140115000', 'MALIBCONG', '14', '1401', '140115'),
(1395, '140116000', 'MANABO', '14', '1401', '140116'),
(1396, '140117000', 'PEÑARRUBIA', '14', '1401', '140117'),
(1397, '140118000', 'PIDIGAN', '14', '1401', '140118'),
(1398, '140119000', 'PILAR', '14', '1401', '140119'),
(1399, '140120000', 'SALLAPADAN', '14', '1401', '140120'),
(1400, '140121000', 'SAN ISIDRO', '14', '1401', '140121'),
(1401, '140122000', 'SAN JUAN', '14', '1401', '140122'),
(1402, '140123000', 'SAN QUINTIN', '14', '1401', '140123'),
(1403, '140124000', 'TAYUM', '14', '1401', '140124'),
(1404, '140125000', 'TINEG', '14', '1401', '140125'),
(1405, '140126000', 'TUBO', '14', '1401', '140126'),
(1406, '140127000', 'VILLAVICIOSA', '14', '1401', '140127'),
(1407, '141101000', 'ATOK', '14', '1411', '141101'),
(1408, '141102000', 'BAGUIO CITY', '14', '1411', '141102'),
(1409, '141103000', 'BAKUN', '14', '1411', '141103'),
(1410, '141104000', 'BOKOD', '14', '1411', '141104'),
(1411, '141105000', 'BUGUIAS', '14', '1411', '141105'),
(1412, '141106000', 'ITOGON', '14', '1411', '141106'),
(1413, '141107000', 'KABAYAN', '14', '1411', '141107'),
(1414, '141108000', 'KAPANGAN', '14', '1411', '141108'),
(1415, '141109000', 'KIBUNGAN', '14', '1411', '141109'),
(1416, '141110000', 'LA TRINIDAD (Capital)', '14', '1411', '141110'),
(1417, '141111000', 'MANKAYAN', '14', '1411', '141111'),
(1418, '141112000', 'SABLAN', '14', '1411', '141112'),
(1419, '141113000', 'TUBA', '14', '1411', '141113'),
(1420, '141114000', 'TUBLAY', '14', '1411', '141114'),
(1421, '142701000', 'BANAUE', '14', '1427', '142701'),
(1422, '142702000', 'HUNGDUAN', '14', '1427', '142702'),
(1423, '142703000', 'KIANGAN', '14', '1427', '142703'),
(1424, '142704000', 'LAGAWE (Capital)', '14', '1427', '142704'),
(1425, '142705000', 'LAMUT', '14', '1427', '142705'),
(1426, '142706000', 'MAYOYAO', '14', '1427', '142706'),
(1427, '142707000', 'ALFONSO LISTA (POTIA)', '14', '1427', '142707'),
(1428, '142708000', 'AGUINALDO', '14', '1427', '142708'),
(1429, '142709000', 'HINGYON', '14', '1427', '142709'),
(1430, '142710000', 'TINOC', '14', '1427', '142710'),
(1431, '142711000', 'ASIPULO', '14', '1427', '142711'),
(1432, '143201000', 'BALBALAN', '14', '1432', '143201'),
(1433, '143206000', 'LUBUAGAN', '14', '1432', '143206'),
(1434, '143208000', 'PASIL', '14', '1432', '143208'),
(1435, '143209000', 'PINUKPUK', '14', '1432', '143209'),
(1436, '143211000', 'RIZAL (LIWAN)', '14', '1432', '143211'),
(1437, '143213000', 'CITY OF TABUK (Capital)', '14', '1432', '143213'),
(1438, '143214000', 'TANUDAN', '14', '1432', '143214'),
(1439, '143215000', 'TINGLAYAN', '14', '1432', '143215'),
(1440, '144401000', 'BARLIG', '14', '1444', '144401'),
(1441, '144402000', 'BAUKO', '14', '1444', '144402'),
(1442, '144403000', 'BESAO', '14', '1444', '144403'),
(1443, '144404000', 'BONTOC (Capital)', '14', '1444', '144404'),
(1444, '144405000', 'NATONIN', '14', '1444', '144405'),
(1445, '144406000', 'PARACELIS', '14', '1444', '144406'),
(1446, '144407000', 'SABANGAN', '14', '1444', '144407'),
(1447, '144408000', 'SADANGA', '14', '1444', '144408'),
(1448, '144409000', 'SAGADA', '14', '1444', '144409'),
(1449, '144410000', 'TADIAN', '14', '1444', '144410'),
(1450, '148101000', 'CALANASAN (BAYAG)', '14', '1481', '148101'),
(1451, '148102000', 'CONNER', '14', '1481', '148102'),
(1452, '148103000', 'FLORA', '14', '1481', '148103'),
(1453, '148104000', 'KABUGAO (Capital)', '14', '1481', '148104'),
(1454, '148105000', 'LUNA', '14', '1481', '148105'),
(1455, '148106000', 'PUDTOL', '14', '1481', '148106'),
(1456, '148107000', 'SANTA MARCELA', '14', '1481', '148107'),
(1457, '150702000', 'CITY OF LAMITAN', '15', '1507', '150702'),
(1458, '150703000', 'LANTAWAN', '15', '1507', '150703'),
(1459, '150704000', 'MALUSO', '15', '1507', '150704'),
(1460, '150705000', 'SUMISIP', '15', '1507', '150705'),
(1461, '150706000', 'TIPO-TIPO', '15', '1507', '150706'),
(1462, '150707000', 'TUBURAN', '15', '1507', '150707'),
(1463, '150708000', 'AKBAR', '15', '1507', '150708'),
(1464, '150709000', 'AL-BARKA', '15', '1507', '150709'),
(1465, '150710000', 'HADJI MOHAMMAD AJUL', '15', '1507', '150710'),
(1466, '150711000', 'UNGKAYA PUKAN', '15', '1507', '150711'),
(1467, '150712000', 'HADJI MUHTAMAD', '15', '1507', '150712'),
(1468, '150713000', 'TABUAN-LASA', '15', '1507', '150713'),
(1469, '153601000', 'BACOLOD-KALAWI (BACOLOD GRANDE)', '15', '1536', '153601'),
(1470, '153602000', 'BALABAGAN', '15', '1536', '153602'),
(1471, '153603000', 'BALINDONG (WATU)', '15', '1536', '153603'),
(1472, '153604000', 'BAYANG', '15', '1536', '153604'),
(1473, '153605000', 'BINIDAYAN', '15', '1536', '153605'),
(1474, '153606000', 'BUBONG', '15', '1536', '153606'),
(1475, '153607000', 'BUTIG', '15', '1536', '153607'),
(1476, '153609000', 'GANASSI', '15', '1536', '153609'),
(1477, '153610000', 'KAPAI', '15', '1536', '153610'),
(1478, '153611000', 'LUMBA-BAYABAO (MAGUING)', '15', '1536', '153611'),
(1479, '153612000', 'LUMBATAN', '15', '1536', '153612'),
(1480, '153613000', 'MADALUM', '15', '1536', '153613'),
(1481, '153614000', 'MADAMBA', '15', '1536', '153614'),
(1482, '153615000', 'MALABANG', '15', '1536', '153615'),
(1483, '153616000', 'MARANTAO', '15', '1536', '153616'),
(1484, '153617000', 'MARAWI CITY (Capital)', '15', '1536', '153617'),
(1485, '153618000', 'MASIU', '15', '1536', '153618'),
(1486, '153619000', 'MULONDO', '15', '1536', '153619'),
(1487, '153620000', 'PAGAYAWAN (TATARIKAN)', '15', '1536', '153620'),
(1488, '153621000', 'PIAGAPO', '15', '1536', '153621'),
(1489, '153622000', 'POONA BAYABAO (GATA)', '15', '1536', '153622'),
(1490, '153623000', 'PUALAS', '15', '1536', '153623'),
(1491, '153624000', 'DITSAAN-RAMAIN', '15', '1536', '153624'),
(1492, '153625000', 'SAGUIARAN', '15', '1536', '153625'),
(1493, '153626000', 'TAMPARAN', '15', '1536', '153626'),
(1494, '153627000', 'TARAKA', '15', '1536', '153627'),
(1495, '153628000', 'TUBARAN', '15', '1536', '153628'),
(1496, '153629000', 'TUGAYA', '15', '1536', '153629'),
(1497, '153630000', 'WAO', '15', '1536', '153630'),
(1498, '153631000', 'MAROGONG', '15', '1536', '153631'),
(1499, '153632000', 'CALANOGAS', '15', '1536', '153632'),
(1500, '153633000', 'BUADIPOSO-BUNTONG', '15', '1536', '153633'),
(1501, '153634000', 'MAGUING', '15', '1536', '153634'),
(1502, '153635000', 'PICONG (SULTAN GUMANDER)', '15', '1536', '153635'),
(1503, '153636000', 'LUMBAYANAGUE', '15', '1536', '153636'),
(1504, '153637000', 'BUMBARAN', '15', '1536', '153637'),
(1505, '153638000', 'TAGOLOAN II', '15', '1536', '153638'),
(1506, '153639000', 'KAPATAGAN', '15', '1536', '153639'),
(1507, '153640000', 'SULTAN DUMALONDONG', '15', '1536', '153640'),
(1508, '153641000', 'LUMBACA-UNAYAN', '15', '1536', '153641'),
(1509, '153801000', 'AMPATUAN', '15', '1538', '153801'),
(1510, '153802000', 'BULDON', '15', '1538', '153802'),
(1511, '153803000', 'BULUAN', '15', '1538', '153803'),
(1512, '153805000', 'DATU PAGLAS', '15', '1538', '153805'),
(1513, '153806000', 'DATU PIANG', '15', '1538', '153806'),
(1514, '153807000', 'DATU ODIN SINSUAT (DINAIG)', '15', '1538', '153807'),
(1515, '153808000', 'SHARIFF AGUAK (MAGANOY) (Capital)', '15', '1538', '153808'),
(1516, '153809000', 'MATANOG', '15', '1538', '153809'),
(1517, '153810000', 'PAGALUNGAN', '15', '1538', '153810'),
(1518, '153811000', 'PARANG', '15', '1538', '153811'),
(1519, '153812000', 'SULTAN KUDARAT (NULING)', '15', '1538', '153812'),
(1520, '153813000', 'SULTAN SA BARONGIS (LAMBAYONG)', '15', '1538', '153813'),
(1521, '153814000', 'KABUNTALAN (TUMBAO)', '15', '1538', '153814'),
(1522, '153815000', 'UPI', '15', '1538', '153815'),
(1523, '153816000', 'TALAYAN', '15', '1538', '153816'),
(1524, '153817000', 'SOUTH UPI', '15', '1538', '153817'),
(1525, '153818000', 'BARIRA', '15', '1538', '153818'),
(1526, '153819000', 'GEN. S. K. PENDATUN', '15', '1538', '153819'),
(1527, '153820000', 'MAMASAPANO', '15', '1538', '153820'),
(1528, '153821000', 'TALITAY', '15', '1538', '153821'),
(1529, '153822000', 'PAGAGAWAN', '15', '1538', '153822'),
(1530, '153823000', 'PAGLAT', '15', '1538', '153823'),
(1531, '153824000', 'SULTAN MASTURA', '15', '1538', '153824'),
(1532, '153825000', 'GUINDULUNGAN', '15', '1538', '153825'),
(1533, '153826000', 'DATU SAUDI-AMPATUAN', '15', '1538', '153826'),
(1534, '153827000', 'DATU UNSAY', '15', '1538', '153827'),
(1535, '153828000', 'DATU ABDULLAH SANGKI', '15', '1538', '153828'),
(1536, '153829000', 'RAJAH BUAYAN', '15', '1538', '153829'),
(1537, '153830000', 'DATU BLAH T. SINSUAT', '15', '1538', '153830'),
(1538, '153831000', 'DATU ANGGAL MIDTIMBANG', '15', '1538', '153831'),
(1539, '153832000', 'MANGUDADATU', '15', '1538', '153832'),
(1540, '153833000', 'PANDAG', '15', '1538', '153833'),
(1541, '153834000', 'NORTHERN KABUNTALAN', '15', '1538', '153834'),
(1542, '153835000', 'DATU HOFFER AMPATUAN', '15', '1538', '153835'),
(1543, '153836000', 'DATU SALIBO', '15', '1538', '153836'),
(1544, '153837000', 'SHARIFF SAYDONA MUSTAPHA', '15', '1538', '153837'),
(1545, '156601000', 'INDANAN', '15', '1566', '156601'),
(1546, '156602000', 'JOLO (Capital)', '15', '1566', '156602'),
(1547, '156603000', 'KALINGALAN CALUANG', '15', '1566', '156603'),
(1548, '156604000', 'LUUK', '15', '1566', '156604'),
(1549, '156605000', 'MAIMBUNG', '15', '1566', '156605'),
(1550, '156606000', 'HADJI PANGLIMA TAHIL (MARUNGGAS)', '15', '1566', '156606'),
(1551, '156607000', 'OLD PANAMAO', '15', '1566', '156607'),
(1552, '156608000', 'PANGUTARAN', '15', '1566', '156608'),
(1553, '156609000', 'PARANG', '15', '1566', '156609'),
(1554, '156610000', 'PATA', '15', '1566', '156610'),
(1555, '156611000', 'PATIKUL', '15', '1566', '156611'),
(1556, '156612000', 'SIASI', '15', '1566', '156612'),
(1557, '156613000', 'TALIPAO', '15', '1566', '156613'),
(1558, '156614000', 'TAPUL', '15', '1566', '156614'),
(1559, '156615000', 'TONGKIL', '15', '1566', '156615'),
(1560, '156616000', 'PANGLIMA ESTINO (NEW PANAMAO)', '15', '1566', '156616'),
(1561, '156617000', 'LUGUS', '15', '1566', '156617'),
(1562, '156618000', 'PANDAMI', '15', '1566', '156618'),
(1563, '156619000', 'OMAR', '15', '1566', '156619'),
(1564, '157001000', 'PANGLIMA SUGALA (BALIMBING)', '15', '1570', '157001'),
(1565, '157002000', 'BONGAO (Capital)', '15', '1570', '157002'),
(1566, '157003000', 'MAPUN (CAGAYAN DE TAWI-TAWI)', '15', '1570', '157003'),
(1567, '157004000', 'SIMUNUL', '15', '1570', '157004'),
(1568, '157005000', 'SITANGKAI', '15', '1570', '157005'),
(1569, '157006000', 'SOUTH UBIAN', '15', '1570', '157006'),
(1570, '157007000', 'TANDUBAS', '15', '1570', '157007'),
(1571, '157008000', 'TURTLE ISLANDS', '15', '1570', '157008'),
(1572, '157009000', 'LANGUYAN', '15', '1570', '157009'),
(1573, '157010000', 'SAPA-SAPA', '15', '1570', '157010'),
(1574, '157011000', 'SIBUTU', '15', '1570', '157011'),
(1575, '160201000', 'BUENAVISTA', '16', '1602', '160201'),
(1576, '160202000', 'BUTUAN CITY (Capital)', '16', '1602', '160202'),
(1577, '160203000', 'CITY OF CABADBARAN', '16', '1602', '160203'),
(1578, '160204000', 'CARMEN', '16', '1602', '160204'),
(1579, '160205000', 'JABONGA', '16', '1602', '160205'),
(1580, '160206000', 'KITCHARAO', '16', '1602', '160206'),
(1581, '160207000', 'LAS NIEVES', '16', '1602', '160207'),
(1582, '160208000', 'MAGALLANES', '16', '1602', '160208'),
(1583, '160209000', 'NASIPIT', '16', '1602', '160209'),
(1584, '160210000', 'SANTIAGO', '16', '1602', '160210'),
(1585, '160211000', 'TUBAY', '16', '1602', '160211'),
(1586, '160212000', 'REMEDIOS T. ROMUALDEZ', '16', '1602', '160212'),
(1587, '160301000', 'CITY OF BAYUGAN', '16', '1603', '160301'),
(1588, '160302000', 'BUNAWAN', '16', '1603', '160302'),
(1589, '160303000', 'ESPERANZA', '16', '1603', '160303'),
(1590, '160304000', 'LA PAZ', '16', '1603', '160304'),
(1591, '160305000', 'LORETO', '16', '1603', '160305'),
(1592, '160306000', 'PROSPERIDAD (Capital)', '16', '1603', '160306'),
(1593, '160307000', 'ROSARIO', '16', '1603', '160307'),
(1594, '160308000', 'SAN FRANCISCO', '16', '1603', '160308'),
(1595, '160309000', 'SAN LUIS', '16', '1603', '160309'),
(1596, '160310000', 'SANTA JOSEFA', '16', '1603', '160310'),
(1597, '160311000', 'TALACOGON', '16', '1603', '160311'),
(1598, '160312000', 'TRENTO', '16', '1603', '160312'),
(1599, '160313000', 'VERUELA', '16', '1603', '160313'),
(1600, '160314000', 'SIBAGAT', '16', '1603', '160314'),
(1601, '166701000', 'ALEGRIA', '16', '1667', '166701'),
(1602, '166702000', 'BACUAG', '16', '1667', '166702'),
(1603, '166704000', 'BURGOS', '16', '1667', '166704'),
(1604, '166706000', 'CLAVER', '16', '1667', '166706'),
(1605, '166707000', 'DAPA', '16', '1667', '166707'),
(1606, '166708000', 'DEL CARMEN', '16', '1667', '166708'),
(1607, '166710000', 'GENERAL LUNA', '16', '1667', '166710'),
(1608, '166711000', 'GIGAQUIT', '16', '1667', '166711'),
(1609, '166714000', 'MAINIT', '16', '1667', '166714'),
(1610, '166715000', 'MALIMONO', '16', '1667', '166715'),
(1611, '166716000', 'PILAR', '16', '1667', '166716'),
(1612, '166717000', 'PLACER', '16', '1667', '166717'),
(1613, '166718000', 'SAN BENITO', '16', '1667', '166718'),
(1614, '166719000', 'SAN FRANCISCO (ANAO-AON)', '16', '1667', '166719'),
(1615, '166720000', 'SAN ISIDRO', '16', '1667', '166720'),
(1616, '166721000', 'SANTA MONICA (SAPAO)', '16', '1667', '166721'),
(1617, '166722000', 'SISON', '16', '1667', '166722'),
(1618, '166723000', 'SOCORRO', '16', '1667', '166723'),
(1619, '166724000', 'SURIGAO CITY (Capital)', '16', '1667', '166724'),
(1620, '166725000', 'TAGANA-AN', '16', '1667', '166725'),
(1621, '166727000', 'TUBOD', '16', '1667', '166727'),
(1622, '166801000', 'BAROBO', '16', '1668', '166801'),
(1623, '166802000', 'BAYABAS', '16', '1668', '166802'),
(1624, '166803000', 'CITY OF BISLIG', '16', '1668', '166803'),
(1625, '166804000', 'CAGWAIT', '16', '1668', '166804'),
(1626, '166805000', 'CANTILAN', '16', '1668', '166805'),
(1627, '166806000', 'CARMEN', '16', '1668', '166806'),
(1628, '166807000', 'CARRASCAL', '16', '1668', '166807'),
(1629, '166808000', 'CORTES', '16', '1668', '166808'),
(1630, '166809000', 'HINATUAN', '16', '1668', '166809'),
(1631, '166810000', 'LANUZA', '16', '1668', '166810'),
(1632, '166811000', 'LIANGA', '16', '1668', '166811'),
(1633, '166812000', 'LINGIG', '16', '1668', '166812'),
(1634, '166813000', 'MADRID', '16', '1668', '166813'),
(1635, '166814000', 'MARIHATAG', '16', '1668', '166814'),
(1636, '166815000', 'SAN AGUSTIN', '16', '1668', '166815'),
(1637, '166816000', 'SAN MIGUEL', '16', '1668', '166816'),
(1638, '166817000', 'TAGBINA', '16', '1668', '166817'),
(1639, '166818000', 'TAGO', '16', '1668', '166818'),
(1640, '166819000', 'CITY OF TANDAG (Capital)', '16', '1668', '166819'),
(1641, '168501000', 'BASILISA (RIZAL)', '16', '1685', '168501'),
(1642, '168502000', 'CAGDIANAO', '16', '1685', '168502'),
(1643, '168503000', 'DINAGAT', '16', '1685', '168503'),
(1644, '168504000', 'LIBJO (ALBOR)', '16', '1685', '168504'),
(1645, '168505000', 'LORETO', '16', '1685', '168505'),
(1646, '168506000', 'SAN JOSE (Capital)', '16', '1685', '168506'),
(1647, '168507000', 'TUBAJON', '16', '1685', '168507');

-- --------------------------------------------------------

--
-- Table structure for table `ref_complainant`
--

CREATE TABLE `ref_complainant` (
  `complainantType_ID` int(11) UNSIGNED NOT NULL,
  `complainantType_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_complainant`
--

INSERT INTO `ref_complainant` (`complainantType_ID`, `complainantType_Name`) VALUES
(1, 'Resident'),
(2, 'Outsider');

-- --------------------------------------------------------

--
-- Table structure for table `ref_contact`
--

CREATE TABLE `ref_contact` (
  `contactType_ID` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `contactType_Name` varchar(6) DEFAULT NULL COMMENT 'Contact Type Name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_contact`
--

INSERT INTO `ref_contact` (`contactType_ID`, `contactType_Name`) VALUES
(1, 'Home'),
(2, 'Work'),
(3, 'Mobile'),
(4, 'Fax'),
(5, 'Etc');

-- --------------------------------------------------------

--
-- Table structure for table `ref_country`
--

CREATE TABLE `ref_country` (
  `country_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `country_iso` char(2) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `country_iso3` char(3) DEFAULT NULL,
  `country_numcode` smallint(6) DEFAULT NULL,
  `country_phonecode` int(5) DEFAULT NULL,
  `country_nationality` varchar(80) DEFAULT NULL,
  `country_citizenship` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_country`
--

INSERT INTO `ref_country` (`country_ID`, `country_iso`, `country_name`, `country_iso3`, `country_numcode`, `country_phonecode`, `country_nationality`, `country_citizenship`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', 4, 93, NULL, NULL),
(2, 'AL', 'Albania', 'ALB', 8, 355, NULL, NULL),
(3, 'DZ', 'Algeria', 'DZA', 12, 213, NULL, NULL),
(4, 'AS', 'American Samoa', 'ASM', 16, 1684, NULL, NULL),
(5, 'AD', 'Andorra', 'AND', 20, 376, NULL, NULL),
(6, 'AO', 'Angola', 'AGO', 24, 244, NULL, NULL),
(7, 'AI', 'Anguilla', 'AIA', 660, 1264, NULL, NULL),
(8, 'AQ', 'Antarctica', NULL, NULL, 0, NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL),
(10, 'AR', 'Argentina', 'ARG', 32, 54, NULL, NULL),
(11, 'AM', 'Armenia', 'ARM', 51, 374, NULL, NULL),
(12, 'AW', 'Aruba', 'ABW', 533, 297, NULL, NULL),
(13, 'AU', 'Australia', 'AUS', 36, 61, NULL, NULL),
(14, 'AT', 'Austria', 'AUT', 40, 43, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL),
(16, 'BS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL),
(17, 'BH', 'Bahrain', 'BHR', 48, 973, NULL, NULL),
(18, 'BD', 'Bangladesh', 'BGD', 50, 880, NULL, NULL),
(19, 'BB', 'Barbados', 'BRB', 52, 1246, NULL, NULL),
(20, 'BY', 'Belarus', 'BLR', 112, 375, NULL, NULL),
(21, 'BE', 'Belgium', 'BEL', 56, 32, NULL, NULL),
(22, 'BZ', 'Belize', 'BLZ', 84, 501, NULL, NULL),
(23, 'BJ', 'Benin', 'BEN', 204, 229, NULL, NULL),
(24, 'BM', 'Bermuda', 'BMU', 60, 1441, NULL, NULL),
(25, 'BT', 'Bhutan', 'BTN', 64, 975, NULL, NULL),
(26, 'BO', 'Bolivia', 'BOL', 68, 591, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL),
(28, 'BW', 'Botswana', 'BWA', 72, 267, NULL, NULL),
(29, 'BV', 'Bouvet Island', NULL, NULL, 0, NULL, NULL),
(30, 'BR', 'Brazil', 'BRA', 76, 55, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, 246, NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL),
(33, 'BG', 'Bulgaria', 'BGR', 100, 359, NULL, NULL),
(34, 'BF', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL),
(35, 'BI', 'Burundi', 'BDI', 108, 257, NULL, NULL),
(36, 'KH', 'Cambodia', 'KHM', 116, 855, NULL, NULL),
(37, 'CM', 'Cameroon', 'CMR', 120, 237, NULL, NULL),
(38, 'CA', 'Canada', 'CAN', 124, 1, NULL, NULL),
(39, 'CV', 'Cape Verde', 'CPV', 132, 238, NULL, NULL),
(40, 'KY', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL),
(41, 'CF', 'Central African Republic', 'CAF', 140, 236, NULL, NULL),
(42, 'TD', 'Chad', 'TCD', 148, 235, NULL, NULL),
(43, 'CL', 'Chile', 'CHL', 152, 56, NULL, NULL),
(44, 'CN', 'China', 'CHN', 156, 86, NULL, NULL),
(45, 'CX', 'Christmas Island', NULL, NULL, 61, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, 672, NULL, NULL),
(47, 'CO', 'Colombia', 'COL', 170, 57, NULL, NULL),
(48, 'KM', 'Comoros', 'COM', 174, 269, NULL, NULL),
(49, 'CG', 'Congo', 'COG', 178, 242, NULL, NULL),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL),
(51, 'CK', 'Cook Islands', 'COK', 184, 682, NULL, NULL),
(52, 'CR', 'Costa Rica', 'CRI', 188, 506, NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL),
(54, 'HR', 'Croatia', 'HRV', 191, 385, NULL, NULL),
(55, 'CU', 'Cuba', 'CUB', 192, 53, NULL, NULL),
(56, 'CY', 'Cyprus', 'CYP', 196, 357, NULL, NULL),
(57, 'CZ', 'Czech Republic', 'CZE', 203, 420, NULL, NULL),
(58, 'DK', 'Denmark', 'DNK', 208, 45, NULL, NULL),
(59, 'DJ', 'Djibouti', 'DJI', 262, 253, NULL, NULL),
(60, 'DM', 'Dominica', 'DMA', 212, 1767, NULL, NULL),
(61, 'DO', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL),
(62, 'EC', 'Ecuador', 'ECU', 218, 593, NULL, NULL),
(63, 'EG', 'Egypt', 'EGY', 818, 20, NULL, NULL),
(64, 'SV', 'El Salvador', 'SLV', 222, 503, NULL, NULL),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL),
(66, 'ER', 'Eritrea', 'ERI', 232, 291, NULL, NULL),
(67, 'EE', 'Estonia', 'EST', 233, 372, NULL, NULL),
(68, 'ET', 'Ethiopia', 'ETH', 231, 251, NULL, NULL),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL),
(70, 'FO', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL),
(71, 'FJ', 'Fiji', 'FJI', 242, 679, NULL, NULL),
(72, 'FI', 'Finland', 'FIN', 246, 358, NULL, NULL),
(73, 'FR', 'France', 'FRA', 250, 33, NULL, NULL),
(74, 'GF', 'French Guiana', 'GUF', 254, 594, NULL, NULL),
(75, 'PF', 'French Polynesia', 'PYF', 258, 689, NULL, NULL),
(76, 'TF', 'French Southern Territories', NULL, NULL, 0, NULL, NULL),
(77, 'GA', 'Gabon', 'GAB', 266, 241, NULL, NULL),
(78, 'GM', 'Gambia', 'GMB', 270, 220, NULL, NULL),
(79, 'GE', 'Georgia', 'GEO', 268, 995, NULL, NULL),
(80, 'DE', 'Germany', 'DEU', 276, 49, NULL, NULL),
(81, 'GH', 'Ghana', 'GHA', 288, 233, NULL, NULL),
(82, 'GI', 'Gibraltar', 'GIB', 292, 350, NULL, NULL),
(83, 'GR', 'Greece', 'GRC', 300, 30, NULL, NULL),
(84, 'GL', 'Greenland', 'GRL', 304, 299, NULL, NULL),
(85, 'GD', 'Grenada', 'GRD', 308, 1473, NULL, NULL),
(86, 'GP', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL),
(87, 'GU', 'Guam', 'GUM', 316, 1671, NULL, NULL),
(88, 'GT', 'Guatemala', 'GTM', 320, 502, NULL, NULL),
(89, 'GN', 'Guinea', 'GIN', 324, 224, NULL, NULL),
(90, 'GW', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL),
(91, 'GY', 'Guyana', 'GUY', 328, 592, NULL, NULL),
(92, 'HT', 'Haiti', 'HTI', 332, 509, NULL, NULL),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, NULL, NULL),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL),
(95, 'HN', 'Honduras', 'HND', 340, 504, NULL, NULL),
(96, 'HK', 'Hong Kong', 'HKG', 344, 852, NULL, NULL),
(97, 'HU', 'Hungary', 'HUN', 348, 36, NULL, NULL),
(98, 'IS', 'Iceland', 'ISL', 352, 354, NULL, NULL),
(99, 'IN', 'India', 'IND', 356, 91, NULL, NULL),
(100, 'ID', 'Indonesia', 'IDN', 360, 62, NULL, NULL),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL),
(102, 'IQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL),
(103, 'IE', 'Ireland', 'IRL', 372, 353, NULL, NULL),
(104, 'IL', 'Israel', 'ISR', 376, 972, NULL, NULL),
(105, 'IT', 'Italy', 'ITA', 380, 39, NULL, NULL),
(106, 'JM', 'Jamaica', 'JAM', 388, 1876, NULL, NULL),
(107, 'JP', 'Japan', 'JPN', 392, 81, NULL, NULL),
(108, 'JO', 'Jordan', 'JOR', 400, 962, NULL, NULL),
(109, 'KZ', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL),
(110, 'KE', 'Kenya', 'KEN', 404, 254, NULL, NULL),
(111, 'KI', 'Kiribati', 'KIR', 296, 686, NULL, NULL),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL),
(113, 'KR', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL),
(114, 'KW', 'Kuwait', 'KWT', 414, 965, NULL, NULL),
(115, 'KG', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL),
(117, 'LV', 'Latvia', 'LVA', 428, 371, NULL, NULL),
(118, 'LB', 'Lebanon', 'LBN', 422, 961, NULL, NULL),
(119, 'LS', 'Lesotho', 'LSO', 426, 266, NULL, NULL),
(120, 'LR', 'Liberia', 'LBR', 430, 231, NULL, NULL),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL),
(122, 'LI', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL),
(123, 'LT', 'Lithuania', 'LTU', 440, 370, NULL, NULL),
(124, 'LU', 'Luxembourg', 'LUX', 442, 352, NULL, NULL),
(125, 'MO', 'Macao', 'MAC', 446, 853, NULL, NULL),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL),
(127, 'MG', 'Madagascar', 'MDG', 450, 261, NULL, NULL),
(128, 'MW', 'Malawi', 'MWI', 454, 265, NULL, NULL),
(129, 'MY', 'Malaysia', 'MYS', 458, 60, NULL, NULL),
(130, 'MV', 'Maldives', 'MDV', 462, 960, NULL, NULL),
(131, 'ML', 'Mali', 'MLI', 466, 223, NULL, NULL),
(132, 'MT', 'Malta', 'MLT', 470, 356, NULL, NULL),
(133, 'MH', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL),
(134, 'MQ', 'Martinique', 'MTQ', 474, 596, NULL, NULL),
(135, 'MR', 'Mauritania', 'MRT', 478, 222, NULL, NULL),
(136, 'MU', 'Mauritius', 'MUS', 480, 230, NULL, NULL),
(137, 'YT', 'Mayotte', NULL, NULL, 269, NULL, NULL),
(138, 'MX', 'Mexico', 'MEX', 484, 52, NULL, NULL),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL),
(140, 'MD', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL),
(141, 'MC', 'Monaco', 'MCO', 492, 377, NULL, NULL),
(142, 'MN', 'Mongolia', 'MNG', 496, 976, NULL, NULL),
(143, 'MS', 'Montserrat', 'MSR', 500, 1664, NULL, NULL),
(144, 'MA', 'Morocco', 'MAR', 504, 212, NULL, NULL),
(145, 'MZ', 'Mozambique', 'MOZ', 508, 258, NULL, NULL),
(146, 'MM', 'Myanmar', 'MMR', 104, 95, NULL, NULL),
(147, 'NA', 'Namibia', 'NAM', 516, 264, NULL, NULL),
(148, 'NR', 'Nauru', 'NRU', 520, 674, NULL, NULL),
(149, 'NP', 'Nepal', 'NPL', 524, 977, NULL, NULL),
(150, 'NL', 'Netherlands', 'NLD', 528, 31, NULL, NULL),
(151, 'AN', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL),
(152, 'NC', 'New Caledonia', 'NCL', 540, 687, NULL, NULL),
(153, 'NZ', 'New Zealand', 'NZL', 554, 64, NULL, NULL),
(154, 'NI', 'Nicaragua', 'NIC', 558, 505, NULL, NULL),
(155, 'NE', 'Niger', 'NER', 562, 227, NULL, NULL),
(156, 'NG', 'Nigeria', 'NGA', 566, 234, NULL, NULL),
(157, 'NU', 'Niue', 'NIU', 570, 683, NULL, NULL),
(158, 'NF', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL),
(159, 'MP', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL),
(160, 'NO', 'Norway', 'NOR', 578, 47, NULL, NULL),
(161, 'OM', 'Oman', 'OMN', 512, 968, NULL, NULL),
(162, 'PK', 'Pakistan', 'PAK', 586, 92, NULL, NULL),
(163, 'PW', 'Palau', 'PLW', 585, 680, NULL, NULL),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, 970, NULL, NULL),
(165, 'PA', 'Panama', 'PAN', 591, 507, NULL, NULL),
(166, 'PG', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL),
(167, 'PY', 'Paraguay', 'PRY', 600, 595, NULL, NULL),
(168, 'PE', 'Peru', 'PER', 604, 51, NULL, NULL),
(169, 'PH', 'Philippines', 'PHL', 608, 63, 'Filipino', 'Filipino'),
(170, 'PN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL),
(171, 'PL', 'Poland', 'POL', 616, 48, NULL, NULL),
(172, 'PT', 'Portugal', 'PRT', 620, 351, NULL, NULL),
(173, 'PR', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL),
(174, 'QA', 'Qatar', 'QAT', 634, 974, NULL, NULL),
(175, 'RE', 'Reunion', 'REU', 638, 262, NULL, NULL),
(176, 'RO', 'Romania', 'ROM', 642, 40, NULL, NULL),
(177, 'RU', 'Russian Federation', 'RUS', 643, 70, NULL, NULL),
(178, 'RW', 'Rwanda', 'RWA', 646, 250, NULL, NULL),
(179, 'SH', 'Saint Helena', 'SHN', 654, 290, NULL, NULL),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL),
(181, 'LC', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL),
(184, 'WS', 'Samoa', 'WSM', 882, 684, NULL, NULL),
(185, 'SM', 'San Marino', 'SMR', 674, 378, NULL, NULL),
(186, 'ST', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL),
(187, 'SA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL),
(188, 'SN', 'Senegal', 'SEN', 686, 221, NULL, NULL),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, 381, NULL, NULL),
(190, 'SC', 'Seychelles', 'SYC', 690, 248, NULL, NULL),
(191, 'SL', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL),
(192, 'SG', 'Singapore', 'SGP', 702, 65, NULL, NULL),
(193, 'SK', 'Slovakia', 'SVK', 703, 421, NULL, NULL),
(194, 'SI', 'Slovenia', 'SVN', 705, 386, NULL, NULL),
(195, 'SB', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL),
(196, 'SO', 'Somalia', 'SOM', 706, 252, NULL, NULL),
(197, 'ZA', 'South Africa', 'ZAF', 710, 27, NULL, NULL),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, NULL, NULL),
(199, 'ES', 'Spain', 'ESP', 724, 34, NULL, NULL),
(200, 'LK', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL),
(201, 'SD', 'Sudan', 'SDN', 736, 249, NULL, NULL),
(202, 'SR', 'Suriname', 'SUR', 740, 597, NULL, NULL),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL),
(204, 'SZ', 'Swaziland', 'SWZ', 748, 268, NULL, NULL),
(205, 'SE', 'Sweden', 'SWE', 752, 46, NULL, NULL),
(206, 'CH', 'Switzerland', 'CHE', 756, 41, NULL, NULL),
(207, 'SY', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL),
(208, 'TW', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL),
(209, 'TJ', 'Tajikistan', 'TJK', 762, 992, NULL, NULL),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL),
(211, 'TH', 'Thailand', 'THA', 764, 66, NULL, NULL),
(212, 'TL', 'Timor-Leste', NULL, NULL, 670, NULL, NULL),
(213, 'TG', 'Togo', 'TGO', 768, 228, NULL, NULL),
(214, 'TK', 'Tokelau', 'TKL', 772, 690, NULL, NULL),
(215, 'TO', 'Tonga', 'TON', 776, 676, NULL, NULL),
(216, 'TT', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL),
(217, 'TN', 'Tunisia', 'TUN', 788, 216, NULL, NULL),
(218, 'TR', 'Turkey', 'TUR', 792, 90, NULL, NULL),
(219, 'TM', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL),
(221, 'TV', 'Tuvalu', 'TUV', 798, 688, NULL, NULL),
(222, 'UG', 'Uganda', 'UGA', 800, 256, NULL, NULL),
(223, 'UA', 'Ukraine', 'UKR', 804, 380, NULL, NULL),
(224, 'AE', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL),
(225, 'GB', 'United Kingdom', 'GBR', 826, 44, NULL, NULL),
(226, 'US', 'United States', 'USA', 840, 1, NULL, NULL),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, 1, NULL, NULL),
(228, 'UY', 'Uruguay', 'URY', 858, 598, NULL, NULL),
(229, 'UZ', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL),
(230, 'VU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL),
(231, 'VE', 'Venezuela', 'VEN', 862, 58, NULL, NULL),
(232, 'VN', 'Viet Nam', 'VNM', 704, 84, NULL, NULL),
(233, 'VG', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', 850, 1340, NULL, NULL),
(235, 'WF', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL),
(236, 'EH', 'Western Sahara', 'ESH', 732, 212, NULL, NULL),
(237, 'YE', 'Yemen', 'YEM', 887, 967, NULL, NULL),
(238, 'ZM', 'Zambia', 'ZMB', 894, 260, NULL, NULL),
(239, 'ZW', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_discount`
--

CREATE TABLE `ref_discount` (
  `discount_ID` int(11) UNSIGNED NOT NULL,
  `discount_Name` varchar(50) DEFAULT NULL,
  `discount_Percent` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_discount`
--

INSERT INTO `ref_discount` (`discount_ID`, `discount_Name`, `discount_Percent`) VALUES
(1, 'Student', 20),
(2, 'Senior', NULL),
(3, 'Disabled', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_dispute`
--

CREATE TABLE `ref_dispute` (
  `desputeType_ID` int(11) NOT NULL COMMENT 'Primary Key',
  `desputeType_Name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_dispute`
--

INSERT INTO `ref_dispute` (`desputeType_ID`, `desputeType_Name`) VALUES
(1, 'Civil'),
(5, 'Conciliated'),
(2, 'Criminal'),
(3, 'Filed'),
(7, 'Other'),
(6, 'Referred'),
(4, 'Settled');

-- --------------------------------------------------------

--
-- Table structure for table `ref_forms`
--

CREATE TABLE `ref_forms` (
  `form_ID` int(11) UNSIGNED NOT NULL,
  `form_Name` varchar(50) DEFAULT NULL,
  `form_price` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_forms`
--

INSERT INTO `ref_forms` (`form_ID`, `form_Name`, `form_price`) VALUES
(1, 'Barangay Clearance', 30),
(2, 'Barangay Business Permit', 30),
(3, 'Barangay Permit for Cutting Trees', 30),
(4, 'Barangay Certificate of Indigency', 30),
(5, 'Barangay Cedula', 30),
(6, 'Financial Assistance', 30),
(7, 'Barangay Electrical Permit', 30),
(8, 'Fencing Permit', 30),
(9, 'Film Making Permit', 30),
(10, 'Transient Information', 30),
(11, 'Working Permit', 30),
(12, 'Electrical Permit', 30),
(13, 'Building Permit', 30);

-- --------------------------------------------------------

--
-- Table structure for table `ref_gender`
--

CREATE TABLE `ref_gender` (
  `gender_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `gender_Name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_gender`
--

INSERT INTO `ref_gender` (`gender_ID`, `gender_Name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `ref_logo`
--

CREATE TABLE `ref_logo` (
  `logo_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `logo_img` longblob DEFAULT NULL,
  `logo_Name` varchar(50) DEFAULT NULL,
  `brgyInfo_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_logo`
--

INSERT INTO `ref_logo` (`logo_ID`, `logo_img`, `logo_Name`, `brgyInfo_ID`) VALUES
INSERT INTO `ref_logo` (`logo_ID`, `logo_img`, `logo_Name`, `brgyInfo_ID`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `ref_log_action`
--

CREATE TABLE `ref_log_action` (
  `action_ID` int(11) NOT NULL COMMENT 'Primary Key',
  `action_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_log_action`
--

INSERT INTO `ref_log_action` (`action_ID`, `action_Name`) VALUES
(3, 'Delete'),
(6, 'Generate Print'),
(7, 'Generate Report'),
(1, 'Insert'),
(4, 'Transaction Cancel'),
(5, 'Transaction Insert'),
(2, 'Update');

-- --------------------------------------------------------

--
-- Table structure for table `ref_manilabay`
--

CREATE TABLE `ref_manilabay` (
  `mb_ID` int(15) NOT NULL,
  `quarter` varchar(20) NOT NULL,
  `year` int(15) NOT NULL,
  `name_barangay` varchar(30) NOT NULL,
  `population` int(20) NOT NULL,
  `household` int(20) NOT NULL,
  `tnc` int(15) NOT NULL,
  `ca` int(15) NOT NULL,
  `ch1` varchar(5) NOT NULL,
  `a1` int(15) NOT NULL,
  `a2` int(15) NOT NULL,
  `total` int(15) NOT NULL,
  `cch1` varchar(5) NOT NULL,
  `cc1` varchar(5) NOT NULL,
  `cc3` varchar(5) NOT NULL,
  `accomby` varchar(50) NOT NULL,
  `brgycaptain` varchar(50) NOT NULL,
  `date_save` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_manilabay`
--

INSERT INTO `ref_manilabay` (`mb_ID`, `quarter`, `year`, `name_barangay`, `population`, `household`, `tnc`, `ca`, `ch1`, `a1`, `a2`, `total`, `cch1`, `cc1`, `cc3`, `accomby`, `brgycaptain`, `date_save`) VALUES
(1, '1st', 2018, 'PINAGTIPUNAN', 17, 12, 1, 1, 'YES', 1, 1, 2, 'NO', 'NO', 'NO', 'wqwx', 'Charicel M. Cabauatan', '2018-03-19 13:43:53'),
(2, '1st', 2018, 'PINAGTIPUNAN', 17, 12, 1, 1, 'YES', 1, 1, 1, 'YES', 'YES', 'YES', 'ascd sa ', 'Charicel M. Cabauatan', '2018-03-20 03:41:08'),
(3, '1st', 2017, 'PINAGTIPUNAN', 17, 12, 1, 1, 'YES', 1, 1, 1, 'YES', 'YES', 'YES', 'qwwd xcc ZC', 'Charicel M. Cabauatan', '2018-03-20 03:42:03'),
(4, '2nd', 2018, 'PINAGTIPUNAN', 17, 12, 1, 1, 'YES', 1, 1, 2, 'YES', 'YES', 'YES', 'qweqw qsac ax', 'Charicel M. Cabauatan', '2018-03-20 03:44:25'),
(5, '3rd', 2017, 'PINAGTIPUNAN', 17, 12, 1, 1, 'YES', 1, 1, 2, 'YES', 'YES', 'YES', 'dcqascd as', 'Charicel M. Cabauatan', '2018-03-20 03:46:30'),
(6, '2nd', 2018, 'PINAGTIPUNAN', 17, 12, 54, 65, 'YES', 3, 3, 5, 'NO', 'NO', 'YES', 'anne curtis', 'Charicel M. Cabauatan', '2018-03-25 10:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `ref_marital_status`
--

CREATE TABLE `ref_marital_status` (
  `marital_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `marital_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_marital_status`
--

INSERT INTO `ref_marital_status` (`marital_ID`, `marital_Name`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Widow/er'),
(4, 'Legally Separated'),
(5, 'Annullued');

-- --------------------------------------------------------

--
-- Table structure for table `ref_network`
--

CREATE TABLE `ref_network` (
  `network_ID` int(11) UNSIGNED NOT NULL,
  `network_Name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_network`
--

INSERT INTO `ref_network` (`network_ID`, `network_Name`) VALUES
(1, 'Globe'),
(3, 'Smart'),
(5, 'Sun Cellular'),
(4, 'Talk N Text'),
(2, 'Touch Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `ref_occupant`
--

CREATE TABLE `ref_occupant` (
  `occupant_ID` int(11) UNSIGNED NOT NULL,
  `occupant_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_occupant`
--

INSERT INTO `ref_occupant` (`occupant_ID`, `occupant_Name`) VALUES
(1, 'Owner'),
(2, 'Renter');

-- --------------------------------------------------------

--
-- Table structure for table `ref_occupation`
--

CREATE TABLE `ref_occupation` (
  `occupation_ID` int(11) UNSIGNED NOT NULL,
  `occupation_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_occupation`
--

INSERT INTO `ref_occupation` (`occupation_ID`, `occupation_Name`) VALUES
(14, 'Barangay Official'),
(12, 'Doctor'),
(4, 'Driver'),
(10, 'Factory Worker'),
(3, 'Housekeeper'),
(6, 'Laborer'),
(11, 'Nurse'),
(9, 'OFW'),
(7, 'Pastor'),
(8, 'Retiree'),
(1, 'Student'),
(2, 'Teacher'),
(13, 'Technician'),
(5, 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `ref_occupation_status`
--

CREATE TABLE `ref_occupation_status` (
  `occuStat_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `occuStat_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_occupation_status`
--

INSERT INTO `ref_occupation_status` (`occuStat_ID`, `occuStat_Name`) VALUES
(1, 'Employed'),
(3, 'Employed Government'),
(2, 'Employed Private'),
(4, 'Overseas Filipino Worker (OFW)'),
(5, 'Self-Employed (SE)'),
(6, 'Unemployed');

-- --------------------------------------------------------

--
-- Table structure for table `ref_position`
--

CREATE TABLE `ref_position` (
  `position_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `position_Name` varchar(50) DEFAULT NULL COMMENT 'position name of officials',
  `position_Acronym` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_position`
--

INSERT INTO `ref_position` (`position_ID`, `position_Name`, `position_Acronym`) VALUES
(1, 'Barangay Resident', NULL),
(2, 'Barangay Captain', 'Capt'),
(3, 'Barangay Secretary', 'Sec'),
(4, 'Barangay Treasurer', 'Treas'),
(8, 'Barangay Health Worker', 'BHW'),
(9, 'Barangay Official in Peace and Order', NULL),
(10, 'Barangay Official', NULL),
(11, 'Barangay Official in Agriculture', NULL),
(12, 'Barangay Official in Health and Sports', NULL),
(13, 'Barangay Official in Education', NULL),
(14, 'Barangay Official in Finance', NULL),
(15, 'Barangay Official in Infrastructure', NULL),
(16, 'Barangay Official in SK Chairman', 'SK'),
(17, 'Barangay Official in Transportation', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_province`
--

CREATE TABLE `ref_province` (
  `province_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `province_psgcCode` varchar(100) DEFAULT NULL,
  `province_Name` varchar(100) DEFAULT NULL,
  `region_Code` varchar(100) DEFAULT NULL,
  `province_Code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ref_province`
--

INSERT INTO `ref_province` (`province_ID`, `province_psgcCode`, `province_Name`, `region_Code`, `province_Code`) VALUES
(1, '012800000', 'ILOCOS NORTE', '01', '0128'),
(2, '012900000', 'ILOCOS SUR', '01', '0129'),
(3, '013300000', 'LA UNION', '01', '0133'),
(4, '015500000', 'PANGASINAN', '01', '0155'),
(5, '020900000', 'BATANES', '02', '0209'),
(6, '021500000', 'CAGAYAN', '02', '0215'),
(7, '023100000', 'ISABELA', '02', '0231'),
(8, '025000000', 'NUEVA VIZCAYA', '02', '0250'),
(9, '025700000', 'QUIRINO', '02', '0257'),
(10, '030800000', 'BATAAN', '03', '0308'),
(11, '031400000', 'BULACAN', '03', '0314'),
(12, '034900000', 'NUEVA ECIJA', '03', '0349'),
(13, '035400000', 'PAMPANGA', '03', '0354'),
(14, '036900000', 'TARLAC', '03', '0369'),
(15, '037100000', 'ZAMBALES', '03', '0371'),
(16, '037700000', 'AURORA', '03', '0377'),
(17, '041000000', 'BATANGAS', '04', '0410'),
(18, '042100000', 'CAVITE', '04', '0421'),
(19, '043400000', 'LAGUNA', '04', '0434'),
(20, '045600000', 'QUEZON', '04', '0456'),
(21, '045800000', 'RIZAL', '04', '0458'),
(22, '174000000', 'MARINDUQUE', '17', '1740'),
(23, '175100000', 'OCCIDENTAL MINDORO', '17', '1751'),
(24, '175200000', 'ORIENTAL MINDORO', '17', '1752'),
(25, '175300000', 'PALAWAN', '17', '1753'),
(26, '175900000', 'ROMBLON', '17', '1759'),
(27, '050500000', 'ALBAY', '05', '0505'),
(28, '051600000', 'CAMARINES NORTE', '05', '0516'),
(29, '051700000', 'CAMARINES SUR', '05', '0517'),
(30, '052000000', 'CATANDUANES', '05', '0520'),
(31, '054100000', 'MASBATE', '05', '0541'),
(32, '056200000', 'SORSOGON', '05', '0562'),
(33, '060400000', 'AKLAN', '06', '0604'),
(34, '060600000', 'ANTIQUE', '06', '0606'),
(35, '061900000', 'CAPIZ', '06', '0619'),
(36, '063000000', 'ILOILO', '06', '0630'),
(37, '064500000', 'NEGROS OCCIDENTAL', '06', '0645'),
(38, '067900000', 'GUIMARAS', '06', '0679'),
(39, '071200000', 'BOHOL', '07', '0712'),
(40, '072200000', 'CEBU', '07', '0722'),
(41, '074600000', 'NEGROS ORIENTAL', '07', '0746'),
(42, '076100000', 'SIQUIJOR', '07', '0761'),
(43, '082600000', 'EASTERN SAMAR', '08', '0826'),
(44, '083700000', 'LEYTE', '08', '0837'),
(45, '084800000', 'NORTHERN SAMAR', '08', '0848'),
(46, '086000000', 'SAMAR (WESTERN SAMAR)', '08', '0860'),
(47, '086400000', 'SOUTHERN LEYTE', '08', '0864'),
(48, '087800000', 'BILIRAN', '08', '0878'),
(49, '097200000', 'ZAMBOANGA DEL NORTE', '09', '0972'),
(50, '097300000', 'ZAMBOANGA DEL SUR', '09', '0973'),
(51, '098300000', 'ZAMBOANGA SIBUGAY', '09', '0983'),
(52, '099700000', 'CITY OF ISABELA', '09', '0997'),
(53, '101300000', 'BUKIDNON', '10', '1013'),
(54, '101800000', 'CAMIGUIN', '10', '1018'),
(55, '103500000', 'LANAO DEL NORTE', '10', '1035'),
(56, '104200000', 'MISAMIS OCCIDENTAL', '10', '1042'),
(57, '104300000', 'MISAMIS ORIENTAL', '10', '1043'),
(58, '112300000', 'DAVAO DEL NORTE', '11', '1123'),
(59, '112400000', 'DAVAO DEL SUR', '11', '1124'),
(60, '112500000', 'DAVAO ORIENTAL', '11', '1125'),
(61, '118200000', 'COMPOSTELA VALLEY', '11', '1182'),
(62, '118600000', 'DAVAO OCCIDENTAL', '11', '1186'),
(63, '124700000', 'COTABATO (NORTH COTABATO)', '12', '1247'),
(64, '126300000', 'SOUTH COTABATO', '12', '1263'),
(65, '126500000', 'SULTAN KUDARAT', '12', '1265'),
(66, '128000000', 'SARANGANI', '12', '1280'),
(67, '129800000', 'COTABATO CITY', '12', '1298'),
(68, '133900000', 'NCR, CITY OF MANILA, FIRST DISTRICT', '13', '1339'),
(69, '133900000', 'CITY OF MANILA', '13', '1339'),
(70, '137400000', 'NCR, SECOND DISTRICT', '13', '1374'),
(71, '137500000', 'NCR, THIRD DISTRICT', '13', '1375'),
(72, '137600000', 'NCR, FOURTH DISTRICT', '13', '1376'),
(73, '140100000', 'ABRA', '14', '1401'),
(74, '141100000', 'BENGUET', '14', '1411'),
(75, '142700000', 'IFUGAO', '14', '1427'),
(76, '143200000', 'KALINGA', '14', '1432'),
(77, '144400000', 'MOUNTAIN PROVINCE', '14', '1444'),
(78, '148100000', 'APAYAO', '14', '1481'),
(79, '150700000', 'BASILAN', '15', '1507'),
(80, '153600000', 'LANAO DEL SUR', '15', '1536'),
(81, '153800000', 'MAGUINDANAO', '15', '1538'),
(82, '156600000', 'SULU', '15', '1566'),
(83, '157000000', 'TAWI-TAWI', '15', '1570'),
(84, '160200000', 'AGUSAN DEL NORTE', '16', '1602'),
(85, '160300000', 'AGUSAN DEL SUR', '16', '1603'),
(86, '166700000', 'SURIGAO DEL NORTE', '16', '1667'),
(87, '166800000', 'SURIGAO DEL SUR', '16', '1668'),
(88, '168500000', 'DINAGAT ISLANDS', '16', '1685');

-- --------------------------------------------------------

--
-- Table structure for table `ref_purok`
--

CREATE TABLE `ref_purok` (
  `purok_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `purok_psgcCode` varchar(100) NOT NULL,
  `purok_Name` varchar(100) NOT NULL,
  `region_Code` varchar(100) NOT NULL,
  `province_Code` varchar(100) NOT NULL,
  `citymun_Code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_purok`
--

INSERT INTO `ref_purok` (`purok_ID`, `purok_psgcCode`, `purok_Name`, `region_Code`, `province_Code`, `citymun_Code`) VALUES
(1, '042110003001', 'Purok 1', '04', '0421', '042110'),
(2, '042110003001', 'Purok 2', '04', '0421', '042110'),
(3, '042110003001', 'Purok 3', '04', '0421', '042110');

-- --------------------------------------------------------

--
-- Table structure for table `ref_purpose`
--

CREATE TABLE `ref_purpose` (
  `purpose_ID` int(11) UNSIGNED NOT NULL,
  `purpose_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_purpose`
--

INSERT INTO `ref_purpose` (`purpose_ID`, `purpose_Name`) VALUES
(1, 'Barangay Clearance'),
(2, 'Barangay Business Permit'),
(3, 'Barangay Permit for Cutting Trees'),
(4, 'Barangay Certificate of Indigency'),
(5, 'Barangay Cedula'),
(6, 'Financial Assistance'),
(7, 'Barangay Electrical Permit'),
(8, 'Fencing Permit'),
(9, 'Film Making Permit'),
(10, 'Transient Information'),
(11, 'Working Permit'),
(12, 'Electrical Permit'),
(13, 'Building Permit'),
(14, 'Loans');

-- --------------------------------------------------------

--
-- Table structure for table `ref_receiver`
--

CREATE TABLE `ref_receiver` (
  `receiver_ID` int(11) UNSIGNED NOT NULL,
  `receiver_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_receiver`
--

INSERT INTO `ref_receiver` (`receiver_ID`, `receiver_Name`) VALUES
(2, 'Barangay Kagawad Announcement'),
(1, 'General Announcement'),
(5, 'Resident Announcement');

-- --------------------------------------------------------

--
-- Table structure for table `ref_region`
--

CREATE TABLE `ref_region` (
  `region_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `region_psgcCode` varchar(100) DEFAULT NULL,
  `region_Name` varchar(100) DEFAULT NULL,
  `region_Code` varchar(100) DEFAULT NULL,
  `country_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ref_region`
--

INSERT INTO `ref_region` (`region_ID`, `region_psgcCode`, `region_Name`, `region_Code`, `country_ID`) VALUES
(1, '010000000', 'REGION I (ILOCOS REGION)', '01', 169),
(2, '020000000', 'REGION II (CAGAYAN VALLEY)', '02', 169),
(3, '030000000', 'REGION III (CENTRAL LUZON)', '03', 169),
(4, '040000000', 'REGION IV-A (CALABARZON)', '04', 169),
(5, '170000000', 'REGION IV-B (MIMAROPA)', '17', 169),
(6, '050000000', 'REGION V (BICOL REGION)', '05', 169),
(7, '060000000', 'REGION VI (WESTERN VISAYAS)', '06', 169),
(8, '070000000', 'REGION VII (CENTRAL VISAYAS)', '07', 169),
(9, '080000000', 'REGION VIII (EASTERN VISAYAS)', '08', 169),
(10, '090000000', 'REGION IX (ZAMBOANGA PENINSULA)', '09', 169),
(11, '100000000', 'REGION X (NORTHERN MINDANAO)', '10', 169),
(12, '110000000', 'REGION XI (DAVAO REGION)', '11', 169),
(13, '120000000', 'REGION XII (SOCCSKSARGEN)', '12', 169),
(14, '130000000', 'NATIONAL CAPITAL REGION (NCR)', '13', 169),
(15, '140000000', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '14', 169),
(16, '150000000', 'AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)', '15', 169),
(17, '160000000', 'REGION XIII (Caraga)', '16', 169);

-- --------------------------------------------------------

--
-- Table structure for table `ref_relation`
--

CREATE TABLE `ref_relation` (
  `relType_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `relType_Name` varchar(25) DEFAULT NULL COMMENT 'relationship Type / Names / Descrption'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_relation`
--

INSERT INTO `ref_relation` (`relType_ID`, `relType_Name`) VALUES
(7, 'Brother'),
(6, 'Child'),
(3, 'Father'),
(2, 'Grand Father'),
(1, 'Grand Mother'),
(4, 'Mother'),
(8, 'Sister'),
(5, 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `ref_religion`
--

CREATE TABLE `ref_religion` (
  `religion_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `religion_Name` varchar(50) DEFAULT NULL COMMENT 'Religion Name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_religion`
--

INSERT INTO `ref_religion` (`religion_ID`, `religion_Name`) VALUES
(1, 'Ang Dating Daan'),
(2, 'Baptist'),
(3, 'Born Again'),
(4, 'Buddhism'),
(5, 'Roman Catholic'),
(6, 'Christian Protestant'),
(7, 'Iglesia Ni Kristo'),
(8, 'Islam'),
(9, 'Jehovah Witness'),
(10, '\r\n\r\nSeventh Day Adventist'),
(11, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `ref_report`
--

CREATE TABLE `ref_report` (
  `report_ID` int(11) NOT NULL COMMENT 'Primary Key',
  `report_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_report`
--

INSERT INTO `ref_report` (`report_ID`, `report_Name`) VALUES
(2, 'Accomplishment Report'),
(3, 'Anti Bakuna Kontra Dengue'),
(4, 'Full Disclosure'),
(5, 'Activity Report'),
(6, 'Minutes of the Meeting'),
(7, 'Monthly Clean-up'),
(8, 'Payroll Report'),
(9, 'River Clean Up Report'),
(10, 'Environmentally Critical Area'),
(11, 'Consolidated Quarterly Report'),
(12, 'Personal Attendace Monitoring'),
(13, 'Lupon Tagapamayapa'),
(14, 'Certificate of Validation');

-- --------------------------------------------------------

--
-- Table structure for table `ref_school_level`
--

CREATE TABLE `ref_school_level` (
  `slvl_ID` int(11) UNSIGNED NOT NULL,
  `slvl_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_school_level`
--

INSERT INTO `ref_school_level` (`slvl_ID`, `slvl_Name`) VALUES
(1, 'KINDER / DAY CARE'),
(2, 'ELEMENTARY SCHOOL'),
(3, 'HIGH SCHOOL'),
(4, 'SENIOR HIGH SCHOOL'),
(5, 'COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `ref_suffixname`
--

CREATE TABLE `ref_suffixname` (
  `suffix_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `suffix` varchar(10) DEFAULT NULL COMMENT 'suffix name position on the last name ',
  `suffix_Name` varchar(50) DEFAULT NULL COMMENT 'suffix description'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_suffixname`
--

INSERT INTO `ref_suffixname` (`suffix_ID`, `suffix`, `suffix_Name`) VALUES
(1, 'N/A', 'Not Applicable'),
(2, 'CFRE', 'Certified Fund Raising Executive'),
(3, 'CLU', 'Chartered Life Underwriter'),
(4, 'CPA', 'Certified Public Accountant'),
(5, 'C.S.C.', 'Congregation of Holy Cross'),
(6, 'C.S.J.', 'Sisters of St. Joseph'),
(7, 'D.C.', 'Doctor of Chiropractic'),
(8, 'D.D.', 'Doctor of Divinity'),
(9, 'D.D.S.', 'Doctor of Dental Surgery'),
(10, 'D.M.D.', 'Doctor of Dental Medicine'),
(11, 'D.O.', 'Doctor of Osteopathy'),
(12, 'D.V.M.', 'Doctor of Veterinary Medicine'),
(13, 'Ed.D.', 'Doctor of Education'),
(14, 'Esq.', 'Esquire'),
(15, 'II', 'The Second'),
(16, 'III', 'The Third'),
(17, 'IV', 'The Fourth'),
(18, 'Inc.', 'Incorporated'),
(19, 'J.D.', 'Juris Doctor'),
(20, 'Jr.', 'Junior'),
(21, 'LL.D.', 'Doctor of Laws'),
(22, 'Ltd.', 'Limited'),
(23, 'M.D.', 'Doctor of Medicine'),
(24, 'O.D.', 'Doctor of Optometry'),
(25, 'O.S.B.', 'Order of St Benedict'),
(26, 'P.C.', 'Past Commander, Police Constable, Post Commander'),
(27, 'P.E.', 'Protestant Episcopal'),
(28, 'Ph.D.', 'Doctor of Philosophy'),
(29, 'Ret.', 'Retired'),
(30, 'R.G.S', 'Sisters of Our Lady of Charity of the Good Shepher'),
(31, 'R.N.', 'Registered Nurse'),
(32, 'R.N.C.', 'Registered Nurse Clinician'),
(33, 'S.H.C.J.', 'Society of Holy Child Jesus'),
(34, 'S.J.', 'Society of Jesus'),
(35, 'S.N.J.M.', 'Sisters of Holy Names of Jesus & Mary'),
(36, 'Sr.', 'Senior'),
(37, 'S.S.M.O.', 'Sister of Saint Mary Order'),
(38, 'USA', 'United States Army'),
(39, 'USAF', 'United States Air Force'),
(40, 'USAFR', 'United States Air Force Reserve'),
(41, 'USAR', 'United States Army Reserve'),
(42, 'USCG', 'United States Coast Guard'),
(43, 'USMC', 'United States Marine Corps'),
(44, 'USMCR', 'United States Marine Corps Reserve'),
(45, 'USN', 'United States Navy'),
(46, 'USNR', 'United States Navy Reserve');

-- --------------------------------------------------------

--
-- Table structure for table `ref_unit`
--

CREATE TABLE `ref_unit` (
  `unit_ID` int(11) UNSIGNED NOT NULL,
  `unit_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_unit`
--

INSERT INTO `ref_unit` (`unit_ID`, `unit_Name`) VALUES
(1, 'pc'),
(2, 'set'),
(3, 'rm'),
(4, 'box');

-- --------------------------------------------------------

--
-- Table structure for table `ref_violation`
--

CREATE TABLE `ref_violation` (
  `violation_ID` int(11) UNSIGNED NOT NULL,
  `violation_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ref_violation`
--

INSERT INTO `ref_violation` (`violation_ID`, `violation_Name`) VALUES
(1, 'Child abuse'),
(2, 'Curfew for children below 18yrs old 10PM - 5AM'),
(3, 'Dumping of garbage must be in a proper way'),
(4, 'ESTAFA'),
(5, 'Excessive noise at night time'),
(6, 'Family Feud'),
(7, 'Letting your pet stray anywhere'),
(8, 'Oral Defamation'),
(9, 'Physical Injuries (Less & Grave)'),
(10, 'Robbery/Burglary'),
(11, 'Unable to pay house rental'),
(12, 'VIDEOKES are not allowed 10PM onwards'),
(13, 'Sexual abuse'),
(14, 'Physical abuse'),
(15, 'Psychological abuse'),
(16, 'Economic abuse');

-- --------------------------------------------------------

--
-- Table structure for table `remote_url_download_queue`
--

CREATE TABLE `remote_url_download_queue` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file_server_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `started` datetime NOT NULL,
  `finished` datetime NOT NULL,
  `job_status` enum('downloading','pending','processing','complete','cancelled','failed') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'pending',
  `total_size` bigint(16) NOT NULL DEFAULT 0,
  `downloaded_size` bigint(16) NOT NULL DEFAULT 0,
  `download_percent` int(3) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_accomplishsment`
--

CREATE TABLE `report_accomplishsment` (
  `accom_ID` int(20) NOT NULL,
  `name_barangay` varchar(50) NOT NULL,
  `date_save` datetime NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` int(20) NOT NULL,
  `narrative` varchar(1000) NOT NULL,
  `committee` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_accomplishsment`
--

INSERT INTO `report_accomplishsment` (`accom_ID`, `name_barangay`, `date_save`, `month`, `year`, `narrative`, `committee`, `position`) VALUES
(1, 'BALAGBAG MAHABANG KAHOY LEJOS', '2018-04-30 08:46:28', 'JANUARY', 2018, '     dadsad', 'None', 'Barangay Secretary');

-- --------------------------------------------------------

--
-- Table structure for table `report_attendance`
--

CREATE TABLE `report_attendance` (
  `attendance_id` int(11) NOT NULL,
  `name_personnel` varchar(50) NOT NULL,
  `nature_absent` int(11) NOT NULL,
  `nature_tard` int(11) NOT NULL,
  `station` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_attendance`
--

INSERT INTO `report_attendance` (`attendance_id`, `name_personnel`, `nature_absent`, `nature_tard`, `station`, `position`) VALUES
(4, 'ADASD', 1, 2, ' CFAD ', 'AS DAS '),
(5, 'q', 2, 4, 'e', 'e'),
(5, 'l', 4, 5, 'm', 'n'),
(6, 'qwewqe', 3, 5, 'qecsa', 'dasdcascd'),
(7, 'shaira', 2, 3, 'tanod', 'sa japan'),
(7, 'gsdfgfsdb', 6, 6, 'GG', 'FFF'),
(9, 'FSDF', 345, 4, '4', '4'),
(10, 'Shaira', 1, 1, 'fsd', 'fsdf'),
(10, 'N/A', 1, 1, 'gfdg', 'dfgd'),
(12, 'N/A', 0, 0, 'N/A', 'N/A'),
(13, 'N/A', 0, 0, 'N/A', 'N/A'),
(13, 'N/A', 0, 0, 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `report_attendancemonitoring`
--

CREATE TABLE `report_attendancemonitoring` (
  `attendancemonitoring_id` int(11) NOT NULL,
  `prepby` varchar(50) NOT NULL,
  `subby` varchar(50) NOT NULL,
  `notedby` varchar(50) NOT NULL,
  `quater` varchar(5) NOT NULL,
  `brgy` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_attendancemonitoring`
--

INSERT INTO `report_attendancemonitoring` (`attendancemonitoring_id`, `prepby`, `subby`, `notedby`, `quater`, `brgy`, `date`) VALUES
(1, '', '', 'asdxasd', '', '', '2018-03-24 22:39:48'),
(2, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'df sd f', '2nd', 'PINAGTIPUNAN', '2018-03-24 22:41:18'),
(3, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'wertyuiop', '3rd', 'PINAGTIPUNAN', '2018-03-24 22:41:55'),
(4, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 's', '4th', 'PINAGTIPUNAN', '2018-03-24 22:43:34'),
(5, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'wow', '1st', 'PINAGTIPUNAN', '2018-03-24 22:51:19'),
(6, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'qwxeqwec', '3rd', 'PINAGTIPUNAN', '2018-03-24 22:56:56'),
(7, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', '', '', 'PINAGTIPUNAN', '2018-03-24 23:17:06'),
(8, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', '', '', 'PINAGTIPUNAN', '2018-03-24 23:17:25'),
(9, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'GG', '1st', 'PINAGTIPUNAN', '2018-03-24 23:19:35'),
(10, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', 'idunno', '2nd', 'PINAGTIPUNAN', '2018-03-24 23:20:59'),
(11, 'Angel Ralp D. Alberto', 'Charicel M. Cabauatan', '', '', 'PINAGTIPUNAN', '2018-03-25 06:27:22'),
(12, 'Medina D. Guevarra', 'Lairen Joyce G. Villa', 'dwq', '2nd', 'PINAGTIPUNAN', '2018-04-01 13:41:33'),
(13, 'Sheryl G. Bagacina', 'Medina D. Guevarra', 'ajadsgh', '1st', 'PINAGTIPUNAN', '2018-04-05 08:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `report_cov`
--

CREATE TABLE `report_cov` (
  `cov_ID` int(20) NOT NULL,
  `num_of_complain` int(20) NOT NULL,
  `name_barangay` varchar(30) NOT NULL,
  `period` date NOT NULL,
  `date_save` datetime NOT NULL,
  `barangay_captain` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_data`
--

CREATE TABLE `report_data` (
  `reportdata_id` int(11) NOT NULL,
  `position_ID` int(11) UNSIGNED NOT NULL,
  `report_ID` int(20) NOT NULL,
  `reportdata_date` date NOT NULL,
  `Title` varchar(100) NOT NULL,
  `reportdata_type` varchar(100) NOT NULL,
  `reportdata_use` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_data`
--

INSERT INTO `report_data` (`reportdata_id`, `position_ID`, `report_ID`, `reportdata_date`, `Title`, `reportdata_type`, `reportdata_use`) VALUES
(6, 3, 4, '2018-03-06', 'taena', 'application/pdf', 0x255044462d312e330a332030206f626a0a3c3c2f54797065202f506167650a2f506172656e742031203020520a2f5265736f75726365732032203020520a2f4d65646961426f78205b302030203631322e3030203739322e30305d0a2f436f6e74656e74732034203020523e3e0a656e646f626a0a342030206f626a0a3c3c2f4c656e6774682031343e3e0a73747265616d0a302e323020770a3020470a710a510a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f54797065202f50616765730a2f4b696473205b3320302052205d0a2f436f756e7420310a3e3e0a656e646f626a0a352030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a362030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a372030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a382030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a392030206f626a0a3c3c2f42617365466f6e742f436f75726965722f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31302030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31312030206f626a0a3c3c2f42617365466f6e742f436f75726965722d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31322030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31332030206f626a0a3c3c2f42617365466f6e742f54696d65732d526f6d616e2f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31342030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31352030206f626a0a3c3c2f42617365466f6e742f54696d65732d4974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31362030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c644974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a322030206f626a0a3c3c0a2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0a2f466f6e74203c3c0a2f46312035203020520a2f46322036203020520a2f46332037203020520a2f46342038203020520a2f46352039203020520a2f4636203130203020520a2f4637203131203020520a2f4638203132203020520a2f4639203133203020520a2f463130203134203020520a2f463131203135203020520a2f463132203136203020520a3e3e0a2f584f626a656374203c3c0a3e3e0a3e3e0a656e646f626a0a31372030206f626a0a3c3c0a2f50726f647563657220286a7350444620312e302e3237322d646562756720323031342d30392d32395431353a30393a646965676f6372290a2f4372656174696f6e446174652028443a32303138303330353031343033362b303827303027290a3e3e0a656e646f626a0a31382030206f626a0a3c3c0a2f54797065202f436174616c6f670a2f50616765732031203020520a2f4f70656e416374696f6e205b3320302052202f46697448206e756c6c5d0a2f506167654c61796f7574202f4f6e65436f6c756d6e0a3e3e0a656e646f626a0a787265660a302031390a303030303030303030302036353533352066200a30303030303030313739203030303030206e200a30303030303031333738203030303030206e200a30303030303030303039203030303030206e200a30303030303030313137203030303030206e200a30303030303030323336203030303030206e200a30303030303030333236203030303030206e200a30303030303030343231203030303030206e200a30303030303030353139203030303030206e200a30303030303030363231203030303030206e200a30303030303030373039203030303030206e200a30303030303030383033203030303030206e200a30303030303030393030203030303030206e200a30303030303031303031203030303030206e200a30303030303031303934203030303030206e200a30303030303031313836203030303030206e200a30303030303031323830203030303030206e200a30303030303031363032203030303030206e200a30303030303031373231203030303030206e200a747261696c65720a3c3c0a2f53697a652031390a2f526f6f74203138203020520a2f496e666f203137203020520a3e3e0a7374617274787265660a313832350a2525454f46),
(7, 3, 11, '2018-03-06', 'Yow', 'application/pdf', 0x255044462d312e330a332030206f626a0a3c3c2f54797065202f506167650a2f506172656e742031203020520a2f5265736f75726365732032203020520a2f4d65646961426f78205b302030203631322e3030203739322e30305d0a2f436f6e74656e74732034203020523e3e0a656e646f626a0a342030206f626a0a3c3c2f4c656e6774682031343e3e0a73747265616d0a302e323020770a3020470a710a510a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f54797065202f50616765730a2f4b696473205b3320302052205d0a2f436f756e7420310a3e3e0a656e646f626a0a352030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a362030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a372030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a382030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a392030206f626a0a3c3c2f42617365466f6e742f436f75726965722f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31302030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31312030206f626a0a3c3c2f42617365466f6e742f436f75726965722d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31322030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31332030206f626a0a3c3c2f42617365466f6e742f54696d65732d526f6d616e2f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31342030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31352030206f626a0a3c3c2f42617365466f6e742f54696d65732d4974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31362030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c644974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a322030206f626a0a3c3c0a2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0a2f466f6e74203c3c0a2f46312035203020520a2f46322036203020520a2f46332037203020520a2f46342038203020520a2f46352039203020520a2f4636203130203020520a2f4637203131203020520a2f4638203132203020520a2f4639203133203020520a2f463130203134203020520a2f463131203135203020520a2f463132203136203020520a3e3e0a2f584f626a656374203c3c0a3e3e0a3e3e0a656e646f626a0a31372030206f626a0a3c3c0a2f50726f647563657220286a7350444620312e302e3237322d646562756720323031342d30392d32395431353a30393a646965676f6372290a2f4372656174696f6e446174652028443a32303138303330353031343033362b303827303027290a3e3e0a656e646f626a0a31382030206f626a0a3c3c0a2f54797065202f436174616c6f670a2f50616765732031203020520a2f4f70656e416374696f6e205b3320302052202f46697448206e756c6c5d0a2f506167654c61796f7574202f4f6e65436f6c756d6e0a3e3e0a656e646f626a0a787265660a302031390a303030303030303030302036353533352066200a30303030303030313739203030303030206e200a30303030303031333738203030303030206e200a30303030303030303039203030303030206e200a30303030303030313137203030303030206e200a30303030303030323336203030303030206e200a30303030303030333236203030303030206e200a30303030303030343231203030303030206e200a30303030303030353139203030303030206e200a30303030303030363231203030303030206e200a30303030303030373039203030303030206e200a30303030303030383033203030303030206e200a30303030303030393030203030303030206e200a30303030303031303031203030303030206e200a30303030303031303934203030303030206e200a30303030303031313836203030303030206e200a30303030303031323830203030303030206e200a30303030303031363032203030303030206e200a30303030303031373231203030303030206e200a747261696c65720a3c3c0a2f53697a652031390a2f526f6f74203138203020520a2f496e666f203137203020520a3e3e0a7374617274787265660a313832350a2525454f46);
INSERT INTO `report_data` (`reportdata_id`, `position_ID`, `report_ID`, `reportdata_date`, `Title`, `reportdata_type`, `reportdata_use`) VALUES
(11, 3, 2, '2018-03-07', 'jhdfjd', 'image/jpeg', 0xffd8ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffe000104a46494600010100000100010000ffdb0043000604050505040605050507060607090f0a09080809130d0e0b0f1613171716131515181b231e181a211a15151e291f212425272827181d2b2e2b262e23262726ffdb004301060707090809120a0a12261915192626262626262626262626262626262626262626262626262626262626262626262626262626262626262626262626262626ffc20011080195021c03012200021101031101ffc4001b00000203010101000000000000000000000304010205000607ffc4001a010003010101010000000000000000000000010203040506ffda000c03010002100310000001f404a5b1682408f4b9aae19af23ab03d267afdf8ec5f2f5f0b5f33732ae15d41a3d19143ceeb9d8eae971755a96cae4dd77c0c3486ee592968a0ecd4e20dea7a1c8934bb448f5577387bad90ea7b645b917caf54026d99a6329a650d09d1dd36b3b9b62f1fc7cedb887938dbabd7b9e21fd70f705f239d9024ab63a9823b9468d8c5aeef1fe85f37f7472ee8d819e7323136309a417239924d64656af95ede6d74e74b8b6620a9f0eec673dd4b334d7c6f4b97d54a2cc51b2b614e7d016705b41891dc3d14c9a35d1943e18cae73ddeb966e8565e9acd0ed237769a42ec02d5a55706aacccbf5f0d162f2bd58ec040f4d8cd4b616a55672e12f07e8fcbbf42a6030fa416dcc233b569c2e6526559096d62b1f4ac93bcef71e1fdd9cdbd599bf328ea8ccd15338aa788a591e37961fa9c7e83451d0f9cf4d5bacd7773f55ccc067334edc3b64510b7bfc1ebe465f3ba82582cd0d1d21e6f118d06f5843336c1718fa5ca6b9b206d2e4dd8d3f33e922a6a41d0a666964f54bba593abce5bab0a899ba396d76f65e9693335ecef21f2268f3be6bd6793aefa983b46f9edc285a4869a15c277156a7b351dcdd00ae5b79ce87ecfc65ccfe821f09c67f42d3f963151f493f8cf4f5c7682e72cbcde87a26379f22dec5b9ad297e26d1b316b9552d8ae55e4b4371ceac9239c19d0c72d369935584635f62459277f935ee5e692cbf43c9f946f753c9e75075d7354a8ede7b641743336c5f85dee2dd505347af1344ab9558889bb799e0c9f97a3cbf90f75e1a7b87e87cebefa3571b6314d53ad58311b0bb06dc514167ad3649c191235c5a15cde78eadf24a3d7f41e45f3abe989a3a6b83d117e7defab2597b24686b64c947167ab35b93e7e157a78f3561fa63f93668f4ecf94923da4f8e2a3d6778db07af9f2540f61de3ae3f5d1e4383d7cf90123d8a1e646dfa1278f12bf679f89b242d6d306bc6b3eb398d05662748a85fb534dc518a8f27e575b279fd811c4636b56eb1202d4d3c80716d57d12aee09bc3d0478dc9e7b6f12fcc8b471975a39a65dce60dbd2fa0f27e94bf2decfc2b77c1eb71b235b1eccc2a7a3341263b24eb48d856d33968a16021da61a034faa4fcb7396b9594da85a06cf2f20695e40d2bd818e5e019ba7c1a3ade7b427a3e91b3e53d6e998577e0e7c33bb202891cd0b1f67e7068aaf348f4d8504c2e3cdd0134b9f69c1df1a4f33d06455694f99d1df412b550deaacf570c4f40a66259765668d363d879bf5f9edf3927b7cee9f3bcf34c570edcbb5cb9d6307d126a730b02a440de1cd7ba959deb15a8b70e695fa2473d128e98e4ed11cd5babc17ea705a6b29cbc8bb1d3edbd978af63754a5a871dcf9f22d9c5d528fe578bbb831ea42b7181fd2796f551c18886cf9827dc17cefa0ce888b8a23c652f4e8999ac8744f55474c856fc56fb4abe8d756e6d5e6b803da12cf2987e87cbe7d5ddd6ceb434f2d9cd9b0f64adf914fd9276796a36a5f2de978bc93eeea9eb56c1251cd22f44dcdaf635c0ee63dca9da1d51980da139c070d5c3b3d87b8f9ff00d0797d224f4be0cb5f697109c0f8e35d2f9b9978f46aab5ca73b5729b5e7b993bb8c06f59e63d3e556cfd0c30f371ddb4f74c059c4f42ba3a3435defe759f53b465e73d7f59f244d68f3deac0ddf94f31bf859f75c2c379ce795f066c641059a6c62a62166c31d1c74af4395eb3144da960bc4c0ac40de91ce03eb99481b5c32454952c452d45685bceda1e93cde8707b1be6f3cb1e7fab9f32d542de235b173f4e161719305cc7966786bb3c8da18d61b5a883f9ba796f540a3ccbfbf21838bee31e8f35aa86c6dd7eabd0859be005ba2f09b02ac3f43116c5df99bf17e5bdf7cfe3b9b6522983695a2b0cf576ea0ef9bf439796d82ccdb6e757ad0982b7a35d3590bf443569a4b0ac2934b4ed9cd6b0682dea06588a452aa556fb79eaf07baaaf154cba1912e1e4e616a8a9ae8be557690f4b9f2bd68ecaa4269001ba196cd7fcee93a7a585bd2cde776bca5df7aec6f7baecef533eb81c43c1ccf5fd04ff3e935fa64f9df40726bce44998fe71edfc2cf7b75690583345297ccfce74b5a1d9f2d3b40106013d32f156f47493cd76f2eccbe682d0a66ac9bd21c9476bd9460436699f0ac2de262b34f612225c9ec07472fd13c5451d3be3c3968eba73eae206ef6cf9962237e73989c1a95e84b54cac8a9d2c9169d3734f214362d1b45f57acdef03b77cfe8fc2ec79b312d45a31d495bd186b9d0f7ff36f68ba2a4f326cb837fc7ea655f76b5e9a8b0c916bd76e1c69d416d9e78f407529437554b5b49ae7db13bd0df975f335f4b4cebcc8fd38749f3a1f401df3f3a0f522a9f316dc5079b2c068a52f597528885eea5a3919fabde9fccfa0ae51b17abe4073c8831e635b24e834774fa10130ccda45e979e69cfca84cb8579e1fa0c5df5b170b4522f3cf7549356681deb71bd1d7022ce57a279787f47e6f517a7e8b33d2c72799e201edbc87674e8686769c4d434075f984140f4891c553bb626f1d4a5a1b8f7bd805caad15e8aa8ed4db3e1bb23cfb169b6619d02e5795daa39ac143d4103c083e920d67cfe0fa2c57ec075729a786fda9d5c118fba8063d98c761a33396ee004f03271927d0aced2e42b0ba81671460731156ec055b30b48764cf6ce369f279cf508983c591693b7e80455cdbca4bcf7aaf353dae3c8ea4c63c70fa383a9d60e64100e573ee8286f2e4cf644cd3695eb487a39d70753b4395e4c54de1a95440ec46fb4511a6f42e61a493193c9f4548b4bcbd190257e759270434bce6c84783c774b3beb8576c1d795bef033c6674ae8d0599d53b492efa4f9c7a2a6e9cb4df9b0b8839061bce92973002efd45d79ae42f9fdbc95d2ae822ccb011ebe7ce9acef5c67134899de7d5e18237d0ed253b362e6bcb2e876f0b7321979c57f84024595e59dd8d720f45a2970300ebc2c758f663e7baa727d38bd1627a37e6072c3259577da6fcf46fe24ee3b8a84ee25b6c3e1c7b5ea6d9ed0e93ddb8bd16271e6f778c48d8255f498be99f29663856e59034d9f36274dd437ae76f31e6c875f3b8f50ceea3c8e872f55cd9a0df81fec86c5a975b3f2bd606713683319c5834970833a90f35bc3801824b54b7b52daecf36d232570b501a00df25477175e137a9b43381a9a9cbf45e21c66b3cf9bed16d3ae73d170e9c5a1f3afa179ccbb7cebea0975e9b9e5d77c7e918f23b2e07d9a65bbfd9e45a1624a5ea6a79860cbd066e6f14cd5d7d9e7def59aab3f31bad0eb9c146457979bd06aad52b32af0b4b334b9bb8a2208e139f29d929c542d690415c998eab53761115cdc2929777312649d5919b48fcdb3923b736b601e2294994fa3022d1dd98431523d29bf83bdc9edae635b2f385ca1758288f298acca516b78bdcf3f7d63cdd5cda9a44f3e7eb8e41ce4e4b6ae915ad0be63d3d5adeb7c67b770f5c52f866f49977ee94754bcd665b741464738833cd6966339f735396f5703b65ab2dc0256a92d62b8db051d71d2aad95e8c6b582f5e057334d17a9658bc9b16c0e9a95ec2b8918c3be4515237c8d7011687dbc1d1e7f61faaacaf3f30ec104932c006d6331e5cd12a4acfb6158a3e2920ce35f8946bbbb89eb5650575068d8fbd8dcbafe9dd8db71c229256f298a5a95a6d512ae8689ed763433cbe2e9e1c7a0dedf9ed59e47eb90b2d34d65c0cd1be4c2b697051c1eeaf549a03572732522d09cee46946770de84a5a6eaaf09ae579a6cd9c52fd32ee2f3debc1ab1c503e34d2fd36d55732c33a468349d611dd261d7af14e24fd174a71687cdd16e14902d9aee65b949efd0d6f37a2f9b54981d5c5beb64d4ad863cf959f4091d96731141788cbd2427d316a2975c82a92916ac370a9796ae3596796a8522d4acbbbae21f32310a6dc3af4f275e9e6bba603a27838f4295ea58a16bab3ea33e7c6a5ccacd112697aacf15875d92072059dda3c649325a9a0c828111766c3461fe70b3912b5bde81767f4387aaf96566d638a141d95468918d32f437c679854432ab006d6567ddb65cab9814a2acd681f1c69fa45bcfc33d2e367885d48eacfb8cc0212518566d64c7c489639bf32b16e6abddcd59958c3f43440cfa26e1e9e5685c341542587894d848ea5b8b0e8505b4c839b7059d1b8179e243402eb37b2b1f1b9b014daf5981b63af8818fbb8c257af31a6a32ab9a67da0909b733914168e639033a18c99665ab8a15156101cda29ce6fd4e193a9543175241baaf6612c2806396e435cb70daa82424b48412ebcb348c2d034479c51645a08152d0c3503dd3bc69714ad49e3e7910f047c82d93b8d91d6c1430440ed4040b309dc37a536f4c6c0275e79a76aeaa9d7a21fc78ce9e95e848722ab8b2057eaa0abf55aeada02b04a857afc3ac5f903825423ba5a8ebc8e904940f8bc0399865e47c8b4d64354cb90d874059642a95c25223541216204be1de0293d09dae1b393566f3426063a4d8c1726841cb67283a6f574f235ef0b563af3accf2a9e8e0f3abef563bfcf77a25c8c8a6d0432a9ad22c6ed7ab597daf41e5c6bc06546a5d1913ad516646cf158d1a870c79d5a8f33b5282ceed390c99d39a32e74aa923da30382565b5dd010466f38693c2172a101a91a5cc7097967a5aa17f900935075a96f52a09f1a12962d4a97b1956838b9af9ed114689c3968d35b2ac9537b067b871d0898af05f8324dec19192b595448a705ad481dfabc16acc25d11c3e98e6a3a7853d123eb525b99a488914e19ea3e0bf0e1cb141f20c64f818b2d00dc29c0e5d1903dd4e07a8af030c6748376464347b3a41f9cfe1ec572a435e32799a9d99c1b138fce3d6e1f7579da189dcaa43dcaac3ee6af7ee2cccf74d187dd340177052ddc113dd3714ee4faddce2b1dd645bb9aa4f73223b873ddc9da7b8263b9cf0fb854eee5a563b95c47733bbb83a7b8735ee1f777253ddcdc7770adddcabaddce2c7ee110bdc6326ee0ffc4002e1000020201030304020202030101010000010200031104122110133105142232204123331530404243342450ffda000801010001050251b67eaabbf93d4072aa526af25421aceef854fbc3722a4c0b7ee2694cb87ce51c8ad76b43c8562966ff00854c7bff00afd227c9c7c9bc57e0475c9abeb1d8a5acdf0d21e04dbc91f243818c9aa7e9cee0abf14c572cf50a9637a8a99ee51857c8a7c5f72d356a2d365999457be5d80d43e1b5d562566685f769f6f0386f3184510f81e488c4083c6afe36bbf76ad37ce96af23583e16dbfc1e9ed953d2f1f3d98a81309cca8064abe3643059b2e18ef76fe362ec16d9889e23aff0025abb60e220dcba64ee5a53b6d79db1b0ec2be33b1b4cd9136fc987cd06081ce6383dd1f15f50d56f727a02653aa7acff92b26a3576dd0c45dec48ad58e4a79d40dda3a4fc7d24e6b3e3cc43cf99896189d2f19ae8d461b5abba6938b6b4d8d65bb5ae5de9aaaf15684e1efbc24a5b723264b7d40f91af8d39c12b9315f275830d5ae43b6d57f9d7a81b652dfc68dba639d4082bf8d1c337c5d98aadc77d542e46712c4cca7e0b459b9a63e44660979e10ef1ea36f6f4ec613056c55bb95c073d49c0a5f6a962d16b6336905db1a6a7ebe8ff563047e257e25be478062b074b78b2ab1f2f57cddb6adac08eee12f1bea09dbaad62eda16cd66d1dc8a9f31f62b87133350592d471725036ab3865adc0aed1dc5b9b6268c980c71998e36fcb51f12e775353188b88e629265abf0abf8de97dcf0431df94185f577cb1f27ee0ca8adb5dd51a5c364667d9a52b96c4b47c755fd14fd7d1fea44510f91c0cc6114f4a2e35b5ec0d9b37d5ff9efdc9b03a8a82a87011be7576b1468df6846cea0743e7a6a1b6cb983454dafbc6eb3ec04ad80adc77267b7651664c6f0b357e16cdb34ff00287202732c8be353c1d29f9c1e4cb132e87e1eae30ff00bffd6236d3758196e1b619474d3788ff005d69fe3afc7a75d5a54dafd3cff234c4d750c56eadc6e9996cdc23f9c4d09fe33c8246cd3fd22f0f5787fa1e190e190e5615ccc4e232234ec553b6b87a0313a58da7613658251e358bcd395b04fd2cd5465cb51f0b3ec07c66f0d3c0b1b245786e99844af3bfd6b9531bef5d636db571e418dc9a3eb34ed331db736b4fc878cf4cc04c4b594e9b5a49adf21bc62589fcf7d4169d236d5d2b9682b1b914823b99edf2b5ed8cc56c2bfce748ccd555b57c4266e998019b4c0ad02b45acc1589b16369d08bf48d83461a6609a96cb2d7f2d470e8db107c95009736d9dbdd147c5bc07e2a33c8dbb535e3768cf86fa52735b46e19da2aca7ebd37b443f2d4d65a21cae66f027704de202209a0d4ed21b21fedec0775f4a08f6d5acedaaf5cccccce0c095e46de8d369689488b5288140ff004900c7a65cac8dba60b5cb19013ab1894b4e25b96947f5cdd029315b68a8fc5b95f5122ad2b4ff00ae8acf83111cc687cd3f809561b4f683533313d730188e72adce86edd5ee595b87596958578108e1a666e80cdc26606300260e227fb594347d3acda01c08565e9b8d9f07ddf0d39dd106067923e54cdbcaf81e3d6df3718f17884987eadf6623357d9412451c3a15e9a769ac19a7f01339151c8d13e2cedbcf49d5b02a770b92a58daea517dfd51bd42a8dafae36b967bd59ef44f7c236b962fa8620f539fe50083d5c4ff3023fabacff00310fac72feac04ff002c61f56604faa9c7f9630fab18dea8c01f567c37aa5d1fd46f8facb5a36aaddc359720a35b55b2cd38b21af12aaf6398e3941f20b83b78c4dd3d45b76b47951968312cb922d36d90689e354693a5f31d72186194e25f60347e2a653f6d371635ef9a2c2ada4d7ed9eadac996b2a5762c498088313688a122252676680b75a16c5d4110ea5cc3719dd682d69dd682d686d69de79dd79dd79dc7c771a771a771a775a775a0b0cee981b70439abd32eef53b730d72cace3f78e61f0c309a8b869d2c62cff00bd3608b2c02339694561534fbbb72c4c8a09aade977dd8cb4fe4bc9aff00b34e33676962f9732d62534273a746c3b61ab0e415b84aae5840337ed9a8d5fc73ff00110e0e9df2fe8ac2666e9b818f503055c3822665aca175779bef8656fb60d39294d3b829ce997c43ccd50fe2a754cb3de57b5ad04bd9f9894f9f4f42f6f6cc1d36964d27d3e022e44b33ba0305ae21763f967fe0e93fb3d1b8be318b0bcaec9c30d523a4f50bddede99c3e9555b50c38b7f85f70110e474b0727cffa040252bc7a553b2b223fa5d2637a66d3acd3f61748c773d1874aa355dc2fa3710a30e9b73d08fc87fbf49fdbe99c6a8e66d33061cc595f82323d629356ba1254d98295bec88c0aea88ed805a7a7d877747fbbfdba9fc3111656989e9fa4363280a21dc676c99ea95ca88571c5992cd508804b28469768c4ed948ca77013f60471c7e2009b44d8276c4152c142cf6eb3db09ed443a611a9c4c11349fdda4da9ab044e2604bf20a988d14cf5f15368cf474f95b9dfa27756d67f5d3676ce84e7523a5a710f9ea254b91da13b420ac4549a4d0b31450abcccb4db313d5becbf7ffd13ca981e079e63540c7d3cbd76303047f1f883d560820307522595cd30c5d9c6b97057a100c3509b028d77aa9cd96b3b744fee7c83a462da8b067517d2cb668ab65b874d636da7f1a3eb556d6327a6dc657e9928d3555c2208c71374c74f586fe7fd8fb9cee0e44ee40f05d16d9bfe3ad606cc730fe63a2c104060333d488a30f52f73535dec00bccf713dc19df9eb5ac6d84c2677440e0caffb7b61f4ba3af6dd67f6b812af96a04b3c6adb7d95e96c683431f4698b6b35b4ac7c7d1aaf8987301c42f15b318133619be169eaff00dd3fec83e3b0434acece21ada0ade6a2f6ae039633f7fe81041d041374cf55f359c59ddc037ac6d6e9844d456d3b93d54fff00a8cbcf3a7159b2cc2be9e9ef01a19ecc88f45a21d458b34831588e3256b453d08ccd5a6ea9065eb5cb69ab1551e6186661ccda70b9c733699eb159020887e2498ed647bae13dc5b9a79afd43ee9e58f4fd751f88314c131306730340d018be6c85940b9dac7e94eaec49a8b0dd61978e7a7a6e77f4f30d60caeb54eb7daea34b735a22cf50b30695c0f4ad36f7db02cb1aaae0d669999b514a4aadaac9dbcced998e9eb7ff00c820f0a4ed24f5d891480357577276994b0ea7fd41c8896c0c0f4c4c4c4afef71c59637c333319882ac0f52331ebc4ae8b1e69a9ed2fe4c7035b6cf4cfa096d82a4fedb34d49b5e902baf74d6ea974d4bbbdee18c36b612d707d3f57b867afab8ce884ff00ce96f86f13ba27744deb37acdc265610a61a561a6354d0a198ff004e206222dd16d13789995fdf55f7bbe9340999a81f2d5a846cf533496e3f3271355a9c4a53bade9cb846b5566a5dad887e3e96cab3f65b6cd65dee6ff10730b43943436d7a9b757ee313dccf50b4b697f7a61b98aed189b6626263f1c4c46411aa586910d466d331f86671310af40c445b4c4bb9d4b6f8e61f1a418a753e2fac3a55456c3d9a46d2602984665773a44d4a182d433b8b1ae411f58a25ba97788325488efdb4da4c1fd69e55b128d5f3ea9a80b52700cd0d7dcb7548acf72f73d32a3c692dfe1df01977348f3a4fbdebfcdb61136182b9b66d9b7a7330d3164daf36bc2ad0a99b61486a10d46153d799999eb5fdec18431beb47f5ea47c6a3bebb2b95bd99b0fc5796ebb77b8d1cbe9d92bdeb372c535c22d22b1994d2a25f5a76eca664ac061e49801274d5f6d2f6f95433e93578d2b1ed2d8e20d418751903eda7f2f82db21559c43d0cc4022d6d0570209b04ed89db13b421ac46510a89da586811b4b98da5610d4c211f857f7bbe89e0f8d31cd4cb994d7db07c35bb4d8c77e0a374310e2d37b00133d0f8d28e351e34de7708f6666ecb15f92f0c7a682bc959a93c2ae3415caecc29d324d469b13b267fda98e3e44ccc24c30984c5cc45b204682b83899eac333b6676446a6768cecc6ac83da33b50e950c7d0247f4f68fa3b56254c2cd68c05e9a13fc7d2dddb5ec6ce76cb2b7784ec62e235b031dd418cd9e87c50fb66a6df8d5f4de71d1db84ce4c552ef5205563b500dda96e3489d58060f52635036dd5787fa96684b74e271d2b6226eb4c1dc82171f81b1041764c24086fac417a98bf2189c42cb3b8917e536cb2b5c7a97971859a36db6f41354aa469d78d5d85acea941e952ef65512d410c7fb563e5d09c467cb0231b84d0270a6305b16ad36db35794d3ab719312c8d6c2c4cd57f727285772f5e2280604413b8ab1b5021bda1763292161b923ea26f733f75da95ab6a5a3176862f91a8daa6f631ac337195f045f89ee5a1b9ccd57365bb76c076b29cac1353c8a3ff9f54856d826974d1b189a638612d31a5a9f1fb0cbe0dad0b13d28abe3469c59146d1018af378656a2adc1162564915011eb9ad187d3722bfab79330605821e2726049b6198336cda23419817ae22ac3d02c02107a2f13799ad6c3939e95a1b0a0dabd2c191dcf6e6dd456c250d52437031989ea2c69b99cae9c98e0d62be8cb98c844a1775817b8ea303f066da0df5c3aaae06e999ea734be376176b161499db023626204260a610a26d82b30551b6a0e5a2d4d05423e107922b262d2047f8afec5660541378119c9e83137ae35bf687994a044b1c20f74c67b9b235d734dbc995018e371d2a3034ba1ad1183d4237134b04d4f2a0e1be4421ca988425ba24c27e0cca8b7da6f6020468667a7a88fe2d27d1bc2e218c8588ad440a271186604131d4a0ccc8830614e40021204ee2e480d30210c6768ced88db07509c6abed28feff00d6a9b7db5d6ce468af32bf4eb0cd668bb2272b37ca09ed901a5951045d91779a9b61ee8c5af91dbcb5df15af74eddb069ad665e067a35f5ac7d5346dd61a296b0d1a65a8711e596b022d7ceaf0da5d1c6fad4216510deb16e115b7742e0437ac3731950784811ae511ef317758c3081ae10dac604768b408a0010b810d861de66c687880f435efbb554f6acf0cdaa6c22927448b553dc59dd12f6dd4f88669056b5beb150a5ead5fbe4cbd6b6a5a7b6c1c4cc2c20b0e76cd005edf4bf52162df6c7b2c78ab2ad35b64a3d3b112a08191a7ca77588277c5f8adcac6ad1796f0caf194af4a9392580676cfc8cedb4ced20dad3b44cb36882a7311764ee243b090f589de115d8c1d3689c08d646727a2e20759a65dd76a2b043e95b29a4b58e97482b2dcce666791aed21cc2a2583e219b106ac6c762ed595c6326b28a49df645ca1ef5b199da2acaf47738afd39b3468e9ae63a1ccddd17965418025a7f8f49f7fdfca761628a87435963b6b59c61d733f8d629530cdbc143185623622a345a62d6a3f03be76d8ced460821c4116b6234bfdcdccd998a98e98e86b983d2fd352e1f1bdfc7e020edc3db9cc16407a6928ef3d1a4aea80c336ccfe189d89b1c4e44c6e1a7fee6f2d18a014f9f999b259cb7738e4c15298a8ab18e231b4c70d3e208b144efb41658d156d3071d4e046b63313d55b6cee391a5fedc83176c60b825962d8279e9ff5de01f53d4c0300c6f3f98e60254ab665169adb4f6f7133d3999133075f9acded32636444e352f1b0d16b510756093f8e6c2d16a5585c086e319af6851e0563174e4c5a90741d388c5a6c9b21551091d406c697ee0098c42460c0995e522d915b235efd95e8cd98c73d1467f211b1170e88d99e9f7f6ecc822789e6604c309bb137883b7647d32c6d3be08223ff00f4b1c0de6545b06c137930b5b9d9cf33f9603c33811b52043a8733b9c8b9a775cc5688733333333743608d613f803379228e2c36c5bb105b5bc35299560421614109d93536776d2658d09eb5471cfe3fad236db3509b0ab4f4fbb75508ccc4dd882d58190cc08062577bac4b2b78cb99ea402ea91be1a624d9e629548fafd90eb2f79dd306a0cefb47d4be7bcc6775a77de35ad3bcd3bcf1753689eeae9eeee9eeae9eead9dfb2779e779e775e779e779e0bda25cc5aa3876f2711616115842dc8632c7c27e98c63cf5438675cfe757dd3e75afc5b456947f7cea7fc9183d461f5110ebd0c5d68cfbe9898e82d743adb0bea57efa7feddf19f33881b119c6434cf4e27138ebc74cccccccccccccccf4cccc4fbe9c88cbc810e045da4b2299b26d0033ef263fe2227874847e34aca8e1b5830f51f93005b609b44d826c98eb8e8c04d5ff78fec4e2eeea81c124c27f0c08e307fe0d5f6d28f9ea301a1199b71063a6a3e9e2131446498330604262a010f101cc65cc35cda66d68b5cf104d57f5d700e0e61cccf0f6c566302700ccccc362cbb960997b2a2961a1a76da765b3edde7b77834d618749a8874ba98d4de215330660c0b152159b660cc1983313067330660cda6012b1fc9a41fc9aec03981a34c73fbd5430727f124424998c4cfe4b2c6ded48f96ee9660427941928807447c8dd19e3f8ffc504d426c1670a1e0b22db05d89df62366a5cfb6d4cd5d77567fe0d23f912cdb6bee639e4743d2e19044c74ccccc9e8045ad8c642b08989cf5c99c988b2bac80167eac63ba720d0d958ae60cb46c86c8c6a00aea5b397b5986f266e30bb4eed821d45c27baba1d4dc677ec8f6bb755022a242b8e826d9b66d33699b4cc198fc2bc821a6eccccdd018c667a108432f3b6149b0cd9020882b9c42447c74db3619b1a6d302894aa01d0cb461a62500810bca756882fd42d93bd581aabd6daf3330110340d3747710999eb99ba079b8cded374ccdf37cdf37cdd37c2d3262984c0d01dcf99bb9dd37c260696398add1e662b41d18e206821856082671374e256db4f575cc3498954c710e2604becd9370c1867eab988788cf0ffab3feac75d379cc6610c2c26e80c78ad37c2dc660681f105909e81a6e1330cde445b330e0cf1d286e33d7333f85eff2b796dbc6260cc44e233c27fe367a0328f27cb3430f411978eb8fc075ccdf331867a64c0d14ca3ef9fcf5166d50f0c1311bc8f133feb3f86263fd2269f25ae38266662554ee8c982e0e08ebccc751d36c2bd019ba1314c1cce73a73f3fced7725b2b3734ded3ba66f3374dd3740d89ba6666666e9999999ba6671d3333333333f908269d995f51f602515a986a1b9781bf0d638698e98e98988566391f811f889a75f8c3c751d7655b9aba4cb29d380b4243a659d810e9a7b4874b89eda7b538f6f3da4f6871edb91a439f68c67b5e069795d2e61a76c142e4500b9a8082a49da1b85398940757a3697d29ad934dba35188da62a134e4c1a7605b4ef8ecb4edb0555713e50a34d8d166c847c99408157002e7e30a2cd830166d336626c9b330d6676cc15995a721944de206523226e1389cf4b97e5d73330b1315d9664e77b98ae561273b9e2b3085899bde0668598cdc7a649fcb26026660769933719dc79b8e7bb64ee3c2ec4f71e77ac9dc682d79ee6ddddd6897b88750f1ee363577ba4ef89ddf87770cd7862b6a2b86410dc8416ae3b52ceb6d40abd337d453754b19f4eceeda716e9ce9b7ad94654d01b34b3dcd5867b533a84186e9fa87ff00ef732eb8e02067d6689295db0a08c204061582b0676844d3e60d209ec971ed163508276d61559b526126126d59b573b566d5985985985984985836cf8ce200b3026d1022cedaced09da13b7c6d9b663fe18e408160027103626e9fffc4002b1100020103030303040301010000000000000102031121101231041320324151223033611442712352ffda0008010301013f0193ba397615356271dbc1499555f087170165908e0bd91147a494770e3620aec8e10f2ec4a36c89e0946dc14e3a421b8ecc3dd153a383f410e9dae4f6b22254f49595e997391e8d9087b9292487692249c30884be492dccd89312b0deefa4bed46248dd9b128dd11825926f0415f25fd89ab322ee84277674fc5c8a4c69c59bd14f3924cfea54fc65b27073a66f6236b12bb22dae069347b91c0f9376044ef2217892f4dd14db71c88ab7da53f4d8b1538b105642792d678283c1bac6248ab1b3c1457d08689620594a36676a04a845ac0e8ca1c8cda46e86ee2c1766c5f62e5eccc3435b7284ee8e6449d8bbbdc8bb9d3ab1ee23dc871a54e0752c8ef48559fb91929a2a2d92b0b228b3b6cecc99d890ba791fc791d891d991d891d891d891d891d899fc690ba67f24fa792fd994438c92cb368b0ca2be8224ab4560eebbe0a73fa48cddc97055e75a2ed23aa8f0465823c69b98a4398d972fe172e5de943f223a88a551a5e10a3dc6622ac4aa3585aee688d444ab45224f73beb4bd4750fd8da457d29961c4da5ac3f1b972e5f4a1f911d67e4f0a36db82a3c17be8bc945b6452a6aec9c9c9df4871e0f818fcb23bfb1be474d37dc47591fa93d61072e0a70d8ac56f4ea87ad15924e11e47d445704e6e4f25f48afa57849e06fc9f874ff963fe9d5ddd99b4b33a7568952abbd90ea392b32c5bc6847172a4b74dbd15c5a43f1933748dcc94d35f62c5b4a7ea437b9247d3046ea73c114a2ac8ab49dee84bca11dcec579aa71d888e4850babb3f8f1f62a41c1db4a2bfe44fc17d9da4636644ea1fb09d9dc5d43f829d553c13a4f946d6bc214dc85151e0af41cfea450a79c939ed477a572ac77a5a74ff008d93e0960dc6e629310a26d2c8bad6da2e4e0ea39d6834a5a4b383b69bb23f8f11d3513d88abf27a5db4a92dcc5c91f4926ac747fd913e093ceb14237237246f4d8f69ba27d22922e8c5c5e945758bf82ab242dd366dda852c9512688bc58723b8a4ca9515acb5ee248516746ad51927ec3e4b69765db1365db15ccb1265d9666511793e0ab256ce961459b4a7156392d6259159a2a4643d52363d3a695aa22aab499b63c8f3c0a9a5c8e285189b558db15c9fe1b23ee62d64281b59221c92562b5dc8a7056dd237512128c9609c9256149a782352fc9ca2c7077558965e0b0a0c8c1455d8fa9b3c6947134575f5324991b926cdac49a1a91b5fb8e5f07244c8ec4adec439475551d3921ca9cb2cad5372dab8d3a796d7664e1b89c76bb691ad247764432aec7458a8db93753892afff00925272e74488f257f59262960b9b888d93969113d1b448a5ea475fea5a6e5ad2b9585a7719bdae0a75371d42972b8f3af96bfc1f26d36b144e06584856d1b19929e2499d6df0c59153771c3e0a716dd8725144a4d911ab6b47d562dfd59386d762de357114604b568c16463c2c8da88a573a9e169b85c90f92af3a479250dcae86ada528de44d62e57e2fae35ade85a22da35f663c9d4be3fc2fa439b6928a6b27690a3189ee594b93b712294781cb163a895925ab1111cf747446e3b86ff05e28ad2524adac5e45517b9bd1bd0ea1bd8aa1bd1bd12aaa3c129393bb168cb09584f1f7e5c6abed4b5b114317df7e9d1fd95a4b9d169b51b51b11b11b0d8be4edfecd9fb36af9362f93b68d88d88d899b17c9b17c9b17c96c5ae6c5f276bf676ff63a7fb3b4cedb3b2ced33b523b3215191db90e94be0eccbe0edcbe0edcbe08d44e26e46e46e45f5c1831adf4c6983060c16459182c8c092f1b22da6344d9765d89b22d9765d89bd6fa5cb9765d97636cbb13623df45e571b65de9ffc400281100020201040201040203000000000000000102110310122131204130132240515071043261ffda0008010201013f01c5071950ea2ac9676a77fa314d658ab3fca8d7460fb55b31cd654cba465c952a36b93746492be4e72744326d446664952b27df02fb63663c9bb8251e48cf9a324b8173d91bb1702c8c7cbbd5694742e748c7f667cbb56c31e3727643762926cc728e6e599a0e9d18dbc7062c8dc09cf7115b2a6851df215e295be8d9f63918f2f344e77c33140cd2afb4dad728c73ddc138ed25d125514255f05f1ab38eccb6a6d331d47a32454bb232709522934648daa4422d46991c352b64a36a91862b1f264db35c90ff7dafa33a519f04bab30497b33afbecdfc182f7599656c71745b6a98baf850da11f57a32414ec8635124b72a6470c51bdfc12c76385c4a716464b270c9c5c5d096d8114e452aa271ae44fe3a1f1a596596596596597ade91e0e1997be0870acdc76bc3722fcd128372bf14b5af8575e1bab4ba3b1917e72b370fb19b8bd10b5a28a28ad63d794844842f818f45aaf1470523644c90542f2622447c6b4ad18f58f2caf142f09f5adeaf8370a4323c16c8e8b82ce07a31148a42834fcd31484f4975e527e114488212d2cbd2c7f25e9bc734d68bc28da6d36e95a46449f86ee74f6479144da8a44d92c87d56472362b392cdc8bd57e0634ec97f5a456b291295f43c6fd9b1b162951153be0db968b9f43848a90af45f81b92252b5a22f4a8fb385d0d47d91af43af62a1cd23837242a90d2fc2a1a10e793a446e3cb259dfa23397b1ce546f77c9be72e8a6b991f564f846d95dc8fac8dd0b204bad1695e15f0d1544b93772465127b6b921189ba1124d35c91942f83ea2ae08c5bed1b6ba27ff0059f6906fd2217ec97471a265969fcae57a488c478db66ce3b3e993a2262c6513bfd8d7ecfe88c66fd905448908dad17473f151c97ad7270917a49b29b6422d0ba244b71b18a0c8c1fb15225d68e2395a13fd94be3ecdbe0d595f1de9e8bf05f9be871d23adf92f0435e3b4da6df9369d17e165eabc17e356b5e4bf825f8f5e3cf9dff0a87e0fc9085e2be15e7fffc40033100002000502040504010402030000000000010210112131122022324161033040517113338191522342506204a16072b1ffda0008010100063f0293822132189604d10b2a566e4d0e547b22f63515f79bdb6d955b6858a4a92b94e629a25696b8871b955f29697d48442f2ea77451890848a6ebca8e6e167c8e12121dfa194131141f94e083976f0c30a38dcb4f4eb2aec6bc9669884d1a58e9812a494ea5654950aca86a218caca12b2acda2b0ba32a5a541b18f6d5151fbbb4ed1238d7e7654ef3b94945e53428621470951314aa372d32acaaa75469791a1a9234a1a7b2a272a4ee58a0f63454f0d4a92d1116c4e9b549ce9baf82a8512ccafb5b222bbaa4310a2450734e4f6d072bcedba8787b6a561df0a9713a196cc333438624f6bd8d759bac9a92dd79d4ccb05caa16c52a6da09adde147ece9285972a8a1465293a4b4a29bacca45b2822222a951989d1ab182abc8c189e0b58b09d362422c5f66a5b99176bcabec2727bb32d70f91a5e27aea51982cb75d15a6ec18f26e58ad365c425b5adafbda4ca39364327b59d9edee51ca95c4aaa592abd4dd154626a551ca926329283c3fe2ab250ca9284c911633368f8f229ee64d313b1535c6ca24cc330ce5394e5660b22c9983945c07db390e086a7db472221d3475cf63951ca84d2859cb09cb090b5a1d4c42661fd1f721fc22bf54fba27f5a18abd0a476655334d07b5cfc6fd4a28a556ca428ad0bb2bfdbb6a35ba8342958a4641a4d6a579e0c1ca728d42ac611853ccf264c993264cee5ee556612f95b6bb3545f844513cc4eb2f1139fd5884e293859a22fdcdca9e429d855225f25c74d9545d9a61f4d1771afdf91589d11147fdbfdb38fb8dbe62289897fb53644522ba954b79296cb11c27b9581d7b0ed3c977ea225db6de558707d36f861e93f92fd0a95fec88897fb556c8979bf51accace85a221d2eecb967a915782b42c5d7aaa6fa323fe31dd4bb4a17fdc995226f058703d8fcbabe512d901a5116cc162de8f26668ff00e791c5ce9f0cd25d4d2dd683f0a2f6142bdc67cce37e560d5e2591a61b2db02ed28bc8a7a5524e77955b1c1ff1acbf9958a2713ef3f846bf76559e1ae83a2b0abed37fedbf4c2aa5e88e38cb43f9df0fc49f916f4b53e4a6d5e042f9b3b62ef090dee4556acba1e0bee2238bdad3d2ba18a7c9788b14724451bdd9333af611f814ece7a4abf4d0b427438ac535fe8e1f114a1ffd65429e2606a1754575d1a39d9c31b1522ad3dcfea787fa3bbbceaa1bec7feb248861f2a08ff12fc4ec63d5245c77e1f69e6a8d714ab38b6f0ceb0a2f0da7a21eb2fa91614ebe246a1f934c2d9c55fd1c3119d9f993f8db828557a0bee5b6912a6eb23bf91a51149b66b62850a052d5d7a23ea78915659326889ec8a517c7979963d0218a4e3642fda2146b6fd38bf1e4521c8db22f995572c9fbcffd54e9838a1a7713139c6a5a5f52287d9fadd526427e4a7b946a91232ce18d9797f245ec7323991cc8e1553d8e27434784bf27d3832713a941a95223e9c198a757cb098c90c4d5e0b08538d76942c8cc7916df831e5a29264244265564a4507e6513efb3422f19688b238bc1fd16f059d2052bdcb22a9d1948a559695962851f08f9beda497ceccedc1ca5e9bf0636e36a1c990ca9d25c4bf224f111a22dbee38fc4cec8be05595dda5463867f51fe24fbd870f61fc949e648d460c4f3b2f119dd995a7652ba3058b1ca4355d7653da7c069f161b3ea2869569f08a28e250946e562a6a6b6518e92cecab92811452861f6b910fe6773044bbf93645a57667664a432bbdd9333ad250d24e1f7d9463f17df035d16cd514f134536769fd4f79508a2ae473b969397e3764c1653be65c266564591773a252ccaaf62a8d4945ec566fe0808bbcf5f89fa22953628d7497b989ea8b06aa52128b651dcae84614f84bfa6c6dc4b1b74ac75653651de167254c15a5cb6da1928ee86b6e8e8b3baace6475d90b9e0b9765a7728a773bcee5a77d972ca772949d165944559c30d8e546522aeef670d8bf122d2a6c88acea6a798b6ea89d8ff004963627de5f99de58df57b2f3ccb12c97d979c35969e88a428e538da84d5045ad2ccec296a86ccd315a2d94952b7290c356720ab0ece63821fd958dd4a428c28998952926eb288d45d962f3ccb8515899767b96b4a9b2e5a7652c6ca14e85514d07765e1e26619ca450c30ae245e5add2a7bfc1a8a3428bf4ca44ebb290fecae595eb3d307133a14d5fa2c5a167f51fe0a42a856a64c14a1822221a34a389cae8e88c9ee5ec5af2e26521bb9731ee55bfd16460b433c4adb3055742eaa709ca6a8dd5ed7e240add56ca5654a15671435334471c3a8aa5452ac2e8651c5132c569fb38a348af33d9752b62712ed3b158994542c71452b1776959cac8bc65e2a96305dedb1765d999d775b6d6254ee88b4dd547e470c4714f4d68574d5fbb9db7e0bad99a178b51aa8cc50bb2cac5158c9765916552ca871c67b9684c1645decc9633b6f2b9c31192fb287d1f0dfcf9749d5154fc9bd4ccae8fccebb2e5a1a98d2a7c30b3d8e22c7118dd995d969d7a114adb6e58aff0073c157972ede559d4d50f3acca95e1df795a2517667f12d72e88be4cd65572b42ca15711688e695cb4aeaa58c978f6e77d2b3bcacc68b969389e16254f2e92fa8b0e5a62e85a562ea599ddea5dcbf0b3f9a3c4508ef2b9d0a787042dfbb2ed7e8c99398b44676e4b3398e63264cef43f89594fa9d4cb3555fa0d0c70395288e54721c87db306365991b73c999dbd321a6aae961ecb395d96e552a79b59289759e1f93723f9f5a8a9f3bb4ff229b713aeebce1db72ca58d946e846fb953392b5465199da13919f6e22f045e8702942baee85fa2a745e63644fb8881f421bac4b94e43ed9c3e1d0fb8d1f7d9c71b7e8a12aac6bcf7f2b1b705d6dc4b25179562f2f995e233b3273b3ee33ee3fd978abe8aa7728997df6db7313b2a6eb9c3e4e0e42c90eb9f6142a1d34f3f267ce6f4d3b230cbd7fc0625c39ff354f2328b6fb7f8da74f3edfe0ac35b6d2afaabff00824e174656572d3c4a9e86be43d5158e08ff00670f8b58be07aa25095862862f839a1afb17b15b7ece9fb306aa2a7c9d076c15d3830607c38ee745f995b4fec55a0ae8d1aa15dd9768e6452b097a21bb58a599470ac54e86086b07360e5ffb30cd7474a964cc31da267530ee70a8aa52e55a74293e29731cc64ca328ca3a6cb94a9932676bd96964b4542b539996654e6659956ce6664bb32e57df672ccb2733b15ab2d1b29a9d0c9ccc7c4ef92953228b5625eebd99846a8d55964a87db42874f5a9550a2ae05f82bf4eabd998a8bfa491550bf82a96845fc33890d69a45ee2b6a1385695dc5a5b8a1eb62be2b7a7b11aa59e1b1eaab5d85a1b4abd4548aa7f4dd8b7fe0781c3454926a2ad77e4e639ff00e8e7ff00a3999d4ea60c1ca729ca60c18307298394c1ca729831b7264cfaac184611ffc400281001000202020300020203000301000000010011213141511061718191a1b120c1f130d1e1f0ffda0008010100013f211146a376946c6f12e07336edee7011dc46f2ca81f50eb436101ce582be90608148caaa85d42342ece18c43970e02ed018e26dd4591b52c54c4a189cc36b13ba52a08bc23c08d6a32ac8cc9c371043108d4a5d8f6a86ca17981854aa8055c44c08acb51bb62e9b5eb52c711f614149166430da1dc44bad1db1fdb5636d7ee33a3d3dcc09a08812f8543b8f90cf8fc403689038981530ce08aa8c36e6599d7515daf10e3fd8b555c083c505ce256c7110e6a4b08da04e3731388cc2698eaf68afb20646e6938c6ea58c7505381c40474ca00e62b0ca0d4ba81b87f9402b21b56c97e9405b2c0b7516ac4d773e144cb6ec32cd8c6b0473b8258891a98034c5b3896431c59cb1172cbc43699641bfb13cc0a9ca1a028895fb1ebe06d2ba63a25a2e63da15ee2a582a5edc24414882b23dee26d0cee255730d16cccc63647e0bb987ee660ee77833133ab9832689a8ce3a6624732be405f105a23b2caad92d543038671012f923889546cdc7c0b98cf31ecea5817506d5c4ce5806336964485067a21179ee05f1f78638e00511ac751ae32c7539e6027130231cd2547225746b1a64ae3c16e03d30a9783a1a8230cb8b2cff489ab2cb332b703c189871011699d1dcd880b15352d5ae625bb0733aa2c60d6e3f4e4811bb8617178b947e7a3532e7222028665fd420ae4cca7b898d789ec30d32a6b530656e61ac3e15ba97b771b0e11d9e26a024bd3c4b487318f0acadb12c95ea3430c03c049b3c4065ab97d4d317ad4b0a62235c2662ea567df8de6933dd5cc122f1b958ae35f4221cc72629a58b1cbac0d929abc4508b82543cda214d4157645477300c39fd4a332c8afc1832eb66c19f98fc53c5673025308281ac84aa02a57b189ccc8f33328e2664661016a3dde59a1126258e4f186764761c5e488db858353139712e8f108918b947e0a8779db09cf35b8b18a97a656aae6540465c12c556251a39971629cf986b105469197a874e515cf233148ff0058912f1d40f4c9b94afa1dd44a6e01b66e1cd86e32d2a93024a9deb87c62744af51ba297b89e405686052a60950aa0ae08272884b6af1108110de588aaaee392a0af99c4428bc4224ea3541e6a3dee18408f12948f054cb004d6ee5d45430382678a625d978363316d2ea2d46a5c619511e063953022283a8e206e159620dd4ca66b28540129946b87c561a25e6e17b87965cba21e813f698330ec6267c5ac223c58d4b025706064730d3fbe0c54d4c3329139961eb898883ee2b0501a65f948433fb8770d8c3779eec45136ca98fb281a8cfb269b9661dc710ecc1975a98667d7313b2da89dc5c203432885b4940f0a209e22389eb7c12e17b6a0b6dcef2c601b31236a88ce9b81440ea2a5944f72c4ac5429bb31b2f2c012cb095a9684d46f392000788f281bcbad65dd51b0ee2976bafe2661ec99f62b82572402554143a625af1a94e5dcfec9ee0a6b12e2a6a0b2eb56e65234cc419673dc3b62b4c7592295b687b2c65ad52d928c592ed1269e4a3823731612d63c63352dc74c4438f0154476fc03451475ff00831e2e73485b2a269494d8c4a9897e12c5351553a980d41762e99aae3a672236a689604d860c04b74c9a1dac214752f66a51c3e208b5c4b92e61c8ed987e1341ee1e35171092f0c638ea9ca63a977b974e2589618c4181c60661ddb30d9b811efc5da45cb76083c42cb93ea0dee144f5972899460e0781affc8155d32c3f10edb076f4c5dc605731854711712ade6618983533aa0c060dc5898553be514e2cfd8f3361e72f814653353157b948c2101e652bc111cea177281dc24cabcbfc331246ba6c95b9c91807a4651d7f84311ccd69970e99ef37529d3252d3afb11a7fb8d05590b77ae622b6d411bd5cc5027f08b745e24a59acdc3b587b893829f617835ce217e0fac31021dcc435bb651a62a0bfdc25c32e8bc4ebfe4965a40e662845d1764d05bf98068fc50330d60f440942fa08101c78947e6cb64d51de3895b708fd58f434cc1894497652d2b9802422d80422b3a41fa9942f1235e013189cc4c1c1538b8091dbdac3ea014ca86e32c0a8ae34e97c833538958ad31c0bf260295a85a188d89667c241d12c15fc46433606224c905f5898ecc67264dc8960a614fa388b4b02e2e88f300457994615b2e076dc04e0a9f6e593a8c71c61201e603cdce5b97f2cc49307d30c2420a2351d1fc446c4cb6133845d1353002344ca92e2596b5fa337a714313603037194262971d44477460f72f472e7e4ab330c8619c19750388ea09504bcaf9b61dcb2f552f8275ca0fbdc2a2d8f1eb996d7596faeb572c27343f899ad2519712bcba9aee2228522d6d40497a7ded8a6ee2f52d597066997399764e25cbf030fb2e5c5832e392314da06a55029a6d7bcc04a1b9ad326448de903159032ace28303d466d72d87e20f79161109e01a3dcbdba7f286875508010d4ac9921e7fb29b42df51b5b73e88ab9730d79352e6fa86db0487831ccbe789a35d3135ac665cbf8cfe592669a5f1057116eee0d4397b7b2d86a29b972fc2e5c19733a9a97e48316e5e25cb83c45f788bda45811fb895dc634c1710941c9391a1750d9d98b9f0d9171147c8c83b96806a25ab7b0e981c5c520468d95e086a3926283896cceefc278bc78fcc03ce625505aca477ccbecad222ee3cad1ca2422642595721bee33ef333d1ff00687a83442d73222de7e22660b42255c499ea52ee2783c2aa57f82cb972e5c1af0421c6231b2ea08b38943a86f690ab531a2c260b22e2505b1dc42a5ff589c8e788583595ec6120d8929e88d7d8f50b97caeb509798f2cf13f9738f063c29ad780b842ba33073db039d172c12e00a0952ce08652c1ab3dce4872cb7a6cc9263821459986ad202d12f30e4a4aeec896a8809a8069987b952af12a00c5c2624208e62399ec9ef9d100861631424c2c8f34c89845f10b6a59c4b00311062cb099a8a9ef70531ace2598760176185c4331912ef29160abb2a643594d2129748c56979ff000f684aa5c521026888e0cbd43c5eb76c24146825da75426dd46fd88aaec4d1998ab951b94455dca0e73354414508ad1b862b651860f81f14352e0b17b863f702a2e7c3a96406e894b7b89b2cc267f11e319201c78d2ae3db3105a9016b319c70ae7e46dde0ae5b182eef64171c939155c475382c36453621286d2da748b42dcdaf2abc0712bc17504845a789abfdd8223fa494f5a9cb2c57502117843d252b5282150710eace7f529545c429b847431cc2c1798055c4e70853286a6a93884b857950d4c398ff00514a3c27a4f728ee586656525309747103574542eda820dc13412fcd4c1feecea26b88616b13c6598fb88aaf654314815b65111c9a461c0b1fb804043d3004fe11057b8e4764e5f0c6ac9dd4e403dca67bd33546e5004002cb8214d4c599cf94688ab3889620aa11564b62c7b098a50dd815122e648fd352d94399509981536c5b8cb0f3589643a61b672cd4186bca8c49ac094e62a85213b37330ecca755b82cf6cdca3d3cc728ff059b79e9dc3822c7d1ffe3145f4cb934cc660a3438633718aa983357533534252b761164f061d208b7794ced049e3a8bc96db0095295541b0655dcf9c4620db53991598268c45d309b219d5457288b8460157c45cd478916d7e62db0d58221af7f0516a94449aee6065abd4a0d4bcdced1dc77078ff0005cbf01caa45f84a328dc182c624b9854db09f4f72f4a871051a97cb302aea587d828a0276a894af8b9f2aa6a5f32819cc4b261e222d285bae254bc46566a3c69ec33378863b255b35d4fa8c6a4ebbe5944a8273318af696d8f758654d3f18d3b7d388bca00e603a2054161e8ce5cc749d45304d1b99e650ec96368b94eea2bb750cf12ade2352aa0a8b1dc3c541830496df8d160cc42a25ccade2610fec82c9c47b2bbc461ad016bc12c454071e2e18a74c6ba6a2e613b6157b5b7c56213d790659567cbb8b074e265178a6a2aba6f10e9df330e2041470f2f1d8c7acb3ab846c6aba89aae1a46442cbe25fb83e2e77a462a59571ed313db298aea773e27ba2dbcce1a31b1a89c419d5c2998b73e6a730ddc1832af89689ee31b62b6c134c2dcc5fb230ebb222822c006cad10ca7a0fdc116ada60530c13c011b2e0713b411372e1f615f8f165c1c96115adff001150e36b2c9c3842766222bd8fe6122899620f4b2d8a4ab832c75a5d045063897c8943615cd919460e4ed1c0717e2b01a1b65965e9bb20c01058522d070cbf516c19433d5823981db70ab830a80e22623711789bc4238886c8a38f2350a4144433a264e669980db301364c338bad4b83a9fc694cf536bd07f98891811b3b1da77ee7fdb8ced8e2e3366c34c18c1bfec981b3f7341fb214ff00b20f9fdd2fae7ea5b062c3beb461823b932ffe2826ddc05eb5d4a9d2633b1a8f45c6ae084b2b51e20fbb962b65495b7ed89c45081742b7f92c49592dc2cee7b63394f05d7498a10616e15394e927a625648d31515d4b54c98a8755c178a9ea987247ae74672496770090ad6e1350384998649620eb310ecf2bf6905b60651d789c6e88a99b4b87db112f59d24a977c6a00ae2a1d2bc5443922cb0af316b821733d3092823c2457ba11b8fee27a066b98fecbb61626d141a2657fdb60ea3f3305dca5ccb1405b685c6372a6ef24bcbda7f697c7a6007d9b07303b966b9276475171798976c11849422b12008e116f16b8de84a882355316a7a260d47a6078838b30a1bab88e6e05ab7345126e14d951233f317ec21fd31da1e18717a97af5058dcb1bddacf53058983a4750a5ac90fb0482ba7b9c4d4589608d358940db445b2ba60ea18f195949c2ed103e902373a808e7ba84bc232cce6b514be596df38c0f51da5cb040e2ca4a1870a19a8bd128a851dc0252a9ee50f967c2370b84c557197b444bcd44a8f640dc0b17a2a24afd10cca9829af0b25dc4d1a826e3b18d4495415e59b4505ca4a310f32fe90d97733167e418530e21b018a21a5f72b64bdbdaaf03094d2fdc2029829a8368bf3c23c9c688d46474907ccd865041b702b39e228ad1017440e092df0300b16a511d8e1253485572dc1a750cabb852e68a189b73f2103a02122f53a2f2c7f835394394b85129031174a104dd18418b1655ba94373b589b8e0e63667e3133f6c35951f24224cc4786cb2cab619975b6a6e64086fdc2df06681b62b5a232e3509c76c0f08845059a95eae2d236732b80e28fea0b7f28f72c3d1b3c5c7788a871b973378fa100af0c579616ebc14031d40a3e4df6881288d4ee7b713319524d5e4888d30c411ee6fb463ac388dd96652de9f25552de698195348c4ee556bcac1720a7c98e9c0aa1376cc13b8ea0e3316c1d45b74c75b98d468e227ba9b4bb29d1008abd45ead8bde70132dc7443514e54576950b1ee37151175798386e5810834c9cdd45bbcb7b8b0371455013360b87d5620ebb11847e2314bdacfc864337e2e3034ccaa01ab822e26158ca81d19594507c8795ae3c1b2e62cc15dea258f4f74c93048fe6244e1cc261ca6dd8b7c415bd52262aba3961d05041cc433710d31a3e9ee0eab3e401414d7a89bacb2e156629d29498bf22b476454becbf1897c1e600d11a3ff529b3a9d8ca6aa0ad12fbe216dca22a30409ccb56a553491c98c40fd8a9640a6a2298807d8bc1701861a5a633512de0af900e9ea5fbe23f669e406474144b25f82a2e6180d91b96eb6468b325fe266c9ee905aca6cd86e186c608ee60d00ce714158455e97c11991e2510ea569eff00fd6190141a95895081981734405bfcd04e97c2238d46de620dca38bb2e3c3a87d575162b69bb84af7825ed183d545b044daa97b9183713e389ca0d0846b08ade20bb4d23301676cdb608c5ab8ecac4cbd98dde080e56c4d52c3cf7287285a19f71de10c152c8dc510c97d6377aa8b6e9f66357fb26368fa9959f630618ccb6ee14c812e0945dea59bf17707aee08c6215aa132bb8e513e468ad85a388f73b944cc607054fbb8be3dc0b952b48131db06bdcc341146ecc1a820ab86772de843c3ece0d5430618a644a27b481808614350fbcc0180a819cb1089d861468a896da8c2c6e0b6ca68ca9b460f48cbdd902311822899212329a62ac77a86744752822695dc611ea0d428b4ae0ded99f69a2bfe65027fdb63a7a5955109b532442e16bd442a53504cee5aff00eb6038578a62121d6627addc34984c1b5965a77b80ab934428b85d414de6214bee100d0783a598b42f44763f242ba7a1c41f7e67dccacc318fc258065bb4f70a6f22c0a68898991470cbfe482967335cc3f69b153a252b35e326d219d5cc6d0ca198b38c2685b44f44152ece656daaa0f06598508be707b81dae53a2e6edb63a4df99617fca07689dcdeddcaabe0dc64067a6161bc88ad5fdc4ba396cc159b22f53162e22cf3fcc429585b01b1b0d33560b5b377288158a05c6fe4bdbeaf642ce92f4313f3c912612539600bb96414bca34b4fb182a9b7b8554102eea2ff00add1369819553a8ea4c156ed312c0dbe93055f53a692e199a45cdfac25459ed881a2a3c0c181ccb859ae209624a56f715b23ea6a6316ae4b70318eff00640e25bb8f62c219d318a8239288069244568b76cfe1946163a6933fdab2d5699883bf1daf34410c2e24e6a576ccb98210cfb88a174b63a2a3069ccfe67041ed9876f41a2174ccc372c3381606ccb21c7b895c44f10cb055402281d90823b42aa24dcc2bbba233293a56cceae88c1c5428956531e63bc42aafe287d28e8c4e110e8a8f6a99e2bd662603dac0060a897cd4a745cb25473c42d1fb6030861dc0686558983cf11b845bd2f30bb2d8e643168a32c1f809ceabf7038352dfe942be26be7d403646b421ee51707c96d6c27ab11a97968cfcc0ea59df869ac25cd92a71cef91ad152d744608a0963063b2544fa466a312f731da3aa497e4811ec99aa489afc3382520e9a0f70584acff83073a968ff00b8169a9872fa88342a1258dc33c443a077300881ba4fe21be3130cc0b98c37af14e65aaab510d18c57cf12f6563986bf69896e2c15f78af23ab801d87820f0bee5b6ecad385b97d2040df63db5355be89c712941a32786fc8f707a9fef58f10f14672bf90a296fc07a9b6c558337917d4e608c05c5a34405d5a20dea51a59d933797a677a19ad83041777293599f198aabf72fdabdcfea6206569ccdc850c3fc388306a5009ccaa7f108f4f50a3e986799c9066c96fc865bc4a36cd22212a36550fb8a15841f0e5f916393b318b4cc118002ea6996fb986897db537a27424bb55df44d647f245aed5fb07a5b97695f48c202203bfd8ed1b9bad4ee4fb80180080ce6171af36c660688abb63ee65a01ba4bccba23123480b9eb1ee3cd45761d4b2bc315ae625c398dc5b51e368dc14bde0132dbde48c0b1a1fccfc6212f3e8ff25cf3311c4e4a80675a5dcf81388a0b26e17064636f11176b7061d634fa9c46c98b0610584ae8cc7ead7ec80587b8cbd187dca192a2aef375041cdd6a66183c2dfc94bf9d1a34f91a8b3f61b7f5cabe7f8c728b6c1ee935db9893107958ed883127a88eff00a88234fd654d173ee38c41b83f37304622ddab717dc5c6e57926518332658ba3f31fb081559331fcb02a31a729bee264b51da5e01e0c14966383c136655047c9505c940e75308e9dca7f6c4c424314b7942932822982048f93ea331753b04bf3107b8d57a9810b7b6e38aa3d85cc7e1c1d470f61c4542ee526963d4c852aee57f40961076b8f462b96f03aacb33177808891b42dc31d161f889db01d33a2342fea1ff24a7ff89eafea2b8feb2edff08ddb8f7ce79f0fd4e894744386a966505dd3316566235c38ce654bc7f32a69fdc019fe50db0fef04ebfccbcb4e8cf30c7d658612cff0543c42167e22370f679e63752f4a99617d4b7186507be25869407163f635647ee53cd8fb18d8fcc0e0cfccb76fc4a70d4bde3301364c9b255baaf046a88907130b368611534bb83b188a54a819c46c546becb6b8970b4d4b112a6228967100fdff0010faf1b56e5fb9786515fd225b128ba6510c6c056cb7b581688e543161a0373162b44798adfdbfc42b46e2babb25b93710c3e086fc5594ae6e16bd0c048eb0e655990bdce0b89349063c4a6b8810a4acd45185ca0e6a0c37e0cbc133150982004b3985730a803b67aae160312e2e7cfaf39972e5f8e20f72e9970dcfe5456be37009e041ce257710b3045a468311d00e567e450d3528b5d4b0576c71c4ee25d1b6c427df70ae90840da21a98eaa17608ea4069aa8f3d477df0aa1c402dea5d60ca9dc096c99c50a202e605e532c2524b346187e4bd3102d00a5c846407b9d70574c341511751aab258910bfd443545f48197c24901e73d4517ecb789ebf1aaf5e2ae9326a7aa59c45d43d15cc6c77a84ae996628042d73061a8b3020a64416f4dc5982f5d1a878a3c5c17330e14770598e605de19654e21352ef994c5b10c4ef1d11cb1a8675cc6398aedb875ad4aea9f27d02352e0d7b63ef512ef99ffb4b1179751db2d4a050ad1896d1645e6124b6b42b994ca52ea0a6bfdc280ef2ca79654a99b9ec8666672f8a95299f88f5e0832e4be6327e146e43da2843399b98c6ab31108c289046a5a71348b7530751176c10c101c474577018534cb8b6b5058f4111b384b1a26653d12a954621966aa581226696c13ba80f1b65f0519905dc7a3ce202b86002c0d1030b7a86a2b5054952b6e7fb8546faaa6d3f742dff006a239ebab66f980bcc06da65b736d627387728805a18f560eaee60dcf74e0944bc49f217d421b5431cb6b6f52e0c7776e2585e929d4c30c46376515966bd9ee114d2247711d78efdc36d709d1f73231a85b1c9d42e2aa8275e02a9dd2fe589641980752881a63a358853b9765a6532d726071ba7232c913fcc183be896293bb8c0e8595b72aba8a915dcfa25b9a9a4bf70fb0578823989dcb9ed305653233b83a82823cd7799a7b8bc4cd982229644e18e392e0834fd2a607fa255a507b252f0c30ccb8dcef80a2f719332ef3332e0ce65bbfdca3ccae659b9608317bb9470cf4455a23ee3d572ae12a0c6b1c7505a1d8c33ea2f10cc33645bb600a118299ca2d9c40c383714b56625cf87d416241440b62375af2e3c7c847c0b52d399a66591be26a5c25f816e193314188659691ed2a62686254ea0495bc4c91dd328c43180acf88cb1860b86138975ccc3b973bcc1f10d8e2985c181845f49b6f10bbc466f752d515398a55dcd2e1158bb99805650fb0146046d1b94d609dc6ac98863a956debc0b371c9a8ea55ea240a271a811f512389c78cf8cca8dc096c3707c2f373264b87043889b431dcc8bbc4b2c0adc0ad462ec2ee04af7e150609137bf14ee1560a80fc40b8db2b5e9948c08ee3b87132d3fb8d03b181bccab3d44121d4ab6039cf86aff0029699dc42ab0b50f7a8291706598f3e1b659a9478dc6becdcab9454af0a86495082025128a94579ccd4f895866fa8bc84b6dcc156664cd8e263f8c30263ca38d332c418b9665333cc558202f308b751135326e1c772dfb28996f98531ccbc4a3773235c4c78b352fb9f98ec7f82320be2e59cc09dc579b8aef7165d4bd314f1172371b7d879d4ea673de5603a95968972929dcae8853372b179b9654c5c1cefc239c9012b6a6922b69cc44c6bc04968d3194cb98ce2169ea216d2998328865183b7b97c262526a5d6e17b9578987a66473e069d430626f086f6ea024b61c9b977ce60cc8958804359fa6e1637a6c1529d841ad3f71a23871cc558886bd81fa9b282f72d5419ab2137ca301518665861ba82f8adbb964d741cf4c150b82da65f040bee2506a5ee04606b6c0918b325c5a0a322df18dc5746dee901502ff0088bb2b7984f259b3130a5238126defda61d9f53dc26d6d55dc1c30791816f11b5e264569c5cb86e270c6aa696af64b50e11641ab79d4237aebbe65815bf3160a51ddc39a40b7d7b859b7197b4f0b8301f84998a1bc6264f57d4a565f925116dd66c8e7957aa8fa2a3ba896c3898356c750bcd04e20aea46ca938335f5154ff0064bf2fda690c4ab4bf6245c63dcc7b013161888d60fe622c7f738c110694834c300ffd8af71b044abb9fc45658dd1fb36bb6e61969f66caf862d90bdca08e8e58f65135989c8df772e1141d9715ce67b89d85867e62b7c415d3cfb99967ecffa92d2d18ef97eb186e2aed953ecb30afee03607a96ee174f300c8a4294be77994d64e16ea67657d81e87e606645aeaf172dcb3e4d3c1ee61f5bed150c0103bbfd98451c0a2a543542f307a6a422f6dddd666b900fd4b8b0b8489a239494c32a7193965430dd9158d6530d697284815e4e983180f1cc7b9c5cf020255215bcf31f651e6e734c5eb9942244ab689ce572dc5ea652657ee283036a53d43ee6d0cc0dfb8789ee1a30e9d9960d897e20950e880ea799749a4ddcb8c55c135ede3097e065de37020665425f1352e0e65df8befc6b53899ea10af144c4e3103995e31531312c8546a15e2bc842713739c42578a752f3af1ea68837e3e4099998d7e65350bbaa950ae7899ccaeb11651d4a42104862f507b9c878017cbf52f6f0662e11852e544f8fda0ddbf73767fb8ffd93ff00c58ffd534bfbc6cafed2a07fb47fef81ff00f51ffa67b9fb8ffd30e77fca6dff00b4070ce7fb95ba7f70af4fee22f0fee3c564f62546d105ad3ea3b667d4aff0b9cce232e5b1840c4cd6e7709996ce441ee154ebc0260ce07ea87fc93fffda000c030100020003000000101c0a72da2d2e70cd013c2d659c07b94851dd02037b825bc807813a6802ff00a76480c21a0116cfbeea0bd5071499bfac92238f500ba160fe2f79759cf2847e6a656b0940872b280ec7c0ce5d697a3f4042a0ee8e884b1009e4ef3548ca3dbff9a2ca0284316f522bb029457927281ac942624fe03bdb33b1cb2b65b31918e0b7ae7b425655e9836b5a0a2aa00c89763257ba7ea3903ff19fff001f4a9018c03b55a317e26d72c35b40d3140244c850d801ccec1c2c1150c280b0e9457046ea5ac27b86301fdf693acce4df5263d790963393e211f388904e76e0021df5e7b325a8bb200abf499929b601670e1723c19e5434d8fa3bf9d7e8be1f5cac2a27051e1aa0807a3c5a044f158c97edbe50b70b3c13afb1e8f1420f1ba1209deddc36d44533ddb8660730a79595dc7d2e374225be89804cafd4df562578d6894a93f9a6ea8384694095f0f69236e9d2ba693cd0e08ed9b50c0e1539b6c225c4ba9b7fce2b99af1e98e9e40f68cd0853143c39f980bbf6471b5b01a32aa637b76f3cb56ff0d06eb66226b3f435da5b054552648d7a45811a9fad5a2fcb8c1e5c5f93899c2a9561f56188211a058b53d6faeac9dfc1060cb1f5a0a45b49d72797ec08e725d61f3ae6e568b9062eb22c939204c3ff00385502e92e33e890a942c21983ee7bcca59260b04ce0a10f37cae420c8beff002cad3cf3de6a0ba6ddfd173bd0b892f077397af994945d36893aa947ddd38989a0660f377efa52f1edcb112870192a4fd7c69346d5012a9dcd1217563f7f17a6a6ea1a266b7fd386e9883d6c68bd260e6e84fe3c76fa83e86b2ca6dfd8dc935a2c5570ce74f4a3c0d33db982f1292bf5ee0e2c6d26e6434834dfc7a3fe603b65c5be0b88d5bee57fd3bdbaf2ad5cc10bf75c71f8a0fbc0bf8bdf41fc38810df0637a285d0dd802fc1fdcffc400231101010100020300020301010100000000010011213110415161912071a181b1d1ffda0008010301013f101d2360ccfd91a74b439b0c32436db7d7b2406c98e319a1856cfa65c2de29e400de538d983acf1d4cf0b533484de0fc8e0e92e608a1ac35b723f32ed9613811d4fead93dcb056807764c169002764f18d2bb91cb6e21e63021a64803d5dd2d1ab0ba9763af1c0b63f10e73536fa2272dd88d8a385a2d6edb733b4a087389442453b4b47321354f790a45ad643a25382e0eb10c83f049fa241ed7660804f7e9686478907840d3da27240d91c07c23009f61a1f67d4105d92e163379c8fb147892ab2c79ebc41ad258c8e4d83ce78cf064c8696864dc1692ec3d4060348c64c1f962d282d82965c21b9327cbdcafb87d2c3fa6dc52c6ca38883a139fafdcbef3f723ecfdc8fcfd91f8bf65fd1fb210d33f77f5feefebfdc3759fbbe893bd2238c1f8911219f4b5859c95601fb3e359bd3cce8c70db3decbb06e50667cbe1f6175018f7747f50f160f76fdb11ee45b56bedb0b6b6ad7d8fa42fd9aff00644c61be0321db077a9003d4230aaeb11c9263cb600765456780a722513d43b0fc0b871e017a9635f05b6184b120911a8767fb21cdfa1e46e2b145e99d15996cf82082c804f1a52fdf81c5975806088e1b239fc0cecacbf523da05ee76efb263e83ca982e7cf32177b93f84103964f304361d6d52b1e006b8db80b72c352ab6d964924324924b827e1ff00b00f44a7a241c4875f6c15e8f380c0c242024b04a203a913a841f7c353f8b47525c6c7b5b13eeeec8f3920cfcca24b837e48182ec6647258de905b1d4c9bcd9e367963a9305ed03ff90d5eb825fb5a859689f8c789c897c060b33c64d906c864048f02c98452108e62bc3213d84f60b6dd82e42c58c2fcfc95f817550836d341c7372386c4451d5f926457bb6b12121291cc2823c20e047879e510f1670a7009c78590830658b223819c052eb3a3c1946c8e53134dd3ff00b2222bc06c310ee01c19273718481cc2b9076f057b470bfc05a9f8f270f11d9677303124ed7f60b20bd401b0c3bd4ed1cbe071820d9872d94fa4c0fc6909a2e7388f54f6180613d880e497b195d4f46c27532c8d9371f0203206da95d11cb98812506595b20e10e4770b9dd218f9d9bf05b97f72e2307e583e501e748c84ea439dc860e23b6d944c1901146197d9007c873dec5ce5a3fe12c0fa85ea4872b7c0644ad12c9d62e6207ee4e62d861908c14e342d03d5c61d2dde27bbf258d0201e2e8caf321c4a358db601da1d7327d166398fb32e82e7fdd1a8699cdc990874ac46d64e18b28cba20f9715dce5d436ec6d5c37715bbd5eb177e92c2585f8c5fd0b07abd89f927505e5b0be30ebac83d48f44bc731ba24b6727e9ffb23fe5299b08e300f319901ef880a3e070ec619843b55839eec824e61fb71659673251f45a79424f033d92038b9ddbabf14710fc8bdcbe122e58e87a492fea8bc2072949b0164e47988b96847c64834e98e0caa2f04873ce12fc913184040641bcc8251b0744048160fabf05a7ab1389a0bf21c8e12dd4708971168193fb0916324816c3e20660f309ee070dbcc7fe1c478131927c964165970132985db2957e2c34fcf730770bca7acb9a03044e1ee28075b3893b243986bacdc9d5bccb2717f49d1992ef87cbd7867cdf350165b921a27138fbbf342745ab07b23e97e484d1b22ec964265c986b62e64717bb65df07f03c8d90643836490c63824d8e2d8e2d961d938c618f839f0c086dc38fe191e12482c9b22e9b386f5e00ed99e12f707124ef827f099702e3287bfd469dff921ee07df138404da7dbfc427bff2c3dff97e4ff23a0ff9143ba3dd8b0e221bd247c467d3f72bd0fddcdc27eefcc7ee53e5c391f194f505ea727896eaa47da0fda28755e6dbddecd9480da425b060c12d207b84b67104787538f567c47c272cc80745cdb920f0904e6c32e20186ee41201dcbf5757dd3f68fb5f55f546ddcfdac9dc3c4b2a58590a72ee3ed3b777d51f6b17727218bccadf0cbcdea158bbb63b96fffc4001e11010101000301010101010000000000000100111021314151206181ffda0008010201013f107cac8bb57ba9c3d322df89adeaca47c665fe718fc93b8c312608ba281021d9e4f43da44372a6f31a97cbc432ecc0bb7927c42319303be171d4d85e126b1020811789d36c8692e9836dcf0985f1237eca17f2c21f49f6344ee67434dba93ea53fe9e8902a4d78320e3dd931f6ca41157b6e64b148fdb065b908964c44b0676f51a37464c7fabe001816508bf326ca1fe96970400d0eacce8243fd471288380a5f4de5346461fcc07504cc60123adfe116bd71e433edb1104819075213bb483f249662c8e8ec1020af77501f25825e378c215bb6005e0c065e4867643dccefd23a8b731935b79ce082024d83217c86b21244ccc1b11c047836d844ab0d69d49829dc97f089fb21ec8520384de1dc9407b3822227cbc580793eb366c8c8b041c32cb2c82cb2596ccee5ea4c8430e111717a98631208889be01672eea7918f60b0f2659c350a15a924cfe049886bb1ea00deef10c71b0edb9c7be2f01c87f80c64083f11f72dbe42493eb95c9778f1789eb1d7827c816541d4ae3ddbcbb865d10222d8653861865ae1c61b12f7048125ea0c9eb27c4ed35781880fb7497e5b7ab1bddbfc9f916c22d86d86198ba3b81865da56f6ece06e8cb2c838477606ccbb2670d5bb6250f71c049265ac30f50c3072dfc867b209787c82490ca84fc8c7b7858f63a2c3a607c8822f810e96e68923cb4f63f09280f2c5c2cb802a01edd3d84fbc361e44f9cedb0ff244bdc328494ef1077084128447d9962db068867443d3d5e9192d36a41f6907fb6fec19fc0b09308e0eb80b208e3251d10475b2ea4d83ecfc9079326400e9346440ea23b60c6e483b9f67b10e8b3b60e36db65de4e07f822ed64496731835d65b8243ba62ebc2174b6c5832d1a6cf488c8f29d6db76d67a7461081ef00d6dc88c167f0ddb239fb1a8f4b0231da578cdf64fef27a1a6dd91841c0d92c7bbbdea9c3e21b1a1fde0c37aad4d07769eec503261b90c58404f56db7a410e43c07cb1b2a68e5d221b860c75640c3761af6c0fd67061690fea0ee7b98211eedbcea0a41dcbd84ae8c09ea373b8e40b24c8cba67f12862edb07b36602ceda640f1bb87bbb4c3fedb3b3373ab4702d3dbe789ea6184b541bec877789687480ec8360ce0b78785461626381e13ea016dd31d7910a5abc0da96b0bf655fb23da566438c3a61fc8723858808087185920eafb2e4b2c3091cbc6f3ecbb9b43ab321c0e5ab7782d6f7806dd91ede22d9e89f64923510c7765964f91110597870e993e607db7658763102d86c3048b65d096dd93b9b360fe0e72cb397819674c7520c624d820b321969c65b6e90f53dd9647f047f39165965b1c6c36f70c4f1e6ce4f2db6d8761b65961b62f6f23bb3e41648da9183384d8040ed91a43b7d8420425903267013c3fc111c13c771b2a5ac7196721c644707778bc459043838665c879c3c9e0fecc72c5ffc4002710010003000301000300020203010100000100112131415161718191a1b1c1f010d1e1f120ffda0008010100013f10b49f1f25807292db00a2f661ca5ad751b42d1f88dbd0401dcb172a60aa00b5c581c31c62ecc9432ac958dc84d2e9fe40100eb610114b641529fa8471bc112af6b09caf8a8460e546c83a94f6254217980b2a16f240a49d44c417441086129225ad8cf235c3c80b6adc8aa00ac8f99d60a857a410029d8c7eddc14a350b31ac618db8a285f10865973e7335875c451b543a6c4c88d52149550b4e05e7fa628055e793070b1d9b528c0fa451141957833d9d0134dc5f03c3e54bc8b037e20e781e59ff00e25f1481464e8756b9c943491c71ec03a96313459c5e462895952d169aaea500399bd8d81f33b8864c215eb8940949a85520ce28b84ea02747a93928c7e23bd8c874516750cca52b08e9f23fd8ab44b0da8f5037e2313836b2e561ee16451082af8ae30caf8852b6acee5140f244454f6986a642c9eac6e0f4521b52d16b2f676a091b00abe66a8a5cc02a9a1a4500d72910310710693b863a562452c50d2104fc6616c5da02056612cae56513895b664e655f52aa50e4a018f32e1ee01221cd9ae3633c8b64fcdfa8e1d3ec1d9bc253ac5ec377dd82c7f316b0a6e2ff00b62ac56d205f7519802f4802d40977f2664a0011185aae2047a64d14afbfaffe404d9a698bdc80409c125002cf254ec0344c42701cc6218222733d4af0cbbac2c832dab5665408a5cad7a1a4494e0d94f92c403e7c8e6177500e7097f27cf45bc8d0059c44bcd4d9b51e199175915fb63a96ed250ea4c8a850f3011176847d01f88667ee274fc8243e90a61a46bc8d3dad3f538c90bfb2a245d64bb915e400ca58290464c5a554d4bcbf479968edf21029100639c868d24a2015d7c8436ee44a88b955338252c0a8a9b97f3697795cd38442fddbcff8b8560e388c026db47d634532e038a5d844b402752c5ef33d38f62265ae0fb2a61b1479b8958579bc4b0afd712a927d8a6b465f1c442b816cf766fb999f2508998318ed6d504f254a15c5edac0286994162e2b23c97ecbd0b309d459cd02f129f0694086108ab256d0e4df52a15da1aea322c29790d742b3dc44ad63e46b6b60c0a28b946e630c356442960ca9d06e44852b500b5d78889477a8402aef980063cb8fbe8d32c88aaaa15c98cf933b054520eaf60241b48c34ee01438a949471b056073b14cb25b2644de8ec2265172d8a9b730914232e5e2b2f2436037942b2e3100d8a90edc60d3c96378c4e01a4b813c1fbc6445179e7ec5c6cbbf71c2910b7341722ceaea354b7e2148816db618852d49629765cc5e8fd800e019511b1d253481b84a6c5e620e0a4137aee0a5fdca345a44ebd460dbccf7054714d0b9711b751982f125b1112d07e223934238134e27a440d043aee35b6963e43c1b0d5129941c10a40d965f980e4b2d781f89b6eaae105d4cbfb5001f99d546b5d3481a0552c9f746a271e17f63069ad8900e9aba8a299c342d112d2621958e1298fb0681c4561406c196bc94bfd0b1032d5730821a7b9864e90d928423d8e6467d5f280749c86dce62a2c872bb9d834a824535ff00c46953b72d9edff9ca12b8855d6a21c0541e19c20388185d57b66e46217078357c102b55dc4d978f201dcbc9a0725d40573c11d07997e419b4fc189db874e109fc8115143a1dfe421d89c0986c230a6de4a8b76009057550c3d02681e62de38d938c2a29cc400c6334f4aab803db5b7505d60d113439644dc2d952e2251b2f30a36741062b11b801c92cbba95f83c85c2a1a1e4ab35d1078a9c24beb9fb10657e23cd871eca95057719a73991809c812cf61080f907670d4f603633aa8c1925cec50cb2e8adfb05909b5b00b90c87cbe883c1d0ba83a30341f980c0cace6d4b056f2892d23f85ffc42aa01b92dc01a328c001d2220af49485a455c2981545c4420dc3b9c029e50c78fc42089d20036c876e5eb62f07729cecc4e670847c18ab29fadce0f504b4afcc2ce0e2980259686d4224f032e86b5904dba5c591ff0caf0b020e93029b0c4376a2a5c8bfa4aaf6d138386e3c9c1c9304b4ae2481eab888b8975901f50bbea3d3e398d21d4207a9439b88149bf938a7fc8269fca10a17f22d42fe41864e628b04b0f487a3b844d65f7f98f247c2548e6462ae6107c60acba16109fa0e550b9c2ae5f82cc8925a972c6e4e65c4e54c7499a610968215c65104ada4a2cfa4440108a42e447881fb1ff00a9742b922a1da01fa95608310ac56c1a0cc25c5c1a6f300a0dcb651478ae65fe1e452d2bd252a4875739445dac102a35f995412cc7f304360099c1bfb04a160ce219a2cbccb5a57aa62d12de79886a4ae78849282c7d8b01a8a965745caca9aa048c2b2f344a340602292c972fe1b942e865cd4fc4307f6540d285440a849714a9a802f98a17b7ec1743f98561fc8780fd4a3c3f933c972e5cb990ca3f5539504f26041ce417209c41dab57750515d084c8b71f88098420aaa3428292a2512ab5b422b03325d1fa712f12c9a3b7d5436c7709fb08820b1df0400f935fb8147a9d958d5c13e4a48a16b037c26a6878bd994e9e115d5aa52c3bfa8cdb53b2aa57f996097815d4b5d2eb48f2d85c5a286982d19c6401ca41e6f4371e90bc3ec66155de4054f65f3539c17f9868025e33a8200772e35b412d1348faaea116b897794964b6371847222169465859e432b7646dda4bb673ffe0ffcd7fe3267fe1400be904acd6c222a079a94240b8d23b951ac88b41895e57ec5283f505b8ba8a4143c46755b1cff0039110c1e653b0b8409ca1ea0c07b347faff3195caacd590ff04c00cae20e4e8fb150dd8ce304610fbbc4b481a1203255ee59675de47e1d70f51617fb98a98880e45823e4b45bd2157cbf8853c3c468a8dcdf33718822b6582a57031dc0aebc8a6dd4680cd5a25020ea2ca0dd82f2fc8b8099a54d4357883a9e7c9f9a8a2e13432a41d5722060b95f12c098a160979834ee081b6ac6d2f004f896468b4b0b14fc803fa8a110160c6c64544292d5435a7f670ac5f29010a72c970a741a107a1f61301c534d308411c034cd701282bb182d6bbed0430730059551926b1b8fdc8755706988a51a2ed93fdc19c5458dbafcca5695602e28aa6c7584f5dd9f83e4c42b76140084044ec8a8d3c6ea544ee2769e65c0d9701ea659823a57312e918023125c7e24081f548e6e106572a7ee3000fbdc55a433e2c6c0fab112c4b393635ee6c0d5f612a9c2bf11c51503515e3e4da4534ca02f388825515f76002bfc8b47d88ee8e6376a79e20aa3b952968e65406c4bd86ae1a5c467388638aee79a95b08687a9f6e23908719ca5717166428f0957708683e4a8b2f889d0348fa0d4656395ec5881cdaf12f35c26366e6a8c875074c21c121e6a0cf139e207b1ef26290ae88cd527d23d83f5384557dc58703b80390551044976c8d0db4f33bce64d05afd97b8b7b1b9007e4025aafa63485af57897cb377d7c9698d2873b510d22943f89840fd81810cc7888075aa61d50f3100a7518a0e6709e4871588393c232f8c0f16f11d97c5465cff00647ff25c83cd116140e2f906c6c7e3c4000e001c1e080420b92701a53d3709d406c367b1dfd300a4ef988fbae5440ab35839615ecba6e8661559d45f4cb1703a40105cb09071591281d1fe512da546b1eda8f4240f4c044ed283583a5fbbff00103b862cd0a7854428a5a32e680efd976a1eae55a7c5c56c40fb157942415567ecb12d4c342ff529555511dc3ad96257fa804b3bf62f0b6ab994a321452da3b8722fe710094c1b372e077c1dc5cae27882b3a3ec42e9cea202153073b0da08dfc621cc10706dc22c1e41e0d7505c5aca7d0821ca452f06e240a67101d03d80a1487e4ec280844516ebc0eff7cc56ab2850e9cc4e502a9db71cc3787529c14878235fad4460f8009875b8aac04e2560276767d9726183d258fa088948b6af984af27b13b54ce868980dec6efe40eaff00b3156692eb787706aa81a22b04357f1136abfcc4dad413422ac4b143725ed4092c6e8e784622066f58a8ae50ef062285eac55460a57d201062715092c7e67f400c4105b9d9804ec37e4b9ce312eb51e467b3655e9dc30d6c7bf92d7d7c83a816d4f2ff00614be5d83f608dbe4d7ee0773917c445137e4b5f87710bb0315d4a103a7097407c5e7608318a1171864382102d7d8d4048bd2b3d7517d0841ab3d8ca48bbefee32d753d11c53a870899808e3e40124d84872de8bf3b0e620aa72506387b34b9c713648613f32ddf89283c96868c82be442c5b86684d22a15842eeb05c01e568cfac894da55e27021d58daf6394a9e4b00fd7211ea27e98ad15377e4408a4c94fe51040128348425a5a1c3f12b2c401d100279eaa1a2474c2db12116883e5c4561b3e4417c5792f959ea50bb57e22005353bcfc40a51ef70386b0a16eeba8055a6027d8a5e1b0aded89583cca0d8e4addf247186c2c3c5f5006dacb2996f2fd82faaf605fb495535ab78af82b630a2ea36954b245708915088b96bc30682723191054b12a93f22408823c0e6b23008d43dcb9d5d17200a012770a20683df02585b373c8c4c34178ae6056eec2035fc81ac18d5eff00dc1793df9399c0e2f935c0b7c4029a94941cc0fd3aa8ad9511a4fd3251215e6324294efe12824607444de2d45a008960a98c9787c7d864ca7e58ad2db94f4b87000e1c0410671ec47525c4dfc4a94aeb2678d5689390375501206a10868f90008e3f91ea07f080e31f9252eeb3f134287f6002f98c3664173c941037f3368b225e57e437516cca5170eb5b8c2c01d469d2bb600d23f245ca49de018d4a29ff00119dcde5555a5d9de32a4690850189291fc8be7464b8710003b07676384ef012c9a4fc55dcb8b459906c3917707ae0851e9504c53282e8e39fa85d95753da19765df9833d5426bfb3a2f3df651ebf93837ff005a68cd33a59959a433a831e9ec255adb8d5837393afd9940bddc484b6a011e55f67fa083e034081bcb3ec6fc1528c2a15300265dc7ee00a58b081bd86a20188609894a8e6542df6e28d8b7b38b2ff10a81fa9d66e487e87fccfb01123d879e7f31a92b9e6022bbf2014515042c7fc4a8161dc1bdb0cddbf60272b899b62cab155d1054d2becc0c5c5b72c7b94509c7f98790b2a7101899c30a991b8a18268c8280a87fa403825c2a87f29fc028371e43401dc5949d1dabba7fcc4997972fd5c5057965acfcc2a2129108a36c2cec65a7372c67153802fe4349ff00a960ec21c7a97de8d1e42eb650e5928c1c4007483baee6a7c22ab4d8e0814f092c45b184bdb1f31500e62581f97fd4103472737ed9f1973061b5571349773d144ad570b974628a6c6016f7fdac2dee1a4dd812c2af360b405ddd64741cb321af352f1d18cb43f3141037126955374b831690993f531228b0d94db2ee22d707ab80e5b8fcd9d40ccbaee68b00c79bf6786c0e98da980b516c2521789dcda2e90add5fb33963f63a2a5eaa1a2afec3a208dc7ebb872a1d443b12fe2147f9138816295fb10350195b0cb8ad7afdb1961a1c0c44000d99428798b0289ecb4bb27d360f0342d6ae91121e52eca65cd1d64bf8542816b7c461cb42f2b9ff0030e6708e134e32348cc016af70ab5cee10b3780a8979a76bb8f914afa125202acd73280745ec1798327edffc36da2a7d95295b0f48be44004fb32254685dc2720f90acdec648ff00fb885905f5035829ff008cb6835fd88a997972e6390cbf763e8c2fc1c6c5088557e4b085ad7d8457023813f1158573ddc4d43cc4c1afb0bc5400a71894579dca43ec0b3e93a17c802da8471a900dba7c8c0dacea0abbcac85cb5ea595728a2d0a0817f981d8f918b28516fc6269b2bfa8949ec53412d64f6892b571712bf865a5b3d0884696697bd44e079803aa6b4c3e862d82e5f258f525f222c355ff6e12458e06107a2b8d65c1b384304f18fb1651161fb1562e5ab15881b114ad82983d55b42d943a2fa80ef60a8c7b18c2a006d772a28d2e5c51005732ca95b23d606e8909c4610343d89c86fba8504df257097d849453b8166853f1324a56c4b53fe48053322f76bccab9c1c44a5972ec0fda3ed3a80577793a4c72c37beec166ee130b1116a73eca2e1b60c3f60d33011c456afd975075b82dbe88638b656da5c362d3e41d047c801a89711314723f02c71abc76453feecee2181344701cf30c934168e11c1a909c43b650a0010e2169c3e43c30c2d57e18308e7ea3ece5e11c5a094c2efecb26b3685cc7f370b1c8ffc407e914007e91e208528c608a734e1f87531d5af11d6ff0070db5fa3d1051935b2df2a02a0aff89bd359cc71f6ba2fc4d94a8580de347e09ce326b9af6296019417f83b8e3c2dffa21e92bf60fcccf2ae06dfe605469d53906a0d7e656dfe1038047a8134798cd02f115cc34fec322d319c9b06d56a60468ae34e6710c79a869284360bd7e605103d822c3fa4b14c6fa2346615dcd17ec0a038b8a957ee2cc4e6140c10dace42e00eeff00c4b17b7d46823b12a56866032a69040f337b8070fe45b4df228b8fca955e348b880b540fe4be86d81d89abfa8696e305ac14a858273105f478ee698f1dc3917f8fb1505f431cfd2792e257788a9bf7368e594e9ef30d2e7f31a0a770b38a82de724422e8e228aa8dd7a3c8f61be07ea1d872cea090f21e88f93c9ccd96f40f63a8042faf6c416b64510d49ff00a047b758701f03a262956708abfa71f1871b1d337d2e43d1012c6c970904267dd8435d8d80e8daaf187a0b1aa600a1e4b08a7c9480858d1ac6ec47ab8e370ca0b63d85e86e2cb1f2544072263362210dc8058121461704be634b835f1728e8e40189c9bd445af5105a5273804792cfcc00ecfb1968dce6700e12b4bbc12b2a3a1f8834396d6071c9cb0db2857a25132a19c9883b788e1f981a873d887520f35a753980148ca57a18bd900207c850ee2b7955c745521b5dee50a965fd06088c8239f51aa5391aca0f1a27c23850f4b847e3dbac71968ae4f25343411146dd8becaf506c5e08cfe8cc03bfdc32500504bc8d8736f31abf9ac54c091a28c0f09f22bca06cee1d0727b09820d2095f252210cfdcda65d4398890a685b8469e4e4414b200857d629c4fb14c55294b3e1946b5f3a85c57f2597fe633d7e629bc6989d839f2009353a211e2848b369b1cbb57b538c661e645ff00e25eb7b8a46ae0600673108475111dd25a301acb4baf66081293f08a1069c5b15270f0835da95fcb2c56c9c014f23c7a667980429d0f8cbee820d48e8d8c3ce5e0fa4b8bcae1f20864f0ae20d6f6033495030e0fc47942b7842804e5184492e2c7653c8b6abac6ca183140771551ad50dfe4cf9f81725be11b8953dd5843cb4389366aa2f1f6069e885ffd40ada773fe225639dc1a71947809c86880ff0032b7081351644e71605b01abbf84a47fda3be1fcc66529d4cbdc6608969c7c9c513caf49d83b6e4bde1788a5debac972b37cd47e49f65ca29e4412a7f23d831abb6382b3ec08a2d6cba9a77003a48bc7fc208a48a290479a8d2d8bf20cd116cbce51d507ea0211eb882c32cee741845ca7402c6adcc9a61182ac7fd9184a122745b180f008153a2a204ffa89d4b01ea6ff00c400a21c70b7ed5f87d20ae8e32b7df919107e7a81cd18fbb033a805a5af93a034ec414d6f82542dd9a86da6fe9399b05eb83ba5b5552e805c0dc68cb0070ff88885abd39607053b321457c15d92851d5e08a78cd5788397d0cc95100b72a5235cf04e911041bcc5aae5815da292fa1761d59887ba1fe60159cbfe21f488cd9400876e2e2641ea33fc1bfd99742e5b5d45b93f2cc70ff3115017f11ea95dea1a5bdce80561628a8da58f4422c29db1c32a8d619f88de6b9dd468aa7f23d41fa9b1aff23ce120cc33909756c12e807e444850e951952b2ec4fd419b3f498719055b744394a42fd77f9857d51da3f3c488ab88d2ba91b1c0a7ec521b204e0ed4aa0b3564bf5671e07ef90aefcf1ffd11dc3b5f2429f52d5ecb97912f802a73d2b476b0cb8fe1854add955673dc318513a828317fea8825db6e58299c47a7802f58620bc0952ddbf214da3d7c9419294a057728c5fa9c1db373543b674bdd7d6a5cec6a20eb01bceca18be799728db1d0bc1d453146d6e52e5977c0bfd8a54b8508e189d447ab2a030f0866c0954090295552d6c72118b43ea4bab1f22ad1fd61e40f20eab99775f6167187106a9ad68fe4686d5968a29ec56aae3b004a0a0f485160f22c4b77c8fd317e4b1747c97813d0c7d443945cc9956fd40707183d2717cd910a9d952e45ae0f9b3a9b63438e5725d6a527fd11b07aa37670fea6a80796bf73b86c78cc40a905016fb2e20e2afa815a17f13d8313e210dd119c48dec84cbdd7e47c07807d8c3bb550b024a96a4fca22f213bea5c8ba73dce44b87b539a96f88cb1aafe7684e0802b98262ad2a51d7bfe5ea102e846a59680ff925cca62c2b2240afa66946b18a45d052ae15b4c42c52150aca19919ca6168da8b3d0fee5a14bec3150308005d647400df0992c3fc6965617f91801c006004297a8c4d5d475a07e63364be0ec7eade6984a5a57b08b200f63a945e47f4a3b5970ff002a821a844b1103ec31afe90472be10725f5141118ee5246d94e251cd33a818ad47fbe263c4ff0016116430bee2aee259524bf856d4d556c0d0bd2f4711eadd43ef6c4723fb8052d416b00a2855951c55c3fdc2a68af13239175f21d0805710f82a994772e0e8e135b777714703a1ee38852cd5df171b774b883f43ecaeac73712e82baf6286e95f10b73550cd4db2a54b2c19c075138b4140f840b02c2ff0065bdb1cda1940becb4b55dc41583a2f884d06c2308002cb073919202caf65093fb3b2c9f22be4f3b0b457f2551e5d58508781024347ce60895b58b076abae4e60dfb0217ddea1a6c0704fce04cbe307ee4402dbcc1ca5e619d1772800f2f885a2c4b93683a451ce0df5084a0ae88dc129e2e20754a149e6994115e416a01f914262373a954d2137e54100b4aa7b0e5764b07a5fb398c2d00dfc95d77122106047f195278ac229cba8eef60db2e210dc0010e8d7569d7d6069032adec055ae3c941838161e978e25a6806d8c2a62c2519fa080902f41c8cb18338b1489a921aaa3e4b1601a068e6212d957592d687fe65f90e80140751380511c42fd40f4118dc4a68220d45d7484c67944bb5bbd613fe7752b40f0c5d5d07da8ca145882cb6a8c4152961258ee9e440daef9081dbf30640fcc30537fe51e44f88cddd50230fdca148b78d41aa9b7b2f0594e887346efb8825ff0066688318495eb25ae16632fc803acbe3ca5e05fb5095f24402abc9b88c2687b7842c687590234f7635a1f58dd0b655439f3039f9077b4c07df62a6de511da2f07f825f252b25df3ec08d5b07a2cf62c8b4556bde792e6a7855b156155b467c41ff008ee7e4b420f066050791f278f1941a09c4a95a3ec3506de08269ec95339cdf8818286af92eca4bb8a042faa8d345f5505372b61af704387c81ec0a01298adbe498e27ee4aac8eca397e15a8b22572c553f252a39c2285f280d284075691b2e02960dc2b60a972edb98ed0a7170e0309d443bf66402fb842daf58e687e10403deaf12e40dd7444175f572f0a51d113a16984508d6cc800803ecce4a9c236e251059e026701bd9c38ba818f8a32169455aba87eac82da28a0257c84380f844550ff63d07ea15ca8a1422d561fba8515c8460983ff64e2507d17d82c40babe6550f43b32c295eb516423c82d8586b765c113042c82503629f6546042275716202c5d44ca83af11f88917a23c8f8cb08a7b3391e07d96096008c26d4e705e9b80cb65ddf93e09c4e600cb830a3909c40e00687acf4cae7de0836714f90535fc8085fdc11c21b9181d3958b44bd0e181a5b5f900a0bda6575d4d48912ad4408ff00ec410e8d6328a450db3ec6802f5ec0ac27e19a47c1183543fb200d42ba96117e59b167f6588140108ca1621f2524fccc1c4fe909b11f5982cf48c992f57c412860cc03eb2a12576cd850f194635f6a1880fa73171cfdb9ad6fd21fc085c42aa807b2f96e32e1c542e97610159054615f045bd971d02760805f7e4bf1673d04e13fa046ac697ff0088e476b41ed791ce6fe2169add439201b2a502d88090589a4aa83ea30a4f35c1e24e6985ddf4f48d71608bc16c00085a76c1383eba859a788f6070b90bc41062b4d54b7567e4942042d45d5ec27e1021c0b188b0806ec01ec96b610e77babfc4b877b1c7ea280472d501edc2a3931587e0853400eb1880045a03d1ee027c61b0c8a8f7ccb2f15eff254202812a10a553970845853abb97745caeb5bd96c2a97e9cb8a9af12c014eaee55aece1220d83858748e83c136831ec1912ae21a84f8730c368da5e098240f61ae3770d692f15085d4ed430bff1952a8880a0aa87dfe023f481ef334431ea148ba7317ad2fe3738d4fd4112258e25942cb0bc9dc5d0edf2f3f32cb53d9168d5abec8e2fb8a7d8ec69b1c8e88014019a5329340f37005750ad2c8e8d1c0fa28cbdbc94cdb0ab22cf934283b7fb834e56c2ff000c3800415ff88d3550184a590e8da1f65ead3d5cbb84fdc4c81474c2724b47fa88b10bb36e342277d8f91716919203dbea2c0b797fc862b017d03ffb8b0bccabfdf304112dfdacac4be07f4c4065cbfe9b83c8471dbf3018a1d404a33032c15c2ec1532fab894a1dfc87e220bb48fc97570509f63f32aa9b8e9ab644683cbb6008c7c940f9c0239400cbd65b825e0352f153f172b400ad6192479e094828fe422c66a0dc12d0f7d10db8dcb91d5bf9ae61c37670c54407843155d7351c8e1f262303dc1440788202abea285d1fac7991c34fac838b0f46468f21f6029baf84b36a2acce4300f05aff9253ed7ec7e4600eb16845c0039408747a3fe51cc29080e889804827554304340260319b36935783c951147b72d557e9838496bece176638c408a5ec5ba2b0f1145b5b7e7c81221d32302881c2c65fd2be83f9dce2138aafdc0204be0e40e1fd4ed871708fba5a8ff002716b7c398214d63a2205a7ba501086d775f838852807ca80583e1cf7b176440d503c8b196dce25f451db2cc037de6519000bf0c74d1bc622c2b9199c04d72e15ccdb92e687ae597201acb8e31fe0850b2fa4a8405a2139ca9d1a81cb74f75808fc4421069974a1d88db235bc2221c3736094e1cb595f6b6f2c623c9d108ab53b4a00004a31a316cb188a83eb2cddd135803a86a097910a7fa58130bb94410b6e449b0f4384fb1c1b1dc4ed3eaa6009e0be250687e49f43b80741e197afa6ff30de5841e40b02c28a2ff0097a6262a48e45e331ce4c8ac7f88f7f0949f20d98b702efd030a1d7d409b11e335122769782bd253e5a21748ec48b5787c8c833e347f470420d03c300349f8402b29f270b94b50d5c4db4407b04f845db1bf98a502b84d2038632918bb08a282d54a81525522ae144c2912913dfa89689900b34e2392e93c1da15395e06888f797472cac706072cb0553ba1fc8456af2426c11dbcc66b156040bf096cac863b0f332449942a0424265a8112970043d02ccbac22144bd40c47db0aba4bfcc17043ef44a14df8306d4df672fdbc84c37abf65635c8c157aab96c2e1e0a89403609edf71e25b1a6e04dd3b3897eac695245850cf623510ed9420fc20c148f2217457f9d4bcb18105c72501b06ed7d8c2600b80ba232e51b1899ceff00e2f7e540a4d9b28b7d26cdb58d04232f48ac595dbb86531e5731840e5b18f343e0c6ad79bb8a3d876ae3b0a3d36a0ca4b201c557e621b5cf252ae256ee6b037412906ab9959e21ea64133412e01708a9e8d88a001e88cb6ab9217d9eaae2064785405f20fb04c2210b6fe05d446c53a4ff00712be01cc1c426ec5c82ae02750cc6823a19e150dbfd8b62c453ba952803a18e5fc4c6483b80150f224d095eb1072f0a83d2f9912d2fee3a67fc286302efac55ac37e47800b18c515b5c42200828fd711c76ecb82027d0c205aae19a3497c4ad6474f24566b824c7c48481a7286200fc8f6026e24bcec6d3a114b1e5bea2ba0ae226878a9a42cb23428f33ae3880f1c4d6b7f51af2e722b478e905d41456c0f6317002bac7a4a36da35750910b41ee01301627700814220a8e21004a3b8a04fa451b0f6ee732c7e228bb85893a029ff3145b8e2bff00d895d043b4ff0023204e8541a7d11eae25052a15916d095094b4acc3e476827ad4b8b8f4e2112c2ea38fdcb1f5df281516fe0a80e0abfe2111763c45cd8f59980ff12ca82f9009586af3122003a83293d2e39abf21c483facb5563d965b57e20d83a84d89fb99259f20b8ef9ee2a0571acb5a40fe60eaaa7210f5167bb1bc9c08646a3e5d314db7b88eec0e5b9908bd30eadcdd4144a4e6ee50a85e20fbe685c51b7aea761a13cee733294c97cfc23d06704bb6b676fb2a89e65c57cc76e2a2a5aed5f21549dbdc0eaf8887c6f65ef0116cd9f7995be088b45b303088a65dd89385602dd4a46c1fb28a6f7150b3bb2288d03b851541ec0de4f2a755cc108a7313a84c807269f8604586031fd8dd5955963e3cc069be93b2691358085e79979003cc59c2e0551a986353cff00088f7d240afc3564d368d6d85d501ac812cea20105a2bb97a12ddbac160cf4945193504d5b42728994d1015fe8901a0e79966ea79880aa8d7749b5dcfe10768a7e237f5d80591bc6442070eea05761fb50adb53f61ad005ed543836fc4acb00688e802d869f488d036f226084fc87d89accafa96156574ae3aa0bfa8840aeed2a219e69cabc62856a985dbe476c557d9cc4455579a60f90ab97be901e74d318a71b16026c4629175a321c6cafaa63006a93a9a6a93650e956bc949372fc4a79c34231658017a46f2595b386d1d63bdd2d854fc485cfe61cbfc4fc09d6d0a729fac8a9681fb16b22516d3c48e404daebf911f0db41c46199a040304164d81039a2e5c25d51cca48257d23564d3881081f659c5b3187a12316a61e7c830c6e54a7926a14f5f60c0160a0dff1ff0080c2c300e1a476b5fc940e52144a7f32e7134edae0ad159c4712dbfe90075c8b6d25a47a711b32006be9f652111146fd8260d46409120217880b8c7717013b60490daf08c4c4d87bfb395784adadd168ddafd82b6f70122651d730005fc4cfab16e05d2bbfd8ba08f51684360a77fb12f808b66c4493498ce0037506a2838980ad8ddc6313935ecb4e818c3c3a9d415ddc65d1edc148a2a142dbd7b3a408012a9f90fc0fb12522b27a030a80073540954d04fe4a70bbb46cbb55706262e1dd173c5401b04406aafa8e7a4144c2f62a9902d1b01075ecbae01b8dd2f4428be5b6b06cabe18216baf51a71dcd08bc4a0b57b15563cc3756be455534a8ba0ecb55ac69aee20e3e1536a183c6c268169f8f702dc8bf2549092d31a8e2d5f825d0a97a9651cc7c4ea0b97d85d03af6387d78f08c1d8f510b17f90a5493f1378225652fd209d2b93d2639b1ea298fc51c469bd929d2d7715458d4ab789beb4e92a291a0ed45cb8dc8b862f940be7ff00122db9df1916d1d944a141fc8880184a363611412721664505a9523fb5d8cf59e025e4ac51517e4111512b9fc47170e3d42e6979290d8f5701a2fc30015d81137f0670d57c9ba47a8c1061cae0452d11adf90468dfb07675182a8670b1a142b3842112ca55ca41293c8f8f104e58a8e199e4c6114cd34bf605bae8268b57f89bbce62ff685b575685ea3048038914ab4bb575106b040fbc4bec8bb2ee0a6532c25cf328187b08d890800d07d2e5d4b7f30bc122242bd963af11b2c856d05c11621517d0be1b19c376e58f59573f65f0b0aa6089c42216520294c83d365b0ea00aa3dbe23ad7d8bcc6171b2b3316a1cc41b05e1885ad910d5081a00fbdcb501fa1111aa5414b6b081616ceee1d16b855c676a67fc4aa4a1b6fd83692f54953ea035a31e915435b5d95aa7e10c6312953e471993e450b5ce8215d5d45f486d0a238fcd07ff0069dc51069ff31a1fc91419492c94177d106c7c8aad0e732c16bf70b535dff60df8400d56e22ae51449a36407ea2fc259dacad5fd8063ee243045964fc4780683f90642dc2dd584b8ca7f12d282d800f60b722dccc02e7393c62d02a2a8716d8903c6b0ee5f20451c8fe45714ab1a9c835f230d1e6fb89140f5cb81dadba693900601dbf11baac43982f0045af2fdc2d5a3ad78952abc9dc52b76f012b60179bf2565a2b8b8868d0ea5bcd0f0c721c9c58081fc9d4102a4255952e068f7391b181285934970636c552ca905b0af8dcb254d827539cdf47084090a2cbc8d15216e3980035e041ca79e04cda83e1702be25642c1e1b8cff00502d005deaff0031373cb33fee08152be43a835f196832389e4b0db8872e10c0f8e2a60829f983a815002c5b6210177d44150fb0c1a6cd741f62caf3b8d0f19f626394f3028bdef1365c130a37752d605b80402ce827d8e0f6aac6c6171d38c80046bd2391ba6510ad27514b655b71118b7e4cd98fba890b6fb12ad411a6a0f78ce67207a0c9be8fd8827285ba849062bb443bd98c52aa851d20bc0bf88e485037ac03f79a96db6a19b342d799cca1514390aea32ca2cad886b74941056e459435f6e19b08cab2c3e41c17af1715ee26adff008847264f88cc8874aff300e20036b7d32abd4a961338d960dec7a8a9050e6d9800b3a94d5a57d9bf2d55cf12d367f66a95551a0553f71065b7b80b278e982657758aa2ca3cc58458e6e3b547aec4e262d29a610abeb96095ca32d5f9652d45fec4034c96ed63a8c309ec0d0949eb422e7082af07a8168a23cea791a12b65822d60ff00b4681e5e84f9d38fb0ec0fcc167598413969950f041ae6294e7551a29e4c1dbdf27108c88a9c1450328550fc46a554f50d10bfb183e1dc05416e900b41557134163dcdf147c8ca8abd9ae36df25037269840705e4d345420b695d446055fc97d388a14a1b5ec34149d116e1fe66f0dfd30833611ecc486979f22f033ac014e842f2052dc541cb789dd17ec05d604548056cd82a2896f2b1c2b1b8af269b86e371ce492dcbdc56d1f9968d71f88014f3dc28563b209b01229588b32a42417ea01e388bc425aeae1672b5ecd01aa9447572e1c2350156086e5cd56164116a5b951626bc834c2fce2312c5ac8d81237faa96957f12fddc6402a6eb880afccbeb550ed7dfb089a17cc4bc289b852f701d0f8c180059398f0ea0063a244342caa6250f053020da468452fb08c0201b28f69805af1eb1da2f40c415d6ca06c8ced0096cb896f1966c6947ed3f097c8039f1291470aee55434efc833697ca5f32fa94757099052c4f0be6141d7e539019ec67c953f538062008685e92a2ab5e62e97fa89ad1530b73202d7854a0f5669f1d80591e7a9a184b5d67936f0616ee1a68d966f67328d55a9471c752c59f261cd31cd5e5468008c02c01c955039612d7754f3295a5615436993b848834ac2a2cff00c64164a4e6252f57d4bde6d4416aa7c8839c4b163bf99c024aea5ba5b4771050a902ca57d97a94d1058fe6248e0e6e168e880c2ecca76e1ea226c66d4a4e2dc434282bf310804747495cb945e54770b00b5329c0f72d39ab89ad6f3e203b617b182e383d8802d2b9352e9f5e237a18dcace604a8e8441c97e45a2856f82517446fd8a716ec12b9fcce5673eca0a1b76cc563dc45a9aa798024af99155c106dd751477346fe616e2cc9858d40ae1bee09bc7ea64e73cc411fd8ea8b6d05c2fedc6d96c6c18690fbf529334682d62f680d7100b0d4bc2d50e50b51d59a8dd9be5939a146c12ea7a5416d25585d3351fb10d1112c1a738852a8e4e70ecad1c7700a2e8fb0ac32eba8672a22f6151c1774849ace115168d3749cc22a42dd7503166a274e8d20cd05792d81e1a455c2bfa80095cf734e0405a2fcc29e157e223b37e1f23a6f7c11d0bfe420981cc8352c79515c1fa438234d85a58ae410c35dc400c311b60aee25346112627f215d0a650d349457c7c81f4f791aacb0ebec485ba8ab48ff0023916b0270afea565d370aadb0fc882adf8a4116858be20d5207a59f58a00236724d021855b6d5fd81d207de65c6da88ab92b48378277db8db95bb62288f9b162d17d30140ba8b6807a91c041c5908d7f44120598bd46d2523ef528e87a991802975b100e0d3bb98862b5b9376815399b3705299f2a1a53b97f44f3b81e154ab54f6e005a77633eae21ecec596b3c753006c7b972d6257681c0a9111b5fcc7a598cc53b78a872ad970350a463f50fdb282c5f570a95c15164d1e19296344a07f91ab34051e3d82e8051d4aca9131573dc70b68858b2b29f202b163aaaedda7bfc418f29894bc1a889a8e2b9bf2a0a2819b2740c2b1700b44ab2212cec378aad70174efe65e0e31141ccb22a2c0323f13a5b5cb5f205a91681439db8e06f77fda198950eb7571980080003df26c81dd67cfec720141730600149c383002082aae918c421dade7e25a8a00ccaf51a3280116e3880d90875ca0d0003cd5f9f220b29d70d313356cab4a8e123a0518bd1bdb162ebf30b0939f6c581328e3713b492f871682c9c154f32a009a1a5880e1a4d5bf88aa0394e0ce0d274298d02eab422b41422aa63186f0315dec20b6e968e76eaad23d417b55b1f25ad44a63692b4df405723958aeef26295036b8f8c426475c982aa85f690ea0bbf6265b85e45c034ba8a0d23b6ca400c102c44848d2b6e055b4f6e39e0ba638202b5cc40b4af69b00d53fb00cecbb9802f2f22aa83f84b805d770eda2f292c2d0795d9fb859310c2aabe87997203bad8b06ba3669e4bb6d88a543294e83573204045a1c4b655d8aed2a5dbcaca84a516b5375fdd8954bcbd472c7f5703528cf5dcb480a528eb080a7f46a2aedb9f4a598488616cb5b4e7e652b69ce3650c03ae12dec5c8aae3582ca6cdee5850a536f312523e35060a71a6c186a60580f9e43940e51710974f94a2cb0f9969fa57b2b82f1554d117552e0205aa8df07a65b8702b22c5a4d2d7529aa728b07b5cbf98383698349f5d20b3db84e2e5ecbe5f91881115850a0ff00111693bc0800c12d4b6f7f50c65324d38abf2ba837cb0a5c2f7028254030e6bec702258132aefdee3b4adc0c7f314ed26df0f19cf40260786dc30d19bc0d7ee0d89a8e43ed4670c0ac5a9e0fd41e4811569657f206342d82aa8328d6497d1dcb242037c8a74fb175f92b1a784135f94a4de50eeba94d3e707c2b889053023e3f71310d5a58137ad83eaeb615c3aa8c7f10a6aff24034bf6360ebf446d6f7f71034af60c4ebe45534abee60eedf24b056be4b072263fcdc11f9895573a8a1794cd0be415f3f2ea272aaea287441516a09b7fa836da640d7266a8d1208bbc4a5d954c56719f04269ab71170d54f0acf6516b252ad5bf90e5e997a241568513d10fc1ec577448bad5fc8b5640376f634db0f6652dfe080f5002c79251bf3c94724940f025185b3564022b657129c76f8a9c8abe114000df31bc3e74c2c2d2f838fc455e430ae206d59beaa6b774b281895c53041c70e4bb0bb3c40281700a139b002ab28468503fad840f17ce2303f6ba567e6299692f22df6fb142bfc9148d3f1cc22ebaea730cfc11b0d6fc9564b8f5ff00329853cc67f99688abd02bfcc3d6edae08e82f1ad87fc4292ce3a7fea062fb4ffbc8814e2bff00ba82b7a9c5e1518fea14ca7ed2c560649507f986d5b7d46ad97216dabea7ff00a68a53c9bff750ad7fbe52b0d19ff44b0a899ea2af0fdc1b6cf7ff00cc6b6e3eff00f112bd20b54d79ff00c449fed5c77a0cf23607179178b3f103ef7e401a23f52a766a5683ec4acb9c6fea7059d4b3f20aab60d460125e8ffdcd16e24a4e66b980d9db8b45a5bab8ad6b8868e7b8bade23408d7c9c8e4c7b429d711366d65adbd3db1cb656b4b80ab5d4257fc69fffd9);
INSERT INTO `report_data` (`reportdata_id`, `position_ID`, `report_ID`, `reportdata_date`, `Title`, `reportdata_type`, `reportdata_use`) VALUES
(12, 3, 2, '2018-03-07', 'wow', 'application/pdf', 0x255044462d312e330a332030206f626a0a3c3c2f54797065202f506167650a2f506172656e742031203020520a2f5265736f75726365732032203020520a2f4d65646961426f78205b302030203631322e3030203739322e30305d0a2f436f6e74656e74732034203020523e3e0a656e646f626a0a342030206f626a0a3c3c2f4c656e6774682031343e3e0a73747265616d0a302e323020770a3020470a710a510a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f54797065202f50616765730a2f4b696473205b3320302052205d0a2f436f756e7420310a3e3e0a656e646f626a0a352030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a362030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a372030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a382030206f626a0a3c3c2f42617365466f6e742f48656c7665746963612d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a392030206f626a0a3c3c2f42617365466f6e742f436f75726965722f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31302030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31312030206f626a0a3c3c2f42617365466f6e742f436f75726965722d4f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31322030206f626a0a3c3c2f42617365466f6e742f436f75726965722d426f6c644f626c697175652f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31332030206f626a0a3c3c2f42617365466f6e742f54696d65732d526f6d616e2f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31342030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c642f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31352030206f626a0a3c3c2f42617365466f6e742f54696d65732d4974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a31362030206f626a0a3c3c2f42617365466f6e742f54696d65732d426f6c644974616c69632f547970652f466f6e740a2f456e636f64696e672f57696e416e7369456e636f64696e670a2f537562747970652f54797065313e3e0a656e646f626a0a322030206f626a0a3c3c0a2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0a2f466f6e74203c3c0a2f46312035203020520a2f46322036203020520a2f46332037203020520a2f46342038203020520a2f46352039203020520a2f4636203130203020520a2f4637203131203020520a2f4638203132203020520a2f4639203133203020520a2f463130203134203020520a2f463131203135203020520a2f463132203136203020520a3e3e0a2f584f626a656374203c3c0a3e3e0a3e3e0a656e646f626a0a31372030206f626a0a3c3c0a2f50726f647563657220286a7350444620312e302e3237322d646562756720323031342d30392d32395431353a30393a646965676f6372290a2f4372656174696f6e446174652028443a32303138303330353031333830312b303827303027290a3e3e0a656e646f626a0a31382030206f626a0a3c3c0a2f54797065202f436174616c6f670a2f50616765732031203020520a2f4f70656e416374696f6e205b3320302052202f46697448206e756c6c5d0a2f506167654c61796f7574202f4f6e65436f6c756d6e0a3e3e0a656e646f626a0a787265660a302031390a303030303030303030302036353533352066200a30303030303030313739203030303030206e200a30303030303031333738203030303030206e200a30303030303030303039203030303030206e200a30303030303030313137203030303030206e200a30303030303030323336203030303030206e200a30303030303030333236203030303030206e200a30303030303030343231203030303030206e200a30303030303030353139203030303030206e200a30303030303030363231203030303030206e200a30303030303030373039203030303030206e200a30303030303030383033203030303030206e200a30303030303030393030203030303030206e200a30303030303031303031203030303030206e200a30303030303031303934203030303030206e200a30303030303031313836203030303030206e200a30303030303031323830203030303030206e200a30303030303031363032203030303030206e200a30303030303031373231203030303030206e200a747261696c65720a3c3c0a2f53697a652031390a2f526f6f74203138203020520a2f496e666f203137203020520a3e3e0a7374617274787265660a313832350a2525454f46),
(13, 3, 2, '2018-03-16', 'accoplishment', 'application/pdf', 0x255044462d312e330a332030206f626a0a3c3c2f54797065202f506167650a2f506172656e742031203020520a2f5265736f75726365732032203020520a2f436f6e74656e74732034203020523e3e0a656e646f626a0a342030206f626a0a3c3c2f46696c746572202f466c6174654465636f6465202f4c656e677468203333323e3e0a73747265616d0a789c75915d6f82301486effd15efe5962c1d6d81964b24a02c2204f062974c70d429104597fdfbf1111635592fdaa439ef73dae730bccd3462087ccfe6295e3d0aca88a621ddc14dc72bf678c5744a2883901aa112698ea7b8682e1f07b545bd435b16884a75504da3aae2fc8c743fe54c4e288730cd01d7e5a2537d55d5b6e8734e76556d715b6e70222c088312c987f2e052a9ad6ab2836a7ffa885fe559f579d74123ba80e09458d61099dbb1bd5ed8ef8836abf0a6f2d5e38fdfa292115dc29456cfe8c3a1e7f98e8bd043ba749174a0c566ed770726ec4464927003a6e89e4a6170490c09ada79f0a24f8c7231506d14d989c113136b41d270ca2959f2c03779d2276a3304ee18531023b76962f609df03b452341d3893e2a72eae351b56dd129ad9034f5a9fd9b40d7791832d5f57ee046ef6a94847e9df3ecebbccfcbfb3ddf97d904f80544258d000a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f54797065202f50616765730a2f4b696473205b3320302052205d0a2f436f756e7420310a2f4d65646961426f78205b302030203539352e3238203834312e38395d0a3e3e0a656e646f626a0a352030206f626a0a3c3c2f46696c746572202f466c6174654465636f6465202f4c656e677468203336343e3e0a73747265616d0a789c5d52cb6e833010bcf3153ea687084c1a82258444499038f4a1d27e008125452a061972e0efbbbb76d2aa4858e3b16776566b3f2f8fa5ee17e1bf99b1a960115daf5b03f378350d88335c7aedc950b47db3b81dafcd504f9e8fe26a9d17184add8d5e92f8ef78362f66159bac1dcff0e0f9afa605d3eb8bd87ce615eeabeb347dc3007a118197a6a2850e7d9eebe9a51e40f82cdb962d9ef7cbba45cdef8d8f750211f25eda2ccdd8c23cd50d985a5fc04b8220154951a41ee8f6df596415e7eeefd543814b805fea257184383ee0120621114a2256211332266247c4a325722248a2ac44ee90c85c7d32454c316e05a5ba0568be6a83e5029665e413bb2219612a1248ac8bd8d53a11dedb6411e198ee843963c5fc8e5bc8581b317eb2bc229c33bf67cf13e3c391f23b4fe295f53c725fec292def3c2561e7493995f3a4b695f3a49caab03876dd73b7340e7a30f73937576370c4fcaa78b634d55ec3fde14de3442afa7f007f0db6a90a656e6473747265616d0a656e646f626a0a362030206f626a0a3c3c2f54797065202f466f6e740a2f42617365466f6e74202f54696d65732d526f6d616e0a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f546f556e69636f64652035203020520a3e3e0a656e646f626a0a372030206f626a0a3c3c2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963610a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f546f556e69636f64652035203020520a3e3e0a656e646f626a0a382030206f626a0a3c3c2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963612d426f6c640a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f546f556e69636f64652035203020520a3e3e0a656e646f626a0a322030206f626a0a3c3c0a2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0a2f466f6e74203c3c0a2f46312036203020520a2f46322037203020520a2f46332038203020520a3e3e0a2f584f626a656374203c3c0a3e3e0a3e3e0a656e646f626a0a392030206f626a0a3c3c0a2f50726f647563657220284650444620312e3831290a2f4372656174696f6e446174652028443a3230313830333136303935373034290a3e3e0a656e646f626a0a31302030206f626a0a3c3c0a2f54797065202f436174616c6f670a2f50616765732031203020520a3e3e0a656e646f626a0a787265660a302031310a303030303030303030302036353533352066200a30303030303030343839203030303030206e200a30303030303031333536203030303030206e200a30303030303030303039203030303030206e200a30303030303030303837203030303030206e200a30303030303030353736203030303030206e200a30303030303031303130203030303030206e200a30303030303031313235203030303030206e200a30303030303031323338203030303030206e200a30303030303031343830203030303030206e200a30303030303031353536203030303030206e200a747261696c65720a3c3c0a2f53697a652031310a2f526f6f74203130203020520a2f496e666f2039203020520a3e3e0a7374617274787265660a313630360a2525454f460a);

-- --------------------------------------------------------

--
-- Table structure for table `report_list`
--

CREATE TABLE `report_list` (
  `report_ID` int(20) NOT NULL,
  `position_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_list`
--

INSERT INTO `report_list` (`report_ID`, `position_ID`) VALUES
(12, 3),
(7, 3),
(14, 3),
(2, 3),
(2, 5),
(2, 5),
(15, 3),
(15, 9),
(15, 12),
(15, 11),
(15, 15),
(15, 14),
(15, 13),
(2, 9),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `request_forms`
--

CREATE TABLE `request_forms` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `clearance_form` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_forms`
--

INSERT INTO `request_forms` (`id`, `first_name`, `last_name`, `date_of_birth`, `contact_number`, `clearance_form`, `email`, `created_at`) VALUES
(1, 'Sean Charles', 'Pugosa', '2024-10-29', '639533180925', 'Barangay Clearance', 'seancvpugosa@gmail.com', '2024-10-29 10:19:59'),
(2, 'Sean Charles', 'Pugosa', '2024-10-29', '639533180925', 'Barangay Clearance', 'seancvpugosa@gmail.com', '2024-10-29 10:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `resident_address`
--

CREATE TABLE `resident_address` (
  `address_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `address_Unit_Room_Floor_num` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address building room/floor',
  `address_BuildingName` varchar(50) DEFAULT NULL COMMENT 'residence address  building name',
  `address_Lot_No` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address  lot no',
  `address_Block_No` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address block no',
  `address_Phase_No` varchar(5) DEFAULT NULL COMMENT 'residence address phase no/letter',
  `address_House_No` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address  house no',
  `address_Street_Name` varchar(100) DEFAULT NULL COMMENT 'residence address strees name',
  `address_Subdivision` varchar(100) DEFAULT NULL COMMENT 'residence address subdivision name',
  `country_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address country_ID foreign key',
  `region_ID` int(11) UNSIGNED DEFAULT NULL,
  `province_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address province_ID foreign key',
  `citymun_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address cities_ID foreign key',
  `brgy_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address barangay_ID foreign key',
  `purok_ID` int(11) UNSIGNED DEFAULT NULL,
  `addressType_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'residence address Type_ID foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_address`
--

INSERT INTO `resident_address` (`address_ID`, `res_ID`, `address_Unit_Room_Floor_num`, `address_BuildingName`, `address_Lot_No`, `address_Block_No`, `address_Phase_No`, `address_House_No`, `address_Street_Name`, `address_Subdivision`, `country_ID`, `region_ID`, `province_ID`, `citymun_ID`, `brgy_ID`, `purok_ID`, `addressType_ID`) VALUES
(1, 1, 1, '', 1, 0, '0', 576, 'Saint Joseph', 'NA', 169, 1, NULL, NULL, NULL, 1, 1),
(2, 2, 1, '', 1, 1, '0', 1, '1', '1', 169, 1, NULL, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `resident_contact`
--

CREATE TABLE `resident_contact` (
  `contact_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `res_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'resident foreign key of res_ID',
  `country_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'foreign key of country_id  to get phone code',
  `network_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'globe/smart etc net',
  `contact_telnum` varchar(11) DEFAULT NULL COMMENT 'phone/tel num',
  `contactType_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'type of number recorded'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_contact`
--

INSERT INTO `resident_contact` (`contact_ID`, `res_ID`, `country_ID`, `network_ID`, `contact_telnum`, `contactType_ID`) VALUES
(1, 1, 169, NULL, '09169158798', 1),
(2, 2, 169, NULL, '09090909332', 1),
(3, 3, 169, NULL, '09090909332', 1),
(4, 4, 169, NULL, '09090909332', 1),
(5, 5, 169, NULL, '09090909332', 1),
(6, 6, 169, NULL, '09090909332', 1),
(7, 7, 169, NULL, '09090909332', 1),
(8, 8, 169, NULL, '09090909332', 1),
(9, 9, 169, NULL, '09090909332', 2),
(10, 10, 169, NULL, '09090909332', 1),
(11, 11, 169, NULL, '09090909332', 1),
(12, 12, 169, NULL, '09090909332', 2),
(13, 14, 169, NULL, '1', 1),
(14, 21, 169, NULL, '123', 3),
(15, 22, 169, NULL, '123', 3),
(16, 23, 169, NULL, '123', 3),
(17, 24, 169, NULL, '123', 3),
(18, 25, 169, NULL, '123', 3),
(19, 26, 169, NULL, '123', 3),
(20, 27, 169, NULL, '123', 3),
(21, 28, 169, NULL, '123', 3),
(22, 29, 169, NULL, '123', 3),
(23, 30, 169, NULL, '123', 3),
(24, 31, 169, NULL, '123', 3),
(25, 32, 169, NULL, '123', 3),
(26, 33, 169, NULL, '123', 3),
(27, 1, 169, NULL, '63', 1),
(28, 2, 169, NULL, '63', 1),
(29, 1, 169, NULL, '63953318092', 1),
(30, 2, 169, NULL, '63953318092', 1),
(31, 1, 169, NULL, '63953318092', 1),
(32, 2, 169, NULL, '63953318092', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resident_death`
--

CREATE TABLE `resident_death` (
  `death_ID` int(11) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `death_Cost` varchar(250) DEFAULT NULL,
  `death_Date` date DEFAULT NULL,
  `death_Date_Record` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_detail`
--

CREATE TABLE `resident_detail` (
  `res_ID` int(11) UNSIGNED NOT NULL,
  `res_Img` longblob DEFAULT NULL,
  `res_fName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `res_mName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `res_lName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `position_ID` int(11) UNSIGNED DEFAULT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT NULL,
  `res_Bday` date DEFAULT NULL,
  `marital_ID` int(11) UNSIGNED DEFAULT NULL,
  `country_ID` int(11) UNSIGNED DEFAULT NULL,
  `gender_ID` int(11) UNSIGNED DEFAULT NULL,
  `religion_ID` int(11) UNSIGNED DEFAULT NULL,
  `occupation_ID` int(11) DEFAULT 0,
  `occuStat_ID` int(11) UNSIGNED DEFAULT NULL,
  `res_Date_Record` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `occupant_ID` int(11) UNSIGNED DEFAULT NULL,
  `res_Height` int(11) DEFAULT 0,
  `res_weight` int(11) DEFAULT 0,
  `Status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_detail`
--

INSERT INTO `resident_detail` (`res_ID`, `res_Img`, `res_fName`, `res_mName`, `res_lName`, `position_ID`, `suffix_ID`, `res_Bday`, `marital_ID`, `country_ID`, `gender_ID`, `religion_ID`, `occupation_ID`, `occuStat_ID`, `res_Date_Record`, `occupant_ID`, `res_Height`, `res_weight`, `Status`) VALUES
(1, 0x89504e470d0a1a0a0000000d4948445200000200000002000806000000f478d4fa0000000473424954080808087c086488000000097048597300000ec400000ec401952b0e1b0000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a0000200049444154789cecdd779854e5f5c0f1ef9dd99ded858565e91d517a5740b021620b8a2d76c5a8f9c55e624dac892d96a85104a446c5820a76541090221d6952a4b3cbb2bdefcc4eb9bf3f2e105484dd7bdf993be57c9e671f0ce19e7b8065eeb96f39af861022d234035a1ef86a7bd87f3706128174200548003281a4033f5f0bb80f8b530e04001f500c141df663c1811f8b803c601b5016dcdf9610229434bb131042fcae36402fa0e7811f7b613cf0136ccaa704a310d8feab1f7f044a6dca49086192140042848754e014e074a02fc6c3be91ad1935cc4e6035b0eac08fab31460e8410614a0a0021ec110f9c049c71e0eb2420ced68cd4cb075600f38179184581dfce84841042083b240217011f0295801e635f65c0a7c03d403fc069ed8f53082184085f4e60383019e30168f743389cbeca800f80ab88ace90e218410e277b5075ec09807b7fb411b095f5ee05be0368c858e4208214444e90fbc87b1b5ceee876a247fad021e013a34ec8f5f082184081d0d6398ff53ec7f7046e3d70ae02620adbe7f21420821443069c085c07aec7f48c6c25735300d63d784a31e7f3f4208218472438125d8ff508cd5af5dc01340f363fd45092184102a34c3780b0d60ff4350bec003bc8fd1474108218450ce01dc8ad13fdfee879e7c1df96b1e300a991e104208a148478c6e76763fe0e4ab7e5f5b31b613a61ee92f53082184a88f314015f63fd4e4abe15f05185d07937ff3b72a8490b30084f81d69c058e04abb13f93587c3414a4a0aa9a9a9a4a4a490989848525212494949389d4ee2e3e3d1340d97cb85c3e1202e2e0ea7d389d3e9241008e0f3f9000efdb7d7eba5aeae0e8fc773e8c7dada5a6a6a6aa8a9a9a1b6b616b7db7d8cacc2da3ee069603cc69a0121045200087124c701338113ec4e24252585acac2c3233330f7da5a4a4a069a1fda7ebf7fba9a8a8a0b2b2928a8a8a435fe5e5e504028190e662c11ee01f186d99bd36e72284eda40010e2974602d3814c3b6e9e9e9e4eb366cdc8cece263b3b9ba4a4243bd2a8b7402040797939252525949696525a5a4a494949b81705db81c780b7317673081193a40010e27f6e025e2784a7d4391c0e72727268d9b225cd9b37273535f2d7adf9fd7e8a8b8b292828a0a8a888a2a222bcdeb07ce15e8ab15870b9dd89086107290084303c023c1eaa9b656767d3b66d5bdab46943424242a86e6b8b402040515111f9f9f9ecdbb78fd2d252745db73bad8302c024e021a0d0e65c840829290084304eedbb3bd83771b95cb46fdf9e4e9d3a919e9e1eecdb852d8fc7435e5e1e7bf7ee65dfbe7df8fd7ebb5302e368e24730167efa6cce458890900240c4ba1781bb827983949414ba76ed4afbf6ed713a4336bb10117c3e1ffbf6ed63cf9e3de4e6e61edaa160a37518d302f3ed4e448860930240c4b26781fb82153c3535956eddbad1ae5d3b1c0e694e772c3e9f8f3d7bf6b063c70e0a0a0aec9c26d08171c05f317a40081195a40010b1ea2e8cb77fe55c2e17ddbb77a773e7cec77cf03b1c0e9c4e270e87e3d0d6bec3ff1b8c39745dd7d1340d9fcf87aeebf8fdfe709a4757aea6a6861d3b76b063c70e2a2b2bed4a6307703d321a20a29414002296a4015d318e937d12c53de3354da353a74ef4e8d183848404e2e2e270b95cc4c7c7131f1f7fe8bf0f6fcc63653f7f2010c0eff7e3f7fbf1f97c879afa1cfcd1e3f11c2a1822597e7e3e5bb66c212f2fcf8edf4b0078156391604da86f2e4430490120a29503e80d9c8671746f4fa01d41fa9e4f4b4be3f4d34fa75dbb762425251d2a00eca6ebfaa162a0aeae0eb7db8dc7e3c1e3f1445c61505555c5d6ad5bd9be7d3b757575a1befd16e03a8c23a085880a5200886892058c06ce0386018d4271d301030670f6d967131f1f1f8adb29a1eb3a6eb71bb7db4d6d6d2db5b5b5d4d5d5454451e0f3f9d8b163079b366da2aa2aa453f47ee0398cdd02b6af5614c22a290044a44b06ce05ae014600ae50dd3821218151a346d1a3478f50dd32a8fc7effa1feff07cf000867baaeb367cf1ed6ad5b47454545286fbd00f823c6190342442c290044a4ea84b190ef5a2025d4376fdab429975f7e394d9a3409f5ad43c6eff7535d5d4d555515d5d5d5e1dacd0f5dd7d9b56b171b366c086521b00fb80cf83e5437144235290044a43919a369cf28142fe2abaf76edda71c51557847d9f7ed5dc6e3755555554545484e51a025dd7d9bd7b376bd7ae0dd5d4800f780063374978fd6108510f52008848d107e383f6543b93e8debd3b175d7451582cf0b393d7eba5aaaa8af2f2726a6ac26b717c201060cb962d6cd8b021548b053fc2d82e18d2790821ac92024084bb661847b85e8f4d6ffc07f5ead58b8b2eba28e447f1863bafd74b797939151515b8dd6ebbd339c4e3f1b061c306b66edd1a8ad309b7602c3edd1aec1b09a18a7c928970150fdc0b3c88b17fdf56ddbb77e7924b2e918e7ec7e0f178282f2fa7acac2c1cdafa02505959c99a356bd8bb776fb06f5508fc01f821d83712420529004438ea014cc518f6b75d972e5db8fcf2cba58f7f03e8ba4e656525a5a5a5545757db9d0e00b9b9b9ac58b122d8531635c095c0cc60de440815e4134d84130db813f8006865732e00e4e4e470f5d55747d41eff70a0691a0909096466669291910160fbc2c1f4f4743a76ec88cfe7a3a4a42458b789072e018a81e5c1ba89102a480120c24506f016c6d6beb0f8be4c494961cc9831a4a6a6da9d4a44733a9da4a6a692959585cbe5a2aeaeceb623809d4e272d5ab4a079f3e6141717076bcd82033807637beab7c1b881102a84c507ad88791d80b918ddfbc282cbe5e29a6bae212727c7ee54a286a66924262692959545424202757575b6ad13484e4ea663c78e389d4e0a0b0b8335323104e80c7c8271a6801061450a0061b721c01ca0addd891c949e9ece15575c419b366dec4e256a252424d0a851239293936d2b04344da369d3a6b468d182828282606d19ec0174013e467a058830238b00859dce063e04c2a2a34e4646067dfbf665d0a04131d7e4c76e555555141616dad67ed8e7f3b162c50a76ecd811ac5bbc83d1aeda9eb90f218e400a0061978b81b70961ef7e0087c341d3a64d69debc39595959646666d2a851231a376e2c73fd363bb873a0b0b0108fc7634b0ebb76ed62f9f2e5c16a7bfc5f8c1305653a4084052900841d46013380a0b7d3733a9db46ad58a4e9d3ad1b163479a376f1ef35dfcc29daeeb94979753585868cbf903d5d5d52c5ab488e2e2e260849f02dc801401220c48012042ed0ce03320315837d0348dd6ad5bd3bd7b777af6ec494a4ac8cf0a120a0402014a4b4b292c2c0c4527bfdfdc7bf9f2e56cdfbe3d18e127037f428a00613329004428f5c1384a352863ed09090987e6f01b356a148c5b081bf87c3e0a0a0a282b2b0bf9bd376ddac49a356b82b14be0058c4e9742d8460a00112a2d80a504a1c18fcbe562c890210c1e3c98c4c4a00d2c089b555757b36fdfbe501df073c8be7dfb58b4685130a623ee045e561d5488fa920240844222c69bff009541354da37ffffe9c7efae9b2802f46e8ba4e49490905050521ed2a585151c182050ba8acac54193680d135f023954185a82f290044288c05feac3260767636175c7081ecd58f511e8f87bcbcbc906e1bacabab63debc79aa1707d602a7206d83850da40010c17625468b5f654e3cf144468e1c29abf9639caeeb14171753545414b245825eaf97efbfff9efdfbf7ab0cbb1763742c5f6550218e450a00114c1d801f51b4e8cfe57271c10517d0a3470f15e14494f0783ce4e6e606abafff6ff8fd7e162d5a446e6eaecab08b80d381d02e7010314d5a018b607160cc6d1ea722585a5a1ad75d771d9d3a7552114e4491b8b838323333d1753d2453020e8783d6ad5b535555457979b9aab06d801c8c2db2428484140022586e47d1bc7f76763663c68c213b3b5b45381185344d23353595a4a424aaabab833e25a0691aad5ab5c2ed76ab3c5ab81fb00558af2aa01047230580088656186fff96dbfc3669d2843163c61c3a535e88a371b95c64646450535313f40386344da365cb96d4d4d4505a5aaa2aec5918ff7682d2865088c3490120826122d0db6a90acac2c6eb8e106d2d2d214a4246285c3e1383425108a75012d5bb6a4b4b454d51641173008988a1c1c24824c0a00a1da70e019ab41929393b9fefaeba5a39f30e5e09480cbe5a2baba3aa83d030e4e07141616525d5dad22640b8c7332e6a80826c4ef910240a8e40066024dad04898b8be3eaabafa6458b166ab212312b313191d4d454aaaaaa82ba2ec0e170d0aa552bf6eddba76ad46110f035c616412182c261770222aa5c0574b71a64e4c891b46ddb56413a42184540bb76ed82de26dae57271da69a7a99ab272629c1c98a422981047222300421517c611bf96c6ecbb77efce59679da52623210e703a9d646464e0f178827a96405c5c1c393939ecd8b143c58843132001f8c67a6642fc968c0008556e00da5b09909e9ecea851a314a523c42f1d1ca6cfcccc0cea7d32323238f1c4135585bb13e8a92a981087931100a18213781bc8b212e4d24b2f252727474d46421cc1c1c581c16e1a94919181cfe7a3a8a8c86a2807467f804940e84e3f1231410a00a1c2e5c08d5602f4eedd9ba143872a4a4788df77b008d0344dd5aafd236ad6ac190505052aeed112d803acb69e9510ff235300c22a0db8cf4a8084840499f71721d7a44993a08e38699ac6902143484a52b28eef29401a6208a5a40010560d037a590970da69a7919aaae4bc20211aa471e3c6412d02121313193264089a66f9dcb5a6582cb485f8352900845596fafda7a5a5a95c3025448305bb08c8cecea66bd7ae2a42dd03b45611480890024058d314186d25c0d0a143898b8b53948e10e6346edc38a8874d75efde5dc5ee8324e05105e90801480120acb90e0b07fea4a6a6d2bf7f7f75d90861417676368d1b370e4a6c87c3c1a04183544c055c83c5edb6421c240580b0e26a2b170f1e3c98f8f87855b90861594e4e4ed00e9fcacccca44b972e56c3c4030f2848470829008469bdb0d0f6372929898103072a4c4708355ab66ca96ae5fe6ff4ecd953c582d7eb8176d6b311b14e0a0061d6e5562e1e306000090909aa7211421987c3419b366d82323ae5743ae9dddbf249d9f1181d0285b0440a00618686850240d334faf6edab301d21d4723a9db469d3068743fd4764ebd6ad552c38bc1e4857908e886152000833fa006dcc5edcb66ddba02db61242958484045ab66ca962e1de6ff4e9d3c76a8874608c8254440c93024098719e958be5ed5f448ab4b4b4a014ab8d1b37a64d1bd335f441b7219fe1c202f9e61166fcc1ec852e974b5553142142223b3b9b949414e571bb77ef6e7574a1037086a274440c92024034540bc0f42b7cf7eedd65f19f88289aa6d1a2450b9c4eb567a7656464d0bab5e5c67e320d204c93024034d4708c4580a6c8dbbf8844f1f1f1346fde5c79dc6eddba590d7101d048412a22064901201aea74b317c6c7c7d3a1430795b9081132e9e9e9646464288d99999949b366cdac8448042e53948e8831520088863ad5ec851d3a7490ce7f22a2356fde5cf9f7f071c71d6735c4252af210b1470a00d1109d80b6662f56f0412784ad1c0e87d537f6df68d1a285d5f6c3a7601ccc2544834801201ae2142b172be8832e84edd2d2d2944e05689a66756acc89b11640880691024034c489662fccc9c9513e7f2a845d72727294ee0a68d7ae9dd52d8117aaca45c40e29004443983ebda75dbb760ad310c25e717171346daa6ed43d3939999c9c1c2b214e0182738291885a520088fa4a064cef5952b0df5988b0929999496262a2b278168be42460889a4c44ac900240d4573f20ceecc50ada9e0a1156344d5371a8cf210ace1d18a12a17111ba40010f565faf4929494141a35925e2522faa4a5a5296b13ec72b9ac4e2b98eed12162931400a2beba9bbd50defe4534b33877ff0b2d5bb6b472794f8ca93a21ea450a00515fa60b0099ff17d12c3131d1ea3efe432cf618880706284944c4042900447d6880e926fec1e8a12e443869d2a48992381919195617160e5292888809520088fa680d98dec4af72a19410e128292949d95a008beb004c9fd429628f1400a23e8e377b61424202e9e9e92a7311222c356edc58491c8b05b3e9a93a117ba40010f561ba4f6993264dac6e6d122222a4a4a428e90b6071c74c6720c172122226480120eaa3bdd90b65f85fc40a4dd3946c776dd4a89195a2390e0b237622b6480120eac3f40880ca76a94284bbf4f4741c0e6b1fab71717156771574b294808819520088fa303d02a06a5e548848e0743a95ac79b118a39de504444c900240d487e902404e0014b1263333d3728cd4d4542b97b7b59c808809a67bbb8b9891086499bd381a0a00bfdf4f5d5d1d6eb79bbaba3afc7ebfdd29fd82a66987169f252626fee27f8bd04b4a4a223e3e1eafd76b3a86c5298076562e16b1430a00712ca65b93c5c5c529db1b1d0a5eaf979d3b77929f9f4f61612105050514161652575767776a0de67038484d4d253d3d9db4b434d2d3d3494f4f273b3b9b9c9c1cab0bcdc451689a467a7a3ac5c5c5a66358fc77a3ae37b1886a5200886331ddc62f3d3d3dec1f325555556cdcb891cd9b37b363c70e4b6f6de1241008505151414545c511ff7f97cb45767636cd9a35a36ddbb6b46bd74e0e6c52282d2dcd52016071044716de887a9102401c8be91180701efedfbf7f3f8b172f66eddab5f87c3ebbd309b9baba3a727373c9cdcd65e5ca9580f1f7d5be7d7b3a74e840972e5d484e967365cc4a4e4e262e2ecef4f796c502c0f4949d882d52008863b13402106ecacacaf8e28b2fd8b46913baaedb9d4e58292f2f67cd9a35ac59b30687c341bb76ede8dab52b279c704258fe5d86bbd4d454cacaca4c5d9b9060a9974f06e004c26bb18a083b5200886331ddc9279cde20fd7e3f8b172fe6bbefbe8b9a61fe600a04026cdfbe9deddbb7f3f9e79fd3a14307faf7efcf09279c80d3e9b43bbd8860a50070381c389d4eb30b4e1d40125065eae622664801208ec5f49ea6a4a424957998565d5dcdf4e9d3d9b56b97dda944245dd7d9b66d1bdbb66d232525853e7dfa3060c000b2b264a4f968929393d134cdf448938502008c76c0520088a39202401c8be902201c4600f2f3f379fbedb74dbf89895faaaeae66e1c2852c5ab488e38e3b8ed34e3b8d962d5bda9d56588a8b8bc3e572e1f1784c5d6fb1a3a0cbcac522364801208ec5f44a3ebbf7a2e7e6e63279f264d31fc0e2f7e9bacee6cd9bd9b2650b9d3a75e2d4534fa54d9b3676a71576929393ed2a00e44020714c5200886331bd37ccce1180fdfbf7336dda3479f80799aeeb6cddba95ad5bb7d2b16347ce3efb6c7272641bfa412929299496969abad66201205d5ec531c937893816d3cbbfed5a03505959c9d4a953a9a9a9b1e5feb16adbb66dbcfefaeb7cfae9a7545757db9d4e58b07b144c88a39102401c8be99ea42e57e8a7210381003366cca0b2b232e4f716c69fffb265cb78f9e59759be7c79cc6fb58c8f8fb77c3aa010c122df99e2584ccf25c6c7c7abcca35ee6cf9fcff6eddb437e5ff14bb5b5b57cf2c9274c983081fcfc7cbbd3b18da66956f7f40b113452008863313d86191717da2526050505cc9f3f3fa4f71447b767cf1ec68e1dcb9c3973c2ee10a550910240842b2900c4b1982e00423d02f0f9e79fc7ec43269c050201e6cd9bc7d8b163d9b76f9fdde9849c1400225cc92e00712ca63fbd42d9316efdfaf5411dfa6f9a954e466a32e9a9e1d1dce870baae5356692c782cada8a6c6edc153177ee71becdfbf9ff1e3c7337cf870060f1e1cf60745a962c7549810f5210580381a0d930d45344d0bd91480aeeb7cf7dd77cae2b9e2e338f3a4ee9c7b4a1f4eead991e3dbb5203121b23ec40b4b2bc92f2a23b7a094bdfb4bd8b82d97f53fef61ddd6bdec2f2eb72d2f9fcfc7575f7dc5ce9d3b193d7a74d8748b0c26290044b89202401c4d3c4611d0600e8723646f781b376ea4a0a0c0729c38a793bf5c7606f78d398f16d9917d346e76a334b21ba5d1a373ebdffc7ffb8bcb59b07233dfafdac4bce53fb1615b6ec857eb6fdab489d75e7b8dcb2ebb8cd6ad7f9b633409f55a1821ea4bbe334550847278f7fbefbfb71ca3554e16effdeb3606f5eaa420a3f096d338834b460ce492110301d85754c6ccb92bf978ce72e62ddf842f44eb28cacbcb99387122e79c730e03070e0cc93ded2005800857f29d298222546f9407cfb4b7a26df326cc9df810ed5b9a3ef830a2356f92c9ff5d7a06ff77e919949457f1ee573f30e1c3eff871f3eea0dfdbeff7f3e9a79f929797c779e79d17950fcb83d3613e5ff8adcb10b14d76018888b662c50a4bd72727ba98f9f25d31fbf0ffb5ac8c54fe72d97056bfff4f16fff751aefdc3505cf1c17f28af5cb9924993265155159d07d8c911ca221c4901208e26acdbb879bd5ed6ad5b6729c63f6ebb845e5de4109b2339a96727263f79135b3f7b9edbaf18417262703b3beed9b38771e3c651585818d4fbd82156763c88c822058088585bb76eb574d84f8fceadb9ed8a110a338a4ead9b35e6dff75fcdf62f5fe2b6cb47101f17bcb7d9b2b232264c98c0ce9d3b83760f3b480120c2911400e268c27a0460c3860d96aefffbcd17e0943eedf5d6342b9d971fb89af51f3fc3e833fa07ed3eb5b5b54c9d3a95b56bd706ed1ea12605800847f2e9278e2660f6c2602f020c04026cdebcd9f4f56d9a3766f419031466143b3ab769c68c17efe0eb710fd0a94d708efef5f97ccc983183050b1604257ea8c98140221cc977a5389a00264701028140508b80bd7bf75a1afebfe2ecc1381cf25666c5f093baf1e38ca778f8c651415928a8eb3adf7cf30db366cd2210305d8b8605190110e1480a001191b66ddb66e9faabce1fa22893d89694e0e2c95b2f66c95b8fd1ad63cba0dc63c58a154c9f3e1dafd71b94f842c42a29004444b2d2f7bf5fd7f674ed109c8755acea737c5b964f7f92fbc79c179491954d9b36316dda34dc6eb7f2d842c42a290044c4a9abab63cf9e3da6afbf30880bd8625962423c4fdf7119b35eb99b46e929cae3efdcb993c99327535d5dad3cb610b1480a00117176eedc69e9d8dfe1277553988df8b57387f666f5fbffa47fb7f6ca63e7e5e5316edc384a4b4b95c71622d6445fdf4d11f5acec11cf4c4ba15faf6ee08cf0da573fb0284ed70f7cf90f7cd99bd6416d9a3766dea4bf71d3e31379e78bc54a639796963271e244aebdf65ab2b3a583a3106649012022cedebd7b4d5f7bdac97d896bd454613661261080801f025ef0fbd0fd5ef0f9c05f67140a21949ce8e2ada7ff8f01dd3b70df8bd3f1fad41d3274f020a1abafbe9a962d653d87106644f86b908835814080bcbc3cd3d79f71723f85d984218703e2e2c1950c49e968a98dd13273d01ab742cb6c86969a058929e00cdd19f5775c7916df4e78902699694ae35657573379f26476ecd8a134ae10b1420a0011510a0b0b2dedff1f76522f85d944120de25c90986a14058d9aa3356a8196da08e29320c8fbd487f6edc2a2ff3ea2bc7190c7e361dab4696cdab449695c216281140022a25819fe4f4b4da66be776ea928974ce38484c43cbc846cb6a8596de045c4910a45aa0739b66fcf0d6639cdce738a5717d3e1fd3a74f67d5aa554ae30a11eda4001011c54a0130a0d7f138237df15fb0681ab892d1d2b3d11ab5444bc90487fa437fb23252f97adc035c3ae244a5710381003367ce64f162b50b0e858866f26928224a6e6eaee96b07f63941612651cce134d60f64b5404b6b0271094ac32726c4f3f6b37fe1963f0e571a57d775befcf24be6cc9913f4b32884880652008888515757c7fefdfb4d5f7fa214000da44142b2b188302307e2139545763a1cbcfae0b53c75c7a5cafbe4cf9b378f99336746fcf90142049b14002262e4e5e559fa509711000be213d0329aa265343516132af2c098f399fce44dc439d54e37ac5ab58a69d3a6595a302a44b4930240440c2bed7fdbb4cca1454e1385d9c4a8f844633b617a1350f4d0bee6fc93f9e085db484c50bb3571dbb66d4c9e3c99aaaa2aa57185881652008888616501a00cff2be64a46cb6c01c9e9a8d83630eab47ecc7cf92e5292d4ae37c8cdcd65c28409141414288d2b4434900240440c2b05800cff0781a6a12567a2356aa6645a60c4a01e7c3dee01e50709959494307efc787efae927a5718588745200888850525242454585e9eb4fecd3556136e2179cf1c642c1944cac8e060cead58979931ea679934c35b91de0f178983e7d3a73e7ce951d02421c2005808808dbb76f377d6d5c9c93be3dd4369f11bfa6195b0733732cb719eed1b9350ba7a9ef1aa8eb3adf7df71d6fbffd366eb75b696c212291140022225829007a1cdf819464755bd8c451c4b9d0329b4142aaa530ed5b66336fd2c374efd44a5162ffb379f366c68d1b67a9a78410d1400a0011f6745db754000c19d0436136e298340d2d2dcb6822a499ff886991dd8879931ee6c41e1d152667282a2a62fcf8f17cf7dd77d22f40c42c290044d8dbbf7f3fd5d5d5a6af3fe3e4be0ab311f596906c8c06585820989591cab7131e64c420f5455c201060eedcb98c1f3f9ea2a222e5f1850877520088b0b779f366d3d73a9d0e4e1ddc476136a2419c71c6ba8044f32bfb53921298f5cadd5c7ce6408589fd4f6e6e2eafbffe3a4b962c91d1001153a40010616feddab5a6af1dd0eb7832d3adcd470bab34e308620bbb04125c71bcf7af5bb97fcc796a533bc0ebf5f2c5175ff09ffffc879f7ffe3928f71022dc480120c25a6e6eaea5262ec387f657988db024291d2dbdb171f2a0099aa6f1f41d97f1d27d57e17004e7cce2c2c242a64e9dca942953c8cbcb0bca3d840817520088b066e5ed1fe08ca1fd14652294701d5817e08c331de28e2bcf62fab3b72a6f1d7cb86ddbb6f1c61b6f307dfa7476edda15b4fb086127f3ff0a8508329fcf67a900484d496250bf6e0a33124a38e3d13272d02b0ac157672ac4252306d2ac490617def96f4aca83d3eb5fd775366edcc8c68d1b69d1a20503070ea45bb76e2426ca9652111d64044084add5ab575b3ac8e5fc330793e00ade5ba2b0c0e1348e187625990e31b46f17164efd3b5dda355798d891e5e5e53173e64c9e7df659a64f9fce8f3ffe28870c8988272300222c79bd5e162c586029c6a5e79fa6281b11149a8696968d5e5d0c6e73db3c8f6fdf82a5ef3cce350fbdc127f356294ef0b77c3edfa151014dd3c8c9c9a175ebd6346fde9c162d5a909595455292f9a246885092024084a5850b1752565666fafa8cb414469e76a2c28c445068a0a53606673c7ab5b9bfeff494243efef79dfc63c22c1e1ffb118140687afdebba4e7e7e3e41ac2f2f0000200049444154f9f9f9bff8f9f8f878323333494c4cc4e572111f1f4f5d5d1d3e9faf41f1a55db10836290044d8c9cfcfb7fcf67fe5e833494cb07e429d0891a47434cd698c0698787e6b9ac6df6fba807e27b4e7aa075fa7acb2467d8ef5e4f57a292c2cb4edfe42d497ac011061c5ed76f3eebbef36f86de9d76ebefa0f8a321221939872a07db0f92d7ee70cedc5b2779ea047e7d60a1313223a490120c286c7e361ead4a91417175b8a33a85f377a9ea0be7fbc080157b2b138d0c219029ddae4b0f4edc7b9fd8a1168168a0921a29d1400222c9496963271e244f6eedd6b39d67d7fb95c4146c236712ea37db0c3693a4462423cffbeff6a3e7fed5e9a37c954989c10d1430a00612b5dd759b56a1563c78e65dfbe7d96e3f5eada8951679dac203361ab03bd02705adbc63972484fd67ffc0cd78f1a26a30142fc8a2c0214b6f0fbfd6cd8b081c58b172b3d97fdef775e231ff4d1c2198796d1d452c3208046e9294c7ce246ae3c6f087f7e72123fefdeaf304921229714002264cacacad8bb772f5bb66c61cb962d968ef83d92a127f664f439c394c6143673388d22a0b218ea6a2d853a7d6057d67df80c2fbf3d9ba726cca2a2da5a3c21229dbc2ac58e54a01bd005c8065280e47a5c77bfd91bf6ebd78feaea6aaaaaaa282a2a0aeabee6b83827ab66bf498fe33b04ed1ec2463ae8d5a5e0ae54126e7f71398fbdfe119366cec7ebf32b891966c601c76aac5007540305c076601d5012e4bc4418910220ba3503ae0046030381a8ed8b7bcfcd97f1fc237fb13b0d116cb595071a06a969f6b333af88a7dffc84a99f7c4f9dd7dad6d3281000d6029f006f015bed4d47049b1400d1a903f030701510f5dd70fa74efcce24f5e97c63fb1c253634c09282a020076ed2be23fef7cc3a499f329ad503b3515a174e053e07120f83d96852da400882ef1c08307be62e2c8b28cb41456ce7e938e6d5bd89d8a08259f07bda208026a87ef6bdc754cff7209e33f98cbf20ddb95c68e50018ce98407800a9b73118a4901103d5a03ef0183ec4e24549c4e071f4e7852b6fdc5aa80dff20e81a3f979f77ede9bfd03ef7df503eb7fb6de9f22c26d052e05d6d89d8850470a80e87002301ba30888099aa631feb97bf9d315e7d99d8ab0958e5e550aeee01ecdbbafa88c85abb63067e97a3e5fb086dc82d2a0de2f4c550317617cd68828200540e4eb0c2c049ada9d4828bdf2e4eddc36e622bbd310e1c25d6514020ad7051ccdcebc227edcbc8b359b77b36ecb6e76e416925b504a4149d48f92bb8191c07cbb1311d6490110d9b28015407bbb13099504573ce39ebb976b2f1969772a22dcf83cc6e240bf7dabf9dd1e2fb905a594555653ebf1e2f678a9aa719bda6a78dbd353c3b5a028c7d855b4c5ee448435520044b68f810bec4e22549a35cde2a337ffc1a07eddec4e4584ab40c0e817e089fc95fc1dcfb99b1db9617bacf08fc08980c7ee448479721640e4ba8c187af89f377c302bbe9c200f7f71740e075a5a63b4b4c6964e1414c7d40b0b4dc244789056c091291178deee2442a179d3c6bcfce4ed5c72dea976a7222249420a5a7ca2b12ea0aec6ee6ca2d503c04440dd611e22a4a400884cd701adec4e2298b21b6772db98d1dc36e62232d353ed4e47442287132dbd0978ddc6b480cf6b7746d12609f82b70a7dd890873a400884cb7d89d40b01cd7a13577de7809d75d3a92a4c404bbd311d1203e112db399d146b8a602f480dd194593eb818700196689405200449ede4077bb9350a9fbf1ed197df6302e3c7b18bdbb75b23b1d119534484a474b4c35b60c4a21a04a3af007e05dbb13110d270540e439dbee04ac68daa4117dba77a64ff7cef4ed711c037a1d4fbbd6cdec4e4bc40acdf1cb42a0b652793be11834122900229214009167a8958b354de3ec81c7d1ffb89624271cfb70c007de34dff4eb8d67eea159d32cb21b67d2b449239a6567919a92643a9e10ca1c2c0492d28cc385dcd5e0f510aa4642c176df65c3c84a3bfabf35779d8f9f7617f0d1c28d568f441e66e562611fe903107976016dcc5c989ae4e283472e67e480e3ea7d8d36fc6133b70240cf956661228204fc50578deeae05bfc7f65ac04a1f80ed6fdd4bfb668deaf56b576dcde38247de624f61b9a97b61fc49a561b40a16114436ca4696782cacfeffd74d6737e8e12f444c713821311d2d33072dab155a5a13484c833817d1fcaed4b7730b26df67a9adb606b453938d08259902882ca9982cda125d715c3fb2afe2748488529a031292d112920ffc846e6c23f47bc1ef470ff820e08340c0584ca8ebfffbb27be8c08433fa74a44beb266cde5364364486ca7c4468480110594c4fa0374e4f26215efeba853047334602e25c07ff5783e815855057ab3e2d855a35c9b05200241ffb978870234f84c8627a1c52d3a27708d32e1595d5ecdc9b4f65550db5ee3a92125da4a624d1b65533695ea448addbc3f65d79d4d47a28afac26352589a44497fc190781c58f08f9808940520008514fdb76e5316bf642e62f59c3b2353f915f50f2bbbf36bb7126037b9fc0b0937a71fe998339a173db10661ab9f6ee2b64d6ec852cf8e1477e58b5913d7905e8fa9187d4b31b67d2bf5717860eecc979670ea6c7f11d429cad10914d0a00218ec2ebf3317de61c5e9f3293a5ab37d6fbbac2e2323e9fb384cfe72ce1fe7fbe41ef6e9df8bf6b2ee09a4bce2231c115c48c234f2010e0a32f17f0dae48f59b0742d8140fd1af4141697f1e5dca57c3977290f3d3381eec7b7e7e6abfec0f5979d434a726290b31622f2c92e00218e40d775a6cd984dc7419773ed1d4f35e8e17f246b36fccccdf73f4fbb132fe58dffcec2ef972e74001f7db1802e43afe2929b1e65de9235f57ef81fc9fa4d3bb8ed6f2fd376e025bc38fe7dbc3e9fc24c85883e520008f12b3fefcce5e40b6ee5da3b9e624f5e81d2d8fb0b4bf9bf075e64c03937b17ed30ea5b123c9de7d858cb8fc1e2ebaf1effcbc53ed6172c5a515dcf3f86bf41a3e86e56b36298d2d443491024088c3bc3b6b0e7dcffa138b57ac0fea7d56afdfcac0736f66fc5b9f06f53ee1e8b36f17d3fbcc317cb3604550eff3d3d65d0c19750b2f8c7b2fa8f7112252490120c4012fbf39832b6ffd079555a139d8acd6ede1e6fb9fe78e475eb134f41d49a6bcff2517def0378a4b2b42723fafcfc7bd4fbcce98bb9fc167adddad10514716010a01fce3e569fcfdb989b6dcfb95891f02f0f213b7db72ff50796dcac7dcfaf0bf6db9f7e4f7bec4ef0f30f5e5876cb9bf10e148460044cc9b3d6f198ffc6b92ad39bc32f143a6cf9c636b0ec1f4c3aa8ddcf9e8abb6e6306dc66c5e9f3ad3d61c8408275200889877df3fdef8ddbde6a1f4e0d3e3a276e5fa034f8d0b8b21f8479f9f44758d3bf437b6ffdb4b88df900220b2989e28966d6747b6f6a76dacfd699bdd6900b06bef7e162e5b67771acaedceddcf821f7eb43b0d008a4aca993d6f990d770eff0ac01fb094a3fdd59d68302900228be9955365d536bcf54480a5ab7eb23b855ff861e506bb53506ee9ea9fc26284e5a01f5659ebe9604ef8fcfe7f4f49a5a5b30a4c9f252cec23054064a9064c8d11d77abc1496cb71ddbf56545266770abf50581c7d9fa34525e1f57b2a2cb6e1ef3c8c0aa023d1759d3d0596fe5cc2eb2f59d48b140091a7d4ec852bb7a86db8120d3233d2ec4ee1171a6546df0137e176684fa330fb3b0f07dbf7955a1d0130fdb924ec230540e4d96cf6c2d92bb6aacc232af4edd1d9ee147ea16f8fe3ec4e41b9f0fb33b6219f30eff3f0e5b22d562e2f028a15a52242480a80c8637a95d8870b36e00ff30fa2501bd0eb783ab46d61fa7a577c3cbdbb7562f8d07ef4ebd985a4c404d3b19a646570dae03ea6af0f575d3ab6a177b74ea6af773a1d74ebd29ed387f4a54ff7ce2427993fe82735258973ce38c9f4f5a6e9e1fdefee830596169fae559587082d690414794cff4bdd5358cea74b3671c190ae2af389680e878327ff7a0357defa6483ae6bdb2a87bfdf792d979e7f1a69a9c9877ebea6d6cdc75f7ecfe32f4e61eb8ebd0d8af9b73baeb1f4700b67ff7ce046cebdfafe065dd3ac69160fdd7615578e3e93acccf4433f5febf6f0f99c253cfee294069fa770cfcd97fd2256e8846f01b06ec77ebe5fb7cb520855b988d0921180c833cfcac5cfbdf77d58adc80e07575c389c9bae3abfdebffedc3306b1f6dbc9dc70f9b9bf78f80324272572e5e833f9f1db495c39facc7ac7bcf0eca1dc7ec345f5fef591e69cd34fe2fe5baea8f7af3f75506fd6cd99c26d632efacd033b2931818bcf3d9555b3dfe4cf578faa77cc334eeec7dfeeb8a6debf5e195d0feb4d00cfbf6ff933619ea2544488490110797e024c6f5c5fb271371f7e1f7d5bcdac1afbf4dd3c74fb55381cbfff4fc2e974f0d0ed57f1c994a7484f4b396abca4c404de7af56f3cfbf09f898ffbfd81364dd3f8bf6b46f1de1b8fa1699ae9fc23c1d30fdec4d30fde74cc3f8fdbc68ce6eb775fa04956c651e3c5c7c531f699bb79e3997b484c701df5d75e7df1083e9dfa3471714e53b95b1208dfe64e3f6edbc75bdfaeb112c203446f0bcb2817dd9f38d1eb55e056b317b76bd688b5e36f232df9d8f3d5daf087cdde063d77bee96bedb261f30e5e9af001b3e72d63efbe42005a35cfe6ac530772d78d97d0ad4bfb06c7fc79672e2f8d7f9f2fbf5bca8eddfb0068deb431c387f5e3b6eb2f6240efe395fe1ec2ddd61d7b7969fcfb7c356f193bf7e4a3eb3a2d729a70e6b0fedc366634fd7a766970cc3d7905bc34fe033efb7631db76e5110804689295c1f0a1fdb9e5ba0b3979608f20fc4eeac9eb462f6ff8b1d21dcfb99b1db985a66eb9fdad7b69dfacd1517f8d3f1060d85d1358bc61b7a97b1cf03570969500c23e520044a621c0422b016e3a7700e3eebae098bf2ed60a80c3d579bd80b1d04f159fcf8f3f1020c1a52e6624f3fa7c0402bad23f0f9fcf8fd7e7b3b420532977157a5549832f0b7601f0fcfbdff3d7f15f998a7f9831c064ab41843d640a20322dc2e2c29bf19f2f67caec558ad2894eaef878a50f7f80b838a73cfc0f131f17a7fccf232ece193e0f7f400fc32980251b77f3f0a46fac862907de53908eb0891400916b9cd500b7bcf2c9319b035999978e9533ee85382abfb9022060a137bfe328ff6e77179431fab177a8b37e38d334a0c66a10611f290022d7348c061ca6d578bc9cfde0547edafdfbc38c2e0b8ba63c755ed3d70a11357c75a62e735bf8f7131f77e48ff682b26acebc6f32f92595a6631fe0035eb11a44d84b0a80c855093c633548617935c3ff3a890d3b8fbc48e9f73e48eac3ed31f7c12744d4d075d3bb00dc1ef3054042fc6f775ae4155730fcaf13d9b2d7d27bc34193819f550412f6910220b2bd0e586ef09f575cc1b0bbc6b370fd6f9b811ce983a4bea4001031cfef35dd03c05d67fedfcfafffddfeb4bb9021778c67dd8efda6631ec60d3ca12290b097140091ad1630bf4cff302595b59c71ef445eff64e92f7e3e23c57c67bad232cbc38c4244369fb9b7f85a4f1d9e3a7323074e878394c4ff2dac9cb9682327dd3a969df9caceeb790168589b4b1196a400887c5381d92a02d5f9fcdcf2ca279cf3d0d4431f168dd3938f71d5efcb2f6cf8d62721a289ee739bba2ebfc8fce9ba8dd212d1348dd2ca5a6e7e6926a31f7b878a1a8fe978bfb219f887aa60c25e72164074b819580f283977f5cb655be87ac3cbdc77d95052938ede61ed68f617ca09a122c679cd1500fb8b2d1400a9497c307f3db7bcf20985e5d5a6e31c4100f813c614808802520044875dc03d28d81a7850adc7cbe3d3e65ada06b8af404e0815312ce007bfb9ad76560a809ff34ab8f4c9e9a6af3f8a17b0d8804c84179902881ee38149aa835a392464fbae3c85990811614cbefd036cdbdbf0d6c10705e9b0af79c043c1082cec23054074b905586977120735f4385c21a2895e67be00f87957bec24c2ccb07aec0d8fb2fa2881400d1c50d8c06f6d89d08c096ed6191861036d0c15b6bfaeaadbb956cd753a102380fd8677722423d2900a2cf6e600460ee14119589e41650eb56b6fa5888c8e1f5828556d89b7684c5f4991b1845188d2a0ab5a400884e9b807330aa77db0402017edcb8cdce1484b08785f9ff82920a720b6cdf41e3032ec798fb17514a0a80e8b502381d9b470256aedd6ce7ed85b0855e677ef87fc5861d0a3331c5035c06ccb43b11115c520044b795c0508c69017b12900240c49a80dff4014000ab7edaa92e97862b0586031fd99984080d2900a2df66e0446cdabfbbfcc74d76dc5608fb786a307d0000b07cbd6dd3663f0127217bfd63861400b1211f633ae0b550df78c3e69de417484b60113bf4ba1ad3d77a7d7ee6afb0a568fe18e345618b1d3717f69002207678815b311607866c4b8faeebcc59288b88458c08f8c16b7ef87fe9ba6d54549b5f3f60420d70277011c611e322864801107bbe047a031f84ea865fcf5f1eaa5b0961afba6aac0cff7fbb64bdba5c8eed3ba007f032569216114b0a80d854005c8a312d10f44f9caf172c0f567b5221c28aeeb6f6f6fecd0feb1465725479c0b5c019c0f650dc508427290062db77405fe04620687b8ff20b4ad8b07967b0c20b111e027ef0996f7c555659c3f2f541dd025800fc15380e9886bcf5c73c290084177813e8025c4f90ba7e7df3bd4c038828e7b176f4ee77cb37e233797ae0316cc698e76f0f3c0f283d2358442e2900c4415e600ad01f6335f01b80b286e49f7db344552821c292ee31bffa1fe0b379ab1565024019f05f8c3dfd2760ccf35b4b50441df387bd8b58e0004ec6f81019060c04924c057238d8bdfc035a366ba2303d21c284cf835e66be5e767bbc343ffd56caab4c3fa3bd18dd3f17027330a6f7cc6f471031414600c4d1048005c023c0a9c01f4d070a0478ef93b98ad21222bce8ee2a4bd77fb660b595873fc07dc0e0033fce461efea21ea400100df10d16e60fdffee81b85a9081126741d3cd656ffbffba5e529b24fac0610b1470a00d110b5c0b7662f5eb56e0b1bb7ec54978d10e1c05303baf9a37f2baa6bf972e15a2b19ac43b6f30913a400100df5a9958bdf9d25d30022bae86e6b0df43ef87a19b51e4b23f6b32c252062961400a2a13ec1382bdc94773efe469a0289e8e1f35a3af90f60fa178bad66f1b1d50022364901201aaa100bd300db76e5f1cd82150ad311c23e5617ff6dd995cfbc153f5909b1095865290911b3a40010664cb772f1cb6fce50958710f6d103969bffbcfcd65704029646c42cfd5b14b14dfa000833d2308e184e3673b1a6696c9c378de33bb5519b9510a15453815e5366faf2b2ca1ada8cb883aa1ab7952cba2047f80a93e2ec4e4044a44a8cc5809799b958d775fe33f923fef3cf3bd56615616a6addcc9eb79c794b56b327af80fd85a5ec2f2c89ca06ed4d1a65d0ac69162d9b356170ffee9c3b7c108d32d2ec4ecb02ddf2e2bf373f9a67f5e1bf0c79f80b0b64044098351ca32f8029c94989ec59f1015999e90a538a0c9bb7ede6b117a6306bf6426adde60f8f896471714ece1cd69fc7eeb99e81bd4fb03b9d867357a1579598bedc1f0870dc79f7b223b7d04a16370113ac0410b14dd60008b3e600dbcc5e5c53eb66cafb5f294c27fc5555d7f297075fa4fbe9d7f1eeac3931fbf007f0f9fc7c397729279df77f5cf6e7c7d85f586a774a0da2d75a7bfb9f3977a5d5877f15f09ea52444cc93024098a50393ac047875d287787da677144694bdfb0a39f5e23b183b6d163e5f504e7c8b48baaef3fea7dfd16fe49f58b976b3dde9d44f5d2df8bd9642bcf4df2fad66f11e50613588886d5200082ba6601c4262cace3df94c9afe85ba6cc2d4e66dbbe937f2c6c879c0d92037bf88532eba9d85cbd6d99dca31e9b5d69ebbb317af63f19aad56d318673580105200082bf2800fac0478e2a5a9513d145e5159cde83ffd9d82a2c81ae2b643758d9b0bc63cc4f65d7976a7f2fbbc6ef05afb7e7decf50fad66b118586e358810520008ab5eb47271defe2226bcfd99aa5cc2ce95b7fe43ce3f6880e2d20a2ebee911fc7ef3bdf58349af2eb774fd27f356b1749de9a53307bd62358010200580b06e25c61b89694fffe72d6a6a2d6d870a4b5fcf5fce67df5a6ef31a7356afdfcae4f7c2706ac853033ef36fffbaaef3d8eb1f59cd220fb01c4408900240a8f192958bf30b4af8cfe4e86a67aeeb3a0f3c25d3b4663dfafce4f09a1ad241afb1f6f6ffe1b7cb59b37997d54c5ec5c2ba1b210e27058050e163c0d20ab7e75e7f878a4a6b6d55c3c9b2353fb17abde5855e312b6f7f119f7dbbc4ee34fec7536d69e57f20a0f3f858cb2fee65c0eb5683087190140042053ff0ac9500c5a5153cfd9fb715a563bf59b317d99d42c49b357ba1dd291ca05b7efb7ff3a3796cd8966b3591ff205bff8442d20950a8128fd196b49dd900aef878d6ce9944978e917f46409f1137b066c3cf76a711d1b232d329def0a9dd6980bb02bdca7ccfffd28a6aba9cff578aca2c350faac1f8b765a97b901087931100a18a1778de4a803aaf973b1f7d55513af6dabe7b9fdd2944bc92b20aca2aac1db76b991e40afb6f6d2fdb7573fb0faf007780379f80bc5a400102a4d00765809f0d577cbc268e8d79c9a5a7754ad67b0535e7e91adf7d7abcb8c637f4d5abd6917e3677c67358d6a2c4eb109712452000895ea807f580d72fbdf5f89e86d8125d6dff6c401c5a5364e79fbeac0637e0442d775ee7aee2dfc01cb3d0dfe0d14580d22c4afc971c042b5a9c0bd80e923de76e7eee75f63dfe5d1bbaf5396542825272598be362b2b8b1f1645d702c28b2ebd9475ebccb5f8b5f267698d8e5e558a95b399a77dba90052b37594da40c8bcdb684f83d520008d5fcc0a3c0fb56823cfbda3b5c39fa4c3ab56ba926ab104a4b4d367d6d7979396ddab4c1e9742accc85e1515e6dfe233d2531566d200b555969afe949457f1e0cb4a0eeb7b06307feeb01047215300221866009626f26bdd1eaebde3a9b06d097b34f171712426b84c5debf7fb292d33bfe23c1c15169a5fbb969662be98322de0b3bcedeff667fe4b7e91b51818c76dffdb6a10217e8f1400221874e00ec0d2d37bf18af5bc3c71869a8c422c3d2dc5f4b5bb76ee549788cd0a0a0ba9a9a9317d7d7a5ae80b0063e8dffcb7eeacef56f2ce174a5a40df0584513b44116da40010c1b20a986e35c8434f8f67c3664b1b0b6cd1a66553d3d72e5fb1426126f65abedcfca1754d9b34222931c46b00dcd550576bfaf2a2b24afefce46415997c0b8441130411cda40010c1f420460313d33c755e6eb8e7397c3ebfa29442a3db71ed4d5fbb6cd9328599d86b998502a0db71edd425521f7e1f7a8db5639b6ff9e714f6175b1efaf702b7590d22c4b148012082690f0ab6052e5dbd91e75eb73c98105227746e6bfada6fe7ccc1ef8fac82e7f77cfdcd37a6afed1aca024007bdaa182c6cd97bf7ab1ff8e06b25c5db2b80e5ed03421c8b140022d85e007eb21ae48997a6b0f627cbe7a8878c9587d7befc7ce6cd9faf2e199bfcfcf3cfacb0309d61a5886ab0da72f09a9f6edf5754c6ed4f4f5391c97ee0491581843816290044b0d5017fc6d28e6a632ae0e21b1f89980e7b037b9f80a6993f6a63da34250f135b4db1f87b18d8db742b8986f17ad06bcd0fdb07023ad7fd6d9c8a76bf000f0196e71084a80f290044282c002c1ff5b775c75e6ebeff0505e9045f4e7623fa74ef6cfafaf73ef880cd9b2d9db06cabe29212c6bef186e9ebb31b67d2afe7710a33fa1d81007a6591a5f2f4d1d73fe49b25eb5564b30898a2229010f52105800895db80bd5683bc3b6b0e63a7cd52904ef08d3c6da0e96bfd7e3f8f3f19b923c1cfbff082a50640234f1b88c311e48f271de3e11f30bfde62ced20d3c3351c962fd1ae07a2c6e9d15a221a40010a15206fc9f8a40773dfa2a2bd786ffdbf1c8534fb474fd073366f0d1c71f2bca267456af5ecd2baf5a3bd5f1ecd34e5294cdefd36b4ac06bfecc89bdfb4bb8fcbed754f4fa077800d8aa229010f5657e925208732661bce958d2b6550e2bbf7a93c68dd215a4141c7e7f808e83ffc8aebdfb4dc7689a9dcdaa952bc9696abeaf40285557573370d020b66cd9623a465a6a327b57ccb0d44ce998dc55e855e63becfafc7e4e1bf3148bd698ff7d1e6621700af2f62f424c460044a8dd05ecb61a64d7defddc70cfb3e8baa5b58541e5743ab8f9aa3f588a515058c8a80b2fa4b232fc4f18f4fbfd5c7bfdf5961efe00575f3422b80f7fafc7e8f667c1fd2fbdabeae15f055c833cfc850da40010a1568e310260f9c93d6bf6421e7d5e49d7b5a0b9e1f2734970c55b8ab172e54a2efde31f2db5d40d369fcfc79f6ebc91599f7c6239d69faf19a520a3dfe1f7a2571462e5db6fea27dff3d27fbf5295d1bd40e4b5ba1451217a8e1c13916407d014186035d0f74bd7d2be4d737a75ed643dab2048494e62cb8e3dacdd68ad87c1f61d3b9833772ee79d771ea929417c3b36a1aaaa8a4bfff84725eb15869dd48bfb6fb94241564710f0a397efb7d4e7fffb559bb9ecafafaa3aa46a0e70a78a404298216b00845d52801f818e560325b8e2f9e6dd17197a624feb5905c1f65d799c70ca35d479bd9663b569dd9ac99326316ce850059959b776ed5aaebeee3a366edc683996a6697cfff1ab0c19d0434166bf1208a097e783df673ac4d6ddf90cbefa718acbaa5464540ef444c174981066c91480b04b35702d46df734b3c755e46ffe96ffcbc33d77a5641d0a16d0b6ebdfe4225b176efd9c399679dc5bdf7dd4779b97dfd62dc6e374f3ff30c83870e55f2f007b8f8dc5382f3f0d703e81505961efe25e5559c7feb0baa1efe3a7003f2f0173693110061b7bb31da055bd6a5631b967cfa3a8d32d2548453aab4bc924e83afa0a4ccfcdef85f6bd2b8310f3ff41063aebf9ee4e4d01c9bebf57a79f7fdf779fcf1c7d9b55bddf32bc115cfc679d3e8d0b685b29880f1f02f2f005f9de9105e9f9f73fef22fe62cdda02aab17817b540513c22c590320ecf603d015e8663550716939cbd76ce2f20bcec0e90caf6feda4c4045ae434e1e3afbe5716b3a6b696d95f7fcd9b6fbe494565256ddbb4a151a346cae21f2e6fdf3ede18378e6baebb8effbef596f2d18727ff7a037f18314469cc436ffe161efebaae73d3e313f9688eb2239a17035721abfe4518901100110e5281a518858065178c1cca07e31e272e2ebc8a00802b6e7982e933e70425b6a6699c3870207f38ff7cce1a31821e3d7a583a8f60cb962dccfefa6b3efbfc73e62f5810b4130a4f19d49bb9efbfa4b6f35fc08f5e5e087ef30f7f8007fefd2ecf4dfe5c515214027d51d011530815a40010e1a20bb00c50d2d9e7aa8b4630f5df0f06bf9d6c03955756d3fbcc31ecdc931ff47ba5a5a5d1ad6b577af4e841af9e3de9d0a1c94e71e40000200049444154038d3233c9c8c82023331387c341795919e5e5e5949695b173e74ed6ad5fcfba75eb58b77e3da5a5d6f6cad747a38c347efc7612ad5b286c74e4f719c3fe01f373fe008fbff1318f8ffd48515204807380d9aa020a61951400229c5c06bcab2ad85faebd80d79eba4b55386556addbc2a917df416555f8eeeb0f85f8b8383e9dfa34679d6afecc84dff0d519fbfc2df4f70778e59dafb9f3d9ff2a4a0a80478127540614c2aaf01b2315b16c039005586ba27fc0f21f37515e59cd48950f18059ae734e6a47edd7877d61c55fbc9238ea669bcf9c27d5c7ceea9ea827a6ad02b0b2dedf3079832eb7bfef2cf294a523a600e70130a9a5f09a192140022dccc05ce005aab08f6c3aa8db8e2e3c3ae4740fbd6cd69dfa6b9d2458191e499876ee6d6eb47ab0b58538e5e6d7dca62fa974bb8feefe354b698de0a8cc4d8f62a4458910240841b3ff0197011a06449fbdc45ab484d496270ffee2ac229d3f3848e74efd29e4fbe5e842f480becc28da6693cf3d0cd0abbfde9c6a13eb5d6cf4af8e0eb655cf3f01b2a47658a80d381f06c5021629e1400221c55039f039763740cb4ec9b052b707bea183eb4bf8a70ca743dae1d83fb7767e6570bf1d459ef1418cee2e29c8c7fee5e6e1b73919a80019fb1d2bfcefc91be07bdf5f922ae7d789cca42cc8db1e8ef47550185504d0a0011ae4a81f9c09580b5d3740e58b47c1d4525e59c7dfa8996b6c7a9d6be4d73ce3a65005fcf5f4e5985924e7361a74956061f4e78924bce3b554dc03ab79295fe0063df9fc3cd4f4cc41f50f6e6af631c78a56cffa010c12005800867b91873a817a168c7caf2359bd8be3b8ff3cf1c12565b049be73466cc65e7b0734f3eeb3747d7e170a70eeacdd7efbe489fee9dad07d341af2983ea5254aca97b76d267dcfdafb7517caaf483c058a511850802290044b8db883125304255c0b51bb7b175c75e469d35046718150109092e2e3ef7149a376dcc82a56b237e4a20c115cf63f75ccf847fdd4746ba82999c40c058e5ef51b39eeeb1b11ff1c86b3394c43acc44e07ed5418508062900442458023446d1f64080f59b77b0f6a7ed8c3aeb64e2e3e2548555a27faf2e5c77e9480a8a4b59f7d376bbd331e5f4217df964cad35c74ce29381c0a066feadc070ef4b15e14f90301ee78661acf4ff9c27a5ebff415c694556ceeed1411277c264285383a273003b84065d081bd4f60d6e4a768d6344b655865e62f59c3fdff1cc7d2d56a4edc0bb6aec7b5e39ff7ff890b462a3aae58d78d217f05abfc01aa6adc5cf9c0eb7c3a7fb5927887f90163944a4da242848014002292b8808f807355066dd9ac099f4e7d46cd1c75902c5cb68e675f7b87cfbe5d6c772a47d4ab6b27eebef952aebcf04c9c4e45d32ade3af4aa62256ffd007985a58cbafd25566e54bec6620d46ef8a12d581850826290044a449c02802ce511934352589775e7b84f3cf1cac32ac72cbd6fcc4c4e99ff3deacb99457dadb5b26293181d1e70c63cc1fcfe1f4217d1546d6d1abcbc15da1ac77de8f9b77f387db5f644f7eb19a80ffb31663afbff2c042049b1400221225019f62bc7529e3743af8e7fd372a6c52133cb56e0f1f7e3e9f199fcf67cec2955455d786e4be89092e869dd48bd1670fe38f179c41469a92360dffe3f5188d7d14bdf5037c3c7705573f38961ab7b593018f6033702a10fc939d840802290044a44ac6d8677daaeac0b75c3b8a979eb83dec1607fe9e3aaf9785cbd6317bde327e58b591d5ebb72a3b68282931815e5d3b32b0cf099c75ea404e1dd49be4a44425b17fe1d05c7f15aa5efb755de7d9c99ff1b7573f201050de865f1efe22e249012022593246dbe0d35407eedfbd13ef8f7f9cf66d5ba90e1d748140802ddbf7b266c35676eec96777ee7ef6e415b2afa098caaa1abc3e1f65e546c3a1b4d4645cf17164a4a7d2242b83362d9bd2a6650eed5a35a367d78e74eddc8eb8b8206f1672571b0f7f8b27f81daea2ba963f3dfa2633be59a62ce6617ec678f84b8b5f11d1a40010912e15f812385975e0c699a94c7dee4ece3dfb7470c88e59e57c75c6013e5e8fd2b0cb376ce7b27b5f65675e91d2b807ec058600bb83115c8850924f3511e9ea30b6075e0da4ab0c5cebae63fa67dfe3a9286558bfe370c62780163e8d832256c08f5e75a09b9f8256be87fbcff46fb8e2fed7282e0b5a4be524600fb034583710225464044044ba548cee6b9706f326c3fa1dcf3bcfdd428b366dd112536544c00c3d805e5301ee4a54f7deadac7673f3131379f7ab1f94c63d8a99c0754079a86e28846af22926225937e05be09460df68d7be22defa6c111d9b67707cb37408f8d09cf15208d487ae83bb12bda208bcd64feefbb585abb770ee2dff62c1cacdca631fc5f1c028602ec6b1bf42441cf9f41291ea726016d0225437acaef5f0feeca56cdcbe97d3fa762259ab03bf172d2e4e0a8123d175f054a25716435d2dca36f51f50eba9e391d76670f3e3938239e47f34d9c0b5c07660831d090861857c6a894813073c05bc84d11930e4366ecb65daa70be9d0aa2927b4c9067715783d680e0738e388f999b5801fbda6122a8b8c07bfe2e17e80253ffeccb9b73ccfacef56a207217e03b8808b310ad1af01755b198408b218ffa41211a625f03e1036edfa2e193190d71ebe8e269969c64f38e2d092d2202105c2e8a4c19008f88c07bfa72a280f7d00b7c7cbe36f7cc4f353bec01f08bb337796039700bbec4e4488fa900240448ad381e94053bb13f9b5e64d3279f1be2bb9ecac93fef7939a031292d112d3202edebee4824e074f2dbaa70aea3ca81ee63fdc9ca51bb8f5a9a96cdeb92f68f750603fc6f4d477762722c4b1480120c29d06dc0e3c8f31fc1fb686f53b9e97efbf9a5e5ddafcf2ff8877a125a4424272f46c23f4fbd1dd55c6dbbec2063e47f2ffeddd77789455f6c0f1ef944c492f842e2df4de1590222222b8a062a159404165edae022aa0288aa2fe2c8b0d775550b1ae94d04b80d0550882d2416aa82109e999c9fcfe1851544266de32f57c9ec767f791b9f71e1392f7bcb79c7be444164fbff5153353d7ea3a8e869cc00bc024e46a6011c0240110812c16f82f30d0df8178ca683430b46f675efdd750921362fefc8706837b56c01a05115682eec7afcc09c505b84a0a342fde7331054525bcf2512a533f9a4f61b1e675fc7d2115b80338ebef4084b89820fb0d24c2486bdc057e52fc1d88128971d14cfae740eebda527a68bed05309adcc98025f2b7642040b9caa0a4105771019416ea39c3ff275f2edec093af7fa1c7ed7d7f633018f4dc48b8177702fb935e0308a19424002210dd05bc83bbea9ae6e2e3e2297594929fafff75bacd526a30e1be9b18d8ab034663393f6e263358223158ec60b6faffa7d259022545b84a0ac151ecb3873ec0b20d3ff3ecbbdfb22e638fee6359222c8c1c3e8aead5aaf1caffbd424eae6e357d0a80fb81197a0d208412fefe5523c485acc02bb8d7fc75d120a5014f3df13406838129af4f61e7ae1d7a0df527cd526af0c4f0eb19daaff3c56704ce3318c16ac7106183089b0fea0bb8c0e1004731aed222f7d4bece6bfa17b366cb6e264efb96b4ef7ff1c97895932b33f6f171346ad00880d3674ef3d26b2fe9fdf76126702fe09bbb9b85a88024002250d401be06daeb3540ff7e03b8fb8ebb31ff76cdafc3e1e0bf33fec3dc05737d7696bc79fd9a8cbff7c64bcf085cc86406b30d4384d57d9ac06456be91b0ac0c9ca5e02cc5e52c0187fbffe3c7e3744bd76f67d27bdfb13663b7cfc6ec7c45171ef9e723444546fde9df3b1c0e3efc783af316ced37378392a280286240022105c87fbed28498fceed363b0fddff10ddaebc78c5e0f51bd7f1c63b6f9097e7bb6a72cdebd7e4f13bfb72dbb55760b37a734cd00026139822dc75060c260c0683fbffff96c4b85c2ef7da7d99d3fd707739c1e9d0ed6cbeb71c4e27f3566de1b54f16f864aaff3c8bc5c23d77de43df6bfbb9bf66e55899be92b7df7d8ba262edcb16ffe60c300c58a4d7004278421200e14f06e049dc95fd74391f57a37a0d9e7ee2196ad7aa7dc9cf9dcd3ecb9bd3dee0fbcddfeb1146b9e2a223b9b3ff953c34f45aead50cb812079a3a7126878fe7a4f3de57cb3998e9dbf2f9b56bd5e689479ea46eedba1e7dfec8d1c3bc38f5450e1ed6ed45dd857bb9eb69a47aa0f013490084bf24019f027df41aa053c74e3cfae0637f9bea2d8fcbe562f1b2457cf0d1071417eb7fcced4246a3819e1d9b3272604f6eead5fed2fb0482cc8fbf1c60fab769cc98b786a2e2529f8e6d3018f847dffe8cb87d041111de15642a2c2ce4cd77de207d5dba4ed101ee82418371171012c2a7240110fe7039ee92beb52afaa012669399e1778ce086eb6f50d4fee0e183bcfef66becddb757e3c83c53b7463283afebc42dbd2fff7b51a120b1eff049be5ab291590bd6b17def11bfc450bd5a751e1efd08cd9b3657dc87cbe56276ea6c3e9af95f9c4edd5ed40fe1bece7aa35e030871319200085f1b05bc8d4e17f924262631eef171346ddc54553f4ea793d445a9ccf8ec133dd7822b54a77a25faf768cbcdbd2fe7ca360dfd1687270e1f3fc3ff96ffc0374b36b16eeb1ebf5dd2633018b8b6571f460e1f89cd6ad3a4cf9f77fccc94d7a79095a55b5d0207f00cf0b25e0308f1579200085f89023e0086e83540cbe62d19f3e858e2e3e335ebf3d8f163bcf5ce5b6cfbd9ff755c9ad4abcecdbd3ad2ab53732e6f918225c2bf95919d65656cdef12b2b36fec2ec153fb069fb7e7fdfcc479dda757878f42334acaf7db27436fb2c2fbf3e856d3f6fd3bcef0b7c8e3b49d6bf4885087b9200085f688cbbaa5f333d3a37180c0cbce166ee1c7227461dd6ce5d2e174b572ce1a34f3f22373757f3fe9588b459e8dcba01dddb37a1478726746c9e428459df9a012e978b6d7b8e90f6fd2fa46dfa85553fec2427af40d7313d65b7d9197ceb60065c7f0366937e8991d16464d6ff3e67e6cc997a263b3fe3be6278a75e030801920008fddd02fc0788a9e8834ac4c4c430e19909346bd05cf7b7cf7379e798396b260b972ca02cc0aea28db25b69dfac2e2d1bd4a265a35a34ad57837a3593a99214a7a8bf63a7cef2cbbe63ec3870945ff61e65c781636cdf7b84ac1cdf1d95f454d7ce5db9e7ae91544aaaa4eb38e6081349d592309a8ca4a5a53161c2043dab499e03eec65d1b43085d480220f41281fb98d3237a0dd0b06143a64e9dca65975d4649510959c7cffa640a7adf817dbc3bfd1d76f8a88aa01a51762bb5aa2551293e864af13124c54763341a88b25b31198d9ccdcd27fb5c016773f37fffe774761e7905fedbf7e0a95a356b71efddf7d2ba651bddc7325bcc24554dc468fa6386e9d0a143fceb5fff62ef5e5d378bbe81fba8ac6f8f4f88b0200980d0430de04ba08b5e03f4eddb97679e79069bed8f4d5ebe4c020036feb0910f3f9eceb1cc633e194fb8c5c5c671dbcd83b8becff5984c7a974a06738499c4aa09982eb2c4525252c2942953983d7bb69e2148f540a10b490084d6ba035f0055f5e8dc62b1f0d0430f3164c8c5f712961497929599e5b324c0e174b06cc5523efde253ce66cbadaf7ab2596d5cdff71f0c1a3808bb5d977ba2fec6146122a96ae2451ffe174a4d4d65f2e4c97ad68f380d0c0596e83580083f920008ad1880b1c0f3802eaf65d5ab57e795575ea169d34b1ff12b2d29252bf3ac4fd7e90b0a0a98337f36b35367fbb4a47038b0596df4bdb62f036fb899f838ed4e7854c464369154ade287ff79dbb76fe7c9279fe4f8f1e37a85e40426002fe1d33b1a45a8920440a8550de88afb0adfebf41aa44b972ebcf0c20bc4c579b6a9adb4b89433c7b37095f9f6f7644141017317cc61f6bcd99ccb3be7d3b1438dcd6aa36f9f7e0c1c30d0a70f7e706ff84bf4e0cdffafb2b3b379fae9a759bf7ebd4e9101ee3b043e06d60047f51c488436490084b7ea02dd7efba72bd040cfc18c462323478e64e4c8915e1ff1f3571200ee32b2a98be63177fe5cb2ce66f97cfc6016131dc375bdaf63c0f537f8fcc10f975ef3f744595919efbfff3e1f7ef8a12f96a20ee24e045603cb80fd7a0f2842872400a22236dcebfaff00fae24e007c222e2e8ec99327d3b97367c57d94969472f6f8599c4eff1cdb73381cac5ab392efe67ec7818307fc1243b0a856b51a03aebf816b7a5ea359053f6f59ac1124544df4ecaae60aa4a7a7337efc785fd78ed8072cc59d0c2c0502a3708508489200888ba90ef4fbed9f5eb8abf8f954d3a64d993a752ad5aa5553dd97d3e124ebc4591c250e0d22532ee3a72dcc5b388fef7ffc5ecfbaf241c56030d0aa456bfa5ddb974e9777bee435bd7ab3465a49a81caf690c478f1ee589279e60e74ebfd4f429015601738079b8ef1c10e277920088f32ae33e6a3418e88c1fff6edc74d34d3cf9e493582cda5d17505656c6d913d994149568d6a75259596758b262094b962fe1c4c9f0bc042e3e3e9e6baeeacdb5bdaea55a55f5499e5a913176e22a292b9a54919292125e7ae925e6cc99a34bff5ed88cfb12ae2f815ffd1b8a0804920084b778e046601070353aeddef794d56a65dcb871f4efdf5f97fe5d2e1739a77328cc0b8c22372e978b2d3f6d61f59a55acdfb43ee44f0f58ad563ab6eb48f72bbbd3a17d475d4bf67a233a2e8a98445d0a55fec977df7dc7cb2fbf4c4989df935017b009f771dd2f814cff8623fc451280f063047a0323714ff15bfd1b8e5bcd9a35993a752a8d1a35d27dacbcec3cce9d0dac87adc3e160cbd6cda4af4b67c3a60de41784c65d30111111b46bd38e6e5dbad1b1fde5d86dbe39bfefa9b84ab144c644fa6cbc1d3b76f0c4134f70ec58c0148f72f0c7a98279b8970d44989004207c54038603f7e0c38d7c9e301a8dbcf7de7bb46fdfde6763e6e7e4939b1598c7f44a4b4bd99cf123e9ebd6f063c60f01730191a7a222a368d5b23597b7ef48a78e9d898af2f916920a194d46e293e3b1da75b995fa92366ddac4e8d1a303ee3e09dcc5863e03de432e220a0b9200843623d013f7f5a237e0aecf1f902aaaf0a78792a212b24fe604fc86bce3278e93f1d316b6fc94c1968ccd01373b60301848a99742eb966d68d3b235cd9bb6c06c0e8ce9fd8b315bcc2456517ecc4f8dd4d4545e7cf1458a8a026319ea12d6026f02b3917b0842962400a1c906dc013c06e83fa7aea15ebd7a3161c204a2a3a37d329ed3e1e4ecc96c4a8b83e3779cc3e960d7ee5dfc6feeb76cd8b4c1dfe160329998307622eddbfa6ef6460d7b948db84a71183438e6e78dbcbc3c264d9ac4b265cb7c3aae068e02d370cf0a48adeb10e3d74d5f427371c07db877fa0e01f4bd1f5507fbf7ef67e1c285b468d1822a55aae83e9ed168c41e6dc755e60a8a24c0683472ecf831befedf57381cfe3dd608ee8d8c1b36ada77ebdfa54af56dddfe15c524c620cb149b13e3f6ab863c70eeebfff7e3232327c3aae4662716f107e00a80dec01cef83522a119490042430af002301377c11efdb734eb282f2f8ff9f3e7131919498b162d74ff856d3018b0465a314798282e0cec3d50abd6ace4a5575f0c849de4bf73381da4af4ba7668d9ad4beacb6bfc3f91ba3d14042950422a37dbb01d1e572f1f9e79f336edc38b2b3b37d3ab60e2c403be07ea029b00b38e9d788846a920004b7fab8ef0bff00b89c005ee3f756595919ebd7af67d7ae5d74ead4e94fd7feea25c2128135d24a7161895fca07572475612a6fbdfb66206e1ea3acac8cb51bd61217174fc3fa0dfd1dceef2cd60812ab251261f5ed8f464e4e0e63c78ee58b2fbe08c8ef970a46a039ee99c696c06e40b7db8f84be2401084eb581d780e9401bdc3f9421e9e0c1832c5ebc98e6cd9b53b5aa2e370cff89c964c21e63a7cc59e6f7ca8117faeccbcff868e67ffd1d4685befff17b8c46232d9ab5f0772844c745119f1c8fd1e4db1f8f8c8c0c468f1ecdcf3fffecd3717dcc003401ee05da02bf00e159d52a884902105c6a0053808f800e84f083ff42797979a4a6a662b15868d5aa954f96046c5136222c664a0a4b7c71a14bb95c2e17effde75dbe9df3adf69d37ef0f951bc0c9dd9a76fbd3f69fc8cbcfa35deb767e29ed7bfe263f7b8cdda7db9c5d2e171f7ffc3113264ce0dcb9c03c62aa0303ee8dc6f7fef6bf5b91cd8241431280e0100f4cc6bdc6df8900fbbe190c069a376f4edfebae63f79e3d94966abf99cee572b171e346b66fdf4ea74e9db0dbf55fcf355bcc44c6d871963a7194fa7e36c0e170f0ea5bafb274c552ed3bef300c2ebf136ab577ff0a3fb64dd3ee77edd945e6f14c3a76b8dceb5b1cd5888cb19350390153846f7f44b2b2b278e28927f8f6db6f754b18ed763b03070ea4a4a484acac80bb61d200b4c0bd47a02af0231058e755c5dfc831c0c0660486015371d7ea0f1875ebd6e5ea9e3de9d4a9133dafba8aead5dd3bc077eddac5d0db6f67db366d1f28174a4c4ce485175ee08a2baed06d8cbf2acc2b24e774aecf66038a8b8b79f1d5c9fcb0f9078d7b3640e77ba0c5803fffeb5f16c09a7741e3ffbed62ddbf0cc986774af00683299884b8ec56af77d61cb1f7ffc91a79e7a8a53a74ee936464a4a0aefbefb2e8d1b3706e0f4e9d36cdcb891f4f47456ad5ac5d1a347751b5ba17ce055dc3396015ff4205c490210b87a02ff877ba38ddf99cd66aebcf24afed1af1fd75f7f3d75ead429f7b30505053cf6f8e37cf4f1c7bac563341a19356a14f7dc738fcfde301da54e724ee7e87ea1d0b9bc733c3b79223b776b5c8ccd68869e8f434ad78bfff9ded590f63a94693bdbd1b47153268e7b56b7da0e91317662126335b9c2d71b6565654c9f3e9de9d3a7ebbad16fd0a0413cf7dc73979cf5dabb772f6bd6ac61f5ead5a4a7a7535c5cac5b3c5e3a003c097ce3ef40c4df49021078eae1ce9c6ff477209191915cd7a70ffff8c73fe8d3a70f09f1f15eb5ffe2cb2f79e0c107755d0fedd0a10393274fa65225df953c282e2826fb740e654eed7fe99fc93ac3f849cf70f0f0414dfb35592249bae9054ec655b043fff06658f22238b47d69ab53bb0ecf8f7f81c48444cdfa345bccc4578af3f90e7f70bf813ffdf4d37cfffdf7ba8d111d1dcde4c993b9f146ef7e15e4e5e5b164c91252535359bd7a75a01c194d0346232586038a240081c3023c058cc58f17f4984c267af6ecc9e0418318d0bfbfeab7b63d7bf630ecf6dbc9d8ba55a308ff2e292989e79f7fdea74b02ae3217f9b9f9e465e76bb62c70f4d8519e99f434274f697bbcda1c194793bba6117d59738e9fcbe7c0996cdc17c295e3c44e58f81c146b9bb855a95c951726be40f5aaea0a06198c06a2e3a2888a8bf2cb26c3f5ebd7337efc785dd7e19b356bc6b469d3a857af9eaa7ece9d3bc792254b98376f1ee9e9e9baeccff14209ee979bc940813f03116e920004864eb88ff435f35700eddab665c8e0c1dc72cb2d9a57e02b2a2a62ccd8b1bcf7fefb9af67b21a3d1c8f0e1c3b9efbefb30997cb701cc51ea20f74caeea02427bf7ed65e2e40964e7685b30c6125795a623dec55ef98ffb9f4ee717b0f774d6a597fbcf1e82f9e3215fdba26f09f1094c7ae679ead555f660b3daadc427c7f9fc681f80d3e9e4bdf7dee3a38f3ed275cafff6db6f67c2840958addabe07e4e4e4b078f16266cd9ac58f3ffea869df5e3a00fc1358e8cf20842400fe16094c00fe851f76f6db6c36faf5edcb830f3e48271fbc3dcf9d378f51a3467156c7aa68cd9b3767ca9429bf6f4af495e2826272cee4e274787fb1d0b69fb731e9a5e72828d4f6a5c89e5c972623dec51afff7fa09394545ec3a9185d3758907d9b993b06002641fd1362e9b9d67c63c43eb966d3c6e63b698894d8cf5cbed7d00274e9ce0a9a79e62cb962dba8d111d1dcd942953e8dfbfbf6e639cb76fdf3ebefaea2b3efffc73727272741faf1c5fe35e1638edaf00c29d2400fed307f7051b3eaf9ddaa04103eebaf34e468c18416242824fc73e7cf830c36ebf9d0d1b37ea36465c5c1c93264da26bd77236bbe9c4bd2c50407e4e1e651e5612dcf8fd06a6bc3e45f375daa81a4d69327c1a1151e57f7ff38a4bd871e2348e4bbdcd169f8305cfc2c95d9ac6171111c1138f3c49972bba5cf27326b389e8f86822637c5bc6f7421b366c60fcf8f19c39a35f09fc162d5a306ddab44b6eaed5435e5e1e73e7ce65e6cc99fe2a5c7402f76c800e852e444502ea3c799888c55dba772aeef3fd3e613018e8d3a70feffcfbdfbcf2f2cb74eedcd92767e9ff2a2e2e8ea14386909f9fcf269d3650151717b378f1620a0a0ae8d0a183cf4e09180c062c360b51b151184c461c258e4bee0f58b27c31afbef9aae697fac4a55c4e93e1d330db632ff9398bd94462a49dacc2429ce5252c66abfbd4c0c95d704ebb426f656565acdbb88ecac995a957e7efcb0146a3919884681292e3fdb2c90fdc7518de7cf34da64c994241813e4bd6068381bbefbe9b69d3a6919494a4cb189762b15868d1a205c3860da35bb76e949696b267cf1e5f962f8e066ec55d4468397264d0a76406c0b73a029fe1aee1ef13111111f4ffc73f78fcf1c769d7b6adaf86f5c8fcf9f319396a146774dc4cd5b46953a64c9942cd9a35751ba33cae3217f9e70ac8cfceffdb2fd439f3e730fda30f34af2b90d8b4070d06bf8cd1ecf9fa71b1c3c92f274e5174a96247ce5258f12aec5fab41947f30180c0cbf7d380307dc0cb81ffc517191ee24cac7c7fa2e74fcf871c68d1bc7561d37afc6c4c4f0ca2bafd0af5f3fddc650e2e8d1a37cf0c107cc9a358ba2229f3e8f0f0377e23e31207c4066007cc3083c047c0124fb62c0e8e868468e1cc9a733663062f870aa57abe68b61bdd2b06143060d1ac40f3ffcc0e1c3877519e3d4a953cc9d3b979a356b929292a2cb18e5393f2310196bc76030505a5cea2e17fbe947cc9c3553f3f192dbf5a7c16d2f623479f7c66c361aa9146527a7a898d2f28e361a4d50af0b1464c1e97d1a44fb872d5bb7905f904f8f9edd49a81c8fd56ef5cbeefef356ae5cc9830f3ec8c183da1ec5bc50ab56ad98356b16eddbb7d76d0ca5626363b9eaaaab183c78309191916cdfbedd574709e3803b8044dc4980f71b6a84572401d0df65c01cdcb767e9fef5b6582c0cbfeb2ebefeea2b6ebaf146e2e2e2f41e5295d8d858860e1d8ad16864cddab5ba54da2b2d2d65d9b2651c3972842e5dba60369b351fe3520c060356bb055bb48dd7df7c9dd973676b3e468deec3a9fb8fb118142e77988c462a45479257524271791b190d06a8dd113040a6c6a58377efe474d669ba75efe6d3d2c1172a2929e1f5d75fe7f5d75fd7edcdd76030307cf870de79e71d127cbcffc65b91919174ead489c1830763b7dbf9e5975f7c5160c880fb66d37ec032e45e015d4902a0af9b81054063bd07b2582cdc73f7dd7cf5c517dc76db6d444545e93da462edf3340000200049444154668c4623ddbb75e3f28e1d59ba6c996eebad7bf6ec61eddab574ecd8d1e7895171713163c68c61c9d225da766c3050e7fa27a8d973a4fb01ad82d16020292a92c2520785e52e0718a07a0b88b0c1910c55e3fdd5eeddbbd9bf7f3f3d7af4f0e9514e8043870ef1c0030fb072e54addc6a854a9123367cc60c4dd77fbf582296fd9ed763a75eac4d0a143b1d96c6cdbb6cd17f504aae19e0dd88d140fd28d2400fa30e1dee4f77f80ae3bed4c261343870ce18b59b3183c78303131317a0ea7ab949414060f1ac4e62d5b749b7e3d7dfa34f3e6cda3468d1ad4afef9bad187979793cf4d0436cd8b041d37e0d2633f56f9e44958e376bd7a7c140526424254e27f92597f8255fb509c4548643df6b7a7fc0810307d8ba752b3d7bf6c462f1cd91bfc58b17f3f0c30f939999a9db18ddba7665e18205b46bdb169bd58add66c36030e0743a832619b0d96c74ead4895b6eb9859c9c1c76ecd8a177ec36dc1b04e39125015d4802a0bd446036ee4b7c74d5ad6b57befef24b468d1c49bc97657a03554c4c0cc3860e2532329255ab56e9b624b07cf9728e1c3942e7ce9d755d123873e60ca3478fd6fc7224a3d942c3c153a8d4b28fa6fd827b2221d16ea7b4ac8cfc4badfd56aa079552e0d7f550a6ddefe663c78eb161c3067af6eca9eb4995f353fe6fbcf1866e6fb40683817ffef39f7cfcdffffe69d6c9683462b158888a8cc41211f17b32100ca2a3a3e9ddbb37d75c730dfbf7efe7c8116deb44fc8501b802f7dd280b803c3d070b37720a405b2d81ef70d7f3d74d8d1a3598f4dc730c1d32c4af9ba5f4b67af56aeeb8eb2e5ddfccead6adcbcb2fbfaccb6cc0b163c7183d7a34870e1dd2b45fb32d864677be496c1d7d4f751ccb3dc7c12c0f8ac4646e8745cf4389b6b7bfd6ac599377de794797131cbffefa2b63c68c61cf9e3d9af77d5e7272321ffde73f5c73cd351e7dbecce5a2b0b090828202ca8264560060cd9a354c9c3851d7afe56f8e0237019bf41e285cc80c80766e01e601dad6d1bd406464244f8d1bc7cc193368d7b66d483ffc016ad7aecdd02143f869db36f6efdfafcb18d9d9d9a4a6a652a54a151a36ace0a21c2fecddbb979123476a9ebc58622ad174e40744d76cae69bf177334fb1c459ed42888a90c97b5855f37687a89506e6e2e2b56aca04b972e9a6e989b376f1e8f3df618274e6857d7e0afaebefa6a16ce9f4fcb969e5fe6693018b044441069b763341a836679a056ad5a0c193284b8b838323232f4dc28188b7b66f55740bffbc6c3882400ea19705f6ef126ee0b7d7471fdf5d73377f66cfaf5eb4744847f0aa3f84354541483070dc26ab592be668d2e054a1c0e076969691c3b768c2baeb842f5d737232383d1a34773f6acb61b986d4997d174e487d893eb56fc61955cc08133672f7565d09f452682250a0e6afb72969f9fcfe2c58b69dfbe3d952b5756d557414101cf3fff3c1f7cf081e6c597ce339bcd4c9c308169fffeb7e28bb40c060311bf2502116633656565387d5798471193c944bb76ed18387020070f1e64df3e6d8f8a5e2002f74da90660955e83840b4900d489003ec65dca5297d7f1e4e464de7fef3d263dfb2cb1b197aeec16aa0c06035776e9428f1e3d58b67cb96ed70befdebd9bb4b434dab56b4762a2b26b6bd3d2d278ecb1c7343fc910119540cb7f7e76d1bafe7ac82f2ee1f8392fa7f47f59a8798d00709fa058b468118d1a35a256ad5a8afad8bb772ff7df7f3f9b36e9377b5ca3460dfef7edb70c193c58b3d939b3d98cdd66c362b1e072b9027e9f40747434fdfbf7272525858d1b37525858a8c73006a0075007f7be80c0fea204304900948b02fe070cd46b808137ddc4ecd9b3e9d8a1835e4304955a975dc6b061c3d8b173a76eeb8dd9d9d9cc993387c8c8485ab468e155dbb973e7327efc785d3694b9ca9c5c76f5bd18bc2cf2a3d4a9bc02728abc9cca5d3f1d8af5d9a3e5703858bc7831952a55a24993265eb54d4d4de5b1c71ee3f469fdee9ce9d9b327f3e7cdf33a364f994c266c562b56ab1587d3e9cb52bd8a346ad488c18307939393a3f906d80bb406ba00739112c28a4802a04c32b0187716aab99a356b32e3e38f193b660c5191917a0c11b422ed766ebbf55662626258b56a952ebf089d4e27ebd6ade3d75f7fa553a74e1e1d477bfffdf779edb5d7f45bb375951157af03b624df94343e9ae3e1faff7979a7e087cff40b0870b95ca4a7a763b15868d3a6e29b04f3f3f3993061021f7ef8a16e53fe111111bc3879326fbff596e2297f6f988c46f78c404404ce004f046c361bbd7af5a259b3666cd8b081fc7c6d3789fea62eee8bd56603ba0c10ca2401f05e5d6005ee1dff9abb79e040e6cc9eedf5db673831180c5c71c5155c73cd352c5fb142b7eb4cf7eddbc7b265cb68d3a60d952a55bae867cacaca983c79329f7efaa92e315cc8125785b8fa97eb3e8ecbe5627f56b677c7fb7fdde0fec707366dda446e6e2e9d3b772e77aa7dc78e1ddc7ffffdba5edf5bbb766d667ff71d370f1ce8f30db9269309fb6f7b04027d462025258541830671f2e4497ef9e5173d86a80af4c73d13e0b7bb8d83912400de6989bb20451dad3b8e8a8ae2edb7dee2f94993b0d96c5a771f926a54afceedc386b177ef5e76eed2f6badaf372737399376f1e313131346ffee79df74ea7938913273277ee5c5dc6fe9b3227953bdca8fb3079c5259cf076fdffa73970e6803e015dc4f6eddb3971e204ddba75fbd3c3d7e572f1e5975f326edc38cd37615e6840fffecc993387fa3ebe5fe2afcc663391763b26938952c7a56f9ff427abd5cab5d75e4b4a4a0ae9e9e97adc2d90847b397601a0dfbdcd21461200cfb5c47d5da5e6c7fcdab46ecdfcd4547a5d7db5d65d873c9bcdc62d37df4ca5a424d256aed4659394d3e964eddab5ecdebd9b0e1d3a60b7db71381c3cfdf4d32c5ebc58f3f1ca537aee34d5ae1c86d1ac6f85bc537905e47abbfebfee0328d1a784737976eddac5912347e8d1a307068381acac2cc68f1fcf679f7da6db6639abd5caabafbcc2cb2fbfec97ebb4cb13f15b2200e8b6dca185468d1ad1bf7f7f323232f4a8ef1187bb72e05240bf339e21441200cf34c5fdf0d7f4263f83c1c0c30f3dc4cc1933541f710a771d3a74a04f9f3eac5cb58a2c9dae17fef5d75f99376f1e55aa54e1fdf7df67f9f2e5ba8c532e978b983a6db15752b613de5347b273cbbf10e862723361f317fa0574097bf6ece1c08103389d4e1e79e41176ecd8a1db58292929cc9d3387fefdfb07640d0e83c180c562c1f6db46c1403d31101717c7cd37df4c7e7e3e9b376fd6bafb68dc77b02c024e6add79a809bcbfc581a701eef3a69adea71b1d1dcdf40f3ee0a61bf59fd20d27e7ce9de381071fe48b2fbff47728baa8def54e6af77d54b7fecb5c2ebe3f74ccbb4a743b16c3eab7758b2910dc306000efbff75e5095dc2e2c2a222f3f3fa0f7072c59b284471f7d548fa3bda780ab809fb5ee3894f8e7decde0511f5889c60fffba75ebb272c50a79f8eb202626864f3efe9877a64d0ba8295aade4ecd3b70aeab9e212efcbd01e0bdda26c76bb9d69fffe375f7ef145503dfc01ec361b4909094406f049a2debd7bf3dd77df91a2fd5e8a64dc4b01da95f70c41920094effc6effea5a76dab3674fd6ae5923bbfc7576f78811ac59bd9ac68d75bf89d9a7f23377e128ccd5ad7fafd7fe018efda47d2001a051a346a4af5ac53d77dfedef5014331a8dc44445919890a0eba5576a346cd8903973e670e595576add7535dc4bb7badecd12cc2401b8b8aab81ffe9769d9e9430f3ec8bc3973485258654e78a779f3e6ac5bb386db87e97e31a3efb8cac83df0a36edd7b5dfc27fb081428df7311a8275e860d1dcaba104ad423cc6612e3e37fdf28186862636399316306c3b4ff59ad897b3f80a6fbb742856c02fcbb48dc457e9a69d5a1c964e2ad37df64dcd8b1188d9273f992c562a17ffffed4ad5b97152b56e871fcc8e72cd149c437eaa279bf652e1707b2b2bd6bb47f0d1cfa5ed17846a39135e9e9ac59b346d72a7dde888a8ae29d69d398307ebc4705a08289c160c06ab1608988a0a4b434e08e0c1a8d46aebefa6ae2e2e258bd7ab596f12501dd8159803ef73e0729791afd9911f80cd0acf6aecd66e3f3cf3e63d4c8915a75291438ff46f7d7b3fcfed0a3470ffaf6edabb87dce7e650fdc8ae416157bff4bf7a8f2e9ffe6cd9bd3ba552b562c5fcee51d3b2aee472bcd9a3563dd9a35dc71fbedfe0e4557168bc5bd3720406703468c18c1b469d3b44ec03a025f0181b90ee2279200fcd9abc00d5a75161f17c7bcb973b961c000adba142a346ad48835ab57fb754d7740fffeee5b1d5524000527f6529aaf7d919b5cafaf7175a9da00d8bd5b370092121359b86001d75e7bade2bed4ba7bc408d6a6a787dc9e91f2188d4662a2a3898b8dc51880471afbf5ebc78c1933b42eafdc17784fcb0e839d24007f180d6876beaa6ad5aa2c5bba946e5dbb6ad5a5d0c0f95ddd3367ccf0f9ed8a77dd7927b33eff1cabd54a8feedd9577e47291bbff07ed02fb4d4ea1970940d64128525e79f5c2af41545414df7efd3543870c51dc9f12313131ccf8e493903d3552119bd54a5262229600bc62bc73e7ce7cfdf5d724252569d9edddc0635a7618cc240170eb0bbca5556775ebd665f5ca9521b3812814dd7acb2d6c58b78e36ad5bfb64bc471f7984f7de7d1793c9bdeda67efdfad4a85143717f5a2f0338cbcac82ff6727f848addff2693e96fbbbe232222f8cf871ff2e0030f28eed71bad5bb562c3ba75dc76ebad3e192f50198d4612e2e303f2e2b166cd9af1e5975f929cace91ebe5780de5a7618ac2401709f13fd028d3644d6aa558b258b1651bb766d2dba133a4a494961d5ca958c1e3d5ad7ca6ee3c68e65ca4b2ffd6d0c35b300b9fbb44d00728b4af07acb958af5ffd6ad5a5df45cbdc160e0d5a95379e4e18715f7ed89fbefbf9fd5ab5651bf7e7d5dc70926d15151c4c5c6065c95c3860d1bf2d5575f51b56a55adba34e1fe9d1ff6dffc704f006cc097408c169dd5a85183c50b1752ab96bea55a8576ac562bfff7da6b7cf9c51724262468deffb8b1637976e2c48bfe5977150940e1a90394e49e52dcfeafbc5eff77b92073bbe2f12afa6f7f79ca141e7de411c5fd97273121812f66cde28dd75fc76ab56ade7fb0b359ad24c4c707dc69a5949414befaea2baa54d1ec2a9604600e1afdee0f5681f55df6bdd7004de680ab56adcae2850ba9574f6a4e04a301fdfbb365f36655bbf3ff6aec9831e53efc41dd0c00a0e93e00afd7ffcfec87e23cc5e379f2df3ee5a59778fc31ed966bfbf5ebc796cd9bb9f106cdf6f986a408b3d9bd2f20c08e41d6a9538759b36669b927a029f0ae569d05a3704e006ec1bdf14fb5e4e464162d584083060db4e84ef849d5aa55f9eedb6ff9e0fdf7898a8a52d5d7b31327f2dcb3cf5ef233b56bd7a64e9d3a8ac7d06a1f80a3ac8c8252dfadff474444d0b973678f3efbe2e4c93c356e9ce2b1c07defc687d3a7f3bf6fbed1721a39a4190d0612e2e202ae8c70fdfaf5f9f4d34fb5dcc03b1418ae5567c1265c13807ac0742d3a8a8989617e6a2a4d9a34d1a23b1100eebce30ed6a6a7d3b46953afdb9a4c265e9b3a957163c77af47955fb00344a00dce7ffbd6ca462fdbf5ddbb6c4c4783ef33a71c2045e7af14545d3d2e7cff6875435481f8a898a22d68bef952f346bd68c4f3ef944cb2a926f0361f90b3c1c13000bee75ff38b51d99cd663e9b3993562d5baa8f4a0494264d9ab07eed5a1e7ce0018f3745252727337fde3c1ef06217bb9a7d0045670e539c7d5c71fbf3bcaeff5fe684e3ca2f5953f2dffcd8a38f32e7bbefa8e4e1f4afd168e4d1471e61dd9a35346ad4c8ebf1c41fec361bf101b639b05dbb76bcfdf6db5aed5588c2fd4c08bb73a0e198003c0fb4d7a2a3d75f7bcdafc54b84be6c361baf4e9dcaea55abe8d5ab57b99f331a8ddc76ebad7cbf7123575d75955763a8df07a07e16c0ebfaffa7f6404981e2f194fe37f7eedd9b4d1b3772f3c08197fcc5dfa74f1fd6ae59c394975e0ad8bb06828df5fce6c0004a02aebdf65a265e628f8d975ae07e368495c0f96efa461b60131a94837ce4e1877979ca14f51189a0b163c70ee6a5a6b26ddb364e9f39435c6c2ceddab5e3e68103a95bb7aee27e9bb76cc99e3d7b14b5b52654c796a4fcce2a97ebb71300de2c011464c1d9438ac6b35aad1c3f764cf5daf2be7dfbf8f67fff63f3e6cde4e4e652393999962d5bf28febafa76143b901562f0e8783b33939949595f93b94df3df7dc73fce73fffd1a22b27d01558af4567c1209c120013b01168a7b6a3ebaebb8e6fbffefaf7a22e42a8f1c0830f32fdc30ffd1d864f74ebda95a54b96f83b0ca182d3e9e46c4e0e4ea7d3dfa100505656c6f0e1c3494b4bd3a2bb5db85f140bb5e82cd085d312c02368f0f06fd1a2059f7ffaa93cfc85667af4e8e1ef107ca6db6ff5ff45f032994c24c6c7633607c6bd3a46a39137df7c53abfa2b8d80e7b4e82818844b0250170dbea9d1d1d17c367366c01d8d11c1ad7bb76e01b5c14a4f6a363d8ac061341a49888b0b9824203e3e9ee9d3a76bf5bbf93134aa0f13e8c225017817f74e4f55de7ce30dd9512c34979c9c1c16c748ed767b405cfb2bb4713e090894d9d0264d9af0fcf39aece33301d3088325f27048008602aab7eadf71fbed0c1b3a54837084f8bb705806b8e28a2ba4fc6e8809b424e0965b6ee1a69b6ed2a2abce40c8178f08f504c00ebca4b693060d1af0fa6baf69108e1017d73d0cd6c6af0a8324271c994c2612e2e202e6fe80c99327939292a2455753d1a05e4c200b8cef987e9e00949f91c27d16fccb59b3bcaa5c2684b7c2616abc437b4dca6f8800144849405454146fbcf18616fb13aa004f691052c0f2ff774b3f55807fa9ed64ec9831346bd64c83708428df962d5bfc1d82ee32b66ef57708424766b339602a06b66ad58a7befbd578bae1e026a6ad151200ae50460222aaf7a6cd6ac99a6b79109519e858b16f93b04ddcd9f3fdfdf21089d45444410131dedef300078f4d147b5280a65039ed1209c80e4ff544d1fb5803db8ebfe2b62341a495bb1822b2ebf5cbba884b80897cb454a83061c3d7ad4dfa1e8ca643271f8d021921213fd1d8ad0595e7e3ef905cacb456be5a79f7e62c080016a8b1695e2be3a78af3651058e509d01780a150f7f807befbd571efec227b6fef453c83ffcc15d416ef1e2c5fe0e43f840745414b60038f1d1b2654b86a9bf093282102d0e148a09402d54deef5cb3664d9e7f2e24bfdf220085d3d4f882050bfc1d82f091d89898802814f4af7ffd8b240f6f91bc84db705f231f524231017818956fff2f4f9922bbfe85cf845302b064e9524a4b4bfd1d86f00183c1407c6cacdf4f06c4c5c5316edc38b5dd987057080c29a1b607200e3804c42aeda06d9b36ac5bbb362076b28ad077fcf871ead4ab87cbe5cd757cc16df1c2856151f848b8151717939d9bebd7185c2e17d75f7f3ddbb66d53d34d01501b38ad4d54fee7fff9196d8d44c5c31fe0f94993e4e12f7c66fe8205aa1efebd474ca452cd06aa623874b698ac0287c79f7716e7b3ebb3c7dd77092b903a7fbe240061c46ab51269b75350e8bf0bf60c060363c78e65a8ba6aae91c06860923651f95f283de922807da828fcd3bd7b779684c1712c113806de720ba9a9a98ada5a236378eca3cd184deaf2f85379a56ccbf46ec7f64f6f0f26ffd80e45e3a5a4a4f0cbf6ed8ada8ae09575f62ca50ecf134d3d0c193284356bd6a8e9e204ee674c48ac6385d21e807ea878f81b0c065ed0e62209213c525858c88a152b14b7afd7ba9bea873f40629419a397af02094d94dfeab76fdf3e76eedca9b8bd084eb131317e9f5d1d376e9cda18aa00fd350ac7ef422901b85b4de301fdfbd3b14307ad6211a24269696914a8382bddb07d2f4de230190c24447a97482434567777c182850b55b517c1c76c361313a5fa5256555ab468a1c5f2d33d1a841210422501a806f451d3c1534f8574c9671180d43c040d4613296d94bf85ff555294770940748d26586293158f174e271fc41fec763b168baa435aaa8d1e3d5a6d17bd716f060c7aa19200dc818a0d8d575d7515ad5ab6d4301c212ecde572a94a006a366c833d2641b37892a322bc6b603090d0a8abe2f1d66fd8c099ac2cc5ed45f08a8d8ef6eb52c0e5975f4ebb76edd474614465ad9940112a09c09d6a1a3ffaf0c35ac521844732b66e5555fdaf8146d3ffe759cd46a2addefd3a50b30f40aa02862f93c944b49f9702eebbef3eb55d0cd2220e7f0b8504a029d04469e3264d9ad0bb776f0dc311a2626a2be23568df53a348fe5029cabba9d9b8fa97638c505eee55aa0286af48bb9d083f5609bcfaeaaba956ad9a9a2e1a012d340ac76f422101b8594de3bb478cf0fbce54117e941efd0388af524bf5d9ff8ba9e4e53e0063848db814e5f7652c59ba94929212c5ed4570f367b555b3d9cca041aa5fe2553d7b0241282400039536b4582c5afc2510c22b9999996cc9c850dcbe61076da7ffcf8bb199b09abc4b86d59c06c8c9c961ddba758adb8be016613663b7d9fc36fed0a143d5de55709b56b1f84bb027002980e2dd7bd7f7eb4772a54a1a862344c5162c5ca8aafa5f8376da4fff83bb2a58a2979b01139a7403153368a9721a20ac454745f96d06b672e5ca74eba6ea386b2340fba9381f0af604e05a358d87a92b0b2984226a76ff5b2363a8d554bf6baabd5d06b0c45626aa5a63c5e3493d80f066341a898a8cf4dbf8fdfbabaee9738d1671f84bb02700572b6d181313c3d5572b6e2e84226aabffa5b4e9ae49f5bff2485540e16b9176bbdf66017af7ee8d4ddd328424007e62047a286ddcf7baebd47ee385f09adaea7ff5dbea33fd7f9e92aa80894da42aa050ce6030f8ed58607474343d7baafa99ba8a20be542f9813803640a2d2c637dc708386a108e119b5d5ffeab7eda15d30e5f0b62a605475a90a28d4b1db6c188dfe791cf5eaa56a536d1c10b435e483390150fcda61369be925d3ffc2c75c2e17f3559c7dd7bafa5f7914550554711a40aa020a83c1e0b7bd00ddbb7757bb04d159ab587c2d981300c55957fb76ed888d8dd53216212ab425238363c78e296edfb0836f961b15550554910048554001bfcd02f8612f407272324d9b3655d3457bad62f1b5604e00141773d6e0362821bca6b6f25dfd7657691449c5a42aa0f03583c180dd6ef7cbd82a9f09b204e06371a8387f79952400c20fd43ce412aad6d6a5fa5f79fc5115b0b4b454717b111afc7522a083baabe0eba1623f9a3f056b02d00e77dd12af198d46dab66dab7138425c5a6666269bb76c51dc5eafe23fe551541550c571c09c9c1cd6ae5dabb8bd080d46a311ab1fae0b6eddbab59ac4c30004e54325581300c597ff346ad448d6ff85cfcd5fb0405df53f8d6fffab88a2aa808da52aa050cf1fe581131313a953a78e9a2e1a6a148a4f056b02a0782eb46d9b365ac6218447d457ffeba861349ef1be2a603251d515e7e6aa4e4888d061b15830994c3e1fb775ebd66a9a4b02e043f595366cd5aa9596710851a1c2c242d2d2d214b7afd7ba9baed5ffcaa3a82aa08ad300fbf7ef57754a42840e7fcc023468a06a8f8d24003ea4f83bd5a0bee2dc410845d456ff6be8e3e9fff3fc511550ca020b009b55f98912a5eaab7b3604e5a540c1980018803a4a1babfc260be135b5d5ff52da28df5ca796afab023a9d4ec56d45e830994c44a8bbaad76b2a9f0db550b831dd9f8231014800146d1335994c6a377a08e115d5d5ff1ab5f549f5bff2f8ba2a60eddab515b715a1c5eae359803a75eaa829476cc1fd6c0a2ac198005456dab04a952a58fc70c44484af8cad5b55ad6b3768e7df92d54aaa022636531673f5ead5d5aec38a10e2eb6500b3d94c62a2aae3fc8a9f4dfe12560940e564e553934228a1f6a29b06edfd7f6785b75501e31b5c81ad92f76ff2a3468ef4dbb5b022f0984c26cc3e5e06a85c59d5335c12001f50fc454e56f7cd15c26beaabfff97fcf8ab7c7013118a977c35318bc984e6ddcb8318f3ef28897918950e7eb19db64752f8955b48ac357823101505cc5476600842fa9aefe17006fffa0ac2a605ccae5d41df0b4474940ad5ab5983b7b36363f1cfd1281cde2e31980a4a42435cda3b58ac35782310150bc30141d1d74df1f11c4162c5ca8aefa9f8fcbff9647495540802a1d07d2f4ee0f88ac9272d13f379bcd0c1b3a948d1b36c8e63f7151168bc5a7cb422a2f23f2fdd945957c5f5d443dc55f64d900287c49cdee7f77f53fe597eb68ad529499ccdc12afdbc5d66b4fab87bf21f7d7cde41ef89192ece318cc114426d7e59bc977d1acbe3cf845f90c06036693895287c327e3a93c7910745358c1980028fe22cb14a3f015b5d5ff52da74f74bf5bff29caf0a58a66442c36020b66e3b62ebfef906efad676369a64d78228445582c3e4b00543e23826e0620189700bc9f8b3cdf3042715321bca2b6fa9fbf8ffffd9592aa801559b3ff9ca6fd89d0e4cb82402a67002401f001c531ab28f2208457d4dc6ce7efea7fe5f1b62a6045f69e2ac6a1684a4184135f57045421e81e304117b01081cee572b170d122c5ed2f6bdcceafd5ffcae37555c00a9438ca58bd374fd33e45e831994c521f4227920008a1b12d1919415dfdaf3c4aaa025664c5ce5c4dfb13a1c924b3b7ba90afaa101a0b85ea7fe5f1b62a6045b665166ada9f084dbeae08182e24011042636a128084aab549aa71f173f38140eb7d0039854e761d2fd2b44f117a4c2693bf430849920008a1a1cccc4c32b66e55dcbe61fb5e1a46a3bd580555012bb2e0971c4dfb13a14712007d480220848652e7cf5755fdaf7e8054ff2b8fd2aa8097f2c341e5c7254578903d00fa90afaa101a5ab070a1e2b6d6c8182e6bd241c368f4e1f5e54015c8cc2d21bbd0a9699f22b4c8116e7dc85755088d141616b272e54ac5ed53da74c7640efc6255e7ab026aa5cc050bb6cb6900513e4900f4215f552134b262c50a75d5ff0278f7ff85a42aa0f0354900f4215f552134a2e6f21f83d1444aebc0abfe571ea90a287c4d8a01694f1200213410aad5ffca23550185afc9e35f7b920008a181cd5bb68464f5bff2e8511570f90ed907202e41660034270980101a58a062fa1f8267fdff425a5705dc7e5caa028af2c91280f6a4bea2101a509300047af5bff2244599f9354bbbfe720a9dec385e4c74e9490a0b0b898f8fa772e5cada0d20829a2400da9304400895323333d99291a1b87d30befdc31f55018b9dea37ef95e49ee458fa4cae7c792179d9a77ffff7356bd6e4f661c378f8e18749888f573d8e10e20fb20420844af3172c5055fdaf418057ff2b8f565501b37e59c9d6ff1b48e69a997f7af8031c39728497a64ca1759b36ac59bb56f55842883f4802202580adda0000106c49444154844a6a8eff592363a8d5f4720da3f12db55501cfee4c67f7e7ffc25174e93a00c78f1fa7ff80017cffc30faac61342fc2118138062a50d2d166d372d09515050405a5a9ae2f6f55a77c3680ade95383555011d0539ecfbf6595c4e87479fcfcfcf67f8881114172bfe152084b840302600c79536ac56ad9a967108415a5a1a8585ca77af07faed7f15515315f0c4a66f28cd3be3559b3d7bf6f0f537df281a4f08f167c19800a42b6d7865972e5ac62184aacb7f0c4613296d82a7fa5f799456053cb37db9a276333ffd54513b21c49f056302b00f58e56da36e5dbb52af5e3d1dc211e1cae572a95affafd9a86d5055ff2b8fa2aa802e1705c7772b1a6feddab56467672b6a2b84f843302600004f00259e7ed862b13065ca141dc311e1684b46069999998adb07fbf4ff794aaa02baca9c1eaffdff556969294b962e55d45608f187604d00be074601155e226e329998f6ef7fd3ae6d5bfda3126165fefcf9aadad70fd2e37f17e36d554083c98c394af9b97eb595178510c19b00007c02f4057e2def03b56bd766eeecd9dc71fbed3e0b4a840fb5d5ff2ad5acaf6134fea5641f404ccde68ac75bbc78310e87b2190421845bf09e3f725b0234066e04fa00f5aeecd2a56bddba75e9ddbb3703faf7c76ab5fa374211928e1d3b1696d5ffcaa3a42a607ca3ae9cddb546d1785967cfb26efd7aba75edaaa8bd1022f8130070d705f8e2b77f58be6c995c2afe9b8cad5b99317326e9e9e9646666121d1d4de3c68d19d0bf3f43870c91ba082a2c58b85065f5bfd04a00ce5705ccccf5786b0e094dba7160ee4b8ac75cb0608124001e3877ee1c1f7ff209f3172c60efdebd94969652b3460daebaea2aee1e3182ba75ebfa3b44e127c1bc0420ca515454c4fda347d3a97367a64d9bc64f3ffdc4a953a73870e0000b172ee4befbefa765ebd66cfafe7b7f871ab4d457ffeba8613481c1dbaa80d6f86a44566da8783c35df8370316fde3c9a346dcabf9e7882b4b4340e1f3eccf1e3c7f9e1c71f99faeaabb46cdd9ae7264da2acacccdfa10a3f900420c4949494d0ff861bf8ef471f5df287fac081035cd3bb37ab57aff66174a1416df5bf9436dd83bafa5f799454054c68d24df178bb77ef66cf9e3d8adb87ba999f7ecaad830671eaf4e9723f535252c28b2fbdc4c851a37c1899081492008498f11326b06a956765128a8a8a183c6408a7cf78578d2ddca9adfe176ad3ffe729a90a98d8445d212435859842d9cf3fffcc3f1f78c0e337fb4f3ffb8c0fa64fd7392a116824010821870f1fe69d77dff5aacde93367983a75aa4e118526a9fe573e6f4f0344d76c46447492e2f152551ec50c55139f7bceeb3b13264d9a444141814e11894024094008f9fa9b6f2829f17c13d6799fcf9a256b801e72b95caa1280cb1ab70b89ea7fe5f1ba2aa0c1484263e51bf9d6ae5dcb99ac2cc5ed43517676368b162df2badda9d3a759b65c597966119c240108213f28bc2af5e4c9931c397244e36842d3968c0c8e1d3ba6b87da84eff9fa7a42a60828a6500a7d3c9b265cb14b70f451919199496962a6abb69d3268da311814c12801072ead429c56d8f9f38a16124a14baaff55ccdbaa80f1f5afc068565eaf43edf724d49c38795271db932ada8ae0230940085153194daaaa792635355571db50abfe571e6ff701182d7662533a281e6fd1e2c58adf784391fc1e109e920440080f656666b2f5a79f14b70f95cb7f2a72be2aa037121b2b3f0e989393c3faf5eb15b717225c4902208487e6a5a6aaabfe1762e57fcb73be2aa037129a7403839745042e20a70184f09e2400427848cdee7f6b640c9735513ecd1d6cbcad0a6889ab4a948aaa80f3542ccd0811ae240110c2038585851e1758ba9894363d42b2fa5f79945505547e1a60fffefdecdebd5b717b21c2912400427860f9f2e5aa8aa434681ffabbff2fa4a42aa09a0400e46e0021bc250980101e50f37031184da4b40eddea7fe5a9e46502105da32996d8ca8ac793e3804278471200212ae072b958b478b1e2f6a15efdaf3c495ed603c06020bed1958ac75bb77ebd540514c20b9200085181cd5bb6a8abfe1726c7fffeca1661f0be2aa08ae3804ea793254b96286e2f44b8910440880aa89d5a0e97e37f17e37555c00657608cb0291e4f960184f05ca8240056e06a60f8273366909696e6f54d58429467818af5ff84aab549aa5e4fc368828bd75501236cc4a9a80ab874e952a90a288487823d0188035e064e01cb80ff8ebaf75efaf4ed4b8dcb2ee399f1e3c9cdcdf56f8422a81d3b768c8cad5b15b70fe7b77f50561550cd3240764e0e6bd7ae55dc5e887012cc09403d6003f02410f3d73f3c77ee1c535f7d952bbb75e3c081033e0f4e8486f90b16a8abfe17e2b7ff55445155c0c6521550085f08d604201e580834aee883bb76eda2ff0d37909393a37f5422e4a8adfe57ab69470da3094ede5705ac4254b50a7fb4cba5e67b26443809d604e039c0e3baa1bb77efe685c993750c4784a2c2c24256ae5ca9b87db855ff2b8fb2aa80ca9701f6eddbc7ce9d3b15b717225c04630210038cf2b6d107d3a7939797a743382254ad58b1425df5bf76e155fdaf3c8aaa023656573849660184a85830260057035e9f132a2a2a52f53627c2cfd2e5cb15b735184da4b409bfea7fe5f1be2a60132cb1c98ac75b9196a6b8ad10e122181380ba4a1bee97cd80c20b6a7693d76cd4362cabff95a752b4771b0131184868d455f178ebd6ad53b579538870108c0940acd28672245078e3cc99338adb3a4a8a401e40bfb39a8d44594c5eb5719616291e2f3f3f9fa222e5ed850807c19800283e1f246f04c21b46a3f21f8fcc7ddbd8b9719186d1043747998ba2d2328f3f5f707c0fa7b72afffa190c06f97917a202c1980008e113cd9b3757d53eedf3a994391d1a4513dc0e9e2dc6e9c503f9d0927f83cbf384e1af525252888c8c54dc5e887020098010e5e8dd4bdd253e59c70eb06df5771a4513bc4a1c651cc92ef1f8f3e70efdc4d91dab548dd9ebeaf02ec0248427240110a21cc3860d2326e66f4526bd92fed59b384b3d7ff885a20359c538cbbc78fb5ffc96aaf10c0603f7dd7bafaa3e840807920008518ed8d85846df7fbfaa3e724e1de5c7259f691451f0292c2d2333d7f304287bf73a72f7ffa06acc1b060ca0499326aafa10221c480220c4253cfed8632426a83bceb7f69bb72929ccd728a2e0b2ff4c111ebffcbb5c1c5ef68eaaf14c261313274c50d58710e1421200212e212e2e8ec71f7f5c551f05e7ceb269fe7f358a2878e4959471f29ce757f39ed9be8cbcc3db558d396ce85079fb17c24392000851817f8e1e4d8d1a3554f5b17ecefbe4e728af2b108cf69d2ec2e397ffb232d56fff168b85a7c68d53d58710e1441200212a60b7db19f3e493aafa2829cc67c39cf7358a28f06517393993eff9dbffa9cd73283ca9ae52e7a851a3a853a78eaa3e840827920008e18111c38753af5e3d557dfcb07006b9a733358a28b01d38ed7915be3247314796ab4b8ea2a3a319f3c413aafa1022dc480220840722222298307ebcaa3e1ca5c5acf9f66d8d220a5c67f24b395be87901a4131bbea638fbb8aa311f7af0412a57aeacaa0f21c28d24004278e8b65b6fa555cb96aafac858fe15678eeed328a2c0b4ff4cb1c79f759614707495ba0d9209f1f13cf4d043aafa10221c49022084878c46a3ea2366ae3227abbf7a53a38802cf8973a59c2b767afcf9ccf41994e665a91a73cc983124c4c7abea438870240980105ee8d7af1f9daeb842551fbfac4be5f8819f358a2870b85c2e0e9cf17ceddf919fcdb1f499aac6ac56ad1af78e1aa5aa0f21c29524004278e985175e50d781cbc5aa59af69134c003976ae94022f6efc3bb2f23f388bd515487ae6e9a7e5d21f2114920440082f5dd9a50bd75c738daa3ef66e4ee3e0cf1b348ac8ffca5c70d08bb7ff92dc539cd8f895aa31ebd7afcf9d77dca1aa0f21c29924004228f0e20b2f6034aafbf1591942b30047b28b2972787ee1cfe165ef5256eaf966c18b99386102111111aafa10229c49022084022d5bb6e4c61b6e50d5c7919d3fb077739a4611f98fa3ccc5c1b39e3fcc8b4e1fe2d48f73548dd9bc79736e1e3850551f42843b49008450e8b9679fc56c36abea23edd39771b93c5f370f4487ce9650eaf4e2badfa5ffc655e6f949818b99fcfcf3aa6760840877f2132484420d1a34e0f661c354f571f2d02e76ac9baf5144be57ea747138dbf3b5ff82e3bb39b36d99aa313b77ea449f3e7d54f521849004400855268c1f8fdd6e57d547da6753713a3caf9b1f487ecd2ac2e9c504c6c1856f82ca198fe79e7d56557b21849b240042a850bd7a75468d1ca9aa8fec9387d99af6b54611f94e51691947724a3cfefcb95fb790bd7badaa31fbf4e943b76edd54f521847093044008959e7cf24962636355f591fed59b9416176a14916f1cc82ac6e5f9d23f8796fc5bd578068341defe85d090240042a8542929898755d6a2cf3b7b921f17a9ab8ae74b05a5651c3fe7f9dbffd99dabc93df0a3aa316fb9f9665ab76aa5aa0f21c41f24011042038f3cfc30c9c9c9aafa58fbbf7728cacfd128227ded3b5de4f9dbbfab8cc34ba6a91acf6432f1ccd34fabea4308f167920008a181e8e8689e54791f7d517e0e1be77da85144fac92d72722acff34d8ba7b72e263f7397aa3187df75178d1a3552d58710e2cf2401104223a3468ee4b2cb2e53d5c7c679ff253ffbb44611e9639f17257f5d4e078797bda36a3c9bcdc6b8b16355f52184f83b490084d088cd66e3e9a79e52d5476971016bffa76eba5c4f59050ece16383cfefcc91fbea3e8cc615563de7fdf7dd4ac5953551f4288bf930440080ddd71fbed346edc58551f9b977c46f689431a45a42d6faefb2d731473244ddd92464c4c0c8f3ff698aa3e841017270980101a32994c4c183f5e551f4e4729e9dfbcad5144da3995574a4e91e7257c8faf9b4549ce0955633ef6e8a3aa37570a212e4e1200213476d38d37d2a17d7b557d6c5bf51da78fecd128222db8d87fc6f30b7f9c45791c5df591aa112b2525f1e0030fa8ea430851be604c0014df22525616dc97ae88e060301854cf02b8ca9cacfae2ff348a48bdccdc52f24b3cffd13b96fe098e0275471ac78c19434c4c8caa3e84f086ca6784ba1baefc40dd5566fe51a0b46161e19f2bade5e7e753521a9c35d82fc6e1f07c73d65fe59d3bc7d9ec6c0da3096f1d3a76a443fbf67cffc30f8afbd8b97111877ed944e5dafe3dfe56e682bd47f370947af6cbd1519043e69acf548d59a54a156ebde516f93ba9404181e25f9114171707ecd73c272747d5efb88b311a8d7f4a328b8a3cdfe37211f9aa03f23183bf0350603410b8dba485104284a3fb80f7fd1d843782710920cbdf01082184107f71d6df01782b1813809dfe0e40082184f88b1dfe0ec05bc1b8046003f20093bf03114208210007100d787e54260004e30c4011b0d7df4108218410bfd94b903dfc2138130080a5fe0e40082184f8cd627f07a044b02600dff83b00218410e23741f94c0ac63d00e76d06daf83b08218410616d33d0cedf412811ac33000013fd1d80104288b0a7aeeca71f057302300ff8dadf41082184085b5f020bfc1d8452c1bc04001003ac065afb3b1021841061e567a00ba0eed20b3f0ae619008073405fe0477f07228410226c6c01ae21881ffe10fc09004026d00df80fe0f2732c42082142970bf7b3a62bee674f500b850400dc3704de037402e6e2aeca2484104268c1897bdfd995b89f354177f3dfc504fb1e80f254057ae3fe6635026a010940dc5f3e970784ce7dc0420821bc1181bb84ef79f940097006d80f6c07b6e1dee877d2e7d1e9ecff017d9afc3c940e23b40000000049454e44ae426082, 'S', 'V', 'P', 2, 1, '2024-10-22', 1, 169, 1, 7, 0, 6, '2024-10-27 09:12:11', NULL, 0, 0, 'Active');
INSERT INTO `resident_detail` (`res_ID`, `res_Img`, `res_fName`, `res_mName`, `res_lName`, `position_ID`, `suffix_ID`, `res_Bday`, `marital_ID`, `country_ID`, `gender_ID`, `religion_ID`, `occupation_ID`, `occuStat_ID`, `res_Date_Record`, `occupant_ID`, `res_Height`, `res_weight`, `Status`) VALUES
(2, 0xffd8ffe000104a46494600010100000100010000ffed008450686f746f73686f7020332e30003842494d04040000000000681c0228006246424d443061303030613666303130303030656230333030303037343037303030306437303730303030363830383030303065623062303030303736313030303030313631313030303061643131303030303733313230303030336231613030303000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc200110800e1009603012200021101031101ffc4001c0000010501010100000000000000000000000102040607050308ffc4001801010101010100000000000000000000000100020304ffda000c03010002100310000001b528bd1414841c534529a8e4a4472220128d7a179a391bcc705314350010053295c98385dc6d37d39f4cc750acf1758d6d385dfe9968a8cc47b6982952d4586aa949126938ceabc6b2f9fbcf87262e7a72b89d59114fd0b8fd9f4f9bcd1ec44454660a04b505005050a124d93e4f552ba3d8f19a575bb291caed71ac1d399e7e9e7df82014804ca0194001428f1f68bc7b48e54ce4f2f423f91dab1d2f554f4f9519e8cd0c150900d3280a50014023c62c319fe536b1e5f52caaddcf589c9cfe87a7ce35cd6622a1201a65014b0abb49c975acf2fc4bd74acd7742e9d4d32ac6b7b753ec8e716e9f0636ad43b789769b514add85810a9ac7d65680df176423d9bab9d563e80cd34d0e46436ca826efe5ed1f37cf11d1372a79b425e9b92e82b700354cccaf3939258f832c767e09c8f3faa55db32b4f6e14fa8ce8dae7bdaf37d3360622e88ec6995f60afcaada48a74685c758e67d3cbcfccbbbed556f3e97bbc532f1d738f3fc3d0374853ebe58f313c410105f2628da815d37707c5f1b20c7788ac8f191175b7d2acbb7327382dee9572a9d642d951310876ab8ee4757408234a8db8bf453f36df714186f08b3f578ef5afbbc1e5b8f3e619ed54cdb68a40512d3ccf3d71f271e6b28f52b6962b352e35b0e2a5e40077a6f334a5c7fda3ea65d5f4f6abe3bf4f379b58c8a787b74e0f5f3bd57649c69eb37c9ad0325d3730cc2201dbd2734d3b4e37f40601bdd55f23d3b2ecde9e62916daa5cdad12d4d4d02a600dc6cb4322005d0d5034e3bb20555f390214332da02afc06e402bffc4002f100001030302040504010500000000000002010304000511101206132131142022303223343541331524254250ffda0008010100010502ff0098648032ef4b4ecf52a75d03a8f21e68ad7316537e45f66e73ca6bd1e01ca28b64619076db1d45fb3a0ab4e4982f5ae7f8bf72501391da6d79f05a41a54e874ed4c8c8eb5c3cd28cef73c3a7f526f035b930b4fb8da2c3303488ca352fcabe7205e6bd91a474c9f9c46dc7507412daae02dc4f6b8c929b3ed98d6dc88b60853072cb428427de5b3cd9e8984f6d55767316852a5b4aadb2aadab64a4e23628e7bbd889b12a9401869b46ea2a75d57db753222e53ee8609c01a82f23a7aafb526631192d92967ce7d8a911892bc13ce9da6078628afef2d17cf225331e9fbd2549b84a774e126cb6ba82a1e2a1ef8cac9b521c165a5748cd8bac86963dd23bd59ca68badf261354aaaaa4b8442caaf6b3b1e1edd7e624bf11d3ae1a80e4769e6949d91e890a5d1156a24e759a8d7342a12421d0cb683ce2ba7454df782d73e722612eb212340b5368edd29ceb528b7484a55c26691ce9695cc3d2fd2395149696a2daa4be2dd91a05b3c0466e95c4ef6e7edcf23377a717027f2a77b2ad0d581fdc3a5f4f7dc3bd59196dc9e5d9c90d3541395c38cf7306ece6fb8bdd0edeef3e14f2d904be4946bebfd27c6d0e72e455c64f858a5932a88ff0087924ff301f2699a4926e1c23f538e6f75cab07e26f85b6d2bf25e894bdbfd629ec72316e62ef25c9136b75292d31702641e9ed6222ab94c26c611697b58ff0015c4a78b4a7c9c5a5a5d23a211d89d528e459555a55aeab4ba593d6337e9daabf56ff45ab8acb16e1afdfee934b5cc412cd2ad1d29674da98b17c6f65b6ccb5fa6ba5b78b4ff00b4fd6a95d29a8e0e25669326b4299a5f8d99701c447fe3174ce2dd788de32a5b5c891a376f75d84899ac526da7448085b332b25ac99454ea294b568f87119fd2d1154ed525796d5c6dedcf47987193a71cd9661ec985ae5d38cb6e5000825491db274b3fc2fc7992b43de29e2ddf0218e2dbd7cc0cc36c093b211654bbc2171ff24efbdd2cebd6f918b38e8d0a91b2bb218954991b52ecf29c81354addd0be288a7509848d1d7455da8e96f729170b6be86ca23ad656ad969104b8383159396cd3d33abc7bdca56cd00048d6df6ce51699ab99ec81adbbbc25fa43de275678bcb6c0cf920b32a53115918e2ba674bc7e3b5b6afd487fc1501d4589c607b9ad52ac2efafcb78fc726b0ff009637da8fc6d9f63c53fc3e4b17dcebffc4002111000104010500030000000000000000000100021130031012202141133140ffda0008010301013f01b4095f114584518c74827d1d28442c91b40e78dde209c899e60c1d1e6290e2280c25111437ef4c94ef28d9135631eac83da587a590f51fa3ffc4001f1100010402030101000000000000000000010002101120312130410312ffda0008010201013f01ed2e45e83ba1fba8684dd74daf9dde7f46fb010159bb50d17d057e414045a181704504241970e21838c44daa086a2b006421a8f31a444790e3e26aac0c0e5009fb4dc4c35353b703030d4d4edc09ffc4003710000103010406090302070000000000000100021103101221510420314161711322303252627281b12342a114c1334050738291e1ffda0008010100063f02fe985cf20346f2a346103c4e5354b9feeb00f1ee81a555edf750fef8fcf6c6952fe0b7f2b0c066bae2fbb8a8e8829a2e23815d5747ee9cc7b61edc70ed2a31a60b842b8338586ed4955e7737b5a987996d5b4598bc28daabc6f8ed58f22090bab4ef945bfa7753852369c102285f73b6927623d23400535ac743ce298e3b48ed2f6fb36628702a614042eee00281da1161338a8e9ddcd3e5e4deb1cffb8f6d0baca3a227dd1bb38f1fe430da143b0365e7980babb3b6fab504f84625383416d16d33b77950e18aea3dca00738abd53177e027d279faac716919e3d97d578072debe8d3f7728354819370b2bd58ea9800a37f019e4a1fa553f641d40b5cc3bc22f76efca7bde7ea39d78a879e91be6589e8dde652366b368d17438f788524c9d4a2cdf1253de1f7594fadd18fb900cda51acf7b85ff00b57495310dee855064e364950d718515a079820e69906d738ee128bdfde719d4a34f32a155a876c40e69ad3b2c015439b8d936421c2d14dbdea9f0873b03e03199b94d5aee3e91083c3af37761653a03bad178aa6e3b098b1eec85a05a695aec98036c68ab8c0240361387342e4c0de84ed55cf9a148546a789ab487790dbcad6bac73c77b6379abcf7126ca75722b03815e24245d6a09e73713668fc9693e98d60530f04e6cc52a66e81a81a648cd0e8efb8f1529efc9b36e8fe95538903f3646a5d76129d49fdfa6512713afa4bbc96e8ffdb09a3c4f08eb1738c3eec1e28eb3555f3168fcdb47d03e168c33275b158544eb21a24ea339aa43c553f6b697a07c2d0a95ebbde92aa52f098b7f51485e009916ff00d45af175c3682aed36971e09d57481150886b725168e6b4467a8db423209b5609348c9032de855a6e01d183b7145af6e22cd1e935c7a4738bc81959b56ef75f529b1fcc28635ad1c04595879cfcda7d4a937c34ec0b47c97029cfa4e2c0edacfb79a07c4d57829de17c2e68b1ac2fbba95fd66d70e29ba48c59174f0b1a1aa9176c8c55dda3728de87016cf150dda9acfbbee3c6d2e3b0629eff00119b5c516bc4b48c428579eba47c74421a89a6ff006464ca2eb03cb4dd3b0abad0493b936ad73d7dcdcb52b9f2c6a3d1e567faf80a88cea7ecb1d4680ea6da4deae2b0c5de2d5abedf3a8e4ff49b299cc2d1a3c4756a33313ad57dbe756a7a4d947d2b47e6757fc4ea7fffc40027100100020103030402030100000000000001001121314151106171208191a1b1f030c1d1e1ffda0008010100013f21fe77a313ad4a952a54ae96724af4bd18c3d43c52d4c12e251dad7c132717b62568fbe50d07675f1288806534fe5168b704c70a62fed0776b1e48cc2874cf9a34888c9ed646180ace8489e84f5e224a78b98c1dc25fd28c0e8058cd715d7247db69fcb1fe4e3859f22e69687996e2de18ccdc454de2e23daed144e07e4f47f8d5954092a5aa788f0b4ab5d7c42e77812e38347f2a8b1b2032ce4e8fea690217f90b9e83da5676544de2b7097f1f09a4256289c948e0a7300740288c75e8fa36f45475981944ef8e8f102a3acb85b1891cb302c2418417b1d5d7d4fa52d5e49950bc66268a9df5f998c03ab265a5e3abfc86b35170c744d99c140126d5ef2be31eaf43ea3ae183f604c2e94d4885b2e34efdc4797c0993265224c128e7c0307e2ba3347ab58078472bda10475e5fe899d175c0fa8672c023e5a177f996a00cdb119d8b6b359bdc89bbf334bed06eb889a6c31b2b0d038f57cca21f8347cca020adc8c7d0b45cc6643623a426aae5960c41e23d9ab02a6be49ccf66d003989bbfaa3b3fdb7ba47880bb230d5ba0fb9bab5ed2ed95c1c41eab8ea4c13f01f10300ac4de3af40d20cbda2d576cf4c849b1c4e291b8003431326969f2b0420c41a40028d082fdfb6779d7db14b85348c515b52a676ea8f4b659e9f1d7fce84a2f5bd31dfb6b1420e007dc546636689d1da689eeffcfcc632ae5f3d3bdbfe23bbc22f219b1167c4159cd59d542b801ed6fe656146f0180e8a148c6ba11ea2fba94f6c5f1842519eeea9f6c7f50a9ac372ff00d457ccec23fd3d0d52d5ec97aa3a4cec233c4c0ebe2ee85ac0dabbb2e281def1bcaad071538546d57021b8226a4b4dcfdc4a3d36e1cfd884c94573137731689a097b69bccbd7a26459f949ab17a198821f01a92f1b82e2ac4c7ab997c6f7c09bd1dc1a9a8bfacff22b52caea0d2590d81e19b0127c4440a36aeef4ea330571a1ab5a479d62dca85ed5186733e71fdcba97707c6fc73f5240c58516ed18759a25d3641a3acb1d9d1b25a3e180e0e8d14de61dd9503f45fd410c321abc7e34b794fe8ff65d7a2aa66ea096a33cc5a20800626c74b131a713df03ee521d43e94573663352e945545d157fd44715bc2efd71ed03d40ac9cf585b8f729116e160242483b1b60af4d99aa657bc51ad46a564d11fb4e5b67f50832e326aad8c3ea542e8fa3f51197c3c8f7ff638a169e8679eec14cca6ccc15580ef38669c23f6e1b9b3b198281a485c68fdba3160e23b487dac588fe49547ca679720cd3e95ea7b367c4437145d76c4a400f6d2068ab433acd474d54178686cf300a11766c463d3f47cf5f94e6bec03cf6f69941f16a90af194be957374d9950cc1e52e16d8e8ec6d863244546a45705eb21e0377242e87a20b7b4b7355f932e54387b30f676a1d7ac4dc9434ce600c954f9c5c2b5110acdae2a2aa84e7492cfb0446b7e87e5b661849cd806587721c8e9e5cf4b8c56ad3f931163d1351c8c4f73f8e85c13899856b2fc2ff0061de7bc68d1e80ba4b081d867e094aae65473ad456df52cbbc1fe1d1e8003b84d671f826c2712c1e8bf4433683f09e8759ef2ecbc078988d74dba7eb764ddd09a3ed3f65c4fc13e927eaf83a9e9467ffda000c03010002000300000010a270c1c1dfab932b7eea2305fa6bff00a63ca734980a7cdbec99c841e8da02d2d17431dda1dbcf1fda4ad7585dbcf2f8300af1a62bec84070e2682b6b25b5ac52acf2c1beb58b8002c1f6233ff00c575c1be9ad8c54eaf442d46b73e11e9deb0dcf52ce94a77ba96e3ca01883082f9c81e802fffc4001d110100020301010101000000000000000001001110203121413051ffda0008010301013f1008d4f2512b2fb088fcd15d1049d99cc32e5cb952a4c5109129a95509c8158f200e7214f278b710076309e68cb6847ac5454456c79b54306cb208f7b8f90d85a196beb934e111153ade595b9c9edd88e032ae25eed797225444af35bd29206bfb97a263e60a8416895a38f9f97cdfffc4001d110003010101010101010000000000000000011121103141205161ffda0008010201013f10213a9f1a84ba51756b8adb13c1e894214d7e11f03432ef29188b0492e3f306db7a367c436b7e0c5f942c713442443f3f5a645f8c6b55e09d1f82eb7306c7c3d8cd25161a5c7a5cbc4064f5091530ef1bdecff8689ca68f87d9d6de7830ec2a54517d0de71180d8dfe079453d1157f07460a104e0bc9a7051c4a897f46bc4885189a11daca254a6cfd8115d1ff9c5f0f7d7bedebbffc400261001000202010304030101010000000000010011213141516171108191a120c1d1b1f0e1ffda0008010100013f100f44c44cca952a526a24aeb2bf12ddc75eaaa05c541f30c72e66f1417146e68be3ac7a079496abac75e227aa41657a0b82e50e6e28f331f86298a407558a579499f9d5f3716475b083c0388edc7851fb6c858a06ac3b36a4f3140eee1f02d71133ea90727bfa395c4afc411002d5d0759c95c06e6dfeba7961550f6177e210b9f3841e087c0b90a4f7885b96985f3062aea20e9998a0f4739abad8df10c798fa32ac9a897e95e952a21a60bbd0fd5ce3a2e8a70d1ff778651e05d3170b22ae095882b86a1ecd0b75f70a9a037869afa268dc4ed189e8e1e92bd2abd0c4652b57221bfe8b8b206f554bc3bd831c254412e8159f884ab182aa9957a1943a7f48d4252c77ea29beb2a057e18331498026eaaeb3cee13a438a57959a253f53ebd477ef1bd5203ab06c220d49cba1e376748b01e9b21d123abb90e07164d2b485ead618f58eab291b894e7d1220eff00b95de6b5c6e60d1589e0815505ae621ef4aba859d944f35025a9872940800d98251f8655b05bd05216d460ec144ec9bbd348b5c5faea35bdcabd4009421039e1de20e3b125c601602e5760c6b7af57a3e25639150028a2a3b2e171111284741407a9cbd1d7a306a65a8e0ce617cfa3d4dc225872f6e932200ac857c3305a37437ad405c00343b16e088a9987d369b477f8d3503abf809c400fd4aabc8858017ae27bcc19e06d9634602f6ae08efd4317f88bbc4e1ebccd25432d196307822dbecd7bd4d1786904118c1745f580e24308fdae90724ea727bca4eb9ada3aaba3bcb69c4817ec757bbed5075dfd84409cde4afc03b8ebf0fb4ea699f4467e6a70e7150ff00aef38c4f4bf73e5855c1b579609f2d4daa81db08f002a63c96ea20f65e6c0ea355f6cd64c330376ddf67529469c7e01eeb06e1b0a545ae95af6873f628d7b1cdf9b86293096de18f9a806796258f866de859ae9ea300e549cd03c2e579aaeb10d4dda277798c067b3076c15de2540b704ca21e6e77fb11a5d59cce566d0b4358d4b78d6f0e9334435b8cd2317df71ebbead8c5d75ef194aefefa325a900342ee6f6b43046ebbbd7c0e255e0374a53bff001f1095216b04dde9f425105fd46bb7abaadfc1af68b43530c7291993761f98a31690ed76c27684076256ed83e3a1f76f6196c9358de084cc0280e09d067da1004e0fdda05dc211605e2194c290389ff4450d960761062b6e1a8ec22aa7250fcdaf73305754821ba8447452a0f2130f351eafcd51ef662496ac86a9e1f27a60f609cba17e04128159a300fbaf416b0247c2597cb6e7e665315deaed28a1c4b5ab81731d9825e9ff009fe7a5d4b5edb2d3fb1172f001b71004c11745567356bed2dd79581740e00e7b5c160dc510761d2c122d77d615513d4f0492415509c31575b2f853f64269af9ec5361d3105db8e909178148252dcb9b6a041bca2c6b939fab9620ab1d32e5612b9d0d740b7da3087396b36ab0c2d6d818d98bd515f460b54ee9a629af7bb0182c8c0bf68d6280971ade4cf5b6cdd7490258df0f98c4b4d2ff8398fdd4055d1002eb2e894000738960cdd2ceb23f09ba4a27ad63f52ff008e832caf3a9f012828d1d635bd45294105acc6147b0ee2980182e815a0f134239438b2e2e0236f95fd47513b2d9bcce2792dfed9523fcf31b2f30d0385b63cd10d2788c48e5958a0adf6205c956795a7ea36f2256a6557adca8a36cc82f68fcbd164907563b9dab5c4456ee200e40beb898cc41790084eb9a9b7da114c59f743fb94fbb5e6dff2569e597cf371e551dc2aad468a5266666303a012de4c910e59a65a885654e730b283d1507b7a10ad2e33b437f30dd53f281614453712d19061680c3810eec7d8bf69600b2d8cbcfa5ead9068f7008d151b053f12a3d4bfb83746f99aabf95afa60788291048bd7da4bcd94aea33f644212ba5a61278f92845590376195472b810caa4aa41a6b8b298fa66e83c06aab852d8671ccc8c2a748a39f92e330e275d7b6922969a3b1d118a8768637b11fb9b8240e810d5705f581a652f2626cb6c36f9855ad3feb25616ab4f8bf7284b4814c73897e96aade31fa8d3b82598987288c03e722c160afd0c9de36e557907d1ee2a69744d3850a39a7a4b101aecaa53fb12081daa4f7e48597a90bbdc7a40e08a168794b8eba044fa0989752090c11e3d0d1a9dc8bfe11ef6fa8d2afd12d0cb0b841f72880a29f4a5af6b8086d47f040d936a1bb91cce701dc05b25758a9b7c5443b01767b71ed050551b105e8fd4375e41cd078ef9b8346f70686cf9ff6354286cbaa97a5ebde691660da7995c393f6632b39805ec9fe07f20dd6abb461796bb3e4824c62651b2ae0bcb014040c0594f9cb0f34364653fa448ee776e2058803dad5a8e2d03847231d048b0ed98f51578ad097fa84ac788728b547d4b4320632dbf634789d08b1f1a527616ff91cc5233c8fee34c4c2d437458f6652abf66e98fd2e6d953630601185de8be654b2d0cd9165f0912b60a9b0280cf7f12ac96f61f0ebc47de2e10c4216d8be86a5c4555d51d2e0a538929d89898d47c76e474317d62dc4d6e0798974ac2b5947ed2a58b5b834938887ce1fe462a645fb44d1e1a6662642fac1ef2374d2ff00745d63b1b6d995eec782fd1c00ab8958ccace617c8b4e153cc1a3668372502f05ba88eaadcb5e9ac5750d8e72a411bddf7fec5c3c4371dea0a5f5b6546e2d7de692c522582a74df17ea39591fc34a8d8196135c830469c75c9f1330562e1f83eac1b787a6def3ec7fb9ff4faff0021a91b474f827fd1e23e9acfffd9, 'F', 'M', 'L', NULL, 1, '2024-10-27', 1, 169, 1, 2, 0, 6, '2024-10-01 11:15:03', NULL, 0, 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `resident_education_attainment`
--

CREATE TABLE `resident_education_attainment` (
  `rea_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `rea_SchoolName` varchar(250) DEFAULT NULL,
  `slvl_ID` int(11) UNSIGNED DEFAULT NULL,
  `rea_YearStart` year(4) DEFAULT NULL,
  `rea_YearGrad` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_education_attainment`
--

INSERT INTO `resident_education_attainment` (`rea_ID`, `res_ID`, `rea_SchoolName`, `slvl_ID`, `rea_YearStart`, `rea_YearGrad`) VALUES
(1, 1, 'Cavite State University(CvSU)', 5, '2013', '2018'),
(2, 1, 'Luis Aguado National High School', 3, '2009', '2013'),
(3, 1, 'Aguado Elementary School', 2, '2007', '2009');

-- --------------------------------------------------------

--
-- Table structure for table `resident_email`
--

CREATE TABLE `resident_email` (
  `email_ID` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `res_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'resident detail ID',
  `email` varchar(50) DEFAULT NULL COMMENT 'resident available email contact'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_email`
--

INSERT INTO `resident_email` (`email_ID`, `res_ID`, `email`) VALUES
(1, 1, 'rhalpdarrencabrera@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `resident_family`
--

CREATE TABLE `resident_family` (
  `relation_ID` int(11) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'resident detail id',
  `family_res_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'family_res_ID equivalent of res_ID , use this id to get detail on resident_detail',
  `relType_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'use this relTyp_ID for getting familiy relationship Name on ref_relation'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_family`
--

INSERT INTO `resident_family` (`relation_ID`, `res_ID`, `family_res_ID`, `relType_ID`) VALUES
(1, 2, 2, 4),
(2, 2, 1, 3),
(3, 3, 2, 4),
(4, 3, 1, 3),
(5, 4, 3, 4),
(6, 4, 1, 3),
(7, 4, 3, 4),
(8, 4, 1, 3),
(9, 5, 2, 4),
(10, 5, 4, 3),
(11, 6, 5, 4),
(12, 6, 1, 3),
(13, 7, 5, 4),
(14, 7, 4, 3),
(15, 8, 2, 4),
(16, 8, 4, 3),
(17, 9, 5, 4),
(18, 9, 6, 3),
(19, 10, 9, 4),
(20, 10, 7, 3),
(21, 12, 5, 4),
(22, 12, 8, 3),
(23, 13, 2, 4),
(24, 13, 6, 3),
(25, 13, 5, 4),
(26, 13, 4, 3),
(27, 14, 2, 4),
(28, 14, 1, 3),
(29, 14, 2, 4),
(30, 14, 1, 3),
(31, 15, 3, 4),
(32, 15, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `resident_newborn`
--

CREATE TABLE `resident_newborn` (
  `newborn_ID` int(10) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `newborn_Date_Record` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_pregnant`
--

CREATE TABLE `resident_pregnant` (
  `preg_ID` int(10) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `preg_Date` date DEFAULT NULL,
  `preg_Labor` date DEFAULT NULL,
  `preg_Date_Record` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_pregnant`
--

INSERT INTO `resident_pregnant` (`preg_ID`, `res_ID`, `preg_Date`, `preg_Labor`, `preg_Date_Record`) VALUES
(1, 3, '2018-03-13', '2018-08-30', '2018-03-13 01:16:53'),
(21, 11, '2018-03-07', '2018-03-06', '2018-03-06 03:35:57'),
(22, 3, '2018-03-01', '2018-03-31', '2018-03-07 02:39:34'),
(23, 5, '2018-03-15', '2018-03-22', '2018-03-08 00:48:32'),
(24, 9, '2020-06-18', '2018-03-16', '2018-03-15 21:56:39'),
(25, 9, '2018-03-16', '2018-03-16', '2018-03-15 21:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `resident_vaccinated`
--

CREATE TABLE `resident_vaccinated` (
  `vac_ID` int(11) UNSIGNED NOT NULL,
  `res_ID` int(11) UNSIGNED DEFAULT NULL,
  `vac_Date` date DEFAULT NULL,
  `vac_Date_Recorded` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vac_Name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resident_vaccinated`
--

INSERT INTO `resident_vaccinated` (`vac_ID`, `res_ID`, `vac_Date`, `vac_Date_Recorded`, `vac_Name`) VALUES
(4, 3, '2018-03-13', '2018-03-13 01:07:08', 'dengvaxia'),
(5, 4, '2018-03-16', '2018-03-15 21:57:25', 'sad');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_on` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `data`, `updated_on`, `user_id`) VALUES
('1iu7o3ui09bfbd0q1tq4joe122', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}', 1451569261, NULL),
('2ttuk0he2v83oedbe5cjcsnt23', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}', 1451569200, NULL),
('o36orvbeg1u04admllh2tqaar5', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}', 1451569321, NULL),
('oq7cbpo43av8c4uo276bh2lo30', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}', 1451569260, NULL),
('qnkshfs5nq6t6ivh9rgfpjjs21', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}user|s:1115:\"O:4:\"Auth\":9:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:8:\"level_id\";i:20;s:4:\"user\";O:4:\"User\":6:{s:2:\"id\";s:1:\"1\";s:9:\"tableName\";s:5:\"users\";s:12:\"idColumnName\";N;s:8:\"errorMsg\";N;s:10:\"\0*\0columns\";a:18:{s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:77:\"sha256:1000:KQpu8LquZVfABv5kvC7Kf0n22a8TN3FL:v7sM7IkhoWpRJc04qbvv1h6o6MQAl/GP\";s:13:\"lastlogindate\";s:19:\"2015-12-31 13:43:27\";s:8:\"level_id\";s:2:\"20\";s:5:\"email\";s:18:\"you@yourdomain.com\";s:14:\"paidExpiryDate\";s:19:\"2015-12-31 13:29:31\";s:9:\"firstname\";s:5:\"Admin\";s:8:\"lastname\";s:7:\"Account\";s:5:\"title\";s:2:\"Mr\";s:10:\"languageId\";s:1:\"1\";s:20:\"storageLimitOverride\";N;s:21:\"privateFileStatistics\";s:1:\"1\";s:20:\"uploadServerOverride\";N;s:6:\"apikey\";s:32:\"f86cff6189c7bd13db7f94ab9b74030f\";s:7:\"profile\";s:17:\"{\"image_size\":[]}\";s:8:\"isPublic\";s:1:\"1\";s:17:\"accountLockStatus\";s:1:\"0\";s:19:\"remainingBWDownload\";s:1:\"0\";}s:12:\"\0*\0className\";s:4:\"User\";}s:10:\"package_id\";s:2:\"20\";s:5:\"level\";s:5:\"Admin\";s:5:\"email\";s:18:\"you@yourdomain.com\";s:14:\"paidExpiryDate\";s:19:\"2015-12-31 13:29:31\";s:14:\"paymentTracker\";s:32:\"5f4dcc3b5aa765d61d8327deb882cf99\";}\";themeConfigs|a:1:{s:9:\"cloudable\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"27\";i:0;s:2:\"27\";s:10:\"theme_name\";s:9:\"Cloudable\";i:1;s:9:\"Cloudable\";s:11:\"folder_name\";s:9:\"cloudable\";i:2;s:9:\"cloudable\";s:17:\"theme_description\";s:15:\"Cloudable Theme\";i:3;s:15:\"Cloudable Theme\";s:11:\"author_name\";s:9:\"MFScripts\";i:4;s:9:\"MFScripts\";s:14:\"author_website\";s:21:\"https://mfscripts.com\";i:5;s:21:\"https://mfscripts.com\";s:12:\"is_installed\";s:1:\"1\";i:6;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:7;s:19:\"0000-00-00 00:00:00\";s:14:\"theme_settings\";s:53:\"{\"thumbnail_type\":\"square\",\"site_skin\":\"default.css\"}\";i:8;s:53:\"{\"thumbnail_type\":\"square\",\"site_skin\":\"default.css\"}\";}s:6:\"config\";a:10:{s:10:\"theme_name\";s:15:\"Cloudable Theme\";s:11:\"folder_name\";s:9:\"cloudable\";s:17:\"theme_description\";s:21:\"Personal File Manager\";s:11:\"author_name\";s:9:\"MFScripts\";s:14:\"author_website\";s:21:\"https://mfscripts.com\";s:13:\"theme_version\";i:1;s:23:\"required_script_version\";s:3:\"1.0\";s:7:\"product\";s:9:\"cloudable\";s:12:\"product_name\";s:9:\"Cloudable\";s:11:\"product_url\";s:21:\"https://mfscripts.com\";}}}search|a:2:{s:7:\"perPage\";i:30;s:13:\"filterOrderBy\";s:21:\"order_by_filename_asc\";}browse|a:1:{s:8:\"viewType\";s:15:\"fileManagerIcon\";}', 1451569888, 1),
('tu0b71aiavqi1cdcfuhtn25r93', '_t|s:12:\"English (en)\";pluginConfigs|a:1:{s:13:\"filepreviewer\";a:2:{s:4:\"data\";a:18:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";s:11:\"plugin_name\";s:14:\"File Previewer\";i:1;s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";i:2;s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";i:3;s:47:\"Display files directly within the file manager.\";s:12:\"is_installed\";s:1:\"1\";i:4;s:1:\"1\";s:14:\"date_installed\";s:19:\"0000-00-00 00:00:00\";i:5;s:19:\"0000-00-00 00:00:00\";s:15:\"plugin_settings\";s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";i:6;s:506:\"{\"non_show_viewer\":1,\"free_show_viewer\":1,\"paid_show_viewer\":1,\"enable_preview_image\":1,\"preview_image_show_thumb\":1,\"auto_rotate\":1,\"supported_image_types\":\"jpg,jpeg,png,gif,wbmp\",\"enable_preview_document\":1,\"preview_document_pdf_thumbs\":1,\"preview_document_ext\":\"doc,docx,xls,xlsx,ppt,pptx,pdf,pages,ai,psd,tiff,dxf,svg,eps,ps,ttf,otf,xps\",\"enable_preview_video\":1,\"preview_video_ext\":\"mp4,flv,ogg\",\"preview_video_autoplay\":1,\"enable_preview_audio\":1,\"preview_audio_ext\":\"mp3\",\"preview_audio_autoplay\":1}\";s:14:\"plugin_enabled\";s:1:\"1\";i:7;s:1:\"1\";s:10:\"load_order\";s:3:\"999\";i:8;s:3:\"999\";}s:6:\"config\";a:8:{s:11:\"plugin_name\";s:14:\"File Previewer\";s:11:\"folder_name\";s:13:\"filepreviewer\";s:18:\"plugin_description\";s:47:\"Display files directly within the file manager.\";s:14:\"plugin_version\";i:1;s:23:\"required_script_version\";s:3:\"4.2\";s:12:\"database_sql\";s:20:\"offline/database.sql\";s:10:\"fixedSizes\";a:11:{i:0;s:5:\"16x16\";i:1;s:5:\"32x32\";i:2;s:5:\"64x64\";i:3;s:7:\"125x125\";i:4;s:7:\"180x150\";i:5;s:7:\"250x250\";i:6;s:7:\"300x250\";i:7;s:7:\"120x240\";i:8;s:7:\"160x600\";i:9;s:7:\"500x500\";i:10;s:7:\"800x800\";}s:17:\"scaledPercentages\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"25\";i:2;s:2:\"35\";i:3;s:2:\"50\";i:4;s:2:\"70\";i:5;s:2:\"85\";}}}}', 1451569321, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_value` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `availableValues` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_group` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Default',
  `display_order` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `label`, `config_key`, `config_value`, `config_description`, `availableValues`, `config_type`, `config_group`, `display_order`) VALUES
(5, 'Date time format', 'date_time_format', 'd/m/Y H:i:s', 'Date time format in php', '', 'string', 'Local', 5),
(6, 'Date format', 'date_format', 'd/m/Y', 'Date format in php', '', 'string', 'Local', 0),
(7, 'Site name', 'site_name', 'Cloudable File Manager', 'Site name', '', 'string', 'Site Options', 5),
(9, 'Site theme', 'site_theme', 'evolution', 'Site template theme', 'SELECT folder_name AS itemValue FROM theme ORDER BY folder_name', 'select', 'System', 0),
(11, 'Date time format js', 'date_time_format_js', '%d-%m-%Y %H:%i', 'Date time format in javascript', '', 'string', 'Local', 10),
(20, 'Site language', 'site_language', 'English (en)', 'Site language for text conversions <a href=\"translation_manage.php\">(manage languages)</a>', 'SELECT languageName AS itemValue FROM language ORDER BY languageName', 'select', 'Language', 0),
(21, 'Language show key', 'language_show_key', 'translation', 'Show translation value or key. (use \'key\' to debug translations, \'translation\' to show actual translated value. \'key title text\' to show the key as a title tag around the text content)', '[\"key\",\"translation\", \"key title text\"]', 'select', 'Language', 25),
(23, 'Stats only count unique', 'stats_only_count_unique', 'yes', 'Revisits in the same day, by the same IP address will not be counted on stats.', '[\"yes\", \"no\"]', 'select', 'Default', 0),
(24, 'Default email address from', 'default_email_address_from', 'email@yoursite.com', 'Emails will be sent from', '', 'string', 'Email Settings', 12),
(31, 'Next check for file removals', 'next_check_for_file_removals', '1411399513', 'System value. The next time to delete any files which haven\'t recently been accessed. Timestamp. Do not edit.', '', 'integer', 'System', 0),
(37, 'Cost currency symbol', 'cost_currency_symbol', '$', 'The symbol to use for currency. i.e. $', '[\"$\", \"£\", \"€\"]', 'string', 'System', 5),
(38, 'Cost currency code', 'cost_currency_code', 'USD', 'The currency code for the current currency. i.e. USD', '[\"USD\", \"GBP\", \"EUR\"]', 'select', 'System', 10),
(42, 'Email method', 'email_method', 'php', 'The method for sending emails via the script.', '[\"php\",\"smtp\"]', 'select', 'Email Settings', 0),
(43, 'Email smtp host', 'email_smtp_host', '', 'Your SMTP host if you\'ve selected SMTP email method. (leave blank is email_method = php)', '', 'string', 'Email Settings', 5),
(44, 'Email smtp port', 'email_smtp_port', '587', 'Your SMTP port if you\'ve selected SMTP email method. (Normally 25)', '', 'integer', 'Email Settings', 10),
(45, 'Email smtp requires auth', 'email_smtp_requires_auth', 'no', 'Whether your SMTP server requires authentication.', '[\"yes\",\"no\"]', 'select', 'Email Settings', 20),
(46, 'Email smtp auth username', 'email_smtp_auth_username', '', 'Your SMTP username if SMTP auth is required.', '', 'string', 'Email Settings', 25),
(47, 'Email smtp auth password', 'email_smtp_auth_password', '', 'Your SMTP password if SMTP auth is required.', '', 'string', 'Email Settings', 30),
(48, 'File url show filename', 'file_url_show_filename', 'yes', 'Show the original filename on the end of the generated url.', '[\"yes\",\"no\"]', 'select', 'File Uploads', 25),
(49, 'Default file server', 'default_file_server', 'Local Default', 'The file server to use for all new uploads. Only used if \'active\' state and \'server selection method\' is \'specific server\'.', 'SELECT serverLabel AS itemValue FROM file_server LEFT JOIN file_server_status ON file_server.statusId = file_server_status.id WHERE statusId=2 ORDER BY serverLabel', 'select', 'File Uploads', 5),
(50, 'C file server selection method', 'c_file_server_selection_method', 'Specific Server', 'Server selection method. How to select the file server to use. If using \'until full\', you\'ll also need to set the file server priority on each.', '[\"Least Used Space\",\"Specific Server\",\"Until Full\"]', 'select', 'File Uploads', 0),
(51, 'File Download - Free User', 'free_user_show_captcha', 'no', 'Show the captcha after a free user sees the countdown timer.', '[\"yes\",\"no\"]', 'select', 'System', 3),
(54, 'Reserved usernames', 'reserved_usernames', 'admin|administrator|localhost|support|billing|sales|payments', 'Any usernames listed here will be blocked from the main registration. Pipe separated list.', '', 'string', 'Default', 0),
(58, 'Site admin email', 'site_admin_email', 'you@yoursite.com', 'The email address all site admin emails will be sent.', '', 'string', 'Site Options', 15),
(61, 'Require user account download', 'require_user_account_download', 'no', 'Users must register for an account to download.', '[\"yes\",\"no\"]', 'select', 'System', 5),
(62, 'Generate upload url type', 'generate_upload_url_type', 'Shortest', 'What format to generate the file url in. Shortest will increment based on the previous upload. Hashed will create a longer random character hash.', '[\"Shortest\",\"Medium Hash\", \"Long Hash\"]', 'select', 'File Uploads', 20),
(70, 'Downloads track current downloads', 'downloads_track_current_downloads', 'yes', 'Whether to track current downloads/connections. Note: This should be enabled if you also want to limit concurrent download connections.', '[\"yes\",\"no\"]', 'select', 'File Downloads', 15),
(74, 'Session expiry', 'session_expiry', '86400', 'The amount of time a user can be inactive before their session will expire. In seconds. Default is 86400 (1 day)', '', 'integer', 'Site Options', 60),
(75, 'Logging log enabled', 'logging_log_enabled', 'yes', 'Whether to enable logging or not. The /logs/ folder should have write permissions on it. (chmod 755 or 777)', '[\"yes\",\"no\"]', 'select', 'Logs', 0),
(77, 'Logging log output', 'logging_log_output', 'yes', 'Whether to output the errors to screen. Always set this to \'no\' for your live site.', '[\"yes\",\"no\"]', 'select', 'Logs', 10),
(79, 'Logging log type', 'logging_log_type', 'All Error Types', 'The types of log messages to store in the log files. \'Serious Errors Only\' will log the important ones. Ensure logging is enabled for this setting to work.', '[\"Serious Errors Only\",\"Serious Errors and Warnings\",\"All Error Types\"]', 'select', 'Logs', 5),
(97, 'Premium user block account sharing', 'premium_user_block_account_sharing', 'no', 'Block paid account sharing. Accounts will only allow 1 login session. Any open sessions will be closed on a new login.', '[\"yes\",\"no\"]', 'select', 'System', 10),
(101, 'Language separate language images', 'language_separate_language_images', 'no', 'Use different images/css for each language. If yes, copy all the files from images/styles in /themes/blue_v2/ to /themes/blue_v2/[flag_code]/, keeping the folders. Replace \'[flag_code]\' with the 2 letter language flag code. i.e. /themes/blue_v2/es/', '[\"yes\",\"no\"]', 'select', 'Language', 15),
(102, 'Language user select language', 'language_user_select_language', 'yes', 'Give users the option to set their account language. Available as a drop-down in account settings. Automatically sets the language of the site on login.', '[\"yes\",\"no\"]', 'select', 'Language', 5),
(103, 'Maintenance mode', 'maintenance_mode', 'no', 'Whether to place the entire site into maintenance mode. Useful for site upgrades or server moves. Admin area is still accessible.', '[\"yes\",\"no\"]', 'select', 'Site Options', 25),
(106, 'Enable user registration', 'enable_user_registration', 'no', 'Whether to enable user registration on the site.', '[\"yes\",\"no\"]', 'select', 'System', 30),
(108, 'File manager default view', 'file_manager_default_view', 'icon', 'The default view for the file manager.', '[\"icon\", \"list\"]', 'select', 'File Manager', 0),
(109, 'Site contact form email', 'site_contact_form_email', 'you@yoursite.com', 'The email address all contact form queries will be sent', '', 'string', 'Contact Form', 0),
(111, 'Performance js file minify', 'performance_js_file_minify', 'no', 'Whether to automatically group and minify js files. \'yes\' increases page load times. Use \'no\' if you have any issues or in dev. The \'cache\' folder must be writable.', '[\"yes\",\"no\"]', 'select', 'System', 35),
(124, 'Password policy min length', 'password_policy_min_length', '8', 'Minimum password length', '', 'integer', 'Password Policy', 0),
(125, 'Password policy max length', 'password_policy_max_length', '32', 'Maximum password length', '', 'integer', 'Password Policy', 5),
(126, 'Password policy min uppercase characters', 'password_policy_min_uppercase_characters', '0', 'Minimum upper case characters (set to 0 to ignore)', '', 'integer', 'Password Policy', 15),
(127, 'Password policy min numbers', 'password_policy_min_numbers', '0', 'Minimum numbers (set to 0 to ignore)', '', 'integer', 'Password Policy', 10),
(128, 'Password policy min nonalphanumeric characters', 'password_policy_min_nonalphanumeric_characters', '0', 'Minimum nonalphanumeric characters, i.e. symbols (set to 0 to ignore)', '', 'integer', 'Password Policy', 20),
(139, 'Security block ip login attempts', 'security_block_ip_login_attempts', '5', 'How many login attempts before an IP is blocked from logging in for 24 hours.', '', 'integer', 'Security', 30),
(140, 'Security send user email on password change', 'security_send_user_email_on_password_change', 'yes', 'Send user an email confirmation when they change their password in account settings.', '[\"yes\",\"no\"]', 'select', 'Security', 15),
(141, 'Security send user email on email change', 'security_send_user_email_on_email_change', 'yes', 'Send user an email confirmation when they change their email address in account settings.', '[\"yes\",\"no\"]', 'select', 'Security', 20),
(142, 'Email template header', 'email_template_header', '<html>\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    </head>\n    <body style=\"background-color: #eee; padding: 0px; margin: 0px; font-family: Arial, Helvetica; font-size: 12px;\">\n        <div style=\"padding: 18px 18px 0px 18px; background-color: #ffffff;\">\n            <a href=\"[[[WEB_ROOT]]]\">\n                <div style=\"background-image: url(\'[[[SITE_IMAGE_PATH]]]/main_logo_inverted.png\'); background-repeat: no-repeat; height: 45px; width: 100%; float: left;\"><!-- --></div>\n            </a>\n            <div style=\"clear: left;\"><!-- --></div>\n        </div>\n        <div style=\"background-color: #ffffff; padding: 18px 18px 25px 18px;\">', 'HTML code for the header of all emails. Test using the \'admin/_test_scripts/test_email.php\' script. Accepts the following placeholders for replacements: [[[SITE_NAME]]], [[[WEB_ROOT]]], [[[DATE_NOW]]], [[[TIME_NOW]]].', '', 'textarea', 'Email Settings', 40),
(143, 'Email template footer', 'email_template_footer', '        </div>\n        <div style=\"color: #aaa; font-size: 10px; padding: 18px; margin-left: auto; margin-right: auto;\">\n            This e-mail is intended solely for the addressee. If you are not the addressee please do not read, print, re-transmit, store or act in reliance on it or any attachments. Instead, please inform [[[SITE_NAME]]] support and then immediately permanently delete it.<br/><br/>\n            Please do not respond to this email. These are generated automatically by the [[[SITE_NAME]]] system and so the return address is not monitored for email. Please submit a request via our <a href=\"[[[WEB_ROOT]]]\">website</a> if you have a query.<br/><br/>\n            Message sent from <a href=\"[[[WEB_ROOT]]]\">[[[SITE_NAME]]]</a> on [[[DATE_TIME_NOW]]]\n        </div>\n    </body>\n</html>', 'HTML code for the footer of all emails. Test using the \'admin/_test_scripts/test_email.php\' script. Accepts the following placeholders for replacements: [[[SITE_NAME]]], [[[WEB_ROOT]]], [[[DATE_NOW]]], [[[TIME_NOW]]].', '', 'textarea', 'Email Settings', 45),
(144, 'Email template enabled', 'email_template_enabled', 'yes', 'Whether to use the email header and footer html.', '[\"yes\",\"no\"]', 'select', 'Email Settings', 35),
(149, 'Purge deleted files period minutes', 'purge_deleted_files_period_minutes', '10080', 'How long to keep deleted files for on the server. On delete via the script UI they are moved into /files/_deleted/ then purged after this period. Useful for recovery if needed. Set in minutes. Default 24 hours, so 1440.', '', 'input', 'Site Options', 50),
(162, 'Premium user block account sharing', 'premium_user_block_account_sharing', 'no', 'Block paid account sharing. Accounts will only allow 1 login session. Any open sessions will be closed on a new login.', '[\"yes\",\"no\"]', 'select', 'System', 10),
(168, 'Remote url download in background', 'remote_url_download_in_background', 'no', 'Should remote file downloads should be done in the background? If yes you will need to setup the crontask /admin/tasks/process_remote_file_downloads.cron.php to run every minute.', '[\"no\", \"yes\"]', 'select', 'File Downloads', 10),
(169, 'Limit send via email per hour', 'limit_send_via_email_per_hour', '10', 'The maximum amount of emails that a user can send per hour from the \'send via email\' page.', '', 'string', 'Email Settings', 50),
(170, 'Force files private', 'force_files_private', 'no', 'Do you want to make all files uploaded private? All sharing links will be removed from the site pages and the users will only be able to download their own files.', '[\"yes\",\"no\"]', 'select', 'System', 0),
(171, 'Security account lock', 'security_account_lock', 'yes', 'Enable users to lock their accounts?', '[\"yes\",\"no\"]', 'select', 'Security', 5),
(174, 'Default admin file manager view', 'default_admin_file_manager_view', 'thumb', 'Default view to show in the admin file manager.', '[\"list\",\"thumb\"]', 'select', 'Site Options', 45),
(176, 'Next check for rewards aggregation', 'next_check_for_rewards_aggregation', '1451952000', 'System value. The next time collate the rewards data.', '', 'integer', 'System', 0),
(177, 'Next check for ppd aggregation', 'next_check_for_ppd_aggregation', '1451433600', 'System value. The next time collate the PPD data.', '', 'integer', 'System', 0),
(178, 'Next check for server stats update', 'next_check_for_server_stats_update', '1451569718', 'System value. The next time to update the total filesize and file count in the file_server table. Timestamp. Do not edit.', '', 'integer', 'System', 0),
(183, 'Google translate api key', 'google_translate_api_key', '', 'Google Translate API key. Optional but needed if you use the automatic language translation tool within the admin area.', '', 'string', 'Language', 20),
(184, 'Blocked filename keywords', 'blocked_filename_keywords', 'yetishare|wurlie|reservo', 'Any filenames with the keywords listed here will be blocked from uploading. Keep in mind that this is a partial string search, so blocking the word \"exe\" will also block the word \"exercise\". Pipe separated list. i.e. word1|word2|word3', '', 'string', 'File Uploads', 30),
(185, 'System plugin config cache', 'system_plugin_config_cache', '', 'Used internally by the system to store a cache of the plugin settings.', '', 'string', 'System', 0),
(186, 'System theme config cache', 'system_theme_config_cache', '', 'Used internally by the system to store a cache of the theme settings.', '', 'string', 'System', 0),
(187, 'Uploads block all', 'uploads_block_all', 'no', 'Whether to block all uploads on your site, apart from the admin user. Useful as a temporary setting for site maintenance', '[\"yes\", \"no\"]', 'select', 'File Uploads', 40),
(188, 'Downloads block all', 'downloads_block_all', 'no', 'Whether to block all downloads on your site, apart from the admin user. Useful as a temporary setting for site maintenance', '[\"yes\", \"no\"]', 'select', 'File Downloads', 20),
(189, 'Security block register email domain', 'security_block_register_email_domain', '', 'Block email address domains from registering. Comma separated list of domains. i.e. exampledomain.com,exampledomain2.com,etc', '', 'textarea', 'Security', 25),
(190, 'Reserved usernames', 'reserved_usernames', 'admin|administrator|localhost|support|billing|sales|payments', 'Any usernames listed here will be blocked from the main registration. Pipe separated list.', '', 'string', 'Default', 0),
(191, 'Enable user registration', 'enable_user_registration', 'no', 'Whether to enable user registration on the site.', '[\"yes\",\"no\"]', 'select', 'Site Options', 30),
(192, 'Register form show captcha', 'register_form_show_captcha', 'no', 'Whether to display the captcha on the site registration form.', '[\"yes\",\"no\"]', 'select', 'Captcha', 5),
(193, 'reCaptcha Secret Key', 'captcha_secret_key', 'REPLACE_ME', 'Secret key for reCaptcha v2. Register at https://www.google.com/recaptcha', '', 'string', 'Captcha', 20),
(194, 'reCaptcha Public Key', 'captcha_public_key', 'REPLACE_ME', 'Public key for reCaptcha v2. Register at https://www.google.com/recaptcha', '', 'string', 'Captcha', 15),
(195, 'User register default folders', 'user_register_default_folders', '', 'Default folders for new accounts. Theese are automatically created when users register on the site. Leave blank to ignore. Pipe separated list. i.e. Documents|Images|Videos', '', 'string', 'File Manager', 5),
(196, 'API Path', 'api_access_host', '', 'The API hostname. Use [[[WEB_ROOT]]]/api/v2/ unless you want to move the API elsewhere.', '', 'string', 'API', 5),
(197, 'Authentication Method', 'api_authentication_method', 'API Keys', 'Whether to use the account username and password or generated API keys. (recommended to use generated API keys)', '[\"API Keys\",\"Account Access Details\"]', 'select', 'API', 10),
(198, 'Access Level', 'api_account_access_type', 'admin', 'Restric`t access to certain account types. Hold ctrl and click to select multiple.', 'SELECT label AS itemValue FROM user_level WHERE level_type != \"nonuser\" ORDER BY level_id', 'multiselect', 'API', 15),
(199, 'Show User Login Screen', 'captcha_login_screen_normal', 'no', 'Show the captcha on the standard login screen.', '[\"yes\",\"no\"]', 'select', 'Captcha', 6),
(200, 'Show Admin Login Screen', 'captcha_login_screen_admin', 'no', 'Show the captcha on the admin login screen.', '[\"yes\",\"no\"]', 'select', 'Captcha', 7),
(202, 'Admin Approve Registration', 'admin_approve_registrations', 'no', 'Whether admin should manually approve all account registrations.', '[\"yes\",\"no\"]', 'select', 'Site Options', 31),
(203, 'Cryptoloot Public Key', 'captcha_cryptoloot_public_key', '', 'Public site key for cryptoloot captcha, if enabled. Register at https://crypto-loot.com', '', 'string', 'Captcha', 40),
(204, 'Cryptoloot Private Key', 'captcha_cryptoloot_private_key', '', 'Private site key for cryptoloot captcha, if enabled. Register at http://crypto-loot.com', '', 'string', 'Captcha', 45),
(205, 'Enable Application Cache', 'enable_application_cache', 'yes', 'Whether to activate application cache or not. This will cache the Twig templates and url routes to improve performance.', '[\" yes \",\" no \"]', 'select', 'Site Options', 6),
(206, 'User Session Type', 'user_session_type', 'Local Sessions', 'Login session type. If you are using any \" Direct \" file servers, that must be \" Database Sessions \", using \" Local Sessions \" will break cross server support. If you enable a \" Direct \" file server, this is automatically changed to \" Database Sessions \". After changing you will need to re-login.', '[\" Local Sessions \", \" Database Sessions \"]', 'select', 'Site Options', 59),
(207, 'Support Legacy Folder Urls', 'support_legacy_folder_urls', 'Disabled', 'Whether to support legacy public folder urls or not. In the recent code these are made using a unique 32 character length hash, whereas older urls used the shorter folder id.', '[\" Enabled \", \" Disabled \"]', 'select', 'File Manager', 99),
(208, 'Lock Download Tokens To IP', 'lock_download_tokens_to_ip', 'Disabled', 'Whether to lock downloads to the original requesting IP address for additional leech protection. Note: This will cause the document viewer to stop working if you are using this functionality.', '[\" Enabled \", \" Disabled \"]', 'select', 'File Downloads', 99),
(209, 'Username min length', 'username_min_length', '6', 'The minimum character length for a username.', '', 'string', 'Security', 40),
(210, 'Username max length', 'username_max_length', '20', 'The maximum character length for a username.', '', 'string', 'Security', 41),
(211, 'Concurrent Uploads', 'file_manager_concurrent_uploads', 'Enabled', 'Whether to process concurrent uploads or one at a time. Enabling will speed up the uploader. For sites with limited resources available, you should disable this.', '[\" Disabled \", \" Enabled \"]', 'select', 'File Manager', 101),
(212, 'Concurrent Upload Limit', 'file_manager_concurrent_upload_limit', '3', 'If concurrent uploads is enabled, limit the concurrent upload requests here.', '[\"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\", \"8\"]', 'select', 'File Manager', 102);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(255) NOT NULL,
  `contact_ID` int(11) DEFAULT NULL COMMENT 'phone/telnum',
  `ann_ID` int(11) DEFAULT NULL,
  `receiver_ID` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `contact_ID`, `ann_ID`, `receiver_ID`, `date`) VALUES
(88, 2, 5, 2, '2018-04-28 02:28:18'),
(89, 3, 5, 3, '2018-04-28 02:28:18'),
(90, 4, 5, 4, '2018-04-28 02:28:18'),
(91, 5, 5, 5, '2018-04-28 02:28:18'),
(92, 6, 5, 6, '2018-04-28 02:28:18'),
(93, 7, 5, 7, '2018-04-28 02:28:18'),
(94, 8, 5, 8, '2018-04-28 02:28:18'),
(95, 9, 5, 9, '2018-04-28 02:28:18'),
(96, 10, 5, 10, '2018-04-28 02:28:18'),
(97, 11, 5, 11, '2018-04-28 02:28:18'),
(98, 12, 5, 12, '2018-04-28 02:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `sms_category`
--

CREATE TABLE `sms_category` (
  `id` int(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sms_category`
--

INSERT INTO `sms_category` (`id`, `category`) VALUES
(2, 'Thesis');

-- --------------------------------------------------------

--
-- Table structure for table `special_projects`
--

CREATE TABLE `special_projects` (
  `proj_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `proj_Title` varchar(250) DEFAULT NULL,
  `proj_Detail` text DEFAULT NULL,
  `proj_EstCost` int(11) UNSIGNED DEFAULT NULL,
  `proj_Start` date DEFAULT NULL,
  `proj_End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `special_projects`
--

INSERT INTO `special_projects` (`proj_ID`, `proj_Title`, `proj_Detail`, `proj_EstCost`, `proj_Start`, `proj_End`) VALUES
(1, 'Barangay Social Project', NULL, 0, '2018-02-08', '2020-03-30'),
(2, 'asdsd', 'asdasdasd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_projects_material`
--

CREATE TABLE `special_projects_material` (
  `material_ID` int(11) UNSIGNED NOT NULL,
  `material_Name` varchar(50) DEFAULT NULL,
  `material_Quantity` int(11) UNSIGNED DEFAULT NULL,
  `unit_ID` int(11) UNSIGNED DEFAULT NULL,
  `proj_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_projects_milestone`
--

CREATE TABLE `special_projects_milestone` (
  `milestone_ID` int(11) UNSIGNED NOT NULL,
  `proj_ID` int(11) UNSIGNED DEFAULT NULL,
  `milestone_Title` varchar(250) DEFAULT NULL,
  `milestone_Detail` text DEFAULT NULL,
  `spStatus_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `special_projects_milestone`
--

INSERT INTO `special_projects_milestone` (`milestone_ID`, `proj_ID`, `milestone_Title`, `milestone_Detail`, `spStatus_ID`) VALUES
(1, 1, '123333333333333333333333333333333', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `special_projects_report`
--

CREATE TABLE `special_projects_report` (
  `id` int(50) NOT NULL,
  `item` int(11) NOT NULL,
  `des` varchar(200) NOT NULL,
  `ucost` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(11) NOT NULL,
  `tcost` int(11) NOT NULL,
  `qqty` int(11) NOT NULL,
  `qam` int(11) NOT NULL,
  `quarter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `special_projects_report`
--

INSERT INTO `special_projects_report` (`id`, `item`, `des`, `ucost`, `qty`, `unit`, `tcost`, `qqty`, `qam`, `quarter`) VALUES
(1, 1, 'bond paper', 20, 5, 'rms', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `special_projects_report2`
--

CREATE TABLE `special_projects_report2` (
  `id` int(11) NOT NULL,
  `gaps` varchar(200) NOT NULL,
  `act` varchar(200) NOT NULL,
  `result` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `special_projects_report2`
--

INSERT INTO `special_projects_report2` (`id`, `gaps`, `act`, `result`, `amount`, `source`, `period`) VALUES
(1, 'MANDATORY TRAINING', 'MANDATORY TRAINING\r\nSK FEDERATION ELECTION', '1 SK OFFICIAL TRAINING BEFORE THE FED ELECTION\r\nSK FEDERATION ELECTION CONDUCTED', '5000', 'SK FUND', 'JUNE-DECEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `special_projects_status`
--

CREATE TABLE `special_projects_status` (
  `spStatus_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `spStatus_Name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `special_projects_status`
--

INSERT INTO `special_projects_status` (`spStatus_ID`, `spStatus_Name`) VALUES
(1, 'Complete'),
(2, 'Ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `download_date` datetime DEFAULT NULL,
  `referer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `referer_is_local` tinyint(4) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL,
  `country` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `browser_family` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_pic_holder`
--

CREATE TABLE `temp_pic_holder` (
  `pic_ID` int(11) UNSIGNED NOT NULL,
  `pic_holder` longblob DEFAULT NULL,
  `pic_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `temp_pic_holder`
--

INSERT INTO `temp_pic_holder` (`pic_ID`, `pic_holder`, `pic_Name`) VALUES
(0, 0xffd8ffe000104a46494600010101006000600000ffe100224578696600004d4d002a00000008000101120003000000010001000000000000ffdb0043000201010201010202020202020202030503030303030604040305070607070706070708090b0908080a0807070a0d0a0a0b0c0c0c0c07090e0f0d0c0e0b0c0c0cffdb004301020202030303060303060c0807080c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc0001108014d01f403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fc3955f969c0629635dc9f4a7f93cf5fd2a5ed726cd91d14f68b6ae734ca23b09c5adc294907f87f5a5c8f7fca9a6a8419e69bb28230f4ea0ad8146051466a4b4b492fef22b7897749338451ea49c0acc12bbb1d57c1bf872de3bf109699596c2cc799330e871d173ef5e93acf8e2e3c5de235f0c7873fd57dcb9ba5e55133838f6c7a719ae33c53e2c8fc03e148fc35a5c9fbe0375fdc0e0bb900941f4ffeb56d7c0168b41d12e357bc5586dda5d8b216c35c11dbfdd033f8e7f1f2f111734ea4b6e87d4e0651a49508eefe27e47b07877c2f6fe19d3a3b5b7ddb63006e27258fa9f7ef566e6ea1d3a2412b60c8c1401d49f6fa7f9e6b1edbe2869b7de169f572eb6f6316f55663f33907031eb939f5fc7b7966a5f199b59fb76b5236c5b726dac60c7cbb88cef23d71e9d3debc8a7849d59b6d1f4b5319470f0493353f684f8a2b668345d3d95a665c5c38c10beaa31f866bce7e1a58c2b7b75adea1cd9e98370079f3643f757fad73979772ea97924d231792425d989eb9abb77abb27876df4f8db6c62469a51d373741fa7f3afa1a38554a97247a9f1789c73af5fda4f65b172e6faf3e2678e2356f9a6bc942281d1457b778b3c4165f087c1302a0559946cb58c7f1119f98f39c7f3fcc579efece9a45adacfaa6bd7cc8b6fa5aaa86383866ce71e9ffd7ae57e23f8ea7f1ef88e6bb9b2b1afc90c633845ed5cf5a8aab55535f0c7f33af0f895430f2c44be297e463ea9ac5c6aba84d75248cd34cc5998f539aabd49cf7a28af4a3a2b23e72a5494ddd8e2e59557b2d368a2a919828dc714491953b4fd6a4b74dcf9ec28b91fbdfc28d8ae5d2e43e5d4b6cb993f0a654d6a3ef1a371c6f71275fdf2fe26a54837c5df70c9fc3fcff9e39461bee01e9b7352c4f862bd370c138a0e98c9a76218a2fdeedfbdbba54a23018edfe11f9fad2b0fbaff004c679ff229c66e3818f4e7a7ff00abb7e5cd31f35f70112b267e5f97923f0ee3fce78ef9aab71179639cf1c7239ab31dc30eabe98c1e060ff9f7fd7315d2efc7b906809cb4b21c96ecd12afb7f9fe54f16a631827eef7c7f9f7f7e0d2c6e50a91f36d3918f6e79fcea4f3f78c8f503af4fc7a76efd3031ecb514796da8d8a128fcf5538c7bf7fcbaff00514a0100631f7703d0f5ff00ebe7b7ae4e453259331f4e0f4fa0e9fd7fce731972d9c9ebc9e7ad0573f2e88ad7a31210b9229f1aee0b9f9463bd36e172e4fa0a993ef74e828ea62ae9b63af2dd55370236ed18f7ff003fcfe94ed3c7cbf28fe1f4effe7fc9e85f38d91edc8e31dbb9ff003f8e33e945a00377dde9e9fe7ffafd3b9a3a1af2be7b8b244af22fcccbd07e80e7f23d7b7b67854b5f24364a8e993b7a7a9c7e1d3ebd39152b2fef860aae4e738cf39eb9f61cfd3fde34327989b7ee83fa74fe5ffb21f7a4745fa107fc795dc33afdf470ff00de3c73dfaf4ebefe98abbe3c786fb548ef2df18bc8c48ea3a07c7355e4b6dfdb6b75393f4ebf4cf5f627bd43751ef8541ddfbb3b4027b7f9c67d3f2c2e5bb1ca4942c757f111d75ff86be19d557699151eca6c7f0b29e3f31fe4d6a7ecf7e3f5d2af8e9372ca8931cc248e33ce41faff00f5ab9ad1efe3d43e156ada7b3379b677515e400fa728ff00cc57330dc3da5c47342cd1c919dcaca7906b9dd2e684a9b348e2e546ac2bc4fb1c5ec644619823480ed527ae3ad4a605b9568e4c98e4528c3d4118af237f8cf04df0ff0049bd6ff8ff008a5672c3aab28e54fb30cf5fd6bd1fc2fe2087c45a35bde5bbac8b711ac8bc7e7f974ff393f335b0f2a5ef33eeb0f8c856b463d8f31b4d7e76f877e29d1242ab7fa1aba856cfefa204a7e839f5e86b8af857e2fdf05e787ef5ff00d0f5489910e00f2dfa8c7d481f8d753f1b62ff00846be3cc9711e3c8d72d90c83036b6f4dac3fefa5fcf3d6bca2ea26d2b5165563e65bca42907a609e6bdfc2d38ca9faea7c7e3f112a557fc2cab28fdfb77e7f3a6ede69eedb989f5a4af423a1f3d395e4d9225b323e78fcea4c1f4a239b791c5494f953365a15e4b6677cfcbf8d34da37fb3f9d5aa29d89b22b0b461fdda536cdfe4d58a298b9515feccdfe4d0b6ac7ad58a280e4441f63f7fd298d163238ab551c9180a5aa794a518bdcade537b5152d1545fb14322fe87f954b9c3ff009f535145fd0ff2a95ba9fc7fad2b5d58e788483f7751aa330e2a46e87fcff9ff003ef4d8a6d8bf8d11561cb57a8d74651c8ef422190f1f5a247f30d4b6cdbb3c6314c949364623643f9d309c8a9259c9caf18fe751d207a6c15a1e1bd6068178d7483fd211088491908dc73f966b3e8a5cba58232717743ae666ba959dd8b331cb31ee6b675ef144dad5bd8d8dba986d6ce31147186fbcc7ef31fafbd62508c6390329c30e9532847666d4f1134dbbee755e3df1a36a36767a45a48eba6e99108d573feb1ba963f8ff002ae64bb4c16353f2f5c7a546324fa9ab3041e5aeec7b13530a6a3b1a55c44eb4aef623913c98873cff003a84e5baf5a9679439ff0076a335a5bb1cb2dec6a47e269adfc2dfd970b3470c92f9d37fb6d8c01f41fe7df2c9c9a28a5ca9152ab29249f40a28a2a92330a0f14e8577c8ab8ce78e056e5ef81f53b2f1458e8f756925adf5f3c4891cab86fde1014faf7a1c92348d372d8cd891562ebb401f9d43783649f37d2bdc2e7f61fd7777eef56d3668d701be57565fa03c1fcc7f8e0fed01fb3fea5f09fc3fa3df5d5f437f6f74cf6c5957e6461c819c74c7207ffaeb9a38aa72972a676cb0b350bb4794c69bdbf9d4caea8edc74c54b636c0cf1ab7dcdca1f9c705803fcebd5bc45fb2a6a97de3df1069ba1f953ae9c609523770a5a39a3deb827df8fc2b57351dcca961e4e374795470b5cdc95895b68009e33b7a0c9a9d342ba5bd68cc4fb83636ff111faff005a9ad60bdf0878866b5ba8248e48f315cc2ea4123383ff00ebaf43f076931f8efc3526a56e1bedba6ed17b1e006687236cbf41d08f4fa54cab595d1d5430ea774f46798c114b35d343b72cc78518193edffd6aae599242bef8c1aed3e25f8624d0aeadb56b78fc9dd218e55e8239948e7e8c2ac7c4df87927f61699e27d3e3dd63aa968e55c63c89571f29fa8e69c6b2767dc258669b4ba1c296641f30f6e3bd58bd85ade5daf953d81f43c8c7b1aefaff00e18bcdf63bab585a6b7d4ac5752b6238dc6338963fa8193ebdfbd65fc57f0a3e83676d26dc2dbc8215703878d97cc8cffdf271f81a95888b9582584928dce4ede092ec48b1ab3796a646ff00640ea6a3b65677454cb3330098ea4f6aed7c15e09baff855fe29d5a48248f6fd96ce1665ebe73313f985e9f4ad1f007c2abab9d723db0798ba5e9a3527e3f8e521631d33e87da896222829e1252b1c1e87a43eb1ac2c1f75554bb92701540e734ed63496d2a48f7654cabbc29e368edfa57b668bf0665d07c5174b751c71dbda86f3e441c18201990f3dda43b79ad4f08fecf171e36f136a726a8ad028892711fdd0d34a998e31c670aa7eb58bc64798eb8e5f7859ee7cd774acb27f9f41524d8cd7547e195c6a5f19dbc2aaecb247a83da49227cdb76310ec3f226bb7d57f65775f8c97de1bb5bc4686cf46fed55965e3cc511ee20e3deba1d68ad0f3a9e1e6db6b65a1e552286b7fbd81d727b0ff0038fd38e68b71b24f2db866383f5e47f53fe79a9a6b47f2a38e33992521012303278fc3afea7f0f45f1bfecb9ab782fe1ddcf892f754b599ad0c225b68d0ee4590e393ec71da89548adcdd516ddec79c637156cfdec1cfaf43fcc8ff3f75ea703b74e075ce7fc8fd3d80240d11f981ee463eb9ff3ee474c8c26401d8803ebc0cff81fcfb678a16c03a8fbdd49ebfe7bfa7b75f969ad1ef4c75e303dbd3f9f6f5ffbea648f70e724f4c7d323d3d49cf5ebe9c547d7fcff009f5fd7be7e6025e6560cf6026d9f76e23d8e0f43d0ff009fafe26860b3f2d8fc7bd6b38571b58fdee9c67fcf5cff00faf2d9b776c6220edc6ee78e73551b1cb5a0eda6c47f687fb2f93b9b6862c076c918fe82bd43f672f1fb69f7eda3cec364ac64832d8c3775ebdfd2bcb6a5b1bd934dbd86e226d9242e1d48ec45635a92a94dc19581c64a8d68cee7af7ed596b9bad02f97e5f362923c9ea0ab67ff0066af1e998bcaccdd49af5af8f1e288bc57f0cbc2b7ca5774d34ecc0755f95011ebd73f9d7914adfbc35cf97c5c68a8b3af399a9d7e65d45a28a2bb4f1892d9f6be3d6ac5558ffd62fd6ad5523586c14514532c28a28a0028a28a0029b20dc94ea280211130ed454d4505f3b2baa8f2c7fbbfd0d38f5ff3efff00d6fd298aff00bafa0c7f3a7b0cfe39fe647f5a0c00f23fcfbff9fcaa1eb5331e09ff003fe79a873c504c833cd491bed46ec78c547da8cd02d828a33cd140828a28a0028a29d147e637f3a03725b580b1e9f4f6ab374040a47e39f5ebfe7ffaf4eb68b622fcc773631f9e3fa7f9ea23d4182a8e9f7473ebfe47f9ec27a9d9cbcb4ee51ce68a28a938c28a28aab005006e345496ca58b63b0cfe5cd054637763d2bf657f871ff09efc58b059e26934fd3dc5c5c7a123ee8fc5b15da69921f8a5fb6fdf5d962d0e9b70f3281f32aa42a140f619c57a07ec9be0a8fe1f7c3c8f509d57ed77d14ba8cf9c7cb1a212aa07e19af10fd9fb51d69fc69aa6b1630c92b4a8eb70c173c4872c3d7bf5ae1a952f792e87d053a0a0a106b56ff23ec5d336fd9c337cccd96248eb9ebfcff5ae1ff6a8f0b7fc259f0075c5556f334965d4939e46dfbdf86d27f2ac3b1f897ae6ddd6335bcdb53635add00327bed6e33df827b8f7abcbfb4468b24177a6f882deeac8dd426d26429b80de31d3ff00d75e753ba9f31e9d682945a3e3bb752d048ea70d807ea7aff4afb4bc14a358f14b5f42cd1b6bbe13b3b88db3cf996ee17f1c06edfe35f1ec96715aea3a85bdbb3491432ba465bab00485ff003c7f87d51fb3deb9f6df077c3eb9fbe4adf6892018c80ca5901fc54633f9577e3354a47065b4d24e2c236b1d6ff6a09e2d434fb7f326f0dfcfbe31fbe91642377e2bc71e956bc47e16b1f841ab58eb161a5c6da65cd9cba75d2ab91b8b7dd0c3a6067ad5cf8a5e169350f89be0dd4accaa5d4f6b7962df2fdf655f3173eb91bbf2ad3d2fc5ba7f8d341974bd523689aea3092ab73b1bd476c8edfe457049df43d08c145dce57556f08fc43f0fea9a6c886da3d46c218d30a4f917512901b9f5181f873cd69697f06d4fc35bcd216e209a1bbb2b5ba873f318aea3e49cfa15e3d7fa60f8b3e1ebf81fc411caa646d2ae8089e46c6d0f8f95bf0c1febd734f8fe223f80fc4da6c92c8cfa6dd6f82ed0722297b11f5183f4a98b95ad104a2debb9d6f82fe10af817fb3b49ba6f39b47bc7d52c1f1c4d6973190d1fe0c4838f4a4f187c08d33c65e068747b8dcad0246239bf8be42c541f601b1f857776d77378dfc190dbd8aacda969ca2f6c5b70dd730757873dfae47bd54d235db7d6e0f32de50cadc15e8cbec47a8c7e9597b495fcca9d38db94e1f4df8490ea9e0fb8d3dbfd1edeed2c240817eebdb472c7d3df766baed2bc2b67a14b3cd0431c725d5b5bdaca5475487eefe19e6b51080d8efd31fad73ff0011fc4b2786b401e49dd7370c22880fbccc7d2aa3293d193c915d0af79e1c5f899f102cbc35a744d7177a94f12ddec180b12c9bf67e2dd7bf151fc6df1f4df0df5ffec8d3563baf115c5db2243190de57960e58f5e801f7c0aec3e1b5fd97ec93f0a750f12de4b06a1f10bc40ad1699647e67b72ff2866c1e36fd6bccf4cf0547f0afc1be24f166a934979af269d3cef732658a4b22952109f77c510f8ec54b485fa9e33fb2badc78bfe376bbae5db7993476f34f23631ba591c73fccd7ae5cee83f68cf1e5c0f9a3d27c2091938f972d00e9cfbfff00aab9afd8c3c18da7f80ee354907fa46b173b9463928bc0fcd8935d178c6f63d2e1f8e1af23aa8996d7488189e18ac214e3f1278e7a57a35257a965d8e2a31b53bf767cd7e01d39b59f1b68366a0335c5e44b8ec46466bec1f1be86be2df879e28d2fe5325ed9390b904ee4f9d3e9d0d7cb7f00b4ab9bbf89b6735aab349a6c4d70a40c853f7573f89af7eb5f863a96af770cd79ab4d0c6cc18a46dc90460eecf53c9eb518aa8ee91ad08ae567c9570196240c0ab283b8118c63afbf5ff0039c5447e5cf6c67f0ebfe1dbd0ff00b35d67c5ef043780be246b5a333cacb6971ba277182e8c0329fd6b9f5d399b438af157fe5e3c9719fbbdc67f23f9638af42125ca8f2ea52939b2993b411d3ffad9ff000fd0e3f8695865987be31f5ffeb93fafd43d202b205c8f94819f5e14ff00eca69042aaa3a7ca3db8c71f43fe38cfa0d0c547b8cc6ff7ddfae7ff00dafd7b7f0c7711f988376dce33923f1cff00e847ff00d5c4927048f9bd3a75e0ff003ddf5e4773c31581e78ec39c7b1fe9fe47dd09b5f46654f0b44c7f2e2a3639e2afdfc585fa01f5ff003fe78e954b1cd55ce0a91e566a5c789dae7c1f6ba5b0ff008f5b97991b3d030c11f9f3f8d659e4d1de8a5a226751cb70a28a282001c558b762c9cfad57a9ed4fca7eb4e25437252714514551b051451400514514005145140051485437503f2a2802aaff00aafc6a73d47d4ff3a644710afd3fc4d3e5196fafff00abfad066968467ee7e1fe151e33531395ff3fe7bd4228264006683c51da9c91993a76a091a07268a90c0553767f4a8e81b0a28a09c0a041d6b42c6db31a9fbbce3dc1c8e7f51fad57b1b4f346efc7fcff3fc2b4bcada546368f71fd3a9e3f99f53896cecc3d16f51a91ab63fdafd32147f23dbd3e98a3a84de637d79fa568489b4153cfae3bf6fe791ef93ebc64dcffacfc2889588ba56647451451b1c2140193454d6d163e63f851a8e2aec6bc5b117fbcc6ba8f857e0a93c71e3ad274b5dd8b89879a7fba83058fd31f4ae673e6dce31c2d77df043e2969ff09bc4775aa5d594979706d0c36cb190bb58f5273eddea6b7372b513b70718aaa9c8fadbc69730f867e16789265dd1c363a3cea857f87e4daa07bf22bc8ff64af85683c0506b1733165be9e429105dacbb0819dd9e99ae4fe277ed912f8cbc1fa968763a3c36f6ba9422192595cb4800604e3181dab8df0dfed2be28f087852d747d3eee1b7b5b3042622cb1079e4ff9ff001f3e3859b8347b5531b45544dbd2c7d6fabfc2db0d7e0667f32def1981f390619bd372f46e9d4f3c5626b7f080f88646b7bf863997ce531dd8e248c71fa67b66bc37c13fb6cf893430b1ea51dbea91772cbb64ebd723fc315ec9e02fdabbc2fe3378e192e5b4fb89303cbb9c60fb061fd71cfebcb530b38ea75c3114a7f0b3c57e3cfc0bbaf85ba9c77a5bceb0d4a778d1f6819c7232071c8c8c1f7aaff093c69a8786b4f06d44d2c7a36a50ea2d1e46dc03824fe1c7e35f4a7c5bf0c47f16be136aba7da18ee6755fb5d9488e1b122e0e38cf55ed5f38feceb756b2fc419349be5db6faf5abd9e71f3249d54fe078fc6ba23273a7697432f66e9d4f77a9f4749e3dd375df0ce93e218664034bd5ade7233830f9a4c4e0fb61fe9c5686a7f0ef4dd52f6476668de3638689c0c8f5ae1d3e0dc1e25f8797b676971358ead62af613046da97262f990918ea47423bd57b46d5bc21a368fa858b5c3c3769bc994eed808fbae7d3d3e95c32b743b24eeceda4d024d4f46baf0fea4dbe3987fa3ce47523907ea302b91f1b7c23b97d2c2bc8b29580cce553a3c60631ee4035d87857e2869faba431dd7976b7ab92f0c8768c8ea54f420fa5771e2df075d691616af3c6df61d5a1125bdc2f2ac0f519e99159ca4a3ab0e57b9e6ff00053c693786c5ac0d215bed35fed56dcffac8c632a3d7b8c7bd76ff001db43b4f007ed21f68d3d961d0bc61a55beb76d18e12267052451ede62bfe39af30f8a5a64be0bd034dd46d559ae7479e64521325e3272377fc07f9576dfb43dbdc78ebe11fc3df145af98f6b65e12bdb199d7911cd14c66419cf048661f850e3add15195d599b518ddcfdee7b76ae3754797c41f1160f26192e9ac5fc8b585483ba5fe27c7a2e40fa8ed5d278cb5bff00846740bebe2caacb0aba023a3328ff001fd2bd2ff675f829a7fecb9f08354f889e3c6b56d72fad5a5b0b791b7382e32100ec4e726a25349d96e4aa4e7a187e17fd9864b4f1036b5e30921d26c34f81aee1927954dc5e6402ec89d864e3b8af9fbf6a7f88d0f8bfe1e6a56fa6cff64b4d6352874fb2847de9515b73311e9c0f4c9aedbe3ffc7fd6be3e6ad71a920922d3adad62b2b740a506c2390307bb1cff0085792e83f0d66d5fc43a96a1a8af916ba14ab0c0653bb731505f68e9b8018f6abc3c527cf20c43497223d13fe127b3f855f0c55ac6dfce8f48822b6b7c742f8f99be8083cf73f90f15f19ebdac6b3f01a1b8e63b1d4b5896f2f1d8e0dc4cc7200cf24280066bd23c73a69d4bc0ba8d95af99219a2489b03f7700242aafd7e6c93ebdbb560fed851c3e10f00782fc3166be5ac26498c6a3396554407d793bbf5aeca72f7ee72cd696437f62ed0cae97ae6acd18dd34eb6b19039dabc9fcf23f5af74dc7cbc6383c671fe7fc9ae0fe1f269bf047e1469a9ac5dc7631a422598b11ba491fe62147563d00af2cf897fb6d5e4f7525b7856d62b7b51c7da6e23dd2c9f86702aa5467524e483da429534a65ff00db5bc352278bb4bf102aee8750b55b495957eecb1e719efcaf7f6af33f86da30f11a6b1a1873e75d5a9bab518ff969165b03ea063fcf11f8abf697f13f8d3c2f368daa4d69756b248b2826001d194e41047e22b27c13e377f0578c34cd7163137d8640ec8a79718e57dbae3df07dabbe9d26a366707d6a9ca774578d770f989dca70dc60823820feb4c3d0f4ce7d3a9fc4fb0ebf81ab3e23d7ac75bf12df5dd85bbdbdbdddc19121739db9e40fccfe9f4cd052cdfde6dd8c73f786338fff005e78cfd4ea93ea632945bd064e19076eb9e7b75ebf9ff2e3e634815558e47e1d38e9cff2fcfa9c65cc37283b8f4ebebc673fd7db03e85a080bd3e5c7f9ff0039ef8ee4d51975b09326e8f1f79be9fe7d07fdf43b565cc9b24fe55acbf30eb90dc1fd3f9e7f53d09c550d423e770e84e3e9ede9f955239b110ea56a28a291c4229cd2d145001535a7f17e150d3a39361a68a8ee5aa2910e5452d51b05145140051451400514523fdc3f4a000b85ea451559bad1413276761d1f110fa67f9d38f1f874fc33fe14d4ff00543e9fe34e3d7fcfbff9ff002682418614ff009ff3ff00eba8735311bbfcfd7fcfe7ef4dfb3b0a04d3e83a2855d01a9123f2fa7eb446b88f07de9d41718915c36231efed5054d7126e1b7d0d43419cb70a7c1179d26da6aa973c55fb0b36054fe3fef7b0ff001fafa5055383932d5ada088617df1efd7f971e9cf7c8ab0a3eee3f4f4e9d3d7f2c7e14b6d1ed5e7692a71c0efebf95211924fab707b8edf4ff0011c563b9eb463cab42bddc9e5a9f4ea013df183f97ff005ba6718f336e90fe55a9aae4b7be48fa700e3f5fd6b249cb1fad691d8f3f1526e56614514551ca3a34f31bf9d68797e5da16fef11ffd6febfe7350d8db17603b753fcaa6bf980e1718e0fe83fcfd31e9537b9d54e168dd952d3f78cec075fe949772f99237ae735734ad326be9e186003cdb891523c9fe22702bd5b4cfd86fc5fa8cdb6eae745b16ce0234cef239ec00553cfb6735352ac22fde348e1ea4e3eea3c582e5beb566db4c699875619e71fe7fce457d07f12bfe09c3e2ef861fb3feade3fbe911ac74996da391442c981348101cb007a91dba77e40af79f08ff00c11235af136870c9078d74f82696de1b84135bb3291222b8071cf1b97dff009573cb1f4eda33a2865d524ed247c1ff00d9032c723a8fe1f5ff00238f53f8d324d2762eefbac791c739ff003fcc7e1f58fc50ff0082417c6bf86b712bd9e8b63e2cb552764fa35c890b29e7251b6b0ebe9f9d7936b5fb227c54f0dab35efc38f195ba46c4173a3ce5339c1c30520f5ea2a563a9bdd9d0f2f717b6a70be0bf897e26f86f7f1cfa4ea9710ed20ecdd98dbea0f18c0ebf4a834af1bcd178ba0d636886e2daf16eff007431fc59381f9ff9ebad7df0e3c45a682b71e1dd6edf6647ef2c654db8faaf15cf6aba6b58102486485cf559136951cf63f88fc3b60d546ad29681255e293dec7d77f097e36f877c77e21fb4d8de79378c009ed25057cc20e770f5e38cfb8aebbc2f670ae8371a5cbb5d34bba96d8a3f5313fcf193f837e95f05da35d689791dd5accf0cb19dc8e848c74e7f515ed5f09bf6b99b48d66e3fe12659658ee2de389a58506edf1e46e2323aa9c1fa571d6c1e9789df87c7466f967a33df3c47f09b48f115a08e6dd0c60131b47c3a31e841fe95ee5fb34ea5a7eafe069be17f8baf5b6dcc2d1695a8cb1ed689981dadd3b123bfa572dfb21eb3e03f8d1e26b3be9bc59a52adafce34fb8710ca5873f307e381d7fc83f56ebfa3780fe34d93690da96897d7b1c66689ac2ea392e6d39e1804248e7d71fd6bc7afcc9f2b3d7a1467f14753e0ff001a4779e04f19ea7e0ff16daf986ce67b5f35860cf190544a3b10c39e2ad781bc36d69f0e350f0aeef3f4f69a59a25525b117739f4dbd8fe55f4dfc5df817a36a7e1ab5d3fe224933325c4761a4789ad137490876db1ace7b8dd8193eb8ed5c47ecbdf04f55f06fc79d6bc23e25b2965874db09ada5b958cf91731483e575623d3f1cfbd11c42b5a5b99d4a6d4b4381f86f3699adfc6cd2ec75848db43d3f4f9b56bc57191288c61140ff007b1f5aabf16bc7f7df1a7e28ea5a8ea4caba3e8e8b0da59a9cc68ee99000c63e55c1fa9aade1ef0a47e20f8dd0db46d379515bcd149e50cc8d0ac873c7bedff3d2b57c25f09fc510d949a9c9e1bd6278ee7519afa602db714c37c8ac067eea81c1aa7285c51e64b42d787ff662d627f027f6afd86d74dd22c50dcc6f7d20884adb70bf2f539ce3fce29b77f07345f859e1e82d351d6adb5ed72e3f7f3c16b1e238a57f98b3b9ea470303d3f2c1f89de2fd63c51aec6be22bdbab3d2f4b45b9bafb51686241c98e30bd38eb81d6bc17e24fedad67a2b5cdaf872cfedb75ca8bc9c7eef39eaabf9f5e3a715b51c3d59ec735495387bd267b37882c7ed97fa459288a35babc17731c05531c2a58e4fa6e2bfe735f38fed67f132df51f8cf6b7168d15d43a1dbc718c1dc864cee6f6ea7f4f4af3df1c7c76f147c469a36d4b52936c11b4691c1fbb550d8c8e3d715ceda40b70177167932485c649e9fcfa57ad470fecfdf933cca98c553dca4b52f78d3c79ad7c46d6cdeead792dcca4e1573f2a0ec147615460d3bd5467af4cf1f87f9f4f51dd7863f67af1b78d006d27c17e2ad4964e8f069b3329fc42fa1ff3cd7a9780ff00e097ff001abc7d24663f074fa54729244ba94e96ea7b73925875f4ad658ba505b98ac25593bccf9c67b259a31f5da38cff009efd3af1eb4c86078e393e5e146339ebdff1afbffe1b7fc10dfc433346fe30f19e93a7c5919874d8dee24038eecaaa0f7e87ea6b93fdad7fe0997a57c0cb6beb7d1350d635599ad56eec6e2e42aa4e130658f6a0ea00cf07bd631cca939728e797492d0f89633b64607f0ad2122c83a16f5c77e7fa96fd3a038c77df03fe10687f14b59d42c354bad42d6f1504b079057900e1810413c5677c59f85cdf0abc6d75a3b3b4b0c5892d66607f7d130c86fcfd0f502bb3dac5bb18c70d38ae63916e4af56e7af73d3fcfe3c76cb0853c1f4c7a01dffae7bfe439b051a3271f29c63ffaff004e9f86076c1abb5bed4cdf36dc838ff1fcb9f71ce71cd93ea4983f2fde39e39f5c9ebf9e3f1c7ae61ba89658d9bf1faff9c8fcfea6a6efebcf1ef927fce3ff00b2a74c0b5a00de80641edffeacfe1f8e009462d6a62d1525cc7e5bd475479728d9d828a28a448526ee6969a579a6345882525c0a9aaa44487ab60e4551a418668a28a0b0a28a2800a47fb87e94b430cad00562b9a2a4f21bda8a0d3960f56313fd50fa7f8d38fde3fe7b9a6a7faa1f4ff1a9231966ff003dcd073c46afdeedfe73fe353518a282d6814138a0f345032bcf16df9bd4d46064d59b8198ea08d77b81419496a4d6f6ec1fdff9d6ac29e58dcbd7040e7ae391efdbf10476e051b71b777fb871fe7fcff43a29bb695f9949e71dc1ff00ebe0fa0e9ef5123bf0d1495c7249852178c670319febdbf2fca98ef966feee09c9e847f51cf4fa74e70e6e50e3eee011fddc0f7edebfe348e32c76ff007b1f8ff9cff3c1eb50743b94755727767dce3f01ff00eafc2b36af6aadcfe03bff009fafe3dfad51ad56c79788f8829f026f7fa734cab9a7c5923e5dddf18ebe9fe4d0c8a71bcac4f66581fe5f5e3fae3ffd64545a810aea0739007e1dbf4c7ffaaaf4083fd9db8c0ff3eb8e839e3f5a7a8fef2fa31b97e63d7b7f9ff3d314a3ab3ba51b451db7c02d29755f8bde1985f6b47f6af35d31d76aeefe9faf19afd60fd91fe03c62c20f136b56fe65e5c1df6d13afcb129e871ebfe15f9d9ff04e9f86ff00f0b0bf6a2d3e365dd69a5d9cd732e7a01b7007e6457ec8f836cd6d34781546d58e355503ee818e82bc0ccaa34cfa5cb70ed52bb3ccbfe0a0de156f12ff00c13f7e2b59c637b45a6417c70339f22ea2909fc1549fa5767f052ea3bcf08e8b2c7b5a2b8d0f4e9972dc10d0267f4c8fc6baad6bc236ff0010bc2facf86eed59ad7c45a7dc69d22a9da4f9b1b28c1f5c915e67fb1b5e4dab7c03f05ef52b79a7696748bd1bbfd54d692185cb73c63603f4c578f1ad68f29ec461a69b9eb0ce47ccacd9c8e73c9fa9fc2a45bf7cafef64f7cf4e9ffebe6be79f8e1ff051ef057c29f1449e1bf0dd8eabf11bc57192af63a2a89208987679467918e4007fc388b3f8dbfb5a7c699616f0afc3ff000df83f4f99810d7ca6699077041ddebd36e6b5a781af37a231af528d257ad248faf64d4660a55ae10a3750c46dfc8fd7a5713f107e127c3af8810f93e24f0cf8475689830ff4ab687cc00f070c3907dfeb5f3eea1fb0dfedabf1442c979e33f0cc11caa0793f6395633c7bc3df3f439ac893fe099ffb4b7839da4d6f47f87fe30b353b9b0d70929e00ebb570707033f5ebd3ad6575a2b98f3e59ae5cfdd723e5afdbe3f60cb7f825fb44e9d67e1592ce1f0878ca5074c95e7dd159cac79859892460f427b5781fc5afd9efc59f04b556b1f1368377a5c88df249b77432633cab8e08afb9fe287c17f09f89b40b8f06fc40f0e78f3e1a7881a50da75d25d1bed2e49baabef7c90091ce08c7a738ae6be11683e33f10780a566b56f115ce913c963a85adb032ca154e15cc2dcb2b01d4574d3c5d4a71b4f4b7726585a35bdfa4ef7ec7c1b6c7ec277c12346df74b23633ebdff00cfbd769f013e217893e1dfc41b76f0e6b973a3dd6a2cb0492c47d0ee1c7afa7bd7d5ff000f3c1df0cfc6de3fd43c39e28f05dbc926b5aa47287588d9dd41d991597031d4ed03b9afa93c1dfb0e7c0cfd9c74a8f5c6d1e3856dee44d1dc5fce6e1d58021554719ea38c7381457cc21cad5b56561e956835cb2d11c87c05f13eb9f117e18e8fe02bcd4351d6b506ba8355f115fdcc9e6456b1c7379b1c3927ef1c2f4c63240cf5afaab51f115be99243757d70b0b6a172b6d16fe5a46392107d2be7ff00841f15be1bfc1bf09df35d6b17177aaeb5a8cda9deccb6622f359c80912e7a2a800007f2a77c33f883a97ed55f1fa0d7574ebeb5f05f8360924b10d1b46b7977200a083df6aeefcebc1a9ef4f999ee4e7cfac8d9f887e29d0be0d7ed65e17f3f48d374fd375ed067b45bd588463ed5e696058e31c8c8af947fe0a69f10fc59f04be38dfdf782b5ed7b43d2f50314b796b0cecb14570635c48a01e8c3d3d3f3fbe7e21fc16f0efc68f0dc363e20b34ba108262911f6c96ec7bab0e98e2bcc3e237ec21a5fc54f085b69faa6a4cf7b6711b54bb65f33cd8d7ee6f1d78e9d4ff4ada8d4509de7b1c724d41a8ee7e4278f3e26f89fe28ea135cf88bc41a96af25c14690dc4a5b7951819ac4f0dfc34d6bc6d7ad6fa26997daadc2004a5b42d295e839c74ff00f57e1fa5f7dff043bf0ceaf6f672a78b750b1bcfb428b9823b70d0491eee7693ca9dbf515cdfc57b09fe03f88b52f87bf0eec2e37e9c5aca16b5b71f689c2eccbcaea3272cc3ad7b6b34a6b4a678f2cbe555deb33e3bd1bf630f14daf8834db3f11dac9e1b86f657563738f3d5157713e58e7d813debebcfd97fe04683f0905bea9a57c25d6fc63228046ada8e234419c657cc011467dbb7bd759f0d3e0578db59d711743bab55f127d9e3179ad5c5b7db24b794f2d1c20e406ff6b1c1cd7bf58ffc11bf5af8cd14775e34f1378c3567c860b79aa9b78573d76468bc741c13db156a8e27131d36ee73cf1583c1bb3dfb23a0d0fe2e4a96676f87648da351e5c306a56b23bf1caaaabe78e7a7e15a9a5fc59d3e6b759353b2d5b409266f2d5753b7f28120e319191dbbe3d2b2ad3fe0df8f03c1648229a4b79941c489ac5cef5fd31c638e39ae63c71ff04e8f889fb3f5a7fc533e2cd79aca3c936bad1fed3d3ae3fde21432291b474ee33cd4cb23ab6ba2a3c41846ecefeb63d7a0bf82f6d926b768e48e41b814395e73dffcff008f17f1dfe197fc2d7f01c96b16d1aa69e7ed162e47391f7973db207ffaabcc7e1cfc5aff00855fe388748f1a6993f856e2e62104334336ed1ef64dd9dd1b1fbac7fba7a7a57bf5a5d477291491c8ad9018156c8f5e31fd3d6bc9a94654dd9a3d5e68548f3d369a67e3dfc62f87f3fc03f8f963e208ade4b6d2efae8c771185dbf6676277a119e9ce47d2bbcfda5be111f889e05fb4dbaf9dab68f11b9b474e7ed76ec41da0fd2bedff00db0ff646d37e3f7836fa6b7b556d49a36f3230389300e1d71fc43a7f2af95ff66f82f2fcde7c30f1032db78bbc35b9f479665d82fedf9263e7a9c035dd4f19cd6975460a83778b3e1094609f93e6e8770e841e87bff8554b852877fde209c73d483dfb7ff597b76f67fdad7e09c9f0cbc6b25e5bdabdb69da93125318fb3cb9f997f1ea2bc7ae51513b600e33faff9e9f957b546a73c548f17114f95b5d8ac4663e7f1e3af5ffebfebd3f86423cd8371cf5e7ea7e9fe4e481d454630c08e3af248e3b67afe3ff7cfd72d89dc4854f1c020771cf1fcbf03ff007cd6c73dca3a826d5c7be4fb5571d2afea2a3676e1781e9fe7fce7a9a56c3cc247f9eb5679f563a8d145490c7fbee4718a7471ee9db238ff00ebd1627d9b21a29d2a8590814da466156617f3579f5aad525b36188a11517a9628a28aa360a28a2800a28a463f29fa5002d1506f6f5345069ecc44ff00543e9fe352c7f79bfcf7351463f74bf4ff001a9a31866ff3dcd06111d9c5141e68a0b0a28e828a008ee5bf77f8d36d933f353ae46507d6961c08d7fcf3411f6896d9b7dc01fddeff00aff9fe62b43cedaa01f4ce3d31d0fe878c76ce01e2aad9267e6eeac0ff009fd7fcf22462b1baa6efde1006075e9fa76ebdf1e9cc4b73b695d46e4c66c751efe983cf4fc8faf7ebc65cfc2e71d30a46318f6fe58faf19e9511538c80707a1031f4fe9fa7f74d3cbac8a42e3ee818c7f2f40476e7e9c1cc9aabf533b54ff0003f53fe7fce315488c5686afb48ea08edf9ff9ff003c9a709e7737dde95aad8f3eb2f7ec460735a7671ed8f6b2e57be7f0fe99fe7db8a8912cb3654ee39c818ad48d15615076f4c633d78e7f53d7df8f5a99335c3d3d6e488ec90f7e0fcdc1e0e339feb8f7fc2aa0b7326a10b056c7df04f4c0ff00eb63ff00d58a9e66ff0045661b5b92707df27f91ebf8e48adcd7b48363a278667dbf35e594cec71f782cadcfe5fe78acf9ac777b3e74ae7d6bff00046cf0ecd75e3ef1d6ac147976f6505987f42f21247b70b5fa8ba32f9766abc9fafe55f9d7ff00045bb455f0978e2e3fe7a6ad671138f4473d7f1edfa77fd16d3180b555c61b93f5e6be6f327ef1f5d858a54158b505c3daccb247bbcc8cee5c752457c73fb4a78dfc65a4fed13e30f80ff0e8496e9e24bf1af5fea71481a4d2e0bb857ed110e30099371ebc6fafb0e7d6ed7c2fa75e6ad7ad1c763a55bc9773b3bed554442dc9ed9e9f8d7cb9fb017c2fd622f8e3a5fc5ed7daf2693e275c4d06a514f1965b059d83d981d71811904741b863a62b1cb6846ad5f79684e2b12e8d2badfa1f4f7ec2ff00f04c5f0bfc11f0659bdd5a7997d20124eec332dc31cee677ea727b1ffebd7d85a1f862c7c3964b1d9da5bdac4a30ab1a85fa7f9f6f6a4f0b59349671e1642ca36b614f15178e7e23786be16daf9be28f12683e1f46e76ea17f1c0efcf21558866638e8064fe15f6dee4123f3cc446bd7acdceedb395fda3bf6abf02fec95e1782fbc61a8dc2df6a0ac6c34bb480cd777b8cf451c28f76207eb5e05e0ff00f82d67c36f116bd6f67adf87bc59e1ab7bbb85862b9b911cf08ddf759fcb24ae72739e847e7f357ede92789bf696fdb3bc5dab785f48d47c49e1fb186c74ed12f6384c76821106e72af2614e5c9cfd07b578cfc3aff82767c5ed5744d5a2f13788bc3b670ea926e851d9ee24b68c9276a8450a081df7763e95f2f8bceeac6b38d2b597e27dae5d90e0561632c45dca5f81fad7f147e0ef83bf69ef064f14d6d6b746f225920b858c6e2586e1db9cff00435f9b3f17be16eb3fb297c5193fb36e923d5f47537134206d6d4f4e2f8271fc4cac7a8ec6bdf7e195afc59f01f84f49d1e1f8a252df49b18acd45be876c03844c6e62e09e8393915f3bfed2fac7fc343fc6796ce6d43c61f10359b3b51a6c97915d476f670a17566dc5170a06d1ce47f2a78ccca957a2e315ef773970394d4c2d7e683f73b1edd2f86bc0fe3b3a4f8b352d3f49b9bcb611dddb5d888094965c0cede58f27f5af08fdacf56f16f8e75fdf67a0ea10e8f67fbab369136c7b8f594afe7d739f6a863bcf0ffecc725ce9be0e89afb52ba0a6679ee5aea3d3d8632a84f5e71c0af36f18fc69d43c5b76d25febd717b70c4e6259fee11d7e55e17b76af1a1193773dca9251564759f067c25a0785658f58d43416d735ab75cc979abdd2adac4d93f722f6c7a67fae27c5afda7bc41e2eb7b8b1d575eb7d1f479251e4e9da5ee8005538f9d97e66ce3e9e98e2b88d2f578754d4bfd3b52568514bc82ddb7ac6b938e49c6ef7cfa56b68df1dbe1ef80256583e1b59f882666fde5dea77cd23cbd7040c607e007eb5d51a7adec73c6a35a264bf0e3e30ea5e04d562d43c2dacc92b2bef9eca7ba7923ba1fc430c786ee08ee2bed1f83ff1e74bf893a25b4eb716f0deccabe6dab4b99236c74e7ad7c769f187e06f8ee1dbab780f54f0bdf0e971a45de029fa74fd3b55ef00788be13f893e213688baa78d74eba8e5daad334415a3dbc36e539ef9c62b3a94efbab1a46ac9bb5ee7df16f7597dc9b59a32180cfe59af9db56f851aaf8025bebc925b7ff84e3e276b1269fa684f9dad6df21a471feea0e0fa8ad7f86bf183e19f80a7b9b1b6f14489716cfb659351ba277718dc0b1db8cf7ef9aab75e17f106bff1e743f1c786fe2278335b9342bc927b2b1d4d1956189e1d8c8a6327a900e76e783eb59d0a6b9d39ec5568de2edbd8fb83f66bfd9f749f847e0fb1b7b7b78ee2e911419cae5a4638cb7d735c9fed99ff00051ed07f64ef15c7e16d27449bc61e298d77df449762de0b0e01019f0496c10703fc6bccdff6bafda03c31f6792c7c2ff0b75b861d8e3c8bab88f3dcf5001f5edc77af81bf698d17e28f8d7c47e35d5fc49a2c3a3ea1e34d46eaf2496079311094f015c8c6d518007d3ae057d262333a6a8f2e1dfbc7cfe0b258ac47b4c5eb13f443e04ffc160b45f89df112c3c31ae7846e3c3b75aa37976b762f05c412c9cfcb9da083f5f6afadf4cf1043aa41e605f90e410cbd7db9ebe95fcfafc33b5d77e1958f876de537b7d3697a8c172d7d1ca26644594337cb9cf033fe735faedfb3b7fc140fe18fc4a31e9abe234d27504c6db7d553ec8efc7382ff0029e9edc135a65998cea49c2b5b4ea4e7994e194554c22f54751fb52fec57e1bf8dbe0bbc856c215f3632c610a308707e74cfdd6f71e95f0bfc31f16eb9fb34fc5fff00855fe2e6924b3b9cc9e1ed4653b8ca83930b9fef2e40c1f51dabf53b46d66d754b359ad6786ea1601d5e19030c7d47635f22ff00c151bf67fb3f89fa35a47a6225af8a0c2da8e913aafcd0dcc2ca4a83fedaa85c0fe678f53158386263ef6eb667839762eae0eb2fe57b95ed2ed670926f231e9dc67ffaff00a5795fed11fb21697f192fb4ff00106912c7a178d345944b63a8ae00948c6524c1ce1b073e9fcf23e047ed0da878b3c23a66b1ad69b1e8fa4cda789a4bc9e6e0cea4a489b31d432b715dc597ed29e01bdba5b75f18e84d75303fba372ab21edd0e3bf5fe75f13520e9bb33eee3152b496c78efc61fd9d2cbf6b1f87f7da2ea76b6fa478d2c632b7112825249803b5c671d4f7f7afcb0f8b7f09f5cf82be39bff000df882ca6b1d474f90a9122604801e197d41afdd35874bf135ec3aadb4905c4d1aec59a361ca8e80e3af4cf3dcd7ce1ff0550fd911bf68ef830be28d0ed7cef18784232e5231992fedb3f32fa92a06457460f172a52e591cb8ac3a9a6dee7e47c56f90319507a64fb7afe07f207a543344219f7f3d8fd3bf4ed8e9fe706e4c3ecf7415836d6c865618c3700e47d7f99efc54778a44bbbb673cfb738fd0febdf15f49177d51f3d28d8ab751f0b9cf42369e3b7f863f4efd285baec9d87b56984062dbf780e3df38fe7dbea7eb9cf85332f6f4ce78ad2272548750847cededc0a9205dc19bf1fad35be50d53594605bb16f4c7bf439c7f9efe99cd0a29bdca53f12b5329f3ff00ad34ca97b9c92dc29f0388db9a6629c22623ee9a10d5f72ca9dc33ebcd2d362188d734eaa360a28a2800a47e50fd29686e54d0057a29de537a5141bf321d07dd8ffdd3fd2a4a8e0e517fdde2a4a0e7419a28a281851451400c9f989a9106c655feed4879a31cd02b7526b698448ddb9c83f81ff3f8fd2abcd26fbbff003d29d504bb849b803f5c505b9be5b1af71759b6e9bba939cfd3f0ce7f2fa8aa70dc62e1893f78e4fa8ff003fe7b546f23795b73c0e6abc0ec673e86a546c54aab6d324d4a4fdf10c30d9391ef4d997cb802838feb5244be6dc73f754e3ae2a3bb0bbbd6a8ce5afbc3b4d5dd76bc679fceb4e41b88fbd9380d9efd3f5e40ebd0f5ea465581c5c0ada2bb769c1ce063f2ff3c71dfdc5448df0b7e5d08641b6d98fe7ce3a7ff5ff005cfae2bd73e28f8492dbf678f86fab247fbc8a292de6e3ef0918bae7d3a1af2bdbe55a48147dd0d8e735f4d78a3c387c41fb1ac712aef934ed32daf93fd9d982d8ff0080b1ff00eb572579d9a3d7c2d2e6563b8ff8260fc52ff8541f097c59a95d431be9abac44d248c7e632088e11475e6be97f137edcfe2cbad7ec7c3fa0f84dae352bfb74b8289f37d96271f29720f048c7e66be64ff825dfc2cd2fe2b785af64d4f5168f4ff0ef89ad753bab32a04772860751e6127180d83f857d95e23fda4fc1bf0b6f7521e1bd26df53d52e981bab845f2e2f9460296ea40f41c57cfe36eea348fa4c2dd52462788bc11f19bf68bf84377e1ed6ff00b3fc37a7ea4e82536d7645d4c80e4ef20746c722a969dfb257c68f0af875b4cd17e266bd636b198dede28b597f2e378ffd5e06de318c0c1f6f5ae37e23ff00c14535ad1f4b79ff00b4b4ad3d49c2c5671acb313900f524e3df8ef5c01fdb8fe2478bf57924d26fb581616ad992e5d308d91d0e0633c8c0ebebc6056187f6b18be576b0ab72cbde9bd8fa7e0f00fed29a869ed6f7df1b7c551c370b89561d61a3273f31c1450e39f7e6b73e1afec73e1df086a09ab6bb25e78bb5e4e4df6af3b5d321249f977e71d7f9d7c937bfb757c44f096acaf2ebb34ea81b368615926762063208f940f4aadabffc1553e2b41a347f64d1e2b29378517b7766a63039e9f2f24fa5394eb4fedfe2453a7496acfd20b78da240912b2af002a74e381d3d31fa56678dfc6fa47c36d09b50f106a56ba4d9c79024b99026e3d4803a9f5e33fad7e5ddd7ed77f1bfc71a934d6fe28d6a69ae97c966b38951573c9550a36a0fa55ed17f63ff001f7c65d523b8d66e3c41a95c6e5676bd2fe5c6bfc5ba4738fe951f574b49334f6b4d6c7bc7ed1bff000506d2758bfd4349d0bc4c64d2641e58b7b0b62935de3a8321e8bd3a60fd73cf8878bbf6cdd5342f0dae93a2d87f675beed8d0c04a2c8a791923e6666c9cf6e7bd43ad7ec992683a88d334fd674fbebe2cde6ff6721b8921ebc6fe99ed81f9d7b0fc10ff0082745c5d5e43a86a91cd671020892e8eeb861c7dd03853f5aafdd41dccaa549cfe14786fc37f0b7c42f8fdac5bc70c5fd936eaaf2498f95634c64c8e7d873cd627c48d4743f0cc32685e17d4a4bc8614922bdbdfba6e24241214f5201fc307f0afb23f6b5f883e17fd9a7e0aeabe07d0589d6b53b511ddc90905ada23d771ebb8fa7bd7c65f05fc0da7eb17b35e4c22fb35b8020b570376724976fcbbfad7451a9cfef5b431ad4dc3e2dced3c17e0682c7c1b0db4d0b0172a92ccacdc9e071c5737f113c2326892c370a63fb3ccfb1515705491dfd7a57a8471fc87e5cf1d076f7ae47c79a64de34bdfb2e9b24371f61cbccb1b8255bb29fc856d1959e86124da393f8730477be298a19234915d18e186ee9cf3f8547f1d7c3cfe14b9b7f1269d68d246e161bf453c2a64618739e07f91573e1c59cda778d36de5bcda7c91c4db05c26cde4f1c67f1e9e95e9173610dfe9f2dacc8248661b5d187de1fe7bd5ce7a9318e878af88bc297d1e87fda16d24ba9695361966126f6b66201d8df43fcfafae0d978a750f0fde40cb75711b42389125281876e7f5c1af66f857e1fd4be0e7c45792cfcbd47c377f1335cd94ca1a3233ca91ebe98ed5ed9e28fd827c3bf1c3488fc45e09bd5d33ed484c9a74a37c5bfba03d40cf6358cb1118bb1b4799aba67cd1f0ff00e3f78cfc276d149a6f893539d76b30b66b824ae3d149e9db8ea31c57a041ff000525f1d78564b5fb7c36dac58cc36c905e479665cf239e463fce69be2afd87fc4be1b30d9dc785f549d151d4cd0c6d2c3818e432e5949f4e95a367f0275db85d3ed6ff00c3baa6a563629b5527d39d640a0e768914061dfa1e2b3f6d4e5ba2e52a8763e12fda4be0c7c7031c3ad69f3783f597e37db0db1331f4c023bf4c574ba5fecebe0df89fe77fc237f10f49d452125648a7841950fbe48f7f6fad7923fec51a1f8af55487ccd77c2772656710df5ab3427278f9f03a7f4aa1af7fc138be22682653a6b43ad4526e7825b4986e3923dff0c73d2a79a1ba60f96d7923e9ef03fec83e26f01cab7de1cf8a9e26d0fcb71b469d70eb096cf3f26e2a7f11f95749e20f859f19359d5a3bc9be335ddc4f09db1bdee9692b42a78c03f4f6e727bd7c27ab7c3bf8c5f07f4fb18afa1f156936a26f3612b2b881486c8e41c67bfa1e2b7be1e7edbdf19bc23a9c765a9dcea12daa4f88e7b9b70c5d78c6f246707d474ae9a588aab484cc274e84f492d4fa7bc31fb0a788345b6b7887c54d6618e1324862364b340eeee59898c900024f6fea6b9af8a7fb1bdebe9cb2f89b4b83588e3906358f0f46b15dc0993cc909fbdefb7b533c0dfb667c48936ff6b7862178a4ff0056e22d8ad96f9402b9ce477af4cf0bfed936d04f1c3e20d1b52d08c9c19a44261279ef8ae4ab1a9cdccdff00c13aa2a2bdde88c4f855f07f56f87ba4417fe09f1336bd6308c369f77f2c8c075183d1bdb8af6df87fe365d760f38c725bdc4242dc5b4bf794ff00129cf63d2b85f1ef8174ff008bd6d16b9e09d7a3d1bc516d9920b8b671e4de647fab917a73c726b99f017ed3ba9f87bc42de1ff1c69cda5ea1bc2b4fb70b2363ae7d0fe3d6b3f79abbdca71bee7c01ff000543fd9793f672fda56ea6d3d7fe29df157fc4d74d603e542c4878ff00e027a7f5af9baed37007fbb9ff003fa7f9e08fd63ff82b5781b4df8a1fb20dbea0ade76b1e1fd485de9f220dc5e2656f35063af001fc2bf272497ce452bfc40e0fa7ff005faf4e7f98fa1cbea39d349ee8f0f1f4d29b6ba94d46d90aff000f4e9c7f17ff005ff0cf420015506db96cff007bbf1f9d5a99fca4c8e33dfd38ff003f903fddc558d59fb7cddbdebd389e3d497443586e3fad5ac6db765ec33d71cfa7b7a7f9c525aa98d09f7c8fe9fe7ebe8417ddfee6118e01e3f0e7fcfe3f5c970e4e55732e5ff587eb4da748db9c914da3a9c12dcb30a8f2c71f98a7d006d14551bf40a28a2800a28a2800a28a2800a28a28023b71845fa5494d83fd4afd29d400638a28a2800a28a2800a28a2800a08c8a28a0064df2c2d5591b61156a71988d55a0ca7b96a2e14938f98e6aab1dc4fd7bd5903744ab9c645432c4633f5a072d87d8b6d9c1f4e6b6fe5f2cff75540380391cf3f4efdfe9591a369379adea71db58dbcd7570f92b1c485d980049c01e8013f856a5ab7fa3ac8de99e7bfafbe78cfbfe3c67268ecc2c6496a8965cf91206eea49c64faff9fe95f66fc12d3e3d5fe0f689a7cd810ea5a20b67e320ee523fc2be2e74c165e30c85093f4f41fcbebd3bfd87fb3beaca7e0cf876f2697ca8adaccee918fdd11b30fa7f8d70631da28f6b0376d9e6dfb286b537c3dd77c71a0de5e496b6b6e51a58cbedf31a19180fa93e95e976da95f78c751be975c99b45f0c5aa8b88d532935da038ea4e72720e00af03f8bdab7dbbe3edf6ad6f0b59d9ead2e62c39c4d851939e3a919fad7d21fb2f7ecb9adfed2baad9de6a178c34fb7386593958a21fc3f526bcfc4b8a4a6f43d2a1524ff76ba173e0f7eceba4fc42d666d512dfecba2dabb3bcef9919c0ce36e47718c0c57a7d97c1df1d7c77b7d3ed7c25a0ff00c227e0f86ef0279dc4324aa0f32b21e493d3eb5f4c7c27fd9b74ef025b69eb2af9b0697b8dba07f95dc8c6f6038e07407a57a9c10e536a8f957a0f4ff38af1aa556e4e57f23d0504bdd4783f81ff00e09fbe0bf0dd8b497f1cbaaeab338966bd9be66638c6173f747d2bd0ae3f664f036a1a1c9a6cde1bd3e5b728a9865f9881cf2dc673d7df9f735de2c7b70769ebdbf2ff003fe4534c9edc7d3a8ff3dbb1ae7f8b5ec57b38adcc7d17e1a787fc370247a7e81a3e9f1c2b88d60b444f2c631d876ff1fc23d6bc01a7f8893cbbe92f2685bef41e76d898770546063dbbfe3c6d8973f5e0ff00f5ff00cfe7483a01edd327a75ab0e55d0cbf0d7c3ed07c25f2e99a558d86ee098e150dd31c9c67f3f4eb5a91a2f98bbbeef068e1bd76f6cf51d3fcff00851b7770460af078ff00278c50d5d583a9f9effb7be897f37c4ed7449a5cf0c1a95f971b603b1e24002927a1cfa5723e0df03daf8561b86823db7176e1e4623e619e8a3dabf4bb51b682f6d245bc5824b78c33c9e680ca0773cf5af867e3d78d341d77e386ad06816b0db59c71f0b0a617007de3e9babae8d6b2e4e872d6a5f699c2f88fceb85d2f49b46d97fe22bf8ec2175fbd1ab11bdff019afb63e087ecebe13f849e1efb1e97a5c1fbb27cdba9d43cd72ddd998fe3f4af98ff657f8597bf18fe393f8a3c89c7877c32a6d6d5981c4f3f5771d3fd91f857db5a38486d58ac88cb9f988605436791f5cf14aad4d7434a74d38dcf39f8d5fb27784fe37e9535ac96d1e93a932e6deeed1423238e54e318ebfd6be2dd2d6f34dbcd4b47d4936ea9e1fbb6b2bb3823791f75f07fbc39afd222c53e6dbd0e7e98ff22be30fdb9bc29ff0acbf680ff849bcbf2f43f1959c714d2853b63ba4e0127a73eb5387a97959915a9ae5ba3cf3779304926d2428c01d89c8c0ff003ed5f5a7ecadf0d6ebc07e0145ba9bcc975093ed3b01e101ed5f226a9a845a6e9525c4ec3c9840958f50aa0f3f97ff005febf797c39d6adb56f0e69b716f32c90c96b1b232f705462af1527a114373a98e3f2f38e99e9e94ef9837078ee281c515ca7510dd58c779feb15641fdd71b97a63a5436fa6c3651fee618e28f242ed1800f7fff00555c2702aa1d72d174efb433ee874f1335db20cf96474c8f5aa8ea673b44835ef0dd8f8a74b7b3d46d2def2d6e14831cabbd413df9efd791cd799f8d7f640f0af8eacad629adfecf77687689d0643a67a38ee31c67ad7a9d8de25e59c72aeedac8083e831dff003fd7eb5289514eee3e518e3fc28774ee2e54d6a7c9a7e1a5f7c1b48fc33addc25e58ea2f3259c89c3439242727b7f223d2b9cf871e3fd4bc21ac49e11f12c69a86873092d23bab98ccc6300120e79e57079f4c74afadfc7de02d2fe24e95f63d52d565585fcc824ce1e27c75cf5c73cf6e2bccbc19f0824d0fc4771a0eacb35dc1a78fb4e9b7018b47246e0821bdc138c7d288d6925cb3575bdfb14e9c52b2dcf145f0e6a1a0e913eb5e17ba9a39b497f2efede093855c92b22f62a4541e35f8cf2fc59f0a259f886da19352d3ce6cef917e771800a35777a5fc37d47e015cdd59acacd0c6c2c679df26196d676cc45b8e763fca73c80dd6b87f8f9f0d21f87fe2f86e2cf6369bab2b3c6c9ca473281be3fc0fe98ada32f7adafcedfa184a2d453672a7c477daec3a7e937b797575a7c2ce1609642cabbd769e0f1d31f4afcefbb4582f2e1149db0ccea0b0c9c2b3609fc07e7e98afd04b41f66befb412185bc724bd3fbaa5b8fcbbd7e7cdfc8d7172f2fdd323349c76cb67fc3fc9c8fa0c06ecf1f1fb2655b84fdcff10dbdbf21ff00b29ffbe7dc536d938538e17b9eff00e791fe1c911de48c7f75b3ee0193ed8ff0c7f9c626b16692d579523033edd40ff0fcbd307d4e878fc9795c76dfd0f7e7fcf7fccfbe21bd65116df41d7dbfc9cff9c0b0a37e3fdae9ef9fff005ff3ebce6aea1c03db82483d41ff00f563ff00d74e2151be533fa0a7470990537193f8d58b7528bc83d69a3cf51bbb1251451546c14514500145145001451450021dddb1f9514b4500361ff52bf4a753216f917e99a7d001451450014514500145145001451450023f2a7e9558c4ca32455aa0f341328dca9bcfe5d2baff00823f0d25f8d3f14749f0fc727931de4c3cf9323f771e465bf0cd725709e5b7ca0f4af6dfd8c1e2d013c5baf488b24da7d9c715b8ce1bcc77c003eb815957938d37236c1d2e7aaa2cf7af8fba7fc2afd99bf6a9f8477de1d934d5b5d263365e248605caa1c6cdf270012cb2364f1d3f1af97fe31f8674ef09fc56d7b4fd22f21d43478ef1a5b19a33f2bc2c7727e40e31d88af6cfda2bc336da57c16b7d29ac63bcf106a1722f669b0be62953ba427be39c7e55e4df11b44b5d7b46b4f1068ba7bc764b1886e9ade16f25081c127a67839fc3debcfc3d4bea7d3622d6e48ad373881a649ab5ec3044555e66d8327a93d2be9dfd94a68f5ff82d269776fe5ff67c9716538ff9e40aeec9fa0cff00f5ebe605bc96c1a3b8870ad6ecb220e79c1c8afa8be17e9f1db78f6fac6d61db63e3cb18b51b02a7e5f388db22fea78fafd2ab197e432c0c7dee6472faff00c00d53c51f07dfc7d690ac965a35dc11c4256c17479368555ef9ea7a600eb5fa7dfb2168da3e9bf083419f4692392d352b65b932a26ddcc724af4ec78c56f7c15f843a1f863c01a0e8ed631496ba5986e3cb61f23c8a08cb0e87a9ac3f875e116f811f17756f08c16f71ff0008eeacd26b3a1ca01f2edb71fdedbf4c0dac7207a57ce62311cfeecba1ef61e8c63aadcf605e78a72a9038ee31c1a62738615346377bf43fe4d70ce5d51ac63d1899e3d78c7ebfe7fcf34d2a54fe3ebfe7daa66b7c465fe6e067a7f9f4ff00f5544c778c1f5e3fcff9fe5529b29c46743f964548581e3f0ff0fe74cc67f2a43c9fd31557247336f7cfe24d318e694fcd8c64b67038af0dfdadbf6a083e1369971a5e9d70bfda091e6e675e45b823851eac7fcfbd455d9327a147f6ccfda421f03f86a6d074d99bedd703fd2248cfccabfdc1ee6be6bf80df0d57c79f10a3d1277b86d4352b73aa6aceabb843086dab1eefc71585f6a9359964f10eb9248ad21f362595bfd586ce18ff00b47df9aa31fc5fd43c1de288b5af0c4dad59ea4b079525c4164658a5881ddf302a548cff005aeef67c8bcce6954e6767b1ef5fb6f7c6aff8539e17b3f863e0976d2d9ac44fab5c5a66392d91f215030e8cc39e7d6b23fe097fab5e5b783fc4ba15deaba8ea0fa1ea50dc4725c4e59992707afd08fc01efc5788d87c7383c5dac6a17dacea0f7dac6ab399af6e248d50b9036edda3a0000e31c62bb0f815f1c347fd9ebc73ae6ab0c1fda7a6eb9651c735b4128496292372411bb8e8c7fc9ad396d4acb565c6aa553cb63db3fe0a7df1275cd2fe0c785fc29e1bd5af34ad43c557b2dcdc4f6accb325ac2a0632a7382c71f87b5727fb1ff008e87ed1bf0db58f877e369ae3569f48851a1b9b993cc94c4c4e1c13dc1ef5c4fc6dfdac2c7e3afc40875a3a75c6936ba4691fd916904932cd23ee94c8f21da0019ce31935c1e8bfb404df0c7c6abacf849a1b5d625b67b399e5b55985c2921b0539e847f3ef4538fb9664d4ad69e9b1b571e19bef02fc46f1478075591afadf4b8584372c4166819f600c3dbfcfb7b87ec43f1ce4d167ff84135cb8db7ba727fa1c92367ed10827041efd857ce375f12f5ebcf146a1e21f13d95e49a87884a3cf7cd60f6eaea3a2a80bb428f418ad6bcd424d62d2d35cd16610ea9a4bfda2d6443f348072d19e39c8c8e6aa71524a2dea6319f2bbf43f4b6c6eccf12b6e0723a75c7f9ff00eb71563ed0bebfa5789fecaffb42dafc5df095b4c640b78235de84fdec8e723d8d7b244ff68e4f61d477e6bcdaa9c5d8eed1ea894cbba4e0f51815cb7893e0be83e2cd4dae2e61ba5333896648ae192395874deb9c1ed5d385dae3d8fad3c74e9d077e723fc8ff00f5d4d397726512b4022b38bcb8c346aa0051e800a6286cf5e3b54971febffdde073d7fcff4a6f4fa7bfe153ed3a3239463a33b71f853b0c0eef4e01f4a09e3af6ff1ff000a53c7f855a95f44472f5656d5b46b7d76ca7b7bb1e647751189949ce7d3f5e6bc7fe3bfc279f57f869e2b5dfe649632c5aad82eedc5081b6551c606704fa57b518f7a91d1b8dbc6707fcff9eb55e6863d4124b6986e86e23685c018c860455477b84b6b1f9e3abde795e1cd5261fc1a6dd4839c7485ebe0a4c1b35ddd3683c76afbebe24680de14d3fc6da2b9dd75a6d86a3181d4902290838c7a76af84bc2be199fc6bade99a3dab2acfa94a90866e880f563ec2be972f97bad9e2e2acda4cfb4bf605fd8ef41f1b7ecc9e22f166b11ccda85f697a9cf036d53e5ac50c8108241ee3f5ed543c75fb0878763f809e03bf8ef6dedf54d5f4686e5da2204892ba16fde01f51f89fad54f8ff00fb59cde12f0e69bf0bbe1cde476da769f662c2eaf947eecab2e1f19e093ce7e8473d6b95d52cbe207c344b5b8875e8fc59a5a6d492de68764a9185180a47603b544b9efccd9d5254d5923e75f14785ae3c1fe27bdd2efa30b7766e639063861ebf8e3b5737acbed9368e3b0f71fe7f5cd7be7ed93a74573a8785bc450c687fb66ce48a465232cc983cfbe0e2bc02f0fda2e18f057b139e7d3f4af530f2e68dcf07191b7ba430ae49ce0d4b474a2ba4f3d051451400514514005145140051451400514514011c23e44ff76a4a6c1fea57e94ea0028a28a0028a28a0028a28a0028a28a0028a28a002bddbf633d0e2d6b4bd5a367da2df53b4b99531c4889b8a83f46e7f0af0b88e09fa7ae3ebfa57d21fb0bd805f06f882ef6e0c97d1c40fa8084ff5ae5c67f099e865b1fdf26687c67d7e4d73f6909bc3f1c8df6996cedec6100e4234a774840e9c03fa7b54eb693783eefc45f0db4165d43496264fb4c90891c89106f8d4600c8209f6f6af41bef86fa0f87bc75aa78fe48ae2e354116f8ccb2e52290a08d481f90ff0a9fc21f0b60d22cec669bf79ab43335ddc4c1ff89d4ee04f4da33fcbe95e4fb64b447bdc8db3e3cf18f846f3c19aedc69f7d0cb0b231f2cba6df3133c115f407ec8d737de3ff000a78763d3e38ee3c41e09d63cfb28dfacb17de31fb83c8c7ae29bfb4ceb7e13f8a3e01be5b0d52d6f3c49e19910c6b1e77491b300ea0e39c7b7a7e5e7bfb28fc4cbaf82bf1eb499a4f32dd24bb8d254718d8e186d247e5f5aeaa8e55293bad4cb0f6a7552be87ecd7c28f13c3e2ef0c5aea50ab469791ab3c67fe58c9dd0fa608239aeb9496dbc2b797bb6e47dd2c3071f5af3af84760b16a775a8584cbfd97ab05ba68148db14c7862becc307db27f0f4589b31f239c73c57cad46d3d773e8651b3ba24247af7ff003fe7dff3108193d3fcff009fce984feeff00cff9ff00f5d3e6b7fb3087f8bcc8849d71d6b1e51730f690038e9dbe9fe7fc698fb71f2f7eb9ff003fe7f3a44395ff003fe7ff00d7f9a37f43fe7fcfff005e975b1419ff001ff3fe7f2a6b1c1fd29ccdb4fe34c43e6cea9cfccdb727dbb7e1fe34f9ac4ee709fb407c64b7f843e0e9248d95b58bd1e559c47d4e72c7e9ebeb5f04f89a66f883e319efb50b833e95a2bb4d7723827ed975827049eaabdabd23f6b0f8a575e31f89dac5c5b13379177fd8fa5479f95581c3b8edc60e7d0547fb35fc0b1f13fc6915acfb5bc29e147f32e5c3edfed0bb2776c3ebea7f2f4c76d3f723ce7349b9cb911d7fecd7fb2cc7f132dad7c51e2eb599b4e6f9ec34a97e5128c82b2c83bf4e057d63a668f65a4592c36f6f6d0c4b185da918552a063b76c579f7c73f8f7a2fecd9e056bebcb66bed41e12d67a55ae5a49540c8e0676a01d4d7cfdf0f3f6a7f8c7fb4f78ca2b4f0bdd699e1cd2e55579e4b7d392e8c41ba202e0ee7e0761d07ad5d3a753113b2468e30a71729bb289f4a7c44fd9abe1ffc548a4fedaf08e877372f9cdd436eb05d027a1f31304e33debc67c4dff04aaf03ea377249a56bbe2ad255882b0f9f15c4718f45dc9bbb7524f35cefc5df883fb497c07f8c3a6f86afafadf575f122993469ee7438a18e745c972c131cae79afa73e1f7c17f8ff00e2ef07c97d1a780ef2fa44df6b6d2c735b34f807e5e3b9edeb9fcb7fecec446e8e296330d68cb996a783f86bfe0957e01d19da5d4b5af156b1ce7cb9678a28cafa1d881bf5af62f87bfb357807e13c0aba0f85f4bb4917fe5bbc026b83ebf3b02d5c9fece173f1d3f6b9d02e2facc785fc036697b7163be4b07bc995a0936395dcc0750464e46474eb5e47f19be0f7c7ff000d7ed4f17c3b9bc5be22d5b5cd562fb7e9f7d138b683ecb9024711a6146d1c71fd49a9781aee3cd2d8ba78ac33a9ecf995cfadb50d1a1d5f4d6b4bbb6b7bab564f2da19e359118639183918af983e3cfec551783a4bcf147816368ed1019af7451f76303abc5c7d72bef59bf12a7f8c5fb15ea5a7c9acf8af56f1468ba948b0226a90e248e4ff9e41b279217823b8e99af76f813f1e74ff8bbe1b37f6225b6b884aa5d5acb19125bc847420f63ebe959623055284ad2f23a29ca956873d3775a9f137c26f1a37c2af881f6ab09196d2e2437b0478c6132049191c72bc1c7bd7dfbe07f1247e25d06dafa17dd1dd2091187bff874af923f6f2f83107c33f17e97e2ad1e0f2348d5ae0ccf1aa9d905d63f7cbdf01e32c71eab5eb3fb12f88cea7f0ee4b5925129d36e5923c7388d8ee5e7fce7358546a4b9919c7dd972b3ded1d76af23f5e94a1d47f17f3ff003fe7f0aad04b94f7fe7d29e1f27bd7273337d0497fd6311df078ff00f57b7f9e2936e3a628c65bff00adf4f6ff003fc85fd6aa31bea4c9d853f5efeb499da7dff9519e7d69030cd5c62910ddc33b47ddce7a7f9fcaa187699f74876c6a773b13d077a92593039c73f87f9ff3f8f9a7ed3bf13d7e1efc3bb886190aea5ace6de151f7910fdf6ffbe73f955c7566723e44f8a5e335f1d7c51f899af3151a7ccb750aede576adbc81cfe3b857cc1f013e0bdc5e5cdbc93ef8669a013bc8460dac27a0cf50cfc7e75ebfaadc8b2f833346d2156d7a4963dc7ef79723b176fc231fad63fc13f899a1dcf8724965d534fb5bbbebd951639275490c31e1221cff00b3fcebdbc3c9c61a1e7d48a72d4eaafb438f4eb6b7d36c3c3f6f7f6adcb8628b907ae723258fbf7fcab9fd7bc4d1e956da6cd60ccba75c5c1222272609a3389223f876f6af44b6bb569e19a17465dc0a3a90cad8fa71ff00eaaf09f1ab369de2ef88964d2663d17c410ea71a6725126186c7fdf43f11ef5ad38dc552da6857fdae3466b7f817e151fc36bad5c451329ce62957728fc3047e75f38c872ed8f5afa6bf680864d7bf64bd1ef1d5bccb1b9b7b99063ee825d391f88af99678fca94aff007783f5af5307f058f13308fbf71b45145761e785145140051451400514514005145140051451400d87fd4afd29d4d87fd52fd29d4005145140051451400514514005145140051451400aadb7d7a7635f5a7ec6b611dbfc11b47451baf2fee1dcff007b6ed51fcabe4c8f925738dc31d702be9cfd8d3c5aabf083548376db8d0ee27b9191c0063dc0fe6b5c78ebba7a1e9e57fc6d4f58d56f9bc60daa6976e62686c6fac239ceec646f2ee3d3a28cfd6a6f8ad06abad78724d27418e49b5af135eae9b6ab18f9e30d92eded8506b8ff00d9db5099bc19a1dc5def9350f15adf5fcd230e1bc9718fd18915f487ec7365a36a5fb48ff696b17da7c31f843459ef23825930eb2beddcfb4fa461bfefa3d6be7aa49d3763e969d3e667e7efc42f84d6fa2786e3bfd2636867d3df6cec64e2650e01273e8c33f97b57ad7ed23fb30ea9e35d36f3c5de19d3ee6e2e349584ea51c0bbb6029b84980339e393edf8d53f135b47e27bb5d22d4ee6d7b54291053cf9666decdf40beb5f63fec7faf0d0be30ea96acdfe87addaf97e53fcd1cc63238c1f6fc2ba678c9c69a924634f0e9cda4735ff0004dffdafe3f14f822cb46d6ae02dc5b7fa333bb72add0039e99ff3cd7dc3617c2e2056e09e0f1dff00cff9ef5f097eda1fb0d6a5f06752d4be2b7c2d8e17d31809f5dd1198288f2dcba1cf1c9c9c7bd75bfb16fedd30f89ad6db45d799edae940086593900e300fa8f4c76ebd6bcdc4414e2ea53fb8f4e9cb95724f73ec5b8e6d1b1dc1e7f0fff005d5a9af16ffce9a16f3ad45bc6a922fddcf1dc71d6b3f4dd561bf8d25468e456c3641cee1fe7fcf5ae53c25f06e2f086af2dc47ae6b97162647961b096e09b6b62cc5b85f639eb5c3cd629c6e76aadf28fa52b1cff003a6226d4c372471f973fe7fce5e79359f5b9630f5acdd4f588344790eefde2dacf708323fe59a16ebdbb63f3ad261fcf1f8d707e3fd7e36f1cb68e5bf7abe1ad46f2520e1635f2f0093db39ff22a9ead13b5cf82eeb54b8d4fc4925c5bc6f79789fe8f6719e7cdbebb624647fb2a73f8d7db3f0bbc29a1fecb1f0124b8d4265fb1f862ce4d4b54ba72337139f98e4fa963815f2ffec35e148fc61f1934dbcba8da48f43d29bc48f9e54cf74e618339f48d188f4afa27f6c3f04cff0015fe15e85e05b5bdb7d3ff00e12cbfb87b8925236b456d6ed29ce7f87794049aec8479a7182f2318de29cd9e81fb037c0587f684b96f1ff8d7ce9af3c587fd1e103e5b1b297ee46320e0ec2338abbff04e0fd8fb4bf81d1f8c8ed86e3fb33c6faa69f672abeff3208a5c46738032013d3b8af9f6c7fe0aad6bfb397ec19e249345bed393e2369d2c3e1fb1b48e5576b675015e651ce546c241f5f5eff287c01ff82dc7c5ff00d9f3e1c5f685629a1eaf35c5c49770dddfda891e192566691b008dc496279cf20761cfd8c62a9c6318743e75c65554a7395b9b647ed37c7af875a7f8dfe3cfc266bcb8b75bcd1ed355bc86dd99773c4de5a1603ae3391e9d6bd8bc293db786a48ef2e248ed74fd354dc5c4f27ca90a2025893f4c8fa9afe663e3bffc142fe30fed17f132cfc59e20f196a49ace996a6cace5b2db682de22c58aa88c28e49ef93c0e7bd47e3aff8284fc6df895f0ee1f0a6b5f11bc4f7ba046a636b3fb5ed5957bef2305b3ee4d6ded37d0e2fecda6ec9cf6feb43f7dff61cf10d8ebff00f46d56cecd628358bed42ff002130cc65ba95831ea324367fc8adff008bfe2ed374efda9fe1ae9ed6ba7dc6b175a0eaaf24cd06f9e2b70f1e06ef4273fad7f3ddf017fe0a17f183f6695b28fc2be32d4adec6c06d8ecae1c4f6e17b8d8f903b74c702bd0751ff0082c7fc64d5ff00691d3fe255d5d69726ada7e9c74c16ff00665585e163961c72096f4a54e6a31e566b53014a5514e32e87ec1ffc1447e1fe89f16d3e0ae97a86e56b8f1dd94d843932a44923b2e3d3a83c77af23fdacbc3de1ff00d9bbf680d3bc49a606b3d2fc473db689ab45bff77e6cbbbc8948f5ca919ee0fd71f9e7f15bfe0b7df163e29fc5ef05789ee6cf43d3ad7c0f70d7167a7da41fbb91981566766c92c41233fcabdb3e247ed123fe0a34da5da2ea96da5c3a7db1f116a4e97091e6e9633f67854363241c93c606d3c74a2b4215a3252ec14684e838ba72ebf81f487ed2de0887e29fece7e30d29a232dee9d6726a766475135b8dfc0ff69415c75c35781ffc13ebc56175cd7348f319842b04910cfde89d599187fc04fe98f5c7d2ff000aee93c51e08865322cb26b5a2485d81c82d25bb07fccd7c6bfb1e5ccda2fc52f87f7c2393c9f16f8625b177c601b8b42401f5da7f4f6af89e56b9a2f63ea1495d347de302ab46add4e315300a476acfd1a7f3edd5bfd9dc7fcff9fe55783ed6fc7fafff005c571548d99a46c3f60f41f952390133ed9fc29a660cbd3ef7ff005bfc69bbf70fcbfa7ff5aa15c6da0127f9ff003f4ff3d82fb7ef67f2effe7fcfac7e66c3edc1fe47fa7e9f8d377f98ca38fcbfcfa56aaecc9b22d5f55b6d1ac26babc9561b5b58ccb23938000e7fcfd6be14fda33e2ddf7c53d6f52be05ffd29bec7a64238f291ced2ff0091c935eabfb5e7c7e5d61e5f0ce9b71b74fb7245ecebd2761d107af3fafe9ca7c2bf81b0dafc3fd63e21f8b219235b5b575d1f4fde576e78573ee4e08cfb74aeba49475918caf2d11e13e32f0aaf8cb51fec3b37296f6296de1fb231b6d26e2e24589d87fba8739e7bfbd76d7df093e197c36b83a0e93e06d0f59b5d1d9ede7bfd483c9717b28e1c8656031c63a7f8552f0a5f37c3e8348bc923f3664bf49e76ebb24924c06e7fba5baf5ab70a36e68cb79923396f7724ee24fe66bd08ca56b239f956e503a4e9fe1df127d8b4a85adf49bab7fb6da42ce5da0c10b24593c900f23d8d799697a0c7abfed39f14e3ba8d66b5992dd19186558305c7f2fd057551fc43d3bc41f1425d2ec59ae57c33a5dcdcdcca8d98d59d917603ed819c66ae597871ad3e276bfa946bb62d674eb26ce3a49112a47e231fad6b4e6e29a66328dd27d8a7f193418752f80de2cb148a38e3b7d2fcd8d54602f94cacb815f124eecf27cdc9c0e7d78ff3ff00d6e95f6c7c79f1245e19f827e23b995915ae2dfec712ff00799d87183f8fe55f145d7fae6fa9e339c726bd3cbdb699e56676d2c47451457a4790145145001451450014514500145145002170bd48a2992cfe5b631fad1413cc8745fea97e829d4d8b88d7e94ea0a0a28a2800a28a2800a28a2800a28a2800a28a28000715e8dfb2ef8e93c21f1164b1ba9563d37c416ef633973f2a960769fcebce680ccacaca76b290ca47622b3a90e68b89b50aae9cd491fa0df0e7c0034ff8256b74bfbcd43c03711c92468c0efb3983c7291f4cab67fd9fad73f3e9f63adf8abc53a7b5ddc5b6a0d710dcc375061247b67b751c7f79090723e95c8fec67fb592daea36f65a9796d78b09b3b8493eedfc0c36943fe7dbdebbbf8b7f0cd1b58b5bcd0ee57cf68c9d324271e7423936edcf0cbdbd87bd7cd54a72a555a9ffc03ec29d55529295339893e015d8977db6bf711dfca4dbc578b08516516d39600773c735a1fb377897c41f0bbc677ba4eab7d2df5ff008375086e63b973febed6520127273f89fd7151683f1a0dbda4d6da9d8cf0ead6a4ac9037041f5fa547e06babbf187c4bf106a570bfbbb8d1c5939c7f1ab8651ef800fe74fecd9929da575b9fa7fa38d3bc61e19961beb78afb4dd5600b2c522fcb2230e73f98fcb8ef5f9e1fb577ec7571fb33eb136ada7c6b6ba05f6a052cbca98b35b862586d73c8c7a1f5ea6bee5fd9a75efedff83be1f99b05bec811ff00de5e0fe35bbf18be0e685f1dfc0771e1df105bac90b1f360b855cc969228cab807af4e457892ad28cee8f57e35ef1f2d7ec69fb5ec965a8c1e19f11dc79d048562b5bf27e5ce3eebfa1f7f7afb2b4fbaf3e2ddb976b7209eff008d7e78fc7dfd96bc59f02ed354bcbab5b7bc30dec57161a95b46156f63247cae80e3202e7a7e7cd7d95fb37fc4f87e2c7c32d3b5580fcd245e5cc9b48d8ea30dc75a75f925efc7a8a37d9ee7a716fdd9fef01cf18ff3d7f5fcc0307fa52593ee86f199776db7017bf3919fea6918acb17cbc6d3861ef8fff0057e1f5c573eb18ea5eeec39416982fb9ce7a018af8d7c7ff001e2e2ebe29fc56bfb1f9a49fc237b6b65211958d432c2bcfbb49dbf2e95f4bfc72f1937c3df841e20d5d5b12436c6288e3abbfca3f2cf6ff00f5fc39a34cb69a378ca39181db6da5d81250f2f24b25c3f3ee231f5c67e9b518df56655276563d63f619b68edbc71f113f8bec765a0d829c0f9635824638f62c4febd7ad4bff000537f1669be12d0fc1f7dab69736a90c3a2ebac9125d7d9c79afe4468e7b9c12781d4fd0e25fd8d7c392699f11fc7371b8e2f349d06e081db70b9f5f6c7ff5ebc47fe0b9b34716bff09e2f33e7fecad41d932790d7000cfd76fd7fa776157ef9772252b519367c14ea00e8df3618867df93d8e7d79ebd7ad251457d71f2b76c15768e28a28a0404669be5ae29d41381406a34c6a7aa83f5af46fd9262b693e3f68d6975a24daf59ea0b2c535945204693e438c678c83cd79db74f4f7152596a175a45fc379657135ade5ab6f8a689ca3c6dd882282a32773f663f602d69f58f837e14865b39ac65b596f74b30cac3ccb758a778951ff00da0028af2efd9cfc31fda3fb2f784f5bb6599b54f877aaddea36f1c582f22299239a2e7b1524fe149ff049af88373e27f809a24b7d3c973711ebd7627919b733bbb2b64fae77673ea715db7ec433c5a26bbe2cf0bcff00eaf45f145fdb3a37fcf279dc631e9b5bf107bd7c7e323efb8a3eaa31b462cf63f0f78a2cf52d2f4bba85b31ea9189a021baa91bbf4adf73c9fc7fcff009ed9af9cfe0cf8a9b41f01dd69d3349e7f80bc5f75a43076f9d6dccecb1eeff80b0afa22dc2bc9d7a80463b8ebfe7ffad5c32beeca959ec38f1ffd7fc7fc3f5341ebf9f5fc7fc3f53416c9cfbfe5fe7fcf7a8e53b0fe591ebfe7fcf7a95a99bd01c6e9085fbdd3d2bc27f6bcfda523f877a14ba3d84eab793002e65561b901c6d5519fbc738ae83f6bbfda5acff671f00348a56ebc4dab7c9a658c7cbf7cc84738518eff00fd6af927f62bf086affb47fc6abdf1878926fb7699a3cbb7cb9a2dd13dd3027e5ff74ff9f5eda5877c9cefa1949fbdca7b27ecd9fb35cbe246b4f1378a2de68bcb7335969f9e9d089241c73df06ba8fdb67c4fe469da0f85ed9b06f4fda6e55071e5a9f97207b8fe55ee9a4daa8556f958b1c703031d31fa57c67f1e7c71ff0009efc69d6752565fb3d9cdf63807fb119c13f9d44759dc6ed1563c29fc6979e32f18ea5a2dc6c1a26a5f68b18a48e3c35a489f71f77fbcb9fe559c9e14f8a5a8d8ae86fab68f6da7ecd92ea916efb54aa074faf41c7a1e7b5767e0ad2a1d2d7548cc7fbf8f549e460c3a87f9d4e7dc356addf88ec7482c66ba8d707eeeef98f1e9ebfe7e9ebd395be14706eae6b7ec95f03b45f0f45f11b4bb6485ae93c1a6612c8a1a69dfce24b93ff011c0fd3ad73baf78a61f0e6876accc8da85dc43ecb06ec34cd8f4f4cd759fb25789d8fc4bf1478caf1a487c37a6f87e5d3994f02f6576caa67be0e6be75f89fe249be0e5edd6bda9ea5fda1e2cd5778d32c376e8f4ab72c704f6c81f4f5a51a6e756cf71c9a842e73ffb66fc4bfed4d52d3c2b6b346f1696a2e2f9939579c8fb839edcff00915e132c9e63672c7af27eb52df6a12ea17724d33b4d34ae5de46e4b9f7a82be870f45538d8f99c557f692d028a28adce50a28a2800a28a2800a28a2800a28a2802bdd7facfc28a2ebfd67e1450632dc9a2e225fa53a9b0ffaa5fa0a7506c1451450014514500145145001451450014514500145145004914b25aceb35bc8629a3c323ab156538ec7fcfe35f547eceff00185be2d7826e346ba9047ad69c9e640491cba81b19727b9183edf857ca7dab53c1de2bbbf01f892cf57b190acf6b2062aa7efae7953ec6b9713878d48ebba3d0c0e31d19d9ecf73ebef1de90fe3ef06dbf88ade1f275ad2d19678864f99b0e244c773dc7ff005eb8bf83bfb4c68fa16b72787eebfd4dfdef9f05e2fdd0ce00daf9ec0fd7fc3bef09fc48d3db41d2fc416f0c7fd91abce64be2bff2c1dd40391e991e9d2b8a93fe09b1e3cd53f688d021d1f489af7c31e22d423bab4d52de4492dd21ddbcee653f2e07ae2bc7a51a6af0a9a1eed573694e92bdcfbf7f612f1ec1ad781efac566132d95c978d81fe07cf4f6cff2afa2203e647edd31f97f9fcbbe0d7c3bfb10799f0b3e357883c2775228fb3ddcd6f1007878cb33211ebce466bee0d35b7dbab1dbf372727d47f9fc01af9dc4c6cee8f6a8fc29197e3cf0158fc4bf0eb69b788a645fde5bc8cc711c98e09c751cff009cd7ce7fb3878267f0dfc66beb2835a5d1b53d34ba6aba2c8a4c77233859a319ee307f1afaa1a1624f55efd7d3ff00d7f993ed5e37fb5e7825663a578a74dc693e28d3498e0d4631b6398005bcb98e40c3631cfeb5cf1bb7a1d31ec7a178c345d6355d2ad5b44d521d3f50b3b95954ca8648a5519055875c1ff273527823c277da069727f68ea5f6fbeba99a699d46d8d4b74541d8638acff83be2dbef1b781f4cd4b50b37b3bab88434aa0e55dba12a4718c8aeb5cee4603a63b0fa7f423af4fd41ccd6e67ca78c7edd3a91b5f829696e9f7750d5a089ff00da51ce0fe5dba7e95f28c368b7de0cd59ade390dc6b1e308ac54ecea21b38c28f7e653f8d7d75fb69686daafc0992755f9b4bd4adee58f60bbb693edd6be5ef0eea969e0df821a3f892fbf7967a4fc4dbe7b90c0b6e5fdc2a6e0064f0074fe55d54a5eee863522db47d23f03fc311e93e33f88925bc8c62b6bcd33448f2bdad2ca30c07d1ddebe16ff0082cff8c9bc49fb61d8f87e1ccebe16d0adecbcb8d7912480ccc3afab8cfb7e35fa33f00bc37f62f0fc725c49ba6d62fe7d6ef5dc1420cadbf073fdd5c0ff0080d7c563f6751fb407c78f14fc4cd7a4db0788f5279ace246dc4dbafc8983d81541cf7ebd2bb300d2a9cef73b30f9754c57eea9edd4f8b3c35fb3ff893c5526d861f2ce400aa8d231fc00fe75d8dc7ec37e3682c7ed1f63ba2a002736adcff0033e9ce3bd7e86f85fc0fa5f846c16df4cb1b7b58d475551b98fae7af35a3f3019fc6bdd7889b3e930fc0b8650fdedee7e49f8b7c03ac7812665d4ad59554ed32283b47d78c8358b15c2ca3aaeef40735fa8df18bf676d13e30e9932c90c56fa84830b3041b64cf50e3bfd7af35f0e7c69fd90b50f05f8beea10b0dbaa300b1aba85618e4ae58123a718cf27a56f47109e933e5b3be12ab86973d0d6278d1b9d83ef2f4e09618ed8fcf35b5e12f03ea5e2f97f72bf67b7ef34aa718f51ebdabd53e00fec4b75f14ef649dee23f2619191f3c0520f23af27be057d99f0c7f657f0cfc3eb38fceb58f51b98c603ca3e54fa0a9a98ae902325e13af88f7aae913e0a6fd9ef50169e625e6ee324b5b32a7e75c87893c1da9785415bbb560ac0e248c6e4fcff0011f8d7eb2c3a058dbc1e5a59daac7fdd112edfcb15c77c42fd9b3c2bf10b4f991ac61d3eea4e5668570b9ff697a1fcab38e2a4be23e8311c0d0e5bd37a9c1ffc11df5884fc17d52d77379fa6ebc6765eea1a34c103f022bda74785fc01fb7d78d2ce32cb0f8823b7d6e0f9481fbc897763fe06add3b935e51fb0b7c16bcf80df1b3c59e1c994476bacd82ea366c0fc9218a4556c7d15c9c7b57b8fed2368be12f8f7f0afc604116fa82dc787ee9b0739c8921cff00df4e3279fcabc3c772f3f323c5ad869d14a94fa1c27c54b19bc25f1e7e2fe8b189122f13e971f882d39e1a56456247fc0e361fe4d7be7c0ff1baf8fbe1be8dab2b2bc93da47e6153d1c0c1fcce7fcf5f2df8dba18bdfdb1be1feddbbb5cf09cd04c08c82229a45e477ff00583ad3ff00616d4e74f09eb5a3c8df268fa94912e7df27fce3d6b879af1b9c324d688fa06390055ef803a7e1fe1fe7b43a85d269b6735ccc4086d2332b93d30a39fe552274e7f03e9ef5c2fed35e288fc27f013c5179249e579902db2b676f323851fceb38ef627a6a7e7dfed6fe3fb8f1c7896eb544924bdf12f882f56d6c554e5ed61270a883f87231ff00d7afb57f644f8036ff0004be1469da3a999ae362dd5e3b9c969dc65bfcff00f5abe64fd89fe1841f14ff00688d475bd50acd6be1351e44607c8d719c29f4e3ad7df1a75bb410ae460b7241ed5dd56b351e544538daf2664fc47f12af82fe1debba96028b0b2924439da37e0e3f522be138ee560d3fcfb893c98f634f712b7f0ff131e7ea6beaafdb6fc4074df82d0d8a36d7d72fa3808ee635cb1e3f0af817f6c7f12cde1cf83124366ccb26a57696b332f1e5c7b49c67b6718fc2ab074d4aa24cc3112e58f3156dbe330f14cfac5d698863b7bfb9db1ca46d62b126ccfa0ce2b2bc2b70bf113c53269f6172d2470e4dddd8f9a38fd81eec7a7f915f3b689aaeb17491e8da6dc5c9174f8482238c935f5cfc11f85fff000ac3c156b66cbfe9d3b79b74df7b73b0e9f8671f857b989a71a513ccc2621d67b1d6eb3e27b5f87fe0491ee246b7d074788cbe483832c98e09ec589ed8af893e20f8e2efe2378baf357bb66f3af1da419fe04e70a07618ff003dcfaffeda1f1305cea16be15b5999a1b3fdfdf15e37c8465509f61fe7a8af032307d7deba7034125cef738f32c45dfb35b0514515e89e4051451400514514005145140051451400507914514011cd0b48d918e9453cb63d7f2a2825c5090ffa95fa53a9b0ff00aa5fa0a75050514514005145140051451400514514005145140051451400514500e0d007b9fec67e3c54bbd47c2b79b25b5be432c31c872a4e0ee5c7bf5fc2bec1f81bf136f3e0769ba9db68fe77d9af60648a37b9765b576041650738e0d7e6c683e22b9f0bebb67a95a332dc59481d483c9c76fcabed3f845f1674ff00893e1e86f2d654fb494027833f344ddf8f4af0f32c336ee7d265b8abd3e4bea8ed7c33e206f027c6bf0a6b4ceecb7521b4ba909c6e63f32e4fa9cb727d6bf427c337eb7b688ca38603d8e33fe7f9d7e70fc415fb5780b50995d566d3f6de472336d019181fcfa8e3d7f3fb73f663f8910fc47f85da2ea70c8b27daad558b03dc0f6fa57cee228b51bb3dea3535b1eb08e653d17e6fe7807fcfe1ef59be34f0569ff127c27a8787b5419b0d56192d9c8eb1ee040607b639391d318eb57ad9bcc4cf7c671ea463fc73fe4e660ddd59be6fd73dff00cf4c7a66bcdd4ee8b3c4ff0064cf0e6b7f0df43d5bc27acea0d7d2f84f537b5b6f317e636ac4189f9ea0823f11ec6bdb361545ec579fa7f9cf6f4f4af35f8f8baaf82efedfc6da27d98ad9c5141ad24800f3adc4aa37e719f9431fc057a1dbc8b31668df7a70ca7a6437239fc4ff00f5a88ddad424d943c5fe1387c6de12d5b46b8ff57a95b345f46fe1fc881f88af8b7c39e139351fd997e28e8b756b24d71e15f1e59eab771c6373a5bb7d9da561dc7c8921c7b57dcb1b379a3d8f7e83fc9edfe479845e06b4f0d7ed35e268cc2b268bf123c3b1dc5cc381b3cfb690c5271ee92a9efdeb6854e52524f425fda0f5fd5342f807e30d43c2f6e6f2ea4b5096ed1b60a5bc9805d40eea873f87b5795787edace2d16ca3d3d95ac628238e1233d0281dff005af54f833a8cde13b9d73c19a918e49fc33379316f6cfdbac241fb96f5fbbf29f42bed5c4fc47f8651fc1af12bdc59cfff0014d6b77216ce3dbf359cec398f8fe12738c7e95dd83a8a335cc7d170fe2a14f11cb2ea55117967b9f7ff003fe7fa4724595eff00fd7ff3fe79e14dc7f0b70d9a576c9fc7fcff009ffeb03ef68cfd1b46ae8ae616656ea383c8ed5e55a8fec95a2ea735c5e349249aa4adbfcc9794240e33d4f4038cfafae6bd7621cff87f9ff3fa972c4a22f5f97d28e530a9858555ef9c7fc26f87ebf0dbc19169de5c0926f677f2461727f015d3819c63f0e3f3a5e14f6ff39f7a3763bf4f7ffebfb7f9e2a429518d38f2c46b26d51ef4da37714a06681b307c6be214f017893c1fe2c919628347d5d2c6f24794a27d9eec794db8f4c060a7fce2bbbfdb174e8f5bf815a7c90ccbf68d2fc63a335b156ddbda59bca3d339e1ff001af2bf89bf0e2eff0068dd734ff8796bba3d39a68f54d6ae15b1e5431b7cb183eac48ff0f4f6ef893f0eede7d3bc1fe19d3f74305c7882cb51705c1296f659704f3fdedbf9d7958c9538eacfcff88a51788b20d7fc1c2f7f6b8f0d6a5248af0f87bc31a86f4c72be65c02a4fe4d587fb1bf868e9df0ef50d41d76beb5abdd5ca923f87cc217fafe15bd33dc5f7c4cf8a1aa224816df4eb6d26c98a9024cc6d2391ff00027c6471c575df0f3c1e3c1de0bd1f4d5000b1b7553c60ee3f313f89af3954d0f96953d4d2913cb18ebeff0095793feda566dad7c159b4dc8f25a75bfb87182cb1c07781cff79b68fad7b049185db9e42f3f5ae6fe21780a2f1edb59d8cdc5aadca4b7391feb510ef119f6240c8f6a952b19f2ea70ff00b27fc0987e107c2bb58e4855754d6986a7a833801c3c986da7e8081debd51c2805476e3915238111ee3774c761dbfa7f9151f94cd22af77c63f1abbdc55257d11f367edc7af2def8cbc39a2ab73650bddc83d19f2a323e9cd715fb2b781fc33f1e3c2ff10341f146956faa68d7b7b084695b6b4690e41742082bf303c8acbfdadfe245bb7c4af1c6bccfbadb43b630c7b4f04c6847eac7a7b5798fecfdf1aa3bbf02c737876fa4b76bab436b7e0fde123125c9f739273dc57a34684bd9f3a392a4e3cdcacd39fe0c7c39f873e2dbeff842b43682dede56896f2eae0dc4d360f504fdd1d3802a978e7c6b6df0fbc17a8eb970cabf63426252d8f3243c28fccff3ad4b5205b88a3dcb80705b8f7af98ff6bbf8c96de30d4e1f0ee9b379963a6b96b975fbb34c38fc40fea7dabbb094ea549da471626a46941b4791eb9acdc6b9abdc5f5e48d2dddd48d2ca49ee7a83fcbe83f2a34e77de7269b5f4b18a4ac8f97949c9dd8514514c90a28a2800a28a2800a28a2800a28a2800a0f4a28a00639c9ff5817da8a8ae57127e145066e489a1ff0054bf4a75362188d7e94ea0d028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0029c91f980fb7ad36a48db09ce0f3d0f4ff0027fc39a0a8efa8df298fd38e6ae687e21d47c2f7ab75a6de4f633a8c878db693fe38ff001aaec72dc9ddcfa8ebd3e9d3bf3413c9fbd8ebcf7247f51d79fcea5d9ab32e3eebbc59d46b5f187c51e38863d3758d7efe6b39992364771b146ee7207bfafd6bf433fe0959e2ebef0de93abf827529f371e1e9f7420b7fac85f9561fa7f9c57e6248731372dc723eb5f7afecf9f10e3f02fc56f01f8a1b6ac7e26d262d3aef71eaeab9527b67e523fc2bc8cd29c553b247bf93d69d4a8dc9ec7e9969d71e6c6a79f987ebfe455ecefc7fb591d7afe3f97d47d39c3f0b6a2ba9e9504f1e0ac8a194f4ebcd6ec6bb9547e78edcff004e71e95f1753467d4c7b15b56d061f18787f53d126c04d66ce5b2271c8322103af7c9079e87f0ae5fe05eb936bdf0abc3d7170dbee3ec22d6e0639f360263618faa9e3fc9ecacdfecd7714cbf7a39013f9ff00faff0013f85707f0753fb2755f1a68eb1ac31e8be2ab9489067fd54ca93af5ff007cff0091508bbe8776cbbb39f6cfd7f973fe1f4a8a5d22de7b88277855ae2d51e38a4eea1f1b87e83f2a9947cabd718007b7b8fe5fe346fc8faff9fcfb7a7f2a2f6d03ccf3df8d5027833c61e13f1c056558671a06ac546775ace71139e47dc976fae031eb5bde37f042fc46f879ac787e5c7da2ee0716d21e3cb9d466361cf0738fcfb62ae7c48f0db78c3e1af8974b8d8b4f79a74c60c1fbb2c6a5e33f8328aa9f0c7c5fff00095782f41d76305db50b082f0b71b836df9ff97f2aaa6e49dd154eea4a4ba1f3f786f51935af0f5b4f3285b841e4dcaffcf3993e5914fd181ff3c569fde42defdbfcff009f7efe65f183c5dff0cf5fb6c7893c337d349fd8be2c64d7f4bdcd958ccf9f3117e9229e31dfdebd1a0979560df29ee0f515f51869de08fd3729c6aad4bcd165460fe3dfb7f9e3fcf34edd95dbf873dbeb4c0eb8fe1e98e4f14be62e7ef76fef5751eca22910a0dd9fc09ff3eff99a6e71dfa7f9f5f61fe7156197d7b1c9f6ff003f95412615f1efebd2a5a264ac4551dddf47a5d94d7529db15ba191bdf1d87b9a5b9ba8ecade49a6916286252ceec70140ef5e29e2cf8b49f1b3e31f863c0fa3976d26ff00538d2f274e3cf44cb363fd9c29e7bd6727647978ec642853bc8fab3f669f87ada47863edb750b0d5bc4d37db2e0b1c3a23604687d368c1c7f3ab7e0fbe93c79f14bc55af2c6a74db191343d25b706f33cacf9f271c72e71ff01abbe38f1e2fc2af847e22f11471fef34db168b4f83a6e9dff0077047f8b15ff00f552fc18f003fc3af86de1fd164647b9d3ec95af24c7335cc99791cfb9624d7cee23de9ea7e638cacead6736cebcc6a6168dbe657fbd9fe2fad1249e5aff009f4a75473f2bfee9e6b04714b61ce32739f41c76ac5d2bc5ebab78c75ad2e38dbfe24d2450cb2e7e56775dc40fa0c56d599f36ea18c9fbce01f7f5ff003fe4f07f05545ce8bad6a876b49adebf7d76589ce156668947d02c6053eb6279958edbefdc469b725db68e3afd3f2acff146b51e87e1ad6358936ac3a642f2649c7214e3fc29dafeab71a4e8377796d6cd7d73671b4a902fde948e703b67d2bc2fe377c5ad4fc5df043c4577fd83aa78774d1025aa0bc7024ba9a471d140ed83f9d74538a7a33093ea8f86ff006c2f1ccba6fc1774695bed9e28d43749ea53e676cfe6bcff008d7cdfe08f897ac7c37bf926d1ee840b37de8ca0647ea00c7e7c8eff00afa47edbfae4977e3eb1d2232df67d0ed11241d9657e48e9e9ebff00ebf11afb2c0d18aa0933e5b1d889aaeec7a47893f6a9f187887477b06be821824c891a081637907a6e1c81f4c7e15e732cad34acedcb312c4fa9a6d15dd1a718fc28f3aa569cfe2770a28a2a8cc28a28a0028a28a0028a28a0028a28a0028a28a002863b4668a47fb8df4a00ad75265c7d28a73c60e323b51407b16c9a1ff54bf414ea6c4731afd29d40051451400514514005145140051451400514514005145140051451400e8ce1c7f3f4a97a73e9dfd3bf1fcc74ee39a8a33871fcfd2a5e87fdd3827d3e9fcc74ee39a4691d863a304fe1dbd7fc3f3fe95f577c2f91bc5bfb31e8f70bbdae347c5ca95c6e56824c9c7d5735f29bfcd0febc0e9ebec3ff00d42be9efd8a3575bdf8592d8c8a4adbea0f0c8b9fbc92203d3df07af15c19845ba773d3cae56abf23f483f640f888be31f86f6c3cdcc9627cb27fd86f990fe58af6d84b2d9a49c9fdef96327db3fe7d6be17fd83fc72fe14f1dc9a0cd295594bd812dc65a325e33f8af1f87d31f7069975bfc3fbb006dbfe707a028315f175e1ef6a7d853a89c6e8b2d26f1f2e59b19193dfa8ff001fcbb038e2f4c12e93fb4078bed58ab41e22b0b2d6edbe5eaf1af9137fe82a4fd7f3ec262d6e595d48650b9cf7241ffeb7d79f535c4fc6dbd5f0addf843c5ccfb63d1b521a65f939c7d92e884c9e3242bed6fccf15c691bad4ef0fc8f9fe1fe1e33b875ff3f8d398e59874cfb75edcff009e7b557b31c346db709c027fbb9273f8f1522b6d6c1dddcfd38ff3f99ee714edd0398b5a5c8a356b666dbb5db6907ba9e0fe9c7d2bcc3f6788974bf86b0e92db964f0dea57fa3b2b1e9e54efb73edb0a91ed5e8f23f96cac47dd39fa7393fe7db35e5be11f108d13f695f8a1e1778e38e39a5b2f12588527e78e681526c7a7ef17271d734e31771dcf15ff0082ad7c201e28d3fc09e2cb542b7da7c371a579ebf781244b1a93cffb607bf5af12f833fb5d9d1b465b1d7ede69bece3caf323c192261d430ff000afb3ff6cdd064f16fec95e2e6b5b792eafbc3e22d6ed154f25a160481f5427f3c579aff00c1347f650f85ff00b5f7ecfd71aa78b344336a1ad6a573326a5673b437968bb99405e48e303ef29fcb8af7b2cbcfdc3ae9e6cb0305513d7a9c8e97fb49f82f5303fe27096ec4671346531ed9ad28be367842587cc5f1169bb47ac98356fc49ff0004914f07fedf1a6fc3b9b56d52f7c0faa68727886cef76aa5dcd0a38468cb05dbb9588078ef5b9fb53ff00c1137fe14ffc12f1378fbc1de30bcd6ed7c3b08d425d2751b348e64b718df8915b0fb41ce4aaf07a57a1ece6af75b6e7a71e37a7eea6d6bb1c75f7ed11e0eb28f9d7eda5dbda3cbff2ae7bc43fb60784f49b66fb18bed466c70ab1f96a7a776ff035affb10ff00c12aee3f6a7f87763e2bd67c4b73e1fd36fae25482daded16595d636da58b960141e46706a1ff82a8ffc13e7c3ff00b14c3e00bef07de6b1aa5af8bad6f45c45aa4c8c629adca67698d07044830083d3eb4acdc39f5b0ea7185ea2a37f799e03f14fe3d6b1f139c2cee2d2c5385b68ce17fe05eb5b5ff04f69e1f15fed3f71790ab4d0f86aca4cbe303cc7f978fa0ce7e9f5afb4bf631ff82627c39d07e0be83e38f8a9a4bdf5f47026a772b35fba5ac7c075431e003818eb9ae07f64af07786b51f8abf15bc55e1bd36cec749d77c4d27f64c76d1048d2d40217681db3cfe359e2af1c3f3c9597e67cee2b38fad621d2bddadcf45f8cf62be32f10fc39f0590a61bed54f88f525247fc7a592e501eff0034ec9f5c1f4af4db295a65691b6ee95cb67a71db15c2e8969fdb7fb45f8cf5465678f41d2ec3c356ecd82119835ccfb7bf3e6460ff00bb5e811a62350474001af99949b7a12e49e887039155f7830dc673f79546454ec7627d07ad646a1e33d1f4ad384d73a9e9f6f0e93334da8079d5644500151b49c927b7f8d5d28dcc2a32ddeeb30787b43d4352b97db1697693df4a49c6d11a337f4ae5be075b1b6f845e17fdd792d2e9f1dd329727065fde1273fef5617ed0dae4be29fd9c752d3f4bc1bbf1c98744b357f91b6dc4803b63afcb1863f857a169d68ba6cab0c6cbe4daa476a80740a802e07e23f4a1a571c6378dc91dbd3e5f6cd783fedcde268edb46f0ce8ecdb52e2e9f50b80c7e5f2e21c13f89af79ba258ab28c2b0cd7c49ff0545f1ac9a4eafa9a5bbe6e63d32df49b650c47ef6e24f988c743b73f957461d5e6918d48daf73e1cf8f77d26a3a4daea574a166f156a175a98c8c130ab7971fe833fe707c9e4186ea0e79e2bd67f6c081741f8a36ba0216f2fc39a45b58b67a072a1db8e8396cf1fd335e4d236e6e3a67d2bedf0b1b5347c6e3a49d46368a28ae938c28a28a0028a28a0028a28a0028a28a0028a28a0028a28a00291d77ae2968a00ab302243453aebfd67e1450632dc9a2ff54bf414ea6c3fea97e829d41b0514514005145140051451400514514005145140051451400539519fa0a6d4917dc39ff0fccff2fa74a071d46a02a7f03ce7d45484e093e9ce7d067b7e6083c77a1ce073fc391c0c63fce7f0e78a1bf0ebe9f28ff24e703ae7b5496b408b72920e781c73f77ffd5cff009e6be82fd87f5712e97e20b1f9731cd0ce17d07238fc6be7d2493f4ec7b7a67e878e7b1af64fd8aef043e3cd5a13b8fdaac4b839feebaf5fcfafd6b9718af459db97cad591f482ebcfe04f8a1a7ead6efb7edc17e63dae2204afe6b91ffd7cd7df5a37c5ed26dbc176779797915958eb5246f1dc4cdb2289f673b9bb0f7e9fd3e01f1b68abe26f0f47642e3c89a49d5ed5c2e7f7a012a3f1c62bd93f61bfdab34bd7b456f0aebcabf68b798c4f0dca8611c99ee1bb67a7a7ad7c8d5a6e51e647d4d196bca7d63e1af89569e3bf126b5fd9f776ba8e9d62f0dbc37709dd1ce7cb01b0dd0f3c71ff00d7ad7d7741b7f1b785356d0ef0e6df5ab592d5c7f1062a4ab0fa30073d6a3d112d6cf4f8d2ce0b786df960912854c91e838f7ab91bef04fcaadbc11d9571cff2c9ff00f5d79b53b9e946e99ce7c1bbfd42ebe1f68bfdb092c7aa416e2d2e4c802f9b2c6761603df6823eb5d6ac8a09c37af3f4ff003fe78ae4fe2f25c5a7c34bcd42d64786e34531ea0157ab22302ca7ea3775ef9fa5741637d1df5ac334327991dc224b1b7f7830cff5fe759c65729e858999548cf6e781d3b71fe7ae3f0f99ff006b7f18bfc1efdac3c1be3007166da62d9ea58ff9696cd26d39ff0074ed3f4afa4d9770dbb72db4631fe3fe7f91af9c3f6f7d0a4bed53c2f79243bec65b39f4f989195e58301f5e335ad38fbda1329687d09e1bd42d6ee2d8de4dc59dd44c8c1be659a2707f9835f32fc15b2f117ec61fb465e787741d620b1d3f50b87bcd3ec2f97165a846ec5b62b63e56e48fafd6b4bf62bf8dada8dac9e0bd6597fb5b4351f619893fe976bd075e4b2f4fc2bdd3e227c37d0fe2c6831d9eb569f68fb3b6eb79d0ed9ad1872191ba83d3ebe9c56fed2ad097353dcc6508d68f2c96837e2b7eddb2787fe2cfc2ff00106b1e12f1469eda5c777a0ea9225a9b9b5586eb610cb2a672a1e307900e3d38af5af8bffb697c35bbfd9cfc5f676be2ff000ede5d788f40bfd360b76ba45949785d47c870c3923b75c74c5792f81746d53c25a7b595d5f8d42da3e2de43feb36740ae3a647ae2b51f4ab42eacd6565b939526d93233cfa57a34f3caabe249dcf26ae4b45d9c5b470bff0004dafdb5fc1be04fd983c0ba5eb335dc3a9c7a73bcd6f69672dc3cb29998b6ddab819c8eb8e82bcfff00e0a33e2cf1c7ed73f15fe1f78834fd3ffe117f877f0fd679b1afc82d5afa49245cfeec65bf800c11ce7e95ef1a88b8b1d376e956561f6c881118914468493df68cf61c578f788bf668f127c59d585d78c7c551bc31fdcb2b08cac310f41bba9e3afd7d689673374fd925a336fecd8aabedf767cabfb4a7c71f885fb65eab63e059bc4d7ba95bacea64b5d397ecf676b0a31c290bf7db81d7a601e2bec5fd95be09afc2af0669ba4e3126e532a8ce01adaf863f003c2bf08e161a3e976f1cd21dd24ee81a590fa938a87f68df8b4bf04fe126aba943b5b57ba85ad34c889c1695c6dc8e9f74735cb5b1d52b2e59743a68e1e14af2b6aca7fb3fea4be24d0fc41abaeedbad789f50b80e7ac91c4fe4a1fa6138af4443d7d8fa579afecc3a29f0e7c0ff000cd91dbfb9b2deedfdf77f9cb7e2589af4a8d704fe59ae1e5b6e6fcd763986e5ae175bfd9e7c27e22f17c9af6a1a62cd7ec518b3487612bd32bd0d772edb71f5c573be3fd766b1834bb3b529f6ad5aed2240d9e231f33b7e007e66857e80c8afbc1afab78df47bc98c234dd123692087ae6e1b0a1bf05ce3eb5bd0c6ac547f17527bfafe7d3f0cfbd34b6d1cec655e3a75e9fe1448ed186dadfec927bff9c11fe453eb72a36b11c6db0e0fddfbc476e2bf38ff00687f10afed05fb70dbe8b67b65b4d36f8dedd9ddc6e5f9635cfb019e3fc6bec8fdb0be3bd9fecfff0005f53d4ee2644b9b881e3823dd867254ff00fabf1af85ff630d2ef3ec7e36f881aa1dd79269b75aaef7196506364887e2cc08fa0af5b054f47525f2386b49e88f9cff6b9f165af8e7f68ff00196ab672adc5adc5fb470301fc118083f0e073ed5e6756ee999add5a462cf212ee7d4939c9fcbaff003aa95f5f46368247c7e3257aad8514515a9ca145145001451450014514500145145001451450014514500141a28a00af75feb3f0a2ac51410e17771146147d296914e547d29682c28a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a555dcd8ff22944249edee7d3fcf5e281d98a1c6c55fc79e9dff9f1e9fd6bd37f646d41acfe35c3179842dd59cc8723927191fcb35e669190ebf5ea0f43fd7b74aeb7e026b3fd83f1a7c3b7195556b911139c001c63fa9158e215e9b474e1656a916cfb0bc5570f6de0dfb7c791369f34176bcfdcdb2a939fc0d72df1c7e195f1d70f8bbc2a5adfc456396b8813817d18e78f7c7e75da496035cd0ef2c47cdf6889e201b920f4fd314ff0aea5fda5e1bd3ef198f99242bbd8f50e3e56cfe20d7cafb4e495cfaa6ae8f47fd863fe0a2363e32b78b40f124e6cf508488f64b90c8c383dbfc8fc457dad63a9c57d6cb35bbac8adcab020823fc9afc98fda03f6789fc4b7abe21f0a62cfc416df34d0467ca6b9efb8631cf1fa57a7fec2bff0526bcf0ceb50f833e21f996b346e208aea51b70d9c6d719e2a711838d587b4a3bf546d471128be4a9f79fa4d6662d4dbecf71b4dbdd2982404e37ab2907f9ff9e6b82fd9df50ba8fe1adae977df2ea1e19bab8d0ee771dc7303b08dfd798f69f7ae8f45f135bead691dcdb48b2c7201223a7218119cd791f83bc71ff0008cfeda3f13fc3370eab0eb4b67ae58296c299042ab2851ee003c578becedf11e92ee7bd955087a771df8e0ff87f9e95cefc48f02dafc4cf05df68774ab8ba526090ff00cb2719da7d3f2ad8b5bf59615600952320f4cf4ff03fa7a54e572aadfc430dc7f9fa7d3f2a9d986e7e7c7c43f09ebbf0c3c60af6d3369fe25f0fb9304b8ff5ebfd54f5ff00f566bdfbf671fdb9f41f8b11dae97adcd0f87fc4d18f2a4b5b96d893bf0328c4631ed5e87fb427c0c8fe31f87bccb2558fc4564a7ecefb79940fe06f5cf3f4af823e25784747b8d664b4d4d64b3d66df3e62471319236ce0640e7fcfe5df87946aae492d4e3a9cd095e3d4fd33865fb644b22b798add0839cf7feb4edfb0e76f7e9e95f98da46a5e35f8630c6da17c42d734e863c98adcdec8d1e338c796c4afe9e95d0bfed6bf1a3422817c651ceacb950d650c8c323f8895f7fe54a5868deca452ac7e8b6ec52c4ad336d4058fa28cd7e775c7eda7f18becaca7c61a6edea5c69d12b7a609d9ebe9589e2dfda63e2578b90d8defc44d5312800c1a4b7945baff0012018ce7a16c7e7c11c25fa932c425b1f787c65fda57c23f02f4d90eada8c371ab1cac1a65b9f32e256e7a81f747b9af9534cd4fc4dfb5e7c5c86f356dd0a97dd0daaf3169b071d474dc71df9af25f0a7862c74bbd4692492f355b872cd2cae666dfeacdfcfe9eb5f717ecc7f0cecfc1fe0e49a29239f50bc5f32e655f9b1d70b903b7a52a918c2365b85394aa3d763d2fc2fa2c7a1e956f6b0afee6de311203e80607f2abec76fe7f423fcff9f6456f2411b5bdb9ff003fe7eb482612a31e9b4fad73735d9bcacf6122df248aa172738503d6b85d16effe135f8bdae6a4b233697e1945d2ac471b24b82333b8fa642f7fd38e87e24f8dadfe18fc3ad6b5e9994b6996dfba4276f9b3be163407d4b15ac8f853e188fc11f0ef4bd35a3ff488d1ae6f0ee2c5ee253bdc9279ce481f851d4708bea7565d517fdac01c76ff003fa7f2e7fe237c49d27e13f82afbc41aedd4367a5d8ae5e494e031ec07af6fcbdaa8fc5df8c7e1ff00811e099f5ef125da5bdbc6a7c9b70c3cebb7c1c222f726be12f8e9e3ff0010fed9be24b6bef132b693e11b221f4ed02391be7f479fb13c0aeaa1414a4b9b631ad3b5fb9e73f1c3e28788ff006f8f8c2da9ceada7f81b4b9b16d0bfdd9c291db8c920fd39ea6bd87c4da7c1f0c7f62bf115dabc769378a1dac6dc07da4db5b217600fe03f3fcb3b4bd02345b5d3ed2de38d66916148e25da141207415df7edffa5af85ff669d6b4c8e36687c17e16b7f3176ee4fb4ea17714639e3e6088c47fbd9af4255f9a71a70d8e4847dd94d9f9897b26f863c74da073cff9edd2aad58ba1b5f6b6dc2f192793dbf98cfd4d57afae86c7c6d6779b61451455190514514005145140051451400514514005145140051451400514523b6c5cd002d150fda18f614503e564c3a5140e945020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801c870e2a4f3549e4f18fcbd38ef8f7ed50d1414a5626278ec413cfa103d3e831e879c558d12f5b4cf11e9d75bb06daea39738c9e181cd54493e75fc39ce0fe7dbff00ad4b306f2cedfe1c609e3b647d3bf7a992d2c691959a67e8068d72bbc491f2acde7211d086e7b7d7fce2aa7862e7fb0b54d42c70c56c7524b88d4af0d0cac0fd319c8fff005d50f85fac8d63c0da35c0f98cd6109ce30385db8fcc63f0ab9e233fd95afd8df0188efa36b19dbbee077c7faf1f8d7c6d78fbee27d7d396899f537ed47f0a2d6ebc0365e2cd36cd61bdb011a5e2c0a155e27030c71e95f1cfc6afd9f74bf8b3a7cd3246965ad46a5a1ba45c79c40e038f4fe59fc6bf453e17dd5afc4bf85b671dd2eeb6d634d582507b7cb827f035f167c44f0d6a1e05d66facdb72dc68b23472c6c7fd6c633b4827ae4571e1ebce9d4b2675d6a7194533ceff0066bfdbebc5bfb246bf6be13f8816925e787e3fdda5d0cb49020e8ca71f3a8f4afa13f689f1ed9f88fc7de12f8a1e11d42df5246b64911a23feb021daf137fbd1ff009cd78d6bda2687f173c331dbea16f1de4320f9491fbc80ff00b2dd4115e21a9f847c65fb2b6af1ea1a4dddc6b1e165937b41b8b220c7cc193a29f71d7dabd7f674abefa48e38d79d256dd7e47e9ffec7dfb41c1f1dbe11daea9b963b886e25b49e363f3028d804f7e460ff008d7b34378d239dbdfa0febfccff939fcc5ff008268fc7eb2b0f8fdad7876da56874df164726a50c1237fc7bdc0e5907e47815fa53a26a3f6cb68dbe5dd80d962704735e363b093a5535d8efc2d6f6b0e64797fc78f8eba825e5e785fc137220d46d543eadac6729a5c7fdd5e305cf4fc6bc93c1df03a6d4fc2faa5c5bac967612307b9d4a583cebfd43e62cdb09e402c7b6073d2bea0d43c03a2eada5ddd8dc69d6ab0ea131b8ba58d769b871fde23af619ad9b6b4b5d36cee21b78e18e36408b0000288c1e4e3b76ae5a729b6adfd686f2b2573e4c5d3a2d1f2b1d9db69b6f1feea2b710896eae383f79f048cf1c0a897e0ff008cfe216a96f1e9be19b3b4855f69bcd42348d211d9953ab9e73fd7a57d4b0e81a54f7915e4765666641b51d501c7b8ff00eb56916dbc67ef1ddcf527d7fcfb54c79a2d3bec92fb83dd773e611fb01dd5b6916f6736b49ab7daa5f3af165cc310624e42a8248518f5f4e95b56dfb1aadb6a2b670db59dbe9f628bcc6ea8976f8c8f9064920f7627e95f4286e2919b73f3f78f7a1f35ef727963d8f996fbf652f1d6af3dd476771e1af09dbc39f2ee2ded96faeee149fba0be1573ea318ebef5b1e1dfd9dbc69a6e9d6b38d72e20be84859a7b8bf60f2a7381b630403f4381ef5f412be403ebeb5cff008fbe2c681f0e748f3b54d52d2de650d2c76a58b4f7057a0451d7ff00af5718b93dcce56486f84b40d4743d3161d42f21bc917fbbbb23f16393f8d6c47bbeeb15519dce4f71d7ad66f83fc4173e26f0be9f7f776eb6f3df5baced1608299e40c7f9fe9591f19bc54de0ff0085fad5d5bbc297d70a9a75987fba679d846bf96e278ec334d4351abee8f22fda0be26afc4af1afc3bf05d9ab2dbddde8f106a47783ba28a4658837d5813cfa5757fb4a7ed3da17ecb3e071a96adb2fb5ed518ff67e931b7ef6e1ba0623b2f4ebe9eb5f296b1fb51e97f0a3e2aeb5e296b75d5f5248ff00b23c39a6a1dc592102247603a2960cc7a75ae2346d1b5cf88fe34b9f1a78dae1b52f115db1b8084930e9d1e3eeaa9fbb8f5ed5e953c2b6d39a319564aea3b9a3ac6a9e22f8e9e326f16f8ea6fb56a130df67a601fe8fa7af61b7a645744b1847fd7fcfe75c9f877c53278bbc4370d6de5ff66d94a115d7fe5a36318fd2ba8b865b6899ba9e00c9ff003fe4555493b9cd29367a37ecafe06ff84cbe2b457d332ad968c9e748c412ac41cfe801ac5ff828278806a5fb0a78cbc4be63ff00c5c2f16d8c50060466d2d8b8882f5e3e4ddff023e95de6877373f0abe1a69fe15b28c0f11f8e2d5119d465e0172e5771ee02c6ae467a1c579fff00c163d21f057eca7f0efc3b6a76dbaebad0c69fec416eab9fcdbf9d6586f7b1318aee744ed1c349bec7e6cdeafccdb99baf7edf9fe3fe48aa756646f357b0c8c9cfa67d7fcf3f90ae4607bd7dcc763e16a6aee2514515466145145001451450014514500145145001451450014514500151dc02547a77a929b27fab6fa500539325a8a7b75a283394b52dafdd1450bc28a28340a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28000769c8a3767af3c6067b5145007d81fb306aeba97c1fd0875fb3a3c2c0ff00b271fd7f5fc2bd03c47a7b6b3a0dc411b6d98624898754914e54fe7fcebc7ff63bbf67f866b163e58efa403e8464feb5ed0d298a74c6dfbe3a8ce724ff00f5ff003fcfe531d14aa3f53ebb0b26e9c59f45fec25f1257c4df0e7fb3de4dd3d9312109f9b6f523f03e94cfdb77e1aac8967e2eb68832cca2cb510a39efb58ff2fcbeb5f38fc22f11df7c3ff8d3a4dd69f70d1edd6445247fc12a4cbf3291e809c8f715f76ebda75bf8d3c0fabe977d1f996f756d20704f43b49047d2bc8ad1e49291e95397345a3f3a3c4f17fc2b6d5edaeecdbfd0ef65db2c1db3d723d38ae9f45f10d8f8af4d69ada449ade4cc6c8e3827b820fd718aafe3fd2239bc39776927ef3c97288ffc4a54901bebc5797f85b589bc356eb7f6fc7992f97245fc0fd39f635e851f7a175b9e6d49f2cec5ff00107c1e6f84bf14349f881e145584e9172b71796017e564ddf394f6c13c57e957c16f897a5fc47f03d86afa4dd2dd58dea8642bcede79523d8f6af88ecef9a78964da3f7881883df38e3f5fd2bb4fd97bc6b7bf0d7e2847a3d8b06d1f5c76692d1beec2e3f890f6ce7a628adcd563793d51d5849283b47667dc65f0db97e63f5ff3ff00d7fe781e3bf869a6fc4492d64bc7d42de6b70f186b6ba68b723632a76f51d3f3ad0d2eedae2d159bef7a8fcead4ac4a2ff00b5fe26bc3b34d9df262691a55be8b610dadba98e0b75088a58b600ff0023fcf5bbbb2bbbbf6fad67c0d85e3d6ace3119ff006495faf152ae1cc99299ff00fadfe7fcff003a6bdc6d3fd3fcff009fc8d438fe2ff6727dfb5364e246f638a350e626371b931ffeb354eff41d3f52bc86e6e6cacee2e2dc622924895990679c1238cfb74cd4a9f7d7fda38fcf8a64fc37be067df8ff00ebd5c6fd0718f36e492c839da157a9181822be5bff0082947ed007e1baf857c2fa546d77e22bb5bad516dd4ffa99767950c8fe98decdc9ed5ea5fb53fc7bbefd9fbe165feb5a7d8db5f5f26238bcf621636638dd81d719cd7c536bae5d7c4bd6dbc57ad49f6cd735845f36761fead7b2a8eca3d2bba8514ed51ea8e5ad269f2dcc2f829fb3fea13788eddae986b1e27bf0912c8106db507938edc13927dfe95ea7fb40df59fc23f0edbf80f4311df6bdab1c6ab7e0fddee635f403bd7ac7c33d161f863f09e6d5ec155f56d4e6107da64196854ff747f9eb5e13aac42ffc6daa5f4b969e39bc8462725413c9cfa9cf35b7d61d4a974f63374d4216ee54f0a7872dfc33a45bd9dac6ab1c030c7182edce58ff009efed5e87fb3dfc2d93e2c7c4fb5826566d3ecdc3ce71f2f07207e9fe457172a94870876fcc0671ef8afa5bc0fa6afc1efd9cf53bfd28e2fcd8bca2761f307705777e19cd4622a7236d9587a5cd2b147e14e9abf143f687f18f8f372be93a65e0d0345007cb88102b483d464b7e75e09ff0005c9d4fecde10f84ba70606469753bb273cf26141fcbff00d79afaefe0ef82ed7c07f0ab44d3ecf718ed6d77b3b01ba691c6e776f724935f08ff00c16d3c412eabf14fc0d62caa91699a14cc9b7f88c921278fcbf2a795c94f1511e611e5a0ec7c425b64431f2b63771f903fa9fcfaf4150939fc3a54924de676ee4fe605463af35f768f8493ec14539e4de07b53682407ff00aa8a28a0028a28a0028a28a0028a28a0028a28a0028a28a00283f30a29307fc8a00824401cd14b267cc6a28348c55b63ffd9, 'transient');
INSERT INTO `temp_pic_holder` (`pic_ID`, `pic_holder`, `pic_Name`) VALUES
(1, 0xffd8ffe000104a46494600010101006000600000ffe100224578696600004d4d002a00000008000101120003000000010001000000000000ffdb0043000201010201010202020202020202030503030303030604040305070607070706070708090b0908080a0807070a0d0a0a0b0c0c0c0c07090e0f0d0c0e0b0c0c0cffdb004301020202030303060303060c0807080c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc0001108014d01f403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fc3955f969c0629635dc9f4a7f93cf5fd2a5ed726cd91d14f68b6ae734ca23b09c5adc294907f87f5a5c8f7fca9a6a8419e69bb28230f4ea0ad8146051466a4b4b492fef22b7897749338451ea49c0acc12bbb1d57c1bf872de3bf109699596c2cc799330e871d173ef5e93acf8e2e3c5de235f0c7873fd57dcb9ba5e55133838f6c7a719ae33c53e2c8fc03e148fc35a5c9fbe0375fdc0e0bb900941f4ffeb56d7c0168b41d12e357bc5586dda5d8b216c35c11dbfdd033f8e7f1f2f111734ea4b6e87d4e0651a49508eefe27e47b07877c2f6fe19d3a3b5b7ddb63006e27258fa9f7ef566e6ea1d3a2412b60c8c1401d49f6fa7f9e6b1edbe2869b7de169f572eb6f6316f55663f33907031eb939f5fc7b7966a5f199b59fb76b5236c5b726dac60c7cbb88cef23d71e9d3debc8a7849d59b6d1f4b5319470f0493353f684f8a2b668345d3d95a665c5c38c10beaa31f866bce7e1a58c2b7b75adea1cd9e98370079f3643f757fad73979772ea97924d231792425d989eb9abb77abb27876df4f8db6c62469a51d373741fa7f3afa1a38554a97247a9f1789c73af5fda4f65b172e6faf3e2678e2356f9a6bc942281d1457b778b3c4165f087c1302a0559946cb58c7f1119f98f39c7f3fcc579efece9a45adacfaa6bd7cc8b6fa5aaa86383866ce71e9ffd7ae57e23f8ea7f1ef88e6bb9b2b1afc90c633845ed5cf5a8aab55535f0c7f33af0f895430f2c44be297e463ea9ac5c6aba84d75248cd34cc5998f539aabd49cf7a28af4a3a2b23e72a5494ddd8e2e59557b2d368a2a919828dc714491953b4fd6a4b74dcf9ec28b91fbdfc28d8ae5d2e43e5d4b6cb993f0a654d6a3ef1a371c6f71275fdf2fe26a54837c5df70c9fc3fcff9e39461bee01e9b7352c4f862bd370c138a0e98c9a76218a2fdeedfbdbba54a23018edfe11f9fad2b0fbaff004c679ff229c66e3818f4e7a7ff00abb7e5cd31f35f70112b267e5f97923f0ee3fce78ef9aab71179639cf1c7239ab31dc30eabe98c1e060ff9f7fd7315d2efc7b906809cb4b21c96ecd12afb7f9fe54f16a631827eef7c7f9f7f7e0d2c6e50a91f36d3918f6e79fcea4f3f78c8f503af4fc7a76efd3031ecb514796da8d8a128fcf5538c7bf7fcbaff00514a0100631f7703d0f5ff00ebe7b7ae4e453259331f4e0f4fa0e9fd7fce731972d9c9ebc9e7ad0573f2e88ad7a31210b9229f1aee0b9f9463bd36e172e4fa0a993ef74e828ea62ae9b63af2dd55370236ed18f7ff003fcfe94ed3c7cbf28fe1f4effe7fc9e85f38d91edc8e31dbb9ff003f8e33e945a00377dde9e9fe7ffafd3b9a3a1af2be7b8b244af22fcccbd07e80e7f23d7b7b67854b5f24364a8e993b7a7a9c7e1d3ebd39152b2fef860aae4e738cf39eb9f61cfd3fde34327989b7ee83fa74fe5ffb21f7a4745fa107fc795dc33afdf470ff00de3c73dfaf4ebefe98abbe3c786fb548ef2df18bc8c48ea3a07c7355e4b6dfdb6b75393f4ebf4cf5f627bd43751ef8541ddfbb3b4027b7f9c67d3f2c2e5bb1ca4942c757f111d75ff86be19d557699151eca6c7f0b29e3f31fe4d6a7ecf7e3f5d2af8e9372ca8931cc248e33ce41faff00f5ab9ad1efe3d43e156ada7b3379b677515e400fa728ff00cc57330dc3da5c47342cd1c919dcaca7906b9dd2e684a9b348e2e546ac2bc4fb1c5ec644619823480ed527ae3ad4a605b9568e4c98e4528c3d4118af237f8cf04df0ff0049bd6ff8ff008a5672c3aab28e54fb30cf5fd6bd1fc2fe2087c45a35bde5bbac8b711ac8bc7e7f974ff393f335b0f2a5ef33eeb0f8c856b463d8f31b4d7e76f877e29d1242ab7fa1aba856cfefa204a7e839f5e86b8af857e2fdf05e787ef5ff00d0f5489910e00f2dfa8c7d481f8d753f1b62ff00846be3cc9711e3c8d72d90c83036b6f4dac3fefa5fcf3d6bca2ea26d2b5165563e65bca42907a609e6bdfc2d38ca9faea7c7e3f112a557fc2cab28fdfb77e7f3a6ede69eedb989f5a4af423a1f3d395e4d9225b323e78fcea4c1f4a239b791c5494f953365a15e4b6677cfcbf8d34da37fb3f9d5aa29d89b22b0b461fdda536cdfe4d58a298b9515feccdfe4d0b6ac7ad58a280e4441f63f7fd298d163238ab551c9180a5aa794a518bdcade537b5152d1545fb14322fe87f954b9c3ff009f535145fd0ff2a95ba9fc7fad2b5d58e788483f7751aa330e2a46e87fcff9ff003ef4d8a6d8bf8d11561cb57a8d74651c8ef422190f1f5a247f30d4b6cdbb3c6314c949364623643f9d309c8a9259c9caf18fe751d207a6c15a1e1bd6068178d7483fd211088491908dc73f966b3e8a5cba58232717743ae666ba959dd8b331cb31ee6b675ef144dad5bd8d8dba986d6ce31147186fbcc7ef31fafbd62508c6390329c30e9532847666d4f1134dbbee755e3df1a36a36767a45a48eba6e99108d573feb1ba963f8ff002ae64bb4c16353f2f5c7a546324fa9ab3041e5aeec7b13530a6a3b1a55c44eb4aef623913c98873cff003a84e5baf5a9679439ff0076a335a5bb1cb2dec6a47e269adfc2dfd970b3470c92f9d37fb6d8c01f41fe7df2c9c9a28a5ca9152ab29249f40a28a2a92330a0f14e8577c8ab8ce78e056e5ef81f53b2f1458e8f756925adf5f3c4891cab86fde1014faf7a1c92348d372d8cd891562ebb401f9d43783649f37d2bdc2e7f61fd7777eef56d3668d701be57565fa03c1fcc7f8e0fed01fb3fea5f09fc3fa3df5d5f437f6f74cf6c5957e6461c819c74c7207ffaeb9a38aa72972a676cb0b350bb4794c69bdbf9d4caea8edc74c54b636c0cf1ab7dcdca1f9c705803fcebd5bc45fb2a6a97de3df1069ba1f953ae9c609523770a5a39a3deb827df8fc2b57351dcca961e4e374795470b5cdc95895b68009e33b7a0c9a9d342ba5bd68cc4fb83636ff111faff005a9ad60bdf0878866b5ba8248e48f315cc2ea4123383ff00ebaf43f076931f8efc3526a56e1bedba6ed17b1e006687236cbf41d08f4fa54cab595d1d5430ea774f46798c114b35d343b72cc78518193edffd6aae599242bef8c1aed3e25f8624d0aeadb56b78fc9dd218e55e8239948e7e8c2ac7c4df87927f61699e27d3e3dd63aa968e55c63c89571f29fa8e69c6b2767dc258669b4ba1c296641f30f6e3bd58bd85ade5daf953d81f43c8c7b1aefaff00e18bcdf63bab585a6b7d4ac5752b6238dc6338963fa8193ebdfbd65fc57f0a3e83676d26dc2dbc8215703878d97cc8cffdf271f81a95888b9582584928dce4ede092ec48b1ab3796a646ff00640ea6a3b65677454cb3330098ea4f6aed7c15e09baff855fe29d5a48248f6fd96ce1665ebe73313f985e9f4ad1f007c2abab9d723db0798ba5e9a3527e3f8e521631d33e87da896222829e1252b1c1e87a43eb1ac2c1f75554bb92701540e734ed63496d2a48f7654cabbc29e368edfa57b668bf0665d07c5174b751c71dbda86f3e441c18201990f3dda43b79ad4f08fecf171e36f136a726a8ad028892711fdd0d34a998e31c670aa7eb58bc64798eb8e5f7859ee7cd774acb27f9f41524d8cd7547e195c6a5f19dbc2aaecb247a83da49227cdb76310ec3f226bb7d57f65775f8c97de1bb5bc4686cf46fed55965e3cc511ee20e3deba1d68ad0f3a9e1e6db6b65a1e552286b7fbd81d727b0ff0038fd38e68b71b24f2db866383f5e47f53fe79a9a6b47f2a38e33992521012303278fc3afea7f0f45f1bfecb9ab782fe1ddcf892f754b599ad0c225b68d0ee4590e393ec71da89548adcdd516ddec79c637156cfdec1cfaf43fcc8ff3f75ea703b74e075ce7fc8fd3d80240d11f981ee463eb9ff3ee474c8c26401d8803ebc0cff81fcfb678a16c03a8fbdd49ebfe7bfa7b75f969ad1ef4c75e303dbd3f9f6f5ffbea648f70e724f4c7d323d3d49cf5ebe9c547d7fcff009f5fd7be7e6025e6560cf6026d9f76e23d8e0f43d0ff009fafe26860b3f2d8fc7bd6b38571b58fdee9c67fcf5cff00faf2d9b776c6220edc6ee78e73551b1cb5a0eda6c47f687fb2f93b9b6862c076c918fe82bd43f672f1fb69f7eda3cec364ac64832d8c3775ebdfd2bcb6a5b1bd934dbd86e226d9242e1d48ec45635a92a94dc19581c64a8d68cee7af7ed596b9bad02f97e5f362923c9ea0ab67ff0066af1e998bcaccdd49af5af8f1e288bc57f0cbc2b7ca5774d34ecc0755f95011ebd73f9d7914adfbc35cf97c5c68a8b3af399a9d7e65d45a28a2bb4f1892d9f6be3d6ac5558ffd62fd6ad5523586c14514532c28a28a0028a28a0029b20dc94ea280211130ed454d4505f3b2baa8f2c7fbbfd0d38f5ff3efff00d6fd298aff00bafa0c7f3a7b0cfe39fe647f5a0c00f23fcfbff9fcaa1eb5331e09ff003fe79a873c504c833cd491bed46ec78c547da8cd02d828a33cd140828a28a0028a29d147e637f3a03725b580b1e9f4f6ab374040a47e39f5ebfe7ffaf4eb68b622fcc773631f9e3fa7f9ea23d4182a8e9f7473ebfe47f9ec27a9d9cbcb4ee51ce68a28a938c28a28aab005006e345496ca58b63b0cfe5cd054637763d2bf657f871ff09efc58b059e26934fd3dc5c5c7a123ee8fc5b15da69921f8a5fb6fdf5d962d0e9b70f3281f32aa42a140f619c57a07ec9be0a8fe1f7c3c8f509d57ed77d14ba8cf9c7cb1a212aa07e19af10fd9fb51d69fc69aa6b1630c92b4a8eb70c173c4872c3d7bf5ae1a952f792e87d053a0a0a106b56ff23ec5d336fd9c337cccd96248eb9ebfcff5ae1ff6a8f0b7fc259f0075c5556f334965d4939e46dfbdf86d27f2ac3b1f897ae6ddd6335bcdb53635add00327bed6e33df827b8f7abcbfb4468b24177a6f882deeac8dd426d26429b80de31d3ff00d75e753ba9f31e9d682945a3e3bb752d048ea70d807ea7aff4afb4bc14a358f14b5f42cd1b6bbe13b3b88db3cf996ee17f1c06edfe35f1ec96715aea3a85bdbb3491432ba465bab00485ff003c7f87d51fb3deb9f6df077c3eb9fbe4adf6892018c80ca5901fc54633f9577e3354a47065b4d24e2c236b1d6ff6a09e2d434fb7f326f0dfcfbe31fbe91642377e2bc71e956bc47e16b1f841ab58eb161a5c6da65cd9cba75d2ab91b8b7dd0c3a6067ad5cf8a5e169350f89be0dd4accaa5d4f6b7962df2fdf655f3173eb91bbf2ad3d2fc5ba7f8d341974bd523689aea3092ab73b1bd476c8edfe457049df43d08c145dce57556f08fc43f0fea9a6c886da3d46c218d30a4f917512901b9f5181f873cd69697f06d4fc35bcd216e209a1bbb2b5ba873f318aea3e49cfa15e3d7fa60f8b3e1ebf81fc411caa646d2ae8089e46c6d0f8f95bf0c1febd734f8fe223f80fc4da6c92c8cfa6dd6f82ed0722297b11f5183f4a98b95ad104a2debb9d6f82fe10af817fb3b49ba6f39b47bc7d52c1f1c4d6973190d1fe0c4838f4a4f187c08d33c65e068747b8dcad0246239bf8be42c541f601b1f857776d77378dfc190dbd8aacda969ca2f6c5b70dd730757873dfae47bd54d235db7d6e0f32de50cadc15e8cbec47a8c7e9597b495fcca9d38db94e1f4df8490ea9e0fb8d3dbfd1edeed2c240817eebdb472c7d3df766baed2bc2b67a14b3cd0431c725d5b5bdaca5475487eefe19e6b51080d8efd31fad73ff0011fc4b2786b401e49dd7370c22880fbccc7d2aa3293d193c915d0af79e1c5f899f102cbc35a744d7177a94f12ddec180b12c9bf67e2dd7bf151fc6df1f4df0df5ffec8d3563baf115c5db2243190de57960e58f5e801f7c0aec3e1b5fd97ec93f0a750f12de4b06a1f10bc40ad1699647e67b72ff2866c1e36fd6bccf4cf0547f0afc1be24f166a934979af269d3cef732658a4b22952109f77c510f8ec54b485fa9e33fb2badc78bfe376bbae5db7993476f34f23631ba591c73fccd7ae5cee83f68cf1e5c0f9a3d27c2091938f972d00e9cfbfff00aab9afd8c3c18da7f80ee354907fa46b173b9463928bc0fcd8935d178c6f63d2e1f8e1af23aa8996d7488189e18ac214e3f1278e7a57a35257a965d8e2a31b53bf767cd7e01d39b59f1b68366a0335c5e44b8ec46466bec1f1be86be2df879e28d2fe5325ed9390b904ee4f9d3e9d0d7cb7f00b4ab9bbf89b6735aab349a6c4d70a40c853f7573f89af7eb5f863a96af770cd79ab4d0c6cc18a46dc90460eecf53c9eb518aa8ee91ad08ae567c9570196240c0ab283b8118c63afbf5ff0039c5447e5cf6c67f0ebfe1dbd0ff00b35d67c5ef043780be246b5a333cacb6971ba277182e8c0329fd6b9f5d399b438af157fe5e3c9719fbbdc67f23f9638af42125ca8f2ea52939b2993b411d3ffad9ff000fd0e3f8695865987be31f5ffeb93fafd43d202b205c8f94819f5e14ff00eca69042aaa3a7ca3db8c71f43fe38cfa0d0c547b8cc6ff7ddfae7ff00dafd7b7f0c7711f988376dce33923f1cff00e847ff00d5c4927048f9bd3a75e0ff003ddf5e4773c31581e78ec39c7b1fe9fe47dd09b5f46654f0b44c7f2e2a3639e2afdfc585fa01f5ff003fe78e954b1cd55ce0a91e566a5c789dae7c1f6ba5b0ff008f5b97991b3d030c11f9f3f8d659e4d1de8a5a226751cb70a28a282001c558b762c9cfad57a9ed4fca7eb4e25437252714514551b051451400514514005145140051485437503f2a2802aaff00aafc6a73d47d4ff3a644710afd3fc4d3e5196fafff00abfad066968467ee7e1fe151e33531395ff3fe7bd4228264006683c51da9c91993a76a091a07268a90c0553767f4a8e81b0a28a09c0a041d6b42c6db31a9fbbce3dc1c8e7f51fad57b1b4f346efc7fcff3fc2b4bcada546368f71fd3a9e3f99f53896cecc3d16f51a91ab63fdafd32147f23dbd3e98a3a84de637d79fa568489b4153cfae3bf6fe791ef93ebc64dcffacfc2889588ba56647451451b1c2140193454d6d163e63f851a8e2aec6bc5b117fbcc6ba8f857e0a93c71e3ad274b5dd8b89879a7fba83058fd31f4ae673e6dce31c2d77df043e2969ff09bc4775aa5d594979706d0c36cb190bb58f5273eddea6b7372b513b70718aaa9c8fadbc69730f867e16789265dd1c363a3cea857f87e4daa07bf22bc8ff64af85683c0506b1733165be9e429105dacbb0819dd9e99ae4fe277ed912f8cbc1fa968763a3c36f6ba9422192595cb4800604e3181dab8df0dfed2be28f087852d747d3eee1b7b5b3042622cb1079e4ff9ff001f3e3859b8347b5531b45544dbd2c7d6fabfc2db0d7e0667f32def1981f390619bd372f46e9d4f3c5626b7f080f88646b7bf863997ce531dd8e248c71fa67b66bc37c13fb6cf893430b1ea51dbea91772cbb64ebd723fc315ec9e02fdabbc2fe3378e192e5b4fb89303cbb9c60fb061fd71cfebcb530b38ea75c3114a7f0b3c57e3cfc0bbaf85ba9c77a5bceb0d4a778d1f6819c7232071c8c8c1f7aaff093c69a8786b4f06d44d2c7a36a50ea2d1e46dc03824fe1c7e35f4a7c5bf0c47f16be136aba7da18ee6755fb5d9488e1b122e0e38cf55ed5f38feceb756b2fc419349be5db6faf5abd9e71f3249d54fe078fc6ba23273a7697432f66e9d4f77a9f4749e3dd375df0ce93e218664034bd5ade7233830f9a4c4e0fb61fe9c5686a7f0ef4dd52f6476668de3638689c0c8f5ae1d3e0dc1e25f8797b676971358ead62af613046da97262f990918ea47423bd57b46d5bc21a368fa858b5c3c3769bc994eed808fbae7d3d3e95c32b743b24eeceda4d024d4f46baf0fea4dbe3987fa3ce47523907ea302b91f1b7c23b97d2c2bc8b29580cce553a3c60631ee4035d87857e2869faba431dd7976b7ab92f0c8768c8ea54f420fa5771e2df075d691616af3c6df61d5a1125bdc2f2ac0f519e99159ca4a3ab0e57b9e6ff00053c693786c5ac0d215bed35fed56dcffac8c632a3d7b8c7bd76ff001db43b4f007ed21f68d3d961d0bc61a55beb76d18e12267052451ede62bfe39af30f8a5a64be0bd034dd46d559ae7479e64521325e3272377fc07f9576dfb43dbdc78ebe11fc3df145af98f6b65e12bdb199d7911cd14c66419cf048661f850e3add15195d599b518ddcfdee7b76ae3754797c41f1160f26192e9ac5fc8b585483ba5fe27c7a2e40fa8ed5d278cb5bff00846740bebe2caacb0aba023a3328ff001fd2bd2ff675f829a7fecb9f08354f889e3c6b56d72fad5a5b0b791b7382e32100ec4e726a25349d96e4aa4e7a187e17fd9864b4f1036b5e30921d26c34f81aee1927954dc5e6402ec89d864e3b8af9fbf6a7f88d0f8bfe1e6a56fa6cff64b4d6352874fb2847de9515b73311e9c0f4c9aedbe3ffc7fd6be3e6ad71a920922d3adad62b2b740a506c2390307bb1cff0085792e83f0d66d5fc43a96a1a8af916ba14ab0c0653bb731505f68e9b8018f6abc3c527cf20c43497223d13fe127b3f855f0c55ac6dfce8f48822b6b7c742f8f99be8083cf73f90f15f19ebdac6b3f01a1b8e63b1d4b5896f2f1d8e0dc4cc7200cf24280066bd23c73a69d4bc0ba8d95af99219a2489b03f7700242aafd7e6c93ebdbb560fed851c3e10f00782fc3166be5ac26498c6a3396554407d793bbf5aeca72f7ee72cd696437f62ed0cae97ae6acd18dd34eb6b19039dabc9fcf23f5af74dc7cbc6383c671fe7fc9ae0fe1f269bf047e1469a9ac5dc7631a422598b11ba491fe62147563d00af2cf897fb6d5e4f7525b7856d62b7b51c7da6e23dd2c9f86702aa5467524e483da429534a65ff00db5bc352278bb4bf102aee8750b55b495957eecb1e719efcaf7f6af33f86da30f11a6b1a1873e75d5a9bab518ff969165b03ea063fcf11f8abf697f13f8d3c2f368daa4d69756b248b2826001d194e41047e22b27c13e377f0578c34cd7163137d8640ec8a79718e57dbae3df07dabbe9d26a366707d6a9ca774578d770f989dca70dc60823820feb4c3d0f4ce7d3a9fc4fb0ebf81ab3e23d7ac75bf12df5dd85bbdbdbdddc19121739db9e40fccfe9f4cd052cdfde6dd8c73f786338fff005e78cfd4ea93ea632945bd064e19076eb9e7b75ebf9ff2e3e634815558e47e1d38e9cff2fcfa9c65cc37283b8f4ebebc673fd7db03e85a080bd3e5c7f9ff0039ef8ee4d51975b09326e8f1f79be9fe7d07fdf43b565cc9b24fe55acbf30eb90dc1fd3f9e7f53d09c550d423e770e84e3e9ede9f955239b110ea56a28a291c4229cd2d145001535a7f17e150d3a39361a68a8ee5aa2910e5452d51b05145140051451400514523fdc3f4a000b85ea451559bad1413276761d1f110fa67f9d38f1f874fc33fe14d4ff00543e9fe34e3d7fcfbff9ff002682418614ff009ff3ff00eba8735311bbfcfd7fcfe7ef4dfb3b0a04d3e83a2855d01a9123f2fa7eb446b88f07de9d41718915c36231efed5054d7126e1b7d0d43419cb70a7c1179d26da6aa973c55fb0b36054fe3fef7b0ff001fafa5055383932d5ada088617df1efd7f971e9cf7c8ab0a3eee3f4f4e9d3d7f2c7e14b6d1ed5e7692a71c0efebf95211924fab707b8edf4ff0011c563b9eb463cab42bddc9e5a9f4ea013df183f97ff005ba6718f336e90fe55a9aae4b7be48fa700e3f5fd6b249cb1fad691d8f3f1526e56614514551ca3a34f31bf9d68797e5da16fef11ffd6febfe7350d8db17603b753fcaa6bf980e1718e0fe83fcfd31e9537b9d54e168dd952d3f78cec075fe949772f99237ae735734ad326be9e186003cdb891523c9fe22702bd5b4cfd86fc5fa8cdb6eae745b16ce0234cef239ec00553cfb6735352ac22fde348e1ea4e3eea3c582e5beb566db4c699875619e71fe7fce457d07f12bfe09c3e2ef861fb3feade3fbe911ac74996da391442c981348101cb007a91dba77e40af79f08ff00c11235af136870c9078d74f82696de1b84135bb3291222b8071cf1b97dff009573cb1f4eda33a2865d524ed247c1ff00d9032c723a8fe1f5ff00238f53f8d324d2762eefbac791c739ff003fcc7e1f58fc50ff0082417c6bf86b712bd9e8b63e2cb552764fa35c890b29e7251b6b0ebe9f9d7936b5fb227c54f0dab35efc38f195ba46c4173a3ce5339c1c30520f5ea2a563a9bdd9d0f2f717b6a70be0bf897e26f86f7f1cfa4ea9710ed20ecdd98dbea0f18c0ebf4a834af1bcd178ba0d636886e2daf16eff007431fc59381f9ff9ebad7df0e3c45a682b71e1dd6edf6647ef2c654db8faaf15cf6aba6b58102486485cf559136951cf63f88fc3b60d546ad29681255e293dec7d77f097e36f877c77e21fb4d8de79378c009ed25057cc20e770f5e38cfb8aebbc2f670ae8371a5cbb5d34bba96d8a3f5313fcf193f837e95f05da35d689791dd5accf0cb19dc8e848c74e7f515ed5f09bf6b99b48d66e3fe12659658ee2de389a58506edf1e46e2323aa9c1fa571d6c1e9789df87c7466f967a33df3c47f09b48f115a08e6dd0c60131b47c3a31e841fe95ee5fb34ea5a7eafe069be17f8baf5b6dcc2d1695a8cb1ed689981dadd3b123bfa572dfb21eb3e03f8d1e26b3be9bc59a52adafce34fb8710ca5873f307e381d7fc83f56ebfa3780fe34d93690da96897d7b1c66689ac2ea392e6d39e1804248e7d71fd6bc7afcc9f2b3d7a1467f14753e0ff001a4779e04f19ea7e0ff16daf986ce67b5f35860cf190544a3b10c39e2ad781bc36d69f0e350f0aeef3f4f69a59a25525b117739f4dbd8fe55f4dfc5df817a36a7e1ab5d3fe224933325c4761a4789ad137490876db1ace7b8dd8193eb8ed5c47ecbdf04f55f06fc79d6bc23e25b2965874db09ada5b958cf91731483e575623d3f1cfbd11c42b5a5b99d4a6d4b4381f86f3699adfc6cd2ec75848db43d3f4f9b56bc57191288c61140ff007b1f5aabf16bc7f7df1a7e28ea5a8ea4caba3e8e8b0da59a9cc68ee99000c63e55c1fa9aade1ef0a47e20f8dd0db46d379515bcd149e50cc8d0ac873c7bedff3d2b57c25f09fc510d949a9c9e1bd6278ee7519afa602db714c37c8ac067eea81c1aa7285c51e64b42d787ff662d627f027f6afd86d74dd22c50dcc6f7d20884adb70bf2f539ce3fce29b77f07345f859e1e82d351d6adb5ed72e3f7f3c16b1e238a57f98b3b9ea470303d3f2c1f89de2fd63c51aec6be22bdbab3d2f4b45b9bafb51686241c98e30bd38eb81d6bc17e24fedad67a2b5cdaf872cfedb75ca8bc9c7eef39eaabf9f5e3a715b51c3d59ec735495387bd267b37882c7ed97fa459288a35babc17731c05531c2a58e4fa6e2bfe735f38fed67f132df51f8cf6b7168d15d43a1dbc718c1dc864cee6f6ea7f4f4af3df1c7c76f147c469a36d4b52936c11b4691c1fbb550d8c8e3d715ceda40b70177167932485c649e9fcfa57ad470fecfdf933cca98c553dca4b52f78d3c79ad7c46d6cdeead792dcca4e1573f2a0ec147615460d3bd5467af4cf1f87f9f4f51dd7863f67af1b78d006d27c17e2ad4964e8f069b3329fc42fa1ff3cd7a9780ff00e097ff001abc7d24663f074fa54729244ba94e96ea7b73925875f4ad658ba505b98ac25593bccf9c67b259a31f5da38cff009efd3af1eb4c86078e393e5e146339ebdff1afbffe1b7fc10dfc433346fe30f19e93a7c5919874d8dee24038eecaaa0f7e87ea6b93fdad7fe0997a57c0cb6beb7d1350d635599ad56eec6e2e42aa4e130658f6a0ea00cf07bd631cca939728e797492d0f89633b64607f0ad2122c83a16f5c77e7fa96fd3a038c77df03fe10687f14b59d42c354bad42d6f1504b079057900e1810413c5677c59f85cdf0abc6d75a3b3b4b0c5892d66607f7d130c86fcfd0f502bb3dac5bb18c70d38ae63916e4af56e7af73d3fcfe3c76cb0853c1f4c7a01dffae7bfe439b051a3271f29c63ffaff004e9f86076c1abb5bed4cdf36dc838ff1fcb9f71ce71cd93ea4983f2fde39e39f5c9ebf9e3f1c7ae61ba89658d9bf1faff9c8fcfea6a6efebcf1ef927fce3ff00b2a74c0b5a00de80641edffeacfe1f8e009462d6a62d1525cc7e5bd475479728d9d828a28a448526ee6969a579a6345882525c0a9aaa44487ab60e4551a418668a28a0b0a28a2800a47fb87e94b430cad00562b9a2a4f21bda8a0d3960f56313fd50fa7f8d38fde3fe7b9a6a7faa1f4ff1a9231966ff003dcd073c46afdeedfe73fe353518a282d6814138a0f345032bcf16df9bd4d46064d59b8198ea08d77b81419496a4d6f6ec1fdff9d6ac29e58dcbd7040e7ae391efdbf10476e051b71b777fb871fe7fcff43a29bb695f9949e71dc1ff00ebe0fa0e9ef5123bf0d1495c7249852178c670319febdbf2fca98ef966feee09c9e847f51cf4fa74e70e6e50e3eee011fddc0f7edebfe348e32c76ff007b1f8ff9cff3c1eb50743b94755727767dce3f01ff00eafc2b36af6aadcfe03bff009fafe3dfad51ad56c79788f8829f026f7fa734cab9a7c5923e5dddf18ebe9fe4d0c8a71bcac4f66581fe5f5e3fae3ffd64545a810aea0739007e1dbf4c7ffaaaf4083fd9db8c0ff3eb8e839e3f5a7a8fef2fa31b97e63d7b7f9ff3d314a3ab3ba51b451db7c02d29755f8bde1985f6b47f6af35d31d76aeefe9faf19afd60fd91fe03c62c20f136b56fe65e5c1df6d13afcb129e871ebfe15f9d9ff04e9f86ff00f0b0bf6a2d3e365dd69a5d9cd732e7a01b7007e6457ec8f836cd6d34781546d58e355503ee818e82bc0ccaa34cfa5cb70ed52bb3ccbfe0a0de156f12ff00c13f7e2b59c637b45a6417c70339f22ea2909fc1549fa5767f052ea3bcf08e8b2c7b5a2b8d0f4e9972dc10d0267f4c8fc6baad6bc236ff0010bc2facf86eed59ad7c45a7dc69d22a9da4f9b1b28c1f5c915e67fb1b5e4dab7c03f05ef52b79a7696748bd1bbfd54d692185cb73c63603f4c578f1ad68f29ec461a69b9eb0ce47ccacd9c8e73c9fa9fc2a45bf7cafef64f7cf4e9ffebe6be79f8e1ff051ef057c29f1449e1bf0dd8eabf11bc57192af63a2a89208987679467918e4007fc388b3f8dbfb5a7c699616f0afc3ff000df83f4f99810d7ca6699077041ddebd36e6b5a781af37a231af528d257ad248faf64d4660a55ae10a3750c46dfc8fd7a5713f107e127c3af8810f93e24f0cf8475689830ff4ab687cc00f070c3907dfeb5f3eea1fb0dfedabf1442c979e33f0cc11caa0793f6395633c7bc3df3f439ac893fe099ffb4b7839da4d6f47f87fe30b353b9b0d70929e00ebb570707033f5ebd3ad6575a2b98f3e59ae5cfdd723e5afdbe3f60cb7f825fb44e9d67e1592ce1f0878ca5074c95e7dd159cac79859892460f427b5781fc5afd9efc59f04b556b1f1368377a5c88df249b77432633cab8e08afb9fe287c17f09f89b40b8f06fc40f0e78f3e1a7881a50da75d25d1bed2e49baabef7c90091ce08c7a738ae6be11683e33f10780a566b56f115ce913c963a85adb032ca154e15cc2dcb2b01d4574d3c5d4a71b4f4b7726585a35bdfa4ef7ec7c1b6c7ec277c12346df74b23633ebdff00cfbd769f013e217893e1dfc41b76f0e6b973a3dd6a2cb0492c47d0ee1c7afa7bd7d5ff000f3c1df0cfc6de3fd43c39e28f05dbc926b5aa47287588d9dd41d991597031d4ed03b9afa93c1dfb0e7c0cfd9c74a8f5c6d1e3856dee44d1dc5fce6e1d58021554719ea38c7381457cc21cad5b56561e956835cb2d11c87c05f13eb9f117e18e8fe02bcd4351d6b506ba8355f115fdcc9e6456b1c7379b1c3927ef1c2f4c63240cf5afaab51f115be99243757d70b0b6a172b6d16fe5a46392107d2be7ff00841f15be1bfc1bf09df35d6b17177aaeb5a8cda9deccb6622f359c80912e7a2a800007f2a77c33f883a97ed55f1fa0d7574ebeb5f05f8360924b10d1b46b7977200a083df6aeefcebc1a9ef4f999ee4e7cfac8d9f887e29d0be0d7ed65e17f3f48d374fd375ed067b45bd588463ed5e696058e31c8c8af947fe0a69f10fc59f04be38dfdf782b5ed7b43d2f50314b796b0cecb14570635c48a01e8c3d3d3f3fbe7e21fc16f0efc68f0dc363e20b34ba108262911f6c96ec7bab0e98e2bcc3e237ec21a5fc54f085b69faa6a4cf7b6711b54bb65f33cd8d7ee6f1d78e9d4ff4ada8d4509de7b1c724d41a8ee7e4278f3e26f89fe28ea135cf88bc41a96af25c14690dc4a5b7951819ac4f0dfc34d6bc6d7ad6fa26997daadc2004a5b42d295e839c74ff00f57e1fa5f7dff043bf0ceaf6f672a78b750b1bcfb428b9823b70d0491eee7693ca9dbf515cdfc57b09fe03f88b52f87bf0eec2e37e9c5aca16b5b71f689c2eccbcaea3272cc3ad7b6b34a6b4a678f2cbe555deb33e3bd1bf630f14daf8834db3f11dac9e1b86f657563738f3d5157713e58e7d813debebcfd97fe04683f0905bea9a57c25d6fc63228046ada8e234419c657cc011467dbb7bd759f0d3e0578db59d711743bab55f127d9e3179ad5c5b7db24b794f2d1c20e406ff6b1c1cd7bf58ffc11bf5af8cd14775e34f1378c3567c860b79aa9b78573d76468bc741c13db156a8e27131d36ee73cf1583c1bb3dfb23a0d0fe2e4a96676f87648da351e5c306a56b23bf1caaaabe78e7a7e15a9a5fc59d3e6b759353b2d5b409266f2d5753b7f28120e319191dbbe3d2b2ad3fe0df8f03c1648229a4b79941c489ac5cef5fd31c638e39ae63c71ff04e8f889fb3f5a7fc533e2cd79aca3c936bad1fed3d3ae3fde21432291b474ee33cd4cb23ab6ba2a3c41846ecefeb63d7a0bf82f6d926b768e48e41b814395e73dffcff008f17f1dfe197fc2d7f01c96b16d1aa69e7ed162e47391f7973db207ffaabcc7e1cfc5aff00855fe388748f1a6993f856e2e62104334336ed1ef64dd9dd1b1fbac7fba7a7a57bf5a5d477291491c8ad9018156c8f5e31fd3d6bc9a94654dd9a3d5e68548f3d369a67e3dfc62f87f3fc03f8f963e208ade4b6d2efae8c771185dbf6676277a119e9ce47d2bbcfda5be111f889e05fb4dbaf9dab68f11b9b474e7ed76ec41da0fd2bedff00db0ff646d37e3f7836fa6b7b556d49a36f3230389300e1d71fc43a7f2af95ff66f82f2fcde7c30f1032db78bbc35b9f479665d82fedf9263e7a9c035dd4f19cd6975460a83778b3e1094609f93e6e8770e841e87bff8554b852877fde209c73d483dfb7ff597b76f67fdad7e09c9f0cbc6b25e5bdabdb69da93125318fb3cb9f997f1ea2bc7ae51513b600e33faff9e9f957b546a73c548f17114f95b5d8ac4663e7f1e3af5ffebfebd3f86423cd8371cf5e7ea7e9fe4e481d454630c08e3af248e3b67afe3ff7cfd72d89dc4854f1c020771cf1fcbf03ff007cd6c73dca3a826d5c7be4fb5571d2afea2a3676e1781e9fe7fce7a9a56c3cc247f9eb5679f563a8d145490c7fbee4718a7471ee9db238ff00ebd1627d9b21a29d2a8590814da466156617f3579f5aad525b36188a11517a9628a28aa360a28a2800a28a463f29fa5002d1506f6f5345069ecc44ff00543e9fe352c7f79bfcf7351463f74bf4ff001a9a31866ff3dcd06111d9c5141e68a0b0a28e828a008ee5bf77f8d36d933f353ae46507d6961c08d7fcf3411f6896d9b7dc01fddeff00aff9fe62b43cedaa01f4ce3d31d0fe878c76ce01e2aad9267e6eeac0ff009fd7fcf22462b1baa6efde1006075e9fa76ebdf1e9cc4b73b695d46e4c66c751efe983cf4fc8faf7ebc65cfc2e71d30a46318f6fe58faf19e9511538c80707a1031f4fe9fa7f74d3cbac8a42e3ee818c7f2f40476e7e9c1cc9aabf533b54ff0003f53fe7fce315488c5686afb48ea08edf9ff9ff003c9a709e7737dde95aad8f3eb2f7ec460735a7671ed8f6b2e57be7f0fe99fe7db8a8912cb3654ee39c818ad48d15615076f4c633d78e7f53d7df8f5a99335c3d3d6e488ec90f7e0fcdc1e0e339feb8f7fc2aa0b7326a10b056c7df04f4c0ff00eb63ff00d58a9e66ff0045661b5b92707df27f91ebf8e48adcd7b48363a278667dbf35e594cec71f782cadcfe5fe78acf9ac777b3e74ae7d6bff00046cf0ecd75e3ef1d6ac147976f6505987f42f21247b70b5fa8ba32f9766abc9fafe55f9d7ff00045bb455f0978e2e3fe7a6ad671138f4473d7f1edfa77fd16d3180b555c61b93f5e6be6f327ef1f5d858a54158b505c3daccb247bbcc8cee5c752457c73fb4a78dfc65a4fed13e30f80ff0e8496e9e24bf1af5fea71481a4d2e0bb857ed110e30099371ebc6fafb0e7d6ed7c2fa75e6ad7ad1c763a55bc9773b3bed554442dc9ed9e9f8d7cb9fb017c2fd622f8e3a5fc5ed7daf2693e275c4d06a514f1965b059d83d981d71811904741b863a62b1cb6846ad5f79684e2b12e8d2badfa1f4f7ec2ff00f04c5f0bfc11f0659bdd5a7997d20124eec332dc31cee677ea727b1ffebd7d85a1f862c7c3964b1d9da5bdac4a30ab1a85fa7f9f6f6a4f0b59349671e1642ca36b614f15178e7e23786be16daf9be28f12683e1f46e76ea17f1c0efcf21558866638e8064fe15f6dee4123f3cc446bd7acdceedb395fda3bf6abf02fec95e1782fbc61a8dc2df6a0ac6c34bb480cd777b8cf451c28f76207eb5e05e0ff00f82d67c36f116bd6f67adf87bc59e1ab7bbb85862b9b911cf08ddf759fcb24ae72739e847e7f357ede92789bf696fdb3bc5dab785f48d47c49e1fb186c74ed12f6384c76821106e72af2614e5c9cfd07b578cfc3aff82767c5ed5744d5a2f13788bc3b670ea926e851d9ee24b68c9276a8450a081df7763e95f2f8bceeac6b38d2b597e27dae5d90e0561632c45dca5f81fad7f147e0ef83bf69ef064f14d6d6b746f225920b858c6e2586e1db9cff00435f9b3f17be16eb3fb297c5193fb36e923d5f47537134206d6d4f4e2f8271fc4cac7a8ec6bdf7e195afc59f01f84f49d1e1f8a252df49b18acd45be876c03844c6e62e09e8393915f3bfed2fac7fc343fc6796ce6d43c61f10359b3b51a6c97915d476f670a17566dc5170a06d1ce47f2a78ccca957a2e315ef773970394d4c2d7e683f73b1edd2f86bc0fe3b3a4f8b352d3f49b9bcb611dddb5d888094965c0cede58f27f5af08fdacf56f16f8e75fdf67a0ea10e8f67fbab369136c7b8f594afe7d739f6a863bcf0ffecc725ce9be0e89afb52ba0a6679ee5aea3d3d8632a84f5e71c0af36f18fc69d43c5b76d25febd717b70c4e6259fee11d7e55e17b76af1a1193773dca9251564759f067c25a0785658f58d43416d735ab75cc979abdd2adac4d93f722f6c7a67fae27c5afda7bc41e2eb7b8b1d575eb7d1f479251e4e9da5ee8005538f9d97e66ce3e9e98e2b88d2f578754d4bfd3b52568514bc82ddb7ac6b938e49c6ef7cfa56b68df1dbe1ef80256583e1b59f882666fde5dea77cd23cbd7040c607e007eb5d51a7adec73c6a35a264bf0e3e30ea5e04d562d43c2dacc92b2bef9eca7ba7923ba1fc430c786ee08ee2bed1f83ff1e74bf893a25b4eb716f0deccabe6dab4b99236c74e7ad7c769f187e06f8ee1dbab780f54f0bdf0e971a45de029fa74fd3b55ef00788be13f893e213688baa78d74eba8e5daad334415a3dbc36e539ef9c62b3a94efbab1a46ac9bb5ee7df16f7597dc9b59a32180cfe59af9db56f851aaf8025bebc925b7ff84e3e276b1269fa684f9dad6df21a471feea0e0fa8ad7f86bf183e19f80a7b9b1b6f14489716cfb659351ba277718dc0b1db8cf7ef9aab75e17f106bff1e743f1c786fe2278335b9342bc927b2b1d4d1956189e1d8c8a6327a900e76e783eb59d0a6b9d39ec5568de2edbd8fb83f66bfd9f749f847e0fb1b7b7b78ee2e911419cae5a4638cb7d735c9fed99ff00051ed07f64ef15c7e16d27449bc61e298d77df449762de0b0e01019f0496c10703fc6bccdff6bafda03c31f6792c7c2ff0b75b861d8e3c8bab88f3dcf5001f5edc77af81bf698d17e28f8d7c47e35d5fc49a2c3a3ea1e34d46eaf2496079311094f015c8c6d518007d3ae057d262333a6a8f2e1dfbc7cfe0b258ac47b4c5eb13f443e04ffc160b45f89df112c3c31ae7846e3c3b75aa37976b762f05c412c9cfcb9da083f5f6afadf4cf1043aa41e605f90e410cbd7db9ebe95fcfafc33b5d77e1958f876de537b7d3697a8c172d7d1ca26644594337cb9cf033fe735faedfb3b7fc140fe18fc4a31e9abe234d27504c6db7d553ec8efc7382ff0029e9edc135a65998cea49c2b5b4ea4e7994e194554c22f54751fb52fec57e1bf8dbe0bbc856c215f3632c610a308707e74cfdd6f71e95f0bfc31f16eb9fb34fc5fff00855fe2e6924b3b9cc9e1ed4653b8ca83930b9fef2e40c1f51dabf53b46d66d754b359ad6786ea1601d5e19030c7d47635f22ff00c151bf67fb3f89fa35a47a6225af8a0c2da8e913aafcd0dcc2ca4a83fedaa85c0fe678f53158386263ef6eb667839762eae0eb2fe57b95ed2ed670926f231e9dc67ffaff00a5795fed11fb21697f192fb4ff00106912c7a178d345944b63a8ae00948c6524c1ce1b073e9fcf23e047ed0da878b3c23a66b1ad69b1e8fa4cda789a4bc9e6e0cea4a489b31d432b715dc597ed29e01bdba5b75f18e84d75303fba372ab21edd0e3bf5fe75f13520e9bb33eee3152b496c78efc61fd9d2cbf6b1f87f7da2ea76b6fa478d2c632b7112825249803b5c671d4f7f7afcb0f8b7f09f5cf82be39bff000df882ca6b1d474f90a9122604801e197d41afdd35874bf135ec3aadb4905c4d1aec59a361ca8e80e3af4cf3dcd7ce1ff0550fd911bf68ef830be28d0ed7cef18784232e5231992fedb3f32fa92a06457460f172a52e591cb8ac3a9a6dee7e47c56f90319507a64fb7afe07f207a543344219f7f3d8fd3bf4ed8e9fe706e4c3ecf7415836d6c865618c3700e47d7f99efc54778a44bbbb673cfb738fd0febdf15f49177d51f3d28d8ab751f0b9cf42369e3b7f863f4efd285baec9d87b56984062dbf780e3df38fe7dbea7eb9cf85332f6f4ce78ad2272548750847cededc0a9205dc19bf1fad35be50d53594605bb16f4c7bf439c7f9efe99cd0a29bdca53f12b5329f3ff00ad34ca97b9c92dc29f0388db9a6629c22623ee9a10d5f72ca9dc33ebcd2d362188d734eaa360a28a2800a47e50fd29686e54d0057a29de537a5141bf321d07dd8ffdd3fd2a4a8e0e517fdde2a4a0e7419a28a281851451400c9f989a9106c655feed4879a31cd02b7526b698448ddb9c83f81ff3f8fd2abcd26fbbff003d29d504bb849b803f5c505b9be5b1af71759b6e9bba939cfd3f0ce7f2fa8aa70dc62e1893f78e4fa8ff003fe7b546f23795b73c0e6abc0ec673e86a546c54aab6d324d4a4fdf10c30d9391ef4d997cb802838feb5244be6dc73f754e3ae2a3bb0bbbd6a8ce5afbc3b4d5dd76bc679fceb4e41b88fbd9380d9efd3f5e40ebd0f5ea465581c5c0ada2bb769c1ce063f2ff3c71dfdc5448df0b7e5d08641b6d98fe7ce3a7ff5ff005cfae2bd73e28f8492dbf678f86fab247fbc8a292de6e3ef0918bae7d3a1af2bdbe55a48147dd0d8e735f4d78a3c387c41fb1ac712aef934ed32daf93fd9d982d8ff0080b1ff00eb572579d9a3d7c2d2e6563b8ff8260fc52ff8541f097c59a95d431be9abac44d248c7e632088e11475e6be97f137edcfe2cbad7ec7c3fa0f84dae352bfb74b8289f37d96271f29720f048c7e66be64ff825dfc2cd2fe2b785af64d4f5168f4ff0ef89ad753bab32a04772860751e6127180d83f857d95e23fda4fc1bf0b6f7521e1bd26df53d52e981bab845f2e2f9460296ea40f41c57cfe36eea348fa4c2dd52462788bc11f19bf68bf84377e1ed6ff00b3fc37a7ea4e82536d7645d4c80e4ef20746c722a969dfb257c68f0af875b4cd17e266bd636b198dede28b597f2e378ffd5e06de318c0c1f6f5ae37e23ff00c14535ad1f4b79ff00b4b4ad3d49c2c5671acb313900f524e3df8ef5c01fdb8fe2478bf57924d26fb581616ad992e5d308d91d0e0633c8c0ebebc6056187f6b18be576b0ab72cbde9bd8fa7e0f00fed29a869ed6f7df1b7c551c370b89561d61a3273f31c1450e39f7e6b73e1afec73e1df086a09ab6bb25e78bb5e4e4df6af3b5d321249f977e71d7f9d7c937bfb757c44f096acaf2ebb34ea81b368615926762063208f940f4aadabffc1553e2b41a347f64d1e2b29378517b7766a63039e9f2f24fa5394eb4fedfe2453a7496acfd20b78da240912b2af002a74e381d3d31fa56678dfc6fa47c36d09b50f106a56ba4d9c79024b99026e3d4803a9f5e33fad7e5ddd7ed77f1bfc71a934d6fe28d6a69ae97c966b38951573c9550a36a0fa55ed17f63ff001f7c65d523b8d66e3c41a95c6e5676bd2fe5c6bfc5ba4738fe951f574b49334f6b4d6c7bc7ed1bff000506d2758bfd4349d0bc4c64d2641e58b7b0b62935de3a8321e8bd3a60fd73cf8878bbf6cdd5342f0dae93a2d87f675beed8d0c04a2c8a791923e6666c9cf6e7bd43ad7ec992683a88d334fd674fbebe2cde6ff6721b8921ebc6fe99ed81f9d7b0fc10ff0082745c5d5e43a86a91cd671020892e8eeb861c7dd03853f5aafdd41dccaa549cfe14786fc37f0b7c42f8fdac5bc70c5fd936eaaf2498f95634c64c8e7d873cd627c48d4743f0cc32685e17d4a4bc8614922bdbdfba6e24241214f5201fc307f0afb23f6b5f883e17fd9a7e0aeabe07d0589d6b53b511ddc90905ada23d771ebb8fa7bd7c65f05fc0da7eb17b35e4c22fb35b8020b570376724976fcbbfad7451a9cfef5b431ad4dc3e2dced3c17e0682c7c1b0db4d0b0172a92ccacdc9e071c5737f113c2326892c370a63fb3ccfb1515705491dfd7a57a8471fc87e5cf1d076f7ae47c79a64de34bdfb2e9b24371f61cbccb1b8255bb29fc856d1959e86124da393f8730477be298a19234915d18e186ee9cf3f8547f1d7c3cfe14b9b7f1269d68d246e161bf453c2a64618739e07f91573e1c59cda778d36de5bcda7c91c4db05c26cde4f1c67f1e9e95e9173610dfe9f2dacc8248661b5d187de1fe7bd5ce7a9318e878af88bc297d1e87fda16d24ba9695361966126f6b66201d8df43fcfafae0d978a750f0fde40cb75711b42389125281876e7f5c1af66f857e1fd4be0e7c45792cfcbd47c377f1335cd94ca1a3233ca91ebe98ed5ed9e28fd827c3bf1c3488fc45e09bd5d33ed484c9a74a37c5bfba03d40cf6358cb1118bb1b4799aba67cd1f0ff00e3f78cfc276d149a6f893539d76b30b66b824ae3d149e9db8ea31c57a041ff000525f1d78564b5fb7c36dac58cc36c905e479665cf239e463fce69be2afd87fc4be1b30d9dc785f549d151d4cd0c6d2c3818e432e5949f4e95a367f0275db85d3ed6ff00c3baa6a563629b5527d39d640a0e768914061dfa1e2b3f6d4e5ba2e52a8763e12fda4be0c7c7031c3ad69f3783f597e37db0db1331f4c023bf4c574ba5fecebe0df89fe77fc237f10f49d452125648a7841950fbe48f7f6fad7923fec51a1f8af55487ccd77c2772656710df5ab3427278f9f03a7f4aa1af7fc138be22682653a6b43ad4526e7825b4986e3923dff0c73d2a79a1ba60f96d7923e9ef03fec83e26f01cab7de1cf8a9e26d0fcb71b469d70eb096cf3f26e2a7f11f95749e20f859f19359d5a3bc9be335ddc4f09db1bdee9692b42a78c03f4f6e727bd7c27ab7c3bf8c5f07f4fb18afa1f156936a26f3612b2b881486c8e41c67bfa1e2b7be1e7edbdf19bc23a9c765a9dcea12daa4f88e7b9b70c5d78c6f246707d474ae9a588aab484cc274e84f492d4fa7bc31fb0a788345b6b7887c54d6618e1324862364b340eeee59898c900024f6fea6b9af8a7fb1bdebe9cb2f89b4b83588e3906358f0f46b15dc0993cc909fbdefb7b533c0dfb667c48936ff6b7862178a4ff0056e22d8ad96f9402b9ce477af4cf0bfed936d04f1c3e20d1b52d08c9c19a44261279ef8ae4ab1a9cdccdff00c13aa2a2bdde88c4f855f07f56f87ba4417fe09f1336bd6308c369f77f2c8c075183d1bdb8af6df87fe365d760f38c725bdc4242dc5b4bf794ff00129cf63d2b85f1ef8174ff008bd6d16b9e09d7a3d1bc516d9920b8b671e4de647fab917a73c726b99f017ed3ba9f87bc42de1ff1c69cda5ea1bc2b4fb70b2363ae7d0fe3d6b3f79abbdca71bee7c01ff000543fd9793f672fda56ea6d3d7fe29df157fc4d74d603e542c4878ff00e027a7f5af9baed37007fbb9ff003fa7f9e08fd63ff82b5781b4df8a1fb20dbea0ade76b1e1fd485de9f220dc5e2656f35063af001fc2bf272497ce452bfc40e0fa7ff005faf4e7f98fa1cbea39d349ee8f0f1f4d29b6ba94d46d90aff000f4e9c7f17ff005ff0cf420015506db96cff007bbf1f9d5a99fca4c8e33dfd38ff003f903fddc558d59fb7cddbdebd389e3d497443586e3fad5ac6db765ec33d71cfa7b7a7f9c525aa98d09f7c8fe9fe7ebe8417ddfee6118e01e3f0e7fcfe3f5c970e4e55732e5ff587eb4da748db9c914da3a9c12dcb30a8f2c71f98a7d006d14551bf40a28a2800a28a2800a28a2800a28a28023b71845fa5494d83fd4afd29d400638a28a2800a28a2800a28a2800a08c8a28a0064df2c2d5591b61156a71988d55a0ca7b96a2e14938f98e6aab1dc4fd7bd5903744ab9c645432c4633f5a072d87d8b6d9c1f4e6b6fe5f2cff75540380391cf3f4efdfe9591a369379adea71db58dbcd7570f92b1c485d980049c01e8013f856a5ab7fa3ac8de99e7bfafbe78cfbfe3c67268ecc2c6496a8965cf91206eea49c64faff9fe95f66fc12d3e3d5fe0f689a7cd810ea5a20b67e320ee523fc2be2e74c165e30c85093f4f41fcbebd3bfd87fb3beaca7e0cf876f2697ca8adaccee918fdd11b30fa7f8d70631da28f6b0376d9e6dfb286b537c3dd77c71a0de5e496b6b6e51a58cbedf31a19180fa93e95e976da95f78c751be975c99b45f0c5aa8b88d532935da038ea4e72720e00af03f8bdab7dbbe3edf6ad6f0b59d9ead2e62c39c4d851939e3a919fad7d21fb2f7ecb9adfed2baad9de6a178c34fb7386593958a21fc3f526bcfc4b8a4a6f43d2a1524ff76ba173e0f7eceba4fc42d666d512dfecba2dabb3bcef9919c0ce36e47718c0c57a7d97c1df1d7c77b7d3ed7c25a0ff00c227e0f86ef0279dc4324aa0f32b21e493d3eb5f4c7c27fd9b74ef025b69eb2af9b0697b8dba07f95dc8c6f6038e07407a57a9c10e536a8f957a0f4ff38af1aa556e4e57f23d0504bdd4783f81ff00e09fbe0bf0dd8b497f1cbaaeab338966bd9be66638c6173f747d2bd0ae3f664f036a1a1c9a6cde1bd3e5b728a9865f9881cf2dc673d7df9f735de2c7b70769ebdbf2ff003fe4534c9edc7d3a8ff3dbb1ae7f8b5ec57b38adcc7d17e1a787fc370247a7e81a3e9f1c2b88d60b444f2c631d876ff1fc23d6bc01a7f8893cbbe92f2685bef41e76d898770546063dbbfe3c6d8973f5e0ff00f5ff00cfe7483a01edd327a75ab0e55d0cbf0d7c3ed07c25f2e99a558d86ee098e150dd31c9c67f3f4eb5a91a2f98bbbeef068e1bd76f6cf51d3fcff00851b7770460af078ff00278c50d5d583a9f9effb7be897f37c4ed7449a5cf0c1a95f971b603b1e24002927a1cfa5723e0df03daf8561b86823db7176e1e4623e619e8a3dabf4bb51b682f6d245bc5824b78c33c9e680ca0773cf5af867e3d78d341d77e386ad06816b0db59c71f0b0a617007de3e9babae8d6b2e4e872d6a5f699c2f88fceb85d2f49b46d97fe22bf8ec2175fbd1ab11bdff019afb63e087ecebe13f849e1efb1e97a5c1fbb27cdba9d43cd72ddd998fe3f4af98ff657f8597bf18fe393f8a3c89c7877c32a6d6d5981c4f3f5771d3fd91f857db5a38486d58ac88cb9f988605436791f5cf14aad4d7434a74d38dcf39f8d5fb27784fe37e9535ac96d1e93a932e6deeed1423238e54e318ebfd6be2dd2d6f34dbcd4b47d4936ea9e1fbb6b2bb3823791f75f07fbc39afd222c53e6dbd0e7e98ff22be30fdb9bc29ff0acbf680ff849bcbf2f43f1959c714d2853b63ba4e0127a73eb5387a97959915a9ae5ba3cf3779304926d2428c01d89c8c0ff003ed5f5a7ecadf0d6ebc07e0145ba9bcc975093ed3b01e101ed5f226a9a845a6e9525c4ec3c9840958f50aa0f3f97ff005febf797c39d6adb56f0e69b716f32c90c96b1b232f705462af1527a114373a98e3f2f38e99e9e94ef9837078ee281c515ca7510dd58c779feb15641fdd71b97a63a5436fa6c3651fee618e28f242ed1800f7fff00555c2702aa1d72d174efb433ee874f1335db20cf96474c8f5aa8ea673b44835ef0dd8f8a74b7b3d46d2def2d6e14831cabbd413df9efd791cd799f8d7f640f0af8eacad629adfecf77687689d0643a67a38ee31c67ad7a9d8de25e59c72aeedac8083e831dff003fd7eb5289514eee3e518e3fc28774ee2e54d6a7c9a7e1a5f7c1b48fc33addc25e58ea2f3259c89c3439242727b7f223d2b9cf871e3fd4bc21ac49e11f12c69a86873092d23bab98ccc6300120e79e57079f4c74afadfc7de02d2fe24e95f63d52d565585fcc824ce1e27c75cf5c73cf6e2bccbc19f0824d0fc4771a0eacb35dc1a78fb4e9b7018b47246e0821bdc138c7d288d6925cb3575bdfb14e9c52b2dcf145f0e6a1a0e913eb5e17ba9a39b497f2efede093855c92b22f62a4541e35f8cf2fc59f0a259f886da19352d3ce6cef917e771800a35777a5fc37d47e015cdd59acacd0c6c2c679df26196d676cc45b8e763fca73c80dd6b87f8f9f0d21f87fe2f86e2cf6369bab2b3c6c9ca473281be3fc0fe98ada32f7adafcedfa184a2d453672a7c477daec3a7e937b797575a7c2ce1609642cabbd769e0f1d31f4afcefbb4582f2e1149db0ccea0b0c9c2b3609fc07e7e98afd04b41f66befb412185bc724bd3fbaa5b8fcbbd7e7cdfc8d7172f2fdd323349c76cb67fc3fc9c8fa0c06ecf1f1fb2655b84fdcff10dbdbf21ff00b29ffbe7dc536d938538e17b9eff00e791fe1c911de48c7f75b3ee0193ed8ff0c7f9c626b16692d579523033edd40ff0fcbd307d4e878fc9795c76dfd0f7e7fcf7fccfbe21bd65116df41d7dbfc9cff9c0b0a37e3fdae9ef9fff005ff3ebce6aea1c03db82483d41ff00f563ff00d74e2151be533fa0a7470990537193f8d58b7528bc83d69a3cf51bbb1251451546c14514500145145001451450021dddb1f9514b4500361ff52bf4a753216f917e99a7d001451450014514500145145001451450023f2a7e9558c4ca32455aa0f341328dca9bcfe5d2baff00823f0d25f8d3f14749f0fc727931de4c3cf9323f771e465bf0cd725709e5b7ca0f4af6dfd8c1e2d013c5baf488b24da7d9c715b8ce1bcc77c003eb815957938d37236c1d2e7aaa2cf7af8fba7fc2afd99bf6a9f8477de1d934d5b5d263365e248605caa1c6cdf270012cb2364f1d3f1af97fe31f8674ef09fc56d7b4fd22f21d43478ef1a5b19a33f2bc2c7727e40e31d88af6cfda2bc336da57c16b7d29ac63bcf106a1722f669b0be62953ba427be39c7e55e4df11b44b5d7b46b4f1068ba7bc764b1886e9ade16f25081c127a67839fc3debcfc3d4bea7d3622d6e48ad373881a649ab5ec3044555e66d8327a93d2be9dfd94a68f5ff82d269776fe5ff67c9716538ff9e40aeec9fa0cff00f5ebe605bc96c1a3b8870ad6ecb220e79c1c8afa8be17e9f1db78f6fac6d61db63e3cb18b51b02a7e5f388db22fea78fafd2ab197e432c0c7dee6472faff00c00d53c51f07dfc7d690ac965a35dc11c4256c17479368555ef9ea7a600eb5fa7dfb2168da3e9bf083419f4692392d352b65b932a26ddcc724af4ec78c56f7c15f843a1f863c01a0e8ed631496ba5986e3cb61f23c8a08cb0e87a9ac3f875e116f811f17756f08c16f71ff0008eeacd26b3a1ca01f2edb71fdedbf4c0dac7207a57ce62311cfeecba1ef61e8c63aadcf605e78a72a9038ee31c1a62738615346377bf43fe4d70ce5d51ac63d1899e3d78c7ebfe7fcf34d2a54fe3ebfe7daa66b7c465fe6e067a7f9f4ff00f5544c778c1f5e3fcff9fe5529b29c46743f964548581e3f0ff0fe74cc67f2a43c9fd31557247336f7cfe24d318e694fcd8c64b67038af0dfdadbf6a083e1369971a5e9d70bfda091e6e675e45b823851eac7fcfbd455d9327a147f6ccfda421f03f86a6d074d99bedd703fd2248cfccabfdc1ee6be6bf80df0d57c79f10a3d1277b86d4352b73aa6aceabb843086dab1eefc71585f6a9359964f10eb9248ad21f362595bfd586ce18ff00b47df9aa31fc5fd43c1de288b5af0c4dad59ea4b079525c4164658a5881ddf302a548cff005aeef67c8bcce6954e6767b1ef5fb6f7c6aff8539e17b3f863e0976d2d9ac44fab5c5a66392d91f215030e8cc39e7d6b23fe097fab5e5b783fc4ba15deaba8ea0fa1ea50dc4725c4e59992707afd08fc01efc5788d87c7383c5dac6a17dacea0f7dac6ab399af6e248d50b9036edda3a0000e31c62bb0f815f1c347fd9ebc73ae6ab0c1fda7a6eb9651c735b4128496292372411bb8e8c7fc9ad396d4acb565c6aa553cb63db3fe0a7df1275cd2fe0c785fc29e1bd5af34ad43c557b2dcdc4f6accb325ac2a0632a7382c71f87b5727fb1ff008e87ed1bf0db58f877e369ae3569f48851a1b9b993cc94c4c4e1c13dc1ef5c4fc6dfdac2c7e3afc40875a3a75c6936ba4691fd916904932cd23ee94c8f21da0019ce31935c1e8bfb404df0c7c6abacf849a1b5d625b67b399e5b55985c2921b0539e847f3ef4538fb9664d4ad69e9b1b571e19bef02fc46f1478075591afadf4b8584372c4166819f600c3dbfcfb7b87ec43f1ce4d167ff84135cb8db7ba727fa1c92367ed10827041efd857ce375f12f5ebcf146a1e21f13d95e49a87884a3cf7cd60f6eaea3a2a80bb428f418ad6bcd424d62d2d35cd16610ea9a4bfda2d6443f348072d19e39c8c8e6aa71524a2dea6319f2bbf43f4b6c6eccf12b6e0723a75c7f9ff00eb71563ed0bebfa5789fecaffb42dafc5df095b4c640b78235de84fdec8e723d8d7b244ff68e4f61d477e6bcdaa9c5d8eed1ea894cbba4e0f51815cb7893e0be83e2cd4dae2e61ba5333896648ae192395874deb9c1ed5d385dae3d8fad3c74e9d077e723fc8ff00f5d4d397726512b4022b38bcb8c346aa0051e800a6286cf5e3b54971febffdde073d7fcff4a6f4fa7bfe153ed3a3239463a33b71f853b0c0eef4e01f4a09e3af6ff1ff000a53c7f855a95f44472f5656d5b46b7d76ca7b7bb1e647751189949ce7d3f5e6bc7fe3bfc279f57f869e2b5dfe649632c5aad82eedc5081b6551c606704fa57b518f7a91d1b8dbc6707fcff9eb55e6863d4124b6986e86e23685c018c860455477b84b6b1f9e3abde795e1cd5261fc1a6dd4839c7485ebe0a4c1b35ddd3683c76afbebe24680de14d3fc6da2b9dd75a6d86a3181d4902290838c7a76af84bc2be199fc6bade99a3dab2acfa94a90866e880f563ec2be972f97bad9e2e2acda4cfb4bf605fd8ef41f1b7ecc9e22f166b11ccda85f697a9cf036d53e5ac50c8108241ee3f5ed543c75fb0878763f809e03bf8ef6dedf54d5f4686e5da2204892ba16fde01f51f89fad54f8ff00fb59cde12f0e69bf0bbe1cde476da769f662c2eaf947eecab2e1f19e093ce7e8473d6b95d52cbe207c344b5b8875e8fc59a5a6d492de68764a9185180a47603b544b9efccd9d5254d5923e75f14785ae3c1fe27bdd2efa30b7766e639063861ebf8e3b5737acbed9368e3b0f71fe7f5cd7be7ed93a74573a8785bc450c687fb66ce48a465232cc983cfbe0e2bc02f0fda2e18f057b139e7d3f4af530f2e68dcf07191b7ba430ae49ce0d4b474a2ba4f3d051451400514514005145140051451400514514011c23e44ff76a4a6c1fea57e94ea0028a28a0028a28a0028a28a0028a28a0028a28a002bddbf633d0e2d6b4bd5a367da2df53b4b99531c4889b8a83f46e7f0af0b88e09fa7ae3ebfa57d21fb0bd805f06f882ef6e0c97d1c40fa8084ff5ae5c67f099e865b1fdf26687c67d7e4d73f6909bc3f1c8df6996cedec6100e4234a774840e9c03fa7b54eb693783eefc45f0db4165d43496264fb4c90891c89106f8d4600c8209f6f6af41bef86fa0f87bc75aa78fe48ae2e354116f8ccb2e52290a08d481f90ff0a9fc21f0b60d22cec669bf79ab43335ddc4c1ff89d4ee04f4da33fcbe95e4fb64b447bdc8db3e3cf18f846f3c19aedc69f7d0cb0b231f2cba6df3133c115f407ec8d737de3ff000a78763d3e38ee3c41e09d63cfb28dfacb17de31fb83c8c7ae29bfb4ceb7e13f8a3e01be5b0d52d6f3c49e19910c6b1e77491b300ea0e39c7b7a7e5e7bfb28fc4cbaf82bf1eb499a4f32dd24bb8d254718d8e186d247e5f5aeaa8e55293bad4cb0f6a7552be87ecd7c28f13c3e2ef0c5aea50ab469791ab3c67fe58c9dd0fa608239aeb9496dbc2b797bb6e47dd2c3071f5af3af84760b16a775a8584cbfd97ab05ba68148db14c7862becc307db27f0f4589b31f239c73c57cad46d3d773e8651b3ba24247af7ff003fe7dff3108193d3fcff009fce984feeff00cff9ff00f5d3e6b7fb3087f8bcc8849d71d6b1e51730f690038e9dbe9fe7fc698fb71f2f7eb9ff003fe7f3a44395ff003fe7ff00d7f9a37f43fe7fcfff005e975b1419ff001ff3fe7f2a6b1c1fd29ccdb4fe34c43e6cea9cfccdb727dbb7e1fe34f9ac4ee709fb407c64b7f843e0e9248d95b58bd1e559c47d4e72c7e9ebeb5f04f89a66f883e319efb50b833e95a2bb4d7723827ed975827049eaabdabd23f6b0f8a575e31f89dac5c5b13379177fd8fa5479f95581c3b8edc60e7d0547fb35fc0b1f13fc6915acfb5bc29e147f32e5c3edfed0bb2776c3ebea7f2f4c76d3f723ce7349b9cb911d7fecd7fb2cc7f132dad7c51e2eb599b4e6f9ec34a97e5128c82b2c83bf4e057d63a668f65a4592c36f6f6d0c4b185da918552a063b76c579f7c73f8f7a2fecd9e056bebcb66bed41e12d67a55ae5a49540c8e0676a01d4d7cfdf0f3f6a7f8c7fb4f78ca2b4f0bdd699e1cd2e55579e4b7d392e8c41ba202e0ee7e0761d07ad5d3a753113b2468e30a71729bb289f4a7c44fd9abe1ffc548a4fedaf08e877372f9cdd436eb05d027a1f31304e33debc67c4dff04aaf03ea377249a56bbe2ad255882b0f9f15c4718f45dc9bbb7524f35cefc5df883fb497c07f8c3a6f86afafadf575f122993469ee7438a18e745c972c131cae79afa73e1f7c17f8ff00e2ef07c97d1a780ef2fa44df6b6d2c735b34f807e5e3b9edeb9fcb7fecec446e8e296330d68cb996a783f86bfe0957e01d19da5d4b5af156b1ce7cb9678a28cafa1d881bf5af62f87bfb357807e13c0aba0f85f4bb4917fe5bbc026b83ebf3b02d5c9fece173f1d3f6b9d02e2facc785fc036697b7163be4b07bc995a0936395dcc0750464e46474eb5e47f19be0f7c7ff000d7ed4f17c3b9bc5be22d5b5cd562fb7e9f7d138b683ecb9024711a6146d1c71fd49a9781aee3cd2d8ba78ac33a9ecf995cfadb50d1a1d5f4d6b4bbb6b7bab564f2da19e359118639183918af983e3cfec551783a4bcf147816368ed1019af7451f76303abc5c7d72bef59bf12a7f8c5fb15ea5a7c9acf8af56f1468ba948b0226a90e248e4ff9e41b279217823b8e99af76f813f1e74ff8bbe1b37f6225b6b884aa5d5acb19125bc847420f63ebe959623055284ad2f23a29ca956873d3775a9f137c26f1a37c2af881f6ab09196d2e2437b0478c6132049191c72bc1c7bd7dfbe07f1247e25d06dafa17dd1dd2091187bff874af923f6f2f83107c33f17e97e2ad1e0f2348d5ae0ccf1aa9d905d63f7cbdf01e32c71eab5eb3fb12f88cea7f0ee4b5925129d36e5923c7388d8ee5e7fce7358546a4b9919c7dd972b3ded1d76af23f5e94a1d47f17f3ff003fe7f0aad04b94f7fe7d29e1f27bd7273337d0497fd6311df078ff00f57b7f9e2936e3a628c65bff00adf4f6ff003fc85fd6aa31bea4c9d853f5efeb499da7dff9519e7d69030cd5c62910ddc33b47ddce7a7f9fcaa187699f74876c6a773b13d077a92593039c73f87f9ff3f8f9a7ed3bf13d7e1efc3bb886190aea5ace6de151f7910fdf6ffbe73f955c7566723e44f8a5e335f1d7c51f899af3151a7ccb750aede576adbc81cfe3b857cc1f013e0bdc5e5cdbc93ef8669a013bc8460dac27a0cf50cfc7e75ebfaadc8b2f833346d2156d7a4963dc7ef79723b176fc231fad63fc13f899a1dcf8724965d534fb5bbbebd951639275490c31e1221cff00b3fcebdbc3c9c61a1e7d48a72d4eaafb438f4eb6b7d36c3c3f6f7f6adcb8628b907ae723258fbf7fcab9fd7bc4d1e956da6cd60ccba75c5c1222272609a3389223f876f6af44b6bb569e19a17465dc0a3a90cad8fa71ff00eaaf09f1ab369de2ef88964d2663d17c410ea71a6725126186c7fdf43f11ef5ad38dc552da6857fdae3466b7f817e151fc36bad5c451329ce62957728fc3047e75f38c872ed8f5afa6bf680864d7bf64bd1ef1d5bccb1b9b7b99063ee825d391f88af99678fca94aff007783f5af5307f058f13308fbf71b45145761e785145140051451400514514005145140051451400d87fd4afd29d4d87fd52fd29d4005145140051451400514514005145140051451400aadb7d7a7635f5a7ec6b611dbfc11b47451baf2fee1dcff007b6ed51fcabe4c8f925738dc31d702be9cfd8d3c5aabf083548376db8d0ee27b9191c0063dc0fe6b5c78ebba7a1e9e57fc6d4f58d56f9bc60daa6976e62686c6fac239ceec646f2ee3d3a28cfd6a6f8ad06abad78724d27418e49b5af135eae9b6ab18f9e30d92eded8506b8ff00d9db5099bc19a1dc5def9350f15adf5fcd230e1bc9718fd18915f487ec7365a36a5fb48ff696b17da7c31f843459ef23825930eb2beddcfb4fa461bfefa3d6be7aa49d3763e969d3e667e7efc42f84d6fa2786e3bfd2636867d3df6cec64e2650e01273e8c33f97b57ad7ed23fb30ea9e35d36f3c5de19d3ee6e2e349584ea51c0bbb6029b84980339e393edf8d53f135b47e27bb5d22d4ee6d7b54291053cf9666decdf40beb5f63fec7faf0d0be30ea96acdfe87addaf97e53fcd1cc63238c1f6fc2ba678c9c69a924634f0e9cda4735ff0004dffdafe3f14f822cb46d6ae02dc5b7fa333bb72add0039e99ff3cd7dc3617c2e2056e09e0f1dff00cff9ef5f097eda1fb0d6a5f06752d4be2b7c2d8e17d31809f5dd1198288f2dcba1cf1c9c9c7bd75bfb16fedd30f89ad6db45d799edae940086593900e300fa8f4c76ebd6bcdc4414e2ea53fb8f4e9cb95724f73ec5b8e6d1b1dc1e7f0fff005d5a9af16ffce9a16f3ad45bc6a922fddcf1dc71d6b3f4dd561bf8d25468e456c3641cee1fe7fcf5ae53c25f06e2f086af2dc47ae6b97162647961b096e09b6b62cc5b85f639eb5c3cd629c6e76aadf28fa52b1cff003a6226d4c372471f973fe7fce5e79359f5b9630f5acdd4f588344790eefde2dacf708323fe59a16ebdbb63f3ad261fcf1f8d707e3fd7e36f1cb68e5bf7abe1ad46f2520e1635f2f0093db39ff22a9ead13b5cf82eeb54b8d4fc4925c5bc6f79789fe8f6719e7cdbebb624647fb2a73f8d7db3f0bbc29a1fecb1f0124b8d4265fb1f862ce4d4b54ba72337139f98e4fa963815f2ffec35e148fc61f1934dbcba8da48f43d29bc48f9e54cf74e618339f48d188f4afa27f6c3f04cff0015fe15e85e05b5bdb7d3ff00e12cbfb87b8925236b456d6ed29ce7f87794049aec8479a7182f2318de29cd9e81fb037c0587f684b96f1ff8d7ce9af3c587fd1e103e5b1b297ee46320e0ec2338abbff04e0fd8fb4bf81d1f8c8ed86e3fb33c6faa69f672abeff3208a5c46738032013d3b8af9f6c7fe0aad6bfb397ec19e249345bed393e2369d2c3e1fb1b48e5576b675015e651ce546c241f5f5eff287c01ff82dc7c5ff00d9f3e1c5f685629a1eaf35c5c49770dddfda891e192566691b008dc496279cf20761cfd8c62a9c6318743e75c65554a7395b9b647ed37c7af875a7f8dfe3cfc266bcb8b75bcd1ed355bc86dd99773c4de5a1603ae3391e9d6bd8bc293db786a48ef2e248ed74fd354dc5c4f27ca90a2025893f4c8fa9afe663e3bffc142fe30fed17f132cfc59e20f196a49ace996a6cace5b2db682de22c58aa88c28e49ef93c0e7bd47e3aff8284fc6df895f0ee1f0a6b5f11bc4f7ba046a636b3fb5ed5957bef2305b3ee4d6ded37d0e2fecda6ec9cf6feb43f7dff61cf10d8ebff00f46d56cecd628358bed42ff002130cc65ba95831ea324367fc8adff008bfe2ed374efda9fe1ae9ed6ba7dc6b175a0eaaf24cd06f9e2b70f1e06ef4273fad7f3ddf017fe0a17f183f6695b28fc2be32d4adec6c06d8ecae1c4f6e17b8d8f903b74c702bd0751ff0082c7fc64d5ff00691d3fe255d5d69726ada7e9c74c16ff00665585e163961c72096f4a54e6a31e566b53014a5514e32e87ec1ffc1447e1fe89f16d3e0ae97a86e56b8f1dd94d843932a44923b2e3d3a83c77af23fdacbc3de1ff00d9bbf680d3bc49a606b3d2fc473db689ab45bff77e6cbbbc8948f5ca919ee0fd71f9e7f15bfe0b7df163e29fc5ef05789ee6cf43d3ad7c0f70d7167a7da41fbb91981566766c92c41233fcabdb3e247ed123fe0a34da5da2ea96da5c3a7db1f116a4e97091e6e9633f67854363241c93c606d3c74a2b4215a3252ec14684e838ba72ebf81f487ed2de0887e29fece7e30d29a232dee9d6726a766475135b8dfc0ff69415c75c35781ffc13ebc56175cd7348f319842b04910cfde89d599187fc04fe98f5c7d2ff000aee93c51e08865322cb26b5a2485d81c82d25bb07fccd7c6bfb1e5ccda2fc52f87f7c2393c9f16f8625b177c601b8b42401f5da7f4f6af89e56b9a2f63ea1495d347de302ab46add4e315300a476acfd1a7f3edd5bfd9dc7fcff9fe55783ed6fc7fafff005c571548d99a46c3f60f41f952390133ed9fc29a660cbd3ef7ff005bfc69bbf70fcbfa7ff5aa15c6da0127f9ff003f4ff3d82fb7ef67f2effe7fcfac7e66c3edc1fe47fa7e9f8d377f98ca38fcbfcfa56aaecc9b22d5f55b6d1ac26babc9561b5b58ccb23938000e7fcfd6be14fda33e2ddf7c53d6f52be05ffd29bec7a64238f291ced2ff0091c935eabfb5e7c7e5d61e5f0ce9b71b74fb7245ecebd2761d107af3fafe9ca7c2bf81b0dafc3fd63e21f8b219235b5b575d1f4fde576e78573ee4e08cfb74aeba49475918caf2d11e13e32f0aaf8cb51fec3b37296f6296de1fb231b6d26e2e24589d87fba8739e7bfbd76d7df093e197c36b83a0e93e06d0f59b5d1d9ede7bfd483c9717b28e1c8656031c63a7f8552f0a5f37c3e8348bc923f3664bf49e76ebb24924c06e7fba5baf5ab70a36e68cb79923396f7724ee24fe66bd08ca56b239f956e503a4e9fe1df127d8b4a85adf49bab7fb6da42ce5da0c10b24593c900f23d8d799697a0c7abfed39f14e3ba8d66b5992dd19186558305c7f2fd057551fc43d3bc41f1425d2ec59ae57c33a5dcdcdcca8d98d59d917603ed819c66ae597871ad3e276bfa946bb62d674eb26ce3a49112a47e231fad6b4e6e29a66328dd27d8a7f193418752f80de2cb148a38e3b7d2fcd8d54602f94cacb815f124eecf27cdc9c0e7d78ff3ff00d6e95f6c7c79f1245e19f827e23b995915ae2dfec712ff00799d87183f8fe55f145d7fae6fa9e339c726bd3cbdb699e56676d2c47451457a4790145145001451450014514500145145002170bd48a2992cfe5b631fad1413cc8745fea97e829d4d8b88d7e94ea0a0a28a2800a28a2800a28a2800a28a2800a28a28000715e8dfb2ef8e93c21f1164b1ba9563d37c416ef633973f2a960769fcebce680ccacaca76b290ca47622b3a90e68b89b50aae9cd491fa0df0e7c0034ff8256b74bfbcd43c03711c92468c0efb3983c7291f4cab67fd9fad73f3e9f63adf8abc53a7b5ddc5b6a0d710dcc375061247b67b751c7f79090723e95c8fec67fb592daea36f65a9796d78b09b3b8493eedfc0c36943fe7dbdebbbf8b7f0cd1b58b5bcd0ee57cf68c9d324271e7423936edcf0cbdbd87bd7cd54a72a555a9ffc03ec29d55529295339893e015d8977db6bf711dfca4dbc578b08516516d39600773c735a1fb377897c41f0bbc677ba4eab7d2df5ff008375086e63b973febed6520127273f89fd7151683f1a0dbda4d6da9d8cf0ead6a4ac9037041f5fa547e06babbf187c4bf106a570bfbbb8d1c5939c7f1ab8651ef800fe74fecd9929da575b9fa7fa38d3bc61e19961beb78afb4dd5600b2c522fcb2230e73f98fcb8ef5f9e1fb577ec7571fb33eb136ada7c6b6ba05f6a052cbca98b35b862586d73c8c7a1f5ea6bee5fd9a75efedff83be1f99b05bec811ff00de5e0fe35bbf18be0e685f1dfc0771e1df105bac90b1f360b855cc969228cab807af4e457892ad28cee8f57e35ef1f2d7ec69fb5ec965a8c1e19f11dc79d048562b5bf27e5ce3eebfa1f7f7afb2b4fbaf3e2ddb976b7209eff008d7e78fc7dfd96bc59f02ed354bcbab5b7bc30dec57161a95b46156f63247cae80e3202e7a7e7cd7d95fb37fc4f87e2c7c32d3b5580fcd245e5cc9b48d8ea30dc75a75f925efc7a8a37d9ee7a716fdd9fef01cf18ff3d7f5fcc0307fa52593ee86f199776db7017bf3919fea6918acb17cbc6d3861ef8fff0057e1f5c573eb18ea5eeec39416982fb9ce7a018af8d7c7ff001e2e2ebe29fc56bfb1f9a49fc237b6b65211958d432c2bcfbb49dbf2e95f4bfc72f1937c3df841e20d5d5b12436c6288e3abbfca3f2cf6ff00f5fc39a34cb69a378ca39181db6da5d81250f2f24b25c3f3ee231f5c67e9b518df56655276563d63f619b68edbc71f113f8bec765a0d829c0f9635824638f62c4febd7ad4bff000537f1669be12d0fc1f7dab69736a90c3a2ebac9125d7d9c79afe4468e7b9c12781d4fd0e25fd8d7c392699f11fc7371b8e2f349d06e081db70b9f5f6c7ff5ebc47fe0b9b34716bff09e2f33e7fecad41d932790d7000cfd76fd7fa776157ef9772252b519367c14ea00e8df3618867df93d8e7d79ebd7ad251457d71f2b76c15768e28a28a0404669be5ae29d41381406a34c6a7aa83f5af46fd9262b693e3f68d6975a24daf59ea0b2c535945204693e438c678c83cd79db74f4f7152596a175a45fc379657135ade5ab6f8a689ca3c6dd882282a32773f663f602d69f58f837e14865b39ac65b596f74b30cac3ccb758a778951ff00da0028af2efd9cfc31fda3fb2f784f5bb6599b54f877aaddea36f1c582f22299239a2e7b1524fe149ff049af88373e27f809a24b7d3c973711ebd7627919b733bbb2b64fae77673ea715db7ec433c5a26bbe2cf0bcff00eaf45f145fdb3a37fcf279dc631e9b5bf107bd7c7e323efb8a3eaa31b462cf63f0f78a2cf52d2f4bba85b31ea9189a021baa91bbf4adf73c9fc7fcff009ed9af9cfe0cf8a9b41f01dd69d3349e7f80bc5f75a43076f9d6dccecb1eeff80b0afa22dc2bc9d7a80463b8ebfe7ffad5c32beeca959ec38f1ffd7fc7fc3f5341ebf9f5fc7fc3f53416c9cfbfe5fe7fcf7a8e53b0fe591ebfe7fcf7a95a99bd01c6e9085fbdd3d2bc27f6bcfda523f877a14ba3d84eab793002e65561b901c6d5519fbc738ae83f6bbfda5acff671f00348a56ebc4dab7c9a658c7cbf7cc84738518eff00fd6af927f62bf086affb47fc6abdf1878926fb7699a3cbb7cb9a2dd13dd3027e5ff74ff9f5eda5877c9cefa1949fbdca7b27ecd9fb35cbe246b4f1378a2de68bcb7335969f9e9d089241c73df06ba8fdb67c4fe469da0f85ed9b06f4fda6e55071e5a9f97207b8fe55ee9a4daa8556f958b1c703031d31fa57c67f1e7c71ff0009efc69d6752565fb3d9cdf63807fb119c13f9d44759dc6ed1563c29fc6979e32f18ea5a2dc6c1a26a5f68b18a48e3c35a489f71f77fbcb9fe559c9e14f8a5a8d8ae86fab68f6da7ecd92ea916efb54aa074faf41c7a1e7b5767e0ad2a1d2d7548cc7fbf8f549e460c3a87f9d4e7dc356addf88ec7482c66ba8d707eeeef98f1e9ebfe7e9ebd395be14706eae6b7ec95f03b45f0f45f11b4bb6485ae93c1a6612c8a1a69dfce24b93ff011c0fd3ad73baf78a61f0e6876accc8da85dc43ecb06ec34cd8f4f4cd759fb25789d8fc4bf1478caf1a487c37a6f87e5d3994f02f6576caa67be0e6be75f89fe249be0e5edd6bda9ea5fda1e2cd5778d32c376e8f4ab72c704f6c81f4f5a51a6e756cf71c9a842e73ffb66fc4bfed4d52d3c2b6b346f1696a2e2f9939579c8fb839edcff00915e132c9e63672c7af27eb52df6a12ea17724d33b4d34ae5de46e4b9f7a82be870f45538d8f99c557f692d028a28adce50a28a2800a28a2800a28a2800a28a2802bdd7facfc28a2ebfd67e1450632dc9a2e225fa53a9b0ffaa5fa0a7506c1451450014514500145145001451450014514500145145004914b25aceb35bc8629a3c323ab156538ec7fcfe35f547eceff00185be2d7826e346ba9047ad69c9e640491cba81b19727b9183edf857ca7dab53c1de2bbbf01f892cf57b190acf6b2062aa7efae7953ec6b9713878d48ebba3d0c0e31d19d9ecf73ebef1de90fe3ef06dbf88ade1f275ad2d19678864f99b0e244c773dc7ff005eb8bf83bfb4c68fa16b72787eebfd4dfdef9f05e2fdd0ce00daf9ec0fd7fc3bef09fc48d3db41d2fc416f0c7fd91abce64be2bff2c1dd40391e991e9d2b8a93fe09b1e3cd53f688d021d1f489af7c31e22d423bab4d52de4492dd21ddbcee653f2e07ae2bc7a51a6af0a9a1eed573694e92bdcfbf7f612f1ec1ad781efac566132d95c978d81fe07cf4f6cff2afa2203e647edd31f97f9fcbbe0d7c3bfb10799f0b3e357883c2775228fb3ddcd6f1007878cb33211ebce466bee0d35b7dbab1dbf372727d47f9fc01af9dc4c6cee8f6a8fc29197e3cf0158fc4bf0eb69b788a645fde5bc8cc711c98e09c751cff009cd7ce7fb3878267f0dfc66beb2835a5d1b53d34ba6aba2c8a4c77233859a319ee307f1afaa1a1624f55efd7d3ff00d7f993ed5e37fb5e7825663a578a74dc693e28d3498e0d4631b6398005bcb98e40c3631cfeb5cf1bb7a1d31ec7a178c345d6355d2ad5b44d521d3f50b3b95954ca8648a5519055875c1ff273527823c277da069727f68ea5f6fbeba99a699d46d8d4b74541d8638acff83be2dbef1b781f4cd4b50b37b3bab88434aa0e55dba12a4718c8aeb5cee4603a63b0fa7f423af4fd41ccd6e67ca78c7edd3a91b5f829696e9f7750d5a089ff00da51ce0fe5dba7e95f28c368b7de0cd59ade390dc6b1e308ac54ecea21b38c28f7e653f8d7d75fb69686daafc0992755f9b4bd4adee58f60bbb693edd6be5ef0eea969e0df821a3f892fbf7967a4fc4dbe7b90c0b6e5fdc2a6e0064f0074fe55d54a5eee863522db47d23f03fc311e93e33f88925bc8c62b6bcd33448f2bdad2ca30c07d1ddebe16ff0082cff8c9bc49fb61d8f87e1ccebe16d0adecbcb8d7912480ccc3afab8cfb7e35fa33f00bc37f62f0fc725c49ba6d62fe7d6ef5dc1420cadbf073fdd5c0ff0080d7c563f6751fb407c78f14fc4cd7a4db0788f5279ace246dc4dbafc8983d81541cf7ebd2bb300d2a9cef73b30f9754c57eea9edd4f8b3c35fb3ff893c5526d861f2ce400aa8d231fc00fe75d8dc7ec37e3682c7ed1f63ba2a002736adcff0033e9ce3bd7e86f85fc0fa5f846c16df4cb1b7b58d475551b98fae7af35a3f3019fc6bdd7889b3e930fc0b8650fdedee7e49f8b7c03ac7812665d4ad59554ed32283b47d78c8358b15c2ca3aaeef40735fa8df18bf676d13e30e9932c90c56fa84830b3041b64cf50e3bfd7af35f0e7c69fd90b50f05f8beea10b0dbaa300b1aba85618e4ae58123a718cf27a56f47109e933e5b3be12ab86973d0d6278d1b9d83ef2f4e09618ed8fcf35b5e12f03ea5e2f97f72bf67b7ef34aa718f51ebdabd53e00fec4b75f14ef649dee23f2619191f3c0520f23af27be057d99f0c7f657f0cfc3eb38fceb58f51b98c603ca3e54fa0a9a98ae902325e13af88f7aae913e0a6fd9ef50169e625e6ee324b5b32a7e75c87893c1da9785415bbb560ac0e248c6e4fcff0011f8d7eb2c3a058dbc1e5a59daac7fdd112edfcb15c77c42fd9b3c2bf10b4f991ac61d3eea4e5668570b9ff697a1fcab38e2a4be23e8311c0d0e5bd37a9c1ffc11df5884fc17d52d77379fa6ebc6765eea1a34c103f022bda74785fc01fb7d78d2ce32cb0f8823b7d6e0f9481fbc897763fe06add3b935e51fb0b7c16bcf80df1b3c59e1c994476bacd82ea366c0fc9218a4556c7d15c9c7b57b8fed2368be12f8f7f0afc604116fa82dc787ee9b0739c8921cff00df4e3279fcabc3c772f3f323c5ad869d14a94fa1c27c54b19bc25f1e7e2fe8b189122f13e971f882d39e1a56456247fc0e361fe4d7be7c0ff1baf8fbe1be8dab2b2bc93da47e6153d1c0c1fcce7fcf5f2df8dba18bdfdb1be1feddbbb5cf09cd04c08c82229a45e477ff00583ad3ff00616d4e74f09eb5a3c8df268fa94912e7df27fce3d6b879af1b9c324d688fa06390055ef803a7e1fe1fe7b43a85d269b6735ccc4086d2332b93d30a39fe552274e7f03e9ef5c2fed35e288fc27f013c5179249e579902db2b676f323851fceb38ef627a6a7e7dfed6fe3fb8f1c7896eb544924bdf12f882f56d6c554e5ed61270a883f87231ff00d7afb57f644f8036ff0004be1469da3a999ae362dd5e3b9c969dc65bfcff00f5abe64fd89fe1841f14ff00688d475bd50acd6be1351e44607c8d719c29f4e3ad7df1a75bb410ae460b7241ed5dd56b351e544538daf2664fc47f12af82fe1debba96028b0b2924439da37e0e3f522be138ee560d3fcfb893c98f634f712b7f0ff131e7ea6beaafdb6fc4074df82d0d8a36d7d72fa3808ee635cb1e3f0af817f6c7f12cde1cf83124366ccb26a57696b332f1e5c7b49c67b6718fc2ab074d4aa24cc3112e58f3156dbe330f14cfac5d698863b7bfb9db1ca46d62b126ccfa0ce2b2bc2b70bf113c53269f6172d2470e4dddd8f9a38fd81eec7a7f915f3b689aaeb17491e8da6dc5c9174f8482238c935f5cfc11f85fff000ac3c156b66cbfe9d3b79b74df7b73b0e9f8671f857b989a71a513ccc2621d67b1d6eb3e27b5f87fe0491ee246b7d074788cbe483832c98e09ec589ed8af893e20f8e2efe2378baf357bb66f3af1da419fe04e70a07618ff003dcfaffeda1f1305cea16be15b5999a1b3fdfdf15e37c8465509f61fe7a8af032307d7deba7034125cef738f32c45dfb35b0514515e89e4051451400514514005145140051451400507914514011cd0b48d918e9453cb63d7f2a2825c5090ffa95fa53a9b0ff00aa5fa0a75050514514005145140051451400514514005145140051451400514500e0d007b9fec67e3c54bbd47c2b79b25b5be432c31c872a4e0ee5c7bf5fc2bec1f81bf136f3e0769ba9db68fe77d9af60648a37b9765b576041650738e0d7e6c683e22b9f0bebb67a95a332dc59481d483c9c76fcabed3f845f1674ff00893e1e86f2d654fb494027833f344ddf8f4af0f32c336ee7d265b8abd3e4bea8ed7c33e206f027c6bf0a6b4ceecb7521b4ba909c6e63f32e4fa9cb727d6bf427c337eb7b688ca38603d8e33fe7f9d7e70fc415fb5780b50995d566d3f6de472336d019181fcfa8e3d7f3fb73f663f8910fc47f85da2ea70c8b27daad558b03dc0f6fa57cee228b51bb3dea3535b1eb08e653d17e6fe7807fcfe1ef59be34f0569ff127c27a8787b5419b0d56192d9c8eb1ee040607b639391d318eb57ad9bcc4cf7c671ea463fc73fe4e660ddd59be6fd73dff00cf4c7a66bcdd4ee8b3c4ff0064cf0e6b7f0df43d5bc27acea0d7d2f84f537b5b6f317e636ac4189f9ea0823f11ec6bdb361545ec579fa7f9cf6f4f4af35f8f8baaf82efedfc6da27d98ad9c5141ad24800f3adc4aa37e719f9431fc057a1dbc8b31668df7a70ca7a6437239fc4ff00f5a88ddad424d943c5fe1387c6de12d5b46b8ff57a95b345f46fe1fc881f88af8b7c39e139351fd997e28e8b756b24d71e15f1e59eab771c6373a5bb7d9da561dc7c8921c7b57dcb1b379a3d8f7e83fc9edfe479845e06b4f0d7ed35e268cc2b268bf123c3b1dc5cc381b3cfb690c5271ee92a9efdeb6854e52524f425fda0f5fd5342f807e30d43c2f6e6f2ea4b5096ed1b60a5bc9805d40eea873f87b5795787edace2d16ca3d3d95ac628238e1233d0281dff005af54f833a8cde13b9d73c19a918e49fc33379316f6cfdbac241fb96f5fbbf29f42bed5c4fc47f8651fc1af12bdc59cfff0014d6b77216ce3dbf359cec398f8fe12738c7e95dd83a8a335cc7d170fe2a14f11cb2ea55117967b9f7ff003fe7fa4724595eff00fd7ff3fe79e14dc7f0b70d9a576c9fc7fcff009ffeb03ef68cfd1b46ae8ae616656ea383c8ed5e55a8fec95a2ea735c5e349249aa4adbfcc9794240e33d4f4038cfafae6bd7621cff87f9ff3fa972c4a22f5f97d28e530a9858555ef9c7fc26f87ebf0dbc19169de5c0926f677f2461727f015d3819c63f0e3f3a5e14f6ff39f7a3763bf4f7ffebfb7f9e2a429518d38f2c46b26d51ef4da37714a06681b307c6be214f017893c1fe2c919628347d5d2c6f24794a27d9eec794db8f4c060a7fce2bbbfdb174e8f5bf815a7c90ccbf68d2fc63a335b156ddbda59bca3d339e1ff001af2bf89bf0e2eff0068dd734ff8796bba3d39a68f54d6ae15b1e5431b7cb183eac48ff0f4f6ef893f0eede7d3bc1fe19d3f74305c7882cb51705c1296f659704f3fdedbf9d7958c9538eacfcff88a51788b20d7fc1c2f7f6b8f0d6a5248af0f87bc31a86f4c72be65c02a4fe4d587fb1bf868e9df0ef50d41d76beb5abdd5ca923f87cc217fafe15bd33dc5f7c4cf8a1aa224816df4eb6d26c98a9024cc6d2391ff00027c6471c575df0f3c1e3c1de0bd1f4d5000b1b7553c60ee3f313f89af3954d0f96953d4d2913cb18ebeff0095793feda566dad7c159b4dc8f25a75bfb87182cb1c07781cff79b68fad7b049185db9e42f3f5ae6fe21780a2f1edb59d8cdc5aadca4b7391feb510ef119f6240c8f6a952b19f2ea70ff00b27fc0987e107c2bb58e4855754d6986a7a833801c3c986da7e8081debd51c2805476e3915238111ee3774c761dbfa7f9151f94cd22af77c63f1abbdc55257d11f367edc7af2def8cbc39a2ab73650bddc83d19f2a323e9cd715fb2b781fc33f1e3c2ff10341f146956faa68d7b7b084695b6b4690e41742082bf303c8acbfdadfe245bb7c4af1c6bccfbadb43b630c7b4f04c6847eac7a7b5798fecfdf1aa3bbf02c737876fa4b76bab436b7e0fde123125c9f739273dc57a34684bd9f3a392a4e3cdcacd39fe0c7c39f873e2dbeff842b43682dede56896f2eae0dc4d360f504fdd1d3802a978e7c6b6df0fbc17a8eb970cabf63426252d8f3243c28fccff3ad4b5205b88a3dcb80705b8f7af98ff6bbf8c96de30d4e1f0ee9b379963a6b96b975fbb34c38fc40fea7dabbb094ea549da471626a46941b4791eb9acdc6b9abdc5f5e48d2dddd48d2ca49ee7a83fcbe83f2a34e77de7269b5f4b18a4ac8f97949c9dd8514514c90a28a2800a28a2800a28a2800a28a2800a0f4a28a00639c9ff5817da8a8ae57127e145066e489a1ff0054bf4a75362188d7e94ea0d028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0029c91f980fb7ad36a48db09ce0f3d0f4ff0027fc39a0a8efa8df298fd38e6ae687e21d47c2f7ab75a6de4f633a8c878db693fe38ff001aaec72dc9ddcfa8ebd3e9d3bf3413c9fbd8ebcf7247f51d79fcea5d9ab32e3eebbc59d46b5f187c51e38863d3758d7efe6b39992364771b146ee7207bfafd6bf433fe0959e2ebef0de93abf827529f371e1e9f7420b7fac85f9561fa7f9c57e6248731372dc723eb5f7afecf9f10e3f02fc56f01f8a1b6ac7e26d262d3aef71eaeab9527b67e523fc2bc8cd29c553b247bf93d69d4a8dc9ec7e9969d71e6c6a79f987ebfe455ecefc7fb591d7afe3f97d47d39c3f0b6a2ba9e9504f1e0ac8a194f4ebcd6ec6bb9547e78edcff004e71e95f1753467d4c7b15b56d061f18787f53d126c04d66ce5b2271c8322103af7c9079e87f0ae5fe05eb936bdf0abc3d7170dbee3ec22d6e0639f360263618faa9e3fc9ecacdfecd7714cbf7a39013f9ff00faff0013f85707f0753fb2755f1a68eb1ac31e8be2ab9489067fd54ca93af5ff007cff0091508bbe8776cbbb39f6cfd7f973fe1f4a8a5d22de7b88277855ae2d51e38a4eea1f1b87e83f2a9947cabd718007b7b8fe5fe346fc8faff9fcfb7a7f2a2f6d03ccf3df8d5027833c61e13f1c056558671a06ac546775ace71139e47dc976fae031eb5bde37f042fc46f879ac787e5c7da2ee0716d21e3cb9d466361cf0738fcfb62ae7c48f0db78c3e1af8974b8d8b4f79a74c60c1fbb2c6a5e33f8328aa9f0c7c5fff00095782f41d76305db50b082f0b71b836df9ff97f2aaa6e49dd154eea4a4ba1f3f786f51935af0f5b4f3285b841e4dcaffcf3993e5914fd181ff3c569fde42defdbfcff009f7efe65f183c5dff0cf5fb6c7893c337d349fd8be2c64d7f4bdcd958ccf9f3117e9229e31dfdebd1a0979560df29ee0f515f51869de08fd3729c6aad4bcd165460fe3dfb7f9e3fcf34edd95dbf873dbeb4c0eb8fe1e98e4f14be62e7ef76fef5751eca22910a0dd9fc09ff3eff99a6e71dfa7f9f5f61fe7156197d7b1c9f6ff003f95412615f1efebd2a5a264ac4551dddf47a5d94d7529db15ba191bdf1d87b9a5b9ba8ecade49a6916286252ceec70140ef5e29e2cf8b49f1b3e31f863c0fa3976d26ff00538d2f274e3cf44cb363fd9c29e7bd6727647978ec642853bc8fab3f669f87ada47863edb750b0d5bc4d37db2e0b1c3a23604687d368c1c7f3ab7e0fbe93c79f14bc55af2c6a74db191343d25b706f33cacf9f271c72e71ff01abbe38f1e2fc2af847e22f11471fef34db168b4f83a6e9dff0077047f8b15ff00f552fc18f003fc3af86de1fd164647b9d3ec95af24c7335cc99791cfb9624d7cee23de9ea7e638cacead6736cebcc6a6168dbe657fbd9fe2fad1249e5aff009f4a75473f2bfee9e6b04714b61ce32739f41c76ac5d2bc5ebab78c75ad2e38dbfe24d2450cb2e7e56775dc40fa0c56d599f36ea18c9fbce01f7f5ff003fe4f07f05545ce8bad6a876b49adebf7d76589ce156668947d02c6053eb6279958edbefdc469b725db68e3afd3f2acff146b51e87e1ad6358936ac3a642f2649c7214e3fc29dafeab71a4e8377796d6cd7d73671b4a902fde948e703b67d2bc2fe377c5ad4fc5df043c4577fd83aa78774d1025aa0bc7024ba9a471d140ed83f9d74538a7a33093ea8f86ff006c2f1ccba6fc1774695bed9e28d43749ea53e676cfe6bcff008d7cdfe08f897ac7c37bf926d1ee840b37de8ca0647ea00c7e7c8eff00afa47edbfae4977e3eb1d2232df67d0ed11241d9657e48e9e9ebff00ebf11afb2c0d18aa0933e5b1d889aaeec7a47893f6a9f187887477b06be821824c891a081637907a6e1c81f4c7e15e732cad34acedcb312c4fa9a6d15dd1a718fc28f3aa569cfe2770a28a2a8cc28a28a0028a28a0028a28a0028a28a0028a28a002863b4668a47fb8df4a00ad75265c7d28a73c60e323b51407b16c9a1ff54bf414ea6c4731afd29d40051451400514514005145140051451400514514005145140051451400e8ce1c7f3f4a97a73e9dfd3bf1fcc74ee39a8a33871fcfd2a5e87fdd3827d3e9fcc74ee39a4691d863a304fe1dbd7fc3f3fe95f577c2f91bc5bfb31e8f70bbdae347c5ca95c6e56824c9c7d5735f29bfcd0febc0e9ebec3ff00d42be9efd8a3575bdf8592d8c8a4adbea0f0c8b9fbc92203d3df07af15c19845ba773d3cae56abf23f483f640f888be31f86f6c3cdcc9627cb27fd86f990fe58af6d84b2d9a49c9fdef96327db3fe7d6be17fd83fc72fe14f1dc9a0cd295594bd812dc65a325e33f8af1f87d31f7069975bfc3fbb006dbfe707a028315f175e1ef6a7d853a89c6e8b2d26f1f2e59b19193dfa8ff001fcbb038e2f4c12e93fb4078bed58ab41e22b0b2d6edbe5eaf1af9137fe82a4fd7f3ec262d6e595d48650b9cf7241ffeb7d79f535c4fc6dbd5f0addf843c5ccfb63d1b521a65f939c7d92e884c9e3242bed6fccf15c691bad4ef0fc8f9fe1fe1e33b875ff3f8d398e59874cfb75edcff009e7b557b31c346db709c027fbb9273f8f1522b6d6c1dddcfd38ff3f99ee714edd0398b5a5c8a356b666dbb5db6907ba9e0fe9c7d2bcc3f6788974bf86b0e92db964f0dea57fa3b2b1e9e54efb73edb0a91ed5e8f23f96cac47dd39fa7393fe7db35e5be11f108d13f695f8a1e1778e38e39a5b2f12588527e78e681526c7a7ef17271d734e31771dcf15ff0082ad7c201e28d3fc09e2cb542b7da7c371a579ebf781244b1a93cffb607bf5af12f833fb5d9d1b465b1d7ede69bece3caf323c192261d430ff000afb3ff6cdd064f16fec95e2e6b5b792eafbc3e22d6ed154f25a160481f5427f3c579aff00c1347f650f85ff00b5f7ecfd71aa78b344336a1ad6a573326a5673b437968bb99405e48e303ef29fcb8af7b2cbcfdc3ae9e6cb0305513d7a9c8e97fb49f82f5303fe27096ec4671346531ed9ad28be367842587cc5f1169bb47ac98356fc49ff0004914f07fedf1a6fc3b9b56d52f7c0faa68727886cef76aa5dcd0a38468cb05dbb9588078ef5b9fb53ff00c1137fe14ffc12f1378fbc1de30bcd6ed7c3b08d425d2751b348e64b718df8915b0fb41ce4aaf07a57a1ece6af75b6e7a71e37a7eea6d6bb1c75f7ed11e0eb28f9d7eda5dbda3cbff2ae7bc43fb60784f49b66fb18bed466c70ab1f96a7a776ff035affb10ff00c12aee3f6a7f87763e2bd67c4b73e1fd36fae25482daded16595d636da58b960141e46706a1ff82a8ffc13e7c3ff00b14c3e00bef07de6b1aa5af8bad6f45c45aa4c8c629adca67698d07044830083d3eb4acdc39f5b0ea7185ea2a37f799e03f14fe3d6b1f139c2cee2d2c5385b68ce17fe05eb5b5ff04f69e1f15fed3f71790ab4d0f86aca4cbe303cc7f978fa0ce7e9f5afb4bf631ff82627c39d07e0be83e38f8a9a4bdf5f47026a772b35fba5ac7c075431e003818eb9ae07f64af07786b51f8abf15bc55e1bd36cec749d77c4d27f64c76d1048d2d40217681db3cfe359e2af1c3f3c9597e67cee2b38fad621d2bddadcf45f8cf62be32f10fc39f0590a61bed54f88f525247fc7a592e501eff0034ec9f5c1f4af4db295a65691b6ee95cb67a71db15c2e8969fdb7fb45f8cf5465678f41d2ec3c356ecd82119835ccfb7bf3e6460ff00bb5e811a62350474001af99949b7a12e49e887039155f7830dc673f79546454ec7627d07ad646a1e33d1f4ad384d73a9e9f6f0e93334da8079d5644500151b49c927b7f8d5d28dcc2a32ddeeb30787b43d4352b97db1697693df4a49c6d11a337f4ae5be075b1b6f845e17fdd792d2e9f1dd329727065fde1273fef5617ed0dae4be29fd9c752d3f4bc1bbf1c98744b357f91b6dc4803b63afcb1863f857a169d68ba6cab0c6cbe4daa476a80740a802e07e23f4a1a571c6378dc91dbd3e5f6cd783fedcde268edb46f0ce8ecdb52e2e9f50b80c7e5f2e21c13f89af79ba258ab28c2b0cd7c49ff0545f1ac9a4eafa9a5bbe6e63d32df49b650c47ef6e24f988c743b73f957461d5e6918d48daf73e1cf8f77d26a3a4daea574a166f156a175a98c8c130ab7971fe833fe707c9e4186ea0e79e2bd67f6c081741f8a36ba0216f2fc39a45b58b67a072a1db8e8396cf1fd335e4d236e6e3a67d2bedf0b1b5347c6e3a49d46368a28ae938c28a28a0028a28a0028a28a0028a28a0028a28a0028a28a00291d77ae2968a00ab302243453aebfd67e1450632dc9a2ff54bf414ea6c3fea97e829d41b0514514005145140051451400514514005145140051451400539519fa0a6d4917dc39ff0fccff2fa74a071d46a02a7f03ce7d45484e093e9ce7d067b7e6083c77a1ce073fc391c0c63fce7f0e78a1bf0ebe9f28ff24e703ae7b5496b408b72920e781c73f77ffd5cff009e6be82fd87f5712e97e20b1f9731cd0ce17d07238fc6be7d2493f4ec7b7a67e878e7b1af64fd8aef043e3cd5a13b8fdaac4b839feebaf5fcfafd6b9718af459db97cad591f482ebcfe04f8a1a7ead6efb7edc17e63dae2204afe6b91ffd7cd7df5a37c5ed26dbc176779797915958eb5246f1dc4cdb2289f673b9bb0f7e9fd3e01f1b68abe26f0f47642e3c89a49d5ed5c2e7f7a012a3f1c62bd93f61bfdab34bd7b456f0aebcabf68b798c4f0dca8611c99ee1bb67a7a7ad7c8d5a6e51e647d4d196bca7d63e1af89569e3bf126b5fd9f776ba8e9d62f0dbc37709dd1ce7cb01b0dd0f3c71ff00d7ad7d7741b7f1b785356d0ef0e6df5ab592d5c7f1062a4ab0fa30073d6a3d112d6cf4f8d2ce0b786df960912854c91e838f7ab91bef04fcaadbc11d9571cff2c9ff00f5d79b53b9e946e99ce7c1bbfd42ebe1f68bfdb092c7aa416e2d2e4c802f9b2c6761603df6823eb5d6ac8a09c37af3f4ff003fe78ae4fe2f25c5a7c34bcd42d64786e34531ea0157ab22302ca7ea3775ef9fa5741637d1df5ac334327991dc224b1b7f7830cff5fe759c65729e858999548cf6e781d3b71fe7ae3f0f99ff006b7f18bfc1efdac3c1be3007166da62d9ea58ff9696cd26d39ff0074ed3f4afa4d9770dbb72db4631fe3fe7f91af9c3f6f7d0a4bed53c2f79243bec65b39f4f989195e58301f5e335ad38fbda1329687d09e1bd42d6ee2d8de4dc59dd44c8c1be659a2707f9835f32fc15b2f117ec61fb465e787741d620b1d3f50b87bcd3ec2f97165a846ec5b62b63e56e48fafd6b4bf62bf8dada8dac9e0bd6597fb5b4351f619893fe976bd075e4b2f4fc2bdd3e227c37d0fe2c6831d9eb569f68fb3b6eb79d0ed9ad1872191ba83d3ebe9c56fed2ad097353dcc6508d68f2c96837e2b7eddb2787fe2cfc2ff00106b1e12f1469eda5c777a0ea9225a9b9b5586eb610cb2a672a1e307900e3d38af5af8bffb697c35bbfd9cfc5f676be2ff000ede5d788f40bfd360b76ba45949785d47c870c3923b75c74c5792f81746d53c25a7b595d5f8d42da3e2de43feb36740ae3a647ae2b51f4ab42eacd6565b939526d93233cfa57a34f3caabe249dcf26ae4b45d9c5b470bff0004dafdb5fc1be04fd983c0ba5eb335dc3a9c7a73bcd6f69672dc3cb29998b6ddab819c8eb8e82bcfff00e0a33e2cf1c7ed73f15fe1f78834fd3ffe117f877f0fd679b1afc82d5afa49245cfeec65bf800c11ce7e95ef1a88b8b1d376e956561f6c881118914468493df68cf61c578f788bf668f127c59d585d78c7c551bc31fdcb2b08cac310f41bba9e3afd7d689673374fd925a336fecd8aabedf767cabfb4a7c71f885fb65eab63e059bc4d7ba95bacea64b5d397ecf676b0a31c290bf7db81d7a601e2bec5fd95be09afc2af0669ba4e3126e532a8ce01adaf863f003c2bf08e161a3e976f1cd21dd24ee81a590fa938a87f68df8b4bf04fe126aba943b5b57ba85ad34c889c1695c6dc8e9f74735cb5b1d52b2e59743a68e1e14af2b6aca7fb3fea4be24d0fc41abaeedbad789f50b80e7ac91c4fe4a1fa6138af4443d7d8fa579afecc3a29f0e7c0ff000cd91dbfb9b2deedfdf77f9cb7e2589af4a8d704fe59ae1e5b6e6fcd763986e5ae175bfd9e7c27e22f17c9af6a1a62cd7ec518b3487612bd32bd0d772edb71f5c573be3fd766b1834bb3b529f6ad5aed2240d9e231f33b7e007e66857e80c8afbc1afab78df47bc98c234dd123692087ae6e1b0a1bf05ce3eb5bd0c6ac547f17527bfafe7d3f0cfbd34b6d1cec655e3a75e9fe1448ed186dadfec927bff9c11fe453eb72a36b11c6db0e0fddfbc476e2bf38ff00687f10afed05fb70dbe8b67b65b4d36f8dedd9ddc6e5f9635cfb019e3fc6bec8fdb0be3bd9fecfff0005f53d4ee2644b9b881e3823dd867254ff00fabf1af85ff630d2ef3ec7e36f881aa1dd79269b75aaef7196506364887e2cc08fa0af5b054f47525f2386b49e88f9cff6b9f165af8e7f68ff00196ab672adc5adc5fb470301fc118083f0e073ed5e6756ee999add5a462cf212ee7d4939c9fcbaff003aa95f5f46368247c7e3257aad8514515a9ca145145001451450014514500145145001451450014514500141a28a00af75feb3f0a2ac51410e17771146147d296914e547d29682c28a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a555dcd8ff22944249edee7d3fcf5e281d98a1c6c55fc79e9dff9f1e9fd6bd37f646d41acfe35c3179842dd59cc8723927191fcb35e669190ebf5ea0f43fd7b74aeb7e026b3fd83f1a7c3b7195556b911139c001c63fa9158e215e9b474e1656a916cfb0bc5570f6de0dfb7c791369f34176bcfdcdb2a939fc0d72df1c7e195f1d70f8bbc2a5adfc456396b8813817d18e78f7c7e75da496035cd0ef2c47cdf6889e201b920f4fd314ff0aea5fda5e1bd3ef198f99242bbd8f50e3e56cfe20d7cafb4e495cfaa6ae8f47fd863fe0a2363e32b78b40f124e6cf508488f64b90c8c383dbfc8fc457dad63a9c57d6cb35bbac8adcab020823fc9afc98fda03f6789fc4b7abe21f0a62cfc416df34d0467ca6b9efb8631cf1fa57a7fec2bff0526bcf0ceb50f833e21f996b346e208aea51b70d9c6d719e2a711838d587b4a3bf546d471128be4a9f79fa4d6662d4dbecf71b4dbdd2982404e37ab2907f9ff9e6b82fd9df50ba8fe1adae977df2ea1e19bab8d0ee771dc7303b08dfd798f69f7ae8f45f135bead691dcdb48b2c7201223a7218119cd791f83bc71ff0008cfeda3f13fc3370eab0eb4b67ae58296c299042ab2851ee003c578becedf11e92ee7bd955087a771df8e0ff87f9e95cefc48f02dafc4cf05df68774ab8ba526090ff00cb2719da7d3f2ad8b5bf59615600952320f4cf4ff03fa7a54e572aadfc430dc7f9fa7d3f2a9d986e7e7c7c43f09ebbf0c3c60af6d3369fe25f0fb9304b8ff5ebfd54f5ff00f566bdfbf671fdb9f41f8b11dae97adcd0f87fc4d18f2a4b5b96d893bf0328c4631ed5e87fb427c0c8fe31f87bccb2558fc4564a7ecefb79940fe06f5cf3f4af823e25784747b8d664b4d4d64b3d66df3e62471319236ce0640e7fcfe5df87946aae492d4e3a9cd095e3d4fd33865fb644b22b798add0839cf7feb4edfb0e76f7e9e95f98da46a5e35f8630c6da17c42d734e863c98adcdec8d1e338c796c4afe9e95d0bfed6bf1a3422817c651ceacb950d650c8c323f8895f7fe54a5868deca452ac7e8b6ec52c4ad336d4058fa28cd7e775c7eda7f18becaca7c61a6edea5c69d12b7a609d9ebe9589e2dfda63e2578b90d8defc44d5312800c1a4b7945baff0012018ce7a16c7e7c11c25fa932c425b1f787c65fda57c23f02f4d90eada8c371ab1cac1a65b9f32e256e7a81f747b9af9534cd4fc4dfb5e7c5c86f356dd0a97dd0daaf3169b071d474dc71df9af25f0a7862c74bbd4692492f355b872cd2cae666dfeacdfcfe9eb5f717ecc7f0cecfc1fe0e49a29239f50bc5f32e655f9b1d70b903b7a52a918c2365b85394aa3d763d2fc2fa2c7a1e956f6b0afee6de311203e80607f2abec76fe7f423fcff9f6456f2411b5bdb9ff003fe7eb482612a31e9b4fad73735d9bcacf6122df248aa172738503d6b85d16effe135f8bdae6a4b233697e1945d2ac471b24b82333b8fa642f7fd38e87e24f8dadfe18fc3ad6b5e9994b6996dfba4276f9b3be163407d4b15ac8f853e188fc11f0ef4bd35a3ff488d1ae6f0ee2c5ee253bdc9279ce481f851d4708bea7565d517fdac01c76ff003fa7f2e7fe237c49d27e13f82afbc41aedd4367a5d8ae5e494e031ec07af6fcbdaa8fc5df8c7e1ff00811e099f5ef125da5bdbc6a7c9b70c3cebb7c1c222f726be12f8e9e3ff0010fed9be24b6bef132b693e11b221f4ed02391be7f479fb13c0aeaa1414a4b9b631ad3b5fb9e73f1c3e28788ff006f8f8c2da9ceada7f81b4b9b16d0bfdd9c291db8c920fd39ea6bd87c4da7c1f0c7f62bf115dabc769378a1dac6dc07da4db5b217600fe03f3fcb3b4bd02345b5d3ed2de38d66916148e25da141207415df7edffa5af85ff669d6b4c8e36687c17e16b7f3176ee4fb4ea17714639e3e6088c47fbd9af4255f9a71a70d8e4847dd94d9f9897b26f863c74da073cff9edd2aad58ba1b5f6b6dc2f192793dbf98cfd4d57afae86c7c6d6779b61451455190514514005145140051451400514514005145140051451400514523b6c5cd002d150fda18f614503e564c3a5140e945020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801c870e2a4f3549e4f18fcbd38ef8f7ed50d1414a5626278ec413cfa103d3e831e879c558d12f5b4cf11e9d75bb06daea39738c9e181cd54493e75fc39ce0fe7dbff00ad4b306f2cedfe1c609e3b647d3bf7a992d2c691959a67e8068d72bbc491f2acde7211d086e7b7d7fce2aa7862e7fb0b54d42c70c56c7524b88d4af0d0cac0fd319c8fff005d50f85fac8d63c0da35c0f98cd6109ce30385db8fcc63f0ab9e233fd95afd8df0188efa36b19dbbee077c7faf1f8d7c6d78fbee27d7d396899f537ed47f0a2d6ebc0365e2cd36cd61bdb011a5e2c0a155e27030c71e95f1cfc6afd9f74bf8b3a7cd3246965ad46a5a1ba45c79c40e038f4fe59fc6bf453e17dd5afc4bf85b671dd2eeb6d634d582507b7cb827f035f167c44f0d6a1e05d66facdb72dc68b23472c6c7fd6c633b4827ae4571e1ebce9d4b2675d6a7194533ceff0066bfdbebc5bfb246bf6be13f8816925e787e3fdda5d0cb49020e8ca71f3a8f4afa13f689f1ed9f88fc7de12f8a1e11d42df5246b64911a23feb021daf137fbd1ff009cd78d6bda2687f173c331dbea16f1de4320f9491fbc80ff00b2dd4115e21a9f847c65fb2b6af1ea1a4dddc6b1e165937b41b8b220c7cc193a29f71d7dabd7f674abefa48e38d79d256dd7e47e9ffec7dfb41c1f1dbe11daea9b963b886e25b49e363f3028d804f7e460ff008d7b34378d239dbdfa0febfccff939fcc5ff008268fc7eb2b0f8fdad7876da56874df164726a50c1237fc7bdc0e5907e47815fa53a26a3f6cb68dbe5dd80d962704735e363b093a5535d8efc2d6f6b0e64797fc78f8eba825e5e785fc137220d46d543eadac6729a5c7fdd5e305cf4fc6bc93c1df03a6d4fc2faa5c5bac967612307b9d4a583cebfd43e62cdb09e402c7b6073d2bea0d43c03a2eada5ddd8dc69d6ab0ea131b8ba58d769b871fde23af619ad9b6b4b5d36cee21b78e18e36408b0000288c1e4e3b76ae5a729b6adfd686f2b2573e4c5d3a2d1f2b1d9db69b6f1feea2b710896eae383f79f048cf1c0a897e0ff008cfe216a96f1e9be19b3b4855f69bcd42348d211d9953ab9e73fd7a57d4b0e81a54f7915e4765666641b51d501c7b8ff00eb56916dbc67ef1ddcf527d7fcfb54c79a2d3bec92fb83dd773e611fb01dd5b6916f6736b49ab7daa5f3af165cc310624e42a8248518f5f4e95b56dfb1aadb6a2b670db59dbe9f628bcc6ea8976f8c8f9064920f7627e95f4286e2919b73f3f78f7a1f35ef727963d8f996fbf652f1d6af3dd476771e1af09dbc39f2ee2ded96faeee149fba0be1573ea318ebef5b1e1dfd9dbc69a6e9d6b38d72e20be84859a7b8bf60f2a7381b630403f4381ef5f412be403ebeb5cff008fbe2c681f0e748f3b54d52d2de650d2c76a58b4f7057a0451d7ff00af5718b93dcce56486f84b40d4743d3161d42f21bc917fbbbb23f16393f8d6c47bbeeb15519dce4f71d7ad66f83fc4173e26f0be9f7f776eb6f3df5baced1608299e40c7f9fe9591f19bc54de0ff0085fad5d5bbc297d70a9a75987fba679d846bf96e278ec334d4351abee8f22fda0be26afc4af1afc3bf05d9ab2dbddde8f106a47783ba28a4658837d5813cfa5757fb4a7ed3da17ecb3e071a96adb2fb5ed518ff67e931b7ef6e1ba0623b2f4ebe9eb5f296b1fb51e97f0a3e2aeb5e296b75d5f5248ff00b23c39a6a1dc592102247603a2960cc7a75ae2346d1b5cf88fe34b9f1a78dae1b52f115db1b8084930e9d1e3eeaa9fbb8f5ed5e953c2b6d39a319564aea3b9a3ac6a9e22f8e9e326f16f8ea6fb56a130df67a601fe8fa7af61b7a645744b1847fd7fcfe75c9f877c53278bbc4370d6de5ff66d94a115d7fe5a36318fd2ba8b865b6899ba9e00c9ff003fe4555493b9cd29367a37ecafe06ff84cbe2b457d332ad968c9e748c412ac41cfe801ac5ff828278806a5fb0a78cbc4be63ff00c5c2f16d8c50060466d2d8b8882f5e3e4ddff023e95de6877373f0abe1a69fe15b28c0f11f8e2d5119d465e0172e5771ee02c6ae467a1c579fff00c163d21f057eca7f0efc3b6a76dbaebad0c69fec416eab9fcdbf9d6586f7b1318aee744ed1c349bec7e6cdeafccdb99baf7edf9fe3fe48aa756646f357b0c8c9cfa67d7fcf3f90ae4607bd7dcc763e16a6aee2514515466145145001451450014514500145145001451450014514500151dc02547a77a929b27fab6fa500539325a8a7b75a283394b52dafdd1450bc28a28340a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28000769c8a3767af3c6067b5145007d81fb306aeba97c1fd0875fb3a3c2c0ff00b271fd7f5fc2bd03c47a7b6b3a0dc411b6d98624898754914e54fe7fcebc7ff63bbf67f866b163e58efa403e8464feb5ed0d298a74c6dfbe3a8ce724ff00f5ff003fcfe531d14aa3f53ebb0b26e9c59f45fec25f1257c4df0e7fb3de4dd3d9312109f9b6f523f03e94cfdb77e1aac8967e2eb68832cca2cb510a39efb58ff2fcbeb5f38fc22f11df7c3ff8d3a4dd69f70d1edd6445247fc12a4cbf3291e809c8f715f76ebda75bf8d3c0fabe977d1f996f756d20704f43b49047d2bc8ad1e49291e95397345a3f3a3c4f17fc2b6d5edaeecdbfd0ef65db2c1db3d723d38ae9f45f10d8f8af4d69ada449ade4cc6c8e3827b820fd718aafe3fd2239bc39776927ef3c97288ffc4a54901bebc5797f85b589bc356eb7f6fc7992f97245fc0fd39f635e851f7a175b9e6d49f2cec5ff00107c1e6f84bf14349f881e145584e9172b71796017e564ddf394f6c13c57e957c16f897a5fc47f03d86afa4dd2dd58dea8642bcede79523d8f6af88ecef9a78964da3f7881883df38e3f5fd2bb4fd97bc6b7bf0d7e2847a3d8b06d1f5c76692d1beec2e3f890f6ce7a628adcd563793d51d5849283b47667dc65f0db97e63f5ff3ff00d7fe781e3bf869a6fc4492d64bc7d42de6b70f186b6ba68b723632a76f51d3f3ad0d2eedae2d159bef7a8fcead4ac4a2ff00b5fe26bc3b34d9df262691a55be8b610dadba98e0b75088a58b600ff0023fcf5bbbb2bbbbf6fad67c0d85e3d6ace3119ff006495faf152ae1cc99299ff00fadfe7fcff003a6bdc6d3fd3fcff009fc8d438fe2ff6727dfb5364e246f638a350e626371b931ffeb354eff41d3f52bc86e6e6cacee2e2dc622924895990679c1238cfb74cd4a9f7d7fda38fcf8a64fc37be067df8ff00ebd5c6fd0718f36e492c839da157a9181822be5bff0082947ed007e1baf857c2fa546d77e22bb5bad516dd4ffa99767950c8fe98decdc9ed5ea5fb53fc7bbefd9fbe165feb5a7d8db5f5f26238bcf621636638dd81d719cd7c536bae5d7c4bd6dbc57ad49f6cd735845f36761fead7b2a8eca3d2bba8514ed51ea8e5ad269f2dcc2f829fb3fea13788eddae986b1e27bf0912c8106db507938edc13927dfe95ea7fb40df59fc23f0edbf80f4311df6bdab1c6ab7e0fddee635f403bd7ac7c33d161f863f09e6d5ec155f56d4e6107da64196854ff747f9eb5e13aac42ffc6daa5f4b969e39bc8462725413c9cfa9cf35b7d61d4a974f63374d4216ee54f0a7872dfc33a45bd9dac6ab1c030c7182edce58ff009efed5e87fb3dfc2d93e2c7c4fb5826566d3ecdc3ce71f2f07207e9fe457172a94870876fcc0671ef8afa5bc0fa6afc1efd9cf53bfd28e2fcd8bca2761f307705777e19cd4622a7236d9587a5cd2b147e14e9abf143f687f18f8f372be93a65e0d0345007cb88102b483d464b7e75e09ff0005c9d4fecde10f84ba70606469753bb273cf26141fcbff00d79afaefe0ef82ed7c07f0ab44d3ecf718ed6d77b3b01ba691c6e776f724935f08ff00c16d3c412eabf14fc0d62caa91699a14cc9b7f88c921278fcbf2a795c94f1511e611e5a0ec7c425b64431f2b63771f903fa9fcfaf4150939fc3a54924de676ee4fe605463af35f768f8493ec14539e4de07b53682407ff00aa8a28a0028a28a0028a28a0028a28a0028a28a0028a28a00283f30a29307fc8a00824401cd14b267cc6a28348c55b63ffd9, 'transient');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `theme_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `folder_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `theme_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_installed` int(1) NOT NULL DEFAULT 0,
  `date_installed` datetime DEFAULT NULL,
  `theme_settings` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme_name`, `folder_name`, `theme_description`, `author_name`, `author_website`, `is_installed`, `date_installed`, `theme_settings`) VALUES
(5, 'Evolution Theme', 'evolution', 'Bootstrap uCloud theme included with v2.0+', 'MFScripts', 'https://mfscripts.com', 1, '2024-10-20 22:47:15', '{\"thumbnail_type\":\"square\",\"site_skin\":\"default.css\",\"css_code\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_id` int(5) NOT NULL DEFAULT 1,
  `email` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogindate` timestamp NULL DEFAULT NULL,
  `lastloginip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','pending','disabled','suspended','awaiting approval') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languageId` int(11) DEFAULT NULL,
  `datecreated` timestamp NULL DEFAULT NULL,
  `createdip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastPayment` timestamp NULL DEFAULT NULL,
  `paidExpiryDate` timestamp NULL DEFAULT NULL,
  `remainingBWDownload` bigint(20) DEFAULT NULL,
  `paymentTracker` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetHash` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `apikey` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `storageLimitOverride` bigint(20) DEFAULT NULL,
  `privateFileStatistics` int(1) NOT NULL DEFAULT 0,
  `uploadServerOverride` bigint(20) DEFAULT NULL,
  `userGroupId` int(11) DEFAULT NULL,
  `profile` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPublic` int(1) NOT NULL DEFAULT 1,
  `accountLockStatus` int(1) NOT NULL DEFAULT 0,
  `accountLockHash` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level_id`, `email`, `lastlogindate`, `lastloginip`, `status`, `title`, `firstname`, `lastname`, `languageId`, `datecreated`, `createdip`, `lastPayment`, `paidExpiryDate`, `remainingBWDownload`, `paymentTracker`, `passwordResetHash`, `identifier`, `apikey`, `storageLimitOverride`, `privateFileStatistics`, `uploadServerOverride`, `userGroupId`, `profile`, `isPublic`, `accountLockStatus`, `accountLockHash`) VALUES
(1, 'admin', 'sha256:1000:KQpu8LquZVfABv5kvC7Kf0n22a8TN3FL:v7sM7IkhoWpRJc04qbvv1h6o6MQAl/GP', 20, 'you@yourdomain.com', '2015-12-31 05:43:27', '192.168.1.226', 'active', 'Mr', 'Admin', 'Account', 1, NULL, NULL, '2015-12-31 05:29:31', '2015-12-31 05:29:31', 0, '5f4dcc3b5aa765d61d8327deb882cf99', 'a642c8877389b2a091acefc3aee913ca', '', 'f86cff6189c7bd13db7f94ab9b74030f', NULL, 1, NULL, NULL, '{\"image_size\":[]}', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `acc_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `official_ID` int(11) UNSIGNED DEFAULT NULL,
  `position_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'role of each user',
  `acc_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'unique username',
  `acc_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'password of your acc',
  `status_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'foreign key of status id for acc_status',
  `acc_created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'account created',
  `device_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`acc_ID`, `official_ID`, `position_ID`, `acc_username`, `acc_password`, `status_ID`, `acc_created`, `device_Id`) VALUES
(1, 9, 3, 'secretary1', '$2y$10$s.9lWFH7ZNdDFbO8BnlwCOeoFOwW38gq.CPG6bYQdFWvOfB022lz.', 1, '2018-04-21 18:47:16', 0),
(4, 5, 2, 'captain', '$2y$10$d7LSXZrDMogh1z/dXgdXeu.XTdViYDAjTogMcXQA323S6.y7PvMSm', 2, '2018-04-29 14:04:18', 0),
(9, 3, 10, 'rhalp10', '$2y$10$s.9lWFH7ZNdDFbO8BnlwCOeoFOwW38gq.CPG6bYQdFWvOfB022lz.', 2, '2018-04-29 13:31:10', 0),
(10, 3, 3, 'asdasdasdasd', '$2y$10$NoOmaRhAbr8qLqH5WGbxSeu.x60Qm.D7A4KcTTd47JVDLZP1ts1D.', 2, '2018-04-29 13:40:43', 0),
(12, 9, 2, 'zxc123', '$2y$10$DivhfMyJEf9uQSWKnphPSOkxmaKBSndifTWNfC/f/OY9H2gSe0rNG', 2, '2018-04-29 12:58:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(5) NOT NULL,
  `level_id` int(5) NOT NULL,
  `label` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `can_upload` int(1) NOT NULL DEFAULT 0,
  `wait_between_downloads` int(11) NOT NULL DEFAULT 0,
  `download_speed` int(11) NOT NULL DEFAULT 0,
  `max_storage_bytes` bigint(18) NOT NULL DEFAULT 0,
  `show_site_adverts` int(1) NOT NULL DEFAULT 0,
  `show_upgrade_screen` int(1) NOT NULL DEFAULT 0,
  `days_to_keep_inactive_files` int(11) NOT NULL DEFAULT 360,
  `days_to_keep_trashed_files` int(11) NOT NULL DEFAULT 0,
  `concurrent_uploads` int(11) NOT NULL DEFAULT 50,
  `concurrent_downloads` int(11) NOT NULL DEFAULT 5,
  `downloads_per_24_hours` int(11) NOT NULL DEFAULT 0,
  `max_download_filesize_allowed` bigint(18) NOT NULL DEFAULT 0,
  `can_remote_download` int(1) NOT NULL DEFAULT 1,
  `max_remote_download_urls` int(11) NOT NULL DEFAULT 0,
  `max_upload_size` bigint(18) NOT NULL DEFAULT 0,
  `max_uploads_per_day` bigint(18) NOT NULL DEFAULT 0,
  `accepted_file_types` varchar(255) NOT NULL DEFAULT '',
  `blocked_file_types` varchar(255) NOT NULL DEFAULT '',
  `level_type` enum('admin','free','paid','moderator','nonuser') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'free',
  `on_upgrade_page` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level_id`, `label`, `can_upload`, `wait_between_downloads`, `download_speed`, `max_storage_bytes`, `show_site_adverts`, `show_upgrade_screen`, `days_to_keep_inactive_files`, `days_to_keep_trashed_files`, `concurrent_uploads`, `concurrent_downloads`, `downloads_per_24_hours`, `max_download_filesize_allowed`, `can_remote_download`, `max_remote_download_urls`, `max_upload_size`, `max_uploads_per_day`, `accepted_file_types`, `blocked_file_types`, `level_type`, `on_upgrade_page`) VALUES
(1, 1, 'Registered User', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5368709120, 0, '', '', 'free', 0),
(20, 20, 'Admin', 1, 0, 0, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 1, 50, 5368709120, 0, '', '', 'admin', 0),
(112, 0, 'Non User', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, '', '', 'nonuser', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_level_pricing`
--

CREATE TABLE `user_level_pricing` (
  `id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `pricing_label` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `package_pricing_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'period',
  `period` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1M',
  `download_allowance` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `status_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `status_Name` varchar(7) DEFAULT NULL COMMENT 'User Status Detail'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`status_ID`, `status_Name`) VALUES
(1, 'Enable'),
(2, 'Disable');

-- --------------------------------------------------------

--
-- Table structure for table `youth_investment`
--

CREATE TABLE `youth_investment` (
  `youth_id` int(11) NOT NULL,
  `issues` varchar(200) NOT NULL,
  `programs` varchar(200) NOT NULL,
  `result` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `youth_investment`
--

INSERT INTO `youth_investment` (`youth_id`, `issues`, `programs`, `result`, `amount`, `source`, `start`, `end`, `status`, `year`) VALUES
(1, 'hvb', 'kjh', 'h', 12, '', '2018-03-12', '0000-00-00', 'On-Going', '2018'),
(124, '12', '12', '12', 12, '', '0000-00-00', '0000-00-00', 'On-Going', '0000'),
(125, 'mmmmm', 'mmmmm', 'mmmm', 123, '', '2018-03-12', '2018-03-12', 'On-Going', '2018'),
(126, 'kahit na ano', 'skahdajkh', 'tuli', 1237, '', '2018-03-29', '2018-03-31', 'On-Going', '2018'),
(127, 'hnghn', 'ghnghng', 'hnghng', 0, '', '0989-08-09', '0898-09-08', 'On-Going', '2018'),
(128, 'asd', 'asd', 'asd', 123, '', '2020-02-05', '2020-11-29', 'On-Going', '2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`announceId`);

--
-- Indexes for table `annual_project`
--
ALTER TABLE `annual_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `anouncement_raw`
--
ALTER TABLE `anouncement_raw`
  ADD PRIMARY KEY (`ann_ID`),
  ADD KEY `receiver_ID` (`receiver_ID`);

--
-- Indexes for table `apiv2_access_token`
--
ALTER TABLE `apiv2_access_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token` (`access_token`),
  ADD KEY `date_last_used` (`date_last_used`);

--
-- Indexes for table `apiv2_api_key`
--
ALTER TABLE `apiv2_api_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keys_public_secret` (`key_public`,`key_secret`) USING BTREE,
  ADD KEY `date_created` (`date_created`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `background_task`
--
ALTER TABLE `background_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task` (`task`);

--
-- Indexes for table `background_task_log`
--
ALTER TABLE `background_task_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `start_time` (`start_time`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `server_name` (`server_name`);

--
-- Indexes for table `banned_files`
--
ALTER TABLE `banned_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fileHash` (`fileHash`);

--
-- Indexes for table `banned_ip`
--
ALTER TABLE `banned_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipAddress` (`ipAddress`);

--
-- Indexes for table `blotter_complain_defendant`
--
ALTER TABLE `blotter_complain_defendant`
  ADD PRIMARY KEY (`cdef_ID`),
  ADD KEY `complainantType_ID` (`complainantType_ID`),
  ADD KEY `blotter_ID` (`blotter_ID`);

--
-- Indexes for table `blotter_incident_witnesses`
--
ALTER TABLE `blotter_incident_witnesses`
  ADD PRIMARY KEY (`witness_ID`),
  ADD KEY `blotter_ID` (`blotter_ID`),
  ADD KEY `complainantType_ID` (`complainantType_ID`);

--
-- Indexes for table `brgy_address_info`
--
ALTER TABLE `brgy_address_info`
  ADD PRIMARY KEY (`citymun_Name`);

--
-- Indexes for table `brgy_official_detail`
--
ALTER TABLE `brgy_official_detail`
  ADD PRIMARY KEY (`official_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `commitee_assignID` (`commitee_assignID`);

--
-- Indexes for table `brgy_official_position`
--
ALTER TABLE `brgy_official_position`
  ADD UNIQUE KEY `UK_brgy_official_position_posi` (`position_ID`),
  ADD KEY `official_ID` (`official_ID`),
  ADD KEY `position_ID` (`position_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `res_ID_2` (`res_ID`);

--
-- Indexes for table `country_info`
--
ALTER TABLE `country_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iso_alpha2` (`iso_alpha2`),
  ADD KEY `iso_alpha3` (`iso_alpha3`);

--
-- Indexes for table `cross_site_action`
--
ALTER TABLE `cross_site_action`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key1` (`key1`,`key2`),
  ADD KEY `date_added` (`date_added`);

--
-- Indexes for table `device_setting`
--
ALTER TABLE `device_setting`
  ADD PRIMARY KEY (`device_ID`);

--
-- Indexes for table `download_page`
--
ALTER TABLE `download_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level_id` (`user_level_id`);

--
-- Indexes for table `download_token`
--
ALTER TABLE `download_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `expiry` (`expiry`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `download_tracker`
--
ALTER TABLE `download_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `date_updated` (`date_updated`),
  ADD KEY `status` (`status`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `download_username` (`download_username`),
  ADD KEY `date_started` (`date_started`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hash` (`unique_hash`),
  ADD KEY `shortUrl` (`shortUrl`),
  ADD KEY `fileSize` (`fileSize`),
  ADD KEY `visits` (`visits`),
  ADD KEY `lastAccessed` (`lastAccessed`),
  ADD KEY `extension` (`extension`),
  ADD KEY `originalFilename` (`originalFilename`),
  ADD KEY `userId` (`userId`),
  ADD KEY `uploadedDate` (`uploadedDate`),
  ADD KEY `serverId` (`serverId`),
  ADD KEY `fileHash` (`fileHash`),
  ADD KEY `originalFileHash` (`originalFileHash`),
  ADD KEY `linkedFileId` (`linkedFileId`),
  ADD KEY `statusId` (`statusId`),
  ADD KEY `uploadedUserId` (`uploadedUserId`),
  ADD KEY `keywords` (`keywords`),
  ADD KEY `status` (`status`),
  ADD KEY `uploadedIP` (`uploadedIP`);

--
-- Indexes for table `file_action`
--
ALTER TABLE `file_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_action` (`file_action`),
  ADD KEY `status` (`status`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `server_id` (`server_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `action_date` (`action_date`);

--
-- Indexes for table `file_block_hash`
--
ALTER TABLE `file_block_hash`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_hash` (`file_hash`);

--
-- Indexes for table `file_folder`
--
ALTER TABLE `file_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `urlHash` (`urlHash`),
  ADD KEY `userId` (`userId`),
  ADD KEY `parentId` (`parentId`),
  ADD KEY `totalSize` (`totalSize`),
  ADD KEY `isPublic` (`isPublic`),
  ADD KEY `folderName` (`folderName`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `file_folder_share`
--
ALTER TABLE `file_folder_share`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_key` (`access_key`),
  ADD KEY `folder_id` (`created_by_user_id`),
  ADD KEY `is_global` (`is_global`);

--
-- Indexes for table `file_folder_share_item`
--
ALTER TABLE `file_folder_share_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_folder_share_id` (`file_folder_share_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Indexes for table `file_report`
--
ALTER TABLE `file_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `file_server`
--
ALTER TABLE `file_server`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statusId` (`statusId`),
  ADD KEY `totalFiles` (`totalFiles`);
ALTER TABLE `file_server` ADD FULLTEXT KEY `geoUploadCountries` (`geoUploadCountries`);

--
-- Indexes for table `file_server_container`
--
ALTER TABLE `file_server_container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_server_status`
--
ALTER TABLE `file_server_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_status`
--
ALTER TABLE `file_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_clearance_list`
--
ALTER TABLE `finance_clearance_list`
  ADD PRIMARY KEY (`clearance_id`),
  ADD UNIQUE KEY `clearance_form` (`clearance_form`);

--
-- Indexes for table `finance_clearance_set`
--
ALTER TABLE `finance_clearance_set`
  ADD PRIMARY KEY (`purpose_id`),
  ADD KEY `clearance_id` (`clearance_id`);

--
-- Indexes for table `finance_collection`
--
ALTER TABLE `finance_collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `finance_disbursement`
--
ALTER TABLE `finance_disbursement`
  ADD PRIMARY KEY (`disbursement_id`);

--
-- Indexes for table `finance_fundoperation_income`
--
ALTER TABLE `finance_fundoperation_income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `finance_fundoperation_incomeset`
--
ALTER TABLE `finance_fundoperation_incomeset`
  ADD PRIMARY KEY (`income_setid`),
  ADD KEY `income_id` (`income_id`);

--
-- Indexes for table `finance_fundoperation_mooe`
--
ALTER TABLE `finance_fundoperation_mooe`
  ADD PRIMARY KEY (`mooe_id`),
  ADD UNIQUE KEY `mooe_code` (`mooe_code`);

--
-- Indexes for table `finance_fundoperation_mooeset`
--
ALTER TABLE `finance_fundoperation_mooeset`
  ADD PRIMARY KEY (`mooe_setid`),
  ADD KEY `mooe_id` (`mooe_id`);

--
-- Indexes for table `finance_fundoperation_noe`
--
ALTER TABLE `finance_fundoperation_noe`
  ADD PRIMARY KEY (`noe_id`),
  ADD UNIQUE KEY `noe_code` (`noe_code`);

--
-- Indexes for table `finance_fundoperation_noeset`
--
ALTER TABLE `finance_fundoperation_noeset`
  ADD PRIMARY KEY (`noe_setid`),
  ADD KEY `noe_id` (`noe_id`);

--
-- Indexes for table `finance_fundoperation_ps`
--
ALTER TABLE `finance_fundoperation_ps`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `service_code` (`service_code`);

--
-- Indexes for table `finance_fundoperation_psset`
--
ALTER TABLE `finance_fundoperation_psset`
  ADD PRIMARY KEY (`service_setid`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `service_id_2` (`service_id`);

--
-- Indexes for table `form_release`
--
ALTER TABLE `form_release`
  ADD PRIMARY KEY (`release_ID`),
  ADD KEY `form_ID` (`form_ID`);

--
-- Indexes for table `form_request`
--
ALTER TABLE `form_request`
  ADD PRIMARY KEY (`res_ID`),
  ADD UNIQUE KEY `UK_form_request_purpose_ID` (`purpose_ID`);

--
-- Indexes for table `internal_notification`
--
ALTER TABLE `internal_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `inventory_drugs`
--
ALTER TABLE `inventory_drugs`
  ADD PRIMARY KEY (`drug_ID`),
  ADD KEY `unit_ID` (`unit_ID`);

--
-- Indexes for table `inventory_drugs_release`
--
ALTER TABLE `inventory_drugs_release`
  ADD PRIMARY KEY (`drgrelease_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `drug_ID` (`drug_ID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isLocked` (`isLocked`),
  ADD KEY `isActive` (`isActive`);

--
-- Indexes for table `language_content`
--
ALTER TABLE `language_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languageKeyId` (`languageKeyId`),
  ADD KEY `languageId` (`languageId`);

--
-- Indexes for table `language_key`
--
ALTER TABLE `language_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languageKey` (`languageKey`);

--
-- Indexes for table `login_failure`
--
ALTER TABLE `login_failure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `date_added` (`date_added`);

--
-- Indexes for table `login_success`
--
ALTER TABLE `login_success`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `date_added` (`date_added`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `log_resident_sms_send`
--
ALTER TABLE `log_resident_sms_send`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `status_ID` (`receiver_ID`),
  ADD KEY `ann_ID` (`ann_ID`),
  ADD KEY `contact_ID` (`contact_ID`);

--
-- Indexes for table `log_visit`
--
ALTER TABLE `log_visit`
  ADD PRIMARY KEY (`visit_ID`),
  ADD KEY `suffix_ID` (`suffix_ID`),
  ADD KEY `purpose_ID` (`purpose_ID`);

--
-- Indexes for table `ms_blotter_type`
--
ALTER TABLE `ms_blotter_type`
  ADD PRIMARY KEY (`blotterType_id`);

--
-- Indexes for table `ms_incident`
--
ALTER TABLE `ms_incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `ms_incident_offender`
--
ALTER TABLE `ms_incident_offender`
  ADD PRIMARY KEY (`offender_id`);

--
-- Indexes for table `ms_reporting_person`
--
ALTER TABLE `ms_reporting_person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_log`
--
ALTER TABLE `payment_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `description` (`description`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `plugin`
--
ALTER TABLE `plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_order` (`load_order`),
  ADD KEY `is_installed` (`is_installed`);

--
-- Indexes for table `plugin_filepreviewer_meta`
--
ALTER TABLE `plugin_filepreviewer_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `image_bg_color` (`image_bg_color`);
ALTER TABLE `plugin_filepreviewer_meta` ADD FULLTEXT KEY `image_colors` (`image_colors`);

--
-- Indexes for table `plugin_filepreviewer_watermark`
--
ALTER TABLE `plugin_filepreviewer_watermark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium_order`
--
ALTER TABLE `premium_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_address`
--
ALTER TABLE `ref_address`
  ADD PRIMARY KEY (`addressType_ID`);

--
-- Indexes for table `ref_blotter`
--
ALTER TABLE `ref_blotter`
  ADD PRIMARY KEY (`blotterType_ID`);

--
-- Indexes for table `ref_blotter_status`
--
ALTER TABLE `ref_blotter_status`
  ADD PRIMARY KEY (`bStat_ID`);

--
-- Indexes for table `ref_brgy`
--
ALTER TABLE `ref_brgy`
  ADD PRIMARY KEY (`brgy_ID`);

--
-- Indexes for table `ref_brgy_info`
--
ALTER TABLE `ref_brgy_info`
  ADD PRIMARY KEY (`brgyInfo_ID`);

--
-- Indexes for table `ref_citymun`
--
ALTER TABLE `ref_citymun`
  ADD PRIMARY KEY (`citymun_ID`);

--
-- Indexes for table `ref_complainant`
--
ALTER TABLE `ref_complainant`
  ADD PRIMARY KEY (`complainantType_ID`);

--
-- Indexes for table `ref_contact`
--
ALTER TABLE `ref_contact`
  ADD PRIMARY KEY (`contactType_ID`);

--
-- Indexes for table `ref_country`
--
ALTER TABLE `ref_country`
  ADD PRIMARY KEY (`country_ID`),
  ADD UNIQUE KEY `country_iso` (`country_iso`),
  ADD UNIQUE KEY `country_numcode` (`country_numcode`);

--
-- Indexes for table `ref_discount`
--
ALTER TABLE `ref_discount`
  ADD PRIMARY KEY (`discount_ID`);

--
-- Indexes for table `ref_dispute`
--
ALTER TABLE `ref_dispute`
  ADD PRIMARY KEY (`desputeType_ID`),
  ADD UNIQUE KEY `desputeType_Name` (`desputeType_Name`);

--
-- Indexes for table `ref_forms`
--
ALTER TABLE `ref_forms`
  ADD PRIMARY KEY (`form_ID`);

--
-- Indexes for table `ref_gender`
--
ALTER TABLE `ref_gender`
  ADD PRIMARY KEY (`gender_ID`);

--
-- Indexes for table `ref_logo`
--
ALTER TABLE `ref_logo`
  ADD PRIMARY KEY (`logo_ID`),
  ADD KEY `brgyInfo_ID` (`brgyInfo_ID`);

--
-- Indexes for table `ref_log_action`
--
ALTER TABLE `ref_log_action`
  ADD PRIMARY KEY (`action_ID`),
  ADD UNIQUE KEY `action_Name` (`action_Name`);

--
-- Indexes for table `ref_manilabay`
--
ALTER TABLE `ref_manilabay`
  ADD PRIMARY KEY (`mb_ID`);

--
-- Indexes for table `ref_marital_status`
--
ALTER TABLE `ref_marital_status`
  ADD PRIMARY KEY (`marital_ID`);

--
-- Indexes for table `ref_network`
--
ALTER TABLE `ref_network`
  ADD PRIMARY KEY (`network_ID`),
  ADD UNIQUE KEY `network_Name` (`network_Name`);

--
-- Indexes for table `ref_occupant`
--
ALTER TABLE `ref_occupant`
  ADD PRIMARY KEY (`occupant_ID`);

--
-- Indexes for table `ref_occupation`
--
ALTER TABLE `ref_occupation`
  ADD PRIMARY KEY (`occupation_ID`),
  ADD UNIQUE KEY `occupation_Name` (`occupation_Name`);

--
-- Indexes for table `ref_occupation_status`
--
ALTER TABLE `ref_occupation_status`
  ADD PRIMARY KEY (`occuStat_ID`),
  ADD UNIQUE KEY `occuStat_Name` (`occuStat_Name`);

--
-- Indexes for table `ref_position`
--
ALTER TABLE `ref_position`
  ADD PRIMARY KEY (`position_ID`),
  ADD UNIQUE KEY `position_Name` (`position_Name`);

--
-- Indexes for table `ref_province`
--
ALTER TABLE `ref_province`
  ADD PRIMARY KEY (`province_ID`);

--
-- Indexes for table `ref_purok`
--
ALTER TABLE `ref_purok`
  ADD PRIMARY KEY (`purok_ID`);

--
-- Indexes for table `ref_purpose`
--
ALTER TABLE `ref_purpose`
  ADD PRIMARY KEY (`purpose_ID`);

--
-- Indexes for table `ref_receiver`
--
ALTER TABLE `ref_receiver`
  ADD PRIMARY KEY (`receiver_ID`),
  ADD UNIQUE KEY `status_Name` (`receiver_Name`);

--
-- Indexes for table `ref_region`
--
ALTER TABLE `ref_region`
  ADD PRIMARY KEY (`region_ID`),
  ADD UNIQUE KEY `region_Code` (`region_Code`);

--
-- Indexes for table `ref_relation`
--
ALTER TABLE `ref_relation`
  ADD PRIMARY KEY (`relType_ID`),
  ADD UNIQUE KEY `relType_Name` (`relType_Name`);

--
-- Indexes for table `ref_religion`
--
ALTER TABLE `ref_religion`
  ADD PRIMARY KEY (`religion_ID`);

--
-- Indexes for table `ref_report`
--
ALTER TABLE `ref_report`
  ADD PRIMARY KEY (`report_ID`);

--
-- Indexes for table `ref_school_level`
--
ALTER TABLE `ref_school_level`
  ADD PRIMARY KEY (`slvl_ID`);

--
-- Indexes for table `ref_suffixname`
--
ALTER TABLE `ref_suffixname`
  ADD PRIMARY KEY (`suffix_ID`);

--
-- Indexes for table `ref_unit`
--
ALTER TABLE `ref_unit`
  ADD PRIMARY KEY (`unit_ID`);

--
-- Indexes for table `ref_violation`
--
ALTER TABLE `ref_violation`
  ADD PRIMARY KEY (`violation_ID`);

--
-- Indexes for table `remote_url_download_queue`
--
ALTER TABLE `remote_url_download_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_accomplishsment`
--
ALTER TABLE `report_accomplishsment`
  ADD PRIMARY KEY (`accom_ID`);

--
-- Indexes for table `report_attendancemonitoring`
--
ALTER TABLE `report_attendancemonitoring`
  ADD PRIMARY KEY (`attendancemonitoring_id`);

--
-- Indexes for table `report_cov`
--
ALTER TABLE `report_cov`
  ADD PRIMARY KEY (`cov_ID`);

--
-- Indexes for table `report_data`
--
ALTER TABLE `report_data`
  ADD PRIMARY KEY (`reportdata_id`),
  ADD KEY `position_ID` (`position_ID`),
  ADD KEY `report_ID` (`report_ID`);

--
-- Indexes for table `report_list`
--
ALTER TABLE `report_list`
  ADD KEY `report_ID` (`report_ID`),
  ADD KEY `position_ID` (`position_ID`);

--
-- Indexes for table `request_forms`
--
ALTER TABLE `request_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_address`
--
ALTER TABLE `resident_address`
  ADD PRIMARY KEY (`address_ID`),
  ADD UNIQUE KEY `UK_resident_address_res_ID` (`res_ID`),
  ADD KEY `country_ID` (`country_ID`),
  ADD KEY `region_ID` (`region_ID`),
  ADD KEY `province_ID` (`province_ID`),
  ADD KEY `citymun_ID` (`citymun_ID`),
  ADD KEY `brgy_ID` (`brgy_ID`),
  ADD KEY `purok_ID` (`purok_ID`),
  ADD KEY `addressType_ID` (`addressType_ID`);

--
-- Indexes for table `resident_contact`
--
ALTER TABLE `resident_contact`
  ADD PRIMARY KEY (`contact_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `country_ID` (`country_ID`),
  ADD KEY `contactType_ID` (`contactType_ID`),
  ADD KEY `network_ID` (`network_ID`);

--
-- Indexes for table `resident_death`
--
ALTER TABLE `resident_death`
  ADD PRIMARY KEY (`death_ID`),
  ADD KEY `res_ID` (`res_ID`);

--
-- Indexes for table `resident_detail`
--
ALTER TABLE `resident_detail`
  ADD PRIMARY KEY (`res_ID`),
  ADD KEY `gender_ID` (`gender_ID`),
  ADD KEY `suffix_ID` (`suffix_ID`),
  ADD KEY `marital_ID` (`marital_ID`),
  ADD KEY `country_ID` (`country_ID`),
  ADD KEY `occupation_ID` (`occupation_ID`),
  ADD KEY `occuStat_ID` (`occuStat_ID`),
  ADD KEY `religion_ID` (`religion_ID`),
  ADD KEY `occupant_ID` (`occupant_ID`),
  ADD KEY `position_ID` (`position_ID`);

--
-- Indexes for table `resident_education_attainment`
--
ALTER TABLE `resident_education_attainment`
  ADD PRIMARY KEY (`rea_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `degree_ID` (`rea_YearStart`),
  ADD KEY `slvl_ID` (`slvl_ID`);

--
-- Indexes for table `resident_email`
--
ALTER TABLE `resident_email`
  ADD PRIMARY KEY (`email_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `res_ID` (`res_ID`);

--
-- Indexes for table `resident_family`
--
ALTER TABLE `resident_family`
  ADD PRIMARY KEY (`relation_ID`),
  ADD KEY `res_ID` (`res_ID`),
  ADD KEY `p_ID` (`family_res_ID`),
  ADD KEY `relType_ID` (`relType_ID`);

--
-- Indexes for table `resident_newborn`
--
ALTER TABLE `resident_newborn`
  ADD PRIMARY KEY (`newborn_ID`),
  ADD KEY `res_ID` (`res_ID`) USING BTREE;

--
-- Indexes for table `resident_pregnant`
--
ALTER TABLE `resident_pregnant`
  ADD PRIMARY KEY (`preg_ID`),
  ADD KEY `res_ID` (`res_ID`);

--
-- Indexes for table `resident_vaccinated`
--
ALTER TABLE `resident_vaccinated`
  ADD PRIMARY KEY (`vac_ID`),
  ADD KEY `res_ID` (`res_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `updated_on` (`updated_on`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_key` (`config_key`),
  ADD KEY `config_group` (`config_group`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_category`
--
ALTER TABLE `sms_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_projects`
--
ALTER TABLE `special_projects`
  ADD PRIMARY KEY (`proj_ID`);

--
-- Indexes for table `special_projects_material`
--
ALTER TABLE `special_projects_material`
  ADD PRIMARY KEY (`material_ID`),
  ADD KEY `proj_ID` (`proj_ID`),
  ADD KEY `unit_ID` (`unit_ID`);

--
-- Indexes for table `special_projects_milestone`
--
ALTER TABLE `special_projects_milestone`
  ADD PRIMARY KEY (`milestone_ID`),
  ADD KEY `proj_ID` (`proj_ID`),
  ADD KEY `spStatus_ID` (`spStatus_ID`);

--
-- Indexes for table `special_projects_report`
--
ALTER TABLE `special_projects_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_projects_report2`
--
ALTER TABLE `special_projects_report2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_projects_status`
--
ALTER TABLE `special_projects_status`
  ADD PRIMARY KEY (`spStatus_ID`),
  ADD UNIQUE KEY `spStatus_Name` (`spStatus_Name`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `download_date` (`download_date`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_installed` (`is_installed`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `datecreated` (`datecreated`),
  ADD KEY `username_2` (`username`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `level_id_2` (`level_id`),
  ADD KEY `level_id_3` (`level_id`),
  ADD KEY `apikey` (`apikey`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`acc_ID`),
  ADD UNIQUE KEY `acc_username` (`acc_username`),
  ADD KEY `position_ID` (`position_ID`),
  ADD KEY `official_ID` (`official_ID`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `user_level_pricing`
--
ALTER TABLE `user_level_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`status_ID`);

--
-- Indexes for table `youth_investment`
--
ALTER TABLE `youth_investment`
  ADD PRIMARY KEY (`youth_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `announceId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `annual_project`
--
ALTER TABLE `annual_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `anouncement_raw`
--
ALTER TABLE `anouncement_raw`
  MODIFY `ann_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apiv2_access_token`
--
ALTER TABLE `apiv2_access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiv2_api_key`
--
ALTER TABLE `apiv2_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `background_task`
--
ALTER TABLE `background_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `background_task_log`
--
ALTER TABLE `background_task_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_files`
--
ALTER TABLE `banned_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_ip`
--
ALTER TABLE `banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blotter_complain_defendant`
--
ALTER TABLE `blotter_complain_defendant`
  MODIFY `cdef_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blotter_incident_witnesses`
--
ALTER TABLE `blotter_incident_witnesses`
  MODIFY `witness_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brgy_official_detail`
--
ALTER TABLE `brgy_official_detail`
  MODIFY `official_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `country_info`
--
ALTER TABLE `country_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `cross_site_action`
--
ALTER TABLE `cross_site_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `download_page`
--
ALTER TABLE `download_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `download_token`
--
ALTER TABLE `download_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_tracker`
--
ALTER TABLE `download_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_action`
--
ALTER TABLE `file_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_block_hash`
--
ALTER TABLE `file_block_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_folder`
--
ALTER TABLE `file_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_folder_share`
--
ALTER TABLE `file_folder_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_folder_share_item`
--
ALTER TABLE `file_folder_share_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_report`
--
ALTER TABLE `file_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `file_server`
--
ALTER TABLE `file_server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `file_server_container`
--
ALTER TABLE `file_server_container`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `file_server_status`
--
ALTER TABLE `file_server_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file_status`
--
ALTER TABLE `file_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `finance_clearance_list`
--
ALTER TABLE `finance_clearance_list`
  MODIFY `clearance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `finance_clearance_set`
--
ALTER TABLE `finance_clearance_set`
  MODIFY `purpose_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `finance_collection`
--
ALTER TABLE `finance_collection`
  MODIFY `collection_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance_disbursement`
--
ALTER TABLE `finance_disbursement`
  MODIFY `disbursement_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance_fundoperation_income`
--
ALTER TABLE `finance_fundoperation_income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `finance_fundoperation_incomeset`
--
ALTER TABLE `finance_fundoperation_incomeset`
  MODIFY `income_setid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `finance_fundoperation_mooe`
--
ALTER TABLE `finance_fundoperation_mooe`
  MODIFY `mooe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance_fundoperation_mooeset`
--
ALTER TABLE `finance_fundoperation_mooeset`
  MODIFY `mooe_setid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `finance_fundoperation_noe`
--
ALTER TABLE `finance_fundoperation_noe`
  MODIFY `noe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `finance_fundoperation_noeset`
--
ALTER TABLE `finance_fundoperation_noeset`
  MODIFY `noe_setid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `finance_fundoperation_ps`
--
ALTER TABLE `finance_fundoperation_ps`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `finance_fundoperation_psset`
--
ALTER TABLE `finance_fundoperation_psset`
  MODIFY `service_setid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `form_release`
--
ALTER TABLE `form_release`
  MODIFY `release_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `form_request`
--
ALTER TABLE `form_request`
  MODIFY `res_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `internal_notification`
--
ALTER TABLE `internal_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_drugs`
--
ALTER TABLE `inventory_drugs`
  MODIFY `drug_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inventory_drugs_release`
--
ALTER TABLE `inventory_drugs_release`
  MODIFY `drgrelease_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `language_content`
--
ALTER TABLE `language_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2316;

--
-- AUTO_INCREMENT for table `language_key`
--
ALTER TABLE `language_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20896;

--
-- AUTO_INCREMENT for table `login_failure`
--
ALTER TABLE `login_failure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `login_success`
--
ALTER TABLE `login_success`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_resident_sms_send`
--
ALTER TABLE `log_resident_sms_send`
  MODIFY `send_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_visit`
--
ALTER TABLE `log_visit`
  MODIFY `visit_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ms_blotter_type`
--
ALTER TABLE `ms_blotter_type`
  MODIFY `blotterType_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ms_incident`
--
ALTER TABLE `ms_incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_incident_offender`
--
ALTER TABLE `ms_incident_offender`
  MODIFY `offender_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_reporting_person`
--
ALTER TABLE `ms_reporting_person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_log`
--
ALTER TABLE `payment_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin`
--
ALTER TABLE `plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `plugin_filepreviewer_meta`
--
ALTER TABLE `plugin_filepreviewer_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugin_filepreviewer_watermark`
--
ALTER TABLE `plugin_filepreviewer_watermark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `premium_order`
--
ALTER TABLE `premium_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_manilabay`
--
ALTER TABLE `ref_manilabay`
  MODIFY `mb_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_suffixname`
--
ALTER TABLE `ref_suffixname`
  MODIFY `suffix_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `remote_url_download_queue`
--
ALTER TABLE `remote_url_download_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `report_accomplishsment`
--
ALTER TABLE `report_accomplishsment`
  MODIFY `accom_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report_attendancemonitoring`
--
ALTER TABLE `report_attendancemonitoring`
  MODIFY `attendancemonitoring_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `report_cov`
--
ALTER TABLE `report_cov`
  MODIFY `cov_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_forms`
--
ALTER TABLE `request_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resident_death`
--
ALTER TABLE `resident_death`
  MODIFY `death_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_detail`
--
ALTER TABLE `resident_detail`
  MODIFY `res_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resident_newborn`
--
ALTER TABLE `resident_newborn`
  MODIFY `newborn_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_pregnant`
--
ALTER TABLE `resident_pregnant`
  MODIFY `preg_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resident_vaccinated`
--
ALTER TABLE `resident_vaccinated`
  MODIFY `vac_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `sms_category`
--
ALTER TABLE `sms_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `acc_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user_level_pricing`
--
ALTER TABLE `user_level_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `youth_investment`
--
ALTER TABLE `youth_investment`
  MODIFY `youth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ref_brgy_info`
--
ALTER TABLE `ref_brgy_info`
  ADD CONSTRAINT `FK_ref_brgy_info` FOREIGN KEY (`brgyInfo_ID`) REFERENCES `ref_logo` (`logo_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;