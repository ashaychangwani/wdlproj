-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 12:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `Abname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `releasedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`Abname`, `publisher`, `releasedate`) VALUES
('17', 'Ole', '1899-12-30'),
('18 Months', 'Atlas', '2017-12-14'),
('Astroworld', 'Notting Hill', '2017-07-11'),
('Badlands', 'Arthouse', '2017-02-09'),
('Beerbongs and Bentle', 'T Series', '1899-12-30'),
('Bon Iver', 'Independant', '1899-12-30'),
('Bury me alive', 'Shapiro', '1899-12-30'),
('Diss', 'Bad Boy', '1899-12-30'),
('Dua Lipa', 'Warner Brothers', '1899-12-30'),
('Father of Asahd', 'Sony', '1899-12-30'),
('Girls Volume 2: All ', '1995 Big Brother Rec', '1899-12-30'),
('Hot Fuss', 'The Island Def Jam M', '1899-12-30'),
('I Love You', 'Columbia', '1899-12-30'),
('I Think You Think To', 'AstrelWorks', '1899-12-30'),
('Invasion', 'Little Brother', '1899-12-30'),
('Kamikaze', 'Peer', '1899-12-30'),
('Kyoto', 'Sea Gayle', '1899-12-30'),
('Psychology ', 'LiberatorMusic', '1899-12-30'),
('Queen', 'Universal', '1899-12-30'),
('Red Pill Blues', 'Interscope', '1899-12-30'),
('Scorpion', 'Curb', '2017-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `A2name` varchar(20) NOT NULL,
  `genre2` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `latestrelease` varchar(20) NOT NULL,
  `A2birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`A2name`, `genre2`, `website`, `latestrelease`, `A2birthday`) VALUES
('Bon Iver', 'Indie-alt', 'Bon Iver.com', '2017-10-07', '2017-10-07'),
('Calvin Harris', 'Pop', 'calvin harris.com', '2017-02-16', '2017-02-16'),
('Cardi B', 'Rap', 'cardi b.com', '2017-02-06', '2017-02-06'),
('Childish Gambinho', 'Pop', 'Childish Gambinho.co', '2017-05-18', '2017-05-18'),
('Drake', 'Rap', 'drake.com', '2017-03-15', '2017-03-15'),
('Dua Lipa', 'Country', 'dua lipa.com', '2017-07-18', '2017-07-18'),
('Eden', 'Indie-alt', 'Eden.com', '2017-07-15', '2017-07-15'),
('Eminem', 'Rap', 'eminem.com', '2017-05-20', '2017-05-20'),
('Halsey', 'Pop', 'halsey.com', '2017-08-09', '2017-08-09'),
('Juice WRLD', 'Electronic', 'juice wrld.com', '2017-02-04', '2017-02-04'),
('Khalid', 'Pop', 'khalid.com', '2017-11-28', '2017-11-28'),
('Machine Gun Kelly', 'Rap', 'Machine Gun Kelly.co', '2017-03-22', '2017-03-22'),
('Maroon 5', 'Pop', 'maroon 5.com', '2017-08-08', '2017-08-08'),
('Nicki Minaj', 'Hip Hop', 'nicki minaj.com', '2017-08-14', '2017-08-14'),
('Oasis', 'Alternative Rock', 'Oasis.com', '2017-11-11', '2017-11-11'),
('Post Malone', 'House', 'post malone.com', '2017-04-29', '2017-04-29'),
('The Killers', 'Alternative Rock', 'The Killers.com', '2017-06-24', '2017-06-24'),
('The Neighbourhood', 'Alternative Rock', 'The Neighbourhood.co', '2017-04-02', '2017-04-02'),
('Travis Scott', 'Rock', 'travis scott.com', '2017-12-13', '2017-12-13'),
('Tyga', 'Trap', 'tyga.com', '2017-02-19', '2017-02-19'),
('XXXTENTACION', 'Rap', 'xxxtentacion.com', '2017-10-24', '2017-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Uname` varchar(20) NOT NULL,
  `contactn` varchar(12) NOT NULL,
  `cardn` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `song` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Uname`, `contactn`, `cardn`, `password`, `gender`, `name`, `email`, `birthday`, `song`) VALUES
('Adil', '33983744502', 'DD-98', 'tsec', 'm', 'Adil', 'Adil@gmail.com', '2017-10-18', NULL),
('akshat', '3499833019', 'JI-98', 'tsec', 'm', 'akshat', 'akshat@gmail.com', '2017-02-10', NULL),
('ashay', '9820990356', '123412341234', 'abc', 'MALE', 'Ashay', 'ashaychangwani@gmail', '1998-04-20', NULL),
('bhairavi', '6648299673', 'FR-44', 'tsec', 'f', 'bhairavi', 'bhairavi@gmail.com', '2017-12-01', NULL),
('dack', '33394755068', 'KJ-03', 'tsec', 'f', 'dack', 'dack@gmail.com', '2017-12-03', NULL),
('deepakshi', '9165722839', 'TS-43', 'tsec', 'm', 'deepakshi', 'deepakshi@gmail.com', '2017-09-02', NULL),
('don', '4409377812', 'DN-93', 'tsec', 'm', 'don', 'don@gmail.com', '2017-11-16', NULL),
('farida', '7738766896', 'BD-989', 'tsec', 'f', 'farida', 'farida@gmail.com', '2017-09-28', NULL),
('Haren', '7738766895', 'CD-897', 'tsec', 'm', 'Haren', 'haren.bhat@gmail.com', '2017-12-15', NULL),
('harshit', '8838744675', 'HI-90', 'tsec', 'm', 'harshit', 'harshit@gmail.com', '2017-10-27', NULL),
('james', '9187288345', 'CD-43', 'tsec', 'm', 'james', 'james@gmail.com', '2017-06-07', NULL),
('jordan', '229374481', 'IH-55', 'tsec', 'm', 'jordan', 'jordan@gmail.com', '2017-05-05', NULL),
('martin', '33983799274', 'DD-12', 'tsec', 'm', 'martin', 'martin@gmail.com', '2017-10-07', NULL),
('Moksh', '449488174', 'FF-34', 'tsec', 'm', 'Moksh', 'Moksh@gmail.com', '2017-01-05', NULL),
('nikita', '4494919293', 'HI-87', 'tsec', 'f', 'nikita', 'nikita@gmail.com', '2017-01-24', NULL),
('pratik', '7738766897', 'FE-09', 'tsec', 'm', 'pratik', 'pratik@gmail.com', '2017-08-05', NULL),
('renin', '2281922817', 'LL-58', 'tsec', 'f', 'renin', 'renin@gmail.com', '2017-11-10', NULL),
('riddhi', '9182633489', 'NJ-94', 'tsec', 'f', 'riddhi', 'riddhi@gmail.com', '2017-02-07', NULL),
('saisha', '2293844093', 'AS-23', 'tsec', 'ff', 'saisha', 'saisha@gmail.com', '2017-01-08', NULL),
('Tanay', '3391822675', 'KI-11', 'tsec', 'm', 'Tanay', 'Tanay@gmail.com', '2017-02-09', NULL),
('test2', '9820990356', 'da-123', 'abc', 'm', 'ashay changwani', 'ashaychangwani@gmail', '0000-00-00', NULL),
('Vinit', '9119299489', 'JK-92', 'tsec', 'm', 'Vinit', 'Vinit@gmail.com', '2017-06-30', NULL),
('yuvrj', '9198277635', 'DO-89', 'tsec', 'm', 'yuvrj', 'yuvrj@gmail.com', '2017-09-02', NULL),
('zamzar', '4483988481', 'KO-02', 'tsec', 'f', 'zamzar', 'zamzar@gmail.com', '2017-03-04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composed`
--

CREATE TABLE `composed` (
  `Ab1name` varchar(20) NOT NULL,
  `Ar1name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `has1`
--

CREATE TABLE `has1` (
  `P1name` varchar(20) NOT NULL,
  `U1name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has1`
--

INSERT INTO `has1` (`P1name`, `U1name`) VALUES
('Dance', 'farida'),
('disco', 'akshat'),
('drive', 'harshit'),
('go hard', 'harshit'),
('hard life', 'farida'),
('idc', 'akshat'),
('idk', 'harshit'),
('peace', 'pratik'),
('pumping-up', 'pratik'),
('pyaar', 'akshat'),
('quiet', 'harshit'),
('rock', 'akshat'),
('Romantic', 'pratik'),
('sars', 'Ashay'),
('sleep', 'pratik'),
('TGIF', 'farida'),
('top 50', 'ashay'),
('workout', 'akshat'),
('workout2', 'farida'),
('xoxo', 'Ashay');

-- --------------------------------------------------------

--
-- Table structure for table `has2`
--

CREATE TABLE `has2` (
  `S3name` varchar(20) NOT NULL,
  `P3name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has2`
--

INSERT INTO `has2` (`S3name`, `P3name`) VALUES
('Bodak Yellow', 'Dance'),
('Bodak Yellow', 'sars'),
('Bodak Yellow', 'top 50'),
('Bodak Yellow', 'xoxo'),
('Castle', 'sars'),
('Castle', 'top 50'),
('Coco Chanel ', 'sars'),
('Coco Chanel ', 'sleep'),
('Elevate', 'quiet'),
('Feel So Close', 'Dance'),
('Feels Like Summer ', 'sleep'),
('Girls Like you', 'sleep'),
('Haloscene', 'sleep'),
('Mr. Brightside', 'quiet'),
('New Rules', 'Dance'),
('No Brainer', 'Dance'),
('Rap Devil', 'Dance'),
('Rock+Roll', 'quiet'),
('Star Gazing', 'sleep'),
('The Ringer', 'quiet'),
('U Cry ', 'quiet');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `Pname` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `modification` date NOT NULL,
  `creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`Pname`, `genre`, `modification`, `creation`) VALUES
('Dance', 'Pop', '2017-04-20', '2017-05-11'),
('disco', 'Hip Hop', '2017-06-07', '2017-12-18'),
('drive', 'Pop', '2017-01-14', '2017-10-06'),
('go hard', 'House', '2017-09-06', '2017-01-27'),
('hard life', 'Hip Hop', '2017-03-28', '2017-02-03'),
('idc', 'Indie-alt', '2017-05-28', '2017-05-15'),
('idk', 'Country', '2017-09-24', '2017-02-27'),
('newp', 'New', '0000-00-00', '0000-00-00'),
('newp2', 'test', '0000-00-00', '0000-00-00'),
('peace', 'Trap', '2017-11-21', '2017-02-27'),
('pumping-up', 'Rap', '2017-02-19', '2017-07-20'),
('pyaar', 'Pop', '2017-12-17', '2017-08-19'),
('quiet', 'Indie-alt', '2017-02-13', '2017-03-30'),
('rock', 'Electronic', '2017-03-25', '2017-04-08'),
('Romantic', 'Rap', '2017-01-05', '2017-12-30'),
('sars', 'Indie-alt', '2018-10-20', '2017-07-13'),
('sleep', 'Indie-alt', '2017-11-05', '2017-11-07'),
('TGIF', 'Alternative Rock', '2017-03-23', '2017-07-02'),
('top 50', 'pop', '2018-10-20', '2018-10-20'),
('workout', 'Alternative Rock', '2017-07-13', '2017-04-16'),
('workout2', 'Alternative Rock', '2017-10-18', '2017-06-12'),
('xoxo', 'Rap', '2018-10-19', '2017-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `Sname` varchar(20) NOT NULL,
  `mood` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `releasedate2` date NOT NULL,
  `alname` varchar(20) NOT NULL,
  `Sartist` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Sname`, `mood`, `duration`, `releasedate2`, `alname`, `Sartist`) VALUES
('Bodak Yellow', 'Dance', 3, '2017-05-22', 'Invasion', 'Maroon 5'),
('Castle', 'Sad', 4, '2017-04-02', 'Badlands', 'Halsey'),
('Coco Chanel ', 'Party', 3, '2017-01-01', 'Queen', 'Cardi B'),
('Elevate', 'Angry', 3, '2017-07-24', 'Scorpion', 'Drake'),
('Feel So Close', 'Party', 4, '2017-12-07', '18 Months', 'Calvin Harris'),
('Feels Like Summer ', 'Chill', 4, '2017-02-05', 'Psychology ', 'Childish Gambinho'),
('Girls Like you', 'Dance', 4, '2017-10-18', 'Red Pill Blues', 'Dua Lipa'),
('Haloscene', 'Chill', 5, '2017-02-17', 'Bon Iver', 'Bon Iver'),
('Lucid Dream', 'Chill', 4, '2017-06-18', 'Bury me alive', 'Juice WRLD'),
('Mr. Brightside', 'Sad', 3, '2017-12-27', 'Hot Fuss', 'The Killers'),
('New Rules', 'Dance', 3, '2017-09-20', 'Dua Lipa', 'Post Malone'),
('No Brainer', 'Angry', 4, '2017-12-25', 'Father of Asahd', 'Khalid'),
('Psycho', 'Chill', 3, '2017-02-09', 'Beerbongs and Bentle', 'Tyga'),
('Rap Devil', 'Angry', 4, '2017-08-15', 'Diss', 'Machine Gun Kelly'),
('Rock+Roll', 'Chill', 5, '2017-05-03', 'I Think You Think To', 'Eden'),
('Save Me', 'Sad', 0, '2017-08-07', '17', 'XXXTENTACION'),
('Star Gazing', 'Party', 4, '2017-10-20', 'Astroworld', 'Travis Scott'),
('Sweater Weather', 'Chill', 4, '2017-09-25', 'I Love You', 'The Neighbourhood'),
('The Ringer', 'Angry', 5, '2017-09-13', 'Kamikaze', 'Eminem'),
('U Cry ', 'Sad', 4, '2017-04-29', 'Kyoto', 'Nicki Minaj'),
('Wonder Walll', 'Chill', 4, '2017-04-07', 'Girls Volume 2: All ', 'Oasis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Abname`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`A2name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Uname`);

--
-- Indexes for table `has1`
--
ALTER TABLE `has1`
  ADD PRIMARY KEY (`P1name`,`U1name`),
  ADD KEY `P1name` (`P1name`),
  ADD KEY `U1name` (`U1name`);

--
-- Indexes for table `has2`
--
ALTER TABLE `has2`
  ADD PRIMARY KEY (`S3name`,`P3name`),
  ADD KEY `P3name` (`P3name`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`Pname`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`Sname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `has1`
--
ALTER TABLE `has1`
  ADD CONSTRAINT `has1_ibfk_1` FOREIGN KEY (`P1name`) REFERENCES `playlist` (`Pname`),
  ADD CONSTRAINT `has1_ibfk_2` FOREIGN KEY (`U1name`) REFERENCES `client` (`Uname`);

--
-- Constraints for table `has2`
--
ALTER TABLE `has2`
  ADD CONSTRAINT `has2_ibfk_1` FOREIGN KEY (`P3name`) REFERENCES `playlist` (`Pname`),
  ADD CONSTRAINT `has2_ibfk_2` FOREIGN KEY (`S3name`) REFERENCES `songs` (`Sname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
