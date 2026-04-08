-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 12:58 PM
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
-- Database: `room_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `id` int(20) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'sanjeev', 'sanjeev@123');

-- --------------------------------------------------------

--
-- Table structure for table `booking-details`
--

CREATE TABLE `booking-details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `user_name` varchar(150) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking-details`
--

INSERT INTO `booking-details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(24, 24, 'Simple Room', 1500, 9000, NULL, 'user1', '1234', 'Bhaktapur'),
(25, 25, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(26, 26, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(27, 27, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(28, 28, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(29, 29, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(30, 30, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(31, 32, 'Luxery', 12, 72, NULL, 'user1', '1234', 'Bhaktapur'),
(32, 33, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(33, 34, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(34, 35, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(35, 36, 'Luxery', 12, 12, NULL, 'user1', '1234', 'Bhaktapur'),
(36, 37, 'Simple Room', 1500, 1500, NULL, 'user1', '1234', 'Bhaktapur'),
(37, 38, 'Simple room', 1300, 1300, NULL, 'user1', '1234', 'Bhaktapur');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` int(11) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `datentime`) VALUES
(24, 5, 17, '2023-11-21', '2023-11-27', 0, NULL, 'pending', 'ORD_59463131', 0, 0, 0, '2023-11-21 15:43:57'),
(25, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_5368597', 0, 0, 0, '2023-11-21 15:49:39'),
(26, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_53940160', 0, 0, 0, '2023-11-21 16:00:07'),
(27, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_55165736', 0, 0, 0, '2023-11-21 16:05:02'),
(28, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_54529754', 0, 0, 0, '2023-11-21 16:10:19'),
(29, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_51213457', 0, 0, 0, '2023-11-21 16:11:58'),
(30, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_52409746', 0, 0, 0, '2023-11-21 16:12:32'),
(31, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_57041269', 0, 0, 0, '2023-11-21 16:13:00'),
(32, 5, 19, '2023-11-21', '2023-11-27', 0, NULL, 'pending', 'ORD_5827340', 0, 0, 0, '2023-11-21 16:13:07'),
(33, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_58962308', 0, 0, 0, '2023-11-21 16:13:18'),
(34, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_52301006', 0, 0, 0, '2023-11-21 16:20:30'),
(35, 5, 19, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_57241068', 0, 0, 0, '2023-11-21 16:32:01'),
(36, 5, 19, '2023-11-22', '2023-11-23', 0, NULL, 'pending', 'ORD_54594255', 0, 0, 0, '2023-11-21 16:39:04'),
(37, 5, 17, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_55716334', 0, 0, 0, '2023-11-21 16:49:31'),
(38, 5, 18, '2023-11-21', '2023-11-22', 0, NULL, 'pending', 'ORD_51566158', 0, 0, 0, '2023-11-21 17:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(200) NOT NULL,
  `pn1` varchar(30) NOT NULL,
  `pn2` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Duwakot-Changunarayan,Bhaktapur', 'https://maps.app.goo.gl/YMAAh4LKmVjAmSfWA', '9841424344', '9841424347', 'ask.bhatgaun@gmail.com', 'facebook.com/bhadgaun', 'instagram.com/bhadgaun', 'twitter.com/bhadgaun', 'https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d28262.640687525556!2d85.405265!3d27.691646!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMjfCsDQxJzE1LjciTiA4NcKwMjQnMjQuMCJF!5e0!3m2!1sen!2snp!4v1696330156756!5m2!1sen!2snp');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(5, 'IMG_16372.svg', 'Router', 'Router is used as the reliable source for internet use in the room.'),
(6, 'IMG_79051.svg', 'Wifi', ' Wifi is essential for network'),
(7, 'IMG_40349.svg', 'Fan', ' Wind Energy'),
(8, 'IMG_30160.svg', 'AC', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `name`) VALUES
(4, 'Sofa'),
(6, 'wifi'),
(7, 'TV'),
(8, 'Heater');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(17, 'Simple Room', 340, 1500, 1, 2, 3, 'This is suitable for cost effective person', 1, 0),
(18, 'Simple room', 290, 1300, 1, 2, 2, 'This is simple room', 1, 0),
(19, 'Luxery', 500, 12, 5, 4, 6, 'This room is for you.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(43, 17, 7),
(44, 17, 8),
(46, 18, 7),
(47, 18, 8),
(48, 19, 5),
(49, 19, 7),
(50, 19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(47, 17, 4),
(48, 17, 6),
(49, 17, 7),
(50, 18, 4),
(51, 18, 6),
(52, 18, 7),
(53, 19, 4),
(54, 19, 6),
(55, 19, 7),
(56, 19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(14, 17, 'IMG_85493.jpg', 1),
(16, 18, 'IMG_41864.png', 1),
(17, 19, 'IMG_35449.png', 1),
(18, 19, 'IMG_32847.jpg', 0),
(19, 19, 'IMG_74460.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(255) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Bhagatgaun', 'Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun Bhagatgaun BhagatgaunBhagatgaunBhagatgaunBhagatgaun Bhagatgaun BhagatgaunBhagatgaun ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(4, 'Yadhav', 'IMG_76241.webp'),
(5, 'Nati Kaji Shrestha', 'IMG_23388.jpg'),
(6, 'Fathaman Rajbhandari', 'IMG_96515.jpeg'),
(7, 'ss', 'IMG_74534.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phonenum` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `status`, `datentime`) VALUES
(2, 'Sanjib Shrestha', 'sanjeevsht58@gmail.com', 'LisankhuPakhar-03,Sindupalchowk', '9869173758', 45300, '2023-10-12', 'IMG_12168.webp', '$2y$10$ZWmUdNYGbkFeNtIN5sN5YeDLeIKQqaJajjJ62fy2iBnx2uYOOZMUq', 1, '2023-10-12 14:24:17'),
(3, 'Sujan', 'sujan@gmail.com', 'LisankhuPakhar-03,Sindupalchowk', '123456789', 45300, '2001-12-25', 'IMG_53383.jpg', '$2y$10$OcfJ66vyrALZxEiuNamwqu1giZl/spFU9tQ6aRydl5kBntWyLr2My', 1, '2023-10-15 13:18:56'),
(5, 'user1', 'sanjeevsht58@gmail.com', 'Bhaktapur', '1234', 42300, '2000-10-25', 'IMG_81015.jpg', '$2y$10$kGz00p5NTwR/Uc3nIkovrO95i63jbGJmgrBNw2j31oa3uzoTx6ioi', 1, '2023-10-27 10:10:18'),
(6, 'Sanjib Shrestha', 'sanj@gmail.com', 'LisankhuPakhar-03,Sindupalchowk', '12345', 45300, '1998-05-11', 'IMG_40706.jpeg', '$2y$10$yaSX.6GOoPVUBZrmbWt/metJcEgMfz70SG51HCndRzc/BJg0EjFWO', 1, '2023-11-09 09:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(4, 'Sanjib Shrestha', 'sanjibsht2001@gmail.com', 'subject', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam corporis architecto! Libero distinctio, repudiandae laboriosam reprehenderit inventore deleniti error.', '2023-10-06', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking-details`
--
ALTER TABLE `booking-details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm_id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_images_ibfk_1` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking-details`
--
ALTER TABLE `booking-details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking-details`
--
ALTER TABLE `booking-details`
  ADD CONSTRAINT `booking-details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `feature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
