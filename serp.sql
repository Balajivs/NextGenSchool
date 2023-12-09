-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for serp
CREATE DATABASE IF NOT EXISTS `serp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `serp`;

-- Dumping structure for table serp.class_division_mst
CREATE TABLE IF NOT EXISTS `class_division_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_mst_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbmnwlhk1b81l3be9460s9cu7x` (`class_mst_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.class_division_mst: 0 rows
/*!40000 ALTER TABLE `class_division_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_division_mst` ENABLE KEYS */;

-- Dumping structure for table serp.class_mst
CREATE TABLE IF NOT EXISTS `class_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ne8pql9ur1nfs3hgj3drx01h` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.class_mst: 0 rows
/*!40000 ALTER TABLE `class_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_mst` ENABLE KEYS */;

-- Dumping structure for table serp.default_selection
CREATE TABLE IF NOT EXISTS `default_selection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birth_country` varchar(255) DEFAULT NULL,
  `birth_state` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  `updated_id` bigint(20) DEFAULT NULL,
  `education_year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa9g851jtvwc51iwrkuhxjbmud` (`created_id`),
  KEY `FK6tek29iev4h5fi8aidrf6kgun` (`school_id`),
  KEY `FKlnhghd13mgwsjh3ag6qdyvr69` (`updated_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.default_selection: 1 rows
/*!40000 ALTER TABLE `default_selection` DISABLE KEYS */;
INSERT INTO `default_selection` (`id`, `birth_country`, `birth_state`, `book_no`, `create_date`, `modify_date`, `mother_tongue`, `nationality`, `created_id`, `school_id`, `updated_id`, `education_year`) VALUES
	(1, 'भारत', 'महाराष्ट्र', '1', '2021-02-23 17:13:32', '2021-03-13 12:42:26', 'मराठी', 'भारतीय', 1, 1, 4, '2013-14');
/*!40000 ALTER TABLE `default_selection` ENABLE KEYS */;

-- Dumping structure for table serp.educational_year_mst
CREATE TABLE IF NOT EXISTS `educational_year_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `current_year` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4uue1p2w8m46xw88ha50o1399` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.educational_year_mst: 2 rows
/*!40000 ALTER TABLE `educational_year_mst` DISABLE KEYS */;
INSERT INTO `educational_year_mst` (`id`, `active`, `current_year`, `description`, `school_id`) VALUES
	(1, b'1', b'1', '2020-2021', 1);
INSERT INTO `educational_year_mst` (`id`, `active`, `current_year`, `description`, `school_id`) VALUES
	(2, b'1', b'0', '1990-91', 1);
/*!40000 ALTER TABLE `educational_year_mst` ENABLE KEYS */;

-- Dumping structure for table serp.holiday_mst
CREATE TABLE IF NOT EXISTS `holiday_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `educational_year_mst_id` bigint(20) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrulccre07tvunddt1f2geyjn3` (`educational_year_mst_id`),
  KEY `FKakj4395gouk87es75q61go6s` (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.holiday_mst: 0 rows
/*!40000 ALTER TABLE `holiday_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday_mst` ENABLE KEYS */;

-- Dumping structure for table serp.miscellaneous_mst
CREATE TABLE IF NOT EXISTS `miscellaneous_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.miscellaneous_mst: 0 rows
/*!40000 ALTER TABLE `miscellaneous_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscellaneous_mst` ENABLE KEYS */;

-- Dumping structure for table serp.pravesh_nirgam
CREATE TABLE IF NOT EXISTS `pravesh_nirgam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar_id` varchar(255) DEFAULT NULL,
  `abhyas_pragati` varchar(255) DEFAULT NULL,
  `birth_country` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_district` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_state` varchar(255) DEFAULT NULL,
  `birth_tahshil` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `bpl` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `cast_category` varchar(255) DEFAULT NULL,
  `current_div` varchar(255) DEFAULT NULL,
  `current_std` varchar(255) DEFAULT NULL,
  `dakhala_place` varchar(255) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `entry_std` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lc_date` datetime DEFAULT NULL,
  `lc_receipt_date_parent` datetime DEFAULT NULL,
  `lc_school_date` datetime DEFAULT NULL,
  `lc_sign_parent` varchar(255) DEFAULT NULL,
  `lc_sign_varified_parent` varchar(255) DEFAULT NULL,
  `lc_times` varchar(255) DEFAULT NULL,
  `leave_std` varchar(255) DEFAULT NULL,
  `leave_std_date` datetime DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `minority` varchar(255) DEFAULT NULL,
  `mobile_father` varchar(255) DEFAULT NULL,
  `mobile_mother` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `permenent_address` varchar(255) DEFAULT NULL,
  `prev_school_name` varchar(255) DEFAULT NULL,
  `prev_school_std` varchar(255) DEFAULT NULL,
  `prev_std` varchar(255) DEFAULT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `s2g_school` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `sub_cast` varchar(255) DEFAULT NULL,
  `vartnuk_lc_cause` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `lc_cause` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `vartnuk` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `leaving_certi_ficate_printed` varchar(255) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  `updated_id` bigint(20) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `education_year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbejjf4pksfxm9scro8qxl0p9c` (`school_id`),
  KEY `FKflgxj66dyq3leg1dh77fl5rfx` (`created_id`),
  KEY `FKkc54laisele5gv5596nhdamrx` (`updated_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.pravesh_nirgam: 26 rows
/*!40000 ALTER TABLE `pravesh_nirgam` DISABLE KEYS */;
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(1, '', NULL, 'भारत', '1994-06-11 05:30:00', 'नांदेड', 'बाऱ्हाळी', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'महार', NULL, NULL, NULL, NULL, '2019-03-27 05:30:00', NULL, 'विकास', NULL, 'कांबळे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'नामदेव', NULL, NULL, NULL, 'विमलबाई', 'मराठी', 'भारतीय', NULL, 'नरसा माता माध्यमिक आश्रमशाळा नावंदी ता.उदगीर', '10 वी', NULL, 5239, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 10:40:09', '2021-03-13 21:14:48', NULL, 4, 1, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(2, '', NULL, 'भारत', '1996-06-11 05:30:00', 'नांदेड ', 'बोळका', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'यलम', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी विज्ञान', 'पुजाताई', NULL, 'नलाबले', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'पंढरीनाथ ', NULL, NULL, NULL, 'उषाताई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10', NULL, 5240, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:04:01', '2021-03-13 11:22:01', NULL, 4, 4, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(3, '', NULL, 'भारत', '1996-12-27 05:30:00', '', 'अनुपवाडी', 'महाराष्ट्र', '', '1', NULL, 'मा.कोळी ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी विज्ञान', 'शंकर ', NULL, 'निलेवाड ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'अण्णाराव ', NULL, NULL, NULL, 'मंगलाबाई ', 'मराठी', 'भारतीय', NULL, 'श्री पांडुरंग वि. कल्लूर ', '10', NULL, 5241, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:08:59', '2021-03-13 11:22:33', NULL, 4, 4, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(4, '', NULL, 'भारत', '1994-11-26 05:30:00', 'नांदेड ', 'बोळका', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'मराठा ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '१२ वी कला', 'देवानंद ', NULL, 'कदम ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'परमेश्वर', NULL, NULL, NULL, 'मंडोदरी', 'मराठी', 'भारतीय', NULL, 'पोस्ट बेसीक मा. विद्यालय बाऱ्हाळी ', '10', NULL, 5242, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:15:47', '2021-03-13 11:23:07', NULL, 4, 4, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(5, '', NULL, 'भारत', '1997-04-27 05:30:00', '', 'हंगरगा ', 'महाराष्ट्र', '', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी विज्ञान', 'अनिल ', NULL, 'कोळगीरे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विजय ', NULL, NULL, NULL, 'निर्मला ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी ', '10', NULL, 5243, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:21:14', '2021-03-13 11:23:22', NULL, 4, 4, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(6, '', NULL, 'भारत', '1997-08-25 05:30:00', 'नांदेड ', 'मांजरी ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'लिंगकेर', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी विज्ञान', 'काजल ', NULL, 'शिवपूजे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विलास ', NULL, NULL, NULL, 'सरोजा ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5244, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:32:47', '2021-03-13 11:32:47', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(7, '', NULL, 'भारत', '1998-02-01 05:30:00', '', '', 'महाराष्ट्र', '', '1', NULL, 'लिंगायत ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी कला', 'अश्विनी ', NULL, 'बेंम्बरे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'अरविंद ', NULL, NULL, NULL, 'म्हदाबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '', NULL, 5245, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:36:59', '2021-03-13 11:36:59', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(8, '', 'समाधानकारक', 'भारत', '1997-06-02 05:30:00', 'नांदेड', 'सुगाव कॅम्प', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'हटकर', NULL, NULL, NULL, NULL, '2019-06-25 05:30:00', '11 वी विज्ञान', 'पिराजी', NULL, 'फंताडे', '2021-03-13 00:00:00', NULL, NULL, NULL, NULL, NULL, '12 वी विज्ञान', '2021-03-12 00:00:00', 'नामदेव', NULL, NULL, NULL, 'शेषाबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी', '१० वी', NULL, 5246, 'हिंदु', NULL, '', '-', NULL, 1, 'पुढील शिक्षणासाठी', '12 वी उतीर्ण', 'चांगली', '2021-03-13 11:41:08', '2021-03-13 21:13:30', 'Y', 4, 1, '9960801981', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(9, '', NULL, 'भारत', '1994-04-17 05:30:00', 'नांदेड ', 'बोळका ', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'छप्परबंद ', NULL, NULL, NULL, NULL, '2013-06-18 05:30:00', '११ वी विज्ञान', 'अंजूम ', NULL, 'शेख ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'जिलानी ', NULL, NULL, NULL, 'लियाकतबी ', 'मराठी', 'भारतीय', NULL, 'स्व. राजीव गांधी वि.बोळका ', '10 ', NULL, 5247, 'इस्लाम', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:47:07', '2021-03-13 11:47:07', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(10, '', NULL, 'भारत', '1994-04-17 05:30:00', 'नांदेड ', 'सुगाव कॅम्प ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'वारीक न्हावी ', NULL, NULL, NULL, NULL, '2013-06-18 05:30:00', '११ वी कला', 'विक्रम ', NULL, 'श्रीमंगले ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'यशवंत ', NULL, NULL, NULL, 'विमलबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी ', '10 ', NULL, 5248, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:50:44', '2021-03-13 11:50:44', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(11, '', NULL, 'भारत', '1998-03-27 05:30:00', 'नांदेड ', 'बाऱ्हाळी ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'न्हावी ', NULL, NULL, NULL, NULL, '2013-06-18 05:30:00', '११ वी विज्ञान', 'संध्या ', NULL, 'कोतवाले ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'बालाजी ', NULL, NULL, NULL, 'अनिताबाई ', 'मराठी', 'भारतीय', NULL, '', '', NULL, 5249, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:54:03', '2021-03-13 11:54:03', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(12, '', NULL, 'भारत', '1997-06-10 05:30:00', 'नांदेड ', 'निवळी ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'कुंभार ', NULL, NULL, NULL, NULL, '2013-06-18 05:30:00', '११ वी कला', 'रंजना ', NULL, 'बारसोळे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'गंगाधर ', NULL, NULL, NULL, 'सुशीलाबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी ', '10 ', NULL, 5250, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:56:53', '2021-03-13 11:56:53', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(13, '', NULL, 'भारत', '1997-10-07 05:30:00', 'नांदेड ', 'वडगाव ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'छप्परबंद ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'हीना ', NULL, 'सय्यद ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'रज्जाक ', NULL, NULL, NULL, 'घुडमाबी ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5251, 'इस्लाम', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:10:13', '2021-03-13 12:15:45', NULL, 4, 4, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(14, '', NULL, 'भारत', '1997-07-25 05:30:00', 'नांदेड ', 'बोळका ', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'कुंभार', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'सुरेखा ', NULL, 'जोगपोटे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'लक्ष्मण ', NULL, NULL, NULL, 'रतनबाई ', 'मराठी', 'भारतीय', NULL, 'स्व. राजीव गांधी वि. बोळका ', '10 ', NULL, 5252, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:15:12', '2021-03-13 12:15:12', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(15, '', NULL, 'भारत', '1997-11-05 05:30:00', 'नांदेड ', 'वडगाव ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'सुचिता ', NULL, 'देवकत्ते ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'संग्राम ', NULL, NULL, NULL, 'महानंदा ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5253, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:18:46', '2021-03-13 12:18:46', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(16, '', NULL, 'भारत', '1995-05-21 05:30:00', 'नांदेड ', 'तग्याळ ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'सदानंद ', NULL, 'पळते', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'बालाजी ', NULL, NULL, NULL, 'लालूबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5254, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:21:58', '2021-03-13 12:21:58', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(17, '', NULL, 'भारत', '1996-06-25 05:30:00', 'नांदेड ', 'उन्द्री प. मु. ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'लक्ष्मण ', NULL, 'बाजगीरे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'अंकोश ', NULL, NULL, NULL, 'अनुसयाबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5255, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:26:23', '2021-03-13 12:26:23', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(18, '', NULL, 'भारत', '1996-06-25 05:30:00', '', 'वळग ', 'महाराष्ट्र', '', '1', NULL, 'गोहला ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'संदिप ', NULL, 'चेरलापल्ले ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'धोंडीबा ', NULL, NULL, NULL, 'काशीबाई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5256, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:30:20', '2021-03-13 12:30:20', NULL, 4, NULL, '', '2013-14 ');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(19, '', NULL, 'भारत', '1998-01-03 05:30:00', '', 'उन्द्री', 'महाराष्ट्र', '', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '१२ वी विज्ञान', 'महेश', NULL, 'नाईक', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विनायकराव', NULL, NULL, NULL, '', 'मराठी', 'भारतीय', NULL, 'विद्यानिकेतन पब्लिक स्कूल कमळेवाडी', '12', NULL, 5257, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:36:48', '2021-03-13 12:36:48', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(20, '', NULL, 'भारत', '1998-01-03 05:30:00', 'नांदेड', 'सकनुर', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'को. महादेव', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'दिपाली', NULL, 'नागरववाड', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'श्रीराम', NULL, NULL, NULL, 'मंगलबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10', NULL, 5258, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:42:02', '2021-03-13 12:42:02', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(21, '', NULL, 'भारत', '1997-05-11 05:30:00', 'नांदेड', 'सकनूर', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'मराठा', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'पुजा', NULL, 'लामतुरे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'खुषालराव', NULL, NULL, NULL, 'सुंदरबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5259, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:46:17', '2021-03-13 12:46:17', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(22, '', NULL, 'भारत', '1997-07-20 05:30:00', 'नांदेड', 'नवी आबादी सुगाव ', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'लिंगकेर', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'स्वप्नाली', NULL, 'जळकोटे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'माधव', NULL, NULL, NULL, 'महादाबाई', 'मराठी', 'भारतीय', NULL, 'माध्यमिक आ. शाळा. मांजरी ', '10 ', NULL, 5260, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:51:57', '2021-03-13 12:51:57', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(23, '', NULL, 'भारत', '1997-08-12 05:30:00', '', 'वसुर', 'महाराष्ट्र', '', '1', NULL, 'महार', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'सुरेखा ', NULL, 'शिंदे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'बापुराव', NULL, NULL, NULL, 'रसिकाबाई', 'मराठी', 'भारतीय', NULL, 'भारत माता ग्रा. वि. मा. वि. वसुर ', '10 ', NULL, 5261, 'हिंदु', NULL, '', '', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:55:55', '2021-03-13 12:55:55', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(24, '', NULL, 'भारत', '1997-07-25 05:30:00', '', 'वसुर', 'महाराष्ट्र', '', '1', NULL, 'मराठा', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी कला', 'ज्ञानेश्वर', NULL, 'जाधव', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'शैलंद्र', NULL, NULL, NULL, 'सुमनबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5262, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:59:41', '2021-03-13 12:59:41', NULL, 4, NULL, '', '2013-14');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(25, '', NULL, 'भारत', '1991-01-01 05:30:00', 'नांदेड', 'बाऱ्हाळी', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'जंगम', NULL, NULL, NULL, NULL, '2006-06-01 05:30:00', '11 वी विज्ञान', 'शिवशंकर', NULL, 'म्हाडीवाले', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विश्वनाथ', NULL, NULL, NULL, 'शकुंतला', 'मराठी', 'भारतीय', NULL, 'विद्या विकास विद्यालय बाऱ्हाळी', '10 वी', NULL, 5099, 'हिंदु', NULL, '', '', NULL, 1, NULL, NULL, NULL, '2021-03-13 22:04:34', '2021-03-13 22:05:37', NULL, 1, 1, '9960801981', '2005-06');
INSERT INTO `pravesh_nirgam` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `mobile_no`, `education_year`) VALUES
	(26, '२४३२४३२५', 'चांगली', 'भारत', '1990-03-01 05:30:00', 'नांदेड', 'बाऱ्हाळी', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'वाणी', NULL, NULL, NULL, NULL, '2021-03-21 05:30:00', '11 वी विज्ञान', 'बालाजी', NULL, 'समभाळे', '2021-03-21 00:00:00', NULL, NULL, NULL, NULL, NULL, '१२ विज्ञान', '2021-03-21 00:00:00', 'विश्वनाथ', NULL, NULL, NULL, 'सरस्वती', 'मराठी', 'भारतीय', NULL, 'विद्या विकास विद्यालय', '10 वी', NULL, 59999, 'हिंदु', NULL, '२१३२१२', '', NULL, 1, 'पुढील शिक्षणासाठी', '१२ वी उतीर्ण', 'समाधानकारक', '2021-03-21 19:17:04', '2021-03-21 19:28:40', 'Y', 1, 1, '', '2013-14');
/*!40000 ALTER TABLE `pravesh_nirgam` ENABLE KEYS */;

-- Dumping structure for table serp.pravesh_nirgam_history
CREATE TABLE IF NOT EXISTS `pravesh_nirgam_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar_id` varchar(255) DEFAULT NULL,
  `abhyas_pragati` varchar(255) DEFAULT NULL,
  `birth_country` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_district` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_state` varchar(255) DEFAULT NULL,
  `birth_tahshil` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `bpl` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `cast_category` varchar(255) DEFAULT NULL,
  `current_div` varchar(255) DEFAULT NULL,
  `current_std` varchar(255) DEFAULT NULL,
  `dakhala_place` varchar(255) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `entry_std` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lc_date` datetime DEFAULT NULL,
  `lc_receipt_date_parent` datetime DEFAULT NULL,
  `lc_school_date` datetime DEFAULT NULL,
  `lc_sign_parent` varchar(255) DEFAULT NULL,
  `lc_sign_varified_parent` varchar(255) DEFAULT NULL,
  `lc_times` varchar(255) DEFAULT NULL,
  `leave_std` varchar(255) DEFAULT NULL,
  `leave_std_date` datetime DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `minority` varchar(255) DEFAULT NULL,
  `mobile_father` varchar(255) DEFAULT NULL,
  `mobile_mother` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `permenent_address` varchar(255) DEFAULT NULL,
  `prev_school_name` varchar(255) DEFAULT NULL,
  `prev_school_std` varchar(255) DEFAULT NULL,
  `prev_std` varchar(255) DEFAULT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `s2g_school` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `sub_cast` varchar(255) DEFAULT NULL,
  `vartnuk_lc_cause` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `lc_cause` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `vartnuk` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `leaving_certi_ficate_printed` varchar(255) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  `updated_id` bigint(20) DEFAULT NULL,
  `pravesh_nirgam_id` bigint(20) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `education_year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbejjf4pksfxm9scro8qxl0p9c` (`school_id`),
  KEY `FKflgxj66dyq3leg1dh77fl5rfx` (`created_id`),
  KEY `FKkc54laisele5gv5596nhdamrx` (`updated_id`),
  KEY `FKkv06pr2rhyxx7eoqm43r1te86` (`pravesh_nirgam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.pravesh_nirgam_history: 12 rows
/*!40000 ALTER TABLE `pravesh_nirgam_history` DISABLE KEYS */;
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(1, '', NULL, 'भारत', '1994-06-11 05:30:00', 'नांदेड ', 'बाऱ्हाळी ', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'महार ', NULL, NULL, NULL, NULL, '2021-03-13 05:30:00', '११ वी कला', 'विकास ', NULL, 'कांबळे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'नामदेव', NULL, NULL, NULL, 'विमलबाई ', 'मराठी', 'भारतीय', NULL, 'नरसा माता माध्यमिक आश्रमशाळा नावंदी ता.उदगीर ', '10', NULL, 5239, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 10:40:09', '2021-03-13 10:40:09', NULL, 4, NULL, 1, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(2, '', NULL, 'भारत', '1996-06-11 05:30:00', 'नांदेड ', 'बोळका', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'यलम', NULL, NULL, NULL, NULL, '2021-03-13 05:30:00', '११ वी विज्ञान', 'पुजाताई', NULL, 'नलाबले', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'पंढरीनाथ ', NULL, NULL, NULL, 'उषाताई ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10', NULL, 5240, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:04:01', '2021-03-13 11:04:01', NULL, 4, NULL, 2, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(3, '', NULL, 'भारत', '1996-12-27 05:30:00', '', 'अनुपवाडी', 'महाराष्ट्र', '', '1', NULL, 'मा.कोळी ', NULL, NULL, NULL, NULL, '2021-03-13 05:30:00', '११ वी विज्ञान', 'शंकर ', NULL, 'निलेवाड ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'अण्णाराव ', NULL, NULL, NULL, 'मंगलाबाई ', 'मराठी', 'भारतीय', NULL, 'श्री पांडुरंग वि. कल्लूर ', '10', NULL, 5241, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:08:59', '2021-03-13 11:08:59', NULL, 4, NULL, 3, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(4, '', NULL, 'भारत', '1994-11-26 05:30:00', 'नांदेड ', 'बोळका', 'महाराष्ट्र', 'कंधार ', '1', NULL, 'मराठा ', NULL, NULL, NULL, NULL, '2021-03-13 05:30:00', '१२ वी कला', 'देवानंद ', NULL, 'कदम ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'परमेश्वर', NULL, NULL, NULL, 'मंडोदरी', 'मराठी', 'भारतीय', NULL, 'पोस्ट बेसीक मा. विद्यालय बाऱ्हाळी ', '10', NULL, 5242, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:15:47', '2021-03-13 11:15:47', NULL, 4, NULL, 4, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(5, '', NULL, 'भारत', '1997-04-27 05:30:00', '', 'हंगरगा ', 'महाराष्ट्र', '', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी विज्ञान', 'अनिल ', NULL, 'कोळगीरे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विजय ', NULL, NULL, NULL, 'निर्मला ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी ', '10', NULL, 5243, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:21:14', '2021-03-13 11:21:14', NULL, 4, NULL, 5, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(6, '', NULL, 'भारत', '1997-07-25 05:30:00', 'नांदेड ', 'वडगाव ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'छप्परबंद ', NULL, NULL, NULL, NULL, '2013-06-25 05:30:00', '११ वी विज्ञान', 'हीना ', NULL, 'सय्यद ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'रज्जाक ', NULL, NULL, NULL, 'घुडमाबी ', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यालय बाऱ्हाळी ', '10 ', NULL, 5251, 'इस्लाम', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 12:10:13', '2021-03-13 12:10:13', NULL, 4, NULL, 13, '', '2013-14 ');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(7, '', NULL, 'भारत', '1997-06-02 05:30:00', 'नांदेड ', 'सुगाव कॅम्प ', 'महाराष्ट्र', 'मुखेड ', '1', NULL, 'हटकर ', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '११ वी कला', 'पिराजी ', NULL, 'फंताडे ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'नामदेव ', NULL, NULL, NULL, 'शेषाबाई ', 'मराठी', 'भारतीय', NULL, '10 ', 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी ', NULL, 5246, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:41:08', '2021-03-13 11:41:08', NULL, 4, NULL, 8, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(8, '', NULL, 'भारत', '1997-06-02 05:30:00', 'नांदेड', 'सुगाव कॅम्प', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'हटकर', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '11 वी विज्ञान', 'पिराजी', NULL, 'फंताडे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'नामदेव', NULL, NULL, NULL, 'शेषाबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी', '१० वी', NULL, 5246, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 11:41:08', '2021-03-13 20:41:14', NULL, 4, 1, 8, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(9, '', 'समाधानकारक', 'भारत', '1997-06-02 05:30:00', 'नांदेड', 'सुगाव कॅम्प', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'हटकर', NULL, NULL, NULL, NULL, '2013-06-17 05:30:00', '11 वी विज्ञान', 'पिराजी', NULL, 'फंताडे', '2021-03-13 00:00:00', NULL, NULL, NULL, NULL, NULL, '12 वी विज्ञान', '2021-03-12 00:00:00', 'नामदेव', NULL, NULL, NULL, 'शेषाबाई', 'मराठी', 'भारतीय', NULL, 'सरस्वती माध्यमिक विद्यलाय बाऱ्हाळी', '१० वी', NULL, 5246, 'हिंदु', NULL, '', '-', NULL, 1, 'पुढील शिक्षणासाठी', '12 वी उतीर्ण', 'चांगली', '2021-03-13 11:41:08', '2021-03-13 21:02:55', 'Y', 4, 1, 8, '9960801981', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(10, '', NULL, 'भारत', '1994-06-11 05:30:00', 'नांदेड ', 'बाऱ्हाळी ', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'महार ', NULL, NULL, NULL, NULL, '2021-03-13 05:30:00', '११ वी कला', 'विकास ', NULL, 'कांबळे', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'नामदेव', NULL, NULL, NULL, 'विमलबाई ', 'मराठी', 'भारतीय', NULL, 'नरसा माता माध्यमिक आश्रमशाळा नावंदी ता.उदगीर ', '10 वी', NULL, 5239, 'हिंदु', NULL, '', '-', NULL, 1, NULL, NULL, NULL, '2021-03-13 10:40:09', '2021-03-13 10:41:21', NULL, 4, 4, 1, '', '2013-14');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(11, '', NULL, 'भारत', '1991-01-01 05:30:00', 'नांदेड', 'बाऱ्हाळी', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'जंगम', NULL, NULL, NULL, NULL, '2006-06-01 05:30:00', '11 वी विज्ञान', 'शिवशंकर', NULL, 'म्हाडीवाले', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'विश्वनाथ', NULL, NULL, NULL, 'शकुंतला', 'मराठी', 'भारतीय', NULL, 'विद्या विकास विद्यालय बाऱ्हाळी', '10 वी', NULL, 5099, 'हिंदु', NULL, '', '', NULL, 1, NULL, NULL, NULL, '2021-03-13 22:04:34', '2021-03-13 22:04:34', NULL, 1, NULL, 25, '9960801981', '2005-06');
INSERT INTO `pravesh_nirgam_history` (`id`, `aadhar_id`, `abhyas_pragati`, `birth_country`, `birth_date`, `birth_district`, `birth_place`, `birth_state`, `birth_tahshil`, `book_no`, `bpl`, `cast`, `cast_category`, `current_div`, `current_std`, `dakhala_place`, `entry_date`, `entry_std`, `first_name`, `gender`, `last_name`, `lc_date`, `lc_receipt_date_parent`, `lc_school_date`, `lc_sign_parent`, `lc_sign_varified_parent`, `lc_times`, `leave_std`, `leave_std_date`, `middle_name`, `minority`, `mobile_father`, `mobile_mother`, `mother_name`, `mother_tongue`, `nationality`, `permenent_address`, `prev_school_name`, `prev_school_std`, `prev_std`, `reg_no`, `religion`, `s2g_school`, `student_id`, `sub_cast`, `vartnuk_lc_cause`, `school_id`, `lc_cause`, `remark`, `vartnuk`, `create_date`, `modify_date`, `leaving_certi_ficate_printed`, `created_id`, `updated_id`, `pravesh_nirgam_id`, `mobile_no`, `education_year`) VALUES
	(12, '२४३२४३२५', 'चांगली', 'भारत', '1990-03-01 05:30:00', 'नांदेड', 'बाऱ्हाळी', 'महाराष्ट्र', 'मुखेड', '1', NULL, 'वाणी', NULL, NULL, NULL, NULL, '2021-03-21 05:30:00', '11 वी विज्ञान', 'बालाजी', NULL, 'समभाळे', '2021-03-21 00:00:00', NULL, NULL, NULL, NULL, NULL, '१२ विज्ञान', '2021-03-21 00:00:00', 'विश्वनाथ', NULL, NULL, NULL, 'सरस्वती', 'मराठी', 'भारतीय', NULL, 'विद्या विकास विद्यालय', '10 वी', NULL, 59999, 'हिंदु', NULL, '२१३२१२', 'वाणी', NULL, 1, 'पुढील शिक्षणासाठी', '१२ वी उतीर्ण', 'समाधानकारक', '2021-03-21 19:17:04', '2021-03-21 19:19:20', 'Y', 1, NULL, 26, '', '2013-14');
/*!40000 ALTER TABLE `pravesh_nirgam_history` ENABLE KEYS */;

-- Dumping structure for table serp.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.role: 5 rows
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(1, 'ROLE_PRINCIPAL', 'ROLE_PRINCIPAL');
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(2, 'ROLE_CLERK', 'ROLE_CLERK');
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(3, 'ROLE_SUPERADMIN', 'ROLE_SUPERADMIN');
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(4, 'ROLE_SYSTEMADMIN', 'ROLE_SYSTEMADMIN');
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(5, 'ROLE_TEACHER', 'ROLE_TEACHER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table serp.school
CREATE TABLE IF NOT EXISTS `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manyata` varchar(255) DEFAULT NULL,
  `bit` varchar(255) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `board_code` varchar(255) DEFAULT NULL,
  `book_system` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `gaon` varchar(255) DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `lower_class` varchar(255) DEFAULT NULL,
  `madium` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `s2g_id` varchar(255) DEFAULT NULL,
  `sanketank` varchar(255) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_email_id` varchar(255) DEFAULT NULL,
  `school_management` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_phone` varchar(255) DEFAULT NULL,
  `school_website` varchar(255) DEFAULT NULL,
  `sluster` varchar(255) DEFAULT NULL,
  `tahshil` varchar(255) DEFAULT NULL,
  `udise` varchar(255) DEFAULT NULL,
  `upper_class` varchar(255) DEFAULT NULL,
  `trust_id` int(11) DEFAULT NULL,
  `cluster` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `sanlgnata_no` varchar(255) DEFAULT NULL,
  `leaving_certificate_sr_no` bigint(20) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `authority_sign` varchar(255) DEFAULT NULL,
  `establishment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKric97752cl5l9yt18ohjc6ea` (`trust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.school: 1 rows
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` (`id`, `manyata`, `bit`, `board`, `board_code`, `book_system`, `district`, `gaon`, `grant_type`, `logo`, `lower_class`, `madium`, `pin`, `s2g_id`, `sanketank`, `school_address`, `school_email_id`, `school_management`, `school_name`, `school_phone`, `school_website`, `sluster`, `tahshil`, `udise`, `upper_class`, `trust_id`, `cluster`, `medium`, `sanlgnata_no`, `leaving_certificate_sr_no`, `authority`, `authority_sign`, `establishment`) VALUES
	(1, 'एच एस सी/1792/1295/92', NULL, 'लातूर', 'J58.13.010', NULL, 'नांदेड', 'बाऱ्हाळी', NULL, 'images/vasant.png', NULL, NULL, NULL, NULL, NULL, 'ता. मुखेड जि. नांदेड', 'sarswatijrcb111@gmail.com', NULL, 'सरस्वती कनिष्ठ महाविद्यालय बाऱ्हाळी', '9421088341', '', NULL, 'मुखेड', '27150603404', NULL, 1, NULL, 'मराठी', 'J58.13.010', 5117, 'प्राचार्य', 'प्राचार्यांची स्वाक्षरी', '1992');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;

-- Dumping structure for table serp.student_attendance
CREATE TABLE IF NOT EXISTS `student_attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `day10` varchar(255) DEFAULT NULL,
  `day11` varchar(255) DEFAULT NULL,
  `day12` varchar(255) DEFAULT NULL,
  `day13` varchar(255) DEFAULT NULL,
  `day14` varchar(255) DEFAULT NULL,
  `day15` varchar(255) DEFAULT NULL,
  `day16` varchar(255) DEFAULT NULL,
  `day17` varchar(255) DEFAULT NULL,
  `day18` varchar(255) DEFAULT NULL,
  `day19` varchar(255) DEFAULT NULL,
  `day2` varchar(255) DEFAULT NULL,
  `day20` varchar(255) DEFAULT NULL,
  `day21` varchar(255) DEFAULT NULL,
  `day22` varchar(255) DEFAULT NULL,
  `day23` varchar(255) DEFAULT NULL,
  `day24` varchar(255) DEFAULT NULL,
  `day25` varchar(255) DEFAULT NULL,
  `day26` varchar(255) DEFAULT NULL,
  `day27` varchar(255) DEFAULT NULL,
  `day28` varchar(255) DEFAULT NULL,
  `day29` varchar(255) DEFAULT NULL,
  `day3` varchar(255) DEFAULT NULL,
  `day30` varchar(255) DEFAULT NULL,
  `day31` varchar(255) DEFAULT NULL,
  `day4` varchar(255) DEFAULT NULL,
  `day5` varchar(255) DEFAULT NULL,
  `day6` varchar(255) DEFAULT NULL,
  `day7` varchar(255) DEFAULT NULL,
  `day8` varchar(255) DEFAULT NULL,
  `day9` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `educational_year_mst_id` bigint(20) DEFAULT NULL,
  `yearwise_class_division_id` bigint(20) DEFAULT NULL,
  `yearwise_student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjuk37lucdhs0kyi7t97qyn9iv` (`educational_year_mst_id`),
  KEY `FKk92gt5h3pfj9c916ynovmaule` (`yearwise_class_division_id`),
  KEY `FKqmrnn5acuqchwtyn0lhpt5d9y` (`yearwise_student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.student_attendance: 0 rows
/*!40000 ALTER TABLE `student_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_attendance` ENABLE KEYS */;

-- Dumping structure for table serp.teacher_mst
CREATE TABLE IF NOT EXISTS `teacher_mst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `birth_country` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_district` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_state` varchar(255) DEFAULT NULL,
  `birth_tahshil` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `cast_category` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `joining_date` datetime DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `minority` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sub_cast` varchar(255) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKglomeh7fr7x4hst8907k0dp62` (`school_id`),
  KEY `FKr6644bnjkjm7us3tshkmusi9v` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.teacher_mst: 0 rows
/*!40000 ALTER TABLE `teacher_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_mst` ENABLE KEYS */;

-- Dumping structure for table serp.trust
CREATE TABLE IF NOT EXISTS `trust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `print_string` varchar(255) DEFAULT NULL,
  `trust_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.trust: 1 rows
/*!40000 ALTER TABLE `trust` DISABLE KEYS */;
INSERT INTO `trust` (`id`, `print_string`, `trust_name`) VALUES
	(1, 'वसंत शिक्षण प्रसारक मंडळ मुखेड द्वारा संचलित', 'वसंत शिक्षक प्रसारक मंडळ');
/*!40000 ALTER TABLE `trust` ENABLE KEYS */;

-- Dumping structure for table serp.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9yy0ya980j002yvtxi9r7kv6b` (`branch_id`),
  KEY `FKhbkxju61kpht7qnnhemgjv3u7` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table serp.user: 4 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `mobile_no`, `name`, `password`, `username`, `branch_id`, `school_id`) VALUES
	(1, 's.mhadiwale@gmail.com', '9960801981', 'Shivshanker Vishvanath Mhadiwale', '$2a$10$2WluH1/pZLJTDi8r30mB0.LCmB38OxvVe3CNao3e2a/EVSg.bMDJO', 'shiv', NULL, 1);
INSERT INTO `user` (`id`, `email`, `mobile_no`, `name`, `password`, `username`, `branch_id`, `school_id`) VALUES
	(2, 'Sangramrathod86@gmail.com', '9421088341', 'Rathod S. J.', '$2a$10$WUoow1efF/X8p12QLQdL2uIX2.bIiMoXXGKblvnD/iFTwHrRRN7mq', 'sjrathod', NULL, 1);
INSERT INTO `user` (`id`, `email`, `mobile_no`, `name`, `password`, `username`, `branch_id`, `school_id`) VALUES
	(3, 'bhardeg@gmail.com', '9423440600', 'Bharade G. B.', '$2a$10$VQEXGGC1s7qsP4yjTVOhXe1o5xDn5IgkR1.2tPcQcDrQq5uHgnowO', 'gbbharade', NULL, 1);
INSERT INTO `user` (`id`, `email`, `mobile_no`, `name`, `password`, `username`, `branch_id`, `school_id`) VALUES
	(4, 'SARSWATIJRCB111@GMAIL.COM', '9421088341', 'Chavan V. R.', '$2a$10$0poVsTCyPuVHyQ6oFuqUa.OOHZEHLIRnGh3zbvTizF/CRqj3Fd3NC', 'vrchavan', NULL, 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table serp.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.user_role: 4 rows
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 4);
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(2, 1);
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(3, 1);
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(4, 2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table serp.yearwise_class_division
CREATE TABLE IF NOT EXISTS `yearwise_class_division` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_division_mst_id` bigint(20) DEFAULT NULL,
  `educational_year_mst_id` bigint(20) DEFAULT NULL,
  `teacher_mst_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKirgfxsbofoju7rcw1sh5mt84b` (`class_division_mst_id`),
  KEY `FK8ggkq359wlk1u9i4mmpn4daxu` (`educational_year_mst_id`),
  KEY `FK6xux248krak1qinvp7dhnkmkn` (`teacher_mst_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.yearwise_class_division: 0 rows
/*!40000 ALTER TABLE `yearwise_class_division` DISABLE KEYS */;
/*!40000 ALTER TABLE `yearwise_class_division` ENABLE KEYS */;

-- Dumping structure for table serp.yearwise_student
CREATE TABLE IF NOT EXISTS `yearwise_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `pravesh_nirgam_id` bigint(20) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  `yearwise_class_division_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbctk3d8p6cx1n775idt1ij77t` (`pravesh_nirgam_id`),
  KEY `FKps0e5as1s7pwhoaee1ba7t4d3` (`school_id`),
  KEY `FK9ymh6y0r5vg7mwroe7sf31bwy` (`yearwise_class_division_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table serp.yearwise_student: 0 rows
/*!40000 ALTER TABLE `yearwise_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `yearwise_student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
