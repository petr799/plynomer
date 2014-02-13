-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Čtv 13. úno 2014, 09:14
-- Verze MySQL: 5.5.35
-- Verze PHP: 5.4.4-14+deb7u7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `tmep`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `plynomer_denni`
--

CREATE TABLE IF NOT EXISTS `plynomer_denni` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `den` date NOT NULL COMMENT 'Určitý den',
  `spotreba_den` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto dni',
  `spotreba_tyden` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto týdnu',
  `spotreba_mesic` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto měsíci',
  `spotreba_rok` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto roce',
  `spotreba_celkem` decimal(10,2) DEFAULT NULL COMMENT 'Součet všech naměřených hodnot spotřeby',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=19 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
