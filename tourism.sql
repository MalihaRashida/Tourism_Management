-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2019 at 11:48 AM
-- Server version: 10.1.38-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toktak_Hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ac_Room_Fair`
--

CREATE TABLE `Ac_Room_Fair` (
  `Hotel_ID` bigint(20) NOT NULL,
  `SingleBed` double NOT NULL,
  `DoubleBed` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ac_Room_Fair`
--

INSERT INTO `Ac_Room_Fair` (`Hotel_ID`, `SingleBed`, `DoubleBed`) VALUES
(17032019114710, 2000, 3500),
(17032019115014, 2400, 3500),
(17032019115335, 2000, 3500),
(17032019115456, 2000, 3500),
(17032019115514, 2000, 3500),
(17032019115551, 1700, 3200),
(17032019115703, 1700, 3200),
(17032019115757, 2200, 3500),
(17032019120839, 2700, 4750),
(16032019051242, 1200, 5000),
(0, 1200, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `Division`
--

CREATE TABLE `Division` (
  `Division` int(11) NOT NULL,
  `Division_Name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Division`
--

INSERT INTO `Division` (`Division`, `Division_Name`) VALUES
(1, 'Dhaka'),
(2, 'Chottogram'),
(3, 'Mymensingh'),
(4, 'Sylhet'),
(5, 'Rajshahi'),
(6, 'Khulna'),
(7, 'Rangpur'),
(8, 'Barisal');

-- --------------------------------------------------------

--
-- Table structure for table `Hotel_Details`
--

CREATE TABLE `Hotel_Details` (
  `Hotel_Name` varchar(30) DEFAULT NULL,
  `Local_address` varchar(500) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Division` varchar(20) NOT NULL,
  `Room_No` int(11) NOT NULL,
  `Hotel_ID` bigint(11) NOT NULL,
  `email_address` varchar(250) DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hotel_Details`
--

INSERT INTO `Hotel_Details` (`Hotel_Name`, `Local_address`, `District`, `Division`, `Room_No`, `Hotel_ID`, `email_address`, `contact_no`) VALUES
('Saint Martin Resort ', ' Plot No.- 10, Block-A, Kalatali Road, 4700 \r\n', 'Coxs Bazar', 'Chottogram', 85, 2147483647, 'http://www.saintmartinresortbd.com/', '01819-809057'),
('Hotel Noorjahan Grand', 'Waves 1, Dargah Gate, Sylhet 3100', 'Sylhet', 'Sylhet', 85, 0, 'https://www.noorjahangrand.com/', '01930-111666'),
('Rose View Hotel', 'House-21,Road-22, Block-D Shahjalal Upashahar Main Rd, Sylhet 3100', 'Sylhet', 'Sylhet', 85, 16032019051242, 'http://www.roseviewhotel.com/', '0821-721835'),
('Hotel Star Pacific', ' 982, East Dargah Gate, Sylhet', 'Sylhet', 'Sylhet', 85, 16032019051307, 'http://www.hotelstarpacific.com/', '0821-727945'),
('Hotel Prince ', 'Dowel Cattar Parjatan Road, Old Bus Stand, Rangamati 4500', 'Rangamati', 'Chottogram', 50, 17032019115514, 'http://hotelprincebd.com/', '0351-61602'),
('Parjatan Holiday Complex', 'Hanging Bridge Road, 4500 Rangamati', 'Rangamati', 'Chottogram', 50, 17032019115456, 'https://parjatan.portal.gov.bd/site/page/605f5cc8-1963-47bf-aa57-583065c1146d/-\r\n', '01991-139037'),
('Hill Taj Resort', '06Hill Taj Resort, Rangamati Sadar Upojila ', 'Rangamati', 'Chottogram', 50, 17032019115335, 'https://www.tajhotels.com/?gclid=CjwKCAjwp_zkBRBBEiwAndwD9S-omhGnLoO-TbsRv7p4-b6Cqpz7HA5IsLdK8hHZjHogRvLQugcmnBoCHq4QAvD_BwE&gclsrc=aw.ds', '01713-148841'),
('Long Beach Hotel', '14 Kalatoli Road, Hotel-Motel Zone, Coxs Bazar', 'Coxs Bazar', 'Chottogram', 100, 17032019115014, 'https://longbeachhotelbd.com/', '01755-660051'),
('Pebble Stone Sea Resort', 'Marine Drive Road, Inani Beach, Coxs Bazar 4705', 'Coxs Bazar', 'Chottogram', 100, 17032019114710, 'https://www.pebble-stoneinanibd.com/index1.html', '01755-660051'),
('Moti Mahal', 'Hanging Bridge Road, 4500 Rangamati', 'Rangamati', 'Chottogram', 50, 17032019115551, 'https://www.booking.com/hotel/bd/moti-mahal.en-gb.html?aid=356980;label=gog235jc-1DCAsoFEIKbW90aS1tYWhhbEgzWANoFIgBAZgBCbgBGcgBDNgBA-gBAYgCAagCA7gCmeH-5AXAAgE;sid=abdd4a6ac6473be2f1e8d03fb20d0984;dist=0&keep_landing=1&sb_price_type=total&type=total&', '01705-373730'),
('Royal Beach Resort', 'Plot # B, 64-PWD Hotel Zone | Kolatoli', 'Coxs Bazar', 'Chottogram', 50, 17032019115703, 'http://www.royalbeachbd.com/', '01708-777774'),
('Inani Royal Resort', 'Marine Drive Road, Inani, Ukhia, Coxs Bazar 4750', 'Coxs Bazar', 'Chottogram', 50, 17032019115757, 'http://www.inaniroyalresort.com/', '01952-227744'),
('Hotel Sea Alif', 'Plot # 16, Block # B, Kolatoli Road', 'Coxs Bazar', 'Chottogram', 50, 17032019120839, 'www.hotelseaalif.com', '01715-755112'),
('hotel shaikat', 'station road', 'chottogram', 'chottogram', 40, 17032019020516, 'https://www.agoda.com/en-gb/pages/agoda/default/DestinationSearchResult.aspx?city=512855&site_id=1646622&tag=7ec91090-37a8-422e-2160-4131a4b0a2b7&device=c&network=g&adid=326016141786&rand=2357542603749430634&expid=&adpos=1t1&gclid=CjwKCAjwp_zkBRBBEiw', '01991-139143');

-- --------------------------------------------------------

--
-- Table structure for table `Hotel_Pictures`
--

CREATE TABLE `Hotel_Pictures` (
  `Hotel_ID` bigint(20) NOT NULL,
  `image_path` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hotel_Pictures`
--

INSERT INTO `Hotel_Pictures` (`Hotel_ID`, `image_path`) VALUES
(0, 'http://tourist.toktakprogramming.org/img/HotelPictures/Hotel Noorjahan Grand3.webp'),
(16032019051242, 'http://tourist.toktakprogramming.org/img/HotelPictures/Rose View Hotel3.jpg'),
(16032019051307, 'http://tourist.toktakprogramming.org/img/HotelPictures/Hotel Star Pacific3.jpg'),
(17032019114710, 'http://tourist.toktakprogramming.org/img/HotelPictures/Pebble Stone Sea Resort4.jpg'),
(17032019115014, 'http://tourist.toktakprogramming.org/img/HotelPictures/Long Beach Hotel4.jpg'),
(17032019115335, 'http://tourist.toktakprogramming.org/img/HotelPictures/Hill Taj Resort2.jpg'),
(17032019115456, 'http://tourist.toktakprogramming.org/img/HotelPictures/Parjatan Holiday Complex3.jpeg'),
(17032019115551, 'http://tourist.toktakprogramming.org/img/HotelPictures/Moti Mahal Opens in new window.jpg'),
(17032019115703, 'http://tourist.toktakprogramming.org/img/HotelPictures/RoyalBeach13.jpg'),
(17032019115757, 'http://tourist.toktakprogramming.org/img/HotelPictures/Inani Royal Resort3.jpg'),
(17032019120839, 'http://tourist.toktakprogramming.org/img/HotelPictures/Hotel Sea Alif3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `Hotel_Room_Fairs`
--

CREATE TABLE `Hotel_Room_Fairs` (
  `Hotel_ID` bigint(20) NOT NULL,
  `Ac_Room` int(11) NOT NULL,
  `Non_Ac_Room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hotel_Room_Fairs`
--

INSERT INTO `Hotel_Room_Fairs` (`Hotel_ID`, `Ac_Room`, `Non_Ac_Room`) VALUES
(17032019115014, 1, 1),
(17032019114710, 1, 1),
(17032019115335, 1, 1),
(17032019115456, 1, 1),
(17032019115514, 1, 1),
(17032019115551, 1, 1),
(17032019115703, 1, 1),
(17032019115757, 1, 1),
(17032019120839, 1, 1),
(16032019051242, 1, 1),
(0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` int(11) NOT NULL,
  `person_email` varchar(50) NOT NULL,
  `person_password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`id`, `person_email`, `person_password`) VALUES
(1, 'u1404080@student.cuet.ac.bd', '1234'),
(2, 'abcd@gmail.com', '123'),
(3, 'u1304120@student.cuet.ac.bd', '123456'),
(4, 'kk@cuet.com', '1263'),
(5, 'kk@cuet', '123'),
(6, 'asdgfsda@com', '123'),
(7, 'ras@gmail', '123'),
(8, 'u1304052@student.cuet.ac.bd', '123456'),
(9, 'u1304120@student.cuet.ac.bd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `Non_Ac_Room_Fair`
--

CREATE TABLE `Non_Ac_Room_Fair` (
  `Hotel_ID` bigint(20) NOT NULL,
  `SingleBed` double NOT NULL,
  `DoubleBed` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Non_Ac_Room_Fair`
--

INSERT INTO `Non_Ac_Room_Fair` (`Hotel_ID`, `SingleBed`, `DoubleBed`) VALUES
(17032019114710, 1000, 2000),
(17032019115014, 1100, 2000),
(17032019115335, 800, 1500),
(17032019115456, 800, 1500),
(17032019115514, 800, 1500),
(17032019115551, 850, 1400),
(17032019115703, 850, 1400),
(17032019115757, 1200, 4500),
(17032019120839, 2000, 3500),
(16032019051242, 1000, 4000),
(0, 1000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `Places`
--

CREATE TABLE `Places` (
  `Division` int(11) NOT NULL,
  `Place_Id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Places`
--

INSERT INTO `Places` (`Division`, `Place_Id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(6, 49),
(6, 50),
(6, 51),
(6, 52),
(6, 53),
(6, 54),
(6, 55),
(6, 56),
(7, 57),
(7, 58),
(7, 59),
(7, 60),
(7, 61),
(7, 62),
(7, 63),
(7, 64),
(7, 65),
(7, 66),
(8, 7),
(8, 67),
(8, 68),
(8, 69),
(8, 70),
(8, 71),
(8, 72),
(8, 73),
(8, 74),
(8, 75),
(8, 76),
(8, 77),
(8, 78),
(8, 79),
(8, 81);

-- --------------------------------------------------------

--
-- Table structure for table `Place_Details`
--

CREATE TABLE `Place_Details` (
  `Place_id` int(11) NOT NULL,
  `Place_Name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Place_Details`
--

INSERT INTO `Place_Details` (`Place_id`, `Place_Name`) VALUES
(1, 'Lalbagh Fort'),
(2, 'Shaheed Minar, Dhaka'),
(3, 'Bara Katra'),
(4, 'Dhaka Gate'),
(5, 'North Brook Hall, Lalkuthi, Banglabazar'),
(6, 'Ahsan Manzil'),
(7, 'Mausoleum of President Ziaur Rahman'),
(8, 'Bangladesh National Museum'),
(10, 'Mohera Jamindar Bari'),
(11, 'Panam Nagar'),
(12, 'Shaheed Minar, Dhaka'),
(13, 'Dhalapara ChowdhuryBari'),
(14, 'Atiya Jame Masjid'),
(15, 'Himchori Waterfall and hill track'),
(16, 'Meghla Parjatan Complex'),
(17, 'Amiakum Water Fall'),
(18, 'Guliakhali Sea Beach'),
(19, 'Alutila Cave'),
(20, 'Risang Waterfall'),
(21, 'Rangamati Hanging Bridge'),
(22, 'Richhang Waterfall'),
(23, 'Chandranath Peak'),
(24, 'Sea Inn Beach Point'),
(25, 'Sugondha Beach Point'),
(26, 'Moyna Deep'),
(27, 'Hasan Monzil'),
(28, 'Melandah Shahid Minar'),
(29, 'China Matir Pahar'),
(30, 'Raj Tilla/Tiger Hill'),
(31, 'Ratargul Swamp Forest'),
(32, 'Tanguar haor'),
(33, 'Madhabkunda waterfall'),
(34, 'Bisnakandi Tourist Spot'),
(35, 'Lawachara National Park'),
(36, 'HumHum Waterfall'),
(37, 'Jaflong Zero Point'),
(38, 'Madhabpur Lake'),
(39, 'Bisnakandi Waterfall, Sylhet'),
(40, 'Shahid Siraj Lake'),
(41, 'Hard Point'),
(42, 'Oddvar Munksgaard Park'),
(43, 'Bagha Mosque'),
(44, 'Hatgram Sonali Sowikot'),
(45, 'Prem Jamunar Ghat'),
(46, 'Natore Rajbari'),
(47, 'Jobai Beel'),
(48, 'Natore P.T.I Mor'),
(50, 'Sixty Dome Mosque'),
(51, 'Hiron Point-B.D'),
(52, 'Chunakhola Masjid'),
(53, 'Singair Mosque'),
(54, 'Khan Jahan Ali Majar Dighi'),
(55, 'Singair Mosque'),
(56, 'Lake Paar'),
(57, 'Saniajan Dam'),
(58, 'Nayabad Mosque'),
(59, 'Puran Bridge (old bridge)'),
(60, 'Atrai Bridge, khansama, dinajpur'),
(61, 'Tangon River'),
(62, 'Bangabandhu Square'),
(63, 'Banglabandha Zero Point'),
(64, 'Mojumder Bazzar Charmatha'),
(65, 'Monalisha Garden'),
(66, 'Kawaler Dighi'),
(67, 'Kuakata Sea Beach'),
(68, 'Haringhata Eco Tourism '),
(69, 'Sonar Char Sea Beach'),
(70, 'Lebur Bon'),
(71, 'Elisha Ghat'),
(72, 'Durga Sagar'),
(73, 'Betua Tourist Place'),
(74, 'Meghna sea beach'),
(75, 'Gangamati Sea Beach'),
(76, 'Lakhutia Zamindar Bari'),
(77, 'Sunset Point'),
(78, 'Red Crab Beach'),
(79, 'Kirtipasha Zamindar Bari'),
(81, 'Fulbunia Island'),
(82, 'Nafa-khum'),
(83, 'Sangu River View Point'),
(84, 'Chingri Jhiri'),
(85, 'Raikkhyang Lake'),
(86, 'Nilachal Parjatan Center');

-- --------------------------------------------------------

--
-- Table structure for table `Place_Image`
--

CREATE TABLE `Place_Image` (
  `Place_Id` int(11) NOT NULL,
  `Image_Path` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Place_Image`
--

INSERT INTO `Place_Image` (`Place_Id`, `Image_Path`) VALUES
(1, 'http://tourist.toktakprogramming.org/img/places/lalbagh Fort1.jpg'),
(1, 'http://tourist.toktakprogramming.org/img/places/lalbagh Fort2.jpg'),
(2, 'http://tourist.toktakprogramming.org/img/places/2.JPG'),
(3, 'http://tourist.toktakprogramming.org/img/places/3.jpg'),
(4, 'http://tourist.toktakprogramming.org/img/places/4.jpeg'),
(5, 'http://tourist.toktakprogramming.org/img/places/24.jpeg'),
(6, 'http://tourist.toktakprogramming.org/img/places/20.jpeg'),
(7, 'http://tourist.toktakprogramming.org/img/places/18.jpeg'),
(8, 'http://tourist.toktakprogramming.org/img/places/16.jpeg'),
(9, 'http://tourist.toktakprogramming.org/img/places/80.jpeg'),
(10, 'http://tourist.toktakprogramming.org/img/places/10.jpeg'),
(11, 'http://tourist.toktakprogramming.org/img/places/11.jpeg'),
(12, 'http://tourist.toktakprogramming.org/img/places/11.jpeg'),
(13, 'http://tourist.toktakprogramming.org/img/places/13.jpeg'),
(14, 'http://tourist.toktakprogramming.org/img/places/14.jpeg'),
(15, 'http://tourist.toktakprogramming.org/img/places/15.jpeg'),
(16, 'http://tourist.toktakprogramming.org/img/places/16.jpeg'),
(17, 'http://tourist.toktakprogramming.org/img/places/17.jpeg'),
(18, 'http://tourist.toktakprogramming.org/img/places/18.jpeg'),
(19, 'http://tourist.toktakprogramming.org/img/places/19.jpeg'),
(20, 'http://tourist.toktakprogramming.org/img/places/20.jpeg'),
(21, 'http://tourist.toktakprogramming.org/img/places/21.jpeg'),
(22, 'http://tourist.toktakprogramming.org/img/places/22.jpeg'),
(23, 'http://tourist.toktakprogramming.org/img/places/23.jpg'),
(24, 'http://tourist.toktakprogramming.org/img/places/2.jpeg'),
(24, 'http://tourist.toktakprogramming.org/img/places/24.jpeg'),
(25, 'http://tourist.toktakprogramming.org/img/places/25.jpeg'),
(26, 'http://tourist.toktakprogramming.org/img/places/26.jpeg'),
(27, 'http://tourist.toktakprogramming.org/img/places/27.jpeg'),
(28, 'http://tourist.toktakprogramming.org/img/places/28.jpeg'),
(29, 'http://tourist.toktakprogramming.org/img/places/29.jpeg'),
(30, 'http://tourist.toktakprogramming.org/img/places/30.jpeg'),
(31, 'http://tourist.toktakprogramming.org/img/places/31.jpeg'),
(32, 'http://tourist.toktakprogramming.org/img/places/32.jpeg'),
(33, 'http://tourist.toktakprogramming.org/img/places/33.jpeg'),
(34, 'http://tourist.toktakprogramming.org/img/places/34.jpeg'),
(35, 'http://tourist.toktakprogramming.org/img/places/35.jpg'),
(36, 'http://tourist.toktakprogramming.org/img/places/36.jpeg'),
(37, 'http://tourist.toktakprogramming.org/img/places/37.jpg'),
(38, 'http://tourist.toktakprogramming.org/img/places/38.jpeg'),
(39, 'http://tourist.toktakprogramming.org/img/places/39.jpg'),
(40, 'http://tourist.toktakprogramming.org/img/places/.jpg'),
(41, 'http://tourist.toktakprogramming.org/img/places/41.jpeg'),
(42, 'http://tourist.toktakprogramming.org/img/places/42.jpeg'),
(43, 'http://tourist.toktakprogramming.org/img/places/43.jpeg'),
(44, 'http://tourist.toktakprogramming.org/img/places/44.jpeg'),
(45, 'http://tourist.toktakprogramming.org/img/places/45.jpg'),
(46, 'http://tourist.toktakprogramming.org/img/places/46.jpeg'),
(47, 'http://tourist.toktakprogramming.org/img/places/47.jpeg'),
(48, 'http://tourist.toktakprogramming.org/img/places/48.jpeg'),
(49, 'http://tourist.toktakprogramming.org/img/places/48.jpeg'),
(50, 'http://tourist.toktakprogramming.org/img/places/50.jpeg'),
(51, 'http://tourist.toktakprogramming.org/img/places/51.jpeg'),
(52, 'http://tourist.toktakprogramming.org/img/places/52.jpeg'),
(53, 'http://tourist.toktakprogramming.org/img/places/53.jpeg'),
(54, 'http://tourist.toktakprogramming.org/img/places/54.jpeg'),
(55, 'http://tourist.toktakprogramming.org/img/places/55.jpeg'),
(56, 'http://tourist.toktakprogramming.org/img/places/56.jpeg'),
(57, 'http://tourist.toktakprogramming.org/img/places/57.jpeg'),
(58, 'http://tourist.toktakprogramming.org/img/places/58.jpeg'),
(59, 'http://tourist.toktakprogramming.org/img/places/59.jpeg'),
(60, 'http://tourist.toktakprogramming.org/img/places/60.jpeg'),
(61, 'http://tourist.toktakprogramming.org/img/places/61.jpeg'),
(62, 'http://tourist.toktakprogramming.org/img/places/62.jpg'),
(63, 'http://tourist.toktakprogramming.org/img/places/63.jpeg'),
(64, 'http://tourist.toktakprogramming.org/img/places/64.jpg'),
(65, 'http://tourist.toktakprogramming.org/img/places/65.jpg'),
(66, 'http://tourist.toktakprogramming.org/img/places/66.jpg'),
(67, 'http://tourist.toktakprogramming.org/img/places/67.jpg'),
(68, 'http://tourist.toktakprogramming.org/img/places/68.jpeg'),
(69, 'http://tourist.toktakprogramming.org/img/places/69.jpeg'),
(70, 'http://tourist.toktakprogramming.org/img/places/70.jpeg'),
(71, 'http://tourist.toktakprogramming.org/img/places/71.jpeg'),
(72, 'http://tourist.toktakprogramming.org/img/places/72.jpg'),
(73, 'http://tourist.toktakprogramming.org/img/places/73.jpg'),
(74, 'http://tourist.toktakprogramming.org/img/places/74.jpg'),
(75, 'http://tourist.toktakprogramming.org/img/places/75.jpeg'),
(76, 'http://tourist.toktakprogramming.org/img/places/76.jpeg'),
(77, 'http://tourist.toktakprogramming.org/img/places/77.jpg'),
(78, 'http://tourist.toktakprogramming.org/img/places/78.jpeg'),
(79, 'http://tourist.toktakprogramming.org/img/places/79.jpeg'),
(80, 'http://tourist.toktakprogramming.org/img/places/80.jpeg'),
(81, 'http://tourist.toktakprogramming.org/img/places/81.jpg'),
(82, 'http://tourist.toktakprogramming.org/img/places/82.jpeg'),
(83, 'http://tourist.toktakprogramming.org/img/places/83.jpeg'),
(84, 'http://tourist.toktakprogramming.org/img/places/84.jpeg'),
(85, 'http://tourist.toktakprogramming.org/img/places/85.jpeg'),
(86, 'http://tourist.toktakprogramming.org/img/places/86.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ac_Room_Fair`
--
ALTER TABLE `Ac_Room_Fair`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `Division`
--
ALTER TABLE `Division`
  ADD PRIMARY KEY (`Division`);

--
-- Indexes for table `Hotel_Details`
--
ALTER TABLE `Hotel_Details`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `Hotel_Pictures`
--
ALTER TABLE `Hotel_Pictures`
  ADD PRIMARY KEY (`Hotel_ID`,`image_path`);

--
-- Indexes for table `Hotel_Room_Fairs`
--
ALTER TABLE `Hotel_Room_Fairs`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Non_Ac_Room_Fair`
--
ALTER TABLE `Non_Ac_Room_Fair`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `Places`
--
ALTER TABLE `Places`
  ADD PRIMARY KEY (`Division`,`Place_Id`);

--
-- Indexes for table `Place_Details`
--
ALTER TABLE `Place_Details`
  ADD PRIMARY KEY (`Place_id`);

--
-- Indexes for table `Place_Image`
--
ALTER TABLE `Place_Image`
  ADD PRIMARY KEY (`Place_Id`,`Image_Path`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
