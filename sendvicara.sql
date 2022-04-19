-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2014 at 07:44 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sendvicara`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllOrders`()
BEGIN

	SELECT * FROM orders;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllOrdersByUser`(
        IN username VARCHAR(50)
    )
BEGIN
	SELECT * FROM orders 
    WHERE orders.`username` = username;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUsers`(
        IN username VARCHAR(50)
    )
BEGIN

	SELECT * 
    FROM users AS u 
    WHERE u.username = username;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAlUser`()
BEGIN
SELECT * FROM users;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertOrder`(
        IN username VARCHAR(50),
        IN tip VARCHAR(20),
        IN salata TINYINT(1),
        IN piper TINYINT(1),
        IN pomfrit TINYINT(1),
        IN origano TINYINT(1),
        IN sok VARCHAR(20)
    )
BEGIN
INSERT INTO orders
         (
           username                    , 
           tip                      , 
           salata                    , 
           piper                      , 
           pomfrit                     , 
           sok                 
         )
    VALUES 
         ( 
           username                    , 
           tip                      , 
           salata                    , 
           piper                      , 
           origano                     , 
           sok                         
           
         );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(
        IN first_name VARCHAR(50),
        IN last_name VARCHAR(50),
        IN adres VARCHAR(50),
        IN email VARCHAR(50),
        IN username VARCHAR(50),
        IN pasword VARCHAR(50)
    )
BEGIN

    INSERT INTO `users`
         (
           first_name                    , 
           last_name                      , 
           adres                    , 
           email                      , 
           username                     , 
           pasword                 
         )
    VALUES 
         ( 
           first_name                    , 
           last_name                      , 
           adres                    , 
           email                      , 
           username                     , 
           pasword                    
         );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(
        IN username VARCHAR(50),
        IN password VARCHAR(50)
    )
BEGIN

	SELECT * 
    FROM users AS u 
    WHERE u.username = username 
    AND u.pasword = password;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `username` varchar(50) NOT NULL,
  `tip` varchar(20) DEFAULT NULL,
  `salata` bit(1) DEFAULT NULL,
  `piper` bit(1) DEFAULT NULL,
  `pomfrit` bit(1) DEFAULT NULL,
  `origano` bit(1) DEFAULT NULL,
  `sok` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`username`, `tip`, `salata`, `piper`, `pomfrit`, `origano`, `sok`) VALUES
('filip', 'hamburger', b'1', b'0', b'1', NULL, 'Fanta'),
('Blagojce', 'chickenburger', b'1', b'0', b'0', NULL, '7Up'),
('Blagojce', 'chickenburger', b'1', b'1', b'1', NULL, 'Fanta'),
('Blagojce', 'cheeseburger', b'1', b'0', b'1', NULL, 'Fanta'),
('Blagojce', 'chickenburger', b'1', b'0', b'1', NULL, 'CocaCola'),
('Nikola', 'hamburger', b'1', b'0', b'0', NULL, 'Fanta'),
('Blagojce', 'hamburger', b'1', b'0', b'1', NULL, 'Fanta');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `pasword` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `adres`, `email`, `username`, `pasword`) VALUES
('Filip', 'Filipovski', 'Proba2', 'filip@gmail.com', 'filip', 'filip1'),
('Stojan', 'Stojkovski', 'partizanska', 'stojan@gmail.com', 'Stojan', 'stojan123'),
('Blagojce', 'Najdovski', 'Rasanec', 'balee@gmail.com', 'Blagojce', 'bale1223'),
('Nikla', 'Petrovski', 'hedw', 'nikola@gmail.cm', 'Nikola', 'nikola123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
