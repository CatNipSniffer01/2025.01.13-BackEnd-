-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 13. 11:00
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `backend`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `CoverImage` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`Id`, `Title`, `Author`, `Genre`, `CoverImage`) VALUES
(1631, 'The Hidden World', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/3286/150'),
(1716, 'The Hidden World', 'Unknown', 'Italian', 'https://picsum.photos/seed/7998/150'),
(2449, 'The Hidden World', 'Unknown', 'Sci-Fi', 'https://picsum.photos/seed/9916/150'),
(3466, 'The Hidden World', 'Unknown', 'Romance', 'https://picsum.photos/seed/5355/150'),
(3985, 'A New Dawn', 'Unknown', 'Sci-Fi', 'https://picsum.photos/seed/7880/150'),
(4442, 'The Hidden World', 'Unknown', 'Sci-Fi', 'https://picsum.photos/seed/9983/150'),
(4930, 'The Hidden World', 'Unknown', 'Romance', 'https://picsum.photos/seed/9128/150'),
(5869, 'Journey to the Stars', 'Unknown', 'Chinese', 'https://picsum.photos/seed/2065/150'),
(6147, 'Journey to the Stars', 'Unknown', 'Italian', 'https://picsum.photos/seed/9210/150'),
(7588, 'The Hidden World', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/1233/150'),
(7688, 'The Hidden World', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/3020/150'),
(7749, 'The Hidden World', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/6092/150'),
(7879, 'A New Dawn', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/7810/150'),
(8008, 'A New Dawn', 'Unknown', 'Chinese', 'https://picsum.photos/seed/7775/150'),
(8125, 'The Hidden World', 'Unknown', 'Sci-Fi', 'https://picsum.photos/seed/1625/150'),
(8227, 'Journey to the Stars', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/2700/150'),
(8461, 'Journey to the Stars', 'Unknown', 'Chinese', 'https://picsum.photos/seed/3393/150'),
(8616, 'Journey to the Stars', 'Unknown', 'Italian', 'https://picsum.photos/seed/3369/150'),
(9348, 'The Hidden World', 'Unknown', 'Sci-Fi', 'https://picsum.photos/seed/7104/150'),
(9505, 'A New Dawn', 'Unknown', 'Fantasy', 'https://picsum.photos/seed/2892/150');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
