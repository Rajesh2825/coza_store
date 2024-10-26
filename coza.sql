-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2024 at 06:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coza`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add ucontact', 7, 'add_ucontact'),
(26, 'Can change ucontact', 7, 'change_ucontact'),
(27, 'Can delete ucontact', 7, 'delete_ucontact'),
(28, 'Can view ucontact', 7, 'view_ucontact'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add catagory', 9, 'add_catagory'),
(34, 'Can change catagory', 9, 'change_catagory'),
(35, 'Can delete catagory', 9, 'delete_catagory'),
(36, 'Can view catagory', 9, 'view_catagory'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add wish', 11, 'add_wish'),
(42, 'Can change wish', 11, 'change_wish'),
(43, 'Can delete wish', 11, 'delete_wish'),
(44, 'Can view wish', 11, 'view_wish'),
(45, 'Can add o_item', 12, 'add_o_item'),
(46, 'Can change o_item', 12, 'change_o_item'),
(47, 'Can delete o_item', 12, 'delete_o_item'),
(48, 'Can view o_item', 12, 'view_o_item'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$DAuL8QJVXtFv5bkUKdCY5Z$7mCD3w0mY3DhY45PXtPay0IJotSxtWfAgjpzXYrc6vU=', '2024-09-19 04:37:05.868198', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-03-14 06:13:46.000000'),
(2, 'pbkdf2_sha256$720000$DyIkeBMXF45osPV3rupI5o$ZUn4mRDgecOWCSyipsFbFVqcDg9gfNCyMiWIk8OfGIs=', '2024-09-19 04:36:17.617059', 0, 'raj', 'RAJESHBHAI J RADADIYA', '', 'rajesh91@gmail.com', 0, 1, '2024-03-14 06:14:58.000000'),
(4, 'pbkdf2_sha256$720000$D9RE2CmGBnAVY7rNL9hK93$AxTz4SJXSNxo3JxCtLagndzN6EBJ0DK0MkhaA2Vnnd4=', '2024-09-19 04:33:03.989232', 1, 'jay', '', '', 'jay@gmail.com', 1, 1, '2024-09-19 04:32:29.470029');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-14 09:26:29.363551', '1', 'Women', 1, '[{\"added\": {}}]', 9, 1),
(2, '2024-03-14 09:26:34.387572', '2', 'Men', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-03-14 09:26:41.752754', '3', 'Bag', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-03-14 09:26:52.488073', '4', 'Shoes', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-03-14 09:27:03.203872', '5', 'Watches', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-03-14 09:28:24.399190', '1', 'Esprit Ruffle Shirt', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-03-14 09:33:32.307942', '2', 'Herschel supply', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-03-14 09:34:37.777229', '3', 'Only Check Trouser', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-03-14 09:35:18.511855', '4', 'Classic Trench Coat', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-03-14 09:36:44.428946', '5', 'Converse All Star Hi Plimsolls', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-03-14 09:37:43.088139', '6', 'Vintage Inspired Classic', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-03-14 09:38:25.019531', '7', 'Mini Silver Mesh Watch', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-03-16 10:35:37.656342', '5', 'Converse All Star Hi', 2, '[{\"changed\": {\"fields\": [\"Pname\"]}}]', 8, 1),
(14, '2024-03-16 10:39:59.284349', '8', 'Front Pocket Jumper', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-03-16 10:40:51.607833', '9', 'Shirt in Stretch Cotton', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-03-16 10:41:30.601890', '10', 'Pieces Metallic Printed', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-03-16 10:42:14.951390', '11', 'Femme T-Shirt In Stripe', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-03-16 10:42:50.039051', '12', 'Herschel supply', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-03-16 10:43:25.330137', '13', 'Herschel supply', 1, '[{\"added\": {}}]', 8, 1),
(20, '2024-03-16 10:43:45.905303', '12', 'Herschel supply', 2, '[{\"changed\": {\"fields\": [\"C id\"]}}]', 8, 1),
(21, '2024-03-16 10:44:29.518173', '14', 'T-Shirt with Sleeve', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-03-16 10:45:15.414493', '15', 'Pretty Little Thing', 1, '[{\"added\": {}}]', 8, 1),
(23, '2024-03-16 10:46:22.698218', '16', 'Square Neck Back', 1, '[{\"added\": {}}]', 8, 1),
(24, '2024-03-16 10:47:49.848861', '17', 'Large 70 L Backpack Moun.', 1, '[{\"added\": {}}]', 8, 1),
(25, '2024-03-16 10:48:55.642370', '18', 'prikli Waist Bag for Men Wo...', 1, '[{\"added\": {}}]', 8, 1),
(26, '2024-03-16 10:50:19.590407', '19', 'White White Runner Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(27, '2024-03-16 10:51:08.698128', '19', 'White White Runner', 2, '[{\"changed\": {\"fields\": [\"Pname\"]}}]', 8, 1),
(28, '2024-03-16 10:51:16.106649', '18', 'prikli Waist Bag for Men', 2, '[{\"changed\": {\"fields\": [\"Pname\"]}}]', 8, 1),
(29, '2024-03-16 10:51:24.530483', '17', 'Large 70 L Backpack', 2, '[{\"changed\": {\"fields\": [\"Pname\"]}}]', 8, 1),
(30, '2024-03-16 11:01:53.823102', '18', 'prikli Waist Bag for Men', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 1),
(31, '2024-03-16 11:02:15.037839', '19', 'White White Runner', 2, '[{\"changed\": {\"fields\": [\"Pimg\"]}}]', 8, 1),
(32, '2024-03-16 11:03:52.404045', '20', 'Sneakers For Men', 1, '[{\"added\": {}}]', 8, 1),
(33, '2024-03-17 11:10:09.237767', '2', 'RAJESHBHAI J RADADIYA', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 13, 1),
(34, '2024-03-17 11:10:09.241637', '1', 'RAJESHBHAI J RADADIYA', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 13, 1),
(35, '2024-04-08 04:07:42.913212', '2', 'Herschel supply', 2, '[{\"changed\": {\"fields\": [\"Pprice\"]}}]', 8, 1),
(36, '2024-04-08 04:27:51.559467', '19', 'raj', 3, '', 13, 1),
(37, '2024-04-08 04:27:51.563347', '18', 'daya', 3, '', 13, 1),
(38, '2024-04-08 04:27:51.564312', '17', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(39, '2024-04-08 04:27:51.569442', '16', 'raj', 3, '', 13, 1),
(40, '2024-04-08 04:27:51.571940', '15', 'raj', 3, '', 13, 1),
(41, '2024-04-08 04:27:51.575859', '14', 'bhavin', 3, '', 13, 1),
(42, '2024-04-08 04:27:51.579574', '13', 'vikesh', 3, '', 13, 1),
(43, '2024-04-08 04:27:51.581867', '12', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(44, '2024-04-08 04:27:51.584666', '11', 'jayu', 3, '', 13, 1),
(45, '2024-04-08 04:27:51.586550', '10', 'panthi', 3, '', 13, 1),
(46, '2024-04-08 04:27:51.586550', '9', 'yay', 3, '', 13, 1),
(47, '2024-04-08 04:27:51.596078', '8', 'RADADIYA', 3, '', 13, 1),
(48, '2024-04-08 04:27:51.599264', '7', 'RAJESHBHAI ', 3, '', 13, 1),
(49, '2024-04-08 04:27:51.602508', '6', 'RAJESH', 3, '', 13, 1),
(50, '2024-04-08 04:27:51.604918', '5', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(51, '2024-04-08 04:27:51.607407', '4', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(52, '2024-04-08 04:27:51.610355', '3', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(53, '2024-04-08 04:27:51.613981', '2', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(54, '2024-04-08 04:27:51.616097', '1', 'RAJESHBHAI J RADADIYA', 3, '', 13, 1),
(55, '2024-04-08 04:31:51.860781', '20', 'raj', 3, '', 13, 1),
(56, '2024-04-08 04:43:27.983275', '3', 'Only Check Trouser', 2, '[{\"changed\": {\"fields\": [\"Pprice\"]}}]', 8, 1),
(57, '2024-09-19 04:33:44.560805', '3', 'Rajesh', 3, '', 4, 4),
(58, '2024-09-19 04:34:59.767421', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 4),
(59, '2024-09-19 04:35:05.073637', '1', 'admin', 2, '[]', 4, 4),
(60, '2024-09-19 04:35:34.134727', '2', 'raj', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 4),
(61, '2024-09-19 04:35:37.157168', '2', 'raj', 2, '[]', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'shop', 'cart'),
(9, 'shop', 'catagory'),
(13, 'shop', 'order'),
(12, 'shop', 'o_item'),
(14, 'shop', 'payment'),
(8, 'shop', 'product'),
(7, 'shop', 'ucontact'),
(11, 'shop', 'wish');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-14 06:12:46.089807'),
(2, 'auth', '0001_initial', '2024-03-14 06:12:46.711454'),
(3, 'admin', '0001_initial', '2024-03-14 06:12:46.850163'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-14 06:12:46.864486'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-14 06:12:46.876979'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-14 06:12:46.994335'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-14 06:12:47.077513'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-14 06:12:47.117057'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-14 06:12:47.128691'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-14 06:12:47.194136'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-14 06:12:47.199820'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-14 06:12:47.208905'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-14 06:12:47.234639'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-14 06:12:47.257008'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-14 06:12:47.278642'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-14 06:12:47.297129'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-14 06:12:47.320659'),
(18, 'sessions', '0001_initial', '2024-03-14 06:12:47.368609'),
(19, 'shop', '0001_initial', '2024-03-14 06:12:47.384370'),
(20, 'shop', '0002_catagory_product', '2024-03-14 09:04:40.395747'),
(21, 'shop', '0003_remove_product_pcolor_remove_product_psize', '2024-03-14 09:23:57.818547'),
(22, 'shop', '0004_cart', '2024-03-15 06:00:33.451052'),
(23, 'shop', '0005_wish', '2024-03-16 09:42:35.063193'),
(24, 'shop', '0006_order_o_item', '2024-03-17 10:18:54.900254'),
(25, 'shop', '0007_payment', '2024-04-01 05:48:28.632496'),
(26, 'shop', '0008_payment_order', '2024-04-08 04:10:29.698186'),
(27, 'shop', '0009_remove_payment_order', '2024-04-08 04:13:26.351334'),
(28, 'shop', '0010_payment_o_id', '2024-04-08 12:09:12.889971'),
(29, 'shop', '0011_remove_payment_o_id', '2024-04-08 12:10:28.473271');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('19mgo5vog6482jnwfr7ix5efwwo1r9cd', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rkeMt:Fjryqz8wFzWj3vhdJatoS2QPAij6RWoV-SqE2RM1ZWc', '2024-03-28 06:15:07.944283'),
('3moo1tish1o77klavlv0ex5u7v6j0z3b', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rqY9N:2ulQ2I4pjreaIjfAVTGBBsgcIi0yya-l5PN51WxAdag', '2024-04-13 12:49:33.608130'),
('3pb1iivng59an1wzgo7fku6ctms0k3l5', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rrANo:XoFs0jeg_ryN4xT83HVux-yRPo3yhRfOSGXXRaD06qs', '2024-04-15 05:39:00.784114'),
('3rxbyp6801fd68tqy00o5ior6cuwpp3y', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rrHVG:G6DNzpm4rHYXhINgCIACp6s99SowlapZHDzGZtXB1Gc', '2024-04-15 13:15:10.003856'),
('42gfc31m1pq7ypiscu3tv6j2ju12jep7', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rlQdb:wpdyK2SLNSAm_KPDGK9QTrGO1GJtC8qLhGctk-1yvs0', '2024-03-30 09:47:35.815121'),
('4hohcigwttoyp1yarmi8ek0b6k1gfdqi', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rkeLu:-dvmCGR6PVQqi6Wy3_4EedVTgWwpcCrUTaCnqUGQiuI', '2024-03-28 06:14:06.870334'),
('7jshn5b9kijt19ewzdm0z2u4758mgbor', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rllSv:UQcnk9o7ew5vmSzN0LnfLV0-xiAOBbOgQ-NYV8qntZQ', '2024-03-31 08:01:57.545510'),
('98buiurq6682xsh8brd5jm6ijcnkebr7', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rlmbT:8p29E5Yel1Ou6wbTzMoYDnuwjAwKqdzRisuN0PyfAT4', '2024-03-31 09:14:51.832117'),
('dwg9s4yqc9i9x0cy5absm03jkw6nznym', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rloOi:sEnMICmqoQGf2Je_-BqbL7S8n_Ecp4zYgai9UtXDPvQ', '2024-03-31 11:09:48.043639'),
('hc3vbscbo8xgiln87upk8yuegjclmd7m', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rlPnj:34Y3LGOBrXCtONFaWNDvqZiDOXsG2P0vPqrOo07sDmY', '2024-03-30 08:53:59.204283'),
('i6majdzjvhsq6c3jc6e95gnjj7s34wsl', '.eJxVjMEOwiAQRP-FsyGVhQU9eu83ELa7laqBpLQn47_bJj1o5jbvzbxVTOuS49pkjhOrqwJ1-u0oDU8pO-BHKveqh1qWeSK9K_qgTfeV5XU73L-DnFre1l7IX4KIIATjCT1xIB9GJsOCYxIUx-i2QOfAGmugwwCGmc9kLajPF_faN7w:1rnyGH:e8PYoHNY6K-6YIMG-IQ3i_FYDbyq_bgRrGb02e6uXWw', '2024-04-06 10:06:01.712630'),
('iji8zvobgneanfhs0s1xabem2vbij6x0', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rloKv:AbkEvrgMin_xnJCyiGwrAM6tvmJRA3ceiGZMQ4AoCeU', '2024-03-31 11:05:53.369521'),
('kiz45d21gr87fd410nbncounuua1pxaj', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rnw53:bNhos-fxeHzJ-R2KiH5ci8sUkAhdnWxtoWlIxKIp-y0', '2024-04-06 07:46:17.911337'),
('nufc7zai6nclul437maqiexcci41z490', '.eJxVjEEOwiAQRe_C2pDOlMLo0r1nIAMDUjU0Ke3KeHfbpAvdvvf-fyvP61L82tLsR1EXBer0ywLHZ6q7kAfX-6TjVJd5DHpP9GGbvk2SXtej_Tso3Mq27shxcMKOBivRxg6NkElgMljkDaGTLMRuAOopY6SEKWAwZ0boAdTnC-esN80:1rtg5k:LeAFSSr8SGNtAjbSbEAFkuBOEt_yp9HkIg8dO627mjo', '2024-04-22 03:54:44.616045'),
('p08lkxxwo3u801a8691gf0mjuhu2cg0m', '.eJxVjEEOwiAQRe_C2hBpEWZcuvcMZJgBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsjDr8bpH4keoG5E711jS3usxT1Juid9r1tUl6Xnb376BQL9_aejCDQydCThJ5I2JzhJE88oDorEHMFiKjjCDMgAntESSfcmYBr94f6Ic4cg:1sr8uf:ineLoqVcOYe5XSCOczeryELEvtJ9ru1dB8nCrwweK3Y', '2024-10-03 04:37:05.872941'),
('pyjba0m8m92vs36ninxdemjz6q9oiufm', '.eJxVjs0OwiAQhN-FszbQLgU8evcZyMIu1p8UU2g8GN9dTHrp9ZuZL_MR_oWlvPNCfuHC1df84FmcRISq33ykYTDW6kBBaSexV31ia8YeQ2SFxoqD8LjWya-FF3-jtuz3LGBsxn9Ad5yvuYt5rsstdP9Kt6Wlu2Ti53nr7gQTlqmtRwNkpU7ORQUwWKmsBWxgpCQ1y8AwGK11TFImpSIjADllIjjTHifx_QGjlkvD:1rrHTo:eBoJKPahgyXhw3kkqPru5y8Bh8c8F0oFRW-15ILlPYU', '2024-04-15 13:13:40.364578'),
('tvwvtdvru48wk548h3nj68fk9kzy2nub', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rl7U4:4zDppBZ4IfUKbh2EG4XDEQh1tg7m5I-wQAugKNo_0P8', '2024-03-29 13:20:28.120356'),
('u0d4mw48zeovm49f40rr79morbldca6w', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rqYC6:moFcHTu84Hs_aXHBZGIGs-UTvuW9dHwwkQ0ABOf_YPo', '2024-04-13 12:52:22.228156'),
('vr53v9ioyvajz0npr359y6rnd3uopju7', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rlTrQ:ImrweYCrCVy2hzjisbMQj7lS_dPcE1GG6gFT8T2b5bo', '2024-03-30 13:14:04.635544'),
('vs4m6usfivf4fctalnrmvp21626lsd42', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rlPUm:jpFx6hWezNT4QpsxKzz6kbFrw1UGg0kMLGcwL-11y7s', '2024-03-30 08:34:24.687394'),
('zdlsv56wn7y9r7b0ucchdk6y4ojmk44a', '.eJxVjDsOwjAQBe_iGllrsv5R0nMGy16vcQA5UpxUiLuTSCmgnZn33iLEdalh7TyHMYuLOIvTL0uRntx2kR-x3SdJU1vmMck9kYft8jZlfl2P9u-gxl63tbGYHejiPSnEwYFyDuMGTC6gGRLjYLXWVACKUsQRMXtlCb111hTx-QK5zzb3:1rl0cl:NCWPXcQT1a73Y242yMI_JUggGWucbexiuZsJq9jZOx0', '2024-03-29 06:00:59.527408');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart`
--

CREATE TABLE `shop_cart` (
  `cid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_catagory`
--

CREATE TABLE `shop_catagory` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_catagory`
--

INSERT INTO `shop_catagory` (`cid`, `cname`) VALUES
(1, 'Women'),
(2, 'Men'),
(3, 'Bag'),
(4, 'Shoes'),
(5, 'Watches');

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `oid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `p_type` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `odate` datetime(6) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`oid`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `amount`, `p_type`, `status`, `odate`, `u_id_id`) VALUES
(21, 'raj', 'raj91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 44, 'Stripe', 'PENDING', '2024-04-08 04:37:04.414645', 2),
(22, 'rajesh', 'raj91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 44, 'Stripe', 'PENDING', '2024-04-08 04:40:26.578411', 2),
(23, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 409, 'Stripe', 'PENDING', '2024-04-08 04:41:21.251871', 2),
(24, 'raj', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 44, 'Stripe', 'PENDING', '2024-04-08 04:42:04.756803', 2),
(25, 'RAJESHBHAI J RADADIYA', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 55, 'Stripe', 'PENDING', '2024-04-08 04:42:40.674819', 2),
(26, 'RAJESHBHAI ', 'rajesh91@gmail.com', 87326847375, 'Kolda', 'Kolda', 'Gujarat', 365455, 109, 'Stripe', 'PENDING', '2024-04-08 04:43:48.871041', 2),
(27, 'Heena', 'heena@gmail.com', 9662814474, '212 town plaza nikol', 'ahmedabad', 'gujarat', 380040, 200, 'Cash On Delivery', 'PENDING', '2024-04-08 11:44:18.668400', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_o_item`
--

CREATE TABLE `shop_o_item` (
  `otid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `o_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_o_item`
--

INSERT INTO `shop_o_item` (`otid`, `quantity`, `sub_total`, `p_id_id`, `o_id_id`) VALUES
(24, 1, 34, 3, 21),
(25, 1, 34, 3, 22),
(26, 1, 399, 2, 23),
(27, 1, 34, 3, 24),
(28, 1, 45, 1, 25),
(29, 1, 99, 3, 26),
(30, 1, 78, 4, 27),
(31, 2, 112, 7, 27);

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment`
--

CREATE TABLE `shop_payment` (
  `id` bigint(20) NOT NULL,
  `stripe_charge_id` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_payment`
--

INSERT INTO `shop_payment` (`id`, `stripe_charge_id`, `amount`, `timestamp`, `user_id`) VALUES
(1, 'ch_3P39FdILg4W4SdGF0GjPJmvp', 111, '2024-04-08 03:52:19.031559', 2),
(2, 'ch_3P39HUILg4W4SdGF1ikguigo', 55, '2024-04-08 03:54:14.329228', 2),
(3, 'ch_3P39JFILg4W4SdGF1cMJuXO5', 88, '2024-04-08 03:56:03.486394', 2),
(4, 'ch_3P39LoILg4W4SdGF0Cbe7gBt', 55, '2024-04-08 03:58:42.207169', 2),
(5, 'ch_3P39VIILg4W4SdGF01ZktPU2', 409, '2024-04-08 04:08:29.777472', 2),
(6, 'ch_3P3A1LILg4W4SdGF0NO33i5C', 409, '2024-04-08 04:41:36.704887', 2),
(7, 'ch_3P3A2eILg4W4SdGF0rAJsu0Y', 55, '2024-04-08 04:42:57.785609', 2),
(8, 'ch_3P3A3gILg4W4SdGF11HWDGW1', 109, '2024-04-08 04:44:02.136021', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pdesc` longtext NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`pid`, `pname`, `pprice`, `pdesc`, `pimg`, `c_id_id`) VALUES
(1, 'Esprit Ruffle Shirt', 45, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-01.jpg', 1),
(2, 'Herschel supply', 399, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-02.jpg', 1),
(3, 'Only Check Trouser', 99, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-03.jpg', 2),
(4, 'Classic Trench Coat', 78, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-04.jpg', 1),
(5, 'Converse All Star Hi', 99, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-09.jpg', 4),
(6, 'Vintage Inspired Classic', 87, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-15.jpg', 5),
(7, 'Mini Silver Mesh Watch', 56, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-06.jpg', 5),
(8, 'Front Pocket Jumper', 45, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-05.jpg', 1),
(9, 'Shirt in Stretch Cotton', 67, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-07.jpg', 1),
(10, 'Pieces Metallic Printed', 89, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-08.jpg', 1),
(11, 'Femme T-Shirt In Stripe', 36, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-10.jpg', 1),
(12, 'Herschel supply', 78, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-11.jpg', 2),
(13, 'Herschel supply', 89, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-12.jpg', 2),
(14, 'T-Shirt with Sleeve', 40, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-13.jpg', 1),
(15, 'Pretty Little Thing', 59, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-14.jpg', 1),
(16, 'Square Neck Back', 88, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/product-16.jpg', 1),
(17, 'Large 70 L Backpack', 543, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/beg.jpeg', 3),
(18, 'prikli Waist Bag for Men', 98, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/beg-1.jpeg', 3),
(19, 'White White Runner', 876, 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus\r\nligula. Mauris consequat ornare feugiat.', 'pro_images/shoes.jpeg', 4),
(20, 'Sneakers For Men', 897, 'Lightweight,Comfort,Summer,Trendy,Walking,Outdoor,Stylish,Training,Daily Use For Men (White)', 'pro_images/shoes-1.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `shop_ucontact`
--

CREATE TABLE `shop_ucontact` (
  `uindex` int(11) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `umessage` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_ucontact`
--

INSERT INTO `shop_ucontact` (`uindex`, `uemail`, `umessage`) VALUES
(1, 'rajesh91@gmail.com', 'hello how are you'),
(2, 'rajesh91@gmail.com', 'wcec');

-- --------------------------------------------------------

--
-- Table structure for table `shop_wish`
--

CREATE TABLE `shop_wish` (
  `cid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `p_id_id` int(11) NOT NULL,
  `u_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `shop_cart_p_id_id_446b22d9_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_cart_u_id_id_62665062_fk_auth_user_id` (`u_id_id`);

--
-- Indexes for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `shop_order_u_id_id_2095f4a5_fk_auth_user_id` (`u_id_id`);

--
-- Indexes for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  ADD PRIMARY KEY (`otid`),
  ADD KEY `shop_o_item_p_id_id_4d8a0e3f_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_o_item_o_id_id_1cf29ae7_fk_shop_order_oid` (`o_id_id`);

--
-- Indexes for table `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_payment_user_id_c27b5f91_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `shop_product_c_id_id_4f40b343_fk_shop_catagory_cid` (`c_id_id`);

--
-- Indexes for table `shop_ucontact`
--
ALTER TABLE `shop_ucontact`
  ADD PRIMARY KEY (`uindex`);

--
-- Indexes for table `shop_wish`
--
ALTER TABLE `shop_wish`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `shop_wish_p_id_id_a0edf26d_fk_shop_product_pid` (`p_id_id`),
  ADD KEY `shop_wish_u_id_id_c86a2073_fk_auth_user_id` (`u_id_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  MODIFY `otid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shop_ucontact`
--
ALTER TABLE `shop_ucontact`
  MODIFY `uindex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_wish`
--
ALTER TABLE `shop_wish`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD CONSTRAINT `shop_cart_p_id_id_446b22d9_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`),
  ADD CONSTRAINT `shop_cart_u_id_id_62665062_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `shop_order_u_id_id_2095f4a5_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_o_item`
--
ALTER TABLE `shop_o_item`
  ADD CONSTRAINT `shop_o_item_o_id_id_1cf29ae7_fk_shop_order_oid` FOREIGN KEY (`o_id_id`) REFERENCES `shop_order` (`oid`),
  ADD CONSTRAINT `shop_o_item_p_id_id_4d8a0e3f_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`);

--
-- Constraints for table `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD CONSTRAINT `shop_payment_user_id_c27b5f91_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_c_id_id_4f40b343_fk_shop_catagory_cid` FOREIGN KEY (`c_id_id`) REFERENCES `shop_catagory` (`cid`);

--
-- Constraints for table `shop_wish`
--
ALTER TABLE `shop_wish`
  ADD CONSTRAINT `shop_wish_p_id_id_a0edf26d_fk_shop_product_pid` FOREIGN KEY (`p_id_id`) REFERENCES `shop_product` (`pid`),
  ADD CONSTRAINT `shop_wish_u_id_id_c86a2073_fk_auth_user_id` FOREIGN KEY (`u_id_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
