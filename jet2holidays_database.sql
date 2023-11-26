-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 06:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jet2holidays_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) NOT NULL,
  `Postcode` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_line_1`, `address_line_2`, `Postcode`, `city_id`) VALUES
(1, 'La Route de la Baie', '', 'JE3 8EF', 14),
(2, 'David Pl', 'St Helier', 'JE2 4TD', 14),
(3, '11', 'Sundown Center', '461 58', 14),
(4, '2', 'Blackbird Place', '95697 CEDEX', 18),
(5, '1710', 'Manitowish Junction', '2950-107', 19),
(6, '65', 'Oak Way', '3332', 20),
(7, '8432', 'John Wall Crossing', '666137', 21),
(8, '8922', 'Fairfield Crossing', '9630-305', 22),
(9, '440', 'Talisman Point', '4730-264', 18),
(10, '102, Fane street', '', 'Btx 487', 20),
(11, '100, Fane Street', 'Malone Road', 'BT9 003', 1),
(12, '101, william Street', 'Main Road', 'BT7 453', 2),
(13, '155, malone Street', 'malone Road', 'BT2 657', 3),
(14, '155, malone Street', 'malone Road', 'BT2 657', 3),
(15, '155, malone Street', 'malone Road', 'BT2 657', 3),
(16, '155, malone Street', 'malone Road', 'BT2 657', 3),
(21, '116, Donegall Ave', 'Lisburn Road', 'BT12 6LX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airline_id` int(11) NOT NULL,
  `airline_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airline_id`, `airline_name`) VALUES
(1, 'British Airways'),
(2, 'Eastern Airways'),
(3, 'easy Jet'),
(4, 'Flybe'),
(5, 'Virgin Atlantic'),
(6, 'Jet2'),
(7, 'Ryanair'),
(8, 'Aer Lingus'),
(9, 'KLM'),
(10, 'BH Air'),
(11, 'Lufthansa'),
(12, 'Wizz Air');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_name` varchar(255) NOT NULL,
  `airport_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`, `airport_code`) VALUES
(1, 'Belfast', 'BFS'),
(2, 'Birmingham', 'BHX'),
(3, 'Bristol', 'BRS'),
(4, 'Glasgow Intl', 'GLA'),
(5, 'London Stansted', 'STN'),
(6, 'Manchester', 'MAN'),
(7, 'Ibiza', 'IBZ'),
(8, 'Majorca (Palma)', 'PMI'),
(9, 'Menorca', 'MAH'),
(10, 'Bourgas', 'BOJ'),
(11, 'Tenerife South', 'TFS'),
(12, 'Gran Canaria (Las Palmas)', 'LPA'),
(13, 'Fuerteventura', 'FUE'),
(14, 'Jersey', 'JER'),
(15, 'Dubrovnik', 'DBV'),
(16, 'Paphos', 'PFO'),
(17, 'Larnaca', 'LCA'),
(18, 'Athens', 'ATH'),
(19, 'Crete (Chania)', 'CHQ'),
(20, 'Zante (Zakynthos)', 'ZTH'),
(21, 'Kos', 'KGS'),
(22, 'Preveza', 'PVK'),
(23, 'Reykjavik (Keflavik)', 'KEF'),
(24, 'Verona', 'VRN');

-- --------------------------------------------------------

--
-- Table structure for table `benefits_and_offers`
--

CREATE TABLE `benefits_and_offers` (
  `benefits_and_offer_id` int(11) NOT NULL,
  `benefits_and_offer_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `benefits_and_offers`
--

INSERT INTO `benefits_and_offers` (`benefits_and_offer_id`, `benefits_and_offer_type`) VALUES
(1, 'Free Resort Flight Check-In'),
(2, 'Free Child Places');

-- --------------------------------------------------------

--
-- Table structure for table `board_basis`
--

CREATE TABLE `board_basis` (
  `board_basis_id` int(11) NOT NULL,
  `board_basis_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board_basis`
--

INSERT INTO `board_basis` (`board_basis_id`, `board_basis_type`) VALUES
(1, 'All Inclusive'),
(2, 'Full Board'),
(3, 'Half Board'),
(4, 'Bed and Breakfast'),
(5, 'Room only'),
(6, 'Self Catering');

-- --------------------------------------------------------

--
-- Table structure for table `booked_room`
--

CREATE TABLE `booked_room` (
  `booked_room_id` int(11) NOT NULL,
  `checkin_date` datetime NOT NULL,
  `checkout_date` datetime NOT NULL,
  `hotel_board_basis_info_id` int(11) DEFAULT NULL,
  `hotel_room_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_room`
--

INSERT INTO `booked_room` (`booked_room_id`, `checkin_date`, `checkout_date`, `hotel_board_basis_info_id`, `hotel_room_id`, `booking_id`) VALUES
(2, '2022-12-01 19:15:47', '2022-12-05 19:15:47', 11, 4, 1),
(3, '2022-12-05 19:15:47', '2022-12-10 19:15:47', 15, 5, 2),
(4, '2022-05-27 19:15:47', '2022-06-03 19:15:47', 13, 26, 3),
(12, '2023-05-01 19:15:47', '2023-05-05 19:15:47', 1, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_ref` varchar(255) NOT NULL,
  `booking_made_date` date NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `passenger_address_id` int(11) DEFAULT NULL,
  `passenger_contact_id` int(11) DEFAULT NULL,
  `inward_flight_id` int(11) NOT NULL,
  `outward_flight_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_ref`, `booking_made_date`, `total_cost`, `passenger_address_id`, `passenger_contact_id`, `inward_flight_id`, `outward_flight_id`) VALUES
(1, 'JET 001', '2022-11-24', '250.00', 1, 1, 1, 2),
(2, 'JET 002', '2022-11-25', '507.20', 12, 14, 3, 4),
(3, 'JET 003', '2022-11-20', '2172.77', 15, 15, 1, 2),
(11, 'JET 004', '2022-11-27', '340.36', 21, 20, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country_id`) VALUES
(1, 'Belfast', 1),
(2, 'Birmingham', 1),
(3, 'Bristol', 1),
(4, 'Glasgow', 1),
(5, 'London', 1),
(6, 'Manchester', 1),
(7, 'Ibiza', 2),
(8, 'Majorca', 2),
(9, 'Menorca', 2),
(10, 'Bourgas Area', 3),
(11, 'Fuerteventura', 4),
(12, 'Las Palmas City', 4),
(13, 'Tenerife', 4),
(14, 'Jersey', 5),
(15, 'Dubrovnik', 6),
(16, 'Cyprus (Larnaca Airport)', 7),
(17, 'Cyprus (Paphos Airport)', 7),
(18, 'Athens', 8),
(19, 'Crete (Chania Area)', 8),
(20, 'Kos', 8),
(21, 'Lefkas', 8),
(22, 'Zante', 8),
(23, 'Reykjavik', 9),
(24, 'Lake Garda', 10),
(25, 'Verona', 10),
(26, 'Malta and Gozo', 11),
(27, 'Algarve', 12),
(28, 'Madeira', 12),
(29, 'Costa Del Sol', 13),
(30, 'Sitges Area', 13),
(31, 'Dalaman Area', 14),
(32, 'Antalya Area', 14);

-- --------------------------------------------------------

--
-- Table structure for table `city_airport`
--

CREATE TABLE `city_airport` (
  `city_nearby_airport_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `airport_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_airport`
--

INSERT INTO `city_airport` (`city_nearby_airport_id`, `city_id`, `airport_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 13, 11),
(12, 12, 12),
(13, 11, 13),
(14, 14, 14),
(15, 15, 15),
(16, 17, 16),
(17, 16, 17),
(18, 18, 18),
(19, 19, 19),
(20, 22, 20),
(21, 20, 21),
(22, 21, 22),
(23, 23, 23),
(24, 25, 24);

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `contact_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `country_code` int(11) NOT NULL,
  `telephone_number` int(11) NOT NULL,
  `emergency_number` int(11) NOT NULL,
  `telephone_number_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`contact_id`, `email_address`, `country_code`, `telephone_number`, `emergency_number`, `telephone_number_type_id`) VALUES
(1, 'jminichillo0@booking.com', 44, 1534741241, 0, 2),
(2, 'sgurnay1@eepurl.com', 44, 1534726521, 0, 2),
(3, 'clinne2@sitemeter.com', 44, 473945864, 123456789, 2),
(4, 'pgatcliff3@sun.com', 45, 901254111, 64768775, 2),
(5, 'mpughe4@squidoo.com', 44, 629919521, 49375783, 2),
(6, 'pbreeds5@pbs.org', 56, 462950975, 99758623, 2),
(7, 'tkeesman6@businessinsider.com', 33, 686168466, 56757878, 2),
(8, 'acordrey7@drupal.org', 91, 542295571, 39846568, 2),
(9, 'bbenedick8@uiuc.edu', 66, 380485583, 75364278, 2),
(10, 'mborrows9@arizona.edu', 44, 884691481, 54717267, 2),
(11, 'goldensands@dolanhotels.com', 44, 597976441, 654657567, 2),
(12, 'thebestwesternroyal@hotel.com', 98, 234379243, 823562762, 2),
(13, 'vsfdfdfs@gmail.com', 44, 758758484, 364723627, 1),
(14, 'erert@gmail.com', 44, 963048239, 364392327, 1),
(15, 'hgj8rt@gmail.com', 44, 3467363, 343444, 1),
(20, 'gowkoki@gmail.com', 44, 7536232, 7802462, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'United Kingdom'),
(2, 'Balearics'),
(3, 'Bulgaria'),
(4, 'Canary Islands'),
(5, 'Channel Islands'),
(6, 'Croatia'),
(7, 'Cyprus'),
(8, 'Greece'),
(9, 'Iceland'),
(10, 'Italy'),
(11, 'Malta'),
(12, 'Portugal'),
(13, 'Spain'),
(14, 'Turkey');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flight_departure_date_time` datetime NOT NULL,
  `flight_arrival_date_time` datetime NOT NULL,
  `flight_name_id` int(11) DEFAULT NULL,
  `flight_route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `flight_departure_date_time`, `flight_arrival_date_time`, `flight_name_id`, `flight_route_id`) VALUES
(1, '2023-05-27 14:44:55', '2023-05-27 17:44:55', 1, 1),
(2, '2023-06-03 12:30:55', '2023-06-03 15:30:55', 2, 2),
(3, '2023-05-01 16:30:48', '2023-05-01 22:40:48', 3, 3),
(4, '2023-05-03 21:05:48', '2023-05-03 22:55:00', 4, 4),
(5, '2023-05-05 20:45:27', '2023-05-05 23:05:27', 5, 4),
(6, '2023-05-07 12:45:33', '2023-05-07 14:55:33', 6, 4),
(7, '2023-05-08 23:30:14', '2023-05-09 01:45:14', 7, 4),
(8, '2023-05-10 21:05:38', '2023-05-10 22:55:38', 8, 4),
(9, '2023-05-01 05:55:04', '2023-05-02 12:05:04', 9, 5),
(10, '2023-05-09 13:00:04', '2023-05-09 15:10:04', 10, 6),
(11, '2023-05-05 23:00:04', '2023-05-06 01:15:04', 11, 6),
(12, '2023-05-03 10:55:33', '2023-05-03 16:25:33', 12, 7),
(13, '2023-05-10 17:25:33', '2023-05-10 18:50:33', 13, 8),
(14, '2023-05-04 06:00:22', '2023-05-04 11:30:22', 14, 9),
(15, '2023-05-11 12:15:22', '2023-05-11 14:00:22', 15, 10),
(16, '2023-05-07 08:00:17', '2023-05-07 13:25:17', 16, 11),
(17, '2023-05-14 14:25:17', '2023-05-14 15:50:17', 17, 12),
(18, '2023-04-30 14:11:49', '2023-04-30 20:11:49', 3, 3),
(19, '2023-05-02 14:11:49', '2023-05-02 20:11:49', 3, 3),
(20, '2023-05-03 14:11:49', '2023-05-03 20:11:49', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `flight_fare`
--

CREATE TABLE `flight_fare` (
  `flight_price_id` int(11) NOT NULL,
  `passenger_flight_fare` decimal(10,2) NOT NULL,
  `fare_valid_from_date` date NOT NULL,
  `fare_valid_to_date` date NOT NULL,
  `passenger_category_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_fare`
--

INSERT INTO `flight_fare` (`flight_price_id`, `passenger_flight_fare`, `fare_valid_from_date`, `fare_valid_to_date`, `passenger_category_id`, `flight_id`) VALUES
(1, '45.00', '2023-04-01', '2023-06-01', 1, 3),
(2, '30.00', '2023-04-01', '2023-06-01', 2, 3),
(3, '20.00', '2023-04-01', '2023-06-01', 3, 3),
(4, '56.80', '2023-04-01', '2023-06-01', 1, 4),
(5, '42.56', '2023-04-01', '2023-06-01', 2, 4),
(6, '22.30', '2023-04-01', '2023-06-01', 3, 4),
(7, '64.23', '2023-04-01', '2023-06-01', 1, 5),
(8, '41.78', '2023-04-01', '2023-06-01', 2, 5),
(9, '30.12', '2023-04-01', '2023-06-01', 3, 5),
(10, '39.20', '2023-04-01', '2023-06-01', 1, 6),
(11, '30.00', '2023-04-01', '2023-06-01', 2, 6),
(12, '19.45', '2023-04-01', '2023-06-01', 3, 6),
(13, '57.19', '2023-04-01', '2023-06-01', 1, 7),
(14, '34.89', '2023-04-01', '2023-06-01', 2, 7),
(15, '20.78', '2023-04-01', '2023-06-01', 3, 7),
(16, '37.52', '2023-04-01', '2023-06-01', 1, 8),
(17, '30.29', '2023-04-01', '2023-06-01', 2, 8),
(18, '20.67', '2023-04-01', '2023-06-01', 3, 8),
(19, '56.34', '2023-01-01', '2023-10-30', 1, 1),
(20, '48.98', '2023-01-01', '2023-10-30', 2, 1),
(21, '27.45', '2023-01-01', '2023-10-30', 3, 1),
(22, '42.29', '2023-01-01', '2023-10-30', 1, 2),
(23, '35.85', '2023-01-01', '2023-10-30', 2, 2),
(24, '19.29', '2023-01-01', '2023-10-30', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `flight_name`
--

CREATE TABLE `flight_name` (
  `flight_name_id` int(11) NOT NULL,
  `flight_code` varchar(100) NOT NULL,
  `flight_airline_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_name`
--

INSERT INTO `flight_name` (`flight_name_id`, `flight_code`, `flight_airline_id`) VALUES
(1, 'BA 123', 1),
(2, 'KLM 345', 9),
(3, 'WZA 980', 12),
(4, 'VA 409', 5),
(5, 'EJ 756', 3),
(6, 'EJ 756', 7),
(7, 'BHA 534', 10),
(8, 'LUF 093', 11),
(9, 'EA 454', 2),
(10, 'LUF 678', 11),
(11, 'FLY 471', 4),
(12, 'JET 379', 6),
(13, 'AEL 132', 8),
(14, 'BA 902', 1),
(15, 'BA 731', 1),
(16, 'VA 390', 5),
(17, 'VA 030', 5);

-- --------------------------------------------------------

--
-- Table structure for table `flight_route`
--

CREATE TABLE `flight_route` (
  `flight_route_id` int(11) NOT NULL,
  `flight_route_name` varchar(255) NOT NULL,
  `depart_airport_id` int(11) NOT NULL,
  `arrival_airport_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_route`
--

INSERT INTO `flight_route` (`flight_route_id`, `flight_route_name`, `depart_airport_id`, `arrival_airport_id`) VALUES
(1, 'London to Jersey', 5, 14),
(2, 'Jersey to London', 14, 5),
(3, 'London Stansted to Kos KGS', 5, 21),
(4, 'Kos KGS to London Stansted', 21, 5),
(5, 'London Stansted to Crete (Chania) CHQ', 5, 19),
(6, 'Crete (Chania) CHQ to London Stansted', 19, 5),
(7, 'London Stansted to Zante (Zakynthos) ZTH', 5, 20),
(8, 'Zante (Zakynthos) ZTH to London Stansted', 20, 5),
(9, 'London Stansted to Athens ATH', 5, 18),
(10, 'Athens ATH to London Stansted', 18, 5),
(11, 'London Stansted to Lefkas PVK', 5, 22),
(12, 'Lefkas PVK to London Stansted', 22, 5);

-- --------------------------------------------------------

--
-- Table structure for table `holiday_type`
--

CREATE TABLE `holiday_type` (
  `holiday_id` int(11) NOT NULL,
  `holiday_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holiday_type`
--

INSERT INTO `holiday_type` (`holiday_id`, `holiday_type`) VALUES
(1, 'Adults Only'),
(2, 'Family Favourites'),
(3, 'Luxe Collection'),
(4, 'Experience More'),
(5, 'Indulgent Escapes');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `hotel_desc` text NOT NULL,
  `hotel_additional_information` varchar(255) NOT NULL,
  `no_of_blocks_in_hotel` int(11) NOT NULL,
  `no_of_rooms_in_hotel` int(11) NOT NULL,
  `no_of_lifts_in_hotel` int(11) NOT NULL,
  `no_of_floors_in_hotel` int(11) NOT NULL,
  `hotel_type_id` int(11) NOT NULL,
  `hotel_location_id` int(11) NOT NULL,
  `hotel_resort_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_desc`, `hotel_additional_information`, `no_of_blocks_in_hotel`, `no_of_rooms_in_hotel`, `no_of_lifts_in_hotel`, `no_of_floors_in_hotel`, `hotel_type_id`, `hotel_location_id`, `hotel_resort_id`) VALUES
(1, 'Golden Sands Hotel', '', '', 4, 68, 4, 2, 2, 1, 1),
(2, 'Cristina Hotel', '', '', 1, 124, 8, 10, 1, 2, 2),
(3, 'Eagles Villas', 'Now this is what we’re talking about. Gennadi Grand Resort more than lives up to its name with its beachfront postcode, contemporary styling and swanky suites – some even complete with a private pool. An eco-friendly ethos with a keen eye for style is what this fancy five-star standout is all about. Not to mention the rooftop restaurants, magazine-worthy pool scene and palm-studded setting. It’s an impressive property alright. Choose between Bed and Breakfast, Half Board or All Inclusive Plus and craft a getaway that’s you down to a tee. Ready to explore the resort centre? It’s just 1km away.', 'Please note: there are nine wheelchair access rooms available within the property subject to availability.', 2, 34, 2, 4, 2, 3, 3),
(4, 'ONOMA Hotel', '', 'Please note: this hotel is strictly for 16 year olds and above. All ages will be checked at check in.', 5, 234, 16, 5, 1, 4, 4),
(5, 'Villa D\'oro Luxury Villas & Suites', '', '', 8, 200, 0, 0, 3, 5, 6),
(6, 'Anna Maria Paradise', '', '', 6, 88, 10, 9, 4, 6, 5),
(7, 'The Met Hotel', '', '', 2, 28, 3, 3, 5, 7, 8),
(8, 'Electra Palace', '', '', 5, 145, 20, 1, 3, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_activity_type`
--

CREATE TABLE `hotel_activity_type` (
  `hotel_activity_type_id` int(11) NOT NULL,
  `hotel_activity_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_activity_type`
--

INSERT INTO `hotel_activity_type` (`hotel_activity_type_id`, `hotel_activity_type`) VALUES
(1, 'Beaches'),
(2, 'Eating and Drinking'),
(3, 'Nightlife'),
(4, 'Activities'),
(5, 'Shopping');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_benefit_and_offer_info`
--

CREATE TABLE `hotel_benefit_and_offer_info` (
  `hotel_benefit_and_offer_info_id` int(11) NOT NULL,
  `benefit_and_offer_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_benefit_and_offer_info`
--

INSERT INTO `hotel_benefit_and_offer_info` (`hotel_benefit_and_offer_info_id`, `benefit_and_offer_id`, `hotel_id`) VALUES
(1, 2, 3),
(2, 1, 3),
(3, 2, 7),
(4, 1, 5),
(5, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_board_basis_info`
--

CREATE TABLE `hotel_board_basis_info` (
  `hotel_board_basis_info_id` int(11) NOT NULL,
  `hotel_board_basis_desc` text NOT NULL,
  `board_basis_price` decimal(10,2) NOT NULL,
  `board_basis_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_board_basis_info`
--

INSERT INTO `hotel_board_basis_info` (`hotel_board_basis_info_id`, `hotel_board_basis_desc`, `board_basis_price`, `board_basis_id`, `hotel_id`) VALUES
(1, 'A bed and breakfast, often abbreviated as B&B, is a business that accommodates overnight guests and offers a breakfast menu. They traditionally take the form of a large family home with a limited number of rooms. Unlike hotels, a B&B usually only hosts guests for short periods, typically overnight, as opposed to accommodating individuals interested in a longer stay.', '19.20', 4, 3),
(2, 'The All Inclusive Plus package includes buffet-style breakfast, and dinner in the Filoxenia restaurant. A late continental-style breakfast is also served in the Filoxenia restaurant. Lunch is available at Ten2One, Ble Restaurant, Wet Pool bar and Alati. D', '25.54', 1, 3),
(3, 'Full board includes the three main meals: breakfast, lunch, and dinner, which are usually served as buffets. If hotels have multiple restaurants, they’re generally not included, or guests have to pay to dine a-la-carte. As with half board, drinks are usually only part of the deal for breakfast. During lunch and dinner, one beverage may sometimes be included. In other cases, all drinks are a-la-carte or available as packages. If your guests are going on a day trip, allow them to get their meals packed as a courtesy service.', '22.12', 2, 3),
(4, 'Room only is used to indicate that the price of accommodations in a hotel or guest house does not include the cost of food.', '10.98', 5, 3),
(5, '', '12.45', 4, 5),
(6, '', '2.90', 5, 5),
(7, '', '6.45', 4, 7),
(8, '', '36.56', 1, 7),
(9, '', '23.12', 6, 8),
(10, '', '45.80', 1, 8),
(11, '', '11.55', 4, 4),
(12, '', '56.89', 2, 4),
(13, '', '22.88', 4, 1),
(14, '', '11.77', 4, 2),
(15, '', '8.67', 5, 2),
(16, '', '12.40', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility`
--

CREATE TABLE `hotel_facility` (
  `hotel_facility_id` int(11) NOT NULL,
  `hotel_facility` varchar(255) NOT NULL,
  `hotel_facility_desc` text NOT NULL,
  `hotel_facility_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_facility`
--

INSERT INTO `hotel_facility` (`hotel_facility_id`, `hotel_facility`, `hotel_facility_desc`, `hotel_facility_type_id`) VALUES
(1, 'Splash Park', '', 6),
(2, 'Aqua Park', '', 2),
(3, 'Indoor Swimming Pool', 'Indoor Swimming Pool', 2),
(4, 'Outdoor Swimming Pool', 'Outdoor freshwater pool with slides and whirlpool. Sunbathing area with sunbeds. Inflatables and water toys permitted.', 2),
(5, 'A la Carte Restaurant', 'Buffet. Serves breakfast, lunch, snacks and dinner with show cooking. Located on the poolside. Please note that the hotel requests that beach wear is not worn.', 1),
(6, 'Buffet Restaurant', '', 1),
(7, 'Evening Entertainment', 'Frequent evening entertainment (available between 01 May and 30 Sep) including bingo, in-house entertainment shows, karaoke, mini-disco, professional shows and quizzes.', 6),
(8, 'Daytime Entertainment', 'Regular daytime entertainment (available between 01 Oct and 31 Oct) including small team games, family and water-based activities.', 6),
(9, 'Children\'s Club', 'Children\'s club (4-11yrs) - small team games, story time, food-based and games consoles.', 7),
(10, 'Creche', '', 5),
(11, 'Children\'s Playground', 'Children\'s playground - swings, climbing frame and slides (age and height restrictions may apply).', 7),
(12, 'Indoor Play Area', '', 5),
(13, 'Spa', 'On-site hairdressers.*', 4),
(14, 'Beauty Treatments', 'Spa - sauna, steam room, Turkish bath*, whirlpool* and massage treatments*. (Open between 9.00am and 7.00pm).', 4),
(15, 'Cinema', '', 6),
(16, 'Golf', '', 3),
(17, 'Casino', '', 6),
(18, 'Bowling Alley', '', 6),
(19, 'Gym', 'Air conditioned gym with cardio fitness training equipment, aerobics studio, stretching zone, sauna, steam room and whirlpool (min age 17yrs).', 3),
(20, 'Wi-Fi', 'Reception - equipment for hire includes fan*, pushchair* and wheelchair*. Services available include concierge service, currency exchange* and luggage storage.', 5),
(21, 'Watersports', 'Frequent daytime entertainment (available between 01 May and 30 Sep) including small team games and water-based activities.', 6),
(22, 'Waterpark or Theme Park', '', 6),
(23, 'Cycling Facilities', '', 3),
(24, 'Restaurant with highchairs and kid\'s menu', '', 7),
(25, 'Children\'s pool', '2 outdoor pools including children\'s pool (freshwater).', 7),
(26, 'Occasional daytime entertainment including small team games and water-based activities.', '', NULL),
(27, 'Occasional evening entertainment including live music.', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility_info`
--

CREATE TABLE `hotel_facility_info` (
  `hotel_facility_info_id` int(11) NOT NULL,
  `hotel_facility_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_facility_info`
--

INSERT INTO `hotel_facility_info` (`hotel_facility_info_id`, `hotel_facility_id`, `hotel_id`) VALUES
(1, 3, 3),
(2, 9, 3),
(3, 19, 3),
(4, 20, 3),
(5, 23, 3),
(6, 5, 3),
(7, 21, 3),
(8, 20, 7),
(9, 13, 7),
(10, 8, 7),
(11, 2, 4),
(12, 15, 4),
(13, 20, 4),
(14, 14, 5),
(15, 18, 5),
(16, 17, 5),
(17, 20, 5),
(18, 9, 6),
(19, 11, 6),
(20, 20, 6),
(21, 20, 7),
(22, 8, 7),
(23, 16, 7),
(24, 21, 7),
(25, 20, 8),
(26, 14, 8),
(27, 19, 8),
(28, 7, 8),
(29, 10, 8),
(30, 6, 8),
(33, 24, 3),
(34, 25, 3),
(35, 26, 3),
(36, 27, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility_type`
--

CREATE TABLE `hotel_facility_type` (
  `hotel_facility_type_id` int(11) NOT NULL,
  `hotel_facility_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_facility_type`
--

INSERT INTO `hotel_facility_type` (`hotel_facility_type_id`, `hotel_facility_type`) VALUES
(1, 'Restaurants & Bars'),
(2, 'Pool Areas'),
(3, 'Sports & Leisure'),
(4, 'Spa & Beauty'),
(5, 'Other Facilities'),
(6, 'Entertainment'),
(7, 'Children\'s Facilities');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_nearby_places`
--

CREATE TABLE `hotel_nearby_places` (
  `hotel_nearby_places_id` int(11) NOT NULL,
  `nearby_places` varchar(255) NOT NULL,
  `nearby_place_desc` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `hotel_activity_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_nearby_places`
--

INSERT INTO `hotel_nearby_places` (`hotel_nearby_places_id`, `nearby_places`, `nearby_place_desc`, `location_id`, `hotel_activity_type_id`) VALUES
(1, 'Pefkos Beach', 'Pefkos’ Blue Flag beach is one of the nicest in Rhodes. Spend a lazy day sunbathing on the soft golden sand and go swimming or snorkelling in the crystal clear sea. ', 11, 1),
(2, 'Plakia Beach', 'If you\'re looking for a quieter beach away from the crowds, Plakia fits the bill perfectly. It\'s about 10 minutes\' walk from Pefkos, with a secluded stretch of sand and warm turquoise waters. ', 12, 1),
(3, 'Plenty of family-run restaurants', 'Rhodes\' signature dish is squid risotto, and you\'ll find that on the menu of some of the many homely family-run restaurants on Pefkos. In fact, fresh seafood in general - including octopus - features...', 13, 2),
(4, 'Loads of bars', 'The nightlife in Pefkos is relatively low-key, but does offer some great little bars and restaurants. Pefkos By Night is one of its most popular venues, and George, Yannis and Spiros make everyone feel welcome....', 14, 3),
(5, 'Glass-bottom boat trips', 'Enjoy a boat trip from Pefkos to Lindos on the Glass Bottom Boat. The captain will make you chuckle as he regales you with stories about the sights. The star of the show, though, are the sea creatures you\'ll...', 15, 4),
(6, 'Shopping across Pefkos', 'Pefkos isn’t overwhelmed by shops. It has small supermarkets where you can pick up essentials and snacks, as well as shops selling souvenirs, leather goods, ceramics, jewellery and handmade lace. Look out for...', 16, 5),
(7, 'A night in Lindos', 'If you\'re looking for nightlife that is slightly more boisterous than Pefkos, try Lindos. It\'s a very popular place to enjoy a night out, with lots of small restaurants and bars, but it\'s not too OTT, and loud...', 17, 4),
(8, 'Profitis Ilias', 'Standing at just less than 800 meters, Profitis Ilias is a beautiful and imposing mountain in the centre of Rhodes island. It is named after the prophet Elias and you can visit his monastery near the summit....', 1, 4),
(9, 'Monolithos and Castle', 'Monolithos is a small and well-kept village built in the style of an amphitheatre. It is home to a few traditional tavernas, but its main attraction is a medieval castle standing on a 300-foot outcrop. The...', 2, 4),
(10, 'Koukounaries Beach', 'Koukounaries Beach is one of the island’s most popular and when you arrive here you’ll soon see why. The azure-blue water and fine white sands are lined with fragrant pine trees, giving it a truly...', 3, 1),
(11, 'La Bussola Bar', 'La Bussola Bar is perfect for a relaxed spot to while away the evenings in Koukounaries. Whitewashed wooden furnishings and shaded verandas give it a chilled, beach bar vibe. There\'s a wide choice of drinks and...', 4, 3),
(12, 'Xenia Beach', 'This long beach is a great alternative to the more famous Koukounaries Beach nearby. It has gorgeous golden sand with high-sided headlands covered in fragrant pine forests that overlook the shimmering seafront....', 4, 1),
(13, 'Under the Pine Tree', 'Just minutes from Koukounaries Beach, this serene spot is the perfect place to enjoy a lazy lunch or relaxing dinner. It serves all things local, from freshly made gyros and souvlaki to squidgy halloumi cheese...', 5, 2),
(14, 'Maratha Beach', 'Just a stone’s throw from Koukounaries, this sliver of sand is another lovely patch to plop down and relax on. It’s a little quieter and smaller than its neighbour but that’s all part of its...', 5, 1),
(15, 'Hiking', 'With walking trails spanning hundreds of kilometres across the island, Skiathos is something of a hiking haven. So pull on your comfiest shoes and get ready to explore dense pine forest and rugged peaks. All...', 6, 4),
(16, 'Boat tour around Lalaria sea caves', 'Not far from Lalaria Beach, you\'ll find this pair of natural treasures. Head out on a boat tour and discover Skotini and Galazia, two famous sea caves. On the tour you’ll see the beautiful reflections of the...', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_nearby_places_info`
--

CREATE TABLE `hotel_nearby_places_info` (
  `hotel_nearby_places_info_id` int(11) NOT NULL,
  `hotel_nearby_places_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_nearby_places_info`
--

INSERT INTO `hotel_nearby_places_info` (`hotel_nearby_places_info_id`, `hotel_nearby_places_id`, `hotel_id`) VALUES
(1, 7, 3),
(2, 6, 3),
(3, 3, 3),
(4, 1, 3),
(5, 5, 5),
(6, 2, 5),
(7, 8, 5),
(8, 16, 7),
(9, 1, 7),
(10, 13, 8),
(11, 4, 8),
(12, 5, 8),
(13, 11, 8),
(14, 15, 6),
(15, 10, 6),
(16, 14, 6),
(17, 9, 4),
(18, 12, 4),
(19, 8, 4),
(20, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `hotel_room_id` int(11) NOT NULL,
  `max_person` int(11) NOT NULL,
  `min_person` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `room_status` tinyint(1) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`hotel_room_id`, `max_person`, `min_person`, `note`, `room_status`, `room_type_id`, `hotel_id`) VALUES
(1, 2, 1, 'the safety deposit boxes for some rooms are located in reception.', 0, 1, 3),
(2, 2, 1, 'Keep the place clean', 0, 6, 3),
(3, 4, 2, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 2, 3),
(4, 3, 1, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 3, 3),
(5, 5, 2, 'Please note: the safety deposit boxes for some rooms are located in reception.', 1, 4, 3),
(6, 8, 3, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 5, 3),
(7, 8, 4, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 5, 5),
(8, 6, 1, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 2, 5),
(9, 2, 1, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 6, 7),
(10, 6, 3, 'Please note: the safety deposit boxes for some rooms are located in reception.', 0, 3, 7),
(18, 2, 1, '', 0, 1, 3),
(19, 4, 2, '', 0, 2, 3),
(20, 5, 2, '', 0, 4, 3),
(21, 5, 2, '', 0, 3, 3),
(22, 5, 2, '', 1, 4, 3),
(23, 8, 3, '', 1, 5, 3),
(24, 8, 3, '', 0, 4, 3),
(25, 8, 3, '', 0, 5, 3),
(26, 6, 2, '', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room_facility`
--

CREATE TABLE `hotel_room_facility` (
  `hotel_room_facility_id` int(11) NOT NULL,
  `hotel_room_id` int(11) NOT NULL,
  `room_facility_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_room_facility`
--

INSERT INTO `hotel_room_facility` (`hotel_room_facility_id`, `hotel_room_id`, `room_facility_type_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 2),
(10, 2, 4),
(11, 3, 2),
(12, 3, 8),
(13, 3, 6),
(14, 4, 1),
(15, 4, 2),
(16, 4, 5),
(17, 5, 3),
(18, 5, 10),
(19, 6, 9),
(20, 6, 2),
(21, 7, 7),
(22, 7, 8),
(23, 8, 2),
(24, 8, 6),
(25, 9, 10),
(26, 9, 2),
(27, 10, 1),
(28, 10, 3),
(29, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `hotel_room_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_name`, `image_path`, `hotel_room_id`, `hotel_id`) VALUES
(1, 'Cycling', 'http://dummyimage.com/250x100.png/dddddd/000000', NULL, 3),
(2, 'Outside View', 'http://dummyimage.com/195x100.png/dddddd/000000', NULL, 3),
(3, 'Enterence', 'http://dummyimage.com/245x100.png/dddddd/000000', NULL, 3),
(4, 'Children Club', 'http://dummyimage.com/192x100.png/cc0000/ffffff', NULL, 3),
(5, 'Front view', 'http://dummyimage.com/101x100.png/5fa2dd/ffffff', NULL, 3),
(6, 'Back view', 'http://dummyimage.com/144x100.png/5fa2dd/ffffff', NULL, 3),
(7, 'Room1', 'http://dummyimage.com/198x100.png/ff4444/ffffff', 1, 3),
(8, 'Room2', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', 2, 3),
(9, 'Garden', 'http://dummyimage.com/100x100.png/dddddd/000000', NULL, 3),
(10, 'Bar', 'http://dummyimage.com/180x100.png/cc0000/ffffff', NULL, 3),
(11, 'Room3', 'http://dummyimage.com/215x100.png/5fa2dd/ffffff', 3, 3),
(12, 'Room4', 'http://dummyimage.com/108x100.png/cc0000/ffffff', 4, 3),
(13, 'Room5', 'http://dummyimage.com/230x100.png/dddddd/000000', 5, 3),
(14, 'Receiption', 'http://dummyimage.com/182x100.png/5fa2dd/ffffff', NULL, 3),
(15, 'Resturant', 'http://dummyimage.com/113x100.png/ff4444/ffffff', NULL, 3),
(16, 'Pool', 'http://dummyimage.com/214x100.png/cc0000/ffffff', NULL, 3),
(17, 'Gym', 'http://dummyimage.com/192x100.png/ff4444/ffffff', NULL, 3),
(18, 'Outdoor Pool', 'http://dummyimage.com/216x100.png/dddddd/000000', NULL, 3),
(19, 'Parking', 'http://dummyimage.com/104x100.png/dddddd/000000', NULL, 3),
(20, 'PlayArea', 'http://dummyimage.com/100x100.png/cc0000/ffffff', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `infant_carer`
--

CREATE TABLE `infant_carer` (
  `infant_carer_id` int(11) NOT NULL,
  `infant_id` int(11) NOT NULL,
  `carer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infant_carer`
--

INSERT INTO `infant_carer` (`infant_carer_id`, `infant_id`, `carer_id`) VALUES
(1, 5, 4),
(2, 15, 13),
(7, 37, 39);

-- --------------------------------------------------------

--
-- Table structure for table `jet2holidays_reviews`
--

CREATE TABLE `jet2holidays_reviews` (
  `jet2holidays_reviews_id` int(11) NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `star_rating` int(11) NOT NULL,
  `date` date NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jet2holidays_reviews`
--

INSERT INTO `jet2holidays_reviews` (`jet2holidays_reviews_id`, `reviewer_name`, `title`, `content`, `star_rating`, `date`, `hotel_id`) VALUES
(1, 'Courtnay', 'Good atmosphere', 'The best hotel I’ve ever been privileged enough to stay at. Gorgeous building, and it only gets more breathtaking when you walk in. High quality rooms (there was even a tv by the shower), and high quality service. Also, they are one of few hotels that allow people under 21 to book a reservation.', 5, '2022-11-01', 1),
(2, 'Dianne', 'I would highly recommend', 'Very friendly management who went above and beyond to make our stay enjoyable. The gardens and pool are very well looked after. Room was very clean and spacious. Great location too.  Close to the Beach.', 4, '2022-10-18', 2),
(3, 'Bruce', 'Great location- all the comforts.', 'Location only a few hundred metres from Cable Beach. Good swimming pool and BBQ amenities. Quiet and very comfortable. We booked a 1 bedroom apartment and it had all the things you need. Kitchen had everything including stove, good sized refrigerator, electric hot plates, microwave, kettle, toaster, all the cutlery you need, etc..you get the idea. Separate bedroom and bathroom with doors to separate from the living area which had a dining table, lounge, tv etc... The blockout curtains were a real bonus when wanting to sleep in. Plenty of room for parking your car if you have one. There is a bus stop only 30 metres away if you prefer that. General Store 75 metres away that has all you need plus meals. Divers Tavern also only 75 metres away for great meals and entertainment.', 5, '2022-11-09', 3),
(4, 'Danielle', 'Had a lovely time and will definitely be back.', 'Facilities in the room were excellent. The pool was awesome. The gardens well kept and beautiful. The ability to be able to recycle rubbish was welcomed.', 5, '2022-09-01', 3),
(5, 'j0luds', 'Lovely holiday', 'This hotel is a credit to the Invisa group. Fantastic food and staff couldn’t be more helpful. Stayed in a Prestige room. Wonderful. The location is ideally situated for the bars, clubs and the bus station if needed.', 3, '2022-08-09', 3),
(6, 'chez20102018', 'Unhelpful, rude staff and food disgusting 🤢', 'Absolutely do not stay at this accommodation.Staff rude and unhelpful. When asked if I could get an extra bath towel from reception staff I was quizzed as to how many towels I already had in my room!! ', 1, '2022-04-04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_url` varchar(1000) NOT NULL,
  `longtitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_url`, `longtitude`, `latitude`) VALUES
(1, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=1023431&rooms=63570&gtmsearchtype=Smart%20Search&smartsearchid=f317941b-cea2-43b9-acf4-7520c72fc046#tab-location', '51.3968437', '25.4695749'),
(2, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=1023431&rooms=63570&gtmsearchtype=Smart%20Search&smartsearchid=f317941b-cea2-43b9-acf4-752s63547827', '97.3840729', '25.3946143'),
(3, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=57683457893jakshcjzbcmzjnxmNzhjaj', '-82.4290869', '27.9961123'),
(4, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-276687889ckz,njgjhxNX,\r\n\'AKHDKJH', '-45.9991326', '-2.0133843'),
(5, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=1898285209zbXMNncLAJSDLksksljkj', '100.791665', '13.9483457'),
(6, 'https://www.jet2holidays.com/beach/greece/kos/kos-eagleholidayjnzjxkvhks', '106.3282', '-6.5675'),
(7, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=1oifusliugsilzshufs', '108.8115', '-7.4898'),
(8, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=7358w3698289', '22.314478', '51.0026948'),
(9, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-2023&occupancy=r2c2&board=4&oflight=1023428&iflight=1023431&rooms=63570&gtmsearchtype=Smart%20Search&smalgsjmsdmjfgmjasbck', '-8.5462667', '41.4578988'),
(10, 'https://www.jet2holidays.com/beach/greece/kos/kos-town/ampavris-family-apartments?duration=7&airport=99&date=01-05-834982asknc,ZBCJvmnMHSc', '111.3739309', '-7.7599015'),
(11, 'http://slashdot.org/nulla/sed/vel/enim/sit.jsp?est=pellentesque&phasellus=quisque&sit=porta&amet=volutpat&erat=erat&nulla=quisque&tempus=erat&vivamus=eros&in=viverra&felis=eget&eu=congue&sapien=eget&cursus=semper&vestibulum=rutrum&proin=nulla&eu=nunc&mi=purus&nulla=phasellus&ac=in&enim=felis&in=donec&tempor=semper&turpis=sapien&nec=a&euismod=libero&scelerisque=nam&quam=dui&turpis=proin&adipiscing=leo&lorem=odio&vitae=porttitor&mattis=id&nibh=consequat&ligula=in&nec=consequat&sem=ut&duis=nulla&al', '22.0537208', '49.6745448'),
(12, 'http://surveymonkey.com/nulla/nunc/purus/phasellus.xml?rutrum=dolor&ac=quis&lobortis=odio', '43.8464971', '40.7929026'),
(13, 'https://scientificamerican.com/amet/nulla/quisque/arcu/libero/rutrum.html?fermentum=posuere&donec=cubilia&ut=curae', '96.85273', '5.08626'),
(14, 'http://domainmarket.com/orci/eget/orci/vehicula/condimentum/curabitur.aspx?rutrum=aliquet&at=at&lorem=feugiat&integer=non&tincidunt=pretium&ante=quis&vel=lectus&ipsum=suspendisse&praesent=potenti&blandit=in&lacinia=eleifend&erat=quam&vestibulum=a&sed=odio&magna=in&at=hac&nunc=habitasse&commodo=platea&placerat=dictumst&praesent=maecenas&blandit=ut&nam=massa&nulla=quis&integer=augue&pede=luctus&justo=tincidunt&lacinia=nulla&eget=mollis&tincidunt=molestie&eget=lorem&tempus=quisque&vel=ut&pede=erat&', '109.463987', '31.018498'),
(15, 'http://domainmarket.com/orci/eget/orci/vehicula/condimentum/curabitur.aspx?rutrum=aliquet&at=at&lorem=feugiat&integer=non&tinkjshfka', '19.65954', '49.549347'),
(16, 'http://domainmarket.com/orci/eget/orci/vehicula/condimentum/curabitur.aspx?rutrum=aliquet&at=at&lorem=feugiat&integer=non&tinkjshfkauiqwyfahckZNCjHZJKCk', '43.2', '82.63333'),
(17, 'http://domainmarket.com/orci/eget/orci/vehicula/condimentum/curabitur.aspx?rutrum=aliquet&at=at&lorem=feugiat&integer=non&tinkjshfka3654826m,Zxb,MNC.029e', '8.4430125', '82.3777335');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL,
  `passenger_first_name` varchar(255) NOT NULL,
  `passenger_last_name` varchar(255) NOT NULL,
  `passenger_dob` date NOT NULL,
  `lead_passenger` tinyint(1) NOT NULL,
  `passenger_title_id` int(11) NOT NULL,
  `passenger_category_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `passenger_first_name`, `passenger_last_name`, `passenger_dob`, `lead_passenger`, `passenger_title_id`, `passenger_category_id`, `booking_id`) VALUES
(1, 'Adam', 'Black', '1995-11-01', 1, 1, 1, 1),
(2, 'Eva', 'Black', '2000-06-25', 0, 2, 1, 1),
(3, 'William', 'Smith', '1992-01-11', 1, 1, 1, 2),
(4, 'Mia', 'Smith', '2002-04-20', 0, 2, 1, 2),
(5, 'Clara', 'Smith', '2021-11-01', 0, 3, 3, 2),
(12, 'Ben', 'William', '1990-01-08', 1, 1, 1, 3),
(13, 'Nova', 'William', '1995-07-27', 0, 2, 1, 3),
(14, 'Sam', 'William', '2015-05-19', 0, 4, 2, 3),
(15, 'Fen', 'William', '2021-11-01', 0, 3, 3, 3),
(36, 'Zack', 'Tonny', '1987-04-30', 1, 1, 1, 11),
(37, 'Christy', 'Tonny', '1993-07-08', 0, 2, 1, 11),
(38, 'Nick', 'Tonny', '2015-05-19', 0, 4, 2, 11),
(39, 'Anne', 'Tonny', '2021-04-04', 0, 3, 3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_card_details`
--

CREATE TABLE `passenger_card_details` (
  `passenger_card_details_id` int(11) NOT NULL,
  `card_number` varbinary(255) NOT NULL,
  `name_on_card` varbinary(255) NOT NULL,
  `expiry_date` varbinary(255) NOT NULL,
  `cvv_number` varbinary(255) NOT NULL,
  `payment_card_type_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_card_details`
--

INSERT INTO `passenger_card_details` (`passenger_card_details_id`, `card_number`, `name_on_card`, `expiry_date`, `cvv_number`, `payment_card_type_id`, `booking_id`) VALUES
(1, 0x31323334353637383930, 0x4164616d20426c61636b, 0x31312f3235, 0x313233, 1, 1),
(2, 0x30, 0x4d72204a616d657320536d697468, 0x31302f32303235, 0x333435, 1, 1),
(3, 0x30, 0x4d72204a616d657320536d697468, 0x31302f32303235, 0x333435, 1, 1),
(4, 0x30, 0x4d72204a616d657320536d697468, 0x31302f32303235, 0x333435, 1, 1),
(5, 0x4d72204a616d657320536d697468, 0x4d72204a616d657320536d697468, 0x31302f32303235, 0x333132, 2, 1),
(6, 0x6a55d956bd4af9cc6885402e5fc4d00c, 0x4d72204a616d657320536d697468, 0x31302f32303235, 0x333132, 2, 1),
(7, 0xbd4ead5414e15d2fcd1c19ec0f68f113, 0x57696c6c69616d20536d697468, 0x31312f32303236, 0x3937, 3, 2),
(8, 0xce2ad4612dab87defa41da590c9085e1, 0x4d616320536d697468, 0x31312f32303236, 0x6c8c9e86d13bb991bcfbfbd8875893e2, 3, 2),
(9, 0xa82a5f285dd00d76f833a1dd66caaa23, 0x4c013c4fd1a488ab84d13d6a160b7d5b, 0x43e9a10bc76b934213bf7d69df280a06, 0xc6c1d496442ed9a7a4c00a4e6466cf87, 4, 2),
(10, 0x6e5c6717544e4ccc9edd990dc837cc78, 0x02347e48fb17befdec2fee825959fe79, 0xbde0070a1b15db664da4cc99938d368b, 0x68ad5949ebb0533ef5162e6eb0d1328a, 1, 3),
(17, 0xaef15ff00515b5e3316e8980e77731e1, 0x1b60fa3994abaddedb7c23c9e0cf96e1, 0xf1f61221a32d430e9706868a296e5b2e, 0x58401ace7c346b6b0639831c23302a2a, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_category`
--

CREATE TABLE `passenger_category` (
  `passenger_category_id` int(11) NOT NULL,
  `passenger_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_category`
--

INSERT INTO `passenger_category` (`passenger_category_id`, `passenger_category`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_payment`
--

CREATE TABLE `passenger_payment` (
  `passenger_payment_id` int(11) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_payment`
--

INSERT INTO `passenger_payment` (`passenger_payment_id`, `paid_amount`, `date`, `payment_type_id`, `booking_id`) VALUES
(1, '250.00', '2022-11-24', 2, 1),
(2, '680.00', '2022-11-25', 1, 2),
(3, '2000.00', '0000-00-00', 1, 3),
(4, '2000.00', '2022-11-26', 1, 3),
(9, '900.00', '2022-11-27', 2, 11),
(10, '900.00', '2022-11-27', 2, 11),
(11, '900.00', '2022-11-27', 2, 11),
(12, '900.00', '2022-11-27', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_payment_type`
--

CREATE TABLE `passenger_payment_type` (
  `passenger_payment_type_id` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_payment_type`
--

INSERT INTO `passenger_payment_type` (`passenger_payment_type_id`, `payment_type`) VALUES
(1, 'paypal'),
(2, 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_title`
--

CREATE TABLE `passenger_title` (
  `passenger_title_id` int(11) NOT NULL,
  `passenger_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_title`
--

INSERT INTO `passenger_title` (`passenger_title_id`, `passenger_title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Miss'),
(4, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `payment_card_type`
--

CREATE TABLE `payment_card_type` (
  `payment_card_type_id` int(11) NOT NULL,
  `payment_card_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_card_type`
--

INSERT INTO `payment_card_type` (`payment_card_type_id`, `payment_card_type`) VALUES
(1, 'Visa'),
(2, 'Mastercard'),
(3, 'Maestro/Switch'),
(4, 'Electron'),
(5, 'American Express');

-- --------------------------------------------------------

--
-- Table structure for table `resort`
--

CREATE TABLE `resort` (
  `resort_id` int(11) NOT NULL,
  `resort_name` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resort`
--

INSERT INTO `resort` (`resort_id`, `resort_name`, `city_id`) VALUES
(1, 'Grouville', 14),
(2, 'St Aubin', 14),
(3, 'Kos Town', 20),
(4, 'Patitiri', 18),
(5, 'Marpunta', 18),
(6, 'Lefkas Town', 21),
(7, 'Chania Town', 19),
(8, 'Beloussi', 22);

-- --------------------------------------------------------

--
-- Table structure for table `room_facility`
--

CREATE TABLE `room_facility` (
  `room_facility_id` int(11) NOT NULL,
  `room_facilities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facility`
--

INSERT INTO `room_facility` (`room_facility_id`, `room_facilities`) VALUES
(1, 'Flat screen television\r\n'),
(2, 'Wi-fi\r\n'),
(3, 'Hairdryer'),
(4, 'Fridge'),
(5, 'Mini bar'),
(6, 'Bathroom containing a bath with shower attachment.'),
(7, 'Air conditioning'),
(8, 'Daily room cleaning service, linen changes and towel changes.'),
(9, 'Bathrobe and slippers'),
(10, 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `room_price`
--

CREATE TABLE `room_price` (
  `room_price_id` int(11) NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `valid_date_from` date NOT NULL,
  `valid_date_to` date NOT NULL,
  `hotel_room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_price`
--

INSERT INTO `room_price` (`room_price_id`, `room_price`, `valid_date_from`, `valid_date_to`, `hotel_room_id`) VALUES
(1, '120.56', '2023-03-01', '2023-06-30', 1),
(2, '240.23', '2023-03-05', '2023-06-28', 2),
(3, '185.12', '2023-03-04', '2023-06-24', 3),
(4, '102.29', '2023-04-01', '2023-06-28', 4),
(5, '78.43', '2023-04-05', '2023-06-29', 5),
(6, '99.45', '2023-02-05', '2023-06-18', 6),
(7, '103.24', '2023-04-12', '2023-06-20', 7),
(8, '280.11', '2023-04-30', '2023-06-24', 8),
(9, '123.01', '2023-04-14', '2023-06-30', 9),
(10, '147.92', '2023-04-24', '2023-06-19', 10),
(11, '240.54', '2023-03-01', '2023-06-30', 26);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`) VALUES
(1, 'Standard room'),
(2, 'Deluxe room'),
(3, 'Studio room'),
(4, 'Suites room'),
(5, 'Connecting room'),
(6, 'Single room');

-- --------------------------------------------------------

--
-- Table structure for table `telephone_number_type`
--

CREATE TABLE `telephone_number_type` (
  `telephone_type_id` int(11) NOT NULL,
  `telephone_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telephone_number_type`
--

INSERT INTO `telephone_number_type` (`telephone_type_id`, `telephone_type`) VALUES
(1, 'Mobile'),
(2, 'Home/Office');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_address_city_id` (`city_id`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `benefits_and_offers`
--
ALTER TABLE `benefits_and_offers`
  ADD PRIMARY KEY (`benefits_and_offer_id`);

--
-- Indexes for table `board_basis`
--
ALTER TABLE `board_basis`
  ADD PRIMARY KEY (`board_basis_id`);

--
-- Indexes for table `booked_room`
--
ALTER TABLE `booked_room`
  ADD PRIMARY KEY (`booked_room_id`),
  ADD KEY `FK_customer_room_info_customer_room_id` (`hotel_room_id`),
  ADD KEY `FK_customer_room_info_customer_id` (`booking_id`),
  ADD KEY `FK_booked_room_hotel_board_basis_info_id` (`hotel_board_basis_info_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_customer_passenger_address_id` (`passenger_address_id`),
  ADD KEY `FK_customer_passenger_contact_id` (`passenger_contact_id`),
  ADD KEY `FK_customer_customer_inward_flight_id` (`inward_flight_id`),
  ADD KEY `FK_customer_customer_outward_flight_id` (`outward_flight_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `FK_city_country_id` (`country_id`);

--
-- Indexes for table `city_airport`
--
ALTER TABLE `city_airport`
  ADD PRIMARY KEY (`city_nearby_airport_id`),
  ADD KEY `FK_city_nearby_airport_city_id` (`city_id`),
  ADD KEY `FK_city_nearyby_airport_airport_id` (`airport_id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `FK_contact_telephone_type_id` (`telephone_number_type_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `FK_flight_route_flight_route_id` (`flight_route_id`),
  ADD KEY `FK_flight_flight_name_id` (`flight_name_id`);

--
-- Indexes for table `flight_fare`
--
ALTER TABLE `flight_fare`
  ADD PRIMARY KEY (`flight_price_id`),
  ADD KEY `Fk_flight_fare_flight_id` (`flight_id`),
  ADD KEY `FK_flight_fare_passenger_category_id` (`passenger_category_id`);

--
-- Indexes for table `flight_name`
--
ALTER TABLE `flight_name`
  ADD PRIMARY KEY (`flight_name_id`),
  ADD KEY `FK_flight_name_flight_airline_id` (`flight_airline_id`);

--
-- Indexes for table `flight_route`
--
ALTER TABLE `flight_route`
  ADD PRIMARY KEY (`flight_route_id`),
  ADD KEY `FK_airport_depart_airport_id` (`depart_airport_id`),
  ADD KEY `FK_airport_arrival_airport_id` (`arrival_airport_id`);

--
-- Indexes for table `holiday_type`
--
ALTER TABLE `holiday_type`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_hotel_hotel_resort_id` (`hotel_resort_id`),
  ADD KEY `Fk_hotel_hotel_location_id` (`hotel_location_id`),
  ADD KEY `FK_hotel_hotel_type_id` (`hotel_type_id`);

--
-- Indexes for table `hotel_activity_type`
--
ALTER TABLE `hotel_activity_type`
  ADD PRIMARY KEY (`hotel_activity_type_id`);

--
-- Indexes for table `hotel_benefit_and_offer_info`
--
ALTER TABLE `hotel_benefit_and_offer_info`
  ADD PRIMARY KEY (`hotel_benefit_and_offer_info_id`),
  ADD KEY `FK_hotel_benefit_and_offer_benefit_and_offer_id` (`benefit_and_offer_id`),
  ADD KEY `FK_hotel_benefit_and_offer_hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_board_basis_info`
--
ALTER TABLE `hotel_board_basis_info`
  ADD PRIMARY KEY (`hotel_board_basis_info_id`),
  ADD KEY `FK_resort_board_basis_info_board_basis_id` (`board_basis_id`),
  ADD KEY `FK_resort_board_basis_info_resort_id` (`hotel_id`);

--
-- Indexes for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  ADD PRIMARY KEY (`hotel_facility_id`),
  ADD KEY `FK_hotel_facility_hotel_facility_type_id` (`hotel_facility_type_id`);

--
-- Indexes for table `hotel_facility_info`
--
ALTER TABLE `hotel_facility_info`
  ADD PRIMARY KEY (`hotel_facility_info_id`),
  ADD KEY `FK_resort_facility_info_resort_id` (`hotel_id`),
  ADD KEY `FK_resort_facility_info_resort_facility_id` (`hotel_facility_id`);

--
-- Indexes for table `hotel_facility_type`
--
ALTER TABLE `hotel_facility_type`
  ADD PRIMARY KEY (`hotel_facility_type_id`);

--
-- Indexes for table `hotel_nearby_places`
--
ALTER TABLE `hotel_nearby_places`
  ADD PRIMARY KEY (`hotel_nearby_places_id`),
  ADD KEY `FK_hotel_nearby_location_location_url_id` (`location_id`),
  ADD KEY `FK_hotel_nearby_location_hotel_activity_type_id` (`hotel_activity_type_id`);

--
-- Indexes for table `hotel_nearby_places_info`
--
ALTER TABLE `hotel_nearby_places_info`
  ADD PRIMARY KEY (`hotel_nearby_places_info_id`),
  ADD KEY `FK_hotel_nearby_location_info_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_nearby_location_hotel_nearby_location_id` (`hotel_nearby_places_id`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`hotel_room_id`),
  ADD KEY `FK_resort_room_room_type_id` (`room_type_id`),
  ADD KEY `FK_resort_room_resort_id` (`hotel_id`);

--
-- Indexes for table `hotel_room_facility`
--
ALTER TABLE `hotel_room_facility`
  ADD PRIMARY KEY (`hotel_room_facility_id`),
  ADD KEY `FK_resort_room_facility_resort_room_id` (`hotel_room_id`),
  ADD KEY `FK_resort_room_facility_resort_room_facility_type_id` (`room_facility_type_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FK_image_hotel_room_id` (`hotel_room_id`),
  ADD KEY `FK_image_hotel_id` (`hotel_id`);

--
-- Indexes for table `infant_carer`
--
ALTER TABLE `infant_carer`
  ADD PRIMARY KEY (`infant_carer_id`),
  ADD KEY `FK_infant_carer_infant_id` (`infant_id`),
  ADD KEY `FK_infant_carer_carer_id` (`carer_id`);

--
-- Indexes for table `jet2holidays_reviews`
--
ALTER TABLE `jet2holidays_reviews`
  ADD PRIMARY KEY (`jet2holidays_reviews_id`),
  ADD KEY `FK_jet2holidays_reviews_resort_id` (`hotel_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `FK_passenger_passenger_title_id` (`passenger_title_id`),
  ADD KEY `FK_passenger_customer_id` (`booking_id`),
  ADD KEY `FK_passenger_passenger_category_id` (`passenger_category_id`);

--
-- Indexes for table `passenger_card_details`
--
ALTER TABLE `passenger_card_details`
  ADD PRIMARY KEY (`passenger_card_details_id`),
  ADD KEY `FK_passenger_card_details_booking_id` (`booking_id`),
  ADD KEY `FK_passenger_card_details_passenger_card_type_id` (`payment_card_type_id`);

--
-- Indexes for table `passenger_category`
--
ALTER TABLE `passenger_category`
  ADD PRIMARY KEY (`passenger_category_id`);

--
-- Indexes for table `passenger_payment`
--
ALTER TABLE `passenger_payment`
  ADD PRIMARY KEY (`passenger_payment_id`),
  ADD KEY `FK_passenger_payment_passenger_payment_type_id` (`payment_type_id`),
  ADD KEY `FK_passenger_payment_booking_id` (`booking_id`);

--
-- Indexes for table `passenger_payment_type`
--
ALTER TABLE `passenger_payment_type`
  ADD PRIMARY KEY (`passenger_payment_type_id`);

--
-- Indexes for table `passenger_title`
--
ALTER TABLE `passenger_title`
  ADD PRIMARY KEY (`passenger_title_id`);

--
-- Indexes for table `payment_card_type`
--
ALTER TABLE `payment_card_type`
  ADD PRIMARY KEY (`payment_card_type_id`);

--
-- Indexes for table `resort`
--
ALTER TABLE `resort`
  ADD PRIMARY KEY (`resort_id`),
  ADD KEY `FK_resort_city_id` (`city_id`);

--
-- Indexes for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD PRIMARY KEY (`room_facility_id`);

--
-- Indexes for table `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`room_price_id`),
  ADD KEY `FK_room_price_resort_room_id` (`hotel_room_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `telephone_number_type`
--
ALTER TABLE `telephone_number_type`
  ADD PRIMARY KEY (`telephone_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `benefits_and_offers`
--
ALTER TABLE `benefits_and_offers`
  MODIFY `benefits_and_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `board_basis`
--
ALTER TABLE `board_basis`
  MODIFY `board_basis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booked_room`
--
ALTER TABLE `booked_room`
  MODIFY `booked_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `city_airport`
--
ALTER TABLE `city_airport`
  MODIFY `city_nearby_airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `flight_fare`
--
ALTER TABLE `flight_fare`
  MODIFY `flight_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `flight_name`
--
ALTER TABLE `flight_name`
  MODIFY `flight_name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `flight_route`
--
ALTER TABLE `flight_route`
  MODIFY `flight_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holiday_type`
--
ALTER TABLE `holiday_type`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotel_activity_type`
--
ALTER TABLE `hotel_activity_type`
  MODIFY `hotel_activity_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_benefit_and_offer_info`
--
ALTER TABLE `hotel_benefit_and_offer_info`
  MODIFY `hotel_benefit_and_offer_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_board_basis_info`
--
ALTER TABLE `hotel_board_basis_info`
  MODIFY `hotel_board_basis_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  MODIFY `hotel_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hotel_facility_info`
--
ALTER TABLE `hotel_facility_info`
  MODIFY `hotel_facility_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hotel_facility_type`
--
ALTER TABLE `hotel_facility_type`
  MODIFY `hotel_facility_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_nearby_places`
--
ALTER TABLE `hotel_nearby_places`
  MODIFY `hotel_nearby_places_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_nearby_places_info`
--
ALTER TABLE `hotel_nearby_places_info`
  MODIFY `hotel_nearby_places_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel_room`
--
ALTER TABLE `hotel_room`
  MODIFY `hotel_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hotel_room_facility`
--
ALTER TABLE `hotel_room_facility`
  MODIFY `hotel_room_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `infant_carer`
--
ALTER TABLE `infant_carer`
  MODIFY `infant_carer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jet2holidays_reviews`
--
ALTER TABLE `jet2holidays_reviews`
  MODIFY `jet2holidays_reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `passenger_card_details`
--
ALTER TABLE `passenger_card_details`
  MODIFY `passenger_card_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `passenger_category`
--
ALTER TABLE `passenger_category`
  MODIFY `passenger_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passenger_payment`
--
ALTER TABLE `passenger_payment`
  MODIFY `passenger_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `passenger_payment_type`
--
ALTER TABLE `passenger_payment_type`
  MODIFY `passenger_payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passenger_title`
--
ALTER TABLE `passenger_title`
  MODIFY `passenger_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_card_type`
--
ALTER TABLE `payment_card_type`
  MODIFY `payment_card_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resort`
--
ALTER TABLE `resort`
  MODIFY `resort_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_facility`
--
ALTER TABLE `room_facility`
  MODIFY `room_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_price`
--
ALTER TABLE `room_price`
  MODIFY `room_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `telephone_number_type`
--
ALTER TABLE `telephone_number_type`
  MODIFY `telephone_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_address_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `booked_room`
--
ALTER TABLE `booked_room`
  ADD CONSTRAINT `FK_booked_room_hotel_board_basis_info_id` FOREIGN KEY (`hotel_board_basis_info_id`) REFERENCES `hotel_board_basis_info` (`hotel_board_basis_info_id`),
  ADD CONSTRAINT `FK_customer_room_info_customer_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_customer_room_info_customer_room_id` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`hotel_room_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_customer_customer_inward_flight_id` FOREIGN KEY (`inward_flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `FK_customer_customer_outward_flight_id` FOREIGN KEY (`outward_flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `FK_customer_passenger_address_id` FOREIGN KEY (`passenger_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_customer_passenger_contact_id` FOREIGN KEY (`passenger_contact_id`) REFERENCES `contact_info` (`contact_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_city_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `city_airport`
--
ALTER TABLE `city_airport`
  ADD CONSTRAINT `FK_city_nearby_airport_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_city_nearyby_airport_airport_id` FOREIGN KEY (`airport_id`) REFERENCES `airport` (`airport_id`);

--
-- Constraints for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD CONSTRAINT `FK_contact_telephone_type_id` FOREIGN KEY (`telephone_number_type_id`) REFERENCES `telephone_number_type` (`telephone_type_id`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `FK_flight_flight_name_id` FOREIGN KEY (`flight_name_id`) REFERENCES `flight_name` (`flight_name_id`),
  ADD CONSTRAINT `FK_flight_route_flight_route_id` FOREIGN KEY (`flight_route_id`) REFERENCES `flight_route` (`flight_route_id`);

--
-- Constraints for table `flight_fare`
--
ALTER TABLE `flight_fare`
  ADD CONSTRAINT `FK_flight_fare_passenger_category_id` FOREIGN KEY (`passenger_category_id`) REFERENCES `passenger_category` (`passenger_category_id`),
  ADD CONSTRAINT `Fk_flight_fare_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `flight_name`
--
ALTER TABLE `flight_name`
  ADD CONSTRAINT `FK_flight_name_flight_airline_id` FOREIGN KEY (`flight_airline_id`) REFERENCES `airlines` (`airline_id`);

--
-- Constraints for table `flight_route`
--
ALTER TABLE `flight_route`
  ADD CONSTRAINT `FK_airport_arrival_airport_id` FOREIGN KEY (`arrival_airport_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `FK_airport_depart_airport_id` FOREIGN KEY (`depart_airport_id`) REFERENCES `airport` (`airport_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_hotel_resort_id` FOREIGN KEY (`hotel_resort_id`) REFERENCES `resort` (`resort_id`),
  ADD CONSTRAINT `FK_hotel_hotel_type_id` FOREIGN KEY (`hotel_type_id`) REFERENCES `holiday_type` (`holiday_id`),
  ADD CONSTRAINT `Fk_hotel_hotel_location_id` FOREIGN KEY (`hotel_location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `hotel_benefit_and_offer_info`
--
ALTER TABLE `hotel_benefit_and_offer_info`
  ADD CONSTRAINT `FK_hotel_benefit_and_offer_benefit_and_offer_id` FOREIGN KEY (`benefit_and_offer_id`) REFERENCES `benefits_and_offers` (`benefits_and_offer_id`),
  ADD CONSTRAINT `FK_hotel_benefit_and_offer_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_board_basis_info`
--
ALTER TABLE `hotel_board_basis_info`
  ADD CONSTRAINT `FK_resort_board_basis_info_board_basis_id` FOREIGN KEY (`board_basis_id`) REFERENCES `board_basis` (`board_basis_id`),
  ADD CONSTRAINT `FK_resort_board_basis_info_resort_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  ADD CONSTRAINT `FK_hotel_facility_hotel_facility_type_id` FOREIGN KEY (`hotel_facility_type_id`) REFERENCES `hotel_facility_type` (`hotel_facility_type_id`);

--
-- Constraints for table `hotel_facility_info`
--
ALTER TABLE `hotel_facility_info`
  ADD CONSTRAINT `FK_resort_facility_info_resort_facility_id` FOREIGN KEY (`hotel_facility_id`) REFERENCES `hotel_facility` (`hotel_facility_id`),
  ADD CONSTRAINT `FK_resort_facility_info_resort_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_nearby_places`
--
ALTER TABLE `hotel_nearby_places`
  ADD CONSTRAINT `FK_hotel_nearby_location_hotel_activity_type_id` FOREIGN KEY (`hotel_activity_type_id`) REFERENCES `hotel_activity_type` (`hotel_activity_type_id`),
  ADD CONSTRAINT `FK_hotel_nearby_location_location_url_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `hotel_nearby_places_info`
--
ALTER TABLE `hotel_nearby_places_info`
  ADD CONSTRAINT `FK_hotel_nearby_location_hotel_nearby_location_id` FOREIGN KEY (`hotel_nearby_places_id`) REFERENCES `hotel_nearby_places` (`hotel_nearby_places_id`),
  ADD CONSTRAINT `FK_hotel_nearby_location_info_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `FK_resort_room_resort_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_resort_room_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `hotel_room_facility`
--
ALTER TABLE `hotel_room_facility`
  ADD CONSTRAINT `FK_resort_room_facility_resort_room_facility_type_id` FOREIGN KEY (`room_facility_type_id`) REFERENCES `room_facility` (`room_facility_id`),
  ADD CONSTRAINT `FK_resort_room_facility_resort_room_id` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`hotel_room_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_image_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_image_hotel_room_id` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`hotel_room_id`);

--
-- Constraints for table `infant_carer`
--
ALTER TABLE `infant_carer`
  ADD CONSTRAINT `FK_infant_carer_carer_id` FOREIGN KEY (`carer_id`) REFERENCES `passenger` (`passenger_id`),
  ADD CONSTRAINT `FK_infant_carer_infant_id` FOREIGN KEY (`infant_id`) REFERENCES `passenger` (`passenger_id`);

--
-- Constraints for table `jet2holidays_reviews`
--
ALTER TABLE `jet2holidays_reviews`
  ADD CONSTRAINT `FK_jet2holidays_reviews_resort_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `FK_passenger_customer_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_passenger_passenger_category_id` FOREIGN KEY (`passenger_category_id`) REFERENCES `passenger_category` (`passenger_category_id`),
  ADD CONSTRAINT `FK_passenger_passenger_title_id` FOREIGN KEY (`passenger_title_id`) REFERENCES `passenger_title` (`passenger_title_id`);

--
-- Constraints for table `passenger_card_details`
--
ALTER TABLE `passenger_card_details`
  ADD CONSTRAINT `FK_passenger_card_details_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_passenger_card_details_passenger_card_type_id` FOREIGN KEY (`payment_card_type_id`) REFERENCES `payment_card_type` (`payment_card_type_id`);

--
-- Constraints for table `passenger_payment`
--
ALTER TABLE `passenger_payment`
  ADD CONSTRAINT `FK_passenger_payment_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_passenger_payment_passenger_payment_type_id` FOREIGN KEY (`payment_type_id`) REFERENCES `passenger_payment_type` (`passenger_payment_type_id`);

--
-- Constraints for table `resort`
--
ALTER TABLE `resort`
  ADD CONSTRAINT `FK_resort_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `room_price`
--
ALTER TABLE `room_price`
  ADD CONSTRAINT `FK_room_price_resort_room_id` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`hotel_room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
