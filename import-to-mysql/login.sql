-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:43 AM
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` text NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `rating`, `price`) VALUES
(1, 'Ikan Gurame', 'https://th.bing.com/th/id/OIP.Kjldysw4bE_iH23bBFHRQAHaE5?rs=1&pid=ImgDetMain', 4.5, 25000.00),
(2, 'Ikan Nila', 'https://th.bing.com/th/id/OIP.Rk_RFgXZ4pGaZrb5rHvclAHaE8?rs=1&pid=ImgDetMain', 4.2, 16000.00),
(3, 'Ikan Mas', 'https://th.bing.com/th/id/OIP.AcyCs5GF9GqnO4nKpVx8rAHaD4?rs=1&pid=ImgDetMain', 4.8, 28000.00),
(11, 'Kepiting', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS49EZPrfx7LILmBkOBdaZnvaTZzT_sJY8zJw&s', 4.4, 60000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(4, 'aku', '$2b$10$Kn.4n8TOKpBCqHNkChWUZuCBrX30caY6tKdeA8aSEk3rr0P8EB7G2'),
(5, 'user', '$2b$10$Fd.Rd/jE4ED4L0Sn86RlMuzb2aGpkHHsMRucOEbniPJzYn1xPMJWu'),
(6, 'asd', '$2b$10$fXn4EF226Zez.JKpkDRsiupbDggYUabCcsKUAk1AkDVkojOKjT8e.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
