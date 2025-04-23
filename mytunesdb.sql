-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 02:47 PM
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
-- Database: `mytunesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `title` varchar(865) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `artistID` int(11) DEFAULT NULL,
  `genreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albumbadge`
--

CREATE TABLE `albumbadge` (
  `pressingID` int(11) NOT NULL,
  `albumID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albumgenre`
--

CREATE TABLE `albumgenre` (
  `albumGenreID` int(11) NOT NULL,
  `albumID` int(11) DEFAULT NULL,
  `genreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artistID` int(11) NOT NULL,
  `name` varchar(26) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE `cd` (
  `cdID` int(11) NOT NULL,
  `size` decimal(16,5) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countryID` int(11) NOT NULL,
  `countryName` varchar(500) DEFAULT NULL,
  `regionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countrylanguage`
--

CREATE TABLE `countrylanguage` (
  `countryLanguageID` int(11) NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `languageID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currencyID` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entityimages`
--

CREATE TABLE `entityimages` (
  `entityImageID` int(11) NOT NULL,
  `imageID` int(11) DEFAULT NULL,
  `artistID` int(11) DEFAULT NULL,
  `albumID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `featureID` int(11) NOT NULL,
  `trackID` int(11) DEFAULT NULL,
  `artistID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `fileID` int(11) NOT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `trackID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `imageID` int(11) NOT NULL,
  `url` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `languageID` int(11) NOT NULL,
  `languageName` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherproduct`
--

CREATE TABLE `otherproduct` (
  `otherProductID` int(11) NOT NULL,
  `size` decimal(16,5) DEFAULT NULL,
  `material` varchar(500) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `paymentStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `paymentMethodID` int(11) NOT NULL,
  `methodName` varchar(204) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlistID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlisttrack`
--

CREATE TABLE `playlisttrack` (
  `trackPlaylistID` int(11) NOT NULL,
  `playlistID` int(11) DEFAULT NULL,
  `trackID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `artistID` int(11) DEFAULT NULL,
  `productTypeID` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantityStock` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `productTypeID` int(11) NOT NULL,
  `wearableID` int(11) DEFAULT NULL,
  `cdID` int(11) DEFAULT NULL,
  `vinylID` int(11) DEFAULT NULL,
  `otherProductID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `regionID` int(11) NOT NULL,
  `regionName` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscriptionID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `subscriptionType` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `trackID` int(11) NOT NULL,
  `title` varchar(865) DEFAULT NULL,
  `albumID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(26) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pressingID` int(11) DEFAULT NULL,
  `countryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vinyl`
--

CREATE TABLE `vinyl` (
  `vinylID` int(11) NOT NULL,
  `size` decimal(16,5) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wearable`
--

CREATE TABLE `wearable` (
  `wearableID` int(11) NOT NULL,
  `material` varchar(500) DEFAULT NULL,
  `size` decimal(16,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `artistID` (`artistID`),
  ADD KEY `genreID` (`genreID`);

--
-- Indexes for table `albumbadge`
--
ALTER TABLE `albumbadge`
  ADD PRIMARY KEY (`pressingID`),
  ADD KEY `albumID` (`albumID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `albumgenre`
--
ALTER TABLE `albumgenre`
  ADD PRIMARY KEY (`albumGenreID`),
  ADD KEY `albumID` (`albumID`),
  ADD KEY `genreID` (`genreID`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistID`);

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`cdID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryID`),
  ADD KEY `regionID` (`regionID`);

--
-- Indexes for table `countrylanguage`
--
ALTER TABLE `countrylanguage`
  ADD PRIMARY KEY (`countryLanguageID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `languageID` (`languageID`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currencyID`);

--
-- Indexes for table `entityimages`
--
ALTER TABLE `entityimages`
  ADD PRIMARY KEY (`entityImageID`),
  ADD KEY `imageID` (`imageID`),
  ADD KEY `artistID` (`artistID`),
  ADD KEY `albumID` (`albumID`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`featureID`),
  ADD KEY `trackID` (`trackID`),
  ADD KEY `artistID` (`artistID`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`fileID`),
  ADD KEY `trackID` (`trackID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imageID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`languageID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `paymentID` (`paymentID`);

--
-- Indexes for table `otherproduct`
--
ALTER TABLE `otherproduct`
  ADD PRIMARY KEY (`otherProductID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `currencyID` (`currencyID`),
  ADD KEY `paymentMethodID` (`paymentMethodID`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`paymentMethodID`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlistID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `playlisttrack`
--
ALTER TABLE `playlisttrack`
  ADD PRIMARY KEY (`trackPlaylistID`),
  ADD KEY `playlistID` (`playlistID`),
  ADD KEY `trackID` (`trackID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `artistID` (`artistID`),
  ADD KEY `productTypeID` (`productTypeID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`productTypeID`),
  ADD KEY `wearableID` (`wearableID`),
  ADD KEY `cdID` (`cdID`),
  ADD KEY `vinylID` (`vinylID`),
  ADD KEY `otherProductID` (`otherProductID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`regionID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscriptionID`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`trackID`),
  ADD KEY `albumID` (`albumID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD PRIMARY KEY (`vinylID`);

--
-- Indexes for table `wearable`
--
ALTER TABLE `wearable`
  ADD PRIMARY KEY (`wearableID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`),
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`);

--
-- Constraints for table `albumbadge`
--
ALTER TABLE `albumbadge`
  ADD CONSTRAINT `albumbadge_ibfk_1` FOREIGN KEY (`albumID`) REFERENCES `album` (`albumID`),
  ADD CONSTRAINT `albumbadge_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `albumgenre`
--
ALTER TABLE `albumgenre`
  ADD CONSTRAINT `albumgenre_ibfk_1` FOREIGN KEY (`albumID`) REFERENCES `album` (`albumID`),
  ADD CONSTRAINT `albumgenre_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`regionID`) REFERENCES `region` (`regionID`);

--
-- Constraints for table `countrylanguage`
--
ALTER TABLE `countrylanguage`
  ADD CONSTRAINT `countrylanguage_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`),
  ADD CONSTRAINT `countrylanguage_ibfk_2` FOREIGN KEY (`languageID`) REFERENCES `language` (`languageID`);

--
-- Constraints for table `entityimages`
--
ALTER TABLE `entityimages`
  ADD CONSTRAINT `entityimages_ibfk_1` FOREIGN KEY (`imageID`) REFERENCES `image` (`imageID`),
  ADD CONSTRAINT `entityimages_ibfk_2` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`),
  ADD CONSTRAINT `entityimages_ibfk_3` FOREIGN KEY (`albumID`) REFERENCES `album` (`albumID`);

--
-- Constraints for table `feature`
--
ALTER TABLE `feature`
  ADD CONSTRAINT `feature_ibfk_1` FOREIGN KEY (`trackID`) REFERENCES `track` (`trackID`),
  ADD CONSTRAINT `feature_ibfk_2` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`trackID`) REFERENCES `track` (`trackID`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`currencyID`) REFERENCES `currency` (`currencyID`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`paymentMethodID`) REFERENCES `paymentmethod` (`paymentMethodID`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `playlisttrack`
--
ALTER TABLE `playlisttrack`
  ADD CONSTRAINT `playlisttrack_ibfk_1` FOREIGN KEY (`playlistID`) REFERENCES `playlist` (`playlistID`),
  ADD CONSTRAINT `playlisttrack_ibfk_2` FOREIGN KEY (`trackID`) REFERENCES `track` (`trackID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`productTypeID`) REFERENCES `producttype` (`productTypeID`);

--
-- Constraints for table `producttype`
--
ALTER TABLE `producttype`
  ADD CONSTRAINT `producttype_ibfk_1` FOREIGN KEY (`wearableID`) REFERENCES `wearable` (`wearableID`),
  ADD CONSTRAINT `producttype_ibfk_2` FOREIGN KEY (`cdID`) REFERENCES `cd` (`cdID`),
  ADD CONSTRAINT `producttype_ibfk_3` FOREIGN KEY (`vinylID`) REFERENCES `vinyl` (`vinylID`),
  ADD CONSTRAINT `producttype_ibfk_4` FOREIGN KEY (`otherProductID`) REFERENCES `otherproduct` (`otherProductID`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`albumID`) REFERENCES `album` (`albumID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
