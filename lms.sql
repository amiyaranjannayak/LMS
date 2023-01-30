-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 03:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add member', 7, 'add_member'),
(26, 'Can change member', 7, 'change_member'),
(27, 'Can delete member', 7, 'delete_member'),
(28, 'Can view member', 7, 'view_member'),
(29, 'Can add document', 8, 'add_document'),
(30, 'Can change document', 8, 'change_document'),
(31, 'Can delete document', 8, 'delete_document'),
(32, 'Can view document', 8, 'view_document'),
(33, 'Can add ajax', 9, 'add_ajax'),
(34, 'Can change ajax', 9, 'change_ajax'),
(35, 'Can delete ajax', 9, 'delete_ajax'),
(36, 'Can view ajax', 9, 'view_ajax'),
(37, 'Can add csv upload', 10, 'add_csvupload'),
(38, 'Can change csv upload', 10, 'change_csvupload'),
(39, 'Can delete csv upload', 10, 'delete_csvupload'),
(40, 'Can view csv upload', 10, 'view_csvupload');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(6, 'pbkdf2_sha256$390000$XfZX5F2rMY7CvurfIJqfkD$80bhWFNSH7ELyd1XopMtT8WEgLu3QhToaqMzBVOlXQw=', '2023-01-29 13:26:15.440857', 1, 'Rajesh', 'Rajesh', 'Kumar', 'rajeshbbsr94@gmail.com', 1, 1, '2023-01-28 12:56:34.735449'),
(10, 'pbkdf2_sha256$390000$AtgjSnvOhXRWTYzxoiCjDs$Ka7ULxk97zaRI73LSWVzSxGrXwJcZh/zvBboSE+0Qsk=', '2023-01-29 14:21:17.975741', 0, 'lipun', 'lipun', 'kumar', 'lipun@gmail.com', 0, 1, '2023-01-29 14:21:12.525246');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_ajax`
--

CREATE TABLE `crud_ajax` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_ajax`
--

INSERT INTO `crud_ajax` (`id`, `text`, `search`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
(4, 'asdf', 'asdf', 'asdfg@gmail.com', 'asdf', '2023-01-28 15:33:13.754504', '2023-01-28 15:33:13.754504'),
(5, 'sdfg', 'sdfg', 'dsfg@gmail.com', 'sdfgsdfg', '2023-01-28 15:34:46.889009', '2023-01-28 15:34:46.889009');

-- --------------------------------------------------------

--
-- Table structure for table `crud_csvupload`
--

CREATE TABLE `crud_csvupload` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_document`
--

CREATE TABLE `crud_document` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_member`
--

CREATE TABLE `crud_member` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `cost` int(11) NOT NULL,
  `location` longtext NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_approve` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'crud', 'ajax'),
(10, 'crud', 'csvupload'),
(8, 'crud', 'document'),
(7, 'crud', 'member'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-28 11:34:15.620712'),
(2, 'auth', '0001_initial', '2023-01-28 11:34:16.480215'),
(3, 'admin', '0001_initial', '2023-01-28 11:34:16.652983'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-28 11:34:16.672736'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-28 11:34:16.688724'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-28 11:34:16.780012'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-28 11:34:16.857405'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-28 11:34:16.887679'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-28 11:34:16.900279'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-28 11:34:17.035561'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-28 11:34:17.042636'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-28 11:34:17.059645'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-28 11:34:17.084731'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-28 11:34:17.112697'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-28 11:34:17.143590'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-28 11:34:17.166951'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-28 11:34:17.201927'),
(18, 'sessions', '0001_initial', '2023-01-28 11:34:17.261763'),
(19, 'crud', '0001_initial', '2023-01-28 12:54:58.186602');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('66l9uf0ilrhctzix80bly8p2ikgk67cw', '.eJxVjEEOwiAQRe_C2pCBUQou3fcMZGBGqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWBtThd0yUH1I3wneqt6Zzq8s8Jb0peqddj43ledndv4NCvXxrDBk5MAYOzrEAiGcAZ7w_5WQBUjBESAOKFQoekK0_pgGv1iJJzur9AfrON_Y:1pM8YX:8uv_-9wCEs4JcSSO_Bh64yAURUQp1IZ1Z0xCIei1IQM', '2023-02-12 14:21:17.983762'),
('azulpkwi8uxtlieakloyrzdconk09ebo', '.eJxVjEEOwiAQRe_C2hBKgYJL956BzAyMVA0kpV0Z765NutDtf-_9l4iwrSVuPS9xTuIsnDj9bgj0yHUH6Q711iS1ui4zyl2RB-3y2lJ-Xg7376BAL9-arDMejWEiZawHZ7NDi6QTuIlDskx5DMDDqIcRk2cmNTkOmrzxWhnx_gD8bDhF:1pM7hH:hvL03XpNv54BCjCNVnLNP4hTXSfASBFBxivfouwDgD0', '2023-02-12 13:26:15.446858'),
('qf6eylgnn01dw8b5wt4y1ovp1p8mmxaw', 'e30:1pLkLX:3VZ_X_V3_CJz3qrEY1QyTEwjI9ER4kgf-pfZFkoPM9w', '2023-02-11 12:30:15.077472'),
('v8awfdm3s92jkkomqyv9h725qckw0eru', 'e30:1pLkMC:WHcw5DsjQbSRGjRNohC8GOYAucvisnR8QFj0ULy1uVM', '2023-02-11 12:30:56.726933');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crud_ajax`
--
ALTER TABLE `crud_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_csvupload`
--
ALTER TABLE `crud_csvupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_document`
--
ALTER TABLE `crud_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_member`
--
ALTER TABLE `crud_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_ajax`
--
ALTER TABLE `crud_ajax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crud_csvupload`
--
ALTER TABLE `crud_csvupload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_document`
--
ALTER TABLE `crud_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_member`
--
ALTER TABLE `crud_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
