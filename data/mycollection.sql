-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2017 at 04:29 PM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `salary` float(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `address`, `salary`) VALUES
(1, 1, '14228 County Road Road 13, San Acacio, CO 81151', 20500.35),
(2, 2, '82834 County Road Road 14, San Acacio, CO 82828', 15600.45),
(3, 3, '52525 ELLERY DR, COLUMBUS OH 82834', 18050.25),
(4, 4, '23567 ELLERY DR, COLUMBUS OH 22357', 16580.75),
(5, 5, '25368 County Road Road 14, San Acacio, CO 98573', 22000.25),
(6, 6, '52525 ELLERY DR, COLUMBUS OH 82834', 22500.25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `gender`, `created`, `modified`) VALUES
(1, 'avesh', 25, 'Male', '2017-06-05 05:46:09', '2017-06-04 18:30:00'),
(2, 'Sam', 20, 'Male', '2017-06-05 05:46:09', '2017-06-04 18:30:00'),
(3, 'Jack', 22, 'Male', '2017-06-04 18:30:00', '2017-06-04 18:30:00'),
(4, 'Crestina', 22, 'Female', '2017-06-05 05:47:31', '2017-06-04 18:30:00'),
(5, 'Julia', 23, 'Female', '2017-06-05 16:06:53', '2017-06-05 10:36:53'),
(6, 'Alex', 20, 'Male', '2017-06-05 16:07:15', '2017-06-05 10:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE IF NOT EXISTS `user_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `user_id`, `product_name`) VALUES
(1, 1, 'Samsung Galaxy Note 2'),
(2, 1, 'Samsung J3 Pro'),
(3, 2, 'Samsung J3 Pro'),
(4, 2, 'Apple Iphone 6'),
(5, 4, 'OPPO A57'),
(6, 3, 'Mototoral S16'),
(7, 3, 'Nokia 5110');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
