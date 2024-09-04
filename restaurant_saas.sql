-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 07:42 AM
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
-- Database: `restaurant_saas`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `theme` int(11) NOT NULL,
  `maintenance_mode` int(11) NOT NULL DEFAULT 2 COMMENT '1=yes,2=no',
  `login_required` varchar(20) NOT NULL COMMENT '1 for Yes , 2 For NO',
  `about_content` longtext DEFAULT NULL,
  `fb` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `android` text DEFAULT NULL,
  `ios` text DEFAULT NULL,
  `app_bottom_image` text DEFAULT NULL,
  `mobile_app_image` varchar(255) DEFAULT NULL,
  `mobile_app_title` text DEFAULT NULL,
  `mobile_app_description` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_title` varchar(20) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_description` longtext DEFAULT NULL,
  `notification_tune` text NOT NULL COMMENT 'Notification For Admin',
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `currency` varchar(11) DEFAULT NULL,
  `currency_position` int(11) DEFAULT NULL COMMENT '1=left,2=right\r\n',
  `max_order_qty` int(11) NOT NULL,
  `min_order_amount` int(11) NOT NULL,
  `max_order_amount` int(11) NOT NULL,
  `map` text NOT NULL,
  `firebase` text NOT NULL,
  `referral_amount` int(11) NOT NULL,
  `timezone` text DEFAULT NULL,
  `lat` text NOT NULL,
  `lang` text NOT NULL,
  `image` varchar(50) DEFAULT NULL COMMENT 'about-image',
  `logo` varchar(255) DEFAULT NULL,
  `footer_title` varchar(255) DEFAULT NULL,
  `footer_description` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `footer_bg_image` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `auth_bg_image` varchar(255) DEFAULT NULL,
  `breadcrumb_bg_image` varchar(255) DEFAULT NULL,
  `booknow_bg_image` varchar(255) NOT NULL,
  `reviews_bg_image` varchar(255) NOT NULL,
  `mobile_app_bg_image` varchar(255) DEFAULT NULL,
  `pickup_delivery` int(11) DEFAULT NULL,
  `verification` varchar(50) DEFAULT NULL,
  `current_version` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `vendor_id`, `theme`, `maintenance_mode`, `login_required`, `about_content`, `fb`, `youtube`, `insta`, `android`, `ios`, `app_bottom_image`, `mobile_app_image`, `mobile_app_title`, `mobile_app_description`, `copyright`, `title`, `short_title`, `og_title`, `og_description`, `notification_tune`, `mobile`, `email`, `address`, `currency`, `currency_position`, `max_order_qty`, `min_order_amount`, `max_order_amount`, `map`, `firebase`, `referral_amount`, `timezone`, `lat`, `lang`, `image`, `logo`, `footer_title`, `footer_description`, `footer_logo`, `footer_bg_image`, `favicon`, `og_image`, `auth_bg_image`, `breadcrumb_bg_image`, `booknow_bg_image`, `reviews_bg_image`, `mobile_app_bg_image`, `pickup_delivery`, `verification`, `current_version`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, '1', '<p><strong>Lorem is About content</strong><br />\n<br />\nAbout is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.facebook.com/Gravity-Infotech-108536971111610', 'https://www.youtube.com/channel/UCm3rAUYzqSNcoIUsyjBWN9g', 'https://www.instagram.com/gravity__infotech/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'app_bottom_image-62e129820809a.png', 'mobile_app_image-62e3b6a60bdcd.png', 'Single Restaurant Food Ordering App', 'Experience the revolutionised & user-friendly top online food ordering system to skyrocket Food & Beverages sales.', 'Copyright © 2023. Designed & Developed By Gravity Infotech', 'Single Restaurant', 'Single Restaurant', 'Single Restaurant Food Ordering Website & Mobile Application With Backend Admin Panel', 'Restaurant Website is a catalyst for the food industry. The website lets you (a restaurateur) connect with the customers who wish to either get food delivered or pick-up food. The website lets you track customers’ order till the food delivery. With this website you can easily manage the entire restaurant food business to achieve maximum growth.', 'notification.mp3', '+919499874557', 'infotechgravity@gmail.com', 'Green Road, Uttran, Surat, Gujarat, India', '$', 1, 1000, 0, 2147483647, 'AIzaSyCl1kjfJhwYNO0vMXtvSKtQkTBxmpeLgJg', 'AAAAZh9eoHQ:APA91bH1iy9rjcx4QUDggfhVew-97LRjxXoKnHZuXv2uxywp9NV3zGmGJvWPMmslU72YbPdqSWk6bnhd6sPBCYPstNIWit-wEf9Iy4on1Q6qTEIHJIvA_WwywDGVsxMNGQvH-26gD6fz', 30, 'Asia/Kolkata', '21.2351933', '72.85922029999999', 'about-610a3158acf2a.jpg', 'logo-62b93426e9463.png', 'The Best Restaurants in Your Town.', 'Lorem ipsum dolor sit amet, ectetur adipiscing elit. Pharetra, a phasellus mattis mi arcu urna Pharetra, a phasellu', 'footer-62b93426e8bb2.png', 'footer_bg_image-63739314e14b4.jpg', 'favicon-6375fdb2d5d7c.png', 'og_image-62e3b84c9ecd4.png', 'auth_bg_image-6373941ba3c7e.jpg', 'breadcrumb_bg_image-6373941bb24ff.jpg', 'booknow_bg_image-637393cd7c886.png', 'reviews_bg_image-6373938f33b3e.png', 'mobile_app_bg_image-637393b08f1aa.png', 1, 'mobile', '9.0', '2023-07-25 11:36:54', '2023-07-25 06:06:54'),
(2, 15, 3, 2, '1', '<p><strong>Lorem is About content</strong><br />\r\n<br />\r\nAbout is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.facebook.com/Gravity-Infotech-108536971111610', 'https://www.youtube.com/channel/UCm3rAUYzqSNcoIUsyjBWN9g', 'https://www.instagram.com/gravity__infotech/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'app_bottom_image-62e129820809a.png', 'mobile_app_image-62e3b6a60bdcd.png', 'Single Restaurant Food Ordering App', 'Experience the revolutionised & user-friendly top online food ordering system to skyrocket Food & Beverages sales.', 'Copyright © 2023. Designed & Developed By Gravity Infotech', 'Single Restaurant', 'Single Restaurant', 'Single Restaurant Food Ordering Website & Mobile Application With Backend Admin Panel', 'Restaurant Website is a catalyst for the food industry. The website lets you (a restaurateur) connect with the customers who wish to either get food delivered or pick-up food. The website lets you track customers’ order till the food delivery. With this website you can easily manage the entire restaurant food business to achieve maximum growth.', 'notification.mp3', '+919499874557', 'infotechgravity@gmail.com', 'Green Road, Uttran, Surat, Gujarat, India', '$', 1, 1000, 0, 2147483647, 'AIzaSyCl1kjfJhwYNO0vMXtvSKtQkTBxmpeLgJg', 'AAAAZh9eoHQ:APA91bH1iy9rjcx4QUDggfhVew-97LRjxXoKnHZuXv2uxywp9NV3zGmGJvWPMmslU72YbPdqSWk6bnhd6sPBCYPstNIWit-wEf9Iy4on1Q6qTEIHJIvA_WwywDGVsxMNGQvH-26gD6fz', 30, 'Asia/Kolkata', '21.2351933', '72.85922029999999', 'about-610a3158acf2a.jpg', 'logo-62b93426e9463.png', 'The Best Restaurants in Your Town.', 'Lorem ipsum dolor sit amet, ectetur adipiscing elit. Pharetra, a phasellus mattis mi arcu urna Pharetra, a phasellu', 'footer-62b93426e8bb2.png', 'footer_bg_image-63739314e14b4.jpg', 'favicon-6375fdb2d5d7c.png', 'og_image-62e3b84c9ecd4.png', 'auth_bg_image-6373941ba3c7e.jpg', 'breadcrumb_bg_image-6373941bb24ff.jpg', 'booknow_bg_image-637393cd7c886.png', 'reviews_bg_image-6373938f33b3e.png', 'mobile_app_bg_image-637393b08f1aa.png', 1, 'mobile', '9.0', '2023-07-26 08:55:45', '2023-07-25 06:06:54'),
(3, 13, 3, 2, '1', '<p><strong>Lorem is About content</strong><br />\r\n<br />\r\nAbout is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.facebook.com/Gravity-Infotech-108536971111610', 'https://www.youtube.com/channel/UCm3rAUYzqSNcoIUsyjBWN9g', 'https://www.instagram.com/gravity__infotech/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'app_bottom_image-62e129820809a.png', 'mobile_app_image-62e3b6a60bdcd.png', 'Single Restaurant Food Ordering App', 'Experience the revolutionised & user-friendly top online food ordering system to skyrocket Food & Beverages sales.', 'Copyright © 2023. Designed & Developed By Gravity Infotech', 'Single Restaurant', 'Single Restaurant', 'Single Restaurant Food Ordering Website & Mobile Application With Backend Admin Panel', 'Restaurant Website is a catalyst for the food industry. The website lets you (a restaurateur) connect with the customers who wish to either get food delivered or pick-up food. The website lets you track customers’ order till the food delivery. With this website you can easily manage the entire restaurant food business to achieve maximum growth.', 'notification.mp3', '+919499874557', 'infotechgravity@gmail.com', 'Green Road, Uttran, Surat, Gujarat, India', '$', 1, 1000, 0, 2147483647, 'AIzaSyCl1kjfJhwYNO0vMXtvSKtQkTBxmpeLgJg', 'AAAAZh9eoHQ:APA91bH1iy9rjcx4QUDggfhVew-97LRjxXoKnHZuXv2uxywp9NV3zGmGJvWPMmslU72YbPdqSWk6bnhd6sPBCYPstNIWit-wEf9Iy4on1Q6qTEIHJIvA_WwywDGVsxMNGQvH-26gD6fz', 30, 'Asia/Kolkata', '21.2351933', '72.85922029999999', 'about-610a3158acf2a.jpg', 'logo-62b93426e9463.png', 'The Best Restaurants in Your Town.', 'Lorem ipsum dolor sit amet, ectetur adipiscing elit. Pharetra, a phasellus mattis mi arcu urna Pharetra, a phasellu', 'footer-62b93426e8bb2.png', 'footer_bg_image-63739314e14b4.jpg', 'favicon-6375fdb2d5d7c.png', 'og_image-62e3b84c9ecd4.png', 'auth_bg_image-6373941ba3c7e.jpg', 'breadcrumb_bg_image-6373941bb24ff.jpg', 'booknow_bg_image-637393cd7c886.png', 'reviews_bg_image-6373938f33b3e.png', 'mobile_app_bg_image-637393b08f1aa.png', 1, 'mobile', '9.0', '2023-07-27 06:56:52', '2023-07-25 06:06:54'),
(4, 12, 3, 2, '1', '<p><strong>Lorem is About content</strong><br />\r\n<br />\r\nAbout is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.facebook.com/Gravity-Infotech-108536971111610', 'https://www.youtube.com/channel/UCm3rAUYzqSNcoIUsyjBWN9g', 'https://www.instagram.com/gravity__infotech/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'app_bottom_image-62e129820809a.png', 'mobile_app_image-62e3b6a60bdcd.png', 'Single Restaurant Food Ordering App', 'Experience the revolutionised & user-friendly top online food ordering system to skyrocket Food & Beverages sales.', 'Copyright © 2023. Designed & Developed By Gravity Infotech', 'Single Restaurant', 'Single Restaurant', 'Single Restaurant Food Ordering Website & Mobile Application With Backend Admin Panel', 'Restaurant Website is a catalyst for the food industry. The website lets you (a restaurateur) connect with the customers who wish to either get food delivered or pick-up food. The website lets you track customers’ order till the food delivery. With this website you can easily manage the entire restaurant food business to achieve maximum growth.', 'notification.mp3', '+919499874557', 'infotechgravity@gmail.com', 'Green Road, Uttran, Surat, Gujarat, India', '$', 1, 1000, 0, 2147483647, 'AIzaSyCl1kjfJhwYNO0vMXtvSKtQkTBxmpeLgJg', 'AAAAZh9eoHQ:APA91bH1iy9rjcx4QUDggfhVew-97LRjxXoKnHZuXv2uxywp9NV3zGmGJvWPMmslU72YbPdqSWk6bnhd6sPBCYPstNIWit-wEf9Iy4on1Q6qTEIHJIvA_WwywDGVsxMNGQvH-26gD6fz', 30, 'Asia/Kolkata', '21.2351933', '72.85922029999999', 'about-610a3158acf2a.jpg', 'logo-62b93426e9463.png', 'The Best Restaurants in Your Town.', 'Lorem ipsum dolor sit amet, ectetur adipiscing elit. Pharetra, a phasellus mattis mi arcu urna Pharetra, a phasellu', 'footer-62b93426e8bb2.png', 'footer_bg_image-63739314e14b4.jpg', 'favicon-6375fdb2d5d7c.png', 'og_image-62e3b84c9ecd4.png', 'auth_bg_image-6373941ba3c7e.jpg', 'breadcrumb_bg_image-6373941bb24ff.jpg', 'booknow_bg_image-637393cd7c886.png', 'reviews_bg_image-6373938f33b3e.png', 'mobile_app_bg_image-637393b08f1aa.png', 1, 'mobile', '9.0', '2023-07-27 06:56:52', '2023-07-25 06:06:54'),
(5, 11, 3, 2, '1', '<p><strong>Lorem is About content</strong><br />\r\n<br />\r\nAbout is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.facebook.com/Gravity-Infotech-108536971111610', 'https://www.youtube.com/channel/UCm3rAUYzqSNcoIUsyjBWN9g', 'https://www.instagram.com/gravity__infotech/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'app_bottom_image-62e129820809a.png', 'mobile_app_image-62e3b6a60bdcd.png', 'Single Restaurant Food Ordering App', 'Experience the revolutionised & user-friendly top online food ordering system to skyrocket Food & Beverages sales.', 'Copyright © 2023. Designed & Developed By Gravity Infotech', 'Single Restaurant', 'Single Restaurant', 'Single Restaurant Food Ordering Website & Mobile Application With Backend Admin Panel', 'Restaurant Website is a catalyst for the food industry. The website lets you (a restaurateur) connect with the customers who wish to either get food delivered or pick-up food. The website lets you track customers’ order till the food delivery. With this website you can easily manage the entire restaurant food business to achieve maximum growth.', 'notification.mp3', '+919499874557', 'infotechgravity@gmail.com', 'Green Road, Uttran, Surat, Gujarat, India', '$', 1, 1000, 0, 2147483647, 'AIzaSyCl1kjfJhwYNO0vMXtvSKtQkTBxmpeLgJg', 'AAAAZh9eoHQ:APA91bH1iy9rjcx4QUDggfhVew-97LRjxXoKnHZuXv2uxywp9NV3zGmGJvWPMmslU72YbPdqSWk6bnhd6sPBCYPstNIWit-wEf9Iy4on1Q6qTEIHJIvA_WwywDGVsxMNGQvH-26gD6fz', 30, 'Asia/Kolkata', '21.2351933', '72.85922029999999', 'about-610a3158acf2a.jpg', 'logo-62b93426e9463.png', 'The Best Restaurants in Your Town.', 'Lorem ipsum dolor sit amet, ectetur adipiscing elit. Pharetra, a phasellus mattis mi arcu urna Pharetra, a phasellu', 'footer-62b93426e8bb2.png', 'footer_bg_image-63739314e14b4.jpg', 'favicon-6375fdb2d5d7c.png', 'og_image-62e3b84c9ecd4.png', 'auth_bg_image-6373941ba3c7e.jpg', 'breadcrumb_bg_image-6373941bb24ff.jpg', 'booknow_bg_image-637393cd7c886.png', 'reviews_bg_image-6373938f33b3e.png', 'mobile_app_bg_image-637393b08f1aa.png', 1, 'mobile', '9.0', '2023-07-27 06:56:52', '2023-07-25 06:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `vendor_id`, `name`, `price`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 0, 'Red chutney', '5', 1, 2, '2022-04-09 07:40:05', '2022-06-11 06:36:34'),
(2, 0, 'Bread', '0', 1, 2, '2022-04-09 07:40:39', '2022-06-11 06:36:32'),
(3, 0, 'Fried tomatos', '35369.50', 1, 2, '2022-04-09 07:41:18', '2023-03-04 18:23:20'),
(4, 0, 'Onions', '0', 1, 2, '2022-04-09 07:41:43', '2022-06-05 23:29:00'),
(5, 0, 'Butter pav', '5', 1, 2, '2022-04-09 07:42:08', '2022-06-25 18:59:11'),
(6, 0, 'Green chutney', '10', 1, 2, '2022-06-05 23:30:08', '2022-06-05 23:30:08'),
(7, 0, 'Salad', '0', 1, 2, '2022-06-05 23:30:14', '2022-06-05 23:30:14'),
(8, 0, 'Fried onions', '10', 1, 2, '2022-06-05 23:30:32', '2022-06-05 23:30:32'),
(9, 0, 'Masala papad', '15', 1, 2, '2022-06-05 23:30:45', '2022-06-11 06:33:23'),
(10, 0, 'Oregano', '7', 1, 2, '2022-07-25 11:19:50', '2022-07-25 11:19:50'),
(11, 0, 'Bean salad', '10', 1, 2, '2022-07-25 11:21:41', '2022-07-25 11:21:41'),
(12, 0, 'Panzanella', '0.00', 1, 2, '2022-07-25 11:22:16', '2022-07-25 11:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_type` int(11) NOT NULL COMMENT '(1- Home, 2-Office, 3-Other)',
  `address` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `house_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address_type`, `address`, `lat`, `lang`, `area`, `house_no`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 'jbvvv', '41.88625400022249', '-87.6662313938141', 'fvhhg', '599', '2023-07-08 08:30:44', '2023-07-08 08:30:44'),
(5, 7, 1, 'Norwoodport , West Virginia - 86490-8323', '-39.845680', '-73.228240', 'Bartoletti Land', '510', '2023-07-09 14:24:54', '2023-07-09 14:24:54'),
(4, 2, 1, '20 Cooper Square, New York, NY 10003, USA', '24.3948637', '92.1595287', 'Cooper Square', '20', '2023-07-09 04:01:02', '2023-07-09 04:01:02'),
(6, 2, 1, 'Norwoodport , West Virginia - 86490-8323', '-39.845680', '-73.228240', 'Bartoletti Land', '510', '2023-07-13 19:00:25', '2023-07-13 19:00:25'),
(7, 1, 1, 'Norwoodport , West Virginia - 86490-8323', '-39.845680', '-73.228240', 'Bartoletti Land', '510', '2023-07-14 11:43:44', '2023-07-14 11:43:44'),
(8, 2, 3, 'Norwoodport , West Virginia - 86490-8323', '-39.845680', '-73.228240', 'Bartoletti Land', '510', '2023-07-14 14:56:33', '2023-07-14 14:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '1=category,2=item',
  `image` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `section` int(11) NOT NULL DEFAULT 0 COMMENT '1=section-,2=section2,3=section3,4=section4',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `item_id`, `cat_id`, `type`, `image`, `is_available`, `section`, `created_at`, `updated_at`) VALUES
(8, 0, 7, '1', 'banner-6308a4d5c0d16.png', 1, 4, '2022-05-23 03:47:07', '2022-11-18 01:35:36'),
(13, 0, 0, '', 'banner-62f7a6c93d0a5.png', 1, 1, '2022-06-28 16:07:53', '2022-08-13 20:27:37'),
(20, 0, 2, '1', 'banner-6308a1f9c838c.png', 1, 2, '2022-06-29 13:54:52', '2022-08-26 17:35:37'),
(23, 0, 0, '', 'banner-62f7a77420a2c.png', 1, 3, '2022-07-08 17:06:31', '2022-08-13 20:30:28'),
(24, 0, 0, '', 'banner-62f7a6d1eb86e.png', 1, 1, '2022-07-08 17:55:06', '2022-08-13 20:27:45'),
(27, 0, 0, '', 'banner-62f7a6d88f662.png', 1, 1, '2022-07-09 11:19:10', '2022-08-13 20:27:52'),
(29, 44, 9, '2', 'banner-62f7a706323c7.png', 1, 1, '2022-08-13 20:28:38', '2022-08-13 20:28:38'),
(30, 18, 9, '1', 'banner-62f7a739ca437.png', 2, 1, '2022-08-13 20:29:29', '2023-07-20 05:01:10'),
(31, 38, 6, '1', 'banner-62f7a7a826230.png', 1, 3, '2022-08-13 20:31:20', '2022-08-13 20:31:20'),
(32, 39, 3, '2', 'banner-62f7a7cab3e91.png', 1, 3, '2022-08-13 20:31:54', '2022-08-13 20:31:54'),
(33, NULL, NULL, NULL, 'banner-62f7a832c7ea7.png', 1, 3, '2022-08-13 20:33:38', '2022-08-13 20:33:38'),
(34, NULL, NULL, NULL, 'banner-62f7a8402d9d1.png', 1, 3, '2022-08-13 20:33:52', '2022-08-13 20:33:52'),
(35, NULL, NULL, NULL, 'banner-62f7a84e1f2f2.png', 1, 3, '2022-08-13 20:34:06', '2022-08-13 20:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

CREATE TABLE `banner_image` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `booking_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `guests` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `reservation_type` varchar(255) NOT NULL,
  `special_request` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=pending,2=accepted,3=rejected',
  `table_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `vendor_id`, `booking_number`, `name`, `email`, `mobile`, `guests`, `date`, `time`, `reservation_type`, `special_request`, `status`, `table_number`, `created_at`, `updated_at`) VALUES
(1, 0, '203BE92DBN', 'asd', 'sfsdg@fghfgh.fghfg', '345345435', 3, '11-07-2023', '06:37 PM', 'visit', NULL, 1, NULL, '2023-07-10 17:37:37', '2023-07-10 17:37:37'),
(2, 0, '7NDJ4G9CF6', 'fghgf', 'fghfg@dfgdf.fhg', 'fghdffg', 4, '13-07-2023', '09:10 AM', 'fghfg', 'hfghfgh', 1, NULL, '2023-07-13 14:41:07', '2023-07-13 14:41:07'),
(3, 0, '4HSIK6LZPN', 'Dumm', 'dumm@symm.org', '+19003424540', 5, '13-07-2023', '10:35 PM', 'Royal', NULL, 1, NULL, '2023-07-13 15:33:51', '2023-07-13 15:33:51'),
(4, 0, 'WS47MV2XXN', 'John Doe', 'john.doe@gmail.com', '19876543210', 2, '20-07-2023', '02:00 PM', 'Reserved', NULL, 1, NULL, '2023-07-13 20:26:03', '2023-07-13 20:26:03'),
(5, 0, 'QDBQMC7BT8', 'Natalia Sukmalina', 'kasir@supermarket.com', '0215761428', 3, '15-07-2023', '01:59 PM', 'tes', NULL, 1, NULL, '2023-07-14 01:31:32', '2023-07-14 01:31:32'),
(6, 0, 'WIK7OG98JX', 'Ade', 'bloggpilot@gmail.com', '09078787878', 1, '15-07-2023', '03:30 PM', 'online', NULL, 1, NULL, '2023-07-14 02:27:40', '2023-07-14 02:27:40'),
(7, 0, 'A2KST52QLL', 'Carlos dada', 'staff@example.com', '+5579998155711', 4, '14-07-2023', '08:56 PM', 'casal', NULL, 1, NULL, '2023-07-14 07:57:53', '2023-07-14 07:57:53'),
(8, 0, 'XHTOZ1Q2H7', 'salah fouad', 'laid@gmail.com', '+213667519033', 0, '15-07-2023', '11:20 AM', 'ggg', NULL, 1, NULL, '2023-07-14 08:19:36', '2023-07-14 08:19:36'),
(9, 0, 'VN5PMRF5ZQ', 'Reservasi', 'makecreativestuio.id@gmail.com', '081154282900', 13, '15-07-2023', '01:10 PM', '21', '214', 1, NULL, '2023-07-14 13:08:08', '2023-07-14 13:08:08'),
(10, 0, 'Q428L00F4P', 'Patrick Axel Müller Suárez', 'patrickms@gmail.com', '+34646426442', 2, '16-07-2023', '09:49 PM', '1', NULL, 1, NULL, '2023-07-14 20:50:16', '2023-07-14 20:50:16'),
(11, 0, 'CFAUJPDXCJ', 'ravi', 'varma@gmail.com', '9606590556', 4, '15-07-2023', '11:07 AM', 'aaaa', NULL, 1, NULL, '2023-07-15 02:37:36', '2023-07-15 02:37:36'),
(12, 0, 'FS5VWT96ML', 'Tanin salim', 'systemsila1@gmail.com', '0745674302', 3, '16-07-2023', '10:02 AM', 'pro', 'test', 1, NULL, '2023-07-15 06:31:55', '2023-07-15 06:31:55'),
(13, 0, 'JS532KLBDF', 'RAFIK FERKAL', 'systemsila1@gmail.com', '0745674302', 3, '16-07-2023', '11:43 AM', 'pro', NULL, 1, NULL, '2023-07-15 07:43:29', '2023-07-15 07:43:29'),
(14, 0, '4DQM1D6S6G', 'asdasd', 'asdasd@sadasd.com', 'asdasd', 2, '22-07-2023', '08:35 PM', 'dhajsdhkjasd', 'asdasd', 1, NULL, '2023-07-15 15:33:30', '2023-07-15 15:33:30'),
(15, 0, 'G0H83B4JVU', 'Sandeep Verma', 'admin@admin.com', '6002408538', 4, '16-07-2023', '11:03 PM', 'Special', NULL, 1, NULL, '2023-07-15 16:31:48', '2023-07-15 16:31:48'),
(16, 0, 'RZLG0M9IOP', 'JACINTAR MUNG\'ASIA KADASYA', 'wdfg@sdfg.gyjg', '0728484934', 5, '16-07-2023', '11:38 PM', 'fg', NULL, 1, NULL, '2023-07-16 18:39:01', '2023-07-16 18:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_type` int(11) DEFAULT NULL COMMENT '1=veg,2=nonveg',
  `addons_id` varchar(255) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_price` varchar(255) DEFAULT NULL,
  `addons_total_price` float DEFAULT 0,
  `variation_id` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `item_price` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `session_id`, `item_id`, `item_name`, `item_image`, `item_type`, `addons_id`, `addons_name`, `addons_price`, `addons_total_price`, `variation_id`, `variation`, `qty`, `item_price`, `tax`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 0, 'i1q4wzPQfG3xOMISAi8JwCMufBaXw8k5kRpM7czI', '12', 'Plain Cheese Pizza', 'item-6253b79f5a4aa.jpg', 1, '', '', '', 0, '18', 'Regular', 1, '30', '5', 1, '2023-07-05 10:33:10', '2023-07-05 10:33:10'),
(4, 0, 'o2R2ZL6Db334jINHgBQ7h88Ha6ft0lS3h01HfCTN', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-06 12:21:10', '2023-07-06 12:21:10'),
(5, 0, '4EwWI2dzDjOai4IlaDd0ZR3P5oiM9ZvXdnE5EoE3', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', 1, '50', '0', 1, '2023-07-06 12:35:21', '2023-07-06 12:35:21'),
(7, 0, 'ZbrNAK8RRiGv4WoPQv791hG16pIGaxRzA3KobDqr', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-07 11:27:51', '2023-07-07 11:27:51'),
(8, NULL, 'DLHVLYoLMcoI', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20.00', '50', 1, '2023-07-07 13:33:18', '2023-07-07 13:33:18'),
(9, 0, 'pssG9WXd78mnLov9Ot3gQlCXVYMC2Sn3zoFrGm2Y', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-07 13:34:40', '2023-07-07 13:34:40'),
(10, 0, 'VhWsTMoFx68kiDPqkTItPZUKsZqTiyWJnCdME87E', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-07 15:55:00', '2023-07-07 15:55:00'),
(15, NULL, 'R5mQ9qFVCK2D', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '0.00', 0, '', '', 1, '50.00', '0', 1, '2023-07-08 09:26:08', '2023-07-08 09:26:08'),
(18, 0, '8mPYn1FlI9gNdSnEVS5GLmHmqS7CzC5R9XiwXNqs', '6', 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '', '', '', 0, '', '', 1, '120', '6', 1, '2023-07-08 18:27:21', '2023-07-08 18:27:21'),
(21, NULL, '0Wy6UdlDlglm', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '0.00', 0, '0', '', 1, '50.00', '0', 1, '2023-07-09 04:00:14', '2023-07-09 04:00:14'),
(23, 0, '3AOja1q3RWSSjAf3vuMfvkTYER1dSbiLqQzny2gJ', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '1', 'Red chutney', '5', 5, '37', 'Single', 1, '50', '8', 1, '2023-07-09 04:49:52', '2023-07-09 04:49:52'),
(24, 0, 'qt5XLDUOmorp5aQEb1Vlc0kU0AWMVZsmitsMFzIK', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-09 06:44:32', '2023-07-09 06:44:32'),
(26, 7, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-09 14:25:03', '2023-07-09 14:25:03'),
(27, 7, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-09 14:25:05', '2023-07-09 14:25:05'),
(29, NULL, 'iFkX1xlcasjR', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '5', 'Butter pav', '5.00', 5, '', '', 1, '99.00', '7', 1, '2023-07-10 16:45:44', '2023-07-10 16:45:44'),
(30, 0, 'J3tU19MD5X6jYBXDSXCdfl5vO8jDNsEEPai4dHrz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-10 17:36:19', '2023-07-10 17:36:19'),
(31, 0, 'D6VGLhXzsjbnaJl4oXgUt6ofzUbwwLigOMNd5QAr', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-10 21:50:17', '2023-07-10 21:50:17'),
(32, 0, '7IewFagwHShSQIjHkZrlmCNaEvjHsSSAEMMFs5Hm', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-10 22:26:11', '2023-07-10 22:26:11'),
(33, 0, '7IewFagwHShSQIjHkZrlmCNaEvjHsSSAEMMFs5Hm', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1,2', 'Red chutney,Bread', '5,0', 5, '15', 'Regular', 1, '40', '0', 1, '2023-07-10 22:26:28', '2023-07-10 22:26:28'),
(34, 0, 'WgK0J5QTIUAzBCn8ILsB8n7m00fFcxjb9Y3QmTZA', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 07:03:22', '2023-07-11 07:03:22'),
(35, 0, '2iYSIeYlLk8bB0jZPv0cCRiEPVlvHLq0aQEYE68q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 08:01:14', '2023-07-11 08:01:14'),
(36, 0, 'KORMYY8B2tpVQDx9hf5wQhO8YZRNngeMS0k5nzt1', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 08:02:52', '2023-07-11 08:02:52'),
(37, 0, '7FnkI2PbLE3CagTaqqfm1nbH3SFO6vxg12PWtDkI', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-11 09:45:27', '2023-07-11 09:45:27'),
(38, 0, '9to4Ph37yf6x1QYg2P31q7Vn3KMZavQV1bn2m1ST', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 14:26:06', '2023-07-11 14:26:06'),
(39, 0, '9to4Ph37yf6x1QYg2P31q7Vn3KMZavQV1bn2m1ST', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 14:26:11', '2023-07-11 14:26:11'),
(41, 0, '9to4Ph37yf6x1QYg2P31q7Vn3KMZavQV1bn2m1ST', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-11 14:26:22', '2023-07-11 14:26:22'),
(43, 0, 'mQJDWjXXuAZubxrFcm2zoIeRomOGoD970PB1eCpq', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-12 11:24:58', '2023-07-12 11:24:58'),
(44, 0, 'zhLkgmcQC2suHJMn1MuakTg0Y5huRSozQbpQK5k3', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '1,2', 'Red chutney,Bread', '5,0', 5, '38', 'Combo', 1, '80', '8', 1, '2023-07-12 15:42:24', '2023-07-12 15:42:24'),
(45, 0, 'Ey6QstC6eK8Bz9BO0jj3W3Ds5BCDhkaKcYbKK0nm', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-12 18:29:50', '2023-07-12 18:29:50'),
(46, 0, 'M3EMKiSrGl4WA2J1JG2QQpw8svM47hNLZD25yrIl', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-12 19:51:33', '2023-07-12 19:51:33'),
(47, 0, 'M3EMKiSrGl4WA2J1JG2QQpw8svM47hNLZD25yrIl', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '56', 'Jain', 1, '30', '50', 1, '2023-07-12 19:51:49', '2023-07-12 19:51:49'),
(48, 0, 'sCLwJlalmmBTqEpo4ZbSNVuYDga4QzE2Bk5r6pSj', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-12 22:50:13', '2023-07-12 22:50:13'),
(49, 0, 'Yqdk4CZ4XlB0k835KyPQxtTPA9OUrnLHB8jdmUXg', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2', 'Bread', '0', 0, '', '', 1, '120', '5', 1, '2023-07-12 23:11:10', '2023-07-12 23:11:10'),
(50, 0, 'cTJ8tQaS6mjoPfiVmHCnMXvftqBwfrI3lqM7Lavz', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-13 03:29:22', '2023-07-13 03:29:22'),
(51, 0, 'ctSF4AgzmvGxq1LwjmmssoEq4Y93RqsDy5gtdeAG', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 03:35:34', '2023-07-13 03:35:34'),
(52, 0, 'NX5IlHpcawp62zcQLW2Ao7wPVkTQukpEJu4jniIL', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-13 04:33:15', '2023-07-13 04:33:15'),
(54, 0, 'PcKjx2XLDEDuRTxKJWxutLXTqTSplrN5LHbDxm89', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-13 10:53:33', '2023-07-13 10:53:33'),
(61, 0, 'nJW049PTQsowCUdxEEls0r0aNFutsJeFsPsEFmwD', '37', 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', 1, '50', '5', 1, '2023-07-13 14:29:09', '2023-07-13 14:29:09'),
(63, 0, 'feWRxTlkvTgD6R7sJblk5PUk0fA7tAGpXD9vJ3Do', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 14:33:11', '2023-07-13 14:33:11'),
(64, 0, 'feWRxTlkvTgD6R7sJblk5PUk0fA7tAGpXD9vJ3Do', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 14:33:18', '2023-07-13 14:33:18'),
(68, 0, 'OqUCzBdAlqpwOVEyDN6cP6WRC9KFE0WGWOpYg9x7', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 14:42:09', '2023-07-13 14:42:09'),
(69, 0, 'd4XRYPa45L30LOFWJdjmC3SiizbvuAgrfOj31EQV', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 14:47:53', '2023-07-13 14:47:53'),
(70, 0, '2JNuqnsiFdFTGfmput2CgS8DsL85pfBgsszYRESi', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 14:58:59', '2023-07-13 14:58:59'),
(71, 0, '2JNuqnsiFdFTGfmput2CgS8DsL85pfBgsszYRESi', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 14:59:44', '2023-07-13 14:59:44'),
(73, 0, 'xjA3wCgOqUtrR9grbW3NzWr6bE5E2ZWfQTpgM4G0', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 15:02:31', '2023-07-13 15:02:31'),
(74, 0, 'E9DinHRpZRIEhK9IWHHTz2ugx0IZ6dpsc2HeKx1J', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 15:02:50', '2023-07-13 15:02:50'),
(75, 0, 'E9DinHRpZRIEhK9IWHHTz2ugx0IZ6dpsc2HeKx1J', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 15:02:56', '2023-07-13 15:02:56'),
(77, 0, 'vUagasPA8ijwsPszBiBSbttjCPVkTq5f6El7O5kb', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 15:05:37', '2023-07-13 15:05:37'),
(78, 0, 'vUagasPA8ijwsPszBiBSbttjCPVkTq5f6El7O5kb', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 15:05:40', '2023-07-13 15:05:40'),
(80, 0, 'B3ldDkl5C404dCv2Us9XzNhAbl8YAdwPlsyHJHHr', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 15:07:59', '2023-07-13 15:07:59'),
(81, 0, 'jXqsO3LkOXWuaaYIXdsNQjWTbji6j7uZqwRYwtti', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 15:09:25', '2023-07-13 15:09:25'),
(82, 0, 'Fhg5FeZNyCMqHtkHiJFXmLjqjxWMurgMjccBQ4f4', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 15:09:36', '2023-07-13 15:09:36'),
(83, 0, 'o1OUFitmeUyqMnc6DOmjVe62KMoselPoBiElJ6Sx', '14', 'Tomato, Onion Pizza', 'item-6253b8300df8b.jpg', 1, '', '', '', 0, '', '', 1, '120', '6', 1, '2023-07-13 15:12:43', '2023-07-13 15:12:43'),
(84, 0, '5RGEt56VgmgIYSGXic5mL9M41Loc5Gz8BtufGFeg', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 15:14:21', '2023-07-13 15:14:21'),
(87, 0, 'IO1xBepWY4aN8508cUzt326NskKPMhz7YOlF0FPH', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 15:18:36', '2023-07-13 15:18:36'),
(88, 0, 'XnLY7t0Oco2vxIDK7okaC2AdTvS0oL6facaXLY6r', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 15:20:52', '2023-07-13 15:20:52'),
(89, 0, 'XnLY7t0Oco2vxIDK7okaC2AdTvS0oL6facaXLY6r', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 15:20:56', '2023-07-13 15:20:56'),
(91, 0, 'KuBh3iuXGx8AxXzh2PQVYLHEJqXO205yI0MuOV7r', '16', 'Super Veggie Pizza', 'item-6253b9571bed9.jpg', 2, '', '', '', 0, '26', 'Small', 1, '30', '6', 1, '2023-07-13 15:25:52', '2023-07-13 15:25:52'),
(95, 0, 'xo4Eiogou1rUxjZiUU91BParwrpeUcOCisy6Tuth', '28', 'Plain Dosa', 'item-6253bf83198f8.jpg', 1, '', '', '', 0, '', '', 1, '30', '9', 1, '2023-07-13 15:29:30', '2023-07-13 15:29:30'),
(96, 0, 'SDDkEhGQTr6yLemU00bcVKZd4sFlUo2DPqdYbvNB', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 15:30:02', '2023-07-13 15:30:02'),
(98, 0, 'Htco3YRMXHpvtOzJ0OVkj8yAQdlboZulFMfRISHX', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-13 15:40:35', '2023-07-13 15:40:35'),
(99, 0, 'uycnF55LryKF8fB5rrVRisbKd5J28XTRMo9VYPV7', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-13 15:41:53', '2023-07-13 15:41:53'),
(108, 0, 'O3SVocAufhoMiXYtgGWgLLNIHMeTdJwtPsGilbWq', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 16:04:47', '2023-07-13 16:04:47'),
(109, 0, 'O3SVocAufhoMiXYtgGWgLLNIHMeTdJwtPsGilbWq', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 2, '50', '0', 1, '2023-07-13 16:04:55', '2023-07-13 16:05:25'),
(110, 0, 'gDiZD9XWa4PPwAwFa4uvXPzWfhD18DTzAsDpMtmq', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2', 'Bread', '0', 0, '', '', 1, '120', '5', 1, '2023-07-13 16:05:26', '2023-07-13 16:05:26'),
(111, 0, 'eZfyXabXir0A0y43qdQbgp6EEkVFBvXQvZuLDecO', '38', 'Crunchy Sandwich', 'item-62bd4a94c0716.jpg', 2, '12', 'Panzanella', '0.00', 0, '', '', 1, '99', '7', 1, '2023-07-13 16:05:32', '2023-07-13 16:05:32'),
(112, 0, 'xV3gJcdg5nEou8re1kltxEfrCPRYWD6F59Jla8dS', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 16:06:03', '2023-07-13 16:06:03'),
(113, 0, '1M91I9HWFV0DUyQPN6K0WJNI7WnA19fChSqzOrYH', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 16:06:59', '2023-07-13 16:06:59'),
(114, 0, 'NmGOhk6noCbE7qM42hyCYqHKL1sApbsRM2sTmNWV', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 16:08:27', '2023-07-13 16:08:27'),
(115, 0, 'sxacm4UQ3VHy3cl4NRl8blpU5FZy9x07128hYRkM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 16:09:15', '2023-07-13 16:09:15'),
(118, 0, '9y3E3ODSMATiSkCabg6G40MUQYBWWb9ZhFkSBfE1', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 16:20:29', '2023-07-13 16:20:29'),
(119, 0, '9y3E3ODSMATiSkCabg6G40MUQYBWWb9ZhFkSBfE1', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 16:20:36', '2023-07-13 16:20:36'),
(120, 0, 'Zc1hAuntPsbBvxFQio44Lwng1TqxWNlqVymAmPZT', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 16:21:14', '2023-07-13 16:21:14'),
(121, 0, 'sjeQWy1SvvHJHhZ9LnIFYztqSz35GVzH2OtJosNm', '32', 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '', '', '', 0, '45', 'Regular', 1, '70', '7', 1, '2023-07-13 16:28:54', '2023-07-13 16:28:54'),
(122, 0, 'ZLdnkuDju3BigdVV8NQY4PrR87EpdmK9hmNffNRI', '18', 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '31', 'Single', 1, '50', '7', 1, '2023-07-13 16:33:47', '2023-07-13 16:33:47'),
(123, 0, 'ZPNn4wypTWYh2UxDYVvlUV2kbCS8OXVh9WwkxzDG', '28', 'Plain Dosa', 'item-6253bf83198f8.jpg', 1, '', '', '', 0, '', '', 1, '30', '9', 1, '2023-07-13 16:44:45', '2023-07-13 16:44:45'),
(124, 0, 'iHK1SW3DmtCqLGMXd5GHkJhZPNCVGzuzdAr46U1W', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 16:52:28', '2023-07-13 16:52:28'),
(125, 0, 'YpxMhiSKCaids6dBxJC85Un4IlYfE2MqfoP1w30c', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-13 16:54:37', '2023-07-13 16:54:37'),
(128, 0, 'LgQyDinm7POEEkhdWXKzLXAgw0ebOWCEiJV1ewzC', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 16:59:32', '2023-07-13 16:59:32'),
(129, 0, 'y7XCnhe2GaadCvzboQGKGAyL05rQV7vJvsEIac7Q', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 17:08:34', '2023-07-13 17:08:34'),
(130, 0, 'y7XCnhe2GaadCvzboQGKGAyL05rQV7vJvsEIac7Q', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 17:08:37', '2023-07-13 17:08:37'),
(131, 0, 'HQKendnN1lxUXhGWMF7MypPEKIvfoyuWQY5BhTol', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 2, '30', '0', 1, '2023-07-13 17:09:16', '2023-07-13 17:09:31'),
(132, 0, 'YJN3VQah3lp6Yugd0Jk1nxqZ8lKw6Ip1VCCh44hZ', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-13 17:15:21', '2023-07-13 17:15:21'),
(133, 0, '35GO5iIYq46vehZohb9E5e1uJRpmET9yFR5vXe0Q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 17:15:41', '2023-07-13 17:15:41'),
(134, 0, '35GO5iIYq46vehZohb9E5e1uJRpmET9yFR5vXe0Q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 17:15:45', '2023-07-13 17:15:45'),
(135, 0, '35GO5iIYq46vehZohb9E5e1uJRpmET9yFR5vXe0Q', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 17:15:56', '2023-07-13 17:15:56'),
(136, 0, 'zjaomVF0HdyVJmWoM8CngCGIaFTC2jWOqtU5kVHY', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-13 17:17:59', '2023-07-13 17:17:59'),
(137, 0, 'bRQhTucngLpHxT1Wps6Osd5BZmTFErQhdikExPhm', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 17:20:48', '2023-07-13 17:20:48'),
(138, 0, 'bRQhTucngLpHxT1Wps6Osd5BZmTFErQhdikExPhm', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-13 17:21:09', '2023-07-13 17:21:09'),
(139, 0, 'i4g2Xn7Ubm9oKSstfMp1bdHdBXlU2quFe2uAuVmz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 17:22:36', '2023-07-13 17:22:36'),
(140, 0, 'i4g2Xn7Ubm9oKSstfMp1bdHdBXlU2quFe2uAuVmz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 17:22:41', '2023-07-13 17:22:41'),
(141, 0, 'i4g2Xn7Ubm9oKSstfMp1bdHdBXlU2quFe2uAuVmz', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '4', 'Onions', '0', 0, '', '', 1, '99', '7', 1, '2023-07-13 17:23:22', '2023-07-13 17:23:22'),
(142, 0, 'i4g2Xn7Ubm9oKSstfMp1bdHdBXlU2quFe2uAuVmz', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-13 17:23:27', '2023-07-13 17:23:27'),
(143, 0, 'i4g2Xn7Ubm9oKSstfMp1bdHdBXlU2quFe2uAuVmz', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '4', 'Onions', '0', 0, '', '', 1, '99', '7', 1, '2023-07-13 17:23:29', '2023-07-13 17:23:29'),
(144, 0, 'PZ0wYEud0Eru0JKYAxRu0gBWPKBp0uVtmzi7D00N', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 17:24:05', '2023-07-13 17:24:05'),
(145, 0, 'PZ0wYEud0Eru0JKYAxRu0gBWPKBp0uVtmzi7D00N', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 17:24:11', '2023-07-13 17:24:11'),
(146, 0, 'e8fELne0AlY4C1h45Lnitqd7xkbncfU7WLOBp5ij', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 17:41:10', '2023-07-13 17:41:10'),
(147, 0, '7JwtE0sXvDBwSML0sgtsD9W6NKDiyoK88yaDNplK', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '2', 'Bread', '0', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 17:44:36', '2023-07-13 17:44:36'),
(148, 0, 'YPJ1KNe7QHwlhiTrPvyMVzl2BS7u12xhbMTUcdBp', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-13 17:58:58', '2023-07-13 17:58:58'),
(149, 0, 'ULbwnL0o1lrzvixZgvpOTZASqMTvlpBZUTPoJRgN', '6', 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '2,3', 'Bread,Fried tomatos', '0,35369.50', 35369.5, '', '', 1, '120', '6', 1, '2023-07-13 18:02:05', '2023-07-13 18:02:05'),
(150, 0, 'RE5VtBQk1oj8xPPQJIM4yXE8f4hmBadkVY7PlE2w', '18', 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '32', 'Combo', 1, '70', '7', 1, '2023-07-13 18:04:10', '2023-07-13 18:04:10'),
(151, 0, 'HA9qc0XjAaOTMgfgE5RZvfw8LfeFcED8JpngCLJD', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 18:08:30', '2023-07-13 18:08:30'),
(152, 0, 'msOa7rv0bBNAq1sYHfTgQSJ1aNaNxneLvBD4BMb2', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 18:10:46', '2023-07-13 18:10:46'),
(153, 0, 'msOa7rv0bBNAq1sYHfTgQSJ1aNaNxneLvBD4BMb2', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 18:10:49', '2023-07-13 18:10:49'),
(154, 0, 'msOa7rv0bBNAq1sYHfTgQSJ1aNaNxneLvBD4BMb2', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 18:10:50', '2023-07-13 18:10:50'),
(155, 0, 'msOa7rv0bBNAq1sYHfTgQSJ1aNaNxneLvBD4BMb2', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 18:10:53', '2023-07-13 18:10:53'),
(157, 0, '1mvM5bIMeuTfzIUCgEv2CLmuYVPtz2W3zs7mYpyj', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 18:37:07', '2023-07-13 18:37:07'),
(158, 0, '1mvM5bIMeuTfzIUCgEv2CLmuYVPtz2W3zs7mYpyj', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 18:37:09', '2023-07-13 18:37:09'),
(159, 0, 'XqSxibO00WzPkVlhsngvBmNvibuIr543AAHsSLwz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 18:39:47', '2023-07-13 18:39:47'),
(160, 0, 'NtzjeThXMa4ehxlzSSH0qZ63ABBsyOPclScWi9vt', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-13 18:41:37', '2023-07-13 18:41:37'),
(163, 0, '0hk5hCpRqzBzs2gYupSfeDCyHzkF1efZ6bc4Ccxe', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 19:10:29', '2023-07-13 19:10:29'),
(164, 0, '0hk5hCpRqzBzs2gYupSfeDCyHzkF1efZ6bc4Ccxe', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 19:10:42', '2023-07-13 19:10:42'),
(165, 0, '5jMcOiJLhwnYbhxPtKHH0Ahh8g3Ca8aaoas2tG2h', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 19:18:26', '2023-07-13 19:18:26'),
(166, 0, '7K9d6MH7JJ0xP6tetLfFeHh8EOLGuLd8B7UEf8L1', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 19:20:03', '2023-07-13 19:20:03'),
(167, 0, 'Cxcz0HZQhMMC4cjCZeMgVCbOhT7S3pC9VarKSfoz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 19:20:19', '2023-07-13 19:20:19'),
(168, 0, 'Cxcz0HZQhMMC4cjCZeMgVCbOhT7S3pC9VarKSfoz', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 19:20:31', '2023-07-13 19:20:31'),
(169, 0, 'E0sILrAFOdl3p7v49ocDBHec8cJnQYW5k6CHYtlC', '17', 'Veg. Burger', 'item-6253bc7f6c31e.jpg', 1, '1', 'Red chutney', '5', 5, '30', 'Combo', 1, '80', '4', 1, '2023-07-13 19:23:28', '2023-07-13 19:23:28'),
(170, 0, '8x558NM5UPtdSuNF2z6tBUHN0WLE0PJdf2sqPsXE', '28', 'Plain Dosa', 'item-6253bf83198f8.jpg', 1, '', '', '', 0, '', '', 1, '30', '9', 1, '2023-07-13 19:26:48', '2023-07-13 19:26:48'),
(171, 0, 'ZFfhNLrwx0RJNnr23aEweCVfBmj6Fk8JWog6HPgf', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 19:27:18', '2023-07-13 19:27:18'),
(172, 0, 'W4Weyv09kBhrTRkuu30cmKeKOjApDeqvUoWTVDoL', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 19:29:36', '2023-07-13 19:29:36'),
(174, 0, 'O3Y7KanKsDOk5pyHUAikY5vlfE8W6BNWXC26Klxz', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 19:45:03', '2023-07-13 19:45:03'),
(175, 0, 'O3Y7KanKsDOk5pyHUAikY5vlfE8W6BNWXC26Klxz', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 19:45:05', '2023-07-13 19:45:05'),
(176, 0, 'O3Y7KanKsDOk5pyHUAikY5vlfE8W6BNWXC26Klxz', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-13 19:45:07', '2023-07-13 19:45:07'),
(177, 0, '1H4wgb8O6R3pGhXp2NIQILcGZE92mJLXhuJVxjlI', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 19:51:41', '2023-07-13 19:51:41'),
(178, 0, 'Dtv8XqgQgNDN6mXaifeMFNjvx4nG6TiWoFrGcAWh', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 20:04:42', '2023-07-13 20:04:42'),
(179, 0, 'msxVWeDpftwJkRChFkZ8YLmrbax27ZNlQ2BqpHz4', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 20:06:54', '2023-07-13 20:06:54'),
(180, 0, 'rnFW7yz3XrVpjiCbZQorniZMLVrfORdvHhvUEvUQ', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 20:24:08', '2023-07-13 20:24:08'),
(181, 0, 'RILW2jpqwm9Qotq4u3JJiHsXRsIYWHTwhLKzbDhS', '37', 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', 1, '50', '5', 1, '2023-07-13 20:27:14', '2023-07-13 20:27:14'),
(182, 0, 'mCTwAkCnOAd3g5J5HHqY0j7rkPtZ7p7ZvCQjY72x', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 20:32:09', '2023-07-13 20:32:09'),
(183, 0, 'mCTwAkCnOAd3g5J5HHqY0j7rkPtZ7p7ZvCQjY72x', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 20:32:17', '2023-07-13 20:32:17'),
(184, 0, 'PD1isi8ASNFx9XWgB9m0fXFM9Hf2goqDXeW2b25w', '6', 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '', '', '', 0, '', '', 1, '120', '6', 1, '2023-07-13 20:35:20', '2023-07-13 20:35:20'),
(185, 0, 'j2dldJN4xLMPgJprX8tXgBigfFuoNwMmX0IogR7I', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 20:49:54', '2023-07-13 20:49:54'),
(186, 0, 'erY9KQ7ci84T1HzEyVK96e88up4CJXSmuYm5btsL', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-13 20:51:33', '2023-07-13 20:51:33'),
(188, 0, 'sRNoGJUdCVv2EvGJc2aic2sXiVGyuKqCYpaB67b2', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:00:23', '2023-07-13 21:00:23'),
(189, 0, 'sRNoGJUdCVv2EvGJc2aic2sXiVGyuKqCYpaB67b2', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', 1, '50', '0', 1, '2023-07-13 21:00:33', '2023-07-13 21:00:33'),
(190, 0, 'G5CtckIIIdjrNQ1jfk7jRNSrj19onhZIlqyyLk16', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:01:59', '2023-07-13 21:01:59'),
(191, 0, 'G5CtckIIIdjrNQ1jfk7jRNSrj19onhZIlqyyLk16', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-13 21:02:11', '2023-07-13 21:02:11'),
(192, 0, 'cd1QuyvjUUTCglSztQnbplyXcWlmxNSdJvykIZFD', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 21:26:09', '2023-07-13 21:26:09'),
(193, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 3, '50', '0', 1, '2023-07-13 21:32:14', '2023-07-13 21:33:12'),
(194, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 21:33:36', '2023-07-13 21:33:36'),
(195, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-13 21:33:59', '2023-07-13 21:33:59'),
(196, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-13 21:34:15', '2023-07-13 21:34:15'),
(197, 0, 'LdPVYW4i0EFHg9JX3F1sRSGRWaxEOwXWLhbkhR3Q', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '56', 'Jain', 1, '30', '50', 1, '2023-07-13 21:34:46', '2023-07-13 21:34:46'),
(198, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 21:36:17', '2023-07-13 21:36:17'),
(199, 0, 'LdPVYW4i0EFHg9JX3F1sRSGRWaxEOwXWLhbkhR3Q', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-13 21:36:37', '2023-07-13 21:36:37'),
(200, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:13', '2023-07-13 21:38:13'),
(201, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:19', '2023-07-13 21:38:19'),
(202, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:22', '2023-07-13 21:38:22'),
(203, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:23', '2023-07-13 21:38:23'),
(204, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:24', '2023-07-13 21:38:24'),
(205, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:25', '2023-07-13 21:38:25'),
(206, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:26', '2023-07-13 21:38:26'),
(207, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:27', '2023-07-13 21:38:27'),
(208, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:28', '2023-07-13 21:38:28'),
(209, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:28', '2023-07-13 21:38:28'),
(210, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:30', '2023-07-13 21:38:30'),
(211, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:31', '2023-07-13 21:38:31'),
(212, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:32', '2023-07-13 21:38:32'),
(213, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:33', '2023-07-13 21:38:33'),
(214, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:33', '2023-07-13 21:38:33'),
(215, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:34', '2023-07-13 21:38:34'),
(216, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:35', '2023-07-13 21:38:35'),
(217, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:35', '2023-07-13 21:38:35'),
(218, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:38', '2023-07-13 21:38:38'),
(219, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:38', '2023-07-13 21:38:38'),
(220, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:39', '2023-07-13 21:38:39'),
(221, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '10', 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', 1, '20', '0', 1, '2023-07-13 21:38:40', '2023-07-13 21:38:40'),
(222, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '8', 'Veg. Clear Soup', 'item-6253b439a4e06.jpg', 1, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:38:47', '2023-07-13 21:38:47'),
(223, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '8', 'Veg. Clear Soup', 'item-6253b439a4e06.jpg', 1, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:38:56', '2023-07-13 21:38:56'),
(224, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '8', 'Veg. Clear Soup', 'item-6253b439a4e06.jpg', 1, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:38:58', '2023-07-13 21:38:58'),
(225, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '8', 'Veg. Clear Soup', 'item-6253b439a4e06.jpg', 1, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 21:38:59', '2023-07-13 21:38:59'),
(226, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 21:39:30', '2023-07-13 21:39:30'),
(227, 0, 'pGKxSTL9JRGVJApWDcbfWrGem94svua8ksQYTfMM', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 21:39:36', '2023-07-13 21:39:36'),
(228, 0, 'y129BwtJWhD60fJoPc3OjvYaiManyWyf0CpWx6rr', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 21:50:57', '2023-07-13 21:50:57'),
(229, 0, 'y129BwtJWhD60fJoPc3OjvYaiManyWyf0CpWx6rr', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 21:51:07', '2023-07-13 21:51:07'),
(231, 0, 'LKnK0nL5upaeitnlkfu7V1cuYy9ijSXMjIO3ma75', '19', 'The Ultimate Veggie Burger', 'item-6253bcdda9403.jpg', 1, '', '', '', 0, '36', 'Trio', 1, '100', '8', 1, '2023-07-13 22:02:09', '2023-07-13 22:02:09'),
(232, 0, 'zXtwxxgecoeLYf1peaiqtBdCpmDXrCOxDLZkDdJF', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-13 22:02:59', '2023-07-13 22:02:59'),
(233, 0, '9XFMhPvO6g4X3tSPflRxbaIw5ME81IODiV05u8wb', '18', 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '31', 'Single', 1, '50', '7', 1, '2023-07-13 22:05:56', '2023-07-13 22:05:56'),
(236, 0, 'fqKwzCFLWO7VUC6bao1MY72t0nvd2ZVPumHxPf6M', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 22:13:57', '2023-07-13 22:13:57'),
(237, 0, 'Q7AVlaZEzOKQYRQfMoOSp01XHG5ZETNUfmpPGOU8', '15', 'Jain Spl. Pizza', 'item-6253b8756e6c6.jpeg', 2, '', '', '', 0, '23', 'Regular', 1, '30', '6', 1, '2023-07-13 22:14:45', '2023-07-13 22:14:45'),
(238, 0, 'Ds6kg4fljEVRsYROpmMGcFv1sBEGOqSIZRFLLhnv', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-13 22:15:12', '2023-07-13 22:15:12'),
(241, 0, 'gqhYnE8Gkp7O7iX4gU130DYNhJRJI19NxMZlXEZF', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 22:53:21', '2023-07-13 22:53:21'),
(242, 0, 'gqhYnE8Gkp7O7iX4gU130DYNhJRJI19NxMZlXEZF', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-13 22:53:28', '2023-07-13 22:53:28'),
(243, 0, '9ld4vrNcy3FbXwuTwh6kyiqGELQwfRsX68vI7fPE', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-13 23:01:56', '2023-07-13 23:01:56'),
(244, 0, 'FFvQFzMnRFZOwrnPKbX4PUPLaOP5fq4mfDjkBTWJ', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 23:08:27', '2023-07-13 23:08:27'),
(245, 0, '2DnG9RmjGEVstokoTUW3AimOFDDRCL5CdLwNC8GP', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 23:31:11', '2023-07-13 23:31:11'),
(247, 0, 'fQlg7HwiEVjmmutWGfcUuboIJsPzT9dRpLfKNerU', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-13 23:36:03', '2023-07-13 23:36:03'),
(248, 0, 'Q2pZuYVsKcPbGSMPVhEMsxOKryXa6lSSklP7BULq', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-13 23:37:55', '2023-07-13 23:37:55'),
(249, 0, 'zR0ovE8OvsUC2j9LyS5qjqp5EZnFd6AL4rvt1UaN', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-13 23:44:14', '2023-07-13 23:44:14'),
(250, 0, 'IYEZXETiyysZ4WOliBbNzJ2yanJP8pUKPBje83oT', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-13 23:46:08', '2023-07-13 23:46:08'),
(251, 0, 'de0RLPBPf5s1c0Vu09EZ5tkVh7UaRTLj5fnXnwTM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 00:47:58', '2023-07-14 00:47:58'),
(252, 0, '9M07pzVLrghM6oSlSpE6lXcybFZmT8nw24eV72fg', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 01:20:16', '2023-07-14 01:20:16'),
(253, 0, '7AitetpHpw3M8qZWfjeGmwGJpOxi3OdGqBxT9Tcd', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-14 01:29:23', '2023-07-14 01:29:23'),
(254, 0, '7AitetpHpw3M8qZWfjeGmwGJpOxi3OdGqBxT9Tcd', '32', 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '', '', '', 0, '45', 'Regular', 1, '70', '7', 1, '2023-07-14 01:29:33', '2023-07-14 01:29:33'),
(261, 0, 'Gg4DTiDwLP8CstF7NaaKawZFsHrQtUkQMFGIgtqN', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 02:16:55', '2023-07-14 02:16:55'),
(264, 0, '6FfmKsLuw8LHfeUmquEQoO8mktSnMdnZR95bSAgT', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 02:28:39', '2023-07-14 02:28:39'),
(265, 0, '6FfmKsLuw8LHfeUmquEQoO8mktSnMdnZR95bSAgT', '7', 'Crispy Spinach & Baby - Corn', 'item-6253b3b906ffd.jpg', 1, '', '', '', 0, '7', 'King', 1, '20', '3', 1, '2023-07-14 02:32:03', '2023-07-14 02:32:03'),
(266, 0, '6FfmKsLuw8LHfeUmquEQoO8mktSnMdnZR95bSAgT', '7', 'Crispy Spinach & Baby - Corn', 'item-6253b3b906ffd.jpg', 1, '', '', '', 0, '7', 'King', 1, '20', '3', 1, '2023-07-14 02:32:11', '2023-07-14 02:32:11'),
(268, 0, 'KlI5YUlmWtwd4bsoElOBKsJYyxi39NFLUUm1yrRc', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-14 02:57:51', '2023-07-14 02:57:51'),
(269, 0, '6ynvPCpXl1TNmncRMECWyS9EBsuU9sPh1ZCyDI9q', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 2, '120', '5', 1, '2023-07-14 02:58:25', '2023-07-14 02:58:40'),
(273, 0, 'krTTpT1sKWQyjQVNHAkE7H2QasvO3HfQVKoibUwO', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 03:08:44', '2023-07-14 03:08:44'),
(274, 0, '7Rmxxiejd7nNfVf1zD0i4j2tvsKA54suQpT5iaAg', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 03:20:24', '2023-07-14 03:20:24'),
(275, 0, '7Rmxxiejd7nNfVf1zD0i4j2tvsKA54suQpT5iaAg', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 03:20:28', '2023-07-14 03:20:28'),
(276, 0, 'cotL4me6N9WjwDuzUFYZ5TcidEnztHsc8aPalLYN', '34', 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '1,2', 'Red chutney,Bread', '5,0', 5, '51', 'Half - Jain', 1, '20', '0', 1, '2023-07-14 03:26:54', '2023-07-14 03:26:54'),
(277, 0, 'cotL4me6N9WjwDuzUFYZ5TcidEnztHsc8aPalLYN', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 03:27:05', '2023-07-14 03:27:05'),
(278, 0, 'U3KzZQMBkS9Jps6BVY0VVM28Q18YJwyA9m9gDU4Q', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-14 03:27:07', '2023-07-14 03:27:07'),
(279, 0, 'cotL4me6N9WjwDuzUFYZ5TcidEnztHsc8aPalLYN', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 03:27:10', '2023-07-14 03:27:10'),
(280, 0, 'U3KzZQMBkS9Jps6BVY0VVM28Q18YJwyA9m9gDU4Q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 03:27:14', '2023-07-14 03:27:14'),
(281, 0, 'U3KzZQMBkS9Jps6BVY0VVM28Q18YJwyA9m9gDU4Q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 03:27:19', '2023-07-14 03:27:19'),
(282, 0, 'U3KzZQMBkS9Jps6BVY0VVM28Q18YJwyA9m9gDU4Q', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 03:27:20', '2023-07-14 03:27:20'),
(284, 0, 'vlnvXtZi3SZuQc42h2zsf4JVI9CuOo7yan3qbvSW', '34', 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '', '', '', 0, '51', 'Half - Jain', 1, '20', '0', 1, '2023-07-14 04:00:18', '2023-07-14 04:00:18'),
(285, 0, 'JxPofcukBxZ6TdCD0U5gkmP07Gs2cYY0ZMlQTGnS', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 04:03:08', '2023-07-14 04:03:08'),
(287, 0, 'O9souEw0VFsNCRb2rm2m4aMAM9PUQKXakH6nfWus', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', 1, '50', '0', 1, '2023-07-14 04:32:32', '2023-07-14 04:32:32'),
(288, 0, '9jEFi1Da9UzqL6RRNnjrhTtO9QnhuluI5I9i3Rsl', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 04:44:44', '2023-07-14 04:44:44'),
(290, 0, 'ntnVqop7Ek0g5EhkBGMEG85U2Bo6GokVxOQsEOWO', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 04:58:01', '2023-07-14 04:58:01'),
(291, 0, 'm8PpJgxJxJapXhyXvb6UhwF5QaszPendNEbrbBE0', '18', 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '1,2', 'Red chutney,Bread', '5,0', 5, '33', 'Trio', 1, '100', '7', 1, '2023-07-14 05:04:19', '2023-07-14 05:04:19'),
(292, 0, 'zgOnZOoJESljPhcMe78PbHclYY3g3jAdtBs9Y5vR', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '', '', '', 0, '', '', 1, '120', '8', 1, '2023-07-14 05:17:51', '2023-07-14 05:17:51'),
(293, 0, 'zgOnZOoJESljPhcMe78PbHclYY3g3jAdtBs9Y5vR', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '1', 'Red chutney', '5', 5, '', '', 1, '120', '8', 1, '2023-07-14 05:17:55', '2023-07-14 05:17:55'),
(294, 0, '8qEuzOhDE1ni4rZFIqeIu6PGajGThLKfrdmSfrxF', '38', 'Crunchy Sandwich', 'item-62bd4a94c0716.jpg', 2, '12', 'Panzanella', '0.00', 0, '', '', 1, '99', '7', 1, '2023-07-14 05:34:39', '2023-07-14 05:34:39'),
(297, 0, '1SPvG7BcjzTaTmeAgW1HYqrIRPqUsoS5zZEpbEOA', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-14 05:54:51', '2023-07-14 05:54:51'),
(298, 0, '1SPvG7BcjzTaTmeAgW1HYqrIRPqUsoS5zZEpbEOA', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-14 05:55:01', '2023-07-14 05:55:01'),
(299, 0, 'RVU6BwteS2tVIcZ0uYCUIWdwPYBOfvAMGF7TWHyW', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '57', 'Regular - half', 1, '40', '50', 1, '2023-07-14 05:57:27', '2023-07-14 05:57:27'),
(309, 0, '6aLqncI6AduLQ2RqYJIehG3ZYx347f8Ujn3akzwD', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 07:00:04', '2023-07-14 07:00:04'),
(310, 0, '6aLqncI6AduLQ2RqYJIehG3ZYx347f8Ujn3akzwD', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 07:00:09', '2023-07-14 07:00:09'),
(311, 0, 'msxq1p4WgkXm42fCHM1964YTjGfnPBL2ziqoYUtU', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-14 07:08:35', '2023-07-14 07:08:35'),
(312, 0, 'msxq1p4WgkXm42fCHM1964YTjGfnPBL2ziqoYUtU', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-14 07:08:40', '2023-07-14 07:08:40'),
(313, 0, 'msxq1p4WgkXm42fCHM1964YTjGfnPBL2ziqoYUtU', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-14 07:08:42', '2023-07-14 07:08:42'),
(315, 0, 'imstQZexx29NZG6VtfxjOgRorxNjHbwKdsBGPksq', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-14 07:16:18', '2023-07-14 07:16:18'),
(319, 0, 'fF5wd20UjEOT1KsnudfDip8TaQx1nkoQlfxWDAUr', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', 1, '50', '0', 1, '2023-07-14 07:24:32', '2023-07-14 07:24:32'),
(320, 0, 'J57ajoQQENntceTNrdav6PNa80PmFr31K8WPIxRN', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-14 07:45:00', '2023-07-14 07:45:00'),
(321, 0, 'iBaFQCrXNrs3G4WZihk0SXb3V4Uqw7fmfGe0busP', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 07:48:27', '2023-07-14 07:48:27'),
(323, 0, 'NbQk10iKVM9EhgLSr8NEPsbN814riO1vtkzFEVGV', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 08:13:31', '2023-07-14 08:13:31'),
(324, 0, 'MSTPs1czZ40pkvGXcvLXJh7h57MmjcoelQ0z9yEA', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 08:15:19', '2023-07-14 08:15:19'),
(328, 0, 'xz4h3VMdotWwHLBTLiANpQUetaNp3PyaZcZInAnj', '34', 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '', '', '', 0, '52', 'Full - jain', 3, '30', '0', 1, '2023-07-14 08:31:16', '2023-07-14 08:31:31'),
(329, 0, 'mzIVuwaKNXwGGHM1158zsq7zVEVdB6SsWEJO2e5M', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-14 08:32:00', '2023-07-14 08:32:00'),
(330, 0, 'q3W1PknTyYl9Vs40Et399wCxQA0HIlMlo9kZc8Xk', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 08:40:17', '2023-07-14 08:40:17'),
(331, 0, 'aUm6NURwaLDI6kJp9ZptJZtRT7AjUHyvE7Pmobh3', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 08:58:59', '2023-07-14 08:58:59'),
(332, 0, 'KP4sJyusNYnK18c5MqxPKGrTkXsIkEVMDCxRdHkx', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-14 09:01:36', '2023-07-14 09:01:36'),
(333, 0, '99r4nyCmWjvdTlHG5n8ezNpHByf4VsVYnkXqB28N', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-14 09:11:30', '2023-07-14 09:11:30'),
(334, 0, 'CaKAF5DNTUzMac8hkO5ocsvHbTqURMubOCMPWWyC', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 09:14:11', '2023-07-14 09:14:11'),
(335, 0, 'DRlrW69BXL4AfiMF7p8alzY5GlIl9nyDZ4hbBN0a', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 09:20:12', '2023-07-14 09:20:12'),
(336, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-14 09:22:27', '2023-07-14 09:22:27'),
(337, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '1', 'Red chutney', '5', 5, '37', 'Single', 1, '50', '8', 1, '2023-07-14 09:22:33', '2023-07-14 09:22:33');
INSERT INTO `cart` (`id`, `user_id`, `session_id`, `item_id`, `item_name`, `item_image`, `item_type`, `addons_id`, `addons_name`, `addons_price`, `addons_total_price`, `variation_id`, `variation`, `qty`, `item_price`, `tax`, `is_available`, `created_at`, `updated_at`) VALUES
(338, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 2, '50', '8', 1, '2023-07-14 09:22:35', '2023-07-14 09:23:30'),
(339, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '1,2', 'Red chutney,Bread', '5,0', 5, '', '', 2, '120', '8', 1, '2023-07-14 09:22:46', '2023-07-14 09:23:34'),
(340, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '1,3', 'Red chutney,Fried tomatos', '5,35369.50', 35374.5, '', '', 1, '120', '8', 1, '2023-07-14 09:22:52', '2023-07-14 09:22:52'),
(341, 0, 'mA74JUEL4Rl15g6Q2WEyv6ANIyifypLkSklR2Zz0', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '1,3', 'Red chutney,Fried tomatos', '5,35369.50', 35374.5, '', '', 1, '120', '8', 1, '2023-07-14 09:23:00', '2023-07-14 09:23:00'),
(342, 0, 'D00CGtH9gzFHAPqwkbR1kcXPALCr5isausc5UqQM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 09:40:27', '2023-07-14 09:40:27'),
(343, 0, 'D00CGtH9gzFHAPqwkbR1kcXPALCr5isausc5UqQM', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 09:40:30', '2023-07-14 09:40:30'),
(344, 0, 'Ov68dUd3ZN6mg5NTYvRRHwzM3QVSsLdC3WIT2Y05', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '5', 'Butter pav', '5', 5, '43', 'Regular', 1, '80', '7', 1, '2023-07-14 09:57:33', '2023-07-14 09:57:33'),
(349, 0, 'EkSZjRBLXR8EH7RX0rw5Gfk4ShHtlGQBII8fMmuZ', '34', 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '5', 'Butter pav', '5', 5, '51', 'Half - Jain', 1, '20', '0', 1, '2023-07-14 10:25:57', '2023-07-14 10:25:57'),
(350, 0, 'fb42fPRCxM8e4k5U9DAVMEq0443VJQoYuFXPZ8Yq', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 10:28:08', '2023-07-14 10:28:08'),
(354, 0, '7rTYRiUFdhOn0OLZ9As9dzzRgWSkOQSGdGcFqk0L', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 11:12:52', '2023-07-14 11:12:52'),
(355, 0, '7rTYRiUFdhOn0OLZ9As9dzzRgWSkOQSGdGcFqk0L', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '4', 'Onions', '0', 0, '', '', 1, '99', '7', 1, '2023-07-14 11:13:11', '2023-07-14 11:13:11'),
(356, 0, '71vroio8PlGueEcIg085U20txsCt8oy83Q7jY6lw', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-14 11:21:05', '2023-07-14 11:21:05'),
(357, 0, 'SXFoRwDGO1rwDZHaJhBe4g1G8nJoqD4ZXovgrCAu', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-14 11:38:18', '2023-07-14 11:38:18'),
(358, 0, 'I71PGvVRysNLP3nG1EEageD2ojwgFe7qrKinInT4', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 11:55:16', '2023-07-14 11:55:16'),
(359, 0, 'HBEI0ZgvuTxAoFfx0QDnINKmTotOPe8pzCeRmDzy', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-14 11:57:53', '2023-07-14 11:57:53'),
(360, 0, 'vwl4GjCT7kjWdUWVAuW4VZw3KFfkjGAm2PWLq3c4', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 12:25:09', '2023-07-14 12:25:09'),
(362, 0, 'ILUM13YGgN8Ry1K9e8C0XzwifC3DUlpiCJO3kx41', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 12:55:14', '2023-07-14 12:55:14'),
(363, 0, 'ILUM13YGgN8Ry1K9e8C0XzwifC3DUlpiCJO3kx41', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 12:55:25', '2023-07-14 12:55:25'),
(365, 0, 'NDxaBmRIuCbK9io8Mzwu3wxBRX5j4N3cv1nSr3Be', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 12:56:52', '2023-07-14 12:56:52'),
(366, 0, 'MboIo8ApW5f3cMcyPRsvRZvvkZLUHPBtCm1eHd6G', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 12:58:44', '2023-07-14 12:58:44'),
(367, 0, 'veX1hNmWYIzbxhPE7UoByz0qFDY9Ca37RvxkOoyo', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 13:16:12', '2023-07-14 13:16:12'),
(368, 0, 'KWlAfBTfGSIRfkNheojoWWWnhQmgNiyQAgOYtEnv', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 13:33:00', '2023-07-14 13:33:00'),
(369, 0, 'Me54ima4WkH4gFaa1eg1Zmt5UWar2iyax2tvrlmj', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 14:00:30', '2023-07-14 14:00:30'),
(370, 0, 'p4USZYFldbr4JhPYwJAjiJ0eFvILhWa16MtGAz5a', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 14:27:52', '2023-07-14 14:27:52'),
(371, 0, 'Mzl4URAj9x2OIOsXcLuuNqa0U1CbVt0E5a8pryMd', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-14 14:49:52', '2023-07-14 14:49:52'),
(373, 0, '8E14Gv16USyhoQrRjklbtWYoBuYw1h0h3xYORh02', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-14 15:02:45', '2023-07-14 15:02:45'),
(376, 0, 'FdV7eYrhQrr9CPxMMG5BkYNn41DK2jqqWx727PFw', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-14 15:37:46', '2023-07-14 15:37:46'),
(377, 0, 'r5qYd1toGWqgbrxwIww7iQLKz8eYEZhMFUBV7xAd', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '43', 'Regular', 1, '80', '7', 1, '2023-07-14 16:20:02', '2023-07-14 16:20:02'),
(378, 0, 'ayFtQRwYqgLWtrnUJxBXncU4H58AwRpzctTB9KbD', '26', 'Bombay Grilled Sandwich', 'item-6253beca51fee.jpg', 1, '', '', '', 0, '', '', 1, '99', '4', 1, '2023-07-14 16:32:45', '2023-07-14 16:32:45'),
(379, 0, 'q1X5nwW7C1fNQOpaXhSLewk4qJI9DBUbbfnvRXqs', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 17:01:23', '2023-07-14 17:01:23'),
(380, 0, 'hNma58vqaeRdJAWWllIDEwiZXEnyEQbYTXY6eqtm', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 17:47:06', '2023-07-14 17:47:06'),
(381, 0, 'hNma58vqaeRdJAWWllIDEwiZXEnyEQbYTXY6eqtm', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 17:47:10', '2023-07-14 17:47:10'),
(382, 0, 'hNma58vqaeRdJAWWllIDEwiZXEnyEQbYTXY6eqtm', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 17:47:13', '2023-07-14 17:47:13'),
(383, 0, '0IBK8S406LO6DFvIE0er0QQoXXK7aqA1IEOcBqxX', '18', 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '32', 'Combo', 1, '70', '7', 1, '2023-07-14 17:54:35', '2023-07-14 17:54:35'),
(385, 0, 'BidvDaY8MaY2iNzfIh7Xv9mPQqKkQVV9h5r4iX6O', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 18:35:30', '2023-07-14 18:35:30'),
(388, 0, 'nuPh9xsKE3kp2hVecYdLO3EeyDTKF128quiTRb8J', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-14 19:32:13', '2023-07-14 19:32:13'),
(391, 0, '55ckMa5NRDladUbmuaLLTo1m6OhGS28q6dPpHW7W', '23', 'Plain Sandwich', 'item-6253be3d86a84.jpg', 1, '', '', '', 0, '', '', 1, '49', '5', 1, '2023-07-14 19:49:17', '2023-07-14 19:49:17'),
(393, 0, 'gV06CAsxnzC3qu4FtlN3zwEhRfepd3tRVwjY7mns', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '57', 'Regular - half', 1, '40', '50', 1, '2023-07-14 20:41:12', '2023-07-14 20:41:12'),
(394, 0, 'V1EjXyDDE1sSdPBUAGuSWdGaRyAaDGx2DfFRKZiW', '5', 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', 1, '20', '0', 1, '2023-07-14 21:08:48', '2023-07-14 21:08:48'),
(396, 0, 'Dlhk1KwDZ1oVGctM23FIAj9fsQFbVW2FDTuSnbcP', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3,4', 'Fried tomatos,Onions', '35369.50,0', 35369.5, '56', 'Jain', 1, '30', '50', 1, '2023-07-14 21:34:20', '2023-07-14 21:34:20'),
(397, 0, 'Oo9hi9t3ElbIm0v6L6MEq9CjEHp2fj6rb63TgHi9', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '', '', 1, '99', '7', 1, '2023-07-14 22:12:25', '2023-07-14 22:12:25'),
(402, 0, '8YdLYWtlj1LHcc5UVkOswXrRi2llypKbKEFPIYXR', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-14 23:19:03', '2023-07-14 23:19:03'),
(405, 0, 'f2EVKQgAMAw3rhSbHwikzURZvsN52hDW9n72W80p', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 23:33:18', '2023-07-14 23:33:18'),
(406, 0, 'f2EVKQgAMAw3rhSbHwikzURZvsN52hDW9n72W80p', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-14 23:33:21', '2023-07-14 23:33:21'),
(407, 0, 'pVIDrT9G1km9sEDhFCkvFgqFHUUVPAqUyvUXEL93', '15', 'Jain Spl. Pizza', 'item-6253b8756e6c6.jpeg', 2, '2,4', 'Bread,Onions', '0,0', 0, '24', 'Full', 1, '20', '6', 1, '2023-07-14 23:38:46', '2023-07-14 23:38:46'),
(408, 0, 'pVIDrT9G1km9sEDhFCkvFgqFHUUVPAqUyvUXEL93', '16', 'Super Veggie Pizza', 'item-6253b9571bed9.jpg', 2, '2,4', 'Bread,Onions', '0,0', 0, '26', 'Small', 1, '30', '6', 1, '2023-07-14 23:38:55', '2023-07-14 23:38:55'),
(409, 0, 'pVIDrT9G1km9sEDhFCkvFgqFHUUVPAqUyvUXEL93', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1,2,3', 'Red chutney,Bread,Fried tomatos', '5,0,35369.50', 35374.5, '14', 'King', 1, '50', '0', 1, '2023-07-14 23:39:26', '2023-07-14 23:39:26'),
(410, 0, 'pVIDrT9G1km9sEDhFCkvFgqFHUUVPAqUyvUXEL93', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', 1, '50', '0', 1, '2023-07-14 23:39:31', '2023-07-14 23:39:31'),
(411, 0, 'pVIDrT9G1km9sEDhFCkvFgqFHUUVPAqUyvUXEL93', '22', 'Ultimate Crunchy Burger', 'item-6253bd5355743.jpg', 2, '', '', '', 0, '', '', 1, '99', '5', 1, '2023-07-14 23:41:50', '2023-07-14 23:41:50'),
(412, 0, 'eDZ7f5IsPF9oc9KZI1ez0Q7GJMvG0Sw7pQ5fwyXK', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-14 23:59:02', '2023-07-14 23:59:02'),
(413, 0, 'HlrXa7gmlPYMM3JK1zCU1VSR1s8SlKjQ0h1LSvBR', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 00:24:28', '2023-07-15 00:24:28'),
(414, 0, 'HlrXa7gmlPYMM3JK1zCU1VSR1s8SlKjQ0h1LSvBR', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 00:24:32', '2023-07-15 00:24:32'),
(415, 0, 'vdDsGylcBioNVFWTF8GgiWOsr6dzyADWjg4Oj94b', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '2', 'Bread', '0', 0, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-15 01:07:44', '2023-07-15 01:07:44'),
(416, 0, 'vdDsGylcBioNVFWTF8GgiWOsr6dzyADWjg4Oj94b', '14', 'Tomato, Onion Pizza', 'item-6253b8300df8b.jpg', 1, '4', 'Onions', '0', 0, '', '', 1, '120', '6', 1, '2023-07-15 01:08:20', '2023-07-15 01:08:20'),
(418, 0, '8GiLIISiiOuAFA9PbLYgaR014CnKzYhQpP1xCGuS', '22', 'Ultimate Crunchy Burger', 'item-6253bd5355743.jpg', 2, '', '', '', 0, '', '', 1, '99', '5', 1, '2023-07-15 01:32:37', '2023-07-15 01:32:37'),
(419, 0, 'qIGpUhLINLwzIdWFOKjG0i7ZpZkNdccmHnsQzi1k', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 02:10:17', '2023-07-15 02:10:17'),
(420, 0, 'DPZNJzYbQNftkeXGdraxeZU6wUzzWXJ1Uix946B2', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '', '', 1, '99', '7', 1, '2023-07-15 02:38:01', '2023-07-15 02:38:01'),
(421, 0, 'DPZNJzYbQNftkeXGdraxeZU6wUzzWXJ1Uix946B2', '32', 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '48', 'Regular + Cheese', 1, '80', '7', 1, '2023-07-15 02:39:26', '2023-07-15 02:39:26'),
(423, 0, '6QKTmqHJZULEANZK9Gt5svVK8vjcLIPJW6qRSR3u', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '2,3', 'Bread,Fried tomatos', '0,35369.50', 35369.5, '', '', 1, '120', '8', 1, '2023-07-15 02:56:20', '2023-07-15 02:56:20'),
(424, 0, '3ZZgXnLkX9qrB0gsEw3pOfLtz1wj6A6VmduVi3M5', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '', '', '', 0, '', '', 1, '120', '8', 1, '2023-07-15 02:58:12', '2023-07-15 02:58:12'),
(425, 0, 'Bu6Zjx5AFF8U7SWVKXLhTlhr6M5oV0UyC5ATQvPw', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 02:59:40', '2023-07-15 02:59:40'),
(426, 0, 'Bu6Zjx5AFF8U7SWVKXLhTlhr6M5oV0UyC5ATQvPw', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 03:07:41', '2023-07-15 03:07:41'),
(427, 0, 'Bu6Zjx5AFF8U7SWVKXLhTlhr6M5oV0UyC5ATQvPw', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 03:07:44', '2023-07-15 03:07:44'),
(428, 0, 'EL4yryipgiyJP5iejW14wc0aPEOofJhNpGIwbDDE', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 04:31:26', '2023-07-15 04:31:26'),
(429, 0, 'lskshqdkrFei58f3JE8lw2l88nRxq90rNGAbmYa5', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 05:03:24', '2023-07-15 05:03:24'),
(430, 0, 'ZxMb55czqBOv6A7Dve4OTgYYvzXY2hfSNVin6XSl', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 05:09:31', '2023-07-15 05:09:31'),
(431, 0, 'ZxMb55czqBOv6A7Dve4OTgYYvzXY2hfSNVin6XSl', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 05:09:47', '2023-07-15 05:09:47'),
(432, 0, 'ZxMb55czqBOv6A7Dve4OTgYYvzXY2hfSNVin6XSl', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 05:09:49', '2023-07-15 05:09:49'),
(434, 0, '584gk3GncbZA778VNyU8lUGJDyjyBeBzsuIFfYhS', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 06:58:45', '2023-07-15 06:58:45'),
(435, 0, '584gk3GncbZA778VNyU8lUGJDyjyBeBzsuIFfYhS', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 06:58:51', '2023-07-15 06:58:51'),
(436, NULL, '7qdYDAPZLRLG', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50.00', '0.00', 1, '2023-07-15 07:07:47', '2023-07-15 07:07:47'),
(437, NULL, '7qdYDAPZLRLG', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30.00', '0.00', 1, '2023-07-15 07:07:53', '2023-07-15 07:07:53'),
(438, 0, 'SxTcr3ZNBwKRnOuGu6HxMYnszlAL8ppQAjuALum3', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', 1, '120', '5', 1, '2023-07-15 07:35:18', '2023-07-15 07:35:18'),
(441, 0, 'CxnIhJNM2i4qhgOOCxuPvtR5Mv3jbjtp7vCyQczZ', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '', '', 3, '99', '7', 1, '2023-07-15 08:34:57', '2023-07-15 08:35:22'),
(445, 0, 'CCdykTljXt4MEt6yAt5k207lmy8T4LztSy0oK0fz', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-15 09:07:57', '2023-07-15 09:07:57'),
(447, 0, '76c7UgDhK914PEYqltjV3uRnUANn9PYBvtSEVBR0', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 09:19:35', '2023-07-15 09:19:35'),
(450, 0, '3nr3aGVCntDIVSJBKbj5HaGytcsbPUXWXzL4WhJn', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 09:29:08', '2023-07-15 09:29:08'),
(451, 0, '6dKGCW73DFDKPrUFRH1CW4YELZkaPb5TfbRECYmT', '14', 'Tomato, Onion Pizza', 'item-6253b8300df8b.jpg', 1, '', '', '', 0, '', '', 1, '120', '6', 1, '2023-07-15 09:51:42', '2023-07-15 09:51:42'),
(452, 0, 'Ne6OV8CdlZ852ySLXESTtyQdXEy337f6Vkfl9ayO', '17', 'Veg. Burger', 'item-6253bc7f6c31e.jpg', 1, '', '', '', 0, '29', 'Single', 1, '50', '4', 1, '2023-07-15 09:53:00', '2023-07-15 09:53:00'),
(453, 0, '7Mzsiola9aad07oGu443NIjsyR34ODUvyXkh9D9P', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '56', 'Jain', 1, '30', '50', 1, '2023-07-15 10:07:18', '2023-07-15 10:07:18'),
(454, 0, 'SEppshxnF2bdr3xFf0K0ZFEzc5qtXNKD1vyHrp1M', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-15 10:10:39', '2023-07-15 10:10:39'),
(455, 0, 'SEppshxnF2bdr3xFf0K0ZFEzc5qtXNKD1vyHrp1M', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 10:10:51', '2023-07-15 10:10:51'),
(458, 0, '5gDWWlE7Yl2B81Uj1bepGfXSd53cIbEw6lTfAYkL', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 10:30:17', '2023-07-15 10:30:17'),
(462, 0, 'l57VcluzI4KRnbkUeyntzmnuV2EMSnjT3lytzGoD', '37', 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', 1, '50', '5', 1, '2023-07-15 10:56:38', '2023-07-15 10:56:38'),
(463, 0, 'l57VcluzI4KRnbkUeyntzmnuV2EMSnjT3lytzGoD', '25', 'Club Sandwich', 'item-6253be9e3042c.jpg', 1, '', '', '', 0, '', '', 1, '80', '5', 1, '2023-07-15 10:57:45', '2023-07-15 10:57:45'),
(464, 0, 'N0VDtDaGk3iC0FM1kkGIxpuSmJbJ99jrsx5Cxm9x', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3,4', 'Fried tomatos,Onions', '35369.50,0', 35369.5, '56', 'Jain', 1, '30', '50', 1, '2023-07-15 11:03:09', '2023-07-15 11:03:09'),
(465, 0, 'nZ5KipAYDoT13lWF0Ut55o3WeHGWMtfJbTMabXBg', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 11:33:32', '2023-07-15 11:33:32'),
(466, 0, 'nZ5KipAYDoT13lWF0Ut55o3WeHGWMtfJbTMabXBg', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-15 11:33:39', '2023-07-15 11:33:39'),
(467, 0, 'RHrM1dXyDU7g5qoOunnk6uu712zDK991YriYvLrt', '17', 'Veg. Burger', 'item-6253bc7f6c31e.jpg', 1, '', '', '', 0, '29', 'Single', 1, '50', '4', 1, '2023-07-15 11:33:43', '2023-07-15 11:33:43'),
(469, 0, 'yqkRnze6IqcX4E56vtpOGAaqUfw6cPqgGEuEEbh6', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 11:38:08', '2023-07-15 11:38:08'),
(470, 0, 'BiXSiDF9NbkwHPXBysxSkI4IHBtEMAJMyi7LZxmn', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '57', 'Regular - half', 1, '40', '50', 1, '2023-07-15 12:04:29', '2023-07-15 12:04:29'),
(471, 0, 'ZxnV28X1zePSImLOI4qoqNBKLzB1OyybIVmVptkc', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '2,3,5', 'Bread,Fried tomatos,Butter pav', '0,35369.50,5', 35374.5, '49', 'Regular', 1, '70.5', '7', 1, '2023-07-15 12:26:45', '2023-07-15 12:26:45'),
(472, 0, 'ioBTpbQYHIYIceKoMpLEHVoIvcSK9semIhmZ7Fz2', '14', 'Tomato, Onion Pizza', 'item-6253b8300df8b.jpg', 1, '', '', '', 0, '', '', 1, '120', '6', 1, '2023-07-15 12:44:17', '2023-07-15 12:44:17'),
(473, 0, 'Th0a3KEMSwoRplM0Q3E4WQ9vaDT3PchcN0Mi17v0', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 13:11:38', '2023-07-15 13:11:38'),
(474, 0, 'Th0a3KEMSwoRplM0Q3E4WQ9vaDT3PchcN0Mi17v0', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 13:11:50', '2023-07-15 13:11:50'),
(475, 0, 'Th0a3KEMSwoRplM0Q3E4WQ9vaDT3PchcN0Mi17v0', '32', 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '', '', '', 0, '45', 'Regular', 1, '70', '7', 1, '2023-07-15 13:12:05', '2023-07-15 13:12:05'),
(476, 0, 'AOTzSWEOyQLqxgGbWA1WJbVy5M7fw0H9hsvCITsc', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-15 13:13:09', '2023-07-15 13:13:09'),
(477, 0, 'xaxhegpfuXoHW4GWOJt3pOz1s9ZXWvswsRRal1I9', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 13:31:03', '2023-07-15 13:31:03'),
(478, 0, 'kyTiMDw6uGf57T41lJDXZyxfiQNAeTH9Gscdqm7H', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 13:36:57', '2023-07-15 13:36:57'),
(479, 0, 'mWhfp1sXybTvbCXqUgGKXWjKvvLO0GVTcIPrcw8q', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3,4', 'Fried tomatos,Onions', '35369.50,0', 35369.5, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 13:51:43', '2023-07-15 13:51:43'),
(480, 0, 'VJnO0XtVdS0LIalb8Z3rCBLTnvyG25Anva0BXdbJ', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-15 14:06:50', '2023-07-15 14:06:50'),
(481, 0, '9KxMiA70cMCMBSRu6X33JdSWCgXYqC5EaCOMtsKY', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-15 14:07:21', '2023-07-15 14:07:21'),
(486, 0, 'J97PiT5CSPxQD4RItHqlEQnE5Kl5tk2PlJjlb37B', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 14:29:29', '2023-07-15 14:29:29'),
(487, 0, 'J97PiT5CSPxQD4RItHqlEQnE5Kl5tk2PlJjlb37B', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-15 14:29:36', '2023-07-15 14:29:36'),
(488, 0, 'J97PiT5CSPxQD4RItHqlEQnE5Kl5tk2PlJjlb37B', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-15 14:29:42', '2023-07-15 14:29:42'),
(492, 0, 'NfRT9ECP1sYHXZalEfqd922sLTjDyFfY5EO7NNHa', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '56', 'Jain', 1, '30', '50', 1, '2023-07-15 15:32:24', '2023-07-15 15:32:24'),
(493, 0, 'sxEy8Tvkdq7HmzLzvSr9UhRw0fdvzkvrRSkjLWkx', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-15 15:45:24', '2023-07-15 15:45:24'),
(500, 0, 'pIrVm3PS9aYNU2hG0vxgUj0eZNJFcLWEhnmElumV', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 16:25:23', '2023-07-15 16:25:23'),
(501, 0, 'pIrVm3PS9aYNU2hG0vxgUj0eZNJFcLWEhnmElumV', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-15 16:25:48', '2023-07-15 16:25:48'),
(502, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 16:31:23', '2023-07-15 16:31:23'),
(503, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 16:31:28', '2023-07-15 16:31:28'),
(504, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 16:31:32', '2023-07-15 16:31:32'),
(505, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2', 'Bread', '0', 0, '', '', 1, '120', '5', 1, '2023-07-15 16:31:36', '2023-07-15 16:31:36'),
(506, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-15 16:31:39', '2023-07-15 16:31:39'),
(507, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '29', 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', 1, '70', '8', 1, '2023-07-15 16:31:42', '2023-07-15 16:31:42'),
(508, 0, 'kQ48gl63yW7ChxYiMI7VhKNJFQEdDfcFa0IxSWH2', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 16:32:13', '2023-07-15 16:32:13'),
(509, 0, 'zSOgPljCfy8Sw2pa65LsMEOlBLMb1kTNpPFJWoMm', '7', 'Crispy Spinach & Baby - Corn', 'item-6253b3b906ffd.jpg', 1, '', '', '', 0, '7', 'King', 1, '20', '3', 1, '2023-07-15 16:47:09', '2023-07-15 16:47:09'),
(510, 0, '2jrGGAJrwGnxbSSkaaiocObupxAJ2PhcbKBtxM4r', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 16:51:44', '2023-07-15 16:51:44'),
(511, 0, '2jrGGAJrwGnxbSSkaaiocObupxAJ2PhcbKBtxM4r', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 16:51:47', '2023-07-15 16:51:47'),
(512, 0, '2jrGGAJrwGnxbSSkaaiocObupxAJ2PhcbKBtxM4r', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 16:51:48', '2023-07-15 16:51:48'),
(513, 0, 'xCpEyI1oCuswZc25ZP9whcPKoAm8E5XmOPgPFIOf', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 16:54:35', '2023-07-15 16:54:35'),
(514, 0, 'xCpEyI1oCuswZc25ZP9whcPKoAm8E5XmOPgPFIOf', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 16:54:47', '2023-07-15 16:54:47'),
(519, 3, '', '26', 'Bombay Grilled Sandwich', 'item-6253beca51fee.jpg', 1, '', '', '', 0, '', '', 1, '99', '4', 1, '2023-07-15 17:57:03', '2023-07-15 17:57:03'),
(520, 0, '29bZsFCvNnQq7DPLOaiVwxp7Xp62pQU3TFnPCSPR', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 18:16:08', '2023-07-15 18:16:08'),
(521, 0, '29bZsFCvNnQq7DPLOaiVwxp7Xp62pQU3TFnPCSPR', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-15 18:16:11', '2023-07-15 18:16:11'),
(522, 0, 'PzN4s1fWpDe4wo5qspy54g45md59d59WOQt8FvKC', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 18:19:57', '2023-07-15 18:19:57'),
(523, 0, 'wv6qVQs7hWKtA9xb0dmyQ18VsiSSVX3QneV10RfP', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 18:28:08', '2023-07-15 18:28:08'),
(524, 0, 'WKnT6PdPiM7T8nkOLXIWMyr1fxi0CWkSrVuHiIT5', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-15 18:32:15', '2023-07-15 18:32:15'),
(525, 0, 'WKnT6PdPiM7T8nkOLXIWMyr1fxi0CWkSrVuHiIT5', '9', 'Veg. Munchow Soup', 'item-6253b4984d7ff.jpg', 1, '', '', '', 0, '9', 'Half', 1, '10', '0', 1, '2023-07-15 18:32:27', '2023-07-15 18:32:27'),
(526, 0, 'OgN5lDxyiLNQKf24ibMo5YgX5bvQ7WO9y0DpfC2R', '32', 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '1,3', 'Red chutney,Fried tomatos', '5,35369.50', 35374.5, '45', 'Regular', 1, '70', '7', 1, '2023-07-15 19:15:17', '2023-07-15 19:15:17'),
(527, 0, 'DjCgJ7QipyaHSFuryLaXnOo5FGzrP4BTSmOc8GuL', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-15 20:00:58', '2023-07-15 20:00:58'),
(528, 0, 'euxQuJ2VipvOXWqP4EHF6Zpzdmb89SNYIgl58thj', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-15 20:09:30', '2023-07-15 20:09:30'),
(529, 0, 'cxZviJBvbiC0MmfI1Hwp9zNfzs03vfzVEddVPZ05', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-15 20:49:45', '2023-07-15 20:49:45'),
(530, 0, 'cxZviJBvbiC0MmfI1Hwp9zNfzs03vfzVEddVPZ05', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-15 20:49:51', '2023-07-15 20:49:51'),
(531, 0, 'cxZviJBvbiC0MmfI1Hwp9zNfzs03vfzVEddVPZ05', '37', 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', 1, '50', '5', 1, '2023-07-15 20:49:54', '2023-07-15 20:49:54'),
(532, 0, 'cxZviJBvbiC0MmfI1Hwp9zNfzs03vfzVEddVPZ05', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-15 20:54:40', '2023-07-15 20:54:40'),
(533, 0, '4xdTfH6DaOxs1iafaoGB35KLVpGOEHqA4SNFa8go', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 3, '35', '10', 1, '2023-07-15 21:58:02', '2023-07-15 21:58:22'),
(534, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 2, '50', '0', 1, '2023-07-15 23:38:33', '2023-07-15 23:40:58'),
(535, 2, '', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-15 23:38:50', '2023-07-15 23:40:17'),
(540, 2, '', '23', 'Plain Sandwich', 'item-6253be3d86a84.jpg', 1, '', '', '', 0, '', '', 1, '49', '5', 1, '2023-07-15 23:42:22', '2023-07-15 23:42:22'),
(541, 2, '', '9', 'Veg. Munchow Soup', 'item-6253b4984d7ff.jpg', 1, '', '', '', 0, '9', 'Half', 1, '10', '0', 1, '2023-07-15 23:46:23', '2023-07-15 23:46:23'),
(544, 0, 'zHdCxJuqmP6UIotxhsgfPbEKwz9hUv3IvE7nZuRG', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-16 02:03:56', '2023-07-16 02:03:56'),
(545, 0, 'M7vTt9vAoC5uvls1lRp9eK6VSA67e7QcdhE097bj', '37', 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', 1, '50', '5', 1, '2023-07-16 03:07:22', '2023-07-16 03:07:22'),
(546, 0, 'M7vTt9vAoC5uvls1lRp9eK6VSA67e7QcdhE097bj', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 03:08:12', '2023-07-16 03:08:12'),
(547, 0, 'LSK0C1noZh6hHf6fvn1pEpjOM7iuKlcTGuOKIkRA', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-16 04:02:02', '2023-07-16 04:02:02'),
(548, 0, 'BAv81xNqQ1uIWScL8lY1I2QgifROVhCNZqqXmIOD', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 04:19:18', '2023-07-16 04:19:18'),
(549, 0, '0Z4YW9PbM0v3eRkv5JmS3q0payuzz2MV19xy6Fhl', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-16 04:51:27', '2023-07-16 04:51:27'),
(550, 0, 'sqHyTwDPm4z5oCJjVXgk2sBigBQmGGbxHjEtkOoH', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-16 07:06:31', '2023-07-16 07:06:31'),
(551, 0, 'Klt4nu4rdn3HUywEBbLlFNCNgxaaepmXk2iHXw5o', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-16 07:32:19', '2023-07-16 07:32:19'),
(552, 0, 'TbE9J8LmhLgxp0ZTENIpXEIfrooQTrYe7two6Bdb', '26', 'Bombay Grilled Sandwich', 'item-6253beca51fee.jpg', 1, '2,5', 'Bread,Butter pav', '0,5', 5, '', '', 1, '99', '4', 1, '2023-07-16 08:09:59', '2023-07-16 08:09:59'),
(554, 0, 'JAXw6R4tzWQpx7lVnyv0J7gzKyD0PLXKHidIK9OU', '34', 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '', '', '', 0, '52', 'Full - jain', 1, '30', '0', 1, '2023-07-16 09:58:10', '2023-07-16 09:58:10'),
(555, 0, 'gDF9bl4KRtvanNeE9AMwJ6c3WTss7e6Q31eyl6SN', '28', 'Plain Dosa', 'item-6253bf83198f8.jpg', 1, '', '', '', 0, '', '', 1, '30', '9', 1, '2023-07-16 10:08:16', '2023-07-16 10:08:16'),
(556, 0, 'gDF9bl4KRtvanNeE9AMwJ6c3WTss7e6Q31eyl6SN', '30', 'Mysore Dosa', 'item-6253bfde38bb4.jpg', 1, '', '', '', 0, '41', 'Regular', 1, '80.5', '7', 1, '2023-07-16 10:08:23', '2023-07-16 10:08:23'),
(557, 0, 'RuCTJ9LCZMEGCCSBh6Z4pw8DnVVkkSbg5WEFc4wl', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 2, '30', '0', 1, '2023-07-16 10:08:36', '2023-07-16 10:09:03'),
(558, 0, 'RuCTJ9LCZMEGCCSBh6Z4pw8DnVVkkSbg5WEFc4wl', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '57', 'Regular - half', 1, '40', '50', 1, '2023-07-16 10:09:25', '2023-07-16 10:09:25'),
(559, 0, 'EZsjHFKJJZ3tLm6hYIzDUwziR2qfoCz4tI6Z7tU4', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', 1, '20', '50', 1, '2023-07-16 10:44:33', '2023-07-16 10:44:33'),
(561, 2, '', '9', 'Veg. Munchow Soup', 'item-6253b4984d7ff.jpg', 1, '', '', '', 0, '9', 'Half', 1, '10.00', '0', 1, '2023-07-16 11:13:54', '2023-07-16 11:39:25'),
(563, 0, 'eW44BG3J2zAbFEEZcsBDESXspUpIxEuW2BQ3wR3f', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 2, '50', '0', 1, '2023-07-16 12:05:00', '2023-07-16 12:05:46'),
(564, 2, '', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '15', 'Regular', 1, '40', '0', 1, '2023-07-16 12:22:11', '2023-07-16 12:22:23'),
(565, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 12:22:34', '2023-07-16 12:22:34'),
(566, 0, 'eeKnHR6hghWS17XZLpiXYx1hqxdNCzVbhdXHGW5z', '15', 'Jain Spl. Pizza', 'item-6253b8756e6c6.jpeg', 2, '2', 'Bread', '0', 0, '25', 'King', 1, '40', '6', 1, '2023-07-16 12:55:57', '2023-07-16 12:55:57'),
(567, 2, '', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3,4', 'Fried tomatos,Onions', '35369.50,0', 35369.5, '57', 'Regular - half', 2, '40', '50', 1, '2023-07-16 13:16:58', '2023-07-16 13:17:57'),
(568, 0, 'exAIRqCxDkO4SJEVKaUoZWJpr5OggG60vw0MCRfF', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 1, '35', '10', 1, '2023-07-16 13:18:00', '2023-07-16 13:18:00'),
(569, 0, 'xosK7Yf6V8PPyeVjEy0evChokZqWBVWYJGYVuZUC', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', 1, '50', '8', 1, '2023-07-16 13:23:03', '2023-07-16 13:23:03'),
(570, 0, 'vzRxFBv5OgmijG9jBRPxm7bovoZn1mLI0m1HzAPg', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '56', 'Jain', 1, '30', '50', 1, '2023-07-16 14:05:43', '2023-07-16 14:05:43'),
(571, 0, 'asxQC80rXlMDfZotILFggK3bjjFtnoD9YsJUtnDc', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 2, '30', '0', 1, '2023-07-16 14:19:05', '2023-07-16 14:19:19'),
(572, 0, 'UK5j1Xc8g6bVY8UyGZzb2qd1IR1dShUVmYpgoPXd', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 14:21:17', '2023-07-16 14:21:17'),
(573, 0, '1Gq3fZk1fi1M0EFpaeQDCxqkKbM1UlDLBw2HsVbh', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 14:34:30', '2023-07-16 14:34:30'),
(574, 0, '1Gq3fZk1fi1M0EFpaeQDCxqkKbM1UlDLBw2HsVbh', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', 1, '30', '0', 1, '2023-07-16 14:34:36', '2023-07-16 14:34:36'),
(575, 0, 'fjZIKxqUQLKuKzEGlFIM5XW9XedHMUzrxAdf7upZ', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 14:54:10', '2023-07-16 14:54:10'),
(576, 0, 'fjZIKxqUQLKuKzEGlFIM5XW9XedHMUzrxAdf7upZ', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 14:54:20', '2023-07-16 14:54:20'),
(580, 0, '2IWoQpv65DVsFPGO47aLi98rkRFKLbgFf2sbkG56', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 17:27:14', '2023-07-16 17:27:14'),
(581, 0, '2IWoQpv65DVsFPGO47aLi98rkRFKLbgFf2sbkG56', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-16 17:27:22', '2023-07-16 17:27:22'),
(582, 2, '', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-16 18:24:22', '2023-07-16 19:14:33'),
(583, 2, '', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', 1, '99', '7', 1, '2023-07-16 18:39:29', '2023-07-16 18:39:29'),
(584, 0, 'KqWEo8XCGsPPgkMWYKZdMWwl0mHDLHOc4RFsfEsx', '44', 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', 1, '30', '0', 1, '2023-07-16 18:44:20', '2023-07-16 18:44:20'),
(585, 0, 'MXIuDQqVjEeVAGnxasnSZnTasfkyDwNDAW5j4CCT', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35374.5, '', '', 1, '99', '7', 1, '2023-07-16 19:50:11', '2023-07-16 19:50:11'),
(586, 2, '', '20', 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '38', 'Combo', 1, '80', '8', 1, '2023-07-16 20:34:45', '2023-07-16 20:35:31'),
(587, 2, '', '21', 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '1', 'Red chutney', '5', 5, '', '', 1, '120', '8', 1, '2023-07-16 20:34:55', '2023-07-16 20:35:31'),
(588, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 20:37:14', '2023-07-16 20:37:14'),
(589, 2, '', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-16 21:05:54', '2023-07-16 21:06:17'),
(590, 0, 'NylAIHEwVuX6FM61fxJhcAJZDUjyvjvwBZ77LDwE', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-16 21:57:47', '2023-07-16 21:57:47'),
(591, 1, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 22:10:30', '2023-07-16 22:10:30'),
(592, 2, '', '36', 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', 35369.5, '', '', 1, '99', '7', 1, '2023-07-16 22:13:36', '2023-07-16 22:13:36'),
(593, 0, 'FIp3rwCPwcE4egJFF4fUxfLxbwFhLIvKiDBgSsQw', '39', 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', 1, '120', '5', 1, '2023-07-16 23:46:36', '2023-07-16 23:46:36'),
(594, 0, 'FIp3rwCPwcE4egJFF4fUxfLxbwFhLIvKiDBgSsQw', '13', 'Tandoori Pizza', 'item-6253b7f14d29d.jpeg', 2, '', '', '', 0, '20', 'Regular', 1, '30', '4', 1, '2023-07-16 23:46:43', '2023-07-16 23:46:43'),
(595, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-16 23:52:00', '2023-07-16 23:57:01'),
(596, 2, '', '11', 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1', 'Red chutney', '5', 5, '14', 'King', 1, '50', '0', 1, '2023-07-16 23:52:40', '2023-07-16 23:57:01'),
(597, 0, 'V6SpOU2MlbgqKLOJ2HuCBS8znSpjbmoqo2BA3OsK', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', 1, '65', '10', 1, '2023-07-17 01:31:12', '2023-07-17 01:31:12'),
(598, 0, 'C5cNRJu0Bi9pBK2qjEbL3emLkfhcZwzfvLgS1rhO', '31', 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '', '', '', 0, '43', 'Regular', 1, '80', '7', 1, '2023-07-17 02:04:11', '2023-07-17 02:04:11'),
(599, 0, 'TXZT7Xw6DFSZoNqMIx6JSszE2XOCfB7oPnDdnIIX', '26', 'Bombay Grilled Sandwich', 'item-6253beca51fee.jpg', 1, '2', 'Bread', '0', 0, '', '', 1, '99', '4', 1, '2023-07-17 04:23:53', '2023-07-17 04:23:53'),
(600, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-17 04:27:21', '2023-07-17 04:27:21'),
(601, 2, '', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-17 04:27:40', '2023-07-17 04:27:40'),
(602, 0, '2ALrFGDFdNOHrVOyJJNO7EEKUho4NJDQZgkK0qqS', '46', 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', 2, '35', '10', 1, '2023-07-17 04:52:26', '2023-07-17 04:52:49'),
(604, 0, '2ALrFGDFdNOHrVOyJJNO7EEKUho4NJDQZgkK0qqS', '22', 'Ultimate Crunchy Burger', 'item-6253bd5355743.jpg', 2, '', '', '', 0, '', '', 1, '99', '5', 1, '2023-07-17 04:53:35', '2023-07-17 04:53:35'),
(605, 0, '2ALrFGDFdNOHrVOyJJNO7EEKUho4NJDQZgkK0qqS', '45', 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', 1, '50', '0', 1, '2023-07-17 04:53:51', '2023-07-17 04:53:51'),
(606, 0, '2ALrFGDFdNOHrVOyJJNO7EEKUho4NJDQZgkK0qqS', '35', 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3,4', 'Fried tomatos,Onions', '35369.50,0', 35369.5, '55', 'Regular', 1, '20', '50', 1, '2023-07-17 04:54:40', '2023-07-17 04:54:40'),
(607, 0, '7AOrEZs5gcbqSyOk8lE53H3YGZAB1i9CmDBSEKjs', '33', 'Noodles', 'item-62de4ef62b00c.jpg', 1, '2,3,5', 'Bread,Fried tomatos,Butter pav', '0,35369.50,5', 35374.5, '50', 'Cheese', 1, '80.5', '7', 1, '2023-07-17 05:19:52', '2023-07-17 05:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `extras_id` varchar(255) DEFAULT NULL,
  `extras_name` varchar(255) DEFAULT NULL,
  `extras_price` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `variants_id` varchar(255) DEFAULT NULL,
  `variants_name` varchar(255) DEFAULT NULL,
  `variants_price` varchar(255) DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `reorder_id` int(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `vendor_id`, `reorder_id`, `category_name`, `slug`, `image`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 'Burgers', 'burgers', 'category-62aad5318abec.jpeg', 1, 2, '2021-08-15 07:40:08', '2023-04-19 03:45:54'),
(2, 0, 9, 'Starter', 'starter', 'category-62aad18971ccb.jpg', 1, 2, '2022-04-09 06:30:02', '2023-04-19 00:02:36'),
(3, 0, 6, 'Pizzas', 'pizzas', 'category-62aad14026387.jpg', 1, 2, '2022-04-09 07:03:18', '2023-04-19 00:02:42'),
(4, 0, 8, 'Drinks', 'drinks', 'category-62aad5075a77e.jpeg', 1, 2, '2022-04-10 22:50:07', '2023-04-19 00:02:42'),
(5, 0, 3, 'Dessert', 'dessert', 'category-62aad2a70082e.jpeg', 1, 2, '2022-04-10 22:50:33', '2023-04-19 03:45:54'),
(6, 0, 1, 'Chinese', 'chinese', 'category-62aad28aea353.jpg', 1, 2, '2022-04-10 22:50:50', '2023-04-19 03:45:52'),
(7, 0, 4, 'Dosa', 'dosa', 'category-62aad06e93e89.jpg', 1, 2, '2022-04-10 22:51:06', '2023-04-19 00:02:41'),
(8, 0, 7, 'Sandwich', 'sandwich', 'category-62aad10737fd2.jpg', 1, 2, '2022-04-10 22:51:22', '2023-04-19 00:02:42'),
(9, 0, 5, 'Soup', 'soup', 'category-62aad414e1ef8.jpeg', 1, 2, '2022-04-10 22:51:45', '2023-04-19 00:02:42'),
(10, 11, 0, 'veg', 'veg', 'category-64b7b2f1edff9.png', 1, 2, '2023-07-19 04:24:57', '2023-07-19 06:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `city`, `name`, `is_deleted`, `is_available`, `created_at`, `updated_at`) VALUES
(2, 5, 'vadodara', '', 2, 2, '2023-07-20 03:22:34', '2023-07-25 00:06:54'),
(11, 5, 'surat', '', 2, 2, '2023-07-20 05:39:00', '2023-07-25 00:08:29'),
(13, 6, 'London', '', 2, 1, '2023-07-20 23:41:34', '2023-07-25 00:10:54'),
(16, 6, 'Liverpool', '', 2, 1, '2023-07-24 01:34:22', '2023-07-25 01:23:55'),
(17, 5, 'surat', '', 2, 1, '2023-07-24 01:45:42', '2023-07-24 01:45:42'),
(19, 4, 'Ajman', '', 2, 1, '2023-07-24 02:27:17', '2023-07-24 02:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No\r\n',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `is_deleted`, `is_available`, `created_at`, `updated_at`) VALUES
(4, 'UAE', 2, 2, '2023-07-20 23:40:56', '2023-07-25 00:01:36'),
(5, 'INDIA', 2, 1, '2023-07-24 01:27:04', '2023-07-24 23:52:50'),
(6, 'UK', 2, 1, '2023-07-24 01:28:27', '2023-07-25 00:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `active_from` varchar(255) NOT NULL,
  `active_to` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_domain`
--

CREATE TABLE `custom_domain` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `requested_domain` text NOT NULL,
  `current_domain` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryareas`
--

CREATE TABLE `deliveryareas` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `vendor_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(2, 1, 'question', 'answer', '2023-07-24 06:27:47', '2023-07-24 06:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 2, 46, '2023-07-14 22:28:51', '2023-07-14 22:28:51'),
(8, 2, 44, '2023-07-16 13:18:06', '2023-07-16 13:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `vendor_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(7, 1, 'test', 'features', 'feature-64be70c94acff.png', '2023-07-24 07:06:11', '2023-07-24 22:34:04'),
(8, 15, 'test', 'test 2', 'feature-64be738e21aac.jpg', '2023-07-24 07:20:22', '2023-07-24 07:20:22'),
(9, 11, 'tset', 'test', 'feature-64bf45f6483a0.jpg', '2023-07-24 22:10:08', '2023-07-24 22:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `footerfeatures`
--

CREATE TABLE `footerfeatures` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_features`
--

CREATE TABLE `footer_features` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_features`
--

INSERT INTO `footer_features` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-solid fa-truck-fast\"></i>', 'Free Shipping', 'Lorem ipsum dolor sit amet, consectetur', '2022-11-15 08:00:49', '2022-11-15 08:00:49'),
(2, '<i class=\"fa-solid fa-map-location-dot\"></i>', 'Live Order Tracking', 'Lorem ipsum dolor sit amet, consectetur', '2022-11-15 08:00:49', '2022-11-15 08:00:49'),
(3, '<i class=\"fa-solid fa-stopwatch-20\"></i>', 'Quick Delivery', 'Lorem ipsum dolor sit amet, consectetur', '2022-11-15 08:00:49', '2022-11-15 08:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `reorder_id` int(20) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL COMMENT 'subcategory id from subcategories table',
  `item_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `item_type` int(11) DEFAULT NULL COMMENT '1=veg,2=nonveg',
  `has_variation` int(11) NOT NULL COMMENT '1=yes,2=no',
  `attribute` varchar(255) DEFAULT NULL,
  `price` varchar(11) DEFAULT '0',
  `addons_id` varchar(255) DEFAULT NULL,
  `item_description` longtext DEFAULT NULL,
  `preparation_time` varchar(255) DEFAULT NULL COMMENT 'In minutes',
  `tax` varchar(255) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_featured` int(11) DEFAULT 2 COMMENT '1=yes,2=no',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `vendor_id`, `reorder_id`, `cat_id`, `subcat_id`, `item_name`, `slug`, `image`, `item_type`, `has_variation`, `attribute`, `price`, `addons_id`, `item_description`, `preparation_time`, `tax`, `item_status`, `is_featured`, `is_deleted`, `created_at`, `updated_at`) VALUES
(5, 0, 5, 2, 21, 'Chilly Paneer Dry', 'chilly-paneer-dry', 'item-62514e3c087aa.jpg', 1, 1, 'Size', NULL, NULL, 'Lorem is dummy ispum text to type setting the industry .Lorem is dummy ispum text to type setting the industry .Lorem is dummy ispum text to type setting the industry .Lorem is dummy ispum text to type setting the industry .', '5 Min', '0', 1, 2, 2, '2022-04-09 03:43:32', '2023-04-18 23:33:35'),
(6, 0, 10, 2, 21, 'Chilly Mushroom Dry', 'chilly-mushroom-dry', 'item-6253b32a8aa80.jpg', 1, 2, NULL, '120', '2,3', 'Lorem is dummy ipsum to type seeting the industry . Lorem is dummy ipsum to type seeting the industry . Lorem is dummy ipsum to type seeting the industry . Lorem is dummy ipsum to type seeting the industry . Lorem is dummy ipsum to type seeting the industry .', '15 Min', '6', 1, 1, 2, '2022-04-10 23:18:42', '2023-04-18 23:16:52'),
(7, 0, 9, 2, 21, 'Crispy Spinach & Baby - Corn', 'crispy-spinach-baby-corn', 'item-6253b3b906ffd.jpg', 1, 1, 'Size', NULL, '4,5', 'Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry. Lorem is dummy ipsum to type settignt he industry.', '5 Min', '3', 1, 2, 2, '2022-04-10 23:21:05', '2023-04-18 23:16:52'),
(8, 0, 8, 9, 5, 'Veg. Clear Soup', 'veg-clear-soup', 'item-6253b439a4e06.jpg', 1, 2, NULL, '30', NULL, 'Lorem is dummy ipsum text .Lorem is dummy ipsum text .Lorem is dummy ipsum text .Lorem is dummy ipsum text .Lorem is dummy ipsum text .Lorem is dummy ipsum text .', '50 Min', '0', 1, 2, 2, '2022-04-10 23:23:13', '2023-04-18 23:06:19'),
(9, 0, 10, 9, 4, 'Veg. Munchow Soup', 'veg-munchow-soup', 'item-6253b4984d7ff.jpg', 1, 1, 'Size', NULL, '1,4', 'Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting .', '2 Min', '0', 1, 1, 2, '2022-04-10 23:24:48', '2023-04-18 23:06:19'),
(10, 0, 7, 9, 4, 'Hot & Sour Soup', 'hot-sour-soup', 'item-6253b4d9b9e75.jpeg', 1, 1, 'Size', NULL, NULL, 'Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting . Lorem is dummy ipsum text to type setting .', '20 Min', '0', 1, 2, 2, '2022-04-10 23:25:53', '2023-04-18 23:16:55'),
(11, 0, 8, 3, 18, 'Capsicum, Onion Pizza', 'capsicum-onion-pizza', 'item-6253b72ee819b.jpeg', 2, 1, 'Size', NULL, '1,2,3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '0', 1, 2, 2, '2022-04-10 23:35:50', '2023-04-18 23:16:55'),
(12, 0, 8, 3, 18, 'Plain Cheese Pizza', 'plain-cheese-pizza', 'item-6253b79f5a4aa.jpg', 1, 1, 'Size', NULL, '2,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '25 min', '5', 1, 1, 2, '2022-04-10 23:37:43', '2023-04-18 23:09:27'),
(13, 0, 10, 3, 17, 'Tandoori Pizza', 'tandoori-pizza', 'item-6253b7f14d29d.jpeg', 2, 1, 'Size', NULL, '2,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '4', 1, 2, 2, '2022-04-10 23:39:05', '2023-04-18 23:09:27'),
(14, 0, 6, 3, 17, 'Tomato, Onion Pizza', 'tomato-onion-pizza', 'item-6253b8300df8b.jpg', 1, 2, NULL, '120', '2,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30 Min', '6', 1, 2, 2, '2022-04-10 23:40:08', '2023-04-18 23:16:55'),
(15, 0, 7, 3, 18, 'Jain Spl. Pizza', 'jain-spl-pizza', 'item-6253b8756e6c6.jpeg', 2, 1, 'Size', NULL, '2,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30 Min', '6', 1, 1, 2, '2022-04-10 23:41:17', '2023-04-18 23:07:28'),
(16, 0, 8, 3, 18, 'Super Veggie Pizza', 'super-veggie-pizza', 'item-6253b9571bed9.jpg', 2, 1, 'Size', NULL, '2,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30 Min', '6', 1, 2, 2, '2022-04-10 23:45:03', '2023-04-18 23:33:35'),
(17, 0, 13, 1, 19, 'Veg. Burger', 'veg-burger', 'item-6253bc7f6c31e.jpg', 1, 1, 'Size', NULL, '1,2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '25 Min', '4', 1, 1, 2, '2022-04-10 23:58:31', '2022-06-30 13:59:41'),
(18, 0, 14, 1, 20, 'Chicken Burgers', 'chicken-burgers', 'item-6253bcb374c0c.jpg', 2, 1, 'Size', NULL, '1,2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30 Min', '7', 1, 1, 2, '2022-04-10 23:59:23', '2022-07-25 15:04:01'),
(19, 0, 15, 1, 20, 'The Ultimate Veggie Burger', 'the-ultimate-veggie-burger', 'item-6253bcdda9403.jpg', 1, 1, 'Size', NULL, '1,2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '25 Min', '8', 1, 1, 2, '2022-04-11 00:00:05', '2022-07-25 15:03:57'),
(20, 0, 1, 1, 19, 'Cheese Burger', 'cheese-burger', 'item-6253bcfe3fa14.jpeg', 1, 1, 'Size', NULL, '1,2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '8', 1, 2, 2, '2022-04-11 00:00:38', '2023-04-18 23:33:38'),
(21, 0, 2, 1, 20, 'Chocolate Burger', 'chocolate-burger', 'item-6253bd1f5da5e.jpg', 2, 2, NULL, '120', '1,2,3,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '8', 1, 1, 2, '2022-04-11 00:01:11', '2023-04-18 23:33:38'),
(22, 0, 4, 1, 19, 'Ultimate Crunchy Burger', 'ultimate-crunchy-burger', 'item-6253bd5355743.jpg', 2, 2, NULL, '99', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '35 Min', '5', 1, 1, 2, '2022-04-11 00:02:03', '2023-04-18 23:33:38'),
(23, 0, 8, 8, 7, 'Plain Sandwich', 'plain-sandwich', 'item-6253be3d86a84.jpg', 1, 2, NULL, '49', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '40 Min', '5', 1, 2, 2, '2022-04-11 00:05:57', '2023-04-18 23:33:40'),
(24, 0, 3, 8, 7, 'Grilled Sandwich', 'grilled-sandwich', 'item-6253be720bc03.jpg', 2, 1, 'Size', NULL, '2,3,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '10 min', '5', 1, 1, 2, '2022-04-11 00:06:50', '2023-04-18 23:33:38'),
(25, 0, 5, 8, 6, 'Club Sandwich', 'club-sandwich', 'item-6253be9e3042c.jpg', 1, 2, NULL, '80', '2,4,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '10 Min', '5', 1, 1, 2, '2022-04-11 00:07:34', '2023-04-18 23:33:40'),
(26, 0, 6, 8, 6, 'Bombay Grilled Sandwich', 'bombay-grilled-sandwich', 'item-6253beca51fee.jpg', 1, 2, NULL, '99', '2,3,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '8 Min', '4', 1, 2, 2, '2022-04-11 00:08:18', '2023-04-18 23:33:40'),
(27, 0, 7, 8, 6, 'Mayonnaise Sandwich', 'mayonnaise-sandwich', 'item-6253bf0c73b12.jpg', 1, 2, NULL, '120', '2,3,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '5 Min', '6', 1, 1, 2, '2022-04-11 00:09:24', '2023-04-18 23:33:40'),
(28, 0, 3, 7, 8, 'Plain Dosa', 'plain-dosa', 'item-6253bf83198f8.jpg', 1, 2, NULL, '30', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '15 Min', '9', 1, 2, 2, '2022-04-11 00:11:23', '2023-04-18 23:35:17'),
(29, 0, 4, 7, 9, 'Paper Dosa', 'paper-dosa', 'item-6253bfa768baa.jpg', 1, 2, NULL, '70', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '40', '8', 1, 1, 2, '2022-04-11 00:11:59', '2023-04-18 23:35:17'),
(30, 0, 5, 7, 0, 'Mysore Dosa', 'mysore-dosa', 'item-6253bfde38bb4.jpg', 1, 1, 'Size', '0', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '15 Min', '7', 1, 2, 2, '2022-04-11 00:12:54', '2023-04-18 23:35:17'),
(31, 0, 1, 7, 0, 'Masala Dhosa\'s special', 'masala-dhosas-special', 'item-6253c00877787.jpg', 1, 1, 'Size', '0', '3,4,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '7', 1, 1, 2, '2022-04-11 00:13:36', '2023-04-18 23:35:17'),
(32, 0, 2, 7, 8, 'Rawa Dosa', 'rawa-dosa', 'item-6253c0762f1a9.jpg', 1, 1, 'Size', NULL, '1,3,4,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '30 Min', '7', 1, 2, 2, '2022-04-11 00:15:26', '2023-04-18 23:33:35'),
(33, 0, 10, 6, 0, 'Noodles', 'noodles', 'item-6253c13505a0a.jpg', 1, 1, 'Size', '0', '2,3,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '20 Min', '7', 1, 2, 2, '2022-04-11 00:18:37', '2023-04-18 23:05:07'),
(34, 0, 9, 6, 0, 'Manchurian Dry', 'manchurian-dry', 'item-6253c1b5ac8dc.jpg', 1, 1, 'Size', '0', '1,2,5,7,9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '25 Min', '0', 1, 1, 2, '2022-04-11 00:20:45', '2023-07-05 10:34:41'),
(35, 0, 8, 6, 0, 'Manchurian Gravy', 'manchurian-gravy', 'item-6253c2adddb84.jpg', 1, 1, 'Size', '0', '3,4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '40 Min', '50', 1, 2, 2, '2022-04-11 00:24:53', '2023-07-05 10:35:41'),
(36, 0, 7, 6, 11, 'Chinese bhel', 'chinese-bhel', 'item-6253c2ce25f41.jpg', 1, 2, NULL, '99', '3,4,5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '35 Min', '7', 1, 2, 2, '2022-04-11 00:25:26', '2023-04-18 23:05:07'),
(37, 0, 10, 6, 0, 'Veg. Fried Rice', 'veg-fried-rice', 'item-6253c2fc16142.jpg', 1, 2, '', '50', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetti', '45 Min', '5', 1, 1, 2, '2022-04-11 00:26:12', '2023-07-05 10:34:21'),
(38, 0, 9, 8, 0, 'Crunchy Sandwich', 'crunchy-sandwich', 'item-62886a246f537.jpg', 2, 2, '', '99', '12', 'Lorem is dummy ipsum text to type setting the indusrtry . Lorem is dummy ipsum text to type setting the indusrtry . Lorem is dummy ipsum text to type setting the indusrtry . Lorem is dummy ipsum text to type setting the indusrtry .', '40 Min', '7', 1, 2, 2, '2022-05-20 22:57:16', '2023-04-18 23:06:19'),
(39, 0, 3, 3, 17, 'Crunchy laziz pizza', 'crunchy-laziz-pizza', 'item-62908e367035e.png', 1, 2, NULL, '120', '2,4', 'Lorem is dummy ipsum text to type setting the industry . Lorem is dummy ipsum text to type setting the industry . Lorem is dummy ipsum text to type setting the industry . Lorem is dummy ipsum text to type setting the industry .', '35 Min', '5', 1, 1, 2, '2022-05-27 03:09:18', '2023-04-18 23:33:35'),
(40, 0, 36, 1, 19, 'Laziz cheese burger ever..', 'laziz-cheese-burger-ever', 'test-item', 2, 1, 'Size', NULL, '1,3,5,6,7', 'Lorem is dummy ipsum text', '15 minutes', '5', 1, 2, 1, '2022-06-23 20:03:30', '2022-06-29 15:45:01'),
(41, 0, 37, 1, 19, 'Laziz cheese burger', 'laziz-cheese-burger', 'test-item', 2, 1, 'Size', NULL, '2,3,6,7', NULL, '15 minutes', '0', 1, 2, 1, '2022-06-23 20:15:44', '2022-06-29 15:45:01'),
(42, 0, 38, 1, 19, 'Laziz cheese burger ever..', 'laziz-cheese-burger-ever-41', 'test-item', 2, 2, NULL, '199', '3,5', NULL, '15 minutes', '0', 1, 2, 1, '2022-06-23 20:18:40', '2022-06-29 15:45:01'),
(43, 0, 39, 1, 19, 'Laziz cheese burger ever..', 'laziz-cheese-burger-ever-42', 'test-item', 2, 2, NULL, '199', '3,5', NULL, '15 minutes', '0', 1, 2, 1, '2022-06-23 20:19:06', '2022-06-29 15:45:01'),
(44, 0, 1, 1, 0, 'Laziz cheese burger ever..', 'laziz-cheese-burger-ever-44', 'test-item', 2, 2, '', '30', '6', NULL, '15 minutes', '0', 1, 2, 2, '2022-06-23 20:19:35', '2023-04-18 23:16:52'),
(45, 0, 7, 5, 0, 'Testy Chocolate Birthday Cakes', 'testy-chocolate-birthday-cakes', NULL, 1, 2, '', '50', NULL, NULL, '10', '0', 1, 1, 2, '2023-04-04 00:49:07', '2023-07-05 10:35:04'),
(46, 0, 9, 5, 0, 'Sweet Brownie Chocolate Cake', 'sweet-brownie-chocolate-cake', NULL, 1, 1, 'kilogram', '0', NULL, 'best testy cake', '10', '10', 1, 1, 2, '2023-04-04 01:03:10', '2023-07-05 10:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `description` text NOT NULL,
  `item_price` float NOT NULL,
  `item_original_price` float DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `tax` float DEFAULT 0,
  `slug` text DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'item-6119128226fce.png', '2021-08-15 07:41:30', '2021-08-15 07:41:30'),
(2, 1, 'item-61191282560db.png', '2021-08-15 07:41:30', '2021-08-15 07:41:30'),
(3, 1, 'item-6119128263b88.png', '2021-08-15 07:41:30', '2021-08-15 07:41:30'),
(5, 44, 'item-642bc0d24eb69.jpg', '2022-06-23 20:19:35', '2023-04-04 00:46:50'),
(9, 5, 'item-62514e3c087aa.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(10, 6, 'item-6253b32a8aa80.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(11, 7, 'item-6253b3b906ffd.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(12, 8, 'item-6253b439a4e06.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(13, 9, 'item-6253b4984d7ff.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(14, 10, 'item-6253b4d9b9e75.jpeg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(15, 11, 'item-6253b72ee819b.jpeg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(16, 12, 'item-6253b79f5a4aa.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(17, 13, 'item-6253b7f14d29d.jpeg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(18, 14, 'item-6253b8300df8b.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(19, 15, 'item-6253b8756e6c6.jpeg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(20, 16, 'item-6253b9571bed9.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(21, 17, 'item-6253bc7f6c31e.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(22, 18, 'item-6253bcb374c0c.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(23, 19, 'item-6253bcdda9403.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(24, 20, 'item-6253bcfe3fa14.jpeg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(25, 21, 'item-6253bd1f5da5e.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(26, 22, 'item-6253bd5355743.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(27, 23, 'item-6253be3d86a84.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(28, 24, 'item-6253be720bc03.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(29, 25, 'item-6253be9e3042c.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(30, 26, 'item-6253beca51fee.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(31, 27, 'item-6253bf0c73b12.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(32, 28, 'item-6253bf83198f8.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(33, 29, 'item-6253bfa768baa.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(34, 30, 'item-6253bfde38bb4.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(35, 31, 'item-6253c00877787.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(36, 32, 'item-62b56b154a014.jpg', '2022-06-24 12:44:55', '2022-06-24 14:43:17'),
(37, 33, 'item-62de4ef62b00c.jpg', '2022-06-24 12:44:55', '2022-07-25 15:06:14'),
(39, 35, 'item-62de4ead4a970.jpg', '2022-06-24 12:44:55', '2022-07-25 15:05:01'),
(40, 36, 'item-6253c2ce25f41.jpg', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(41, 37, 'item-62b569e1c75e5.jpg', '2022-06-24 12:44:55', '2022-06-24 14:38:09'),
(43, 39, 'item-62b565b9e6863.jpg', '2022-06-24 12:44:55', '2022-06-24 14:20:25'),
(44, 40, 'test-item', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(45, 41, 'test-item', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(46, 42, 'test-item', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(47, 43, 'test-item', '2022-06-24 12:44:55', '2022-06-24 12:44:55'),
(49, 39, 'item-62b565d2d3f70.webp', '2022-06-24 14:20:50', '2022-06-24 14:20:50'),
(50, 39, 'item-62b565ecaed64.jpg', '2022-06-24 14:20:50', '2022-06-24 14:21:16'),
(51, 39, 'item-62b565f4ddb43.jpg', '2022-06-24 14:20:50', '2022-06-24 14:21:24'),
(52, 37, 'item-62b569ad47315.jpg', '2022-06-24 14:36:49', '2022-06-24 14:37:17'),
(54, 37, 'item-62b56991d8ba0.jpg', '2022-06-24 14:36:49', '2022-06-24 14:36:49'),
(55, 37, 'item-62b5699eb52b7.jpg', '2022-06-24 14:36:49', '2022-06-24 14:37:02'),
(56, 34, 'item-62b56a4221197.jpg', '2022-06-24 14:39:46', '2022-06-24 14:39:46'),
(57, 34, 'item-62b56a4221705.jpg', '2022-06-24 14:39:46', '2022-06-24 14:39:46'),
(59, 34, 'item-62b56a64bd0d3.jpg', '2022-06-24 14:39:55', '2022-06-24 14:40:20'),
(61, 32, 'item-62b56b3fb6469.jpg', '2022-06-24 14:43:59', '2022-06-24 14:43:59'),
(62, 32, 'item-62b56b3fb66d2.jpg', '2022-06-24 14:43:59', '2022-06-24 14:43:59'),
(63, 32, 'item-62b56b49e1884.jpg', '2022-06-24 14:44:09', '2022-06-24 14:44:09'),
(66, 35, 'item-62de4ea0ec44a.jpg', '2022-06-25 18:35:53', '2022-07-25 15:04:48'),
(67, 38, 'item-62bd4a94c0716.jpg', '2022-06-30 14:02:44', '2022-06-30 14:02:44'),
(69, 38, 'item-62bd4b19cd94d.jpg', '2022-06-30 14:04:57', '2022-06-30 14:04:57'),
(70, 33, 'item-62de4f01ba1ff.jpg', '2022-07-25 15:06:25', '2022-07-25 15:06:25'),
(71, 44, 'item-62de864a81935.jpg', '2022-07-25 19:02:18', '2022-07-25 19:02:18'),
(72, 38, 'item-642511b5d1834.jpg', '2023-03-29 23:06:05', '2023-03-29 23:06:05'),
(73, 45, 'item-642bc15b26406.jpg', '2023-04-04 00:49:07', '2023-04-04 00:49:07'),
(74, 46, 'item-642bc4a624fd1.jpg', '2023-04-04 01:03:10', '2023-04-04 01:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `layout` int(11) NOT NULL DEFAULT 1 COMMENT '1=ltr,2=rtl',
  `is_default` int(11) NOT NULL DEFAULT 2 COMMENT '1 = yes , 2 = no',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `image`, `layout`, `is_default`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'flag-64005c4be9359.png', 1, 1, 1, '2022-12-13 05:15:46', '2023-03-23 11:51:01'),
(1, 'en', 'English', 'flag-64005c4be9359.png', 1, 1, 1, '2022-12-13 05:15:46', '2023-03-23 11:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `manage_roles`
--

CREATE TABLE `manage_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `titles` text DEFAULT NULL,
  `modules` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL COMMENT '1=yes,2=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_roles`
--

INSERT INTO `manage_roles` (`id`, `name`, `titles`, `modules`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen manager', 'Report,POS', '2,25', 2, '2022-06-14 07:21:34', '2022-11-18 01:50:07'),
(2, 'General Manager', 'Orders,Report,Categories,Products,POS', '1,2,7,10,25', 1, '2022-11-18 01:46:48', '2022-11-18 01:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9),
(20, '2022_05_06_115647_create_roles_table', 10),
(21, '2022_05_19_042851_create_subcategories_table', 11),
(22, '2022_05_25_053255_create_blogs_table', 12),
(23, '2022_05_25_072838_create_teams_table', 13),
(24, '2022_05_25_100726_create_tutorials_table', 14),
(25, '2022_05_25_105457_create_faqs_table', 15),
(26, '2022_05_25_110626_create_galleries_table', 16),
(27, '2022_05_27_084728_create_zones_table', 17),
(29, '2022_06_18_074001_create_bookings_table', 18),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `cat_id`, `item_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'gfdfg', NULL, 45, 'hchgb', '2023-07-09 17:40:52', '2023-07-09 17:40:52'),
(2, 'Saat qur?a??', 9, NULL, 'Saat qur?a??', '2023-07-15 13:19:06', '2023-07-15 13:19:06'),
(3, 'test', NULL, 46, 'test', '2023-07-15 15:41:54', '2023-07-15 15:41:54'),
(4, 'fasdfasd', NULL, 46, 'fasdfsda', '2023-07-16 17:22:57', '2023-07-16 17:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` bigint(50) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_type` varchar(11) NOT NULL DEFAULT '1' COMMENT '1 = Delivery , 2 = Pickup',
  `address_type` varchar(10) DEFAULT NULL COMMENT '1- Home, 2-Office, 3-Other',
  `address` varchar(255) DEFAULT NULL,
  `house_no` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(50) DEFAULT '0.00',
  `delivery_charge` varchar(50) DEFAULT '0.00',
  `tax_amount` varchar(50) DEFAULT '0.00',
  `grand_total` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = cod, 2=wallet,3=razorpay,4=stripe/5=flutterwave,6=paystack',
  `status` varchar(11) NOT NULL COMMENT '1=Order-placed(both)\r\n2=accepted-by-admin(both)\r\n3=order-ready(both)\r\n4=order-on-the-way(delivery) && waiting-for-pickup(pickup)\r\n5=order-completed(both)\r\n6=cancelled-by-admin(both)\r\n7=cancelled-by-user(both)',
  `order_from` varchar(10) DEFAULT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `order_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `vendor_id`, `order_number`, `user_id`, `name`, `email`, `mobile`, `driver_id`, `order_type`, `address_type`, `address`, `house_no`, `area`, `lat`, `lang`, `offer_code`, `discount_amount`, `delivery_charge`, `tax_amount`, `grand_total`, `transaction_id`, `transaction_type`, `status`, `order_from`, `is_notification`, `order_notes`, `created_at`, `updated_at`) VALUES
(1, 0, 'RNMTRFL3DU', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '71.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-06 07:19:16', '2023-07-06 07:19:16'),
(2, 0, 'IZCTQ5AK7F', 1, 'Admin', 'admin@gmail.com', 919499874557, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '7.2', '177.2', NULL, '1', '6', 'web', 1, NULL, '2023-07-06 17:50:25', '2023-07-07 23:30:23'),
(3, 0, '5L40QVF1VF', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '4.94', '125.44', NULL, '1', '2', 'pos', 1, NULL, '2023-07-06 19:55:20', '2023-07-06 19:55:20'),
(4, 0, 'CZWM8F1UAC', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '80', NULL, '1', '2', 'pos', 1, NULL, '2023-07-07 15:56:06', '2023-07-07 15:56:06'),
(5, 0, 'J9DMV90ZVM', NULL, 'FABIO H G S GUNTHER', 'iguanaxd.pb@gmail.com', 49988430178, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '50', NULL, '1', '4', 'web', 1, NULL, '2023-07-08 04:54:07', '2023-07-08 06:27:16'),
(6, 0, 'BRT1JIGBJ4', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '40', NULL, '1', '5', 'pos', 1, NULL, '2023-07-07 23:29:43', '2023-07-07 23:30:02'),
(7, 0, 'ULFI3JSQ6B', NULL, 'test', 'test@yopmail.com', 9855222, 6, '1', '1', '20 Cooper Square, New York, NY 10003, USA,', '20,', 'Cooper Square', '40.727949', '-73.991533', NULL, '0.00', '10.00', '0.00', '60.00', NULL, '1', '4', 'android', 1, NULL, '2023-07-08 15:31:15', '2023-07-08 10:16:13'),
(8, 0, 'L34D0L390D', 2, 'user', 'user@gmail.com', 911236547890, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '20', NULL, '2', '1', 'web', 1, NULL, '2023-07-08 18:31:28', '2023-07-08 13:12:06'),
(9, 0, 'DND4NUW1MI', NULL, 'df', 'as@gmail.com', 59599559, 0, '2', '', '', '', '', '', '', NULL, '0.00', '0.00', '7.20', '127.20', '81Y15785CS442950X', '9', '5', 'ios', 1, NULL, '2023-07-08 19:45:23', '2023-07-08 18:30:50'),
(10, 0, 'I4O38RZ54Y', NULL, 'rose jones', 'rose4love3000@gmail.com', 8039621564, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '20', NULL, '1', '5', 'web', 1, NULL, '2023-07-10 16:14:03', '2023-07-13 14:03:08'),
(11, 0, 'M137EON6TM', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '28', '628', NULL, '1', '2', 'pos', 1, NULL, '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(12, 0, '0LGCI8NZFE', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '30', NULL, '1', '2', 'pos', 1, NULL, '2023-07-10 18:18:29', '2023-07-10 18:18:29'),
(13, 0, '9N7SF6HRYO', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '40', NULL, '1', '2', 'pos', 1, NULL, '2023-07-11 07:29:40', '2023-07-11 07:29:40'),
(14, 0, '6PV2BK6ACG', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '5.6', '175.6', NULL, '1', '2', 'pos', 1, NULL, '2023-07-12 11:34:21', '2023-07-12 11:34:21'),
(15, 0, '9RN3E6Y52D', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '71.5', NULL, '1', '5', 'pos', 1, NULL, '2023-07-13 11:40:19', '2023-07-13 11:40:37'),
(16, 0, 'QZ9V5ZGNRT', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '5', 'pos', 1, NULL, '2023-07-13 11:41:09', '2023-07-13 11:41:22'),
(17, 0, 'Y0RL06P558', 1, NULL, NULL, NULL, 0, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '3.5', '38.5', NULL, '1', '6', 'pos', 1, NULL, '2023-07-13 13:13:11', '2023-07-13 14:30:46'),
(18, 0, 'CQ89NL9S67', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '3', 'jbvvv', '599', '', '41.88625400022249', '-87.6662313938141', '', '0', 'NaN', '21.635', '35972.635', NULL, '1', '1', 'web', 1, NULL, '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(19, 0, 'VC8POEUML1', NULL, 'Dumm', 'dumm@summ.org', 19003424540, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '110', NULL, '1', '1', 'web', 1, NULL, '2023-07-13 21:01:43', '2023-07-13 21:01:43'),
(20, 0, 'VLAT4PZEG2', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '4', '20 Cooper Square, New York, NY 10003, USA', '20', '', '24.3948637', '92.1595287', '', '0', 'NaN', '8.3', '154.3', NULL, '1', '1', 'web', 1, NULL, '2023-07-13 21:12:15', '2023-07-13 21:12:15'),
(21, 0, 'PIE8846KE3', NULL, 'rgrfrf', 'ittech@e2.com', 111111, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '75', NULL, '1', '7', 'web', 1, NULL, '2023-07-13 21:25:57', '2023-07-13 15:56:18'),
(22, 0, '53TXAM9O4U', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '4', '20 Cooper Square, New York, NY 10003, USA', '20', '', '24.3948637', '92.1595287', '', '0', 'NaN', '49', '35794.5', NULL, '1', '1', 'web', 1, NULL, '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(23, 0, 'OSATKN5NE9', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '3', 'jbvvv', '599', '', '41.88625400022249', '-87.6662313938141', '', '0', 'NaN', '6.93', '106.93', NULL, '1', '1', 'web', 1, NULL, '2023-07-13 21:42:47', '2023-07-13 21:42:47'),
(24, 0, 'SE4BAY6MFS', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '20', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 16:34:08', '2023-07-13 16:34:08'),
(25, 0, '98PW9A3ZOA', 2, 'user', 'user@gmail.com', 911236547890, 0, '1', '4', '20 Cooper Square, New York, NY 10003, USA', '20', '', '24.3948637', '92.1595287', '', '0', 'NaN', '0', '91', NULL, '1', '2', 'web', 1, NULL, '2023-07-13 22:28:28', '2023-07-13 19:19:17'),
(26, 0, '194UNR3WP1', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '10.43', '199.43', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 18:15:49', '2023-07-13 18:15:49'),
(27, 0, 'QRE5SMCWC3', 2, 'user', 'user@gmail.com', 911236547890, 6, '1', '4', '20 Cooper Square, New York, NY 10003, USA', '20', '', '24.3948637', '92.1595287', '', '0', 'NaN', '12.1', '203.1', NULL, '1', '5', 'web', 1, NULL, '2023-07-14 00:31:57', '2023-07-13 19:17:50'),
(28, 0, 'PL6RL7BO1R', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 19:10:50', '2023-07-13 19:10:50'),
(29, 0, '2S5KRT4Q58', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '13.5', '35548', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 19:14:09', '2023-07-13 19:14:09'),
(30, 0, 'SL2CBP7646', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '20', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 19:16:30', '2023-07-13 19:16:30'),
(31, 0, 'F6LPS0OL84', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '90', NULL, '1', '5', 'pos', 1, NULL, '2023-07-13 19:16:52', '2023-07-13 19:17:11'),
(32, 0, 'KN1DJVYMYM', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '100', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 19:19:04', '2023-07-13 19:19:04'),
(33, 0, 'GKXSS6PKTK', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '2', 'pos', 1, NULL, '2023-07-13 19:33:07', '2023-07-13 19:33:07'),
(34, 0, 'QJJ7HW17M0', 2, 'user', 'user@gmail.com', 911236547890, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '24.935', '175.435', NULL, '1', '4', 'web', 1, NULL, '2023-07-14 03:38:59', '2023-07-14 00:12:45'),
(35, 0, '1MXIJ5DAQP', NULL, 'Lloojhh ffvg', 'aita.coura.kane@gmail.com', 34556677764, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '3.5', '53.5', NULL, '1', '7', 'web', 1, NULL, '2023-07-14 05:04:41', '2023-07-13 23:35:17'),
(36, 0, 'DUZ4IZZHMJ', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6', '126', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 00:14:39', '2023-07-14 00:14:39'),
(37, 0, 'L75MPIBWI6', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '40', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 01:33:09', '2023-07-14 01:33:09'),
(38, 0, '6HTJ088SAF', NULL, 'ทั่วไป', 'admin@example.com', 861254477, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '6.5', '71.5', NULL, '1', '7', 'web', 1, NULL, '2023-07-14 07:04:30', '2023-07-14 01:35:10'),
(39, 0, 'D6Q020G5WR', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '2.5', '52.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 01:47:28', '2023-07-14 01:47:28'),
(40, 0, 'WQGLHB4D1T', 2, 'user', 'user@gmail.com', 911236547890, 0, '1', '6', 'Norwoodport , West Virginia - 86490-8323', '510', '', '-39.84568', '-73.22824', '', '0', 'NaN', '6.5', '72.5', NULL, '1', '6', 'web', 1, NULL, '2023-07-14 08:36:38', '2023-07-14 03:08:26'),
(41, 0, 'I4MSN02JAZ', NULL, 'WAHYUDI KURNIAWAN', 'wahyudik015@gmail.com', 82213866679, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '11.2', '35530.7', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 08:37:13', '2023-07-14 08:37:13'),
(42, 0, 'YZRO6Y1P3Y', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '20.55', '289.55', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(43, 0, 'E5QDZD1LT2', 2, 'user', 'user@gmail.com', 911236547890, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '6.93', '35555.43', NULL, '1', '5', 'web', 1, NULL, '2023-07-14 11:27:15', '2023-07-14 06:01:49'),
(44, 0, 'G9B870H29X', 2, 'user', 'user@gmail.com', 911236547890, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '30', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 11:30:56', '2023-07-14 11:30:56'),
(45, 0, '3JIM9HMLVY', 2, 'user', 'user@gmail.com', 911236547890, 0, '1', '4', '20 Cooper Square, New York, NY 10003, USA', '20', '', '24.3948637', '92.1595287', '', '0', 'NaN', '0', '151', NULL, '1', '3', 'web', 1, NULL, '2023-07-14 11:39:30', '2023-07-14 06:12:50'),
(46, 0, '2HAJV9L6MZ', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '13', '143', NULL, '1', '5', 'pos', 1, NULL, '2023-07-14 06:26:09', '2023-07-14 06:26:25'),
(47, 0, 'URT7B43LPH', NULL, 'asf', 'adfasf@hias.cio', 43626642, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '6.5', '101.5', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 12:11:13', '2023-07-14 12:11:13'),
(48, 0, 'HROBY8KH4H', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '6', 'Norwoodport , West Virginia - 86490-8323', '510', '', '-39.84568', '-73.22824', '', '0', 'NaN', '0', '81', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 12:47:21', '2023-07-14 12:47:21'),
(49, 0, 'OLZ1MWJV26', NULL, 'John Doe', 'john.doe@gmail.com', 19876543210, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '18.4', '273.4', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 12:54:14', '2023-07-14 12:54:14'),
(50, 0, 'L874DNBDUI', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '71.5', NULL, '1', '5', 'pos', 1, NULL, '2023-07-14 07:38:25', '2023-07-14 07:38:38'),
(51, 0, '6CI8J9ORV0', 1, NULL, NULL, NULL, 0, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '54', '0.00', '0', '26', NULL, '1', '6', 'pos', 1, NULL, '2023-07-14 07:40:13', '2023-07-14 07:40:23'),
(52, 0, 'LMVL9VEXAU', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '2.5', '92.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 08:23:46', '2023-07-14 08:23:46'),
(53, 0, '5U9ND11Q34', 3, NULL, NULL, NULL, 0, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '6', 'pos', 1, NULL, '2023-07-14 08:24:55', '2023-07-14 08:25:29'),
(54, 0, '69TE490QKP', NULL, 'laido', 'laid@gmail.com', 213667519033, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '12.5', '247.5', NULL, '1', '5', 'web', 1, NULL, '2023-07-14 13:57:46', '2023-07-14 08:29:25'),
(55, 0, '9HG0KY4V66', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '90', NULL, '1', '2', 'pos', 1, NULL, '2023-07-14 10:17:00', '2023-07-14 10:17:00'),
(56, 0, 'PFQ7C271V3', 2, 'user', 'user@gmail.com', 911236547890, 6, '1', '6', 'Norwoodport , West Virginia - 86490-8323', '510', '', '-39.84568', '-73.22824', '', '0', 'NaN', '14', '155', NULL, '1', '5', 'web', 1, NULL, '2023-07-14 15:48:03', '2023-07-14 10:19:46'),
(57, 0, 'VCZI7RUWFX', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '100', NULL, '1', '5', 'pos', 1, NULL, '2023-07-14 10:21:35', '2023-07-14 10:22:34'),
(58, 0, '5XD1GCL8NA', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '5', 'pos', 1, NULL, '2023-07-14 13:23:35', '2023-07-14 18:29:38'),
(59, 0, 'L9EUO1VIAJ', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '8', 'Norwoodport , West Virginia - 86490-8323', '510', '', '-39.84568', '-73.22824', '', '0', 'NaN', '16.5', '232.5', NULL, '1', '1', 'web', 1, NULL, '2023-07-14 20:26:47', '2023-07-14 20:26:47'),
(60, 0, '1VFIQ3F9J7', 2, 'user', 'user@gmail.com', 911236547890, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '0', '30', NULL, '1', '4', 'web', 1, NULL, '2023-07-14 20:40:32', '2023-07-15 15:50:36'),
(61, 0, 'IHV3UYGS6B', 1, NULL, NULL, NULL, 0, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '5.6', '85.6', NULL, '1', '6', 'pos', 1, NULL, '2023-07-15 02:20:04', '2023-07-15 02:21:05'),
(62, 0, '0RVT5WMV11', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '111.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-15 02:44:26', '2023-07-15 02:44:26'),
(63, 0, 'YKHJP8JUHL', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '4.9', '319.9', NULL, '1', '2', 'pos', 1, NULL, '2023-07-15 07:17:12', '2023-07-15 07:17:12'),
(64, 0, 'LN5CY2NZPL', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '3.5', '38.5', NULL, '1', '5', 'pos', 1, NULL, '2023-07-15 13:14:49', '2023-07-15 13:15:30'),
(65, 0, 'Z4WA2T9NXJ', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '71.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-15 15:45:57', '2023-07-15 15:45:57'),
(66, 0, 'NUGH5LIRJW', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '10.43', '35518.93', NULL, '1', '5', 'pos', 1, NULL, '2023-07-15 15:49:52', '2023-07-15 17:53:49'),
(67, 0, 'LHEI60PQHQ', 2, 'user', 'user@gmail.com', 911236547890, NULL, '1', '8', 'Norwoodport , West Virginia - 86490-8323', '510', '', '-39.84568', '-73.22824', '', '0', 'NaN', '10.55', '220.55', NULL, '1', '1', 'web', 1, NULL, '2023-07-15 21:29:52', '2023-07-15 21:29:52'),
(68, 0, 'NI5RCDQWMR', NULL, 'COMMUNICATION STUDIES', 'salesman@flexibleit.net', 57897555, NULL, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '26.5', '71185.5', NULL, '1', '1', 'web', 1, NULL, '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(69, 0, 'O5ONJ04VQP', 2, 'user', 'user@gmail.com', 911236547890, 0, '2', NULL, NULL, NULL, '', NULL, NULL, '', '0', '0', '22.05', '341.05', NULL, '1', '4', 'web', 1, NULL, '2023-07-15 23:19:45', '2023-07-16 16:11:37'),
(70, 0, 'RXFYI716IL', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '50', NULL, '1', '2', 'pos', 1, NULL, '2023-07-15 19:39:45', '2023-07-15 19:39:45'),
(71, 0, '8MORO77138', 3, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '10.43', '35513.93', NULL, '1', '2', 'pos', 1, NULL, '2023-07-15 21:23:38', '2023-07-15 21:23:38'),
(72, 0, 'WD68J7H2R1', 3, NULL, NULL, NULL, 0, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.93', '105.93', NULL, '1', '6', 'pos', 1, NULL, '2023-07-16 02:14:47', '2023-07-16 02:15:17'),
(73, 0, 'Z57LW2ISZY', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '71.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-16 10:30:30', '2023-07-16 10:30:30'),
(74, 0, '6Z98TTPAKR', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '6.5', '121.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-16 11:53:31', '2023-07-16 11:53:31'),
(75, 0, '49MCD8NB1H', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '2.5', '52.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-16 13:54:05', '2023-07-16 13:54:05'),
(76, 0, 'J0H15OWAAF', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '3.5', '78.5', NULL, '1', '2', 'pos', 1, NULL, '2023-07-16 20:39:16', '2023-07-16 20:39:16'),
(77, 0, '1VUSVO7T7Z', 1, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0.00', '0', '90', NULL, '1', '2', 'pos', 1, NULL, '2023-07-16 22:09:30', '2023-07-16 22:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_number` varchar(100) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `sub_total` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_area` varchar(255) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `couponcode` varchar(255) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `customer_email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `order_from` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `item_type` int(11) DEFAULT NULL COMMENT '1=veg,2=nonveg ',
  `addons_id` varchar(255) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_price` varchar(255) DEFAULT NULL,
  `addons_total_price` int(11) DEFAULT NULL,
  `variation_id` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `tax` double DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `vendor_id`, `user_id`, `order_id`, `item_id`, `item_name`, `item_image`, `item_type`, `addons_id`, `addons_name`, `addons_price`, `addons_total_price`, `variation_id`, `variation`, `item_price`, `tax`, `qty`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-06 07:19:16', '2023-07-06 07:19:16'),
(2, 0, 1, 2, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', '50', 0, '1', '2023-07-06 17:50:25', '2023-07-06 17:50:25'),
(3, 0, 1, 2, 6, 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '', '', '', 0, '', '', '120', 6, '1', '2023-07-06 17:50:25', '2023-07-06 17:50:25'),
(4, 0, 1, 3, 33, 'Noodles', 'item-62de4ef62b00c.jpg', 1, NULL, NULL, NULL, NULL, '49', 'Regular', '70.5', 7, '1', '2023-07-06 19:55:20', '2023-07-06 19:55:20'),
(5, 0, 1, 3, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-06 19:55:20', '2023-07-06 19:55:20'),
(6, 0, 1, 4, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-07 15:56:06', '2023-07-07 15:56:06'),
(7, 0, 1, 4, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 0, '1', '2023-07-07 15:56:06', '2023-07-07 15:56:06'),
(8, 0, NULL, 5, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-08 04:54:07', '2023-07-08 04:54:07'),
(9, 0, 1, 6, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-07 23:29:43', '2023-07-07 23:29:43'),
(10, 0, NULL, 7, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '0.00', 0, '', '', '50.00', 0, '1', '2023-07-08 15:31:15', '2023-07-08 15:31:15'),
(11, 0, 2, 8, 5, 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', '20', 0, '1', '2023-07-08 18:31:28', '2023-07-08 18:31:28'),
(12, 0, NULL, 9, 6, 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '', '', '', 0, '', '', '120.00', 6, '1', '2023-07-08 19:45:23', '2023-07-08 19:45:23'),
(13, 0, NULL, 10, 5, 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, '', '', '', 0, '4', 'Regular', '20', 0, '1', '2023-07-10 16:14:03', '2023-07-10 16:14:03'),
(14, 0, 1, 11, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(15, 0, 1, 11, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(16, 0, 1, 11, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(17, 0, 1, 11, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(18, 0, 1, 11, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(19, 0, 1, 11, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', NULL, NULL, NULL, '120', 5, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(20, 0, 1, 11, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', NULL, NULL, NULL, '120', 5, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(21, 0, 1, 11, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', NULL, NULL, NULL, '120', 5, '1', '2023-07-10 11:04:49', '2023-07-10 11:04:49'),
(22, 0, 1, 12, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 0, '1', '2023-07-10 18:18:29', '2023-07-10 18:18:29'),
(23, 0, 1, 13, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-11 07:29:40', '2023-07-11 07:29:40'),
(24, 0, 1, 14, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-12 11:34:21', '2023-07-12 11:34:21'),
(25, 0, 1, 14, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-12 11:34:21', '2023-07-12 11:34:21'),
(26, 0, 1, 14, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, NULL, NULL, NULL, NULL, '43', 'Regular', '80', 7, '1', '2023-07-12 11:34:21', '2023-07-12 11:34:21'),
(27, 0, 1, 15, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-13 11:40:19', '2023-07-13 11:40:19'),
(28, 0, 1, 16, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-13 11:41:09', '2023-07-13 11:41:09'),
(29, 0, 1, 17, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-13 13:13:11', '2023-07-13 13:13:11'),
(30, 0, 2, 18, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(31, 0, 2, 18, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(32, 0, 2, 18, 33, 'Noodles', 'item-62de4ef62b00c.jpg', 1, '2,3,5', 'Bread,Fried tomatos,Butter pav', '0,35369.50,5', 35375, '50', 'Cheese', '80.5', 7, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(33, 0, 2, 18, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(34, 0, 2, 18, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(35, 0, 2, 18, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '2,4', 'Bread,Onions', '0,0', 0, '', '', '120', 5, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(36, 0, 2, 18, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(37, 0, 2, 18, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1', 'Red chutney', '5', 5, '15', 'Regular', '40', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(38, 0, 2, 18, 18, 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '31', 'Single', '50', 7, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(39, 0, 2, 18, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1', 'Red chutney', '5', 5, '14', 'King', '50', 0, '1', '2023-07-13 20:11:02', '2023-07-13 20:11:02'),
(40, 0, NULL, 19, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '1', 'Red chutney', '5', 5, '14', 'King', '50', 0, '2', '2023-07-13 21:01:43', '2023-07-13 21:01:43'),
(41, 0, 2, 20, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-13 21:12:15', '2023-07-13 21:12:15'),
(42, 0, 2, 20, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-13 21:12:15', '2023-07-13 21:12:15'),
(43, 0, 2, 20, 15, 'Jain Spl. Pizza', 'item-6253b8756e6c6.jpeg', 2, '', '', '', 0, '23', 'Regular', '30', 6, '1', '2023-07-13 21:12:15', '2023-07-13 21:12:15'),
(44, 0, NULL, 21, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-13 21:25:57', '2023-07-13 21:25:57'),
(45, 0, NULL, 21, 34, 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '1,2', 'Red chutney,Bread', '5,0', 5, '51', 'Half - Jain', '20', 0, '1', '2023-07-13 21:25:57', '2023-07-13 21:25:57'),
(46, 0, 2, 22, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '2', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(47, 0, 2, 22, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(48, 0, 2, 22, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(49, 0, 2, 22, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(50, 0, 2, 22, 35, 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '3', 'Fried tomatos', '35369.50', 35370, '57', 'Regular - half', '40', 50, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(51, 0, 2, 22, 37, 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, '', '', '', 0, '', '', '50', 5, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(52, 0, 2, 22, 35, 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '57', 'Regular - half', '40', 50, '1', '2023-07-13 21:41:48', '2023-07-13 21:41:48'),
(53, 0, 2, 23, 36, 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '', '', '', 0, '', '', '99', 7, '1', '2023-07-13 21:42:47', '2023-07-13 21:42:47'),
(54, 0, 1, 24, 34, 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, NULL, NULL, NULL, NULL, '51', 'Half - Jain', '20', 0, '1', '2023-07-13 16:34:08', '2023-07-13 16:34:08'),
(55, 0, 2, 25, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', '30', 0, '1', '2023-07-13 22:28:28', '2023-07-13 22:28:28'),
(56, 0, 2, 25, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '2', 'Bread', '0', 0, '14', 'King', '50', 0, '1', '2023-07-13 22:28:28', '2023-07-13 22:28:28'),
(57, 0, 1, 26, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-13 18:15:49', '2023-07-13 18:15:49'),
(58, 0, 1, 26, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-13 18:15:49', '2023-07-13 18:15:49'),
(59, 0, 1, 26, 36, 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '5', 'Butter pav', '5', NULL, NULL, NULL, '99', 7, '1', '2023-07-13 18:15:49', '2023-07-13 18:15:49'),
(60, 0, 2, 27, 32, 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '', '', '', 0, '45', 'Regular', '70', 7, '1', '2023-07-14 00:31:57', '2023-07-14 00:31:57'),
(61, 0, 2, 27, 6, 'Chilly Mushroom Dry', 'item-6253b32a8aa80.jpg', 1, '', '', '', 0, '4', 'Regular', '120', 6, '1', '2023-07-14 00:31:57', '2023-07-14 00:31:57'),
(62, 0, 1, 28, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-13 19:10:50', '2023-07-13 19:10:50'),
(63, 0, 3, 29, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-13 19:14:09', '2023-07-13 19:14:09'),
(64, 0, 3, 29, 32, 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '3', 'Fried tomatos', '35369.50', NULL, '47', 'Jain + cheese', '100', 7, '1', '2023-07-13 19:14:09', '2023-07-13 19:14:09'),
(65, 0, 1, 30, 5, 'Chilly Paneer Dry', 'item-62514e3c087aa.jpg', 1, NULL, NULL, NULL, NULL, '4', 'Regular', '20', 0, '1', '2023-07-13 19:16:30', '2023-07-13 19:16:30'),
(66, 0, 1, 31, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-13 19:16:52', '2023-07-13 19:16:52'),
(67, 0, 1, 31, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-13 19:16:52', '2023-07-13 19:16:52'),
(68, 0, 3, 32, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '2', '2023-07-13 19:19:04', '2023-07-13 19:19:04'),
(69, 0, 1, 33, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-13 19:33:07', '2023-07-13 19:33:07'),
(70, 0, 2, 34, 33, 'Noodles', 'item-62de4ef62b00c.jpg', 1, '', '', '', 0, '49', 'Regular', '70.5', 7, '1', '2023-07-14 03:38:59', '2023-07-14 03:38:59'),
(71, 0, 2, 34, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', 10, '', '', '30', 0, '1', '2023-07-14 03:38:59', '2023-07-14 03:38:59'),
(72, 0, 2, 34, 35, 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', '20', 50, '1', '2023-07-14 03:38:59', '2023-07-14 03:38:59'),
(73, 0, 2, 34, 35, 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', '20', 50, '1', '2023-07-14 03:38:59', '2023-07-14 03:38:59'),
(74, 0, NULL, 35, 18, 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '31', 'Single', '50', 7, '1', '2023-07-14 05:04:41', '2023-07-14 05:04:41'),
(75, 0, 1, 36, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '120', 5, '1', '2023-07-14 00:14:39', '2023-07-14 00:14:39'),
(76, 0, 1, 37, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-14 01:33:09', '2023-07-14 01:33:09'),
(77, 0, NULL, 38, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 07:04:30', '2023-07-14 07:04:30'),
(78, 0, 1, 39, 37, 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 5, '1', '2023-07-14 01:47:28', '2023-07-14 01:47:28'),
(79, 0, 2, 40, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 08:36:38', '2023-07-14 08:36:38'),
(80, 0, NULL, 41, 29, 'Paper Dosa', 'item-6253bfa768baa.jpg', 1, '', '', '', 0, '', '', '70', 8, '1', '2023-07-14 08:37:13', '2023-07-14 08:37:13'),
(81, 0, NULL, 41, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '3', 'Fried tomatos', '35369.50', 35370, '43', 'Regular', '80', 7, '1', '2023-07-14 08:37:13', '2023-07-14 08:37:13'),
(82, 0, 1, 42, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(83, 0, 1, 42, 32, 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '1', 'Red chutney', '5', NULL, '45', 'Regular', '70', 7, '1', '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(84, 0, 1, 42, 28, 'Plain Dosa', 'item-6253bf83198f8.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '30', 9, '1', '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(85, 0, 1, 42, 23, 'Plain Sandwich', 'item-6253be3d86a84.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '49', 5, '1', '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(86, 0, 1, 42, 19, 'The Ultimate Veggie Burger', 'item-6253bcdda9403.jpg', 1, '2', 'Bread', '0', NULL, '34', 'Single', '50', 8, '1', '2023-07-14 04:33:26', '2023-07-14 04:33:26'),
(87, 0, 2, 43, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-14 11:27:15', '2023-07-14 11:27:15'),
(88, 0, 2, 43, 36, 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', 35375, '', '', '99', 7, '1', '2023-07-14 11:27:15', '2023-07-14 11:27:15'),
(89, 0, 2, 43, 34, 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '1,5,7,9', 'Red chutney,Butter pav,Salad,Masala papad', '5,5,0,15', 25, '51', 'Half - Jain', '20', 0, '1', '2023-07-14 11:27:15', '2023-07-14 11:27:15'),
(90, 0, 2, 44, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-14 11:30:56', '2023-07-14 11:30:56'),
(91, 0, 2, 45, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-14 11:39:30', '2023-07-14 11:39:30'),
(92, 0, 2, 45, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-14 11:39:30', '2023-07-14 11:39:30'),
(93, 0, 2, 45, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-14 11:39:30', '2023-07-14 11:39:30'),
(94, 0, 1, 46, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '2', '2023-07-14 06:26:09', '2023-07-14 06:26:09'),
(95, 0, NULL, 47, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-14 12:11:13', '2023-07-14 12:11:13'),
(96, 0, NULL, 47, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 12:11:13', '2023-07-14 12:11:13'),
(97, 0, 2, 48, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-14 12:47:21', '2023-07-14 12:47:21'),
(98, 0, 2, 48, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50.00', 0, '1', '2023-07-14 12:47:21', '2023-07-14 12:47:21'),
(99, 0, NULL, 49, 20, 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '1', 'Red chutney', '5', 5, '38', 'Combo', '80', 8, '2', '2023-07-14 12:54:14', '2023-07-14 12:54:14'),
(100, 0, NULL, 49, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '4,5', 'Onions,Butter pav', '0,5', 5, '43', 'Regular', '80', 7, '1', '2023-07-14 12:54:14', '2023-07-14 12:54:14'),
(101, 0, 1, 50, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-14 07:38:25', '2023-07-14 07:38:25'),
(102, 0, 1, 51, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-14 07:40:13', '2023-07-14 07:40:13'),
(103, 0, 1, 51, 34, 'Manchurian Dry', 'item-62b56a4221197.jpg', 1, '2', 'Bread', '0', NULL, '52', 'Full - jain', '30', 0, '1', '2023-07-14 07:40:13', '2023-07-14 07:40:13'),
(104, 0, 1, 52, 37, 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 5, '1', '2023-07-14 08:23:46', '2023-07-14 08:23:46'),
(105, 0, 1, 52, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-14 08:23:46', '2023-07-14 08:23:46'),
(106, 0, 3, 53, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-14 08:24:55', '2023-07-14 08:24:55'),
(107, 0, NULL, 54, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 13:57:46', '2023-07-14 13:57:46'),
(108, 0, NULL, 54, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', '50', 0, '1', '2023-07-14 13:57:46', '2023-07-14 13:57:46'),
(109, 0, NULL, 54, 39, 'Crunchy laziz pizza', 'item-62b565b9e6863.jpg', 1, '', '', '', 0, '', '', '120', 5, '1', '2023-07-14 13:57:46', '2023-07-14 13:57:46'),
(110, 0, 1, 55, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-14 10:17:00', '2023-07-14 10:17:00'),
(111, 0, 1, 55, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-14 10:17:00', '2023-07-14 10:17:00'),
(112, 0, 2, 56, 10, 'Hot & Sour Soup', 'item-6253b4d9b9e75.jpeg', 1, '', '', '', 0, '13', 'Full', '20', 0, '1', '2023-07-14 15:48:03', '2023-07-14 15:48:03'),
(113, 0, 2, 56, 20, 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', '50', 8, '1', '2023-07-14 15:48:03', '2023-07-14 15:48:03'),
(114, 0, 2, 56, 35, 'Manchurian Gravy', 'item-62de4ead4a970.jpg', 1, '', '', '', 0, '55', 'Regular', '20', 50, '1', '2023-07-14 15:48:03', '2023-07-14 15:48:03'),
(115, 0, 2, 56, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, '', '', '', 0, '', '', '50', 0, '1', '2023-07-14 15:48:03', '2023-07-14 15:48:03'),
(116, 0, 1, 57, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '2', '2023-07-14 10:21:35', '2023-07-14 10:21:35'),
(117, 0, 1, 58, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-14 13:23:35', '2023-07-14 13:23:35'),
(118, 0, 2, 59, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 20:26:47', '2023-07-14 20:26:47'),
(119, 0, 2, 59, 11, 'Capsicum, Onion Pizza', 'item-6253b72ee819b.jpeg', 2, '', '', '', 0, '14', 'King', '50', 0, '1', '2023-07-14 20:26:47', '2023-07-14 20:26:47'),
(120, 0, 2, 59, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-14 20:26:47', '2023-07-14 20:26:47'),
(121, 0, 2, 59, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '66', '500 gm', '35', 10, '1', '2023-07-14 20:26:47', '2023-07-14 20:26:47'),
(122, 0, 2, 60, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-14 20:40:32', '2023-07-14 20:40:32'),
(123, 0, 1, 61, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, NULL, NULL, NULL, NULL, '43', 'Regular', '80', 7, '1', '2023-07-15 02:20:04', '2023-07-15 02:20:04'),
(124, 0, 1, 62, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-15 02:44:26', '2023-07-15 02:44:26'),
(125, 0, 1, 62, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-15 02:44:26', '2023-07-15 02:44:26'),
(126, 0, 3, 63, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '4', '2023-07-15 07:17:12', '2023-07-15 07:17:12'),
(127, 0, 3, 63, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-15 07:17:12', '2023-07-15 07:17:12'),
(128, 0, 3, 63, 32, 'Rawa Dosa', 'item-62b56b154a014.jpg', 1, '1', 'Red chutney', '5', NULL, '45', 'Regular', '70', 7, '1', '2023-07-15 07:17:12', '2023-07-15 07:17:12'),
(129, 0, 3, 64, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-15 13:14:49', '2023-07-15 13:14:49'),
(130, 0, 1, 65, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-15 15:45:57', '2023-07-15 15:45:57'),
(131, 0, 3, 66, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-15 15:49:52', '2023-07-15 15:49:52'),
(132, 0, 3, 66, 36, 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3,4,5', 'Fried tomatos,Onions,Butter pav', '35369.50,0,5', NULL, NULL, NULL, '99', 7, '1', '2023-07-15 15:49:52', '2023-07-15 15:49:52'),
(133, 0, 2, 67, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '0', '', '30.00', 0, '1', '2023-07-15 21:29:52', '2023-07-15 21:29:52'),
(134, 0, 2, 67, 22, 'Ultimate Crunchy Burger', 'item-6253bd5355743.jpg', 2, '', '', '0.00', 0, '0', '', '99.00', 5, '1', '2023-07-15 21:29:52', '2023-07-15 21:29:52'),
(135, 0, 2, 67, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '4', 'Onions', '0', 0, '43', 'Regular', '80', 7, '1', '2023-07-15 21:29:52', '2023-07-15 21:29:52'),
(136, 0, NULL, 68, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '', '', '', 0, '', '', '30', 0, '1', '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(137, 0, NULL, 68, 31, 'Masala Dhosa\'s special', 'item-6253c00877787.jpg', 1, '4', 'Onions', '0', 0, '43', 'Regular', '80', 7, '1', '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(138, 0, NULL, 68, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, '', '', '', 0, '65', '1kg', '65', 10, '1', '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(139, 0, NULL, 68, 27, 'Mayonnaise Sandwich', 'item-6253bf0c73b12.jpg', 1, '2,3', 'Bread,Fried tomatos', '0,35369.50', 35370, '', '', '120', 6, '1', '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(140, 0, NULL, 68, 27, 'Mayonnaise Sandwich', 'item-6253bf0c73b12.jpg', 1, '3,5', 'Fried tomatos,Butter pav', '35369.50,5', 35375, '', '', '120', 6, '1', '2023-07-15 21:57:13', '2023-07-15 21:57:13'),
(141, 0, 2, 69, 20, 'Cheese Burger', 'item-6253bcfe3fa14.jpeg', 1, '', '', '', 0, '37', 'Single', '50', 8, '1', '2023-07-15 23:19:45', '2023-07-15 23:19:45'),
(142, 0, 2, 69, 21, 'Chocolate Burger', 'item-6253bd1f5da5e.jpg', 2, '', '', '', 0, '', '', '120', 8, '1', '2023-07-15 23:19:45', '2023-07-15 23:19:45'),
(143, 0, 2, 69, 22, 'Ultimate Crunchy Burger', 'item-6253bd5355743.jpg', 2, '', '', '', 0, '', '', '99', 5, '1', '2023-07-15 23:19:45', '2023-07-15 23:19:45'),
(144, 0, 2, 69, 18, 'Chicken Burgers', 'item-6253bcb374c0c.jpg', 2, '', '', '', 0, '31', 'Single', '50', 7, '1', '2023-07-15 23:19:45', '2023-07-15 23:19:45'),
(145, 0, 1, 70, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-15 19:39:45', '2023-07-15 19:39:45'),
(146, 0, 3, 71, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-15 21:23:38', '2023-07-15 21:23:38'),
(147, 0, 3, 71, 36, 'Chinese bhel', 'item-6253c2ce25f41.jpg', 1, '3', 'Fried tomatos', '35369.50', NULL, NULL, NULL, '99', 7, '1', '2023-07-15 21:23:38', '2023-07-15 21:23:38'),
(148, 0, 3, 72, 38, 'Crunchy Sandwich', 'item-62bd4a94c0716.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, '99', 7, '1', '2023-07-16 02:14:47', '2023-07-16 02:14:47'),
(149, 0, 1, 73, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-16 10:30:30', '2023-07-16 10:30:30'),
(150, 0, 1, 74, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '65', '1kg', '65', 10, '1', '2023-07-16 11:53:31', '2023-07-16 11:53:31'),
(151, 0, 1, 74, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-16 11:53:31', '2023-07-16 11:53:31'),
(152, 0, 1, 75, 37, 'Veg. Fried Rice', 'item-62b569e1c75e5.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 5, '1', '2023-07-16 13:54:05', '2023-07-16 13:54:05'),
(153, 0, 1, 76, 46, 'Sweet Brownie Chocolate Cake', 'item-642bc4a624fd1.jpg', 1, NULL, NULL, NULL, NULL, '66', '500 gm', '35', 10, '1', '2023-07-16 20:39:16', '2023-07-16 20:39:16'),
(154, 0, 1, 76, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-16 20:39:16', '2023-07-16 20:39:16'),
(155, 0, 1, 77, 45, 'Testy Chocolate Birthday Cakes', 'item-642bc15b26406.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '50', 0, '1', '2023-07-16 22:09:30', '2023-07-16 22:09:30'),
(156, 0, 1, 77, 44, 'Laziz cheese burger ever..', 'item-642bc0d24eb69.jpg', 2, '6', 'Green chutney', '10', NULL, NULL, NULL, '30', 0, '1', '2023-07-16 22:09:30', '2023-07-16 22:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `otp_configuration`
--

CREATE TABLE `otp_configuration` (
  `id` int(11) NOT NULL,
  `twilio_sid` text DEFAULT NULL,
  `twilio_auth_token` text DEFAULT NULL,
  `twilio_mobile_number` text DEFAULT NULL,
  `msg_authkey` varchar(255) DEFAULT NULL,
  `msg_template_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_configuration`
--

INSERT INTO `otp_configuration` (`id`, `twilio_sid`, `twilio_auth_token`, `twilio_mobile_number`, `msg_authkey`, `msg_template_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twilio_sid', 'twilio_auth_token', 'Mobile number', NULL, NULL, 'twilio', 1, '2021-07-24 17:53:44', '2022-12-03 07:20:20'),
(2, NULL, NULL, NULL, 'msg_authkey', 'msg_template_id', 'msg91', 0, '2021-07-26 19:26:13', '2023-07-14 14:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `environment` int(11) NOT NULL DEFAULT 1 COMMENT '1=sandbox,2=production',
  `payment_name` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `encryption_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL,
  `is_activate` int(11) NOT NULL COMMENT '1 = Yes, 2 = No',
  `bank_name` text NOT NULL,
  `bank_transfer` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `bank_ifsc_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `vendor_id`, `environment`, `payment_name`, `image`, `currency`, `public_key`, `secret_key`, `encryption_key`, `is_available`, `is_activate`, `bank_name`, `bank_transfer`, `account_number`, `account_holder_name`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'banktransfer', 'payment-63739ef98fac6.png', '', '', '', '', 1, 1, 'kotak', 'SBI', '12345678910', 'vinay bhalala', 'UTBI0DMCC46', '2020-12-29 02:24:50', '2023-07-29 00:27:02'),
(2, 1, 0, 'wallet', 'payment-63739ef99ee19.png', '', '', '', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2022-12-20 11:01:18'),
(3, 1, 1, 'razorpay', 'payment-63739ef9ad8f5.png', 'INR', 'rzp_test_4r8y0wDMkrUDFn', 'nEDuJlpL3x2BqHxYlQBYtrto', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-04-15 01:39:02'),
(4, 1, 1, 'stripe', 'payment-63739ef9eba1a.png', 'USD', 'pk_test_51IjNgIJwZppK21ZQa6e7ZVOImwJ2auI54TD6xHici94u7DD5mhGf1oaBiDyL9mX7PbN5nt6Weap4tmGWLRIrslCu00d8QgQ3nI', 'sk_test_51IjNgIJwZppK21ZQK85uLARMdhtuuhA81PB24VDfiqSW8SXQZKrZzvbpIkigEb27zZPBMF4UEG7PK9587Xresuc000x8CdE22A', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-04-15 01:38:13'),
(5, 1, 1, 'flutterwave', 'payment-63739efa4b392.png', 'NGN', 'FLWPUBK_TEST-61c94068c4a44548a771cc7cf9548d05-X', 'FLWSECK_TEST-1140781769b7bd5cfd6b3fb6d5704017-X', 'FLWSECK_TEST863a39eb1475', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-04-15 01:34:34'),
(6, 1, 1, 'Paystack', 'payment-63739efa906ca.png', 'GHS', 'pk_test_8a6a139a3bae6e41cbbbc41f4d7b65d4da9f7967', 'sk_test_6ab143b6f0c2a209373adeef55a64411c1a91ae9', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-07-06 06:55:54'),
(7, 1, 1, 'mercadopago', 'payment-637as454906ca.png', 'R$', '', 'APP_USR-3693146734015792-042811-c6deca56df8ac66e83efb5334c46110c-126508225', '', 1, 1, '', '', '', '', '', '2023-04-05 07:12:36', '2023-07-29 00:27:02'),
(8, 1, 1, 'myfatoorah', 'payment-643a2bdc15985.png', 'KWD', '', 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL', '', 1, 1, '', '', '', '', '', '2023-04-06 04:14:44', '2023-07-29 00:27:02'),
(9, 1, 1, 'paypal', 'payment-643a4fa802dfb.png', 'USD', 'AcRx7vvy79nbNxBemacGKmnnRe_CtxkItyspBS_eeMIPREwfCEIfPg1uX-bdqPrS_ZFGocxEH_SJRrIJ', 'EGtgNkjt3I5lkhEEzicdot8gVH_PcFiKxx6ZBiXpVrp4QLDYcVQQMLX6MMG_fkS9_H0bwmZzBovb4jLP', '', 1, 1, '', '', '', '', '', '2023-04-12 12:24:28', '2023-04-15 03:51:08'),
(10, 1, 1, 'toyyibpay', 'payment-643a506bcecac.png', 'INR', 'ts75iszg', 'luieh2jt-8hpa-m2xv-wrkv-ejrfvhjppnsj', '', 1, 1, '', '', '', '', '', '2023-04-15 06:22:50', '2023-07-20 00:15:25'),
(11, 11, 0, 'cod', 'payment-63739ef98fac6.png', '', '', '', '', 1, 1, '', '', '', '', '', '2020-12-29 02:24:50', '2022-11-15 08:45:21'),
(12, 11, 0, 'wallet', 'payment-63739ef99ee19.png', '', '', '', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2022-12-20 11:01:18'),
(13, 11, 1, 'razorpay', 'payment-63739ef9ad8f5.png', 'INR', 'rzp_test_4r8y0wDMkrUDFn', 'nEDuJlpL3x2BqHxYlQBYtrto', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-04-15 01:39:02'),
(14, 11, 1, 'stripe', 'payment-63739ef9eba1a.png', 'USD', 'pk_test_51IjNgIJwZppK21ZQa6e7ZVOImwJ2auI54TD6xHici94u7DD5mhGf1oaBiDyL9mX7PbN5nt6Weap4tmGWLRIrslCu00d8QgQ3nI', 'sk_test_51IjNgIJwZppK21ZQK85uLARMdhtuuhA81PB24VDfiqSW8SXQZKrZzvbpIkigEb27zZPBMF4UEG7PK9587Xresuc000x8CdE22A', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-04-15 01:38:13'),
(15, 11, 1, 'flutterwave', 'payment-64b8caad932ad.png', 'NGN', 'FLWPUBK_TEST-61c94068c4a44548a771cc7cf9548d05-X', 'FLWSECK_TEST-1140781769b7bd5cfd6b3fb6d5704017-XA', 'FLWSECK_TEST863a39eb1475', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-07-20 00:18:29'),
(16, 11, 1, 'Paystack', 'payment-63739efa906ca.png', 'GHS', 'pk_test_8a6a139a3bae6e41cbbbc41f4d7b65d4da9f7967', 'sk_test_6ab143b6f0c2a209373adeef55a64411c1a91ae9', '', 1, 1, '', '', '', '', '', '2020-12-29 02:15:15', '2023-07-06 06:55:54'),
(17, 11, 1, 'mercadopago', 'payment-637as454906ca.png', 'R$', '', 'APP_USR-3693146734015792-042811-c6deca56df8ac66e83efb5334c46110c-126508225', '', 1, 1, '', '', '', '', '', '2023-04-05 07:12:36', '2023-07-20 00:18:29'),
(18, 11, 1, 'myfatoorah', 'payment-643a2bdc15985.png', 'KWD', '', 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL', '', 1, 1, '', '', '', '', '', '2023-04-06 04:14:44', '2023-07-20 00:18:29'),
(19, 11, 1, 'paypal', 'payment-643a4fa802dfb.png', 'USD', 'AcRx7vvy79nbNxBemacGKmnnRe_CtxkItyspBS_eeMIPREwfCEIfPg1uX-bdqPrS_ZFGocxEH_SJRrIJ ', 'EGtgNkjt3I5lkhEEzicdot8gVH_PcFiKxx6ZBiXpVrp4QLDYcVQQMLX6MMG_fkS9_H0bwmZzBovb4jLP', '', 1, 1, '', '', '', '', '', '2023-04-12 12:24:28', '2023-04-15 03:51:08'),
(20, 11, 1, 'toyyibpay', 'payment-643a506bcecac.png', 'INR', 'ts75iszg', 'luieh2jt-8hpa-m2xv-wrkv-ejrfvhjppnsj', '', 1, 1, '', '', '', '', '', '2023-04-15 06:22:50', '2023-07-20 00:15:43'),
(25, 11, 1, 'banktransfer', 'payment-63739ef98fac6.png', '', '', '', '', 1, 1, '', '', '', '', '', '2023-04-15 06:22:50', '2023-07-20 00:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_name` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT '',
  `image` varchar(255) NOT NULL,
  `public_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `encryption_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `bank_name` text DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(255) DEFAULT NULL,
  `is_available` int(11) NOT NULL,
  `is_activate` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1=yes,2=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`, `delivery_charge`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '875459', '20', 1, 2, '2022-05-06 01:16:53', '2022-05-06 01:16:53'),
(2, '65451', '15', 2, 2, '2022-05-06 01:17:05', '2022-05-06 01:17:28'),
(3, '1165116', '30', 1, 2, '2022-05-06 01:17:16', '2022-05-06 01:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `features` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `themes_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_type` int(11) NOT NULL COMMENT '1 = duration, 2 = days',
  `duration` varchar(255) NOT NULL COMMENT '1=1 month\r\n2=3 month\r\n3=6 month\r\n4=1\r\n year\r\n\r\n\r\n',
  `days` int(11) NOT NULL,
  `order_limit` int(11) NOT NULL,
  `appointment_limit` int(11) NOT NULL,
  `custom_domain` int(11) NOT NULL COMMENT '1=yes,2=no',
  `google_analytics` int(11) NOT NULL COMMENT '1=yes,2=no',
  `pos` int(11) NOT NULL COMMENT '1 = Yes , 2 = No',
  `vendor_app` int(11) NOT NULL,
  `is_available` int(11) DEFAULT 1 COMMENT '1=Yes\r\n2=No\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `features`, `price`, `themes_id`, `plan_type`, `duration`, `days`, `order_limit`, `appointment_limit`, `custom_domain`, `google_analytics`, `pos`, `vendor_app`, `is_available`, `created_at`, `updated_at`) VALUES
(2, 'Test Plan', 'test', 'Unlimited view', 300, '1', 1, '1', 0, 1, 1, 1, 1, 2, 1, 1, '2023-07-25 05:43:06', '2023-07-28 21:56:07'),
(3, 'user', 'user', 'Unlimited appointment', 500, '1', 2, '', 50, -1, -1, 1, 1, 2, 1, 1, '2023-07-25 06:09:16', '2023-07-25 22:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-16 19:15:57', '2023-03-28 02:46:21'),
(1, 1, '2022-11-16 19:15:57', '2023-03-28 02:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_code` varchar(20) NOT NULL,
  `offer_type` int(11) NOT NULL COMMENT '1=fixed,2=percentage',
  `offer_amount` varchar(255) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `per_user` int(11) NOT NULL,
  `usage_type` int(11) NOT NULL COMMENT '1=One time,2=multiple times',
  `usage_limit` int(11) DEFAULT NULL,
  `start_date` text NOT NULL,
  `expire_date` text NOT NULL,
  `description` longtext NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`id`, `vendor_id`, `offer_name`, `offer_code`, `offer_type`, `offer_amount`, `min_amount`, `per_user`, `usage_type`, `usage_limit`, `start_date`, `expire_date`, `description`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 0, 'The One-Time Offer', 'get15', 1, '15.00', 20, 2, 1, 150, '2022-05-27', '2023-07-30', 'Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .Lorem is amount to the text for the .', 1, '2022-05-02 02:26:04', '2023-06-29 01:10:00'),
(3, 0, 'get30', 'get30', 1, '100', 100, 0, 1, 10, '2023-05-16', '2023-06-30', 'hfghfghfgh', 1, '2023-05-15 23:44:41', '2023-06-20 01:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `promotionalbanner`
--

CREATE TABLE `promotionalbanner` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotionalbanner`
--

INSERT INTO `promotionalbanner` (`id`, `vendor_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 5, 'promotion-64bf466d773f9.png', '2023-07-24 06:44:28', '2023-07-24 22:20:35'),
(4, 2, 'promotion-64be6f2e3ec29.jpg', '2023-07-24 06:51:06', '2023-07-24 07:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratting`
--

INSERT INTO `ratting` (`id`, `vendor_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(1, 1, '4', 'good food', '2023-07-22 06:46:36', '2023-07-30 22:41:24'),
(2, 1, '5', 'abc', '2023-07-24 00:21:20', '2023-07-24 00:34:36'),
(3, 1, '4', 'good', '2023-07-24 00:21:44', '2023-07-24 00:34:18'),
(5, 11, '5', 'abc', '2023-07-24 00:40:26', '2023-07-24 00:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `maintenance_mode` int(11) DEFAULT 2 COMMENT '1 = yes, 2 = no',
  `checkout_login_required` int(11) DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `logo` varchar(255) NOT NULL DEFAULT 'default-logo.png',
  `favicon` varchar(255) NOT NULL DEFAULT 'favicon-.png',
  `delivery_type` varchar(10) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `website_title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `og_image` varchar(255) NOT NULL DEFAULT 'og_image.png',
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `whatsapp_widget` longtext DEFAULT NULL,
  `whatsapp_message` longtext NOT NULL,
  `telegram_message` longtext DEFAULT NULL,
  `telegram_access_token` text DEFAULT NULL,
  `telegram_chat_id` text DEFAULT NULL,
  `item_message` text NOT NULL,
  `language` int(11) NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 1,
  `primary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `secondary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `landing_website_title` varchar(255) DEFAULT NULL,
  `custom_domain` text DEFAULT NULL,
  `cname_title` text DEFAULT NULL,
  `cname_text` text DEFAULT NULL,
  `interval_time` varchar(255) NOT NULL,
  `interval_type` int(11) NOT NULL,
  `time_format` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `banner` varchar(255) NOT NULL DEFAULT 'default-banner.png',
  `tracking_id` varchar(255) DEFAULT NULL,
  `view_id` varchar(255) DEFAULT NULL,
  `firebase` longtext DEFAULT NULL,
  `cover_image` varchar(255) NOT NULL DEFAULT 'default-cover.png',
  `notification_sound` varchar(255) NOT NULL DEFAULT 'notification.mp3',
  `recaptcha_version` varchar(255) DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `score_threshold` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `cookie_button_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vendor_id`, `currency`, `currency_position`, `maintenance_mode`, `checkout_login_required`, `logo`, `favicon`, `delivery_type`, `timezone`, `address`, `email`, `mobile`, `description`, `contact`, `copyright`, `website_title`, `meta_title`, `meta_description`, `og_image`, `facebook_link`, `twitter_link`, `instagram_link`, `linkedin_link`, `whatsapp_widget`, `whatsapp_message`, `telegram_message`, `telegram_access_token`, `telegram_chat_id`, `item_message`, `language`, `template`, `primary_color`, `secondary_color`, `landing_website_title`, `custom_domain`, `cname_title`, `cname_text`, `interval_time`, `interval_type`, `time_format`, `banner`, `tracking_id`, `view_id`, `firebase`, `cover_image`, `notification_sound`, `recaptcha_version`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `score_threshold`, `cookie_text`, `cookie_button_text`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'left', 2, 2, 'logo-64230233233e3.png', 'default-favicon.png', '', 'Asia/Kolkata', '248 Cedar Swamp Rd, Jackson, New Mexico - 08527', 'paponapp2244@gmail.com', '', NULL, '919016996697', 'Copyright © 2023 Papon IT Solutions. All Rights Reserved', 'StoreMart SaaS | Admin', 'StoreMart SaaS - Online Product Selling Business Builder SaaS', 'StoreMart is a software as a service (SaaS) platform that allows users to build and manage an online store for selling products. It provides users with a range of features and tools to help them create and customize their store, add and manage products, process orders, and handle payments. StoreMart also includes marketing and analytics tools to help users promote their store and track their performance. It is designed to be user-friendly and easy to use, making it a good option for people who want to start an online store without a lot of technical expertise.', 'og_image.png', 'https://www.facebook.com/people/@/100089219461678', 'https://twitter.com/PaponITsolution', 'https://www.instagram.com/papon_it_solutions/', 'https://www.linkedin.com/in/papon-it-solutions-a2098b260/', '', '', NULL, NULL, NULL, '', 1, 1, '#01112b', '#f05a1e', 'StoreMart SaaS - Online Product Selling SaaS Business Website Builder', '-', 'Read All Instructions Carefully Before Sending Custom Domain Request', '<p>If you&#39;re using cPanel or Plesk then you need to manually add custom domain in your server with the same root directory as the script&#39;s installation&nbsp;and user need to point their custom domain A record with your server IP. Example : 68.178.145.4</p>', '', 0, 1, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, '0.5', 'Your experience on this site will be improved by allowing cookies.', 'I Agree', NULL, '2023-05-17 06:54:27'),
(2, 2, '$', 'left', 2, 2, 'default-logo.png', 'default-favicon.png', 'both', 'Asia/Kolkata', 'Your address', 'youremail@gmail.com', '', 'Your description', 'Your contact', 'Copyright © 2023 Papon IT Solutions. All Rights Reserved', 'Your store name', 'Your store name', 'Description', 'default-og.png', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', NULL, NULL, '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, '#171a29', '#171a29', NULL, NULL, NULL, NULL, '1', 2, 1, 'default-banner.png', NULL, NULL, NULL, 'default-cover.png', 'notification.mp3', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 06:28:31', '2023-07-18 06:28:31'),
(3, 1, '$', 'left', 2, 2, 'logo-64230233233e3.png', 'default-favicon.png', '', 'Asia/Kolkata', '248 Cedar Swamp Rd, Jackson, New Mexico - 08527', 'paponapp2244@gmail.com', '', NULL, '919016996697', 'Copyright © 2023 Papon IT Solutions. All Rights Reserved', 'StoreMart SaaS | Admin', 'StoreMart SaaS - Online Product Selling Business Builder SaaS', 'StoreMart is a software as a service (SaaS) platform that allows users to build and manage an online store for selling products. It provides users with a range of features and tools to help them create and customize their store, add and manage products, process orders, and handle payments. StoreMart also includes marketing and analytics tools to help users promote their store and track their performance. It is designed to be user-friendly and easy to use, making it a good option for people who want to start an online store without a lot of technical expertise.', 'og_image.png', 'https://www.facebook.com/people/@/100089219461678', 'https://twitter.com/PaponITsolution', 'https://www.instagram.com/papon_it_solutions/', 'https://www.linkedin.com/in/papon-it-solutions-a2098b260/', '', '', NULL, NULL, NULL, '', 1, 1, '#01112b', '#f05a1e', 'StoreMart SaaS - Online Product Selling SaaS Business Website Builder', '-', 'Read All Instructions Carefully Before Sending Custom Domain Request', '<p>If you&#39;re using cPanel or Plesk then you need to manually add custom domain in your server with the same root directory as the script&#39;s installation&nbsp;and user need to point their custom domain A record with your server IP. Example : 68.178.145.4</p>', '', 0, 1, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, '0.5', 'Your experience on this site will be improved by allowing cookies.', 'I Agree', NULL, '2023-05-17 06:54:27'),
(4, 2, '$', 'left', 2, 2, 'default-logo.png', 'default-favicon.png', 'both', 'Asia/Kolkata', 'Your address', 'youremail@gmail.com', '', 'Your description', 'Your contact', 'Copyright © 2023 Papon IT Solutions. All Rights Reserved', 'Your store name', 'Your store name', 'Description', 'default-og.png', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', NULL, NULL, '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, '#171a29', '#171a29', NULL, NULL, NULL, NULL, '1', 2, 1, 'default-banner.png', NULL, NULL, NULL, 'default-cover.png', 'notification.mp3', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 06:28:31', '2023-07-18 06:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `type`, `cat_id`, `item_id`, `description`, `image`, `is_available`, `created_at`, `updated_at`) VALUES
(5, 'Start Restaurant Business', NULL, 0, 0, 'Stay Home & Delivered Your Foods', 'slider-62f7a5ef7567a.png', 1, '2022-08-13 13:23:59', '2022-08-13 20:23:59'),
(6, 'GET 35% OFF', 1, 6, 0, 'Get The Best Food From Food Lover!', 'slider-62f7a61754f79.png', 1, '2022-08-13 13:24:39', '2022-08-13 20:24:39'),
(7, '30% Discount First Order', 2, 0, 26, 'Today\'s Special Food Menu', 'slider-62f7a5bd3de4d.png', 1, '2022-08-13 13:24:57', '2022-08-13 20:24:57'),
(8, 'Flat 20% Discount', NULL, NULL, NULL, 'The Real Taste Of Indian Food!', 'slider-62f7a64169d20.png', 1, '2022-08-13 20:25:21', '2022-08-13 20:25:21'),
(9, 'Special Food Menu', 0, 0, 0, 'Enjoy A Delicious Food Menu Don\'t Miss The Deal', 'slider-62f7a655a1259.png', 1, '2023-04-03 09:48:17', '2023-04-03 04:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL COMMENT 'category id from categories table',
  `subcategory_name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=yes,2=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `vendor_id`, `cat_id`, `subcategory_name`, `slug`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 'Italian Starter', 'italian-starter', 1, 2, '2022-05-19 00:44:14', '2022-06-30 11:36:29'),
(2, 0, 9, 'Spicy soup', 'spicy-soup', 1, 2, '2022-05-19 00:48:49', '2022-06-30 11:36:29'),
(3, 0, 2, 'Maxican starter', 'maxican-starter', 1, 2, '2022-05-19 01:16:54', '2022-06-30 11:36:29'),
(4, 0, 9, 'Veg soups', 'veg-soups', 1, 2, '2022-05-19 01:17:12', '2022-06-30 11:36:29'),
(5, 0, 9, 'Nonveg soups', 'nonveg-soups', 1, 2, '2022-05-19 01:17:48', '2022-06-30 11:36:29'),
(6, 0, 8, 'Veg sandwiches', 'veg-sandwiches', 1, 2, '2022-05-19 01:18:39', '2022-06-30 11:36:29'),
(7, 0, 8, 'Nonveg sandwiches', 'nonveg-sandwiches', 1, 2, '2022-05-19 01:18:56', '2022-06-30 11:36:29'),
(8, 0, 7, 'Sada dosa', 'sada-dosa', 1, 2, '2022-05-19 01:19:12', '2022-06-30 11:36:29'),
(9, 0, 7, 'Maisore dosa', 'maisore-dosa', 1, 2, '2022-05-19 01:19:20', '2022-06-30 11:36:29'),
(10, 0, 6, 'Veg', 'veg', 1, 2, '2022-05-19 01:19:35', '2022-06-30 11:36:29'),
(11, 0, 6, 'NonVeg chinese', 'nonveg-chinese', 1, 2, '2022-05-19 01:19:42', '2022-06-30 11:36:29'),
(12, 0, 7, 'Butter Dosa', 'butter-dosa', 1, 2, '2022-05-21 00:11:37', '2022-08-08 07:33:49'),
(13, 0, 5, 'Cakes', 'cakes', 1, 2, '2022-05-21 00:11:48', '2022-08-08 07:32:26'),
(14, 0, 5, 'Pastries', 'pastries', 1, 2, '2022-05-21 00:11:56', '2022-08-08 07:31:45'),
(15, 0, 4, 'Energy drinks', 'energy-drinks', 1, 2, '2022-05-21 00:12:04', '2022-07-19 11:46:44'),
(16, 0, 4, 'Soft drinks', 'soft-drinks', 1, 2, '2022-05-21 00:12:12', '2022-07-19 11:46:30'),
(17, 0, 3, 'Maxican pizzas', 'maxican-pizzas', 1, 2, '2022-05-21 00:12:20', '2022-08-08 07:30:56'),
(18, 0, 3, 'Italian pizzas', 'italian-pizzas', 1, 2, '2022-05-21 00:12:27', '2022-08-08 07:30:24'),
(19, 0, 1, 'Cheese burger', 'cheese-burger', 1, 2, '2022-05-21 00:12:35', '2022-06-30 11:36:29'),
(20, 0, 1, 'Cheese Corn', 'cheese-corn', 1, 2, '2022-05-21 00:13:12', '2022-06-30 11:36:29'),
(21, 0, 2, 'Special', 'special', 1, 2, '2022-05-21 00:20:05', '2022-06-30 11:36:29'),
(22, 0, 9, 'Trending', 'trending', 1, 2, '2022-05-23 01:23:04', '2022-06-30 11:36:29'),
(23, 0, 4, 'Cold drinks', 'cold-drinks', 1, 2, '2022-07-19 11:46:59', '2022-11-15 08:57:54'),
(24, 11, 10, 'Burgers', 'burgers', 1, 2, '2023-07-19 04:32:07', '2023-07-19 06:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_transactions`
--

CREATE TABLE `subscription_transactions` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL COMMENT 'payment_type = COD : 1,RazorPay : 2, Stripe : 3, Flutterwave : 4, Paystack : 5, Mercado Pago : 7, PayPal : 8, MyFatoorah : 9, toyyibpay : 10',
  `payment_id` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `duration` varchar(255) NOT NULL COMMENT '1=1 Month,\r\n2=3Month\r\n3=6 Month\r\n4=1 Year',
  `days` int(11) DEFAULT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `service_limit` varchar(255) NOT NULL,
  `appoinment_limit` varchar(255) NOT NULL,
  `custom_domain` int(11) NOT NULL COMMENT '1 = yes, 2 = no',
  `google_analytics` int(11) NOT NULL COMMENT '1 = yes, 2 = no',
  `pos` int(11) NOT NULL COMMENT '1 = yes, 2 = no',
  `vendor_app` int(11) NOT NULL COMMENT '1 = Yes , 2 = No',
  `expire_date` varchar(255) NOT NULL,
  `themes_id` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1 = pending, 2 = yes/BankTransferAccepted,3=no/BankTransferDeclined',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription_transactions`
--

INSERT INTO `subscription_transactions` (`id`, `vendor_id`, `order_id`, `order_number`, `plan_id`, `plan_name`, `payment_type`, `payment_id`, `amount`, `duration`, `days`, `purchase_date`, `service_limit`, `appoinment_limit`, `custom_domain`, `google_analytics`, `pos`, `vendor_app`, `expire_date`, `themes_id`, `screenshot`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 0, '', 3, 'user', '2', 'pay_MIlV8WlpY9uUAR', 500, '1', 50, '2023-07-27 08:48:39am', '-1', '-1', 1, 1, 2, 1, '2023-09-15', '1', NULL, 2, '2023-07-27 08:48:39', '2023-07-27 08:48:39'),
(2, 15, 0, '', 3, 'user', '3', 'ch_3NYPv8JwZppK21ZQ1Cv0fyOA', 500, '1', 50, '2023-07-27 08:51:47am', '-1', '-1', 1, 1, 2, 1, '2023-09-15', '1', NULL, 2, '2023-07-27 08:51:47', '2023-07-27 08:51:47'),
(3, 15, 0, '', 2, 'Test Plan', '3', 'ch_3NYPvyJwZppK21ZQ0JxS4mDc', 300, '1', 0, '2023-07-27 08:52:35am', '1', '1', 1, 1, 2, 1, '2023-08-26', '1', NULL, 2, '2023-07-27 08:52:35', '2023-07-27 08:52:35'),
(4, 15, 0, '', 2, 'Test Plan', '4', 'MockFLWRef-1690448039034', 300, '1', 0, '2023-07-27 08:54:11am', '1', '1', 1, 1, 2, 1, '2023-08-26', '1', NULL, 2, '2023-07-27 08:54:11', '2023-07-27 08:54:11'),
(5, 13, 0, '', 2, 'Test Plan', '5', 'T548773428159304', 300, '1', 0, '2023-07-27 09:43:32am', '1', '1', 1, 1, 2, 1, '2023-08-26', '1', NULL, 2, '2023-07-27 09:43:32', '2023-07-27 09:43:32'),
(6, 13, 0, '', 3, 'user', '5', 'T804618053491939', 500, '1', 50, '2023-07-27 09:44:10am', '-1', '-1', 1, 1, 2, 1, '2023-09-15', '1', NULL, 2, '2023-07-27 09:44:10', '2023-07-27 09:44:10'),
(7, 15, 0, '', 3, 'user', '4', 'MockFLWRef-1690451790760', 500, '', 50, '2023-07-27 09:56:44am', '-1', '-1', 1, 1, 2, 1, '2023-09-15', '1', NULL, 2, '2023-07-27 09:56:44', '2023-07-27 09:56:44'),
(8, 15, 0, '', 2, 'Test Plan', '2', 'pay_MIo53L2MT9ZfVA', 300, '1', 0, '2023-07-27 11:20:01am', '1', '1', 1, 1, 2, 1, '2023-08-26', '1', NULL, 2, '2023-07-27 11:20:01', '2023-07-27 11:20:01'),
(9, 15, 0, '', 2, 'Test Plan', '5', 'T138727881080706', 300, '1', 0, '2023-07-27 12:54:14pm', '1', '1', 1, 1, 2, 1, '2023-08-26', '1', NULL, 2, '2023-07-27 12:54:14', '2023-07-27 12:54:14'),
(10, 15, 0, '', 3, 'user', '2', 'pay_MJ4vA5BzFQICg2', 500, '', 50, '2023-07-28 03:48:28am', '-1', '-1', 1, 1, 2, 1, '2023-09-16', '1', NULL, 2, '2023-07-28 03:48:28', '2023-07-28 03:48:28'),
(11, 15, 0, '', 2, 'Test Plan', '9', '07072537122164698373', 300, '1', 0, '2023-07-28 11:57:43am', '1', '1', 1, 1, 2, 1, '2023-08-27', '1', NULL, 2, '2023-07-28 06:27:43', '2023-07-28 06:27:43'),
(12, 15, 0, '', 3, 'user', '9', 'TP2307284353759547', 500, '', 50, '2023-07-28 04:04:28pm', '-1', '-1', 1, 1, 2, 1, '2023-09-16', '1', NULL, 2, '2023-07-28 10:34:28', '2023-07-28 10:34:28'),
(13, 15, 0, '', 2, 'Test Plan', '9', 'TP2307284360938407', 300, '1', 0, '2023-07-28 04:30:54pm', '1', '1', 1, 1, 2, 1, '2023-08-27', '1', NULL, 2, '2023-07-28 11:00:54', '2023-07-28 11:00:54'),
(14, 15, 0, '', 2, 'Test Plan', '9', 'PAYID-MTB2DMQ49P952938B245051W', 300, '1', 0, '2023-07-28 04:38:57pm', '1', '1', 1, 1, 2, 1, '2023-08-27', '1', NULL, 2, '2023-07-28 11:08:57', '2023-07-28 11:08:57'),
(15, 13, 0, '', 3, 'user', '2', 'pay_MJWZhZvvONg2H8', 500, '', 50, '2023-07-29 06:51:33am', '-1', '-1', 1, 1, 2, 1, '2023-09-17', '1', NULL, 2, '2023-07-29 06:51:33', '2023-07-29 06:51:33'),
(16, 13, 0, '', 2, 'Test Plan', '9', 'TP2307292512489621', 300, '1', 0, '2023-07-29 12:24:00pm', '1', '1', 1, 1, 2, 1, '2023-08-28', '1', NULL, 2, '2023-07-29 06:54:00', '2023-07-29 06:54:00'),
(17, 15, 0, '', 3, 'user', 'banktransfer', '', 500, '', 50, '2023-07-29 08:46:03am', '-1', '-1', 1, 1, 2, 1, '2023-09-17', '1', 'screenshot-6426b190e9179.jpg', 1, '2023-07-29 08:46:03', '2023-07-29 08:46:03'),
(18, 15, 0, '', 2, 'Test Plan', 'banktransfer', '', 300, '1', 0, '2023-07-29 08:48:29am', '1', '1', 1, 1, 2, 1, '2023-08-28', '1', 'screenshot-6426b190e9179.jpg', 1, '2023-07-29 08:48:29', '2023-07-29 08:48:29'),
(19, 15, 0, '', 3, 'user', 'banktransfer', '', 500, '', 50, '2023-07-31 10:41:57am', '-1', '-1', 1, 1, 2, 1, '2023-09-19', '1', NULL, 1, '2023-07-31 10:41:57', '2023-07-31 10:41:57'),
(20, 13, 0, '', 3, 'user', 'banktransfer', '', 500, '', 50, '2023-07-31 10:43:08am', '-1', '-1', 1, 1, 2, 1, '2023-09-19', '1', NULL, 1, '2023-07-31 10:43:08', '2023-07-31 10:43:08'),
(21, 13, 0, '', 2, 'Test Plan', 'banktransfer', '', 300, '1', 0, '2023-07-31 10:44:01am', '1', '1', 1, 1, 2, 1, '2023-08-30', '1', 'screenshot-6426b190e9179.jpg', 2, '2023-07-31 10:44:01', '2023-07-31 10:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `systemaddons`
--

CREATE TABLE `systemaddons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `activated` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systemaddons`
--

INSERT INTO `systemaddons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(2, 'MercadoPago', 'mercadopago', '9.0', 1, 'mercadopago.png', '2023-07-06 07:14:34', '2023-07-06 07:14:34'),
(3, 'MyFatoorah', 'myfatoorah', '9.0', 1, 'myfatoorah.png', '2023-07-06 07:14:45', '2023-07-06 07:14:45'),
(4, 'OTP', 'otp', '9.0', 0, 'otp.png', '2023-07-06 07:14:56', '2023-07-06 07:21:52'),
(5, 'Owner App', 'ownerapp', '9.0', 1, 'ownerapp.png', '2023-07-06 07:15:02', '2023-07-06 07:15:02'),
(6, 'PayPal', 'paypal', '9.0', 1, 'paypal.png', '2023-07-06 07:15:09', '2023-07-06 07:15:09'),
(7, 'POS', 'pos', '9.0', 1, 'pos.png', '2023-07-06 07:15:20', '2023-07-06 07:21:45'),
(8, 'Themes', 'template', '9.0', 1, 'template.png', '2023-07-06 07:16:12', '2023-07-06 07:16:12'),
(9, 'toyyibPay', 'toyyibpay', '9.0', 1, 'toyyibpay.png', '2023-07-06 07:16:18', '2023-07-06 07:16:18'),
(10, 'Google Analytics', 'google_analytics', '3.0', 1, 'google_analytics.jpg', '2023-03-31 02:41:57', '2023-04-15 01:39:26'),
(11, 'Blogs', 'blog', '3.0', 1, 'blog.jpg', '2023-03-31 02:42:05', '2023-03-31 02:42:05'),
(12, 'Coupons', 'coupon', '3.0', 1, 'coupons.jpg', '2023-03-31 02:42:09', '2023-03-31 02:42:09'),
(13, 'Custom Domain', 'custom_domain', '3.0', 1, 'custom_domain.jpg', '2023-03-31 02:42:24', '2023-03-31 02:42:24'),
(14, 'Customer Login', 'customer_login', '3.0', 1, 'customer_login.jpg', '2023-03-31 02:42:44', '2023-03-31 02:42:44'),
(15, 'Multiple Languages', 'language', '3.0', 1, 'language.jpg', '2023-03-31 02:43:04', '2023-03-31 02:43:04'),
(16, 'Social Logins', 'sociallogin', '3.0', 1, 'sociallogin.jpg', '2023-03-31 02:43:18', '2023-04-21 07:23:43'),
(17, 'Sound notification', 'notification', '3.0', 1, 'notification.jpg', '2023-03-31 02:43:34', '2023-03-31 02:43:34'),
(18, 'Multiple Themes', 'template', '3.0', 1, 'template.jpg', '2023-03-31 02:43:50', '2023-03-31 02:43:50'),
(19, 'Personalised Slug', 'unique_slug', '3.0', 1, 'unique_slug.jpg', '2023-03-31 02:44:03', '2023-03-31 02:44:03'),
(20, 'Vendor Flutter App', 'vendor_app', '3.0', 1, 'vendor_app.jpg', '2023-03-31 02:44:22', '2023-03-31 02:44:22'),
(21, 'Whatsapp Message', 'whatsapp_message', '3.0', 1, 'whatsapp_message.jpg', '2023-03-31 02:44:31', '2023-03-31 02:44:31'),
(22, 'PayPal', 'paypal', '3.0', 1, 'paypal.jpg', '2023-03-31 07:31:32', '2023-03-31 07:31:32'),
(23, 'Myfatoorah', 'myfatoorah', '3.0', 1, 'myfatoorah.jpg', '2023-03-31 07:31:43', '2023-03-31 07:31:43'),
(24, 'Mercado Pago', 'mercado_pago', '3.0', 1, 'mercado_pago.jpg', '2023-03-31 07:31:53', '2023-03-31 07:31:53'),
(25, 'toyyibPay', 'toyyibpay', '3.0', 1, 'toyyibpay.jpg', '2023-03-31 07:32:04', '2023-03-31 07:32:04'),
(26, 'All Access Pass', 'allow_without_subscription', '3.0', 1, 'allow_without_subscription.jpg', '2023-03-31 07:36:17', '2023-03-31 07:36:17'),
(27, 'Subscription', 'subscription', '3.0', 1, 'subscription.jpg', '2023-03-31 07:36:17', '2023-03-31 07:36:17'),
(28, 'Telegram Message', 'telegram_message', '3.0', 1, 'telegram_message.jpg', '2023-05-05 07:08:28', '2023-05-05 07:08:28'),
(29, 'Cookie Consent & Google reCAPTCHA', 'cookie_recaptcha', '3.0', 1, 'cookie_recaptcha.jpg', '2023-05-05 07:08:28', '2023-05-09 00:54:19'),
(30, 'POS', 'pos', '3.0', 1, 'pos.jpg', '2023-05-05 07:08:28', '2023-05-09 00:54:19'),
(31, 'Banktransfer', '', '3.0', 1, '\r\n', '2023-03-31 07:31:53', '2023-03-31 07:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-16 23:12:16', '2023-01-28 12:33:44'),
(1, 1, '2022-11-16 23:12:16', '2023-01-28 12:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `vendor_id`, `star`, `description`, `name`, `image`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'good', 'test', 'testimonial-64bbc8a4c2107.jpg', 'xyz', '2023-07-22 06:46:36', '2023-07-22 06:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `break_start` varchar(255) NOT NULL,
  `break_end` varchar(255) NOT NULL,
  `close_time` varchar(20) NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `day`, `open_time`, `break_start`, `break_end`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 'monday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(2, 'tuesday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(3, 'wednesday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(4, 'thursday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(5, 'friday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(6, 'saturday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57'),
(7, 'sunday', '12:00 AM', '01:00 PM', '01:00 PM', '11:59 PM', 2, '2023-01-02 07:16:57', '2023-01-02 14:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `timings`
--

CREATE TABLE `timings` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(30) NOT NULL,
  `break_start` varchar(255) NOT NULL,
  `break_end` varchar(255) NOT NULL,
  `close_time` varchar(30) NOT NULL,
  `is_always_close` tinyint(1) NOT NULL COMMENT '1 For Yes, 2 For No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timings`
--

INSERT INTO `timings` (`id`, `vendor_id`, `day`, `open_time`, `break_start`, `break_end`, `close_time`, `is_always_close`, `created_at`, `updated_at`) VALUES
(1, 2, 'Monday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:29', '2023-07-18 06:28:29'),
(2, 2, 'Tuesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(3, 2, 'Wednesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(4, 2, 'Thursday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(5, 2, 'Friday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(6, 2, 'Saturday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(7, 2, 'Sunday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:31', '2023-07-18 06:28:31'),
(1, 2, 'Monday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:29', '2023-07-18 06:28:29'),
(2, 2, 'Tuesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(3, 2, 'Wednesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(4, 2, 'Thursday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(5, 2, 'Friday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(6, 2, 'Saturday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:30', '2023-07-18 06:28:30'),
(7, 2, 'Sunday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2023-07-18 06:28:31', '2023-07-18 06:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `transaction_id` text DEFAULT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = order placed (using wallet)\r\n2 = order cancel\r\n3 = added-money-wallet-using- Razorpay\r\n4 = added-money-wallet-using- Stripe\r\n5 = added-money-wallet-using- Flutterwave\r\n6 = added-money-wallet-using- Paystack\r\n7 = Referral \r\n8 = Money added by Admin\r\n9 = Money deducted by Admin',
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `vendor_id`, `user_id`, `order_id`, `order_number`, `amount`, `transaction_id`, `transaction_type`, `username`, `created_at`, `updated_at`) VALUES
(1, 15, 2, NULL, NULL, '400', 'pay_MDj8RYvwwI6huB', '3', NULL, '2023-07-14 15:14:56', '2023-07-14 15:14:56'),
(2, 13, 2, NULL, NULL, '10', 'pay_ME0Y4R25i5BvoZ', '3', NULL, '2023-07-15 08:16:55', '2023-07-15 08:16:55'),
(3, 13, 15, NULL, NULL, '50', NULL, '12', NULL, '2023-07-15 11:52:45', '2023-07-15 11:52:45'),
(4, 13, 15, NULL, NULL, '200', NULL, '12', NULL, '2023-07-15 11:52:54', '2023-07-15 11:52:54'),
(5, 15, 15, NULL, NULL, '249', NULL, '13', NULL, '2023-07-15 11:52:58', '2023-07-15 11:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `purchase_amount` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_type` varchar(10) NOT NULL,
  `google_id` text DEFAULT NULL,
  `facebook_id` text DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT 'id from manage_roles table',
  `type` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `identity_image` text DEFAULT NULL,
  `identity_type` text DEFAULT NULL,
  `identity_number` text DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `wallet` varchar(50) DEFAULT '00',
  `referral_code` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `referral_amount` int(11) NOT NULL DEFAULT 0,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_online` int(11) NOT NULL DEFAULT 2 COMMENT '1=yes,2=no',
  `is_notification` int(11) DEFAULT 1 COMMENT '1=yes,2=no',
  `is_mail` int(11) DEFAULT 1 COMMENT '1=yes,2=no',
  `otp` varchar(6) DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `remember_token` text DEFAULT NULL,
  `license_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `vendor_id`, `plan_id`, `purchase_amount`, `purchase_date`, `name`, `email`, `mobile`, `profile_image`, `password`, `login_type`, `google_id`, `facebook_id`, `role_id`, `type`, `country`, `city`, `identity_image`, `identity_type`, `identity_number`, `token`, `wallet`, `referral_code`, `user_id`, `referral_amount`, `is_available`, `is_online`, `is_notification`, `is_mail`, `otp`, `is_verified`, `remember_token`, `license_type`, `created_at`, `updated_at`) VALUES
(1, 0, 0, '', '', 'admin', 'admin@gmail.com', '9909899987', 'profile-64bf3ffad1b6d.jpg', '$2y$10$8HViCXNNejWwxrIDeS7XWuZuLm8wShvCBpa.v2VmipB6wjzcwOoUO', 'email', NULL, NULL, NULL, 1, 1, 0, 'identity-64ba64b7e36f7.jpg', NULL, NULL, 'fTYphgotQxm10ee91-VbPQ:APA91bGC6pJRAchnA8eC10oDzyCdLd3jaferPwdfVSSfzDsgbRvkqQwE5vvgl-Y0SRQhmFfo6UAxtbcwprGvggwBmdvdD70TCk1Fw6J26EHH8i-dkWOplTAj8Y00VTkF1ZaCFC2aSk21', '0', NULL, NULL, 0, 1, 1, 1, NULL, NULL, 1, 'MpvTOoyQ56XE2DVXPoYusbxyFaE63Z3kgcFsKQA23qUyg6Of9TyslULlglkz', NULL, '2020-06-05 07:21:20', '2023-07-24 21:52:34'),
(2, 0, 0, '', '', 'user', 'user@gmail.com', '+911236547890', 'unknown.png', '$2y$10$8HViCXNNejWwxrIDeS7XWuZuLm8wShvCBpa.v2VmipB6wjzcwOoUO', 'email', '', '', NULL, 2, 0, 0, NULL, NULL, NULL, 'eUl9ntg9Rz2zAwY5gXEmiT:APA91bFSBaavpm8dvunR8RgJuN_KI8-fR6dTeMT5Ya_Oj6b9q6Y2FPXxQCnKeruUXxk1AwTKJz0gMoA5J5hlSeGvYMqiPNt4itW6QXojeZtegOw_rJFtFCAWJUdTy5xtd6j43ZtKSOuD', '410', 'j4gJuIYWpN', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-06 09:56:17', '2023-07-16 11:10:54'),
(3, 0, 0, '', '', 'Employee', 'employee@yopmail.com', '2312365478', 'unknown.png', '$2y$10$rgP7V6CRWlmWgOHv3OfbfefKYkJAgd0KqvdsHd3xCPQWcKDrfTosS', '', NULL, NULL, 2, 4, 0, 0, NULL, NULL, NULL, '', '00', NULL, NULL, 0, 1, 2, 1, 1, NULL, NULL, NULL, NULL, '2023-07-06 10:14:52', '2023-07-06 10:14:52'),
(4, 0, 0, '', '', 'vasim ishaq', 'vasimishaq@gmail.com', '+917698140580', 'unknown.png', '', 'google', '107192788484765655145', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '00', 'ndwGCuYDfW', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-06 12:24:04', '2023-07-06 12:24:10'),
(5, 0, 0, '', '', 'Test Gravity', 'testgravity777@gmail.com', '+912564789321', 'unknown.png', '', 'google', '100181784369593262297', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '15', 'EtzLw7gGM4', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-06 13:21:12', '2023-07-08 12:42:56'),
(6, 0, 0, '', '', 'Driver', 'driver@gmail.com', '256987410', 'unknown.png', '$2y$10$0hmK1YOrXFKGzmuUU/Z4COC8zxSuO3PrRfeMWWpGqrdRQQOp/9KbS', '', NULL, NULL, NULL, 3, 0, 0, 'identity-64a9372ea9c34.png', 'Passport', '123456', 'cRGkYr6FSrikRdFYEJ72UH:APA91bHw1hoEzghbnvdm08IYcHAkn3rGq8T6jhgvsNA2tYuwyo0rw085m0RqbSPC88YipjEnIyoKrWnQ3LAFDRFAWVyl9ovDj-9PDzZwkFeOdtxsNWCFnmqNTxUbsaqJG1HsXwaXIH-v', '00', NULL, NULL, 0, 1, 2, 1, 1, NULL, NULL, NULL, NULL, '2023-07-08 10:15:10', '2023-07-15 13:59:35'),
(7, 0, 0, '', '', 'Prabin PAUDEL', 'prabinpaudel10@gmail.com', '+4368864175591', 'unknown.png', '', 'google', '102128050320853640230', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '00', '7WqwMjdp35', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-09 14:24:22', '2023-07-09 14:24:25'),
(8, 0, 0, '', '', 'Dan Uritu', 'tomik.restaurant@gmail.com', '+351929038584', 'unknown.png', '$2y$10$pHDVuNQSSlGBzVaQShSt7uBLASvQ8kf5QGTbAAxQoNe7Ec6PDo5hy', 'email', '', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '00', '9CyaHkXIBs', NULL, 0, 1, 2, 1, 2, NULL, 1, NULL, NULL, '2023-07-11 18:05:20', '2023-07-16 09:21:23'),
(9, 0, 0, '', '', 'Full Fit', 'fullfit1990@gmail.com', '+212+212619196375', 'unknown.png', '', 'google', '100309172150250948521', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '00', 'JV2A0X3gua', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-13 18:27:08', '2023-07-13 18:27:15'),
(10, 0, 0, '', '', 'Uksksks', 'jejsnsa@gmail.com', '+91646494946', 'unknown.png', '$2y$10$u.yZ2itvA7Kbx0IDvV6P..41LqwitLYX4Nr0p7/JXChY.uawVp6FC', 'email', '', '', NULL, 2, 0, 0, NULL, NULL, NULL, '', '1', 'S0Alq5P4Ug', NULL, 0, 1, 2, 1, 1, NULL, 1, NULL, NULL, '2023-07-15 01:31:51', '2023-07-15 11:52:58'),
(13, 0, 2, '300', '2023-07-31 10:44:01am', 'bhalala', 'bhalala@gmail.com', '4564462162', 'profile-64c4bb0e61d6b.jpg', '$2y$10$UwX3vH0je7H5VSDubfEio.9fl1vEhiar7qtdbs25MLC0pciPg0rPG', 'email', NULL, NULL, NULL, 5, 5, 17, 'identity-64ba63c616e67.png', NULL, NULL, NULL, '00', NULL, NULL, 0, 1, 2, 1, 1, NULL, NULL, NULL, NULL, '2023-07-21 05:10:43', '2023-07-31 05:14:01'),
(14, 0, 0, '', '', 'joan', 'joan@gamil.com', '990989999', 'unknown.png', '$2y$10$IrDZj05Y5E8egXKrRhsNVuFJrGK5ECu9ZCwqAKAVpKrhEtY1USD0C', '', NULL, NULL, NULL, 3, 0, 0, 'identity-64bb7cb0d76f3.jpg', 'Passport', '1234567890', NULL, '00', NULL, NULL, 0, 1, 2, 1, 1, NULL, NULL, NULL, NULL, '2023-07-22 01:22:33', '2023-07-22 01:22:53'),
(15, 0, 3, '500', '2023-07-31 10:41:56am', 'vinay bhalala', 'bhalalavinay@gmail.com', '9909294510', 'profile-64bf6277d55d1.jpg', '$2y$10$hMj3WypWbd21l9giu0moYuyrCI607fQo4mUtfZ1SVYG7Cd5UalHtq', 'email', NULL, NULL, NULL, 5, 5, 2, 'identity-64be35bec116f.jpg', NULL, NULL, NULL, '00', NULL, NULL, 0, 1, 2, 1, 1, NULL, NULL, NULL, NULL, '2023-07-24 02:12:37', '2023-07-31 05:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `variation`
--

CREATE TABLE `variation` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `product_price` varchar(20) NOT NULL DEFAULT '0',
  `sale_price` varchar(255) NOT NULL DEFAULT '0',
  `variation` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `variation`
--

INSERT INTO `variation` (`id`, `item_id`, `product_price`, `sale_price`, `variation`, `created_at`, `updated_at`) VALUES
(1, 1, '50', '0', 'Small', '2021-08-15 13:11:29', '2021-08-15 13:11:29'),
(2, 1, '100', '0', 'Regular', '2021-08-15 13:11:29', '2021-08-15 13:11:29'),
(3, 1, '150', '0', 'Large', '2021-08-15 13:11:30', '2021-08-15 13:11:30'),
(4, 5, '20', '0', 'Regular', '2022-04-09 09:13:32', '2022-06-30 07:00:59'),
(6, 5, '30', '0', 'King', '2022-04-09 10:30:34', '2022-06-30 07:00:59'),
(7, 7, '20', '0', 'King', '2022-04-11 04:51:05', '2022-06-30 07:00:52'),
(8, 7, '10', '0', 'Regular', '2022-04-11 04:51:05', '2022-06-30 07:00:52'),
(9, 9, '10', '0', 'Half', '2022-04-11 04:54:48', '2022-06-30 07:00:46'),
(10, 9, '15', '0', 'Regular', '2022-04-11 04:54:48', '2022-06-30 07:00:46'),
(11, 9, '20', '0', 'King', '2022-04-11 04:54:48', '2022-06-30 07:00:46'),
(12, 10, '10', '0', 'Half', '2022-04-11 04:55:53', '2022-06-30 07:00:41'),
(13, 10, '20', '0', 'Full', '2022-04-11 04:55:53', '2022-06-30 07:00:41'),
(14, 11, '50', '0', 'King', '2022-04-11 05:05:50', '2022-06-30 07:00:37'),
(15, 11, '40', '0', 'Regular', '2022-04-11 05:05:50', '2022-06-30 07:00:37'),
(16, 11, '30', '0', 'Medium', '2022-04-11 05:05:50', '2022-06-30 07:00:37'),
(17, 11, '20', '0', 'Small', '2022-04-11 05:05:50', '2022-06-30 07:00:37'),
(18, 12, '30', '0', 'Regular', '2022-04-11 05:07:43', '2022-06-30 07:00:33'),
(19, 12, '40', '0', 'large', '2022-04-11 05:07:43', '2022-06-30 07:00:33'),
(20, 13, '30', '0', 'Regular', '2022-04-11 05:09:05', '2022-06-30 07:00:29'),
(21, 13, '20', '0', 'Medium', '2022-04-11 05:09:05', '2022-06-30 07:00:29'),
(22, 13, '50', '0', 'king', '2022-04-11 05:09:05', '2022-06-30 07:00:29'),
(23, 15, '30', '0', 'Regular', '2022-04-11 05:11:17', '2022-06-30 07:00:21'),
(24, 15, '20', '0', 'Full', '2022-04-11 05:11:17', '2022-06-30 07:00:21'),
(25, 15, '40', '0', 'King', '2022-04-11 05:11:17', '2022-06-30 07:00:21'),
(26, 16, '30', '0', 'Small', '2022-04-11 05:15:03', '2022-06-30 07:00:18'),
(27, 16, '20', '0', 'Regular', '2022-04-11 05:15:03', '2022-06-30 07:00:18'),
(28, 16, '40', '0', 'Large', '2022-04-11 05:15:03', '2022-06-30 07:00:18'),
(29, 17, '50', '0', 'Single', '2022-04-11 05:28:31', '2022-06-30 06:59:41'),
(30, 17, '80', '0', 'Combo', '2022-04-11 05:28:31', '2022-06-30 06:59:41'),
(31, 18, '50', '0', 'Single', '2022-04-11 05:29:23', '2022-06-30 06:59:34'),
(32, 18, '70', '0', 'Combo', '2022-04-11 05:29:23', '2022-06-30 06:59:34'),
(33, 18, '100', '0', 'Trio', '2022-04-11 05:29:23', '2022-06-30 06:59:34'),
(34, 19, '50', '0', 'Single', '2022-04-11 05:30:05', '2022-06-30 06:59:31'),
(35, 19, '80', '0', 'Combo', '2022-04-11 05:30:05', '2022-06-30 06:59:31'),
(36, 19, '100', '0', 'Trio', '2022-04-11 05:30:05', '2022-06-30 06:59:31'),
(37, 20, '50', '0', 'Single', '2022-04-11 05:30:38', '2022-06-30 06:59:26'),
(38, 20, '80', '0', 'Combo', '2022-04-11 05:30:38', '2022-06-30 06:59:26'),
(39, 24, '50', '0', 'Single dish', '2022-04-11 05:36:50', '2022-06-30 06:59:12'),
(40, 24, '80', '0', 'Combo dish', '2022-04-11 05:36:50', '2022-06-30 06:59:12'),
(41, 30, '80.5', '0', 'Regular', '2022-04-11 05:42:54', '2023-03-04 11:29:53'),
(42, 30, '100.5', '0', 'jain', '2022-04-11 05:42:54', '2023-03-04 11:29:53'),
(43, 31, '80', '0', 'Regular', '2022-04-11 05:43:36', '2023-03-29 12:09:28'),
(44, 31, '90', '0', 'Jain', '2022-04-11 05:43:36', '2023-03-29 12:09:28'),
(45, 32, '70', '0', 'Regular', '2022-04-11 05:45:26', '2022-06-30 06:58:05'),
(46, 32, '90', '0', 'Jain', '2022-04-11 05:45:26', '2022-06-30 06:58:05'),
(47, 32, '100', '0', 'Jain + cheese', '2022-04-11 05:45:26', '2022-06-30 06:58:05'),
(48, 32, '80', '0', 'Regular + Cheese', '2022-04-11 05:45:26', '2022-06-30 06:58:05'),
(49, 33, '70.5', '0', 'Regular', '2022-04-11 05:48:37', '2023-03-04 11:20:24'),
(50, 33, '80.5', '0', 'Cheese', '2022-04-11 05:48:37', '2023-03-04 11:20:24'),
(51, 34, '20', '0', 'Half - Jain', '2022-04-11 05:50:45', '2023-07-05 10:34:41'),
(52, 34, '30', '0', 'Full - jain', '2022-04-11 05:50:45', '2023-07-05 10:34:41'),
(53, 34, '40', '0', 'Half - Regular', '2022-04-11 05:50:45', '2023-07-05 10:34:41'),
(55, 35, '20', '0', 'Regular', '2022-04-11 05:54:53', '2023-07-05 10:35:41'),
(56, 35, '30', '0', 'Jain', '2022-04-11 05:54:53', '2023-07-05 10:35:41'),
(57, 35, '40', '0', 'Regular - half', '2022-04-11 05:54:53', '2023-07-05 10:35:41'),
(59, 40, '150', '0', 'Regular', '2022-06-23 13:03:30', '2022-06-23 13:03:30'),
(60, 40, '200', '0', 'Large', '2022-06-23 13:03:30', '2022-06-23 13:03:30'),
(61, 40, '250', '0', 'King', '2022-06-23 13:03:30', '2022-06-23 13:03:30'),
(62, 41, '150', '0', 'Regular', '2022-06-23 13:15:44', '2022-06-23 13:15:44'),
(63, 41, '200', '0', 'Large', '2022-06-23 13:15:44', '2022-06-23 13:15:44'),
(64, 41, '250', '0', 'King', '2022-06-23 13:15:44', '2022-06-23 13:15:44'),
(65, 46, '65', '0', '1kg', '2023-04-04 06:33:10', '2023-07-05 10:33:56'),
(66, 46, '35', '0', '500 gm', '2023-04-04 06:35:30', '2023-07-05 10:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL,
  `delivery_charge` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `vendor_id`, `name`, `coordinates`, `delivery_charge`, `created_at`, `updated_at`) VALUES
(1, 1, 'tangier', '(21.0368842979539, 72.88170718246914),(21.034320754842554, 73.42003726059414),(21.263582656488715, 73.39669131332852),(21.43497576432228, 73.42278384262539),(21.442645389562163, 73.00255679184414),(21.437532350862117, 72.75948428207852),(21.31348639110159, 72.65923403793789),(21.091989797865807, 72.72377871567227)', 200, '2022-05-30 06:42:24', '2023-05-22 06:04:30'),
(4, 1, 'Kolhapur', '(17.210181069499296, 73.71952374093811),(16.041705265708444, 73.85135967843811),(16.20002008167588, 75.60917217843811),(17.40946729616528, 75.45536358468811),(17.231168726479346, 73.63163311593811)', 100, '2023-04-18 03:59:04', '2023-05-23 04:28:36'),
(7, 1, 'Ahmedawad', '(23.70388304575176, 78.3988085582789),(20.857779531349873, 78.3328905895289),(20.83724540564635, 80.8158007457789),(24.58608584005177, 81.0355273082789),(24.526129843041158, 78.2449999645289)', 200, '2023-05-23 04:19:27', '2023-07-20 00:25:40'),
(8, 11, 'amroli', '(21.247955713718092, 72.85170548602636),(21.26201663573051, 72.85212477546241),(21.261056772390138, 72.89349516730812),(21.228897736196114, 72.89366682868507),(21.227937657123856, 72.85075148444679)', 200, '2023-07-19 05:47:53', '2023-07-19 06:49:58'),
(9, 1, 'hirabag', '(21.219491581807215, 72.85216954740332),(21.219491581807215, 72.88615850004004),(21.200127545731412, 72.88787511380957),(21.200447633083193, 72.84976628812598),(21.218371417535025, 72.84976628812598)', 150, '2023-07-20 00:26:07', '2023-07-20 00:26:07'),
(10, 11, 'katargam', '(21.24135819838578, 72.81770183338966),(21.241038199765725, 72.84602596058693),(21.21207544944392, 72.84654094471779),(21.211115260916447, 72.81959010853615)', 150, '2023-07-20 00:26:45', '2023-07-20 00:26:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_features`
--
ALTER TABLE `footer_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Indexes for table `manage_roles`
--
ALTER TABLE `manage_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_configuration`
--
ALTER TABLE `otp_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotionalbanner`
--
ALTER TABLE `promotionalbanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_transactions`
--
ALTER TABLE `subscription_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemaddons`
--
ALTER TABLE `systemaddons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation`
--
ALTER TABLE `variation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_features`
--
ALTER TABLE `footer_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `manage_roles`
--
ALTER TABLE `manage_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `otp_configuration`
--
ALTER TABLE `otp_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotionalbanner`
--
ALTER TABLE `promotionalbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `subscription_transactions`
--
ALTER TABLE `subscription_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `systemaddons`
--
ALTER TABLE `systemaddons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `variation`
--
ALTER TABLE `variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
