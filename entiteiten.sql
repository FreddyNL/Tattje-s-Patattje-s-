-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 okt 2019 om 11:47
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entiteiten`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `beoordelingen`
--

CREATE TABLE `beoordelingen` (
  `Datum` date NOT NULL,
  `Klantnummer` int(10) NOT NULL,
  `Inhoud` text NOT NULL,
  `Sterren` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE `bestellingen` (
  `Ordernummer` int(11) NOT NULL,
  `Klantnummer` int(11) NOT NULL,
  `Orderdatum` date NOT NULL,
  `Orderstatus` int(1) NOT NULL,
  `Totaalprijs` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `Klantnummer` int(10) NOT NULL,
  `Gebruikersnaam` varchar(20) NOT NULL,
  `Wachtwoord` varchar(50) NOT NULL,
  `Rechten` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerechten`
--

CREATE TABLE `gerechten` (
  `Artikelnummer` int(10) NOT NULL,
  `Prijs` float NOT NULL,
  `Naam` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ingrediënten`
--

CREATE TABLE `ingrediënten` (
  `Artikelnummer` int(50) NOT NULL,
  `Voorraad` int(10) NOT NULL,
  `Gerechten` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klantgegevens`
--

CREATE TABLE `klantgegevens` (
  `Klantnummer` int(10) NOT NULL,
  `Adres` varchar(256) NOT NULL,
  `Postcode` varchar(256) NOT NULL,
  `Woonplaats` varchar(256) NOT NULL,
  `Telefoonnummer` varchar(256) NOT NULL,
  `Mailadres` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verwerkte bestellingen`
--

CREATE TABLE `verwerkte bestellingen` (
  `Ordernummer` int(11) NOT NULL,
  `Artikelnummer` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`Ordernummer`);

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`Klantnummer`);

--
-- Indexen voor tabel `gerechten`
--
ALTER TABLE `gerechten`
  ADD PRIMARY KEY (`Artikelnummer`);

--
-- Indexen voor tabel `klantgegevens`
--
ALTER TABLE `klantgegevens`
  ADD PRIMARY KEY (`Klantnummer`);

--
-- Indexen voor tabel `verwerkte bestellingen`
--
ALTER TABLE `verwerkte bestellingen`
  ADD PRIMARY KEY (`Ordernummer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
