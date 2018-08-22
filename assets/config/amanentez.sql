-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2018 at 03:46 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amanentez`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `first_name`, `last_name`, `contact`, `email`, `type`, `username`, `password`) VALUES
(1, 'Juan', 'Dela cruz', '1234567', 'jd@gmail.com', 'Administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'John', 'Doe', '1234567', 'johndoe@gmail.com', 'Front Desk', 'frontdesk', '217cff8dba09af4d091243b2512851eadfdc35f5');

-- --------------------------------------------------------

--
-- Table structure for table `booking_cancelled`
--

CREATE TABLE `booking_cancelled` (
  `reservation_id` int(11) NOT NULL,
  `date_cancelled` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_check`
--

CREATE TABLE `booking_check` (
  `reservation_id` int(11) NOT NULL,
  `check_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `check_out` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_discount`
--

CREATE TABLE `booking_discount` (
  `reservation_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_expenses`
--

CREATE TABLE `booking_expenses` (
  `reservation_id` int(11) NOT NULL,
  `expense_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_rooms`
--

CREATE TABLE `booking_rooms` (
  `reservation_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_rooms`
--

INSERT INTO `booking_rooms` (`reservation_id`, `room_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 1),
(3, 2),
(3, 2),
(3, 3),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 4),
(7, 6),
(8, 3),
(9, 1),
(11, 1),
(12, 3),
(12, 3),
(13, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `client_address` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `first_name`, `last_name`, `contact_number`, `email`, `client_address`, `birthday`, `date_registered`) VALUES
(1, 'test', 'test', '1', 'test@gmail.com', 'test', '2001-01-01', '2018-07-29 10:02:26'),
(2, 'test2', 'test2', '1234567', 'test2@gmail.com', 'test2', '2001-01-01', '2018-07-29 10:06:07'),
(3, 'test', 'test', '123', 'test@test.com', 'test', '2991-01-01', '2018-08-01 00:21:07'),
(4, 'rellie', 'balagat', '123', 'test', 'test', '2001-01-01', '2018-08-04 05:46:11'),
(5, 'rellie', 'balagat', '123', 'test', 'test', '2001-01-01', '2018-08-04 05:46:53'),
(6, 'test', 'test', '123', 'test', 'test', '2001-01-01', '2018-08-04 05:48:18'),
(7, 'test', 'test', '123', 'test', 'test', '2001-01-01', '2018-08-04 05:51:10'),
(8, 'qwe', 'qwe', '1234567', 'qwe@gmail.com', 'qwe', '2001-01-01', '2018-08-04 06:13:31'),
(9, 'leand', 'viray', '9983268404', 'virayleand@gmail.com', 'taytayrizal', '1999-12-19', '2018-08-04 08:40:44'),
(10, 'Rellie', 'Balagat', '1', 'relliebalagat@gmail.com', 'test', '2003-01-01', '2018-08-05 22:49:43'),
(11, 'Rellie', 'Balagat', '1234567', 'rellierubiobalagat@gmail.com', 'e', '2001-01-01', '2018-08-18 12:39:35'),
(12, 'Botnog', 'Balagat', '1234567', 'botnog@gmail.com', '86-A Tandang Sora QC', '0200-01-01', '2018-08-19 03:50:11'),
(13, 'rel', 'bal', '1234567', 'rel@gmail.com', '86-A Tandang Sora QC', '2001-01-01', '2018-08-19 04:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `amount`) VALUES
(1, 'Extra Person (Bed, Linen and Towel)', '600.00'),
(2, 'Extra Person with Towel (Adult or Children)', '300.00'),
(3, 'Extra Towel', '50.00'),
(4, 'Extra Pillow', '50.00'),
(5, 'Extra Comforter', '150.00');

-- --------------------------------------------------------

--
-- Table structure for table `file_reservation`
--

CREATE TABLE `file_reservation` (
  `reservation_id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_reservation`
--

INSERT INTO `file_reservation` (`reservation_id`, `file_name`, `date_created`) VALUES
(13, 'payment_photo/38996989_229907571042362_6981769922934210560_n.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `person_count` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `payment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `reference_no`, `check_in`, `check_out`, `client_id`, `person_count`, `type`, `payment`, `status`, `date_created`, `date_updated`) VALUES
(1, 'AMNZ-06A67A5', '2018-07-30', '2018-07-31', 1, 1, 'Walk In', '', '', '2018-07-29 10:02:26', '2018-07-29 10:02:26'),
(2, 'AMNZ-8D80B58', '2018-07-30', '2018-07-31', 2, 1, 'Walk In', '', '', '2018-07-29 10:06:07', '2018-07-29 10:06:07'),
(3, 'AMNZ-FFA084A', '2018-08-02', '2018-08-03', 3, 3, 'Walk In', '', '', '2018-08-01 00:21:07', '2018-08-01 00:21:07'),
(4, 'AMNZ-0A5544B', '2018-08-05', '2018-08-06', 4, 1, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-04 05:46:12', '2018-08-04 05:46:12'),
(5, 'AMNZ-A9A25F3', '2018-08-05', '2018-08-06', 5, 1, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-04 05:46:53', '2018-08-04 05:46:53'),
(6, 'AMNZ-702D8B4', '2018-08-05', '2018-08-06', 6, 1, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-04 05:48:18', '2018-08-04 05:48:18'),
(7, 'AMNZ-13EF3F9', '0000-00-00', '0000-00-00', 7, 1, 'Online Reservation', '', 'FOR PAYMENT CONFIRMATION', '2018-08-04 05:51:10', '2018-08-04 05:55:33'),
(8, 'AMNZ-A265D04', '0000-00-00', '0000-00-00', 8, 1, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-04 06:13:31', '2018-08-04 06:14:32'),
(9, 'AMNZ-FA893B0', '2018-08-17', '2018-08-18', 9, 1, 'Online Reservation', '', 'FOR PAYMENT CONFIRMATION', '2018-08-04 08:40:45', '2018-08-04 08:45:25'),
(10, 'AMNZ-A5A7C0B', '2018-08-07', '2018-08-08', 10, 2, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-05 22:49:43', '2018-08-05 22:49:43'),
(11, 'AMNZ-C68BCB3', '1970-01-01', '1970-01-01', 11, 0, 'Online Reservation', '', 'FOR PAYMENT', '2018-08-18 12:39:36', '2018-08-18 12:39:36'),
(12, 'AMNZ-74E55F8', '1970-01-01', '1970-01-01', 12, 0, 'Online Reservation', '', 'FOR PAYMENT CONFIRMATION', '2018-08-19 03:50:11', '2018-08-19 23:23:57'),
(13, 'AMNZ-9F1901C', '2018-09-02', '2018-09-08', 13, 4, 'Online Reservation', '', 'FOR PAYMENT CONFIRMATION', '2018-08-19 04:06:48', '2018-08-21 23:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `simple_description` varchar(255) NOT NULL,
  `capacity` int(1) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `description`, `simple_description`, `capacity`, `rate`) VALUES
(1, 'Standard Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 2, '1650.00'),
(2, 'Standard Deluxe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 2, '2400.00'),
(3, 'Deluxe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', 2, '3200.00'),
(4, 'Superior Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', 2, '3500.00'),
(5, 'Executive Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, '4200.00'),
(6, 'VIP Beach Front', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, '4900.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_status`
--

CREATE TABLE `room_status` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_status`
--

INSERT INTO `room_status` (`id`, `room_id`, `status_id`) VALUES
(1, 6, 3),
(2, 5, 1),
(3, 3, 1),
(4, 5, 1),
(6, 1, 1),
(7, 2, 1),
(8, 4, 1),
(9, 2, 1),
(10, 6, 1),
(11, 2, 1),
(12, 2, 1),
(13, 1, 1),
(14, 1, 1),
(15, 2, 1),
(16, 3, 1),
(17, 2, 1),
(18, 3, 1),
(19, 2, 1),
(20, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Occupied'),
(3, 'Cleaning'),
(4, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `rating` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `full_name`, `email`, `comment`, `rating`) VALUES
(0, 'Rellie Balagat', 'relliebalagat@gmail.com', 'Maganda ang beach', '5');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `change` decimal(10,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_cancelled`
--
ALTER TABLE `booking_cancelled`
  ADD KEY `booking_cancelled_fk0` (`reservation_id`);

--
-- Indexes for table `booking_check`
--
ALTER TABLE `booking_check`
  ADD KEY `booking_check_fk0` (`reservation_id`);

--
-- Indexes for table `booking_discount`
--
ALTER TABLE `booking_discount`
  ADD KEY `booking_discount_fk0` (`reservation_id`),
  ADD KEY `booking_discount_fk1` (`discount_id`);

--
-- Indexes for table `booking_expenses`
--
ALTER TABLE `booking_expenses`
  ADD KEY `booking_expenses_fk0` (`reservation_id`),
  ADD KEY `booking_expenses_fk1` (`expense_id`);

--
-- Indexes for table `booking_rooms`
--
ALTER TABLE `booking_rooms`
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_reservation`
--
ALTER TABLE `file_reservation`
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_fk0` (`client_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_status`
--
ALTER TABLE `room_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_status_fk0` (`room_id`),
  ADD KEY `room_status_fk1` (`status_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_fk0` (`reservation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_status`
--
ALTER TABLE `room_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_cancelled`
--
ALTER TABLE `booking_cancelled`
  ADD CONSTRAINT `booking_cancelled_fk0` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_check`
--
ALTER TABLE `booking_check`
  ADD CONSTRAINT `booking_check_fk0` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`);

--
-- Constraints for table `booking_discount`
--
ALTER TABLE `booking_discount`
  ADD CONSTRAINT `booking_discount_fk0` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `booking_discount_fk1` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`);

--
-- Constraints for table `booking_expenses`
--
ALTER TABLE `booking_expenses`
  ADD CONSTRAINT `booking_expenses_fk0` FOREIGN KEY (`reservation_id`) REFERENCES `transaction` (`id`),
  ADD CONSTRAINT `booking_expenses_fk1` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`);

--
-- Constraints for table `booking_rooms`
--
ALTER TABLE `booking_rooms`
  ADD CONSTRAINT `booking_rooms_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_rooms_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_reservation`
--
ALTER TABLE `file_reservation`
  ADD CONSTRAINT `file_reservation_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_fk0` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_status`
--
ALTER TABLE `room_status`
  ADD CONSTRAINT `room_status_fk0` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `room_status_fk1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_fk0` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
