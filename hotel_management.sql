-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `account_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `account_type`) VALUES
('01', 'admin1', 'password_admin1', 1),
('02', 'admin2', 'password_admin2', 1),
('03', 'user1', 'password_user1', 0),
('04', 'user2', 'password_user2', 0),
('05', 'user3', 'password_user3', 0),
('06', 'user4', 'password_user4', 0),
('07', 'user5', 'password_user5', 0),
('08', 'user6', 'password_user6', 0),
('09', 'user7', 'password_user7', 0),
('10', 'user8', 'password_user8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `customer_id`, `date`) VALUES
('01', '01', '2024-04-01'),
('02', '02', '2024-04-02'),
('03', '03', '2024-04-03'),
('04', '04', '2024-04-04'),
('05', '05', '2024-04-05'),
('06', '06', '2024-04-06'),
('07', '07', '2024-04-07'),
('08', '08', '2024-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `detail_id` varchar(10) NOT NULL,
  `booking_id` varchar(10) NOT NULL,
  `room_id` varchar(10) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`detail_id`, `booking_id`, `room_id`, `check_in`, `check_out`) VALUES
('01', '01', 'P101', '2024-04-02', '2024-04-05'),
('02', '01', 'P102', '2024-04-02', '2024-04-05'),
('03', '02', 'P203', '2024-04-03', '2024-04-06'),
('04', '03', 'P304', '2024-04-04', '2024-04-07'),
('05', '03', 'P305', '2024-04-04', '2024-04-07'),
('06', '04', 'P506', '2024-04-05', '2024-04-08'),
('07', '05', 'P401', '2024-04-06', '2024-04-09'),
('08', '06', 'P206', '2024-04-07', '2024-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` varchar(10) NOT NULL,
  `account_id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `citizen_id` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `account_id`, `name`, `citizen_id`, `address`, `birthdate`, `phone`, `email`) VALUES
('01', '03', 'Nguyen Van A', '123456789', '123 Main Street, Hanoi', '1990-01-15', '0901112233', 'a.nguyen@example.com'),
('02', '04', 'Tran Thi B', '234567890', '456 Second Street, Ho Chi Minh City', '1992-05-30', '0912223344', 'b.tran@example.com'),
('03', '05', 'Le Van C', '345678901', '789 Third Street, Da Nang', '1988-07-20', '0923334455', 'c.le@example.com'),
('04', '06', 'Pham Thi D', '456789012', '101 Fourth Street, Hue', '1995-09-10', '0934445566', 'd.pham@example.com'),
('05', '07', 'Hoang Van E', '567890123', '202 Fifth Street, Can Tho', '1993-03-15', '0945556677', 'e.hoang@example.com'),
('06', '08', 'Dao Thi F', '678901234', '303 Sixth Street, Hai Phong', '1996-11-25', '0956667788', 'f.dao@example.com'),
('07', '09', 'Nguyen Van G', '789012345', '404 Seventh Street, Nha Trang', '1989-02-28', '0967778899', 'g.nguyen@example.com'),
('08', '10', 'Tran Van H', '890123456', '505 Eighth Street, Quy Nhon', '1994-08-12', '0978889900', 'h.tran@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` varchar(10) NOT NULL,
  `roomtype_id` varchar(10) NOT NULL,
  `capacity` int(2) NOT NULL,
  `image` varchar(50) NOT NULL,
  `room_condition` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `roomtype_id`, `capacity`, `image`, `room_condition`) VALUES
('P101', 'L01', 1, '/images/room01.jpg', 1),
('P102', 'L02', 2, '/images/room02.jpg', 1),
('P103', 'L03', 2, '/images/room03.jpg', 1),
('P104', 'L04', 2, '/images/room04.jpg', 1),
('P105', 'L05', 2, '/images/room05.jpg', 1),
('P106', 'L06', 3, '/images/room06.jpg', 1),
('P201', 'L07', 6, '/images/room07.jpg', 1),
('P202', 'L08', 4, '/images/room08.jpg', 1),
('P203', 'L09', 2, '/images/room09.jpg', 0),
('P204', 'L10', 2, '/images/room10.jpg', 1),
('P205', 'L11', 2, '/images/room11.jpg', 1),
('P206', 'L12', 4, '/images/room12.jpg', 1),
('P301', 'L13', 2, '/images/room13.jpg', 1),
('P302', 'L14', 4, '/images/room14.jpg', 1),
('P303', 'L07', 6, '/images/room15.jpg', 1),
('P304', 'L08', 4, '/images/room16.jpg', 1),
('P305', 'L09', 2, '/images/room17.jpg', 1),
('P306', 'L01', 1, '/images/room18.jpg', 0),
('P401', 'L02', 2, '/images/room19.jpg', 1),
('P402', 'L03', 2, '/images/room20.jpg', 1),
('P403', 'L04', 2, '/images/room21.jpg', 1),
('P404', 'L05', 2, '/images/room22.jpg', 1),
('P405', 'L06', 3, '/images/room23.jpg', 1),
('P406', 'L07', 6, '/images/room24.jpg', 1),
('P501', 'L08', 4, '/images/room25.jpg', 1),
('P502', 'L09', 2, '/images/room26.jpg', 0),
('P503', 'L01', 1, '/images/room27.jpg', 1),
('P504', 'L02', 2, '/images/room28.jpg', 1),
('P505', 'L03', 2, '/images/room29.jpg', 1),
('P506', 'L04', 2, '/images/room30.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomtypes`
--

CREATE TABLE `roomtypes` (
  `roomtype_id` varchar(10) NOT NULL,
  `roomtype_name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomtypes`
--

INSERT INTO `roomtypes` (`roomtype_id`, `roomtype_name`, `description`, `quantity`, `price`) VALUES
('L01', 'Single Room', 'A room designed for one person, typically with a single bed.', 10, 100.00),
('L02', 'Double Room', 'A room designed for two people, typically with one double bed or two single beds.', 15, 150.00),
('L03', 'Twin Room', 'A room designed for two people, featuring two separate single beds.', 8, 140.00),
('L04', 'Queen Room', 'A room with a queen-sized bed, suitable for one or two people.', 12, 180.00),
('L05', 'King Room', 'A room with a king-sized bed, suitable for one or two people.', 10, 200.00),
('L06', 'Triple Room', 'A room designed for three people, typically with a combination of beds.', 5, 220.00),
('L07', 'Family Room', 'A room designed for families, often with multiple beds or sofa beds.', 4, 250.00),
('L08', 'Suite', 'A larger room or set of rooms, often including a separate living area and bedroom(s).', 3, 350.00),
('L09', 'Junior Suite', 'A smaller suite that typically includes a separate seating area.', 2, 300.00),
('L10', 'Executive Room', 'A room designed for business travelers, often with a workspace.', 6, 280.00),
('L11', 'Accessible Room', 'A room designed to be accessible for guests with disabilities.', 4, 160.00),
('L12', 'Luxury Room', 'A high-end room offering premium amenities and furnishings.', 3, 400.00),
('L13', 'Connecting Rooms', 'Two rooms that are connected by an interior door.', 2, 320.00),
('L14', 'Penthouse Suite', 'A luxurious suite located on the top floor of the hotel.', 1, 500.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `fk_booking_customer` (`customer_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `fk_detail_room` (`room_id`),
  ADD KEY `fk_detail_booking` (`booking_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_customer_account` (`account_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `fk_room_roomtype` (`roomtype_id`);

--
-- Indexes for table `roomtypes`
--
ALTER TABLE `roomtypes`
  ADD PRIMARY KEY (`roomtype_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_booking_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `fk_detail_booking` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  ADD CONSTRAINT `fk_detail_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customer_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_room_roomtype` FOREIGN KEY (`roomtype_id`) REFERENCES `roomtypes` (`roomtype_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
