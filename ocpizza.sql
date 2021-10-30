-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg50.eigbox.net
-- Generation Time: Aug 26, 2018 at 02:30 PM
-- Server version: 5.6.37
-- PHP Version: 4.4.9
-- 
-- Database: `ocpizza`
-- 

-- --------------------------------------------------------

-- 
-- Create database
-- 

CREATE DATABASE ocpizza;

-- 
-- Table structure for table `customer`
-- 

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(70) NOT NULL,
  `customerAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `customer`
-- 

INSERT INTO `customer` VALUES (1, 'Gildas Milandou', 'Nyamkye junction, mambo', '0543392881');
INSERT INTO `customer` VALUES (2, 'Laurencia Tchivembi', 'Nyamkye junction, mambo', '0241068166');
INSERT INTO `customer` VALUES (3, 'Ruchel Milandou', 'Nyamekye junction, Mambo', '0549809338');
INSERT INTO `customer` VALUES (4, 'Fresnel Missamou', 'Nyamkye junction, mambo', '0579038993');

-- --------------------------------------------------------

-- 
-- Table structure for table `deliveryMan`
-- 

CREATE TABLE `deliveryMan` (
  `deliveryManId` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(40) NOT NULL,
  `firstName` varchar(70) NOT NULL,
  PRIMARY KEY (`deliveryManId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `deliveryMan`
-- 

INSERT INTO `deliveryMan` VALUES (1, 'Fred', 'Kispe');
INSERT INTO `deliveryMan` VALUES (2, 'Brown', 'Boris');
INSERT INTO `deliveryMan` VALUES (3, 'Stepen', 'Yao');

-- --------------------------------------------------------

-- 
-- Table structure for table `order`
-- 

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `subOrderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `deliveryManId` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `subOrderId` (`subOrderId`),
  KEY `customerId` (`customerId`),
  KEY `deliveryManId` (`deliveryManId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `order`
-- 

INSERT INTO `order` VALUES (1, 4, 2, 3, '0000-00-00');
INSERT INTO `order` VALUES (2, 1, 3, 3, '0000-00-00');
INSERT INTO `order` VALUES (3, 2, 4, 1, '0000-00-00');
INSERT INTO `order` VALUES (4, 3, 1, 2, '0000-00-00');

-- --------------------------------------------------------

-- 
-- Table structure for table `pizza`
-- 

CREATE TABLE `pizza` (
  `pizzaId` int(11) NOT NULL AUTO_INCREMENT,
  `pizzaName` varchar(30) NOT NULL,
  `pizzaDesc` varchar(70) NOT NULL,
  `pizzaPrice` double NOT NULL,
  `currency` varchar(3) NOT NULL,
  `avlQuantity` int(11) NOT NULL,
  PRIMARY KEY (`pizzaId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `pizza`
-- 

INSERT INTO `pizza` VALUES (1, 'Fruity Pizza', 'Pineapple, Peaches, Apple, Raisin', 10, 'EUR', 20);
INSERT INTO `pizza` VALUES (2, 'Supreme Pizza', 'Pepperoni, Beef, Chicken, Sausage', 15, 'EUR', 15);
INSERT INTO `pizza` VALUES (3, 'Margherita', 'cheese,tomato sauce', 12, 'EUR', 7);
INSERT INTO `pizza` VALUES (4, 'BBQ Chicken', 'BBQ Chicken, Sausage, Green pepper', 16, 'EUR', 15);
INSERT INTO `pizza` VALUES (5, 'Tex Mex Pizza	', 'Ground beef, Tomato, Red Onion', 16, 'EUR', 30);
INSERT INTO `pizza` VALUES (6, 'Veggie Lovers', 'Green pepper, Yellow, Pepper, Red Onion', 15, 'EUR', 20);
INSERT INTO `pizza` VALUES (7, 'Ten Topping Pizza', 'Pepperoni, Sausage, Beef, Chicken', 20, 'EUR', 25);
INSERT INTO `pizza` VALUES (8, 'Steak House Pizza', 'Angus, Sirlion', 16, 'EUR', 18);

-- --------------------------------------------------------

-- 
-- Table structure for table `subOrder`
-- 

CREATE TABLE `subOrder` (
  `subOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `pizzaId` int(11) NOT NULL,
  `pizzaQuantity` int(11) NOT NULL,
  `totalAmt` double NOT NULL,
  `currency` varchar(3) NOT NULL,
  PRIMARY KEY (`subOrderId`),
  KEY `pizzaId` (`pizzaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `subOrder`
-- 

INSERT INTO `subOrder` VALUES (1, 2, 2, 30, 'EUR');
INSERT INTO `subOrder` VALUES (2, 1, 3, 60, 'EUR');
INSERT INTO `subOrder` VALUES (3, 7, 2, 40, 'EUR');
INSERT INTO `subOrder` VALUES (4, 8, 2, 32, 'EUR');
