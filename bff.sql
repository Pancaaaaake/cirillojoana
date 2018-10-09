-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 06:18 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bff`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` varchar(4) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `brgy` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `fname`, `mname`, `lname`, `email`, `city`, `street`, `brgy`, `contact`, `password`) VALUES
('0001', 'Johnrey', 'Cumayas', 'Bacal', 'johnrey.bacal@yahoo.com', 'Pasay', 'Gideon', '90', '2147483647', '12345'),
('0002', 'Lore Jane', 'Tamargo', 'Reyes', 'lorereyes@yahoo.com', 'Pasay', 'Merville', 'Somewhere', '2147483647', '123'),
('0003', 'Christian', 'Manalo', 'Tuvieron', 'ct@yahoo.com', 'Alabang', 'Star Mall', 'Somewhere', '2147483647', '321'),
('0004', 'John Mark', 'Lumbria', 'Sena', 'killah@weststide.nigga', 'Manila', 'Sampaloc', '1', '9770113333', '333');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `inv_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(5) NOT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inv_id`, `name`, `quantity`) VALUES
('1001', 'Spring Type', 100),
('1002', 'Gerberas(6 pcs)', 100),
('1003', 'Gerberas(12 pcs)', 100),
('1004', 'Carnation(6 pcs)', 100),
('1005', 'Carnation(12 pcs)', 100),
('2001', '3 pcs', 89),
('2002', '6 pcs', 90),
('2003', '12 pcs (local)', 92),
('2004', '12 pcs (class A)', 91),
('2005', '12 pcs (imported)', 83),
('3001', 'Flowers w/ Balloons', 100),
('3002', 'Flowers w/ Chocolates', 100),
('3003', 'Wine w/ Flowers', 100),
('3004', 'Wine w/ Fruits', 100),
('3005', 'Wine w/ Flowers & Balloons', 100),
('3006', 'Pastries and flowers in basket', 100),
('3007', 'Flowers w/ Cake', 100),
('3008', 'Fruits, Wine, Flowers, Balloons', 100),
('4001', 'Buttonniere Orchids', 100),
('4002', 'Buttonniere Rose', 100),
('4003', 'Buttonniere Carnation', 100),
('4004', 'Corsage Orchids', 100),
('4005', 'Corsage Rose', 100),
('4006', 'Corsage Carnation 1 pc', 100),
('4007', 'Corsage Carnation 2 pcs', 100),
('4008', 'Wrist Corsage (Carnation 2 pcs)', 100),
('4009', 'Lei', 100),
('4010', 'Sampaguita 4 Lei strings', 100),
('4011', 'Sampaguita 5-7 Lei strings', 100),
('4012', 'Sampaguita 8-9 Lei strings', 100),
('4013', 'Sampaguita 10 Lei strings', 100),
('1101', 'Rounded', 100),
('1102', 'Spread Out', 100),
('1103', 'Rectangular', 100),
('1104', 'One Sided', 100),
('1105', 'Ikebana Style', 100),
('1106', 'Fruit Arrangements', 100),
('2101', 'In Bamboo Stand', 100),
('2102', 'In Wooden Stand w/ one branch', 100),
('2103', 'In driftwood w/ 2 branch', 100),
('2104', 'Ordinary Ribbon', 100),
('2105', 'Ordinary Ribbon w/ decor', 100),
('2106', 'Sinamay Ribbon w/ decor', 100),
('3101', 'Malasian mums', 100),
('3102', 'Malasian mums and Orchids', 100),
('3103', 'All white Orchids', 100),
('3104', 'Orchids and Antrium', 102),
('3105', 'All Antrium', 100),
('3106', 'Tropical Flowers', 100),
('3107', 'Funeral w/ one branch', 100),
('3108', 'Funeral w/ branch in driftwood', 100),
('3109', 'Heart Shaped / Round Wreath (all roses)', 100),
('3110', 'Round Wreat', 100),
('3111', 'Tower Stand', 100),
('3112', 'Coffin Top', 100),
('3113', 'Coffin Corsage (Orchids)', 100),
('3114', 'Coffin Corsage (Cattleya)', 102),
('3115', 'Mass Cards Small', 104),
('3116', 'Mass Cards Medium', 102),
('3117', 'Mass Cards Large', 103);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(4) NOT NULL,
  `client_id` varchar(4) NOT NULL,
  `cart` text NOT NULL,
  `date` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `reference_code` varchar(10) NOT NULL,
  `total_bill` int(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE IF NOT EXISTS `prod` (
  `prod_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`prod_id`, `name`, `price`, `type`) VALUES
('1001', 'Spring Type', 1500, 'Vase'),
('1002', 'Gerberas(6 pcs)', 800, 'Vase'),
('1003', 'Gerberas(12 pcs)', 1500, 'Vase'),
('1004', 'Carnation(6 pcs)', 1000, 'Vase'),
('1005', 'Carnation(12 pcs)', 2000, 'Vase'),
('2001', '3 pcs', 500, 'Rose'),
('2002', '6 pcs', 800, 'Rose'),
('2003', '12 pcs (local)', 1000, 'Rose'),
('2004', '12 pcs (class A)', 2000, 'Rose'),
('2005', '12 pcs (imported)', 4000, 'Rose'),
('3001', 'Flowers with Balloons', 1500, 'Special'),
('3002', 'Flowers with Chocolates', 1800, 'Special'),
('3003', 'Wine with Flowers', 1500, 'Special'),
('3004', 'Wine with Fruits', 2000, 'Special'),
('3005', 'Wine with Flowers and Balloons', 2000, 'Special'),
('3006', 'Pastries and flowers in basket', 1500, 'Special'),
('3007', 'Flowers with Cake', 1000, 'Special'),
('3008', 'Fruits, Wine, Flowers, Balloons', 2500, 'Special'),
('4001', 'Buttonniere Orchids', 50, 'Others'),
('4002', 'Buttonniere Rose', 50, 'Others'),
('4003', 'Buttonniere Carnation', 200, 'Others'),
('4004', 'Corsage Orchids', 200, 'Others'),
('4005', 'Corsage Rose', 200, 'Others'),
('4006', 'Corsage Carnation 1 pc', 200, 'Others'),
('4007', 'Corsage Carnation 2 pcs', 300, 'Others'),
('4008', 'Wrist Corsage (Carnation 2 pcs)', 350, 'Others'),
('4009', 'Lei', 500, 'Others'),
('4010', 'Sampaguita 4 Lei strings', 500, 'Others'),
('4011', 'Sampaguita 5-7 Lei strings', 700, 'Others'),
('4012', 'Sampaguita 8-9 Lei strings', 800, 'Others'),
('4013', 'Sampaguita 10 Lei strings', 1000, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `serv`
--

CREATE TABLE IF NOT EXISTS `serv` (
  `serv_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`serv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serv`
--

INSERT INTO `serv` (`serv_id`, `name`, `price`, `type`) VALUES
('1101', 'Rounded', 1000, 'Arrangement'),
('1102', 'Spread Out', 1200, 'Arrangement'),
('1103', 'Rectangular', 1200, 'Arrangement'),
('1104', 'One Sided', 1200, 'Arrangement'),
('1105', 'Ikebana Style', 1200, 'Arrangement'),
('1106', 'Fruit Arrangements', 1500, 'Arrangement'),
('2101', 'In Bamboo Stand', 3000, 'Inaguaral'),
('2102', 'In Wooden Stand with one branch', 4000, 'Inaguaral'),
('2103', 'In driftwood with 2 branch', 6000, 'Inaguaral'),
('2104', 'Ordinary Ribbon', 600, 'Inaguaral'),
('2105', 'Ordinary Ribbon with decor', 700, 'Inaguaral'),
('2106', 'Sinamay Ribbon with decor', 1500, 'Inaguaral'),
('3101', 'Malasian mums', 2500, 'Funeral'),
('3102', 'Malasian mums and Orchids', 3000, 'Funeral'),
('3103', 'All white Orchids', 3500, 'Funeral'),
('3104', 'Orchids and Antrium', 3500, 'Funeral'),
('3105', 'All Antrium', 4500, 'Funeral'),
('3106', 'Tropical Flowers', 3500, 'Funeral'),
('3107', 'Funeral with one branch', 4000, 'Funeral'),
('3108', 'Funeral with branch in driftwood', 6000, 'Funeral'),
('3109', 'Heart Shaped or Round Wreath (all roses)', 8000, 'Funeral'),
('3110', 'Round Wreat', 8000, 'Funeral'),
('3111', 'Tower Stand', 5000, 'Funeral'),
('3112', 'Coffin Top', 2000, 'Funeral'),
('3113', 'Coffin Corsage (Orchids)', 500, 'Funeral'),
('3114', 'Coffin Corsage (Cattleya)', 1500, 'Funeral'),
('3115', 'Mass Cards Small', 250, 'Funeral'),
('3116', 'Mass Cards Medium', 400, 'Funeral'),
('3117', 'Mass Cards Large', 500, 'Funeral');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `trans_id` varchar(4) NOT NULL,
  `client_id` varchar(4) NOT NULL,
  `cart` text NOT NULL,
  `date` date NOT NULL,
  `total_bill` int(10) NOT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `client_id`, `cart`, `date`, `total_bill`) VALUES
('0001', '0001', '{"0":{"id": "2005","name": "12 pcs (imported)","qty": "2"}}', '2017-10-07', 8500),
('0002', '0001', '{"0":{"id": "2005","name": "12 pcs (imported)","qty": "10"},"1":{"id": "2001","name": "3 pcs","qty": "11"},"2":{"id": "2002","name": "6 pcs","qty": "10"},"3":{"id": "2003","name": "12 pcs (local)","qty": "8"},"4":{"id": "2004","name": "12 pcs (class A)","qty": "9"}}', '2017-10-07', 82500),
('0003', '0001', '{"0":{"id": "2005","name": "12 pcs (imported)","qty": "5"}}', '2017-10-08', 21500);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
