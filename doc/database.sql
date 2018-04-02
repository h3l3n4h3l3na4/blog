-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 11:49 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
  (1, 'Esimene postitus', 'Esimese postituse tekst. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.', '2018-04-01 20:29:41', 1),
  (2, 'Teine postitus', 'Teise postituse tekst. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.', '2018-04-01 20:30:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
  (1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
  (2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
  (3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
  (4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
  (5, 'Action', 'en', '{untranslated}', 'halo', 'index'),
  (6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
  (7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
  (8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
  (9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
  (10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
  (11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
  (12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
  (13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
  (14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
  (15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
  (16, 'Email', 'et', '{untranslated}', 'global', 'global'),
  (17, 'Password', 'et', '{untranslated}', 'global', 'global'),
  (18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
  (19, 'Please sign in', 'en', '{untranslated}', 'global', 'global'),
  (20, 'Email', 'en', '{untranslated}', 'global', 'global'),
  (21, 'Password', 'en', '{untranslated}', 'global', 'global'),
  (22, 'Sign in', 'en', '{untranslated}', 'global', 'global'),
  (23, 'Oops...', 'en', '{untranslated}', 'global', 'global'),
  (24, 'Close', 'en', '{untranslated}', 'global', 'global'),
  (25, 'Server returned an error. Please try again later ', 'en', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
  (1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`translation_id`),
  ADD UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
