-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 02:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insideco_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_salt` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `api_key`, `api_salt`, `status`) VALUES
(1, '18246031919065336931', 'L8EzqC3ia8HWFsrEdvzE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `code_name` varchar(255) NOT NULL,
  `public_name` varchar(255) NOT NULL,
  `logo_id` int(11) NOT NULL,
  `short_desc` text NOT NULL,
  `public_url` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_suspended` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `code_name`, `public_name`, `logo_id`, `short_desc`, `public_url`, `is_active`, `is_suspended`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 'twst', 'satish', 5, 'testing for what', 'http://kjdjf.com', 1, 0, 1610099380, 1610099380, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_package`
--

CREATE TABLE `app_package` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_desc` text NOT NULL,
  `package_icon` varchar(255) NOT NULL,
  `package_price` bigint(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_published` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_package`
--

INSERT INTO `app_package` (`id`, `app_id`, `package_name`, `package_desc`, `package_icon`, `package_price`, `sort_order`, `is_published`, `is_active`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 4, 'tddd@hhh', 'hhgjjgh77', '10', 876, 4, 1, 1, 1611117093, 1611117093, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_package_features`
--

CREATE TABLE `app_package_features` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `is_highlight` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_package_features`
--

INSERT INTO `app_package_features` (`id`, `package_id`, `feature_name`, `is_highlight`, `is_active`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 1, 'uyh', 0, 0, 0, 0, 0),
(2, 1, 'ert', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_desc` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `file_hash` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_actual_link` text NOT NULL,
  `rewrite_url` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `file_hash`, `uid`, `folder_id`, `file_name`, `file_size`, `file_type`, `file_actual_link`, `rewrite_url`, `is_active`, `is_block`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, '9273-team-1.png', 1, 0, 'team-1.png', '386050', 'image/png', 'uploads/book/9273-team-1.png', '', 1, 0, 1610702193, 1610702193, 0),
(2, '3095-download.jpg', 1, 0, 'download.jpg', '9726', 'image/jpeg', 'uploads/book/3095-download.jpg', '', 1, 0, 1610702193, 1610702193, 0),
(3, '7197-team-1.png', 1, 0, 'team-1.png', '386050', 'image/png', 'uploads/book/7197-team-1.png', '', 1, 0, 1610705175, 1610705175, 0),
(4, '8845-download.jpg', 1, 0, 'download.jpg', '9726', 'image/jpeg', 'uploads/book/8845-download.jpg', '', 1, 0, 1610705175, 1610705175, 0),
(5, '9296-team-1.png', 1, 0, 'team-1.png', '386050', 'image/png', 'uploads/book/9296-team-1.png', '', 1, 0, 1610708716, 1610708716, 0),
(6, '9933-download.jpg', 1, 0, 'download.jpg', '9726', 'image/jpeg', 'uploads/book/9933-download.jpg', '', 1, 0, 1610708716, 1610708716, 0),
(7, '3258-slide-2.jpg', 0, 0, 'slide-2.jpg', '65599', 'image/jpeg', 'uploads/subscription/3258-slide-2.jpg', '', 1, 0, 1611116975, 1611116975, 0),
(8, '9545-slide-2.jpg', 0, 0, 'slide-2.jpg', '65599', 'image/jpeg', 'uploads/subscription/9545-slide-2.jpg', '', 1, 0, 1611117006, 1611117006, 0),
(9, '4301-slide-2.jpg', 0, 0, 'slide-2.jpg', '65599', 'image/jpeg', 'uploads/subscription/4301-slide-2.jpg', '', 1, 0, 1611117049, 1611117049, 0),
(10, '2902-slide-2.jpg', 0, 0, 'slide-2.jpg', '65599', 'image/jpeg', 'uploads/subscription/2902-slide-2.jpg', '', 1, 0, 1611117093, 1611117093, 0);

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_icon` varchar(255) NOT NULL,
  `folder_color` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `total_amount_paid` varchar(100) NOT NULL,
  `total_tax_paid` varchar(255) NOT NULL,
  `amount_without_text` bigint(15) NOT NULL,
  `ammount_due` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `invoice_terms_conditions` text NOT NULL,
  `discount` int(11) NOT NULL,
  `is_discount_percentage` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_address`
--

CREATE TABLE `invoice_address` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_base_price` bigint(11) NOT NULL,
  `item_tax_amount` bigint(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_total_with_amount_tax` bigint(11) NOT NULL,
  `item_total_without_amount_tax` bigint(11) NOT NULL,
  `hsn_code` varchar(255) NOT NULL,
  `sac_code` varchar(255) NOT NULL,
  `sku_id` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments_txn`
--

CREATE TABLE `invoice_payments_txn` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `raw_response` text NOT NULL,
  `txn_status` varchar(200) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`id`, `full_name`, `email`, `mobile_number`, `password`, `gender`, `dob`, `photo`, `account_status`) VALUES
(1, 'manish', 'satishtiwari0869@gmail.com', '234567877', 'f91e15dbec69fc40f81f0876e7009648', 'M', '', '', 1),
(2, 'manish', 'tsatish206@gmail.com', '9876545577', '0e7517141fb53f21ee439b355b5a1d0a', 'M', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_cities`
--

CREATE TABLE `master_cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `tehsil_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_countries`
--

CREATE TABLE `master_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `call_prefix` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_countries`
--

INSERT INTO `master_countries` (`id`, `country_name`, `iso_code`, `call_prefix`, `is_active`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(2, 'india', 'Ind', '91', 1, 1610007950, 1610007950, 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_districts`
--

CREATE TABLE `master_districts` (
  `id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_states`
--

CREATE TABLE `master_states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `call_prefix` varchar(100) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_tahsils`
--

CREATE TABLE `master_tahsils` (
  `id` int(11) NOT NULL,
  `tahsil_name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_tahsils`
--

INSERT INTO `master_tahsils` (`id`, `tahsil_name`, `district_id`, `is_active`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 'Lalgang', 1, 1, 1610092655, 1610092655, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `mode_name` varchar(255) NOT NULL,
  `mode_desc` text NOT NULL,
  `mode_configurations` text NOT NULL,
  `mode_logo_id` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `aadharcard` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_phone_verify` tinyint(1) NOT NULL,
  `is_email_verify` tinyint(1) NOT NULL,
  `is_suspended` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `aadharcard`, `email`, `mobile_number`, `password`, `qrcode`, `is_block`, `is_active`, `is_phone_verify`, `is_email_verify`, `is_suspended`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 'satish.tiwari@techinsidesystems.com', 'satish', 'tiwari', '', 'satish.tiwari@techinsidesystems.com', '8765432123', '0e7517141fb53f21ee439b355b5a1d0a', '12104739.png', 0, 1, 1, 1, 0, 1611751276, 1611751276, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `address_line1` text NOT NULL,
  `address_line2` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `alias` varchar(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_info`
--

CREATE TABLE `user_basic_info` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `aadharcard` varchar(255) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `about_me` text NOT NULL,
  `profile_picture_id` int(11) NOT NULL,
  `cover_picture_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_basic_info`
--

INSERT INTO `user_basic_info` (`id`, `uid`, `email`, `aadharcard`, `mobile_number`, `dob`, `gender`, `about_me`, `profile_picture_id`, `cover_picture_id`, `address`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 2, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(2, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(3, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(4, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(5, 3, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(6, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(7, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(8, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(9, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(10, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(11, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(12, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(13, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(14, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(15, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(16, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(17, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(18, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(19, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(20, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(21, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(22, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(23, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(24, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(25, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(26, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(27, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(28, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(29, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(30, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(31, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(32, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(33, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(34, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(35, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(36, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(37, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(38, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(39, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(40, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0),
(41, 1, '', '', '', '', '', '', 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_sessions`
--

CREATE TABLE `user_login_sessions` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` text NOT NULL,
  `login_timestamp` int(11) NOT NULL,
  `logout_timestamp` int(11) NOT NULL,
  `is_trusted_device` tinyint(1) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `login_from` varchar(255) NOT NULL,
  `logout_from` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login_sessions`
--

INSERT INTO `user_login_sessions` (`id`, `uid`, `ip_address`, `user_agent`, `login_timestamp`, `logout_timestamp`, `is_trusted_device`, `device_id`, `login_from`, `logout_from`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(1, 1, '47.15.218.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611576336, 0, 0, '', '1611576336', '', 1611576336, 0, 0),
(2, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611596495, 0, 0, '', '1611596495', '', 1611596495, 0, 0),
(3, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611596652, 0, 0, '', '1611596652', '', 1611596652, 0, 0),
(4, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611596738, 0, 0, '', '1611596738', '', 1611596738, 0, 0),
(5, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611596868, 0, 0, '', '1611596868', '', 1611596868, 0, 0),
(6, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611597026, 0, 0, '', '1611597026', '', 1611597026, 0, 0),
(7, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611597122, 0, 0, '', '1611597122', '', 1611597122, 0, 0),
(8, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611597278, 0, 0, '', '1611597278', '', 1611597278, 0, 0),
(9, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611597281, 0, 0, '', '1611597281', '', 1611597281, 0, 0),
(10, 1, '47.15.200.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611597325, 0, 0, '', '1611597325', '', 1611597325, 0, 0),
(11, 1, '47.15.208.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611717807, 0, 0, '', '1611717807', '', 1611717807, 0, 0),
(12, 1, '47.15.208.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611721882, 0, 0, '', '1611721882', '', 1611721882, 0, 0),
(13, 1, '47.15.208.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611724556, 0, 0, '', '1611724556', '', 1611724556, 0, 0),
(14, 1, '47.15.208.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611724602, 0, 0, '', '1611724602', '', 1611724602, 0, 0),
(15, 1, '47.15.208.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611724653, 0, 0, '', '1611724653', '', 1611724653, 0, 0),
(16, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611729100, 0, 0, '', '1611729100', '', 1611729100, 0, 0),
(17, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611732133, 0, 0, '', '1611732133', '', 1611732133, 0, 0),
(18, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1611735893, 0, 0, '', '1611735893', '', 1611735893, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_reset_password_logs`
--

CREATE TABLE `user_reset_password_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` text NOT NULL,
  `login_timestamp` int(11) NOT NULL,
  `logout_timestamp` int(11) NOT NULL,
  `is_trusted_device` tinyint(1) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `login_from` varchar(255) NOT NULL,
  `logout_from` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reset_password_logs`
--

INSERT INTO `user_reset_password_logs` (`id`, `uid`, `ip_address`, `user_agent`, `login_timestamp`, `logout_timestamp`, `is_trusted_device`, `device_id`, `login_from`, `logout_from`, `timestamp`, `mod_timestamp`, `etms`) VALUES
(0, 1, '10.7.89', 'kkkbnnn', 1610440998, 0, 0, '', '1610440998', '', 1610440998, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_package`
--
ALTER TABLE `app_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_package_features`
--
ALTER TABLE `app_package_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_address`
--
ALTER TABLE `invoice_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments_txn`
--
ALTER TABLE `invoice_payments_txn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_cities`
--
ALTER TABLE `master_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_countries`
--
ALTER TABLE `master_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_districts`
--
ALTER TABLE `master_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_states`
--
ALTER TABLE `master_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tahsils`
--
ALTER TABLE `master_tahsils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_info`
--
ALTER TABLE `user_basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_sessions`
--
ALTER TABLE `user_login_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reset_password_logs`
--
ALTER TABLE `user_reset_password_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_package`
--
ALTER TABLE `app_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_package_features`
--
ALTER TABLE `app_package_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_address`
--
ALTER TABLE `invoice_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_payments_txn`
--
ALTER TABLE `invoice_payments_txn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_cities`
--
ALTER TABLE `master_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_countries`
--
ALTER TABLE `master_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_districts`
--
ALTER TABLE `master_districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_states`
--
ALTER TABLE `master_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_tahsils`
--
ALTER TABLE `master_tahsils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_basic_info`
--
ALTER TABLE `user_basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_login_sessions`
--
ALTER TABLE `user_login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
