-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 11:34 AM
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
-- Database: `library_db`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`, `sort_order`, `timestamp`, `mod_timestamp`, `status`) VALUES
(2, 'arts', 0, 1609245985, 1609245985, '1');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `call_prefix` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `call_prefix` int(11) NOT NULL,
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
  `is_active` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mod_timestamp` int(11) NOT NULL,
  `etms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `course` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `name`, `email`, `mobile`, `course`, `status`, `created_at`) VALUES
(1, 'm', 'm@jm.vom', '98888888888', 'm', 1, '2020-12-29 05:13:58'),
(2, 'manish', 'm@jm.vom', '98888888888', 'm', 1, '2020-12-29 05:36:11'),
(4, 'punnu', 'm@jm.vom', '98888888888', 'm', 1, '2020-12-29 05:41:55');

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
-- Indexes for dumped tables
--

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
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
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
-- Indexes for table `master_cities`
--
ALTER TABLE `master_cities`
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
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
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
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_package`
--
ALTER TABLE `app_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_package_features`
--
ALTER TABLE `app_package_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `master_cities`
--
ALTER TABLE `master_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login_sessions`
--
ALTER TABLE `user_login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reset_password_logs`
--
ALTER TABLE `user_reset_password_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
