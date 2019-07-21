-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2019 at 07:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Hi', 'dulal_hosain', 'opu_roy', '2019-01-22 16:56:23', 'no', 26),
(2, 'Hi', 'opu_roy', 'opu_roy', '2019-01-23 15:34:29', 'no', 24);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(2, 'opu_roy', 28),
(3, 'opu_roy', 30);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'This is my first post', 'opu_roy', 'none', '2019-01-17 20:12:32', 'no', 'no', 0),
(3, 'Hi I am dulal', 'dulal_hosain', 'none', '2019-01-17 23:54:14', 'no', 'yes', 0),
(4, 'Hey I am Animash', 'animash_roy', 'none', '2019-01-17 23:56:01', 'no', 'no', 0),
(5, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:18', 'no', 'no', 0),
(6, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:26', 'no', 'no', 0),
(7, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:29', 'no', 'no', 0),
(8, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:31', 'no', 'no', 0),
(9, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:35', 'no', 'no', 0),
(10, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:37', 'no', 'no', 0),
(11, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:41', 'no', 'no', 0),
(12, 'Hello, I am akash', 'akash_islam', 'none', '2019-01-18 17:35:45', 'no', 'no', 0),
(13, 'Coding is my passion .!', 'opu_roy', 'none', '2019-01-18 17:36:56', 'no', 'yes', 0),
(14, 'Coding is my passion .!', 'opu_roy', 'none', '2019-01-18 17:38:23', 'no', 'no', 0),
(15, 'Hello', 'akash_islam', 'none', '2019-01-18 20:01:46', 'no', 'no', 0),
(16, 'Hello', 'akash_islam', 'none', '2019-01-18 20:05:26', 'no', 'no', 0),
(17, 'Good boy', 'akash_islam', 'none', '2019-01-18 20:43:42', 'no', 'no', 0),
(18, 'How are you all..?', 'akash_islam', 'none', '2019-01-18 20:44:15', 'no', 'no', 0),
(19, 'Ha ha ha ', 'akash_islam', 'none', '2019-01-18 20:46:15', 'no', 'no', 0),
(20, 'Hello', 'dulal_hosain', 'none', '2019-01-20 17:58:24', 'no', 'yes', 0),
(21, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-22 16:32:33', 'no', 'no', 0),
(22, 'Hello, this is for testing perpose', 'opu_roy', 'none', '2019-01-22 16:32:33', 'no', 'no', 0),
(23, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-22 16:33:30', 'no', 'no', 0),
(24, 'Hello', 'opu_roy', 'none', '2019-01-22 16:33:30', 'no', 'no', 0),
(25, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-22 16:35:42', 'no', 'no', 0),
(26, 'Hi', 'opu_roy', 'none', '2019-01-22 16:35:42', 'no', 'no', 0),
(27, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-22 16:41:12', 'no', 'no', 0),
(28, 'Hello, This is my first post', 'dulal_hosain', 'none', '2019-01-22 16:41:12', 'no', 'no', 1),
(29, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-22 17:55:16', 'no', 'no', 0),
(30, 'Hello, friends', 'dulal_hosain', 'none', '2019-01-22 17:55:16', 'no', 'no', 1),
(31, 'sda', 'asdfsd', 'asdfsdaf', '2019-01-23 15:35:07', 'no', 'no', 0),
(32, 'Sadekul', 'opu_roy', 'none', '2019-01-23 15:35:07', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Animash', 'Roy', 'animash_roy', 'animash@gmail.com', '86d8911b9b2190b03561463b0b48ca1a', '2019-01-08', 'assets/images/profile_pics/defaults/head_belize_hole.png', 1, 1, 'no', ''),
(2, 'Opu', 'Roy', 'opu_roy', 'Animash1@gmail.com', '86d8911b9b2190b03561463b0b48ca1a', '2019-01-15', 'assets/images/profile_pics/opu_roy8bba2f2d90a0b27a54f8eb891646869en.jpeg', 9, 0, 'no', ',dulal_hosain,'),
(3, 'Opu', 'Roy', 'opu_roy_1', 'Animash2@gmail.com', 'a90a715a6ad0f4a8f866cf5a19640741', '2019-01-15', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(4, 'Animash', 'Opu', 'animash_opu', 'Animash.cse@gmail.com', '86d8911b9b2190b03561463b0b48ca1a', '2019-01-15', 'assets/images/profile_pics/defaults/head_green_sea.png', 0, 0, 'no', ','),
(5, 'Monjur', 'Roy', 'monjur_roy', 'Monjur@gmail.com', 'd37fb7a9fcc28b296cfcb7918c310d35', '2019-01-15', 'assets/images/profile_pics/defaults/head_green_sea.png', 0, 0, 'no', ','),
(6, 'Monjuralom', 'Roy', 'monjuralom_roy', 'Monjur2@gmail.com', '86d8911b9b2190b03561463b0b48ca1a', '2019-01-15', 'assets/images/profile_pics/defaults/head_green_sea.png', 0, 0, 'no', ','),
(7, 'Dulal', 'Hosain', 'dulal_hosain', 'Dulal@gmail.com', '86d8911b9b2190b03561463b0b48ca1a', '2019-01-15', 'assets/images/profile_pics/dulal_hosain97402c266f282d06c49c369a171babe0n.jpeg', 2, 2, 'no', ',opu_roy,'),
(8, 'Ismail', 'Hosain', 'ismail_hosain', 'Ismail@gmail.com', '02c75fb22c75b23dc963c7eb91a062cc', '2019-01-15', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(9, 'Soheb', 'Roy', 'soheb_roy', 'Soheb@gmail.com', '02c75fb22c75b23dc963c7eb91a062cc', '2019-01-15', 'assets/images/profile_pics/defaults/head_green_sea.png', 0, 0, 'no', ','),
(10, 'Soheb', 'Roy', 'soheb_roy_1', 'Soheb2@gmail.com', 'c83b2d5bb1fb4d93d9d064593ed6eea2', '2019-01-15', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(11, 'Soheb', 'Hosain', 'soheb_hosain', 'Soheb12@gmail.com', '02c75fb22c75b23dc963c7eb91a062cc', '2019-01-16', 'assets/images/profile_pics/defaults/head_green_sea.png', 0, 0, 'no', ','),
(12, 'Akash', 'Islam', 'akash_islam', 'Akash@gmail.com', '94754d0abb89e4cf0a7f1c494dbb9d2c', '2019-01-18', 'assets/images/profile_pics/defaults/head_green_sea.png', 2, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
