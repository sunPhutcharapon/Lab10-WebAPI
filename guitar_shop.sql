-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 07:02 AM
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
-- Database: `guitar_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `stock`, `description`, `created_at`) VALUES
(1, 'Super man Fender', 'Guitar', 150.00, 6, 'updated', '2025-09-29 03:40:40'),
(2, 'Gibson Les Paul', 'Electric Guitar', 1500.00, 3, 'Legendary guitar', '2025-09-29 03:40:40'),
(3, 'Yamaha FG800', 'Acoustic Guitar', 200.00, 10, 'Entry-level acoustic', '2025-09-29 03:40:40'),
(4, 'Ibanez RG550', 'Electric Guitar', 900.00, 2, 'Shred guitar', '2025-09-29 03:40:40'),
(5, 'Martin D-28', 'Acoustic Guitar', 3000.00, 1, 'Premium acoustic', '2025-09-29 03:40:40'),
(6, 'PRS Custom 24', 'Electric Guitar', 2500.00, 4, 'High-end electric', '2025-09-29 03:40:40'),
(7, 'Epiphone Les Paul', 'Electric Guitar', 500.00, 6, 'Affordable Les Paul', '2025-09-29 03:40:40'),
(8, 'Taylor 214ce', 'Acoustic Guitar', 800.00, 3, 'Acoustic-electric guitar', '2025-09-29 03:40:40'),
(9, 'Schecter Hellraiser', 'Electric Guitar', 1000.00, 2, 'Metal guitar', '2025-09-29 03:40:40'),
(10, 'Fender Telecaster', 'Electric Guitar', 1200.00, 5, 'Iconic guitar', '2025-09-29 03:40:40'),
(11, 'Gretsch G2622', 'Electric Guitar', 900.00, 3, 'Semi-hollow body', '2025-09-29 03:40:40'),
(12, 'Yamaha C40', 'Classical Guitar', 150.00, 7, 'Beginner classical', '2025-09-29 03:40:40'),
(13, 'Cordoba C7', 'Classical Guitar', 400.00, 2, 'Professional classical', '2025-09-29 03:40:40'),
(14, 'Jackson Soloist', 'Electric Guitar', 1100.00, 1, 'Fast neck guitar', '2025-09-29 03:40:40'),
(15, 'Fender Jazz Bass', 'Bass Guitar', 1200.00, 3, 'Classic bass', '2025-09-29 03:40:40'),
(16, 'Ibanez SR500', 'Bass Guitar', 600.00, 4, 'Smooth bass', '2025-09-29 03:40:40'),
(17, 'Warwick Corvette', 'Bass Guitar', 1300.00, 2, 'High-end bass', '2025-09-29 03:40:40'),
(18, 'Korg Microkorg', 'Synthesizer', 500.00, 5, 'Mini synth', '2025-09-29 03:40:40'),
(19, 'Roland FP-30', 'Digital Piano', 700.00, 2, 'Portable piano', '2025-09-29 03:40:40'),
(20, 'Casio Privia PX-160', 'Digital Piano', 400.00, 3, 'Affordable piano', '2025-09-29 03:40:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
