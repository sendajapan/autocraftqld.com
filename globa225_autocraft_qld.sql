-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2025 at 10:06 AM
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
-- Database: `autocraft_qld`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2024-05-22 07:59:22'),
(2, 2, 'user', '2024-12-26 06:10:07'),
(3, 3, 'user', '2024-12-26 06:19:17'),
(4, 4, 'user', '2024-12-26 06:22:01'),
(5, 5, 'user', '2024-12-26 06:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'admin@sendajapan.com', '$2y$12$tHBORbYl12BSlRHY7yrioOczogcyJPwNvVSYmjrnQptl1trfPNtry', NULL, NULL, 0, '2025-07-08 06:51:06', '2024-05-22 07:59:22', '2025-07-08 06:51:06'),
(2, 2, 'email_password', NULL, 'faiz@autocraftkorea.com', '$2y$12$4McwBkUSq77HMNOzVH/oa.hHZ7lC8buzKcNhtxYchXWkH60X3cPP2', NULL, NULL, 0, '2024-12-27 11:40:07', '2024-12-26 06:10:06', '2024-12-27 11:40:07'),
(3, 3, 'email_password', NULL, 'rehmankhatri@autocraftkorea.com', '$2y$12$IEtD3C0JKWjpZJHegZ0DruZnVCdth/Ao8ESCas2MvqTd9IRIOXb3.', NULL, NULL, 0, '2024-12-26 06:19:37', '2024-12-26 06:19:16', '2024-12-26 06:19:37'),
(4, 4, 'email_password', NULL, 'samad@autocraftkorea.com', '$2y$12$ovRCwnAOF0D6T9VLy0uoGeHWsLyXnZkgS5Hv7LRKVZJQYZO1aOTGO', NULL, NULL, 0, '2024-12-26 06:22:29', '2024-12-26 06:22:01', '2024-12-26 06:22:29'),
(5, 5, 'email_password', NULL, 'jaffer@autocraftkorea.com', '$2y$12$HKXCzL8CYfrWwF5XltcMVeT4G6mnZEBer0tAEBsQXQ06PuhYbVkzm', NULL, NULL, 0, '2024-12-26 06:23:21', '2024-12-26 06:23:03', '2024-12-26 06:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '39.44.75.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-05-22 09:03:38', 1),
(2, '39.44.75.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-05-22 09:58:10', 1),
(3, '39.44.75.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-05-22 09:59:03', 1),
(4, '39.44.75.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'email_password', 'admin@sendajapan.com', 1, '2024-05-22 10:11:11', 1),
(5, '39.44.75.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'email_password', 'abc@gmail.com', NULL, '2024-05-22 10:13:13', 0),
(6, '39.44.72.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-05-28 06:23:12', 1),
(7, '39.44.73.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-05-30 09:53:38', 1),
(8, '39.44.74.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-06-14 05:07:21', 1),
(9, '39.44.74.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-06-14 10:03:49', 1),
(10, '39.44.75.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-06-20 10:16:25', 1),
(11, '39.44.75.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-06-21 04:48:33', 1),
(12, '138.199.53.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-10-30 09:25:16', 1),
(13, '150.249.193.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-11-14 06:41:47', 1),
(14, '182.187.130.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'email_password', 'admin@sendajapan.com', 1, '2024-11-14 06:41:57', 1),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-11-14 10:01:51', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-11-14 10:19:23', 1),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-11-15 04:25:34', 1),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-11-18 04:25:58', 1),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-19 04:47:34', 1),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-19 05:04:44', 1),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-19 07:10:42', 1),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'info@autocraftkorea.com', NULL, '2024-12-24 09:52:25', 0),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'info@autocraftkorea.com', NULL, '2024-12-24 09:52:56', 0),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-24 09:54:21', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-26 04:48:19', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2024-12-26 05:19:03', 0),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2024-12-26 05:19:11', 0),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'faiz@autocraftkorea.com', 2, '2024-12-26 06:12:20', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'rehmankhatri@autocraftkorea.com', NULL, '2024-12-26 06:15:40', 0),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'rehmankhatri@autocraftkorea.com', NULL, '2024-12-26 06:17:01', 0),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'rehmankhatri@autocraftkorea.com', 3, '2024-12-26 06:19:37', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'samad@autocraftkorea.com', NULL, '2024-12-26 06:21:19', 0),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'samad@autocraftkorea.com', NULL, '2024-12-26 06:21:26', 0),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'samad@autocraftkorea.com', 4, '2024-12-26 06:22:29', 1),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'jaffer@autocraftkorea.com', 5, '2024-12-26 06:23:21', 1),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'faiz@autocraftkorea.com', 2, '2024-12-26 10:37:15', 1),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'faiz@autocraftkorea.com', 2, '2024-12-27 11:40:07', 1),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-27 12:03:55', 1),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2024-12-30 04:47:32', 1),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-01-30 11:43:18', 1),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-02-26 11:21:02', 1),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-02-27 04:29:15', 0),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-02-27 04:29:54', 1),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-02-27 05:24:26', 1),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-02-28 05:49:59', 1),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-06-27 05:18:29', 1),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-06-27 07:08:28', 1),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-01 10:04:53', 0),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-01 10:05:01', 0),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-01 10:05:11', 0),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-07-01 10:05:35', 1),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-07 07:35:06', 0),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-07 07:35:14', 0),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-07-07 07:35:39', 1),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', NULL, '2025-07-08 06:50:59', 0),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'email_password', 'admin@sendajapan.com', 1, '2025-07-08 06:51:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_remember_tokens`
--

INSERT INTO `auth_remember_tokens` (`id`, `selector`, `hashedValidator`, `user_id`, `expires`, `created_at`, `updated_at`) VALUES
(4, '3c68f438be02f6f978fb3663', 'f533327a09a6e29dacf299188aaf7ec4d79d33ef87f7eb9d502e6f0e90bfbf81', 1, '2025-08-07 06:27:02', '2025-07-07 07:35:39', '2025-07-08 06:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autologin`
--

CREATE TABLE `autologin` (
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `pass` varchar(40) DEFAULT NULL,
  `depart` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `autologin`
--

INSERT INTO `autologin` (`user_id`, `pass`, `depart`) VALUES
('shani', '28286604743150e5222582bf32a224aabbe392e2', 1),
('1', '356a192b7913b04c54574d18c28d46e6395428ab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE `make` (
  `ma_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`ma_id`, `name`) VALUES
(1, 'TOYOTA'),
(2, 'NISSAN'),
(3, 'MITSUBISHI'),
(4, 'MAZDA'),
(5, 'HONDA'),
(6, 'ISUZU'),
(7, 'DAIHATSU'),
(8, 'SUBARU'),
(9, 'SUZUKI'),
(10, 'HINO'),
(11, 'AUDI'),
(12, 'MERCEDES BENZ'),
(13, 'BMW'),
(14, 'OPEL'),
(16, 'ROVER'),
(18, 'MG'),
(19, 'VOLKSWAGEN'),
(20, 'YANMAR'),
(21, 'GMC'),
(22, 'VOLVO'),
(23, 'AUSTIN'),
(24, 'RANGE ROVER'),
(25, 'LAND ROVER'),
(26, 'YAMAHA'),
(27, 'CHRYSLER'),
(28, 'RENAULT'),
(29, 'PONTIAC'),
(30, 'PEUGEOT'),
(31, 'FIAT'),
(32, 'HYUNDAI'),
(33, 'SAAB'),
(34, 'CITROEN'),
(35, 'KUBOTA'),
(36, 'LEIPAI'),
(37, 'KOBELCO'),
(38, 'JEEP'),
(39, 'CADILLAC'),
(40, 'NISSAN DIESEL'),
(41, 'MITSUBISHI FUSO'),
(42, 'FORD'),
(43, 'ALFA ROMEO'),
(44, 'PORSCHE'),
(45, 'JAGUAR'),
(46, 'FERRARI'),
(47, 'SMART'),
(48, 'BENTLEY'),
(49, 'LANCIA'),
(50, 'MITSUOKA'),
(51, 'MASERATI'),
(52, 'KIA'),
(53, 'DAEWOO'),
(54, 'HITACHI'),
(55, 'KOMATSU');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1716364683, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1716364683, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1716364683, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bodytype`
--

CREATE TABLE `tbl_bodytype` (
  `bodytype_id` int(11) NOT NULL,
  `bodytype_name` varchar(100) DEFAULT NULL,
  `avg_m3` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bodytype`
--

INSERT INTO `tbl_bodytype` (`bodytype_id`, `bodytype_name`, `avg_m3`) VALUES
(2494, 'COUPE', 10),
(2495, 'CRAIN', 47),
(2496, 'EXCAVATOR', 47),
(2497, 'FORKLIFT', 6),
(2498, 'GRAYDER', 35),
(2499, 'HATCHBACK', 11),
(2500, 'K TYPE', 9),
(2501, 'MINI', 10),
(2502, 'MINI BUS', 28),
(2503, 'MINI SUV', 14),
(2504, 'MINI TRUCK', 16),
(2505, 'MINI VAN', 15),
(2506, 'SEDAN', 12),
(2507, 'STATIONWAGON', 13),
(2508, 'SUV', 17),
(2509, 'TRACTOR', 35),
(2510, 'TRUCK', 44),
(2511, 'VAN', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_body_style`
--

CREATE TABLE `tbl_body_style` (
  `BodyStyleID1` varchar(255) NOT NULL DEFAULT '',
  `BodyStyleID1Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avis_body_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_body_style`
--

INSERT INTO `tbl_body_style` (`BodyStyleID1`, `BodyStyleID1Name`, `avis_body_type`) VALUES
('1', 'Bus', 'MINI BUS'),
('2', 'Convertible', 'CONVERTIBLE'),
('11', 'Coupe', 'COUPE'),
('3', 'Hatchback', 'HATCHBACK'),
('4', 'Machinery', 'CRAIN, EXCAVATOR, FORKLIFT, GRAYDER, TRACTOR'),
('5', 'Mini Vehicle', 'MINI'),
('6', 'Sedan', 'SEDAN'),
('7', 'SUV', 'SUV, MINI SUV'),
('8', 'Truck', 'MINI TRUCK, TRUCK'),
('12', 'Unspecified', 'K TYPE, NA'),
('9', 'Van / Minivan', 'MINI VAN, VAN'),
('10', 'Wagon', 'STATIONWAGON');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color_type`
--

CREATE TABLE `tbl_color_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `avis_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `color_code` varchar(6) NOT NULL DEFAULT '',
  `inverse_color` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_color_type`
--

INSERT INTO `tbl_color_type` (`ID`, `Name`, `avis_color`, `color_code`, `inverse_color`) VALUES
(25, 'Beige', 'BEIGE, BEIGE II, Golden Beige', 'F5F5DC', '0a0a23'),
(26, 'Black', 'BLACK, BLACK II, EMERALD BLACK', '000000', 'ffffff'),
(27, 'Blue', 'BLUE, LIGHT BLUE', '0000FF', 'ffff00'),
(28, 'Brown', 'BROWN', 'A52A2A', '5ad5d5'),
(29, 'Burgundy', 'BURGUNDY', '900020', '6fffdf'),
(30, 'Champagne', 'CHAMPAGNE', 'F7E7CE', '081831'),
(31, 'Charcoal', 'CHARCOAL', '36454F', 'ffffff'),
(32, 'Cream', 'CREAM', 'FFFDD0', '00022f'),
(33, 'Gold', 'GOLD,', 'FFD700', '0028ff'),
(34, 'Gray', 'GRAY, GRAY PEARL', '808080', 'ffffff'),
(35, 'Green', 'GREEN, LIGHT GREEN, DARK GREEN', '008000', 'ffffff'),
(36, 'Maroon', 'WINE, WINE II', '800000', '7fffff'),
(37, 'Off White', 'OFF WHITE', 'FAEBD7', '051428'),
(38, 'Orange', 'ORANGE', 'FFA500', '005aff'),
(39, 'Pewter', 'PEWTER', '8e9294', 'ffffff'),
(40, 'Pink', 'PINK', 'FFC0CB', '003f34'),
(41, 'Red', 'RED', 'FF0000', '00ffff'),
(42, 'Silver', 'SILVER, SILVER II, WHITE/ SILVER', 'C0C0C0', '3f3f3f'),
(43, 'Tan', 'TAN', 'D2B48C', '2d4b73'),
(44, 'Teal', 'TEAL', '008080', 'ff7f7f'),
(45, 'Titanium', 'TITANIUM', '6A696F', 'ffffff'),
(46, 'Turquoise', 'TURQUOISE', '40E0D0', 'bf1f2f'),
(47, 'White', 'WHITE, WHITE II, WHITE / PINK', 'FFFFFF', '000000'),
(48, 'Yellow', 'YELLOW', 'FFFF00', '0000ff'),
(49, 'Other', 'OTHER', 'FFFFFF', '000000'),
(50, 'Purple', 'PARPLE, PURPLE', '800080', '7fff7f'),
(51, 'Dark Blue', 'DARK BLUE,', '00008B', 'ffff74'),
(52, 'Bronze', 'BRONZE', 'CD7F32', 'ffffff'),
(55, 'Pearl', 'PEARL, PEARL II, WHITE PEARL', 'eae0c8', '151f37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `id` int(11) NOT NULL,
  `site_theme` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `site_title` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_admin_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_sender_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_email_support` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `email_host` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_fax` varchar(50) NOT NULL DEFAULT '',
  `site_skype` varchar(200) NOT NULL DEFAULT '',
  `site_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `site_facebook_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_twitter_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_pinterest_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_linkedin_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_google_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `site_youtube_link` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `new_registration_email_subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `recover_your_password_email_subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_header` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_footer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pagination` int(11) NOT NULL DEFAULT 0,
  `lang` varchar(20) NOT NULL DEFAULT '',
  `site_slider` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `site_theme`, `site_title`, `site_admin_email`, `site_sender_email`, `site_email_support`, `email_host`, `site_phone`, `site_fax`, `site_skype`, `site_address`, `site_facebook_link`, `site_twitter_link`, `site_pinterest_link`, `site_linkedin_link`, `site_google_link`, `site_youtube_link`, `new_registration_email_subject`, `recover_your_password_email_subject`, `email_header`, `email_footer`, `pagination`, `lang`, `site_slider`) VALUES
(1, 'purple', 'Autocraft Japan', 'info@autocraftjapan.com', 'info@autocraftjapan.com', 'info@autocraftjapan.com', 'smtp.siteprotect.com', '+81-3-5826-7885', '+81-3-6806-0979', 'autocraftjapan.info', '', '', '', '', '', '', '', 'New Account Registration', 'Recover Forgotten Password', 'Greetings from Autocraft Japan', 'Thankyou for using our services.\r\n\r\nKind Regards', 96, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_messages`
--

CREATE TABLE `tbl_contact_messages` (
  `message_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `country` varchar(200) NOT NULL DEFAULT '',
  `telephone` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `message_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `content_id` int(11) NOT NULL,
  `route` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `criteria` varchar(50) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_h1` varchar(128) NOT NULL,
  `noindex` tinyint(4) NOT NULL DEFAULT 0,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `created_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`country_id`, `country_name`) VALUES
(1, 'Aruba'),
(2, 'Afghanistan'),
(3, 'Angola'),
(4, 'Anguilla'),
(5, 'Albania'),
(6, 'Andorra'),
(7, 'Netherlands Antilles'),
(8, 'United Arab Emirates'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'American Samoa'),
(12, 'Antarctica'),
(13, 'French Southern territories'),
(14, 'Antigua and Barbuda'),
(15, 'Australia'),
(16, 'Austria'),
(17, 'Azerbaijan'),
(18, 'Burundi'),
(19, 'Belgium'),
(20, 'Benin'),
(21, 'Burkina Faso'),
(22, 'Bangladesh'),
(23, 'Bulgaria'),
(24, 'Bahrain'),
(25, 'Bahamas'),
(26, 'Bosnia and Herzegovina'),
(27, 'Belarus'),
(28, 'Belize'),
(29, 'Bermuda'),
(30, 'Bolivia'),
(31, 'Brazil'),
(32, 'Barbados'),
(33, 'Brunei'),
(34, 'Bhutan'),
(35, 'Bouvet Island'),
(36, 'Botswana'),
(37, 'Central African Republic'),
(38, 'Canada'),
(39, 'Cocos (Keeling) Islands'),
(40, 'Switzerland'),
(41, 'Chile'),
(42, 'China'),
(43, 'CÃ´te dâ€™Ivoire'),
(44, 'Cameroon'),
(45, 'Congo, The Democratic Republic'),
(46, 'Congo'),
(47, 'Cook Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Cape Verde'),
(51, 'Costa Rica'),
(52, 'Cuba'),
(53, 'Christmas Island'),
(54, 'Cayman Islands'),
(55, 'Cyprus'),
(56, 'Czech Republic'),
(57, 'Germany'),
(58, 'Djibouti'),
(59, 'Dominica'),
(60, 'Denmark'),
(61, 'Dominican Republic'),
(62, 'Algeria'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'Eritrea'),
(66, 'Western Sahara'),
(67, 'Spain'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Finland'),
(71, 'Fiji Islands'),
(72, 'Falkland Islands'),
(73, 'France'),
(74, 'Faroe Islands'),
(75, 'Micronesia, Federated States o'),
(76, 'Gabon'),
(77, 'United Kingdom'),
(78, 'Georgia'),
(79, 'Ghana'),
(80, 'Gibraltar'),
(81, 'Guinea'),
(82, 'Guadeloupe'),
(83, 'Gambia'),
(84, 'Guinea-Bissau'),
(85, 'Equatorial Guinea'),
(86, 'Greece'),
(87, 'Grenada'),
(88, 'Greenland'),
(89, 'Guatemala'),
(90, 'French Guiana'),
(91, 'Guam'),
(92, 'Guyana'),
(93, 'Hong Kong'),
(94, 'Heard Island and McDonald Isla'),
(95, 'Honduras'),
(96, 'Croatia'),
(97, 'Haiti'),
(98, 'Hungary'),
(99, 'Indonesia'),
(100, 'India'),
(101, 'British Indian Ocean Territory'),
(102, 'Ireland'),
(103, 'Iran'),
(104, 'Iraq'),
(105, 'Iceland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Jordan'),
(110, 'Japan'),
(111, 'Kazakstan'),
(112, 'Kenya'),
(113, 'Kyrgyzstan'),
(114, 'Cambodia'),
(115, 'Kiribati'),
(116, 'Saint Kitts and Nevis'),
(117, 'South Korea'),
(118, 'Kuwait'),
(119, 'Laos'),
(120, 'Lebanon'),
(121, 'Liberia'),
(122, 'Libyan Arab Jamahiriya'),
(123, 'Saint Lucia'),
(124, 'Liechtenstein'),
(125, 'Sri Lanka'),
(126, 'Lesotho'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Latvia'),
(130, 'Macao'),
(131, 'Morocco'),
(132, 'Monaco'),
(133, 'Moldova'),
(134, 'Madagascar'),
(135, 'Maldives'),
(136, 'Mexico'),
(137, 'Marshall Islands'),
(138, 'Macedonia'),
(139, 'Mali'),
(140, 'Malta'),
(141, 'Myanmar'),
(142, 'Mongolia'),
(143, 'Northern Mariana Islands'),
(144, 'Mozambique'),
(145, 'Mauritania'),
(146, 'Montserrat'),
(147, 'Martinique'),
(148, 'Mauritius'),
(149, 'Malawi'),
(150, 'Malaysia'),
(151, 'Mayotte'),
(152, 'Namibia'),
(153, 'New Caledonia'),
(154, 'Niger'),
(155, 'Norfolk Island'),
(156, 'Nigeria'),
(157, 'Nicaragua'),
(158, 'Niue'),
(159, 'Netherlands'),
(160, 'Norway'),
(161, 'Nepal'),
(162, 'Nauru'),
(163, 'New Zealand'),
(164, 'Oman'),
(165, 'Pakistan'),
(166, 'Panama'),
(167, 'Pitcairn'),
(168, 'Peru'),
(169, 'Philippines'),
(170, 'Palau'),
(171, 'Papua New Guinea'),
(172, 'Poland'),
(173, 'Puerto Rico'),
(174, 'North Korea'),
(175, 'Portugal'),
(176, 'Paraguay'),
(177, 'Palestine'),
(178, 'French Polynesia'),
(179, 'Qatar'),
(180, 'RÃ©union'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saudi Arabia'),
(185, 'Sudan'),
(186, 'Senegal'),
(187, 'Singapore'),
(188, 'South Georgia and the South Sa'),
(189, 'Saint Helena'),
(190, 'Svalbard and Jan Mayen'),
(191, 'Solomon Islands'),
(192, 'Sierra Leone'),
(193, 'El Salvador'),
(194, 'San Marino'),
(195, 'Somalia'),
(196, 'Saint Pierre and Miquelon'),
(197, 'Sao Tome and Principe'),
(198, 'Suriname'),
(199, 'Slovakia'),
(200, 'Slovenia'),
(201, 'Sweden'),
(202, 'Swaziland'),
(203, 'Seychelles'),
(204, 'Syria'),
(205, 'Turks and Caicos Islands'),
(206, 'Chad'),
(207, 'Togo'),
(208, 'Thailand'),
(209, 'Tajikistan'),
(210, 'Tokelau'),
(211, 'Turkmenistan'),
(212, 'East Timor'),
(213, 'Tonga'),
(214, 'Trinidad and Tobago'),
(215, 'Tunisia'),
(216, 'Turkey'),
(217, 'Tuvalu'),
(218, 'Taiwan'),
(219, 'Tanzania'),
(220, 'Uganda'),
(221, 'Ukraine'),
(222, 'United States Minor Outlying I'),
(223, 'Uruguay'),
(224, 'United States'),
(225, 'Uzbekistan'),
(226, 'Holy See (Vatican City State)'),
(227, 'Saint Vincent and the Grenadin'),
(228, 'Venezuela'),
(229, 'Virgin Islands, British'),
(230, 'Virgin Islands, U.S.'),
(231, 'Vietnam'),
(232, 'Vanuatu'),
(233, 'Wallis and Futuna'),
(234, 'Samoa'),
(235, 'Yemen'),
(236, 'Yugoslavia'),
(237, 'South Africa'),
(238, 'Zambia'),
(239, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_freight`
--

CREATE TABLE `tbl_custom_freight` (
  `custom_freight_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `min_m3` double NOT NULL,
  `max_m3` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_custom_freight`
--

INSERT INTO `tbl_custom_freight` (`custom_freight_id`, `country`, `amount`, `min_m3`, `max_m3`) VALUES
(117, 'Chile', 550, 0, 9.99),
(118, 'Chile', 600, 10, 10.99),
(119, 'Chile', 650, 11, 11.99),
(120, 'Chile', 700, 12, 12.99),
(121, 'Chile', 750, 13, 13.99),
(122, 'Chile', 780, 14, 14.99),
(123, 'Chile', 850, 15, 15.99),
(124, 'Chile', 950, 16, 16.99),
(125, 'Chile', 1050, 17, 17.99),
(126, 'Chile', 1150, 18, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inquiries`
--

CREATE TABLE `tbl_inquiries` (
  `inquiry_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `veh_id` int(11) NOT NULL DEFAULT 0,
  `priority` varchar(20) NOT NULL DEFAULT '',
  `comment` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT '',
  `seen_by` mediumtext NOT NULL,
  `journal` mediumtext NOT NULL,
  `port` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `log_id` int(11) NOT NULL,
  `ip_address` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `params` varchar(255) NOT NULL DEFAULT '',
  `access_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `session_table_id` int(11) NOT NULL,
  `session_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_code` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `session_started_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `sub_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(64) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `rec_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `testimonial_id` int(11) NOT NULL,
  `testimonial_desc` text NOT NULL,
  `testimonial_by` varchar(50) NOT NULL DEFAULT '',
  `testimonial_image` varchar(200) NOT NULL,
  `testimonial_country` varchar(100) NOT NULL,
  `testimonial_visibility` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`testimonial_id`, `testimonial_desc`, `testimonial_by`, `testimonial_image`, `testimonial_country`, `testimonial_visibility`) VALUES
(30, 'Dealing with Lawan and very happy with all the vehicle purchased from him. Awesome services and timely shipment.', 'Mongkut', '', '', 'Show'),
(31, 'Awesome Services, Quality Units and Proactive approach is really admiring me to do business with Autocraft QLD.', 'Anong', '', '', 'Show'),
(32, 'Thanks man Qamar for the quality units. Highly appreciate your services and your units. Better then before. Keep providing me best containers.', 'Kasem', '', '', 'Show'),
(33, 'Kharadi is the best agent. Thank you for providing quality units just like you were providing in your previous company in a better price brother. Thumbs up for Autocraft QLD.', 'Malee', '', '', 'Show'),
(34, 'Thumbs up on your shipment. Switching my business now to Autocraft QLD. Malai is my agent from past 4 years and I am very happy that he moved to this company as services are remarkbly well as compare to his last company.', 'Anurak', '', '', 'Show'),
(35, 'Very good company, Professional people. Always getting my vehicles on time . Experienced agent. Duangkamol is my agent', 'Chaiya', '', '', 'Show'),
(36, 'Very pleasant Easy, The way car buying should be. Somehow more people need to find out about you. Other dealers can learn a lot from you.', 'Niran', '', '', 'Show'),
(37, 'It was a pleasure doing business with your company and I plan on buying another vehicle with you in the future. Again, thank you.', 'Ananada', '', '', 'Show'),
(38, 'I wish you continued success in the future and will be highly recommending you to anyone that I know that is looking to purchase a Vehicle.', 'Anchali', '', '', 'Show'),
(39, 'After trying unsuccessfully to locate a good used car, I heard about Autocraft QLD through a good friend, he was very pleased with his personalized service and recommended it to me. Autocraft QLD quickly located the perfect car for my needs and at a great price.', 'Anuman', '', '', 'Show'),
(40, 'Excellent Seller, Great Communicator, I love my car, Autocraft QLD is a great place to buy, Highly Recommended.', 'Nan', '', '', 'Show'),
(41, 'I would like to congratulate Autocraft QLD for the superb service & I will be coming back to you for my next vehicle!', 'Asnee', '', '', 'Show'),
(42, 'Whenever I tell anyone what I paid for my truck, they are amazed. Thank you Autocraft QLD.', 'Achara', '', '', 'Show'),
(44, 'Thank you so much for your good work, I received the car in good condition as I ordered it. The car is nice and so many people admire it much. Now we can trust Autocraft QLD COMP you are a wonderful people. Hopping to do more with you. Nice time and God bless you much.', 'Ambhom', '', '', 'Show'),
(45, 'This is one of your units I received. \"EXTREMELY GOOD CONDITION, VERY SERVICEABLE!\" I liked the car and I LOVE Autocraft QLD !!!! Be Blessed!', 'Channarong', '', '', 'Show'),
(46, 'Dear Sir, As I informed you last week I got the car on Thursday the 5th . I drove the 400km and have had a look at over the weekend. I am sure I will refer potential customers to you in future as I have already had a few friends enquiring on how I went about it. I am in photograph with my son.  ', 'Kulap', '', '', 'Show'),
(47, 'This to confirm that i received this unit in good condition, I drove it personally approx. 500kms but without any problem, we recommend Autocraft QLD, for any person who admires to drive a Japanese car- Autocraft QLD is the place!!! As usual be blessed.', 'Pravat', '', '', 'Show'),
(48, 'This is a wonderful company where you are assured the car will be delivered promptly after payment. Bravo!!!!!!!!!! I have bought several cars for QLD market from Autocraft QLD and the cars are clean, reliable and the price better than that of giants', 'Ritthirong', '', '', 'Show'),
(49, 'I have recieved my car and driven it 1200km. Great car very economical yet fast. And quite clean! Thank you for the unit.', 'Ratanaporn', '', '', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usertype` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(128) NOT NULL DEFAULT '',
  `first_name` varchar(128) NOT NULL DEFAULT '',
  `last_name` varchar(128) NOT NULL DEFAULT '',
  `comp_name` varchar(128) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `city` varchar(32) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL DEFAULT 0,
  `country` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `designation` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `fax` varchar(16) NOT NULL DEFAULT '',
  `mobile` varchar(16) NOT NULL DEFAULT '',
  `skype` varchar(24) NOT NULL DEFAULT '',
  `website` varchar(64) NOT NULL DEFAULT '',
  `monthly_volume` varchar(8) NOT NULL DEFAULT '',
  `destination_port` varchar(32) NOT NULL DEFAULT '',
  `import_experience` varchar(16) NOT NULL DEFAULT '',
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_code` varchar(255) NOT NULL DEFAULT '',
  `created_on` date NOT NULL DEFAULT '1970-01-01',
  `rz_id` int(11) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `port` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `usertype`, `status`, `full_name`, `first_name`, `last_name`, `comp_name`, `address`, `city`, `country_id`, `country`, `email`, `designation`, `phone`, `fax`, `mobile`, `skype`, `website`, `monthly_volume`, `destination_port`, `import_experience`, `verified`, `verification_code`, `created_on`, `rz_id`, `last_login`, `port`) VALUES
(957, 'tech-rz', '$2y$10$WySB2uO1t4UMh3eN3GWV1eC/zDprRjMwZjj4QCRWTq1QrPg/2JPb2', 'ADMIN', 'VERIFIED', 'RZ TECHNOLOGIES', '', '', '', '', '', 0, '', 'admin@sendajapan.com', 'Project Manager', '0081 90 1733 424', '', '', '', '', '', '', '', 0, '', '2010-04-22', 0, '2020-06-17 07:08:26', 'Mombasa'),
(958, 'greenway', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ADMIN', 'VERIFIED', 'GREENWAY', '', '', '', '', '', 0, '', 'info@greenwaymotors.ae', 'Owner', '', '', '', '', '', '', '', '', 0, '', '2010-04-22', 0, '2020-06-17 07:08:26', 'DUBAI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicles`
--

CREATE TABLE `tbl_vehicles` (
  `veh_id` int(11) NOT NULL,
  `stock_no` varchar(32) DEFAULT '',
  `model_code` varchar(32) DEFAULT '',
  `chassis` varchar(64) DEFAULT '',
  `engine_no` varchar(64) DEFAULT '',
  `engine_type` varchar(64) DEFAULT '',
  `body_type` varchar(32) DEFAULT '',
  `body_type_II` varchar(128) DEFAULT '',
  `make` varchar(128) DEFAULT '',
  `model` varchar(128) DEFAULT '',
  `fuel` varchar(16) DEFAULT '',
  `traction` varchar(8) DEFAULT '',
  `drive` varchar(8) DEFAULT '',
  `veh_condition` varchar(10) DEFAULT 'Used',
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT 0,
  `doors` varchar(16) DEFAULT NULL,
  `seats` varchar(24) DEFAULT '0',
  `cc` int(11) DEFAULT 0,
  `mileage` int(11) DEFAULT 0,
  `transmission` varchar(8) DEFAULT '',
  `gross_weight` varchar(16) DEFAULT NULL,
  `net_weight` varchar(16) DEFAULT NULL,
  `length` decimal(12,3) DEFAULT 0.000,
  `width` decimal(12,3) DEFAULT 0.000,
  `height` decimal(12,3) DEFAULT 0.000,
  `m3` double(12,3) DEFAULT 0.000,
  `model_grade` varchar(32) DEFAULT '',
  `exterior_color` varchar(32) DEFAULT '',
  `interior_color` varchar(32) DEFAULT '',
  `location` varchar(128) DEFAULT '',
  `stock_for` varchar(128) DEFAULT '',
  `remarks` text DEFAULT NULL,
  `avis_price` double DEFAULT 0,
  `fob_price` int(11) DEFAULT 0,
  `price_type` varchar(10) DEFAULT '',
  `status` varchar(16) DEFAULT '',
  `rare_vehicle` tinyint(1) DEFAULT 0,
  `qty` int(11) DEFAULT NULL,
  `is_special` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_website` tinyint(1) DEFAULT 0,
  `youtube_video_link` varchar(200) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) DEFAULT 0,
  `inquiries` int(11) DEFAULT 0,
  `cust_id` int(11) DEFAULT 0,
  `cust_name` varchar(128) DEFAULT '',
  `parent_id` int(11) DEFAULT 0,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `veh_origin` int(11) DEFAULT 1,
  `clearance_sale` tinyint(1) DEFAULT 0,
  `clearance_price` int(11) DEFAULT NULL,
  `dealer_price` int(11) DEFAULT NULL,
  `price_up` int(11) DEFAULT NULL,
  `video_file` varchar(100) DEFAULT NULL,
  `catalog_file` int(11) DEFAULT NULL,
  `interior_360` varchar(128) DEFAULT NULL,
  `exterior_360` int(11) DEFAULT NULL,
  `images_fixed` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_vehicles`
--

INSERT INTO `tbl_vehicles` (`veh_id`, `stock_no`, `model_code`, `chassis`, `engine_no`, `engine_type`, `body_type`, `body_type_II`, `make`, `model`, `fuel`, `traction`, `drive`, `veh_condition`, `year`, `month`, `doors`, `seats`, `cc`, `mileage`, `transmission`, `gross_weight`, `net_weight`, `length`, `width`, `height`, `m3`, `model_grade`, `exterior_color`, `interior_color`, `location`, `stock_for`, `remarks`, `avis_price`, `fob_price`, `price_type`, `status`, `rare_vehicle`, `qty`, `is_special`, `description`, `display_website`, `youtube_video_link`, `featured_image`, `added_on`, `added_by`, `updated_on`, `views`, `inquiries`, `cust_id`, `cust_name`, `parent_id`, `meta_keywords`, `meta_description`, `veh_origin`, `clearance_sale`, `clearance_price`, `dealer_price`, `price_up`, `video_file`, `catalog_file`, `interior_360`, `exterior_360`, `images_fixed`, `dealer_id`) VALUES
(10022, 'SA-10022', '', 'WDDBF0BB7EJ176847-', '', '', NULL, '', 'HONDA', 'FIT', 'Gasoline', '4WD', NULL, 'Used', 2014, 0, '4', '0', 1796, 0, 'CATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009620_18273465_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10021, 'SA-10021', '', 'KNAJE55537K313624-', '', '', NULL, '', 'TOYOTA', 'PRIUS', 'Diesel', '2WD', NULL, 'Used', 2007, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'B BLACK', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751008654_18389792_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10020, 'SA-10020', '', '1C4RJFJM0FC928195-', '', '', 'SUV', '', 'HONDA', 'ODYSSEY', 'Gasoline', '4WD', NULL, 'Used', 2015, 0, '5', '0', 3000, 177238, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009688_18262195_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10019, 'SA-10019', '', 'YV1AS82K0C1151420-', '', '', 'SUV', '', 'HONDA', 'AIRWAVE', 'Gasoline', '4WD', NULL, 'Used', 2012, 0, '4', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '019', 'RED', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009730_18189283_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10015, 'SA-10015', '', 'KNAPC813BFK703210-', '', '', NULL, '', 'NISSAN', 'NOTE', 'Diesel', '4WD', NULL, 'Used', 2015, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009124_18331144_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10016, 'SA-10016', '', 'KMHJ281ABHU210970-', '', '', 'SUV', '', 'TOYOTA', 'RAV4', 'Diesel', '4WD', NULL, 'Used', 2017, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'BLUE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751008887_18286521_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10017, 'SA-10017', '', 'KNAPE813BEK602726-', '', '', 'SUV', '', 'TOYOTA', 'VOXY', 'Diesel', '4WD', NULL, 'Used', 2014, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'BLACK', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751008812_18363635_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10008, 'SA-10008', '', 'KNAPC813BBK106227-', '', '', NULL, '', 'NISSAN', 'VANETTE', 'Gasoline', '4WD', NULL, 'Used', 2011, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009303_18247642_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10009, 'SA-10009', '', 'KNAPC813BCK362098-', '', '', NULL, '', 'NISSAN', 'NISSAN', 'Gasoline', '2WD', NULL, 'Used', 2012, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009223_18233317_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10010, 'SA-10010', '', 'WBA3D3104DF250097-', '', '', NULL, '', 'MITSUBISHI', 'DELICA', 'Diesel', '2WD', NULL, 'Used', 2011, 0, '4', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751010136_17962247_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10011, 'SA-10011', '', 'KMHJT81VBBU103037-', '', '', NULL, '', 'MITSUBISHI', 'DELICA', 'Diesel', '4WD', NULL, 'Used', 2011, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'SILVER', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751010082_18331294_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10012, 'SA-10012', '', 'KNAPM813BHK189061-', '', '', 'SUV', '', 'MAZDA', 'ATENZA', 'Gasoline', '4WD', NULL, 'Used', 2017, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'RED', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009969_18153835_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10018, 'SA-10018', '', 'KNAPC813BEK644251-', '', '', NULL, '', 'TOYOTA', 'AURIS', 'Diesel', '2WD', NULL, 'Used', 2014, 0, '5', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751008720_18378425_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10013, 'SA-10013', '', 'KMHD641UGJU713096-', '', '', NULL, '', 'NISSAN', 'SERENA', 'Gasoline', '4WD', NULL, 'Used', 2018, 0, '4', '0', 1582, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'RED', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009162_18319887_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10014, 'SA-10014', '', 'KMFZSZ7KBLU749845-', '', '', 'SUV', '', 'MAZDA', 'AXELA SPORT', 'Gasoline', '4WD', NULL, 'Used', 2020, 0, '2', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'RED', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751009909_18233261_carp_l_3.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10006, 'SA-10006', '', 'KNAPC813BCK373826-', '', '', NULL, '', 'LEXUS', '', 'Gasoline', '4WD', NULL, 'Used', 2012, 0, '0', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'WHITE', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751010326_18334883_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10007, 'SA-10007', '', 'KNAMB81ABFS012931-', '', '', NULL, '', 'LEXUS', '', NULL, '4WD', NULL, 'Used', 2014, 0, '0', '0', 0, 0, 'ATM', '', '', 0.000, 0.000, NULL, 0.000, '', 'BLACK', NULL, '', '', '', 0, 0, '', 'AVAILABLE', 0, NULL, NULL, '', 1, '', '1751010273_18378396_carp_l_1.jpg', '2025-02-28 12:22:26', NULL, '2025-02-28 07:22:26', 0, 0, 0, '', 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_make`
--

CREATE TABLE `tbl_vehicle_make` (
  `make_id` int(11) NOT NULL,
  `make_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `updated_on` datetime NOT NULL DEFAULT current_timestamp(),
  `japanese_make` int(1) NOT NULL,
  `korean_make` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vehicle_make`
--

INSERT INTO `tbl_vehicle_make` (`make_id`, `make_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `japanese_make`, `korean_make`) VALUES
(1, 'TOYOTA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(2, 'NISSAN', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(3, 'MITSUBISHI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(4, 'MAZDA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(5, 'HONDA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(6, 'ISUZU', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(7, 'DAIHATSU', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(8, 'SUBARU', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(9, 'SUZUKI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(10, 'HINO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(11, 'AUDI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(12, 'MERCEDES BENZ', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(13, 'BMW', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(14, 'OPEL', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(15, 'ROVER', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(16, 'MG', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(17, 'VOLKSWAGEN', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(18, 'YANMAR', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(19, 'GMC', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(20, 'VOLVO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(21, 'AUSTIN', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(22, 'RANGE ROVER', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(23, 'LAND ROVER', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(24, 'YAMAHA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(25, 'CHRYSLER', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(26, 'RENAULT', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(27, 'PONTIAC', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(28, 'PEUGEOT', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(29, 'FIAT', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(30, 'HYUNDAI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(31, 'SAAB', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(32, 'CITROEN', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(33, 'KUBOTA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(34, 'LEIPAI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(35, 'KOBELCO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(36, 'JEEP', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(37, 'CADILLAC', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(38, 'NISSAN DIESEL', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(39, 'MITSUBISHI FUSO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(40, 'FORD', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(41, 'ALFA ROMEO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(42, 'PORSCHE', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(43, 'JAGUAR', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(44, 'FERRARI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(45, 'SMART', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(46, 'BENTLEY', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(47, 'LANCIA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(48, 'MITSUOKA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(49, 'MASERATI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(50, 'KIA', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(51, 'DAEWOO', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 0, 1),
(52, 'HITACHI', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(53, 'KOMATSU', 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00', 1, 0),
(55, 'NPK', 341, '2009-10-06 13:12:02', 0, '0000-00-00 00:00:00', 1, 0),
(56, 'ROLLS ROYCE', 308, '2010-02-05 09:32:53', 0, '0000-00-00 00:00:00', 1, 0),
(66, 'TCM', 1, '2019-11-18 22:39:12', 0, '0000-00-00 00:00:00', 1, 0),
(65, 'UD', 1, '2019-11-18 18:19:46', 0, '0000-00-00 00:00:00', 1, 0),
(63, 'Ssangyong', 547, '2019-04-12 15:08:44', 0, '0000-00-00 00:00:00', 0, 1),
(64, 'CAT', 1, '2019-11-18 18:08:49', 0, '0000-00-00 00:00:00', 1, 0),
(67, 'LEXUS', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_model`
--

CREATE TABLE `tbl_vehicle_model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `make_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vehicle_model`
--

INSERT INTO `tbl_vehicle_model` (`model_id`, `model_name`, `make_id`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 'CROWN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'TOWNACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'CIVILIAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'ELF', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'MARINO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'PAJERO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'NISSAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'ARISTO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'TOYOACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'CORSA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'TERRANO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'HIACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'MITSUBISHI', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 18:00:37'),
(14, 'DYNA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'CANTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 'CREW', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 'FORWARD', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 'RANGER', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 'LANDCRUISER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:56:31'),
(21, 'SPRINTER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(22, '300SD', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 'CAMRY', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 'VISTA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 'ESCUDO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 'CARIB', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 'CARINA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 'MARK II', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:59:14'),
(29, 'SUNNY', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 'CERES', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 'COROLLA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 'SPRINTER CARIB', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 'CALDINA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 'RVR', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 'MARK-II', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:59:35'),
(36, 'HILUX SURF', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(37, 'SERENA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(38, 'MU', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(39, 'DELICA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 'LUCIDA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(41, 'MISTRAL', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(42, 'STARLET', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(43, 'RAV-4', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:11:56'),
(44, 'CURREN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(45, 'TERIOS', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(46, 'PARKWAY', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(47, 'ESTIMA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(48, 'CORONA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(49, 'PULSAR', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(50, 'MARCH', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(51, 'GALANT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 'INSPIRE', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(53, 'IMPREZZA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:48:41'),
(54, 'HILUX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(55, 'COASTER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(56, 'DISCOVERY', 23, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(57, 'GTO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(58, 'RODEO', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(59, 'TERCEL', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(60, 'CHARIOT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(61, 'CHEROKEE', 25, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 'BIGHORN', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 'CIVIC', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(64, 'PAJERO JR.', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:59:17'),
(65, 'PRIMERA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(66, 'CHASER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(67, 'E320', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(68, 'CRESTA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(69, 'CHALLENGER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(70, 'C220', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(71, 'MINI PAJERO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(72, 'ACCORD', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(73, 'BLUEBIRD', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(74, 'PRESEA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:10:04'),
(75, 'PROCEED', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(76, 'AD VAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(77, 'PLATZ', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(78, 'LANDCRUISER PRADO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:56:54'),
(79, 'SAFARI', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(80, 'STRADA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(81, 'ROSA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(82, 'AD', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(83, 'CORONA PREMIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(84, 'VOLKSWAGEN', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(85, 'LITEACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(86, 'CIVIC FERIO', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(87, 'DUET', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(88, 'FAMILIA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(89, 'VITZ', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(90, 'LIBERO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(91, 'LEVANTE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(92, 'PRAIRIE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(93, 'YRV', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(94, 'EXPERT', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(95, 'GRADE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:32:53'),
(96, 'BONGO', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(97, 'LANCER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(98, 'LEVIN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(99, 'MEGANE', 26, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(100, 'IPSUM', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(101, 'PARTNER', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(102, 'SPACIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(103, 'PAJERO JR', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(104, 'GRANVIA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(105, 'PYZAR', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(106, 'MARK - II', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:58:46'),
(107, 'LEGNUM', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(108, 'ATLAS', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(109, 'FH12', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(110, 'TORNEO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:21:03'),
(111, 'CHARIOT GRANDIS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(112, 'CYNOS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(113, 'TWINGO', 26, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(114, 'PICKUP', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(115, 'PAJERO IO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(116, 'SKYLINE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(117, 'FRIENDEE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(118, 'TRUENO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(119, 'CR-V', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(120, 'EMINA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(121, 'HARRIER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(122, 'SOARER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(123, 'LOGO', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(124, 'GALLANT', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:32:25'),
(125, '500SL', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(126, 'WISH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(127, 'ASKA', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(128, 'UD', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(129, 'MIRAGE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(130, 'FUNCARGO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:31:55'),
(131, 'MARK -II', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:59:03'),
(132, 'WINGROAD', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(133, 'CULTUS', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(134, 'INTEGRA', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(135, 'CAPELLA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(136, 'DION', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(137, 'TINO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(138, 'MPV', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(139, 'ESTIMA LUCIDA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(140, 'FAMILIA VAN', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(141, 'PRESAGE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(142, 'GEMINI', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(143, 'DEMIO', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(144, 'GAIA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(145, 'MR-S', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(146, 'FARGO', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(147, 'PREMIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(148, 'BASARA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:18:14'),
(149, 'MITSUBISHI FIGHTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(150, 'GRAND CHEROKEE', 19, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(151, 'IMPREZA', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(152, 'PAJERO MINI', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(153, 'TERIOS KID', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(154, 'FUN CARGO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(155, 'CHARADE', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(156, 'CONDOR', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(157, 'MIGNON', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(158, 'NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(159, 'COLT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(160, 'FIGHTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(161, 'ALPHARD', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(162, 'MARK-X', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 18:00:00'),
(163, 'DOMANI', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(164, 'ASCOT', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(165, 'CRSCENT', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:46:26'),
(166, 'TRUCK', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(167, 'LAUREL', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(168, 'STORIA', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(169, 'LANDRCUISER PRADO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:57:23'),
(170, 'CAMI', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(171, 'CALIDNA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:29:02'),
(172, 'CAPA', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(173, 'AVENIR', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(174, 'S GRADE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:13:12'),
(175, 'BONGO FRIENDEE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(176, 'OPA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(177, 'RAUM', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(178, 'DINGO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(179, 'LANCER SEDIA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(180, 'ROCKY', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(181, 'NADIA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(182, 'IST', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(183, 'FIELDER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(184, 'CALDINA WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(185, 'ORTHIA', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(186, 'FORESTER', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(187, 'ODYSSEY', 5, 1, '2009-10-03 00:00:00', 90, '2010-01-26 16:27:43'),
(188, 'GRANDIS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(189, 'MURANO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(190, 'ISIS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(191, 'VOXY', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(192, 'LITEACE NOAH', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:57:54'),
(193, 'DIAMANTE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(194, 'LIBERTY', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(195, 'PRADO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(196, 'S80', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(197, 'VITA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(198, 'SPRINTER MARINO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(199, 'VENTO', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(200, 'TOWNACE TRUCK', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(201, 'X TRIAL', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:23:07'),
(202, 'C200', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(203, 'TITAN', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(204, 'KLUGGER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:55:22'),
(205, 'C280', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(206, 'POLO', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(207, 'VIENTO', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(208, 'ALLION', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(209, 'WINDOM', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(210, 'A160', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(211, 'X TRAIL', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:22:55'),
(212, 'STREAM', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(213, 'A4', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(214, 'CELICA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(215, 'SUPRA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(216, 'CAMRY GRACIA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:30:36'),
(217, 'HACE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:46:13'),
(218, 'DUMP', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(219, 'PROFIAT', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:10:50'),
(220, 'LANTIS', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(221, 'ASTRA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(222, 'CUBE', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(223, 'LANCER CEDIA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(224, 'WIDE LONG', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(225, 'CABTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(226, 'HINO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:48:17'),
(227, 'DELTA', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(228, 'SUCCEED WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(229, 'PRIUS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(230, 'CIVC', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:38:50'),
(231, 'CARINA ED', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:31:42'),
(232, 'SWIFT', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(233, 'GRAND AM', 27, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(234, 'FIT', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(235, 'VECTRA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(236, '318iS', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(237, 'CHALLANGER', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:33:45'),
(238, '528i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(239, 'SPECTOR', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(240, 'FTO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(241, 'LITE ACE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:57:38'),
(242, 'HIACE TRUCK', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(243, 'ALTEZZA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(244, 'DIESEL', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:47:01'),
(245, 'BIG THUMB', 2, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:25:41'),
(246, 'EMERALD', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(247, 'REGIUS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(248, 'RAINBOW', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(249, '306', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(250, 'BORA', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(251, 'ALION', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:12:42'),
(252, 'RVER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(253, 'PATNER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:59:37'),
(254, 'CHALLENGETR', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:34:10'),
(255, 'ELGRAND', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(256, 'LEGACY', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(257, 'PROCEED LEVANTE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(258, 'COROLLA FIELDER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(259, '318i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(260, 'CHARIOS GRANDIS', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:34:37'),
(261, 'PROBOX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(262, 'PRELUDE', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(263, '325i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(264, 'BIGHRON', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:18:49'),
(265, 'CORONA EXIV', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(266, 'PUNTO', 29, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(267, 'LUTECIA', 26, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(268, 'CEFIRO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(269, 'CARAVAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(270, 'LEGEND', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(271, 'QUEST', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(272, 'IPSUM GAIA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(273, 'WIZARD', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(274, 'COROLLA V', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:45:14'),
(275, 'ADV', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:14:03'),
(276, 'AIESPA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(277, 'STREEM', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:19:19'),
(278, 'CEDIA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(279, 'ESKUDO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:49:41'),
(280, 'TERANO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(281, 'GELANT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(282, 'JUSTON', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(283, 'FORWORD', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:31:04'),
(284, 'MINION', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(285, 'CRV', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(286, 'CHARRIOT GRANDIS', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:37:50'),
(287, 'CALDINA V', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:28:16'),
(288, 'COROLLA W', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:45:26'),
(289, 'LIBERO V', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(290, 'CEDIA W', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:33:12'),
(291, 'CALDINA W', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:28:31'),
(292, 'LIBERO W', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(293, 'FASTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(294, 'GIGA', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(295, 'AD??&#65533;??&#65533;??&#65533;', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:13:47'),
(296, 'CHARRIOT', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:37:18'),
(297, 'COROLLA VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(298, 'JIMNY', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(299, '320i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(300, 'OMEGA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(301, 'XENTIA', 32, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(302, 'WAGON R', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(303, '320', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(304, '405', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(305, 'IS30', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(306, 'BD2F', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(307, 'B27', 18, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(308, 'ZL-1501DT', 33, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(309, 'TYGER', 34, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(310, 'ELANTRA', 30, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(311, '328i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(312, 'STAGEA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(313, 'KE-2D', 18, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(314, 'TOWNACE NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(315, 'LARGO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(316, 'HIACE REGIUS', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:46:48'),
(317, 'DUTRO', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(318, '40SR', 35, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(319, 'EXCAVATOR', 18, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(320, 'BE18 (2 DR)', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(321, 'EK', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(322, 'CALLIBRA', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(323, 'SM-X', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(324, 'TRACTOR', 33, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(325, 'LANDCRUISER CYGNUS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(326, 'CELSIOR', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(327, 'ALTO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(328, 'ESTIMA EMINA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(329, 'ECLIPSE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(330, '318s', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(331, 'C180', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(332, '525 HI-LINE', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(333, '525i', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(334, 'HUMMER', 19, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(335, '2.0E', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(336, 'ASTRA CLUB', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(337, 'S40', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(338, 'FORKLIFT', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(339, 'MINI', 21, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(340, 'FAIRLADY', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(341, 'COUP', 21, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(342, 'FAIRLADY Z', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(343, 'CIMA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(344, 'RNESSA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:12:48'),
(345, 'GXE', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(346, '300CE', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(347, 'REGIOUS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(348, 'STEPWAGON', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(349, 'PASSAT', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(350, 'VENTO GLI', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(351, 'CORADO', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(352, 'OMEGA CD', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(353, '20E', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(354, '2.6E', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(355, 'SUNNY PICKUP', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(356, 'TOWN', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:21:17'),
(357, 'MASTER ACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(358, 'PRO BOX', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:10:30'),
(359, 'PAJER JR', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:58:47'),
(360, 'MRA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(361, 'MIRA', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(362, 'FREELANDER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:31:43'),
(363, '75', 15, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(364, 'ML320', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(365, '323', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(366, '318', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(367, 'BEETLE', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(368, 'LUCINO(AWD)', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(369, 'R-NESSA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(370, 'LAND CRUISER PRADO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(371, 'RVR(AWD)', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(372, 'MARCH(AWD)', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(373, 'SERENA(AWD)', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(374, 'CR-V(AWD)', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(375, 'COROLLA(AWD)', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:45:42'),
(376, 'LAND CRUISER VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(377, 'CANTER TRUCK', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(378, 'EXCEED', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(379, 'ATV110', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(380, 'HIACES REGIUS', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:47:27'),
(381, 'CLUB', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(382, 'HV-R', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(383, 'GLORIA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(384, 'LIFE', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(385, 'MARK-||', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 18:00:12'),
(386, 'PAJERO GR', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(387, 'LAND CRUSIER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:56:01'),
(388, 'BOX', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(389, 'LANDCRUISIER PRADO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:57:10'),
(390, 'CARMY', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(391, 'COROLLA LEVIN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(392, 'RAV4-L', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(393, 'HIACE SURF', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(394, 'COROLLA WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(395, 'HIACE VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(396, 'TOWN COURSE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(397, 'CORANA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:43:27'),
(398, 'SPRINTER TRUENO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(399, 'COSTER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(400, 'BENZ', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(401, 'CATER', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:32:52'),
(402, 'LAND CRUSIER PRADO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:56:16'),
(403, 'ALTEZA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:07:11'),
(404, 'PULASR', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:11:30'),
(405, 'AVENSIA', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(406, 'COOPER S', 21, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(407, 'Estima T', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(408, 'Estima L', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(409, 'SILVER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:19:05'),
(410, 'LIBEROCARGO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(411, '323I', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(412, 'CHASIER', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:38:11'),
(413, 'GRAND HIACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(414, 'PROFIA', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(415, 'SAMBAR', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(416, 'VAMOS', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(417, 'APRIL', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(418, 'MAY', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(419, 'A.4', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(420, 'SABER', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(421, 'HOMY GRAND VIA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(422, 'FAMILIA S WAGON', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(423, 'EXCIVE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(424, 'YANMAR', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(425, 'CARRIED', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(426, 'PULSAL', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:11:43'),
(427, 'COROLLA PREMIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(428, 'SUCCEED', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(429, 'MAJESTA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(430, '560SEL', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(431, 'MX', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(432, 'COROLL', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:44:02'),
(433, 'GOLF', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(434, 'LUCINO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(435, 'DELICA SPACE GE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(436, 'FUSO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(437, 'CORONA PERMIO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:45:56'),
(438, 'DIGA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(439, 'CAMY', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(440, 'CALDIAN VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(441, 'BUNET VAN', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:27:22'),
(442, 'HIJET VAN', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(443, 'AISISU', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(444, 'F70B', 25, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(445, 'ERIO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(446, 'DATSUN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(447, 'CEDRIC', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(448, 'VANETTE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(449, 'CONTAINER BODY', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(450, 'HIACE REGUIS', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:47:00'),
(451, 'CAMPELLA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(452, 'TERCEL REGULAS', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(453, 'SUCCED', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:19:44'),
(454, 'DEIMO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:46:42'),
(455, 'PREMACY', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(456, 'RENESA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(457, 'TERRANO REGULUS', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(458, 'RX-8', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(459, 'G.CHEROKEE', 36, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(460, 'MINICAB VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(461, 'PROGRE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:11:04'),
(462, 'S320', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(463, 'CRISER', 36, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(464, 'OUTLANDER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(465, 'ESTMA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(466, 'COPEN', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(467, 'MOBILIO', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(468, 'MINICA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(469, 'LIBERO VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(470, 'CHARRIOT GRANDI', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:37:37'),
(471, 'SUNNY TRUCK', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(472, 'ROADSTAR', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(473, 'PRESSAGE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:10:17'),
(474, 'EVERY LANDEY', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(475, 'ALTEEZA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:05:34'),
(476, 'LAND ROVER', 36, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(477, 'EX120', 52, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(478, 'ATRAC', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(479, 'SUPER GRADE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(480, 'LITEACE WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(481, 'CULTUS CRESCENT', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(482, 'AVENIER', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(483, 'FUSO FIGHTER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(484, 'ZAFIRA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(485, 'AVALON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(486, 'AIRWAVE', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(487, '2535', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(488, 'LAND CRUISER PR', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(489, 'HIACE WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(490, 'COROLLA SPACO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:45:00'),
(491, 'HIACE  REGIUS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(492, 'DAIMANTE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(493, 'PULASAR', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:11:16'),
(494, 'SANBAR', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(495, 'CARRY', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(496, 'PROGRES', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(497, 'EVERY', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(498, 'DOMINGO', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(499, 'RAV4', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(500, 'EVERY VAN', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(501, 'MOVE', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(502, 'BOON', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(503, 'CARRY TRUCK', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(504, 'CRANE', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(505, 'EVERYLANDY', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(506, '206', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(507, 'WING', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(508, '406', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(509, 'BULLDOZER', 53, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(510, 'ATRAI', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(511, 'SHARAN', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(512, 'CALDINA Z', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:28:48'),
(513, 'CALTUS CRESCENT', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(514, 'AUDI', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(515, 'OPEL', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(516, 'CHAROT', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:36:55'),
(517, 'X -TRAIL', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:22:39'),
(518, 'A6 2.4', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(519, 'OPEL VECTRA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(520, 'ASTRA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(521, 'COROLLA SPACIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(522, 'M.BENZ', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(523, 'CARVAN', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:32:29'),
(524, 'DULPHIN', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:48:57'),
(525, 'PULSAR SERIES', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(526, 'BMW', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(527, 'REGIUS ACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(528, 'DUTSAN', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:49:20'),
(529, 'DYNA VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(530, 'MIXER', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(531, 'LORRY', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(532, 'CRAIN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(533, 'KLUGER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:55:08'),
(534, 'LITEACE TRUCK', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(535, 'LAND CRUISER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(536, 'ROZA', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(537, 'MINICA VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(538, 'TERSAL', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(539, 'CRINA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:46:13'),
(540, 'RANGER-2', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(541, 'DELTA TRUCK', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(542, 'BONGO VAN', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(543, 'INTERGA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:49:03'),
(544, 'X-TRAIL', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(545, 'REGIUS VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(546, 'PRIMERA CAMINO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(547, 'VOLVO', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(548, 'JASTON II', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(549, 'INSPAIR', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:48:52'),
(550, 'FAMILIA WAGON', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(551, 'REGIUSACE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:12:33'),
(552, 'VW BORA', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(553, 'DUTSUN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(554, 'ROVER', 23, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(555, 'LANCER VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(556, 'TAITAN', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(557, 'HIACE COMMUTER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(558, 'DELICA S/ GEAR', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(559, 'VOLVO TRUCK', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(560, 'HINO TRUCK', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(561, 'PAYZAR', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(562, 'CARINA-ED', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:31:58'),
(563, 'SAMBA VAN', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(564, 'GARDE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:32:39'),
(565, 'BASSARA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(566, 'ESTIMA T/L', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(567, 'AIRTRACK', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:10:29'),
(568, 'BANET VAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(569, 'SYOVEL LODER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(570, 'RANBOW', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(571, 'SPRINTER TRUEN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(572, 'LANCER CARGO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(573, 'LITEACE NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(574, 'TERIOUS', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:20:25'),
(575, 'PRAIRIE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(576, 'IMPREZA WAGON', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(577, 'SUUPER GRADE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:20:11'),
(578, 'COROLLA FIELDER', 1, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:14:41'),
(579, 'SAMBA', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(580, 'APPROCH', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(581, 'Z', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(582, 'HI-JET', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(583, 'SEDAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(584, 'OGATA WING', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(585, 'EFL', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(586, 'TOPPO', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(587, 'COROLLA??LEVIN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(588, 'KEI', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(589, 'LIBERT', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(590, 'NOMADO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(591, 'EX120-2', 53, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(592, 'XTRAIL', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:23:23'),
(593, 'CALDINA VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(594, 'ESTIMA-T', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(595, 'ESTIMA-L', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(596, '330', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(597, 'TELSTAR', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(598, 'VANETTE VAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(599, 'PROCEED MARVIE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(600, 'TOWNACE NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(601, 'TOURER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(602, 'DISSEL', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:48:21'),
(603, 'CAREAN', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(604, 'TELESCO ARM-1', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(605, 'TRACTOR HEAD', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(606, 'GIGA TRACTOR', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(607, 'COROLLA SPACIO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(608, 'ARMI', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(609, 'RENAULT TWINGO', 26, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(610, 'VISTA ARDEO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(611, 'VISTA ARDEO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(612, 'BANET', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(613, 'VAN', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(614, 'ALTRA VAN', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(615, 'PASSO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(616, 'TRIBUTE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(617, 'WILL', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(618, 'LAND CRUISER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(619, '3', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(620, 'PAJERO ZR', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(621, 'NOTE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(622, 'MARK-II 4TH', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:59:47'),
(623, 'CHASER 4TH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(624, 'M-CLASS', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(625, 'OGATA WING VAN', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(626, 'ARMY WING', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(627, 'SYOBEL', 52, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(628, 'OGATA HIRA BODY', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(629, 'KULGER', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:55:37'),
(630, 'PROCEED MARVIE', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(631, 'TOWNACE  NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(632, 'JEEP', 25, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(633, 'HI JACK', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(634, 'VEROSSA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(635, 'RX-7', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(636, 'DELICA VAN', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(637, 'SERES', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(638, 'SAAB', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(639, 'CIVOC FERIO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:39:04'),
(640, 'TOWNACE VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(641, 'CIVIC FREIO', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(642, 'CORO', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:43:48'),
(643, 'DOLPHIN', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(644, 'ARDEO', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(645, 'MONDEO', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(646, 'MR2', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(647, 'KULGER V', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:55:48'),
(648, 'CHARIOT GRANDIS', 3, 1, '2009-10-03 00:00:00', 308, '2010-01-20 15:59:51'),
(649, 'OPEL OMEGA WAGO', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(650, 'COROLLA RUNX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(651, 'KLUGER', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(652, 'OGATA ARMI WING', 38, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(653, 'DEFT', 20, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(654, 'SELCIOR', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(655, 'ALLEX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(656, 'HILUZ SURF', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:48:03'),
(657, 'TOPPO BJ', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(658, 'IMPEZA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:48:29'),
(659, 'AVENSIS SEDAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(660, 'LITEACE  NOAH', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(661, 'EVERY PLUS', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(662, 'RASHNEEN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(663, 'GRANDE HIACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(664, 'ROSA BUS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(665, 'CHEVY', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(666, 'CAPRIS', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(667, 'SHIBAURA', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(668, 'ESTIMA LUCIDA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(669, 'FUSO BUS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(670, 'TERRANNO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:20:37'),
(671, 'AVENSIS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(672, 'PRIMERA WAGON', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(673, 'COROLLA WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(674, 'COROLLA LEVIN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(675, 'CULTUS WAGON', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(676, 'FUNCRAGO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:32:08'),
(677, 'JET S/ KAWASAKI', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(678, 'JET SKI', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(679, 'TORENO', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(680, 'AERIO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(681, 'RX7', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(682, 'VANETTE VAN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(683, 'MAKR-II', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:58:32'),
(684, 'WAGON R WINE', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(685, 'HINO RANGER', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(686, 'GRADER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(687, 'BARCHETTA', 29, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(688, 'WILL VS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(689, 'COROLLA CERES', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(690, 'AVEVSIS WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(691, 'COROLLA TOURING', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(692, 'AREIO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(693, 'CELICA CP', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(694, 'BONGO BRONIA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_vehicle_model` (`model_id`, `model_name`, `make_id`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(695, 'BIGSAM', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:25:00'),
(696, 'PULSAR SERIE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(697, '106', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(698, 'SUNNY LUCINO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(699, 'FOKELIFT', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(700, 'OUTBACK', 8, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(701, 'COUPE', 29, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(702, 'BODY', 54, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(703, 'LAPUTA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(704, 'BB', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(705, 'VANETTE TRUCK', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(706, 'REGIUS ACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(707, 'PEUGEOT-106', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(708, 'AUDI A4', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(709, 'SUNNY LUCINO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(710, 'PEUGEOT-307', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(711, 'LAFESTA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(712, 'CARAVAN COACH', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(713, 'VW POLO', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(714, 'POGO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:59:55'),
(715, 'CUBE CUBIC', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(716, '810', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(717, 'FORD', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(718, 'LAUREN', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(719, 'FORD FIESTA', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(720, 'COROLLA CRESTA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(721, 'GOLF TOURAN', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(722, 'BIGSUM', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:25:13'),
(723, 'HR-V', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(724, 'FIESTA', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(725, 'BMW MINI', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(726, 'REGIUS ACE VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(727, 'FISTA', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(728, 'SEFIRO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(729, 'ODEASSY', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:58:17'),
(730, 'MAJISTA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:58:20'),
(731, 'AUDI A3', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(732, 'FORD FOCUS', 40, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(733, 'CURREN CP', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(734, 'MARK X', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(735, 'AVANSIS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(736, 'FARGO VAN', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(737, 'BELTA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(738, 'CATTERPILLER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(739, 'VEROSA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:21:30'),
(740, 'CHEVROLET', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(741, 'VEROSSA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(742, 'SUPER GUST', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(743, 'NISSAN TRUCK', 38, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(744, 'SUPER GRADER', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(745, 'CAMRY CRACIA', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:30:21'),
(746, 'BLUEBIRD SYLPHY', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(747, 'M,BENZ A-CLASS', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(748, 'X5', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(749, 'RACTIS', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(750, 'CAMRY  GRACIA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(751, 'COROLLA F', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:44:34'),
(752, 'TEANA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(753, 'ADYSSEY', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:04:04'),
(754, 'JIMMY SIERRA', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(755, 'LITEACE VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(756, 'DYNA TRUCK', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(757, '740I', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(758, 'BLUEBIRD SYPLHY', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:26:15'),
(759, 'LANDCRUISER PRA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:56:43'),
(760, 'HI ACE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:46:25'),
(761, 'REGIUS AVE VAN', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:12:13'),
(762, 'CAROMA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(763, 'GRANDIS 5D', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(764, 'IPSUM 5D', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(765, 'HARRIER 5D', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(766, 'MARKII', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 18:00:23'),
(767, 'CAMRY 4D', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:30:08'),
(768, 'JEEP GRAND CHER', 36, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(769, 'DIESEL BIG SAM', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:47:15'),
(770, 'DIESEL CONDOL', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(771, 'ACTROS', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(772, 'DYNA TRUCK 2D', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(773, 'COROLLA 4D', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:44:17'),
(774, 'HINO DUTORO', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(775, 'MARK2', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(776, 'DATSUN PICKUP', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(777, 'ESCUDO NOMAD', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(778, 'ACTION', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(779, 'EBIRISIO', 9, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(780, 'Z3', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(781, 'ATENZA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(782, 'DRAIN', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(783, 'MERIVA', 14, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(784, 'CAMRY GRACIAS', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:30:50'),
(785, 'RUNX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(786, 'PROBOX WAGON', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(787, 'CARDINA', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(788, 'PROBOX VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(789, 'WINGROAD WG', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(790, 'BONG VAN', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:26:40'),
(791, 'HI-LUX', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(792, 'CANTER GUTS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(793, 'SUPER GREAT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(794, 'NAKED', 7, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(795, 'SUCCEED VAN', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(796, 'AXELA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(797, 'BMW 3 SERIES', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(798, 'JETTA', 17, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(799, 'RANGER II', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(800, 'TADANO', 52, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(801, 'IPUSM GAIA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:49:16'),
(802, 'JUSTON II', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(803, 'BONGO TRUCK', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(804, 'TIIDA', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(805, 'AIRTREK', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(806, 'PRIMERA WAGON', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(807, 'A4 4D', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(808, 'EVOLUTION', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(809, 'GRANDVIA', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:33:33'),
(810, 'A3', 11, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(811, 'FOWARD', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(812, 'GREAT', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(813, 'TRAJET', 30, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(814, 'TODA LATIO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(815, 'TIDA LATIO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:20:49'),
(816, 'LANCER WAGON', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(817, 'SU', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:19:31'),
(818, 'AVENIR WAGON', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(819, 'TIIDA LATIO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(820, 'ACE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(821, 'SUPER DOLPHON', 10, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(822, 'SUPER KAB', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(823, 'MINI SHOVEL', 35, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(824, 'DEUTRO', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(825, 'SUCEED', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 13:19:57'),
(826, 'AIR TREK', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:10:16'),
(827, 'DENYO', 52, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(828, 'TB', 30, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(829, 'SHARIOT GRANDIS', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(830, 'FORWARD JUSTON', 6, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(831, 'ATTENZA', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(832, 'HIACE REIGUS', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:47:13'),
(833, 'VELLFIRE', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(834, '307', 28, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(835, 'HILUX  SURF', 1, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(836, 'HICE', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:47:39'),
(837, '530I', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(838, 'AXELA SPORT', 4, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(839, 'FREE LANDER', 23, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(840, 'I', 3, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(841, 'PAJERIO IO', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-21 11:59:01'),
(842, 'NOTE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(843, 'C240', 12, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(844, 'SPIKE', 2, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(845, '3 SERIES', 13, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(846, 'COROLLA SPACIOP', 54, 1, '2009-10-03 00:00:00', 308, '2010-01-20 16:44:49'),
(847, 'LTEACE NOAH', 54, 1, '2009-10-03 00:00:00', 90, '2010-01-20 17:58:08'),
(848, 'FIT ARIA', 5, 1, '2009-10-03 00:00:00', 0, '0000-00-00 00:00:00'),
(849, 'BREAKER', 55, 341, '2009-10-06 13:12:21', 0, '0000-00-00 00:00:00'),
(850, 'ISUZU T', 54, 308, '2009-10-23 20:06:05', 90, '2010-01-20 17:49:45'),
(851, 'CERVO', 9, 308, '2009-10-24 09:39:41', 0, '0000-00-00 00:00:00'),
(852, 'CHEVROLET CRUZE', 9, 308, '2009-10-24 10:08:21', 0, '0000-00-00 00:00:00'),
(853, 'ATENZA SEDAN', 4, 308, '2009-10-26 09:59:09', 0, '0000-00-00 00:00:00'),
(854, 'NEW BEETLE', 17, 308, '2009-10-26 13:17:41', 0, '0000-00-00 00:00:00'),
(855, 'MOBILIO SPIKE', 5, 308, '2009-11-06 09:33:23', 0, '0000-00-00 00:00:00'),
(856, 'CARAVAN VAN', 2, 308, '2010-01-21 10:17:08', 0, '0000-00-00 00:00:00'),
(857, 'C-CLASS', 12, 90, '2010-01-21 13:24:56', 0, '0000-00-00 00:00:00'),
(858, 'E240', 12, 308, '2010-01-22 11:32:48', 0, '0000-00-00 00:00:00'),
(859, 'ATLAS TRUCK', 2, 308, '2010-01-25 09:56:29', 0, '0000-00-00 00:00:00'),
(860, 'SILVER SPUR II', 56, 308, '2010-02-05 09:33:50', 0, '0000-00-00 00:00:00'),
(861, 'AURIS', 1, 308, '2010-02-08 11:47:56', 0, '0000-00-00 00:00:00'),
(862, 'A170', 12, 308, '2010-02-08 17:01:18', 0, '0000-00-00 00:00:00'),
(863, 'BONGO BRAWNY', 4, 308, '2010-02-19 08:57:59', 0, '0000-00-00 00:00:00'),
(864, 'MARK2 VAN', 1, 308, '2010-03-03 09:57:38', 0, '0000-00-00 00:00:00'),
(871, 'Tucson', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:10:35'),
(870, 'Sonata', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:09:52'),
(872, 'Accent', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:10:41'),
(873, 'i30', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:11:08'),
(874, 'i40', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:11:15'),
(875, 'Veloster', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:11:24'),
(876, 'Santa Fe', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:11:55'),
(877, 'Genesis', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:12:13'),
(878, 'Ioniq', 30, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:12:29'),
(879, 'Lacetti', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:12:59'),
(880, 'Tosca', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:13:10'),
(881, 'LeMans', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:14:30'),
(882, 'Espero', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:14:41'),
(883, 'Lanos', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:14:49'),
(884, 'Leganza', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:14:59'),
(885, 'Nubira', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:15:11'),
(886, 'Tacuma', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:15:20'),
(887, 'Damas', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:15:34'),
(888, 'Tico', 51, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:15:43'),
(889, 'Cadenza', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:13'),
(890, 'Ceed', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:25'),
(891, 'Forte', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:29'),
(892, 'K9', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:35'),
(893, 'Optima', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:50'),
(894, 'Pegas', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:17:55'),
(895, 'Picanto', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:18:10'),
(896, 'Rio', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:18:14'),
(897, 'Soul', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:18:19'),
(898, 'Stinger', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:18:31'),
(899, 'Stonic', 50, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:18:34'),
(900, 'Korando', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:10'),
(901, 'Kyron', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:18'),
(902, 'Musso', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:23'),
(903, 'Rexton', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:30'),
(904, 'Rodius', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:37'),
(905, 'Tivoli', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:43'),
(906, 'Turismo', 63, 0, '0000-00-00 00:00:00', 547, '2019-04-12 15:19:48'),
(907, 'JUKE', 2, 0, '0000-00-00 00:00:00', 1, '2019-04-25 10:48:34'),
(908, 'Sorento', 50, 0, '0000-00-00 00:00:00', 547, '2019-05-01 20:43:42'),
(909, 'New Sportage', 50, 0, '0000-00-00 00:00:00', 547, '2019-05-01 21:53:26'),
(910, 'Sonata LF', 30, 0, '0000-00-00 00:00:00', 547, '2019-05-02 01:09:51'),
(911, 'Sonata YF', 30, 0, '0000-00-00 00:00:00', 547, '2019-05-02 01:10:17'),
(912, 'Terracan', 30, 0, '0000-00-00 00:00:00', 547, '2019-05-02 01:10:52'),
(913, 'Fj Cruiser', 1, 0, '0000-00-00 00:00:00', 1, '2019-07-03 11:24:31'),
(914, 'Fortuner', 1, 0, '0000-00-00 00:00:00', 1, '2019-07-08 11:01:23'),
(915, 'BALENO', 9, 0, '0000-00-00 00:00:00', 1, '2019-07-10 11:43:21'),
(916, 'ZX210LCK-3 ', 52, 0, '0000-00-00 00:00:00', 1, '2019-11-18 18:19:23'),
(917, 'TRUCK', 65, 0, '0000-00-00 00:00:00', 1, '2019-11-18 18:20:00'),
(918, '312D', 64, 0, '0000-00-00 00:00:00', 1, '2019-11-18 18:20:57'),
(919, '320D-E', 64, 0, '0000-00-00 00:00:00', 1, '2019-11-18 19:54:46'),
(920, 'TCM45', 66, 0, '0000-00-00 00:00:00', 1, '2019-11-18 22:42:18'),
(921, 'GD405A-2', 53, 0, '0000-00-00 00:00:00', 1, '2019-11-18 22:42:51'),
(922, 'ROAD WORK TRUCK', 1, 0, '0000-00-00 00:00:00', 1, '2019-11-19 14:41:43'),
(923, 'CH-R', 1, 0, '0000-00-00 00:00:00', 957, '2020-07-28 08:34:06'),
(924, 'RAIZE', 1, 0, '2023-03-20 15:16:53', 0, '2023-03-20 15:16:53'),
(925, 'FREED', 5, 0, '2024-04-01 05:10:07', 0, '2024-04-01 05:10:07'),
(926, 'INSIGHT', 5, 0, '2024-04-01 05:10:42', 0, '2024-04-01 05:10:42'),
(927, 'CR-Z', 5, 0, '2024-04-02 02:22:19', 0, '2024-04-02 02:22:19'),
(928, 'LS', 0, 0, '2024-04-02 02:48:20', 0, '2024-04-02 02:48:20'),
(929, 'S-CLASS', 12, 0, '2024-04-03 01:13:32', 0, '2024-04-03 01:13:32'),
(930, 'YUKON', 19, 0, '2024-11-15 11:07:06', 0, '2024-11-15 11:07:06'),
(931, 'ACADIA', 19, 0, '2024-11-15 11:07:35', 0, '2024-11-15 11:07:35'),
(932, 'SIERRA', 19, 0, '2024-11-15 11:08:05', 0, '2024-11-15 11:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vehicle_attributes`
--

CREATE TABLE `tb_vehicle_attributes` (
  `attrib_id` int(11) NOT NULL,
  `veh_id` int(11) NOT NULL DEFAULT 0,
  `AC` varchar(4) NOT NULL DEFAULT '',
  `POWER_STEERING` varchar(4) NOT NULL DEFAULT '',
  `ABS` varchar(4) NOT NULL DEFAULT '',
  `POWER_WINDOWS` varchar(4) NOT NULL DEFAULT '',
  `SRS` varchar(4) NOT NULL DEFAULT '',
  `REAR_SPOILER` varchar(4) NOT NULL DEFAULT '',
  `ROOF_RAIL` varchar(4) NOT NULL DEFAULT '',
  `CD` varchar(4) NOT NULL DEFAULT '',
  `TV` varchar(4) NOT NULL DEFAULT '',
  `NAVIGATION` varchar(4) NOT NULL DEFAULT '',
  `ALLOY_WHEEL` varchar(4) NOT NULL DEFAULT '',
  `LEATHER_SEATS` varchar(4) NOT NULL DEFAULT '',
  `BACKTYRE` varchar(4) NOT NULL DEFAULT '',
  `RADIO` varchar(4) NOT NULL DEFAULT '',
  `CENTRAL_LOCKING` varchar(4) NOT NULL DEFAULT '',
  `POWER_MIRROR` varchar(4) NOT NULL DEFAULT '',
  `BACK_CAMERA` varchar(4) NOT NULL DEFAULT '',
  `FRONT_CAMERA` varchar(4) NOT NULL DEFAULT '',
  `SUN_ROOF` varchar(4) NOT NULL DEFAULT '',
  `DVD_Player` varchar(4) NOT NULL DEFAULT '',
  `MD_Player` varchar(4) NOT NULL DEFAULT '',
  `FOG_Lights` varchar(4) NOT NULL DEFAULT '',
  `Body_Kit` varchar(4) NOT NULL DEFAULT '',
  `Turbo` varchar(4) NOT NULL DEFAULT '',
  `One_Owner` varchar(4) NOT NULL DEFAULT '',
  `HID` varchar(4) NOT NULL DEFAULT '',
  `POWER_SLIDE_DOOR` varchar(4) NOT NULL DEFAULT '',
  `CORNER_SENSOR` varchar(4) NOT NULL DEFAULT '',
  `STEERING_SWITCH` varchar(4) NOT NULL DEFAULT '',
  `AUTO_AC` varchar(4) NOT NULL DEFAULT '',
  `half_leather_seat` varchar(4) NOT NULL DEFAULT '',
  `seven_seater` varchar(4) NOT NULL DEFAULT '',
  `push_start` varchar(4) NOT NULL DEFAULT '',
  `paddle_shift` varchar(4) NOT NULL DEFAULT '',
  `double_power_slide_door` varchar(4) NOT NULL DEFAULT '0',
  `key_start` varchar(4) NOT NULL,
  `double_moonroof` varchar(4) NOT NULL,
  `maker_navi_tv` varchar(4) NOT NULL,
  `dealer_navi_tv` varchar(4) NOT NULL,
  `maker_navi_jbl_sound_system` varchar(4) NOT NULL,
  `front_side_back_camera` varchar(4) NOT NULL,
  `around_view_4_camera` varchar(4) NOT NULL,
  `maker_rear_entertainment` varchar(4) NOT NULL,
  `alpine_rear_entertainment` varchar(4) NOT NULL,
  `rear_entertainment_premium_sound` varchar(4) NOT NULL,
  `coolbox` varchar(4) NOT NULL,
  `black_interior` varchar(4) NOT NULL,
  `black_half_leather` varchar(4) NOT NULL,
  `black_full_leather` varchar(4) NOT NULL,
  `beige_interior` varchar(4) NOT NULL,
  `beige_half_leather` varchar(4) NOT NULL,
  `beige_full_leather` varchar(4) NOT NULL,
  `eight_seater` varchar(4) NOT NULL,
  `one_power_seat` varchar(4) NOT NULL,
  `two_power_seat` varchar(4) NOT NULL,
  `three_power_seat` varchar(4) NOT NULL,
  `one_power_door` varchar(4) NOT NULL,
  `two_power_door` varchar(4) NOT NULL,
  `three_power_door` varchar(4) NOT NULL,
  `power_boot` varchar(4) NOT NULL,
  `modelista_front_spoiler` varchar(4) NOT NULL,
  `modelista_full_body_kit` varchar(4) NOT NULL,
  `admiration_front_spoiler` varchar(4) NOT NULL,
  `admiration_full_body_kit` varchar(4) NOT NULL,
  `after_market_front_spoiler` varchar(4) NOT NULL,
  `after_market_full_body_kit` varchar(4) NOT NULL,
  `maker_alloy_wheels` varchar(4) NOT NULL,
  `after_market_alloy_wheels` varchar(4) NOT NULL,
  `four_disc_brake` varchar(4) NOT NULL,
  `difflock` varchar(4) NOT NULL,
  `spare_key` varchar(4) NOT NULL,
  `cruise_control` varchar(4) NOT NULL,
  `custom_wheels` varchar(4) NOT NULL,
  `driver_airbag` varchar(4) NOT NULL,
  `hard_disc` varchar(4) NOT NULL,
  `maintenance_records_available` varchar(4) NOT NULL,
  `no_accidents` varchar(4) NOT NULL,
  `non_smoker` varchar(4) NOT NULL,
  `passenger_airbag` varchar(4) NOT NULL,
  `rear_window_defroster` varchar(4) NOT NULL,
  `rear_window_wiper` varchar(4) NOT NULL,
  `remote_keyless_entry` varchar(4) NOT NULL,
  `side_airbag` varchar(4) NOT NULL,
  `third_row_seats` varchar(4) NOT NULL,
  `tilt_wheel` varchar(4) NOT NULL,
  `tinted_glass` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_vehicle_attributes`
--

INSERT INTO `tb_vehicle_attributes` (`attrib_id`, `veh_id`, `AC`, `POWER_STEERING`, `ABS`, `POWER_WINDOWS`, `SRS`, `REAR_SPOILER`, `ROOF_RAIL`, `CD`, `TV`, `NAVIGATION`, `ALLOY_WHEEL`, `LEATHER_SEATS`, `BACKTYRE`, `RADIO`, `CENTRAL_LOCKING`, `POWER_MIRROR`, `BACK_CAMERA`, `FRONT_CAMERA`, `SUN_ROOF`, `DVD_Player`, `MD_Player`, `FOG_Lights`, `Body_Kit`, `Turbo`, `One_Owner`, `HID`, `POWER_SLIDE_DOOR`, `CORNER_SENSOR`, `STEERING_SWITCH`, `AUTO_AC`, `half_leather_seat`, `seven_seater`, `push_start`, `paddle_shift`, `double_power_slide_door`, `key_start`, `double_moonroof`, `maker_navi_tv`, `dealer_navi_tv`, `maker_navi_jbl_sound_system`, `front_side_back_camera`, `around_view_4_camera`, `maker_rear_entertainment`, `alpine_rear_entertainment`, `rear_entertainment_premium_sound`, `coolbox`, `black_interior`, `black_half_leather`, `black_full_leather`, `beige_interior`, `beige_half_leather`, `beige_full_leather`, `eight_seater`, `one_power_seat`, `two_power_seat`, `three_power_seat`, `one_power_door`, `two_power_door`, `three_power_door`, `power_boot`, `modelista_front_spoiler`, `modelista_full_body_kit`, `admiration_front_spoiler`, `admiration_full_body_kit`, `after_market_front_spoiler`, `after_market_full_body_kit`, `maker_alloy_wheels`, `after_market_alloy_wheels`, `four_disc_brake`, `difflock`, `spare_key`, `cruise_control`, `custom_wheels`, `driver_airbag`, `hard_disc`, `maintenance_records_available`, `no_accidents`, `non_smoker`, `passenger_airbag`, `rear_window_defroster`, `rear_window_wiper`, `remote_keyless_entry`, `side_airbag`, `third_row_seats`, `tilt_wheel`, `tinted_glass`) VALUES
(7966, 10022, 'YES', 'YES', 'YES', '', '', 'YES', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7957, 10021, 'YES', '', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', '', '', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7967, 10020, 'YES', 'YES', 'YES', '', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7968, 10019, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7961, 10017, 'YES', 'YES', 'YES', '', 'YES', 'YES', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7960, 10016, 'YES', 'YES', 'YES', '', '', '', '', 'YES', '', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7962, 10015, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7969, 10014, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', '', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7963, 10013, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', '', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7958, 10018, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7970, 10012, 'YES', 'YES', 'YES', '', '', 'YES', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7971, 10011, 'YES', 'YES', '', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7976, 10010, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7964, 10009, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7965, 10008, 'YES', 'YES', 'YES', '', '', 'YES', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', '', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7973, 10007, 'YES', 'YES', 'YES', '', '', '', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', '', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7974, 10006, 'YES', 'YES', 'YES', '', '', 'YES', '', 'YES', 'YES', 'YES', '', 'YES', '', 'YES', 'YES', 'YES', 'YES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vehicle_pictures`
--

CREATE TABLE `tb_vehicle_pictures` (
  `veh_id` int(11) NOT NULL DEFAULT 0,
  `pic_id` int(11) NOT NULL,
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `pic_priority` smallint(4) NOT NULL DEFAULT 1,
  `web_show` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_vehicle_pictures`
--

INSERT INTO `tb_vehicle_pictures` (`veh_id`, `pic_id`, `pic_url`, `pic_priority`, `web_show`) VALUES
(10015, 21855, '1751009124_18331144_carp_l_3.jpg', 2, 1),
(10013, 21856, '1751009162_18319887_carp_l_1.jpg', 1, 1),
(10015, 21854, '1751009124_18331144_carp_l_1.jpg', 1, 1),
(10016, 21850, '1751008887_18286521_carp_l_1.jpg', 1, 1),
(10016, 21851, '1751008887_18286521_carp_l_3.jpg', 2, 1),
(10017, 21852, '1751008812_18363635_carp_l_1.jpg', 1, 1),
(10017, 21853, '1751008812_18363635_carp_l_2.jpg', 2, 1),
(10018, 21847, '1751008720_18378425_carp_l_3.jpg', 2, 1),
(10018, 21846, '1751008720_18378425_carp_l_1.jpg', 1, 1),
(10021, 21844, '1751008654_18389792_carp_l_1.jpg', 1, 1),
(10021, 21845, '1751008657_18389792_carp_l_3.jpg', 2, 1),
(10022, 21863, '1751009620_18273465_carp_l_2.jpg', 2, 1),
(10022, 21862, '1751009620_18273465_carp_l_1.jpg', 1, 1),
(10020, 21864, '1751009688_18262195_carp_l_1.jpg', 1, 1),
(10020, 21865, '1751009688_18262195_carp_l_3.jpg', 2, 1),
(10019, 21866, '1751009730_18189283_carp_l_1.jpg', 1, 1),
(10019, 21867, '1751009730_18189283_carp_l_2.jpg', 2, 1),
(10014, 21868, '1751009909_18233261_carp_l_3.jpg', 1, 1),
(10014, 21869, '1751009909_18233261_carp_l_1.jpg', 2, 1),
(10012, 21870, '1751009969_18153835_carp_l_1.jpg', 1, 1),
(10012, 21871, '1751009969_18153835_carp_l_4.jpg', 2, 1),
(10011, 21872, '1751010082_18331294_carp_l_1.jpg', 1, 1),
(10011, 21873, '1751010082_18331294_carp_l_3.jpg', 2, 1),
(10010, 21882, '1751010136_17962247_carp_l_1.jpg', 1, 1),
(10010, 21883, '1751010136_17962247_carp_l_2.jpg', 2, 1),
(10008, 21860, '1751009303_18247642_carp_l_1.jpg', 1, 1),
(10008, 21861, '1751009303_18247642_carp_l_2.jpg', 2, 1),
(10007, 21876, '1751010273_18378396_carp_l_1.jpg', 1, 1),
(10007, 21877, '1751010273_18378396_carp_l_3.jpg', 2, 1),
(10006, 21878, '1751010326_18334883_carp_l_1.jpg', 1, 1),
(10006, 21879, '1751010326_18334883_carp_l_3.jpg', 2, 1),
(10013, 21857, '1751009162_18319887_carp_l_3.jpg', 2, 1),
(10009, 21858, '1751009223_18233317_carp_l_1.jpg', 1, 1),
(10009, 21859, '1751009223_18233317_carp_l_2.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', NULL, NULL, 1, '2025-07-08 07:27:39', '2024-05-22 07:59:21', '2024-05-22 07:59:22', NULL),
(2, 'faiz', NULL, NULL, 1, '2024-12-27 11:43:01', '2024-12-26 06:10:06', '2024-12-26 06:10:07', NULL),
(3, 'rehmankhatri', NULL, NULL, 1, '2024-12-26 06:21:07', '2024-12-26 06:19:16', '2024-12-26 06:19:17', NULL),
(4, 'samad', NULL, NULL, 1, '2024-12-26 06:22:29', '2024-12-26 06:22:01', '2024-12-26 06:22:01', NULL),
(5, 'jaffer', NULL, NULL, 1, '2024-12-26 06:27:35', '2024-12-26 06:23:03', '2024-12-26 06:23:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `autologin`
--
ALTER TABLE `autologin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bodytype`
--
ALTER TABLE `tbl_bodytype`
  ADD PRIMARY KEY (`bodytype_id`);

--
-- Indexes for table `tbl_body_style`
--
ALTER TABLE `tbl_body_style`
  ADD PRIMARY KEY (`BodyStyleID1`);

--
-- Indexes for table `tbl_color_type`
--
ALTER TABLE `tbl_color_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_messages`
--
ALTER TABLE `tbl_contact_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_custom_freight`
--
ALTER TABLE `tbl_custom_freight`
  ADD PRIMARY KEY (`custom_freight_id`);

--
-- Indexes for table `tbl_inquiries`
--
ALTER TABLE `tbl_inquiries`
  ADD PRIMARY KEY (`inquiry_id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD PRIMARY KEY (`session_table_id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `tbl_vehicle_make`
--
ALTER TABLE `tbl_vehicle_make`
  ADD PRIMARY KEY (`make_id`);

--
-- Indexes for table `tbl_vehicle_model`
--
ALTER TABLE `tbl_vehicle_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `tb_vehicle_attributes`
--
ALTER TABLE `tb_vehicle_attributes`
  ADD PRIMARY KEY (`attrib_id`),
  ADD UNIQUE KEY `attrib_id` (`attrib_id`),
  ADD KEY `veh_id` (`veh_id`),
  ADD KEY `veh_id_2` (`veh_id`);

--
-- Indexes for table `tb_vehicle_pictures`
--
ALTER TABLE `tb_vehicle_pictures`
  ADD PRIMARY KEY (`pic_id`);

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
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact_messages`
--
ALTER TABLE `tbl_contact_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_custom_freight`
--
ALTER TABLE `tbl_custom_freight`
  MODIFY `custom_freight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `tbl_inquiries`
--
ALTER TABLE `tbl_inquiries`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=960;

--
-- AUTO_INCREMENT for table `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217307;

--
-- AUTO_INCREMENT for table `tbl_vehicle_make`
--
ALTER TABLE `tbl_vehicle_make`
  MODIFY `make_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_vehicle_model`
--
ALTER TABLE `tbl_vehicle_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=934;

--
-- AUTO_INCREMENT for table `tb_vehicle_attributes`
--
ALTER TABLE `tb_vehicle_attributes`
  MODIFY `attrib_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7977;

--
-- AUTO_INCREMENT for table `tb_vehicle_pictures`
--
ALTER TABLE `tb_vehicle_pictures`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21884;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
