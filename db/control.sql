-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2021 at 11:51 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `control`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ccomercial`
--

DROP TABLE IF EXISTS `Ccomercial`;
CREATE TABLE IF NOT EXISTS `Ccomercial` (
  `id_Ccomercial` int(11) NOT NULL AUTO_INCREMENT,
  `Ccomercial_razonSocial` varchar(60) NOT NULL,
  `Ccomercial_email` varchar(100) NOT NULL,
  `Ccomercial_nit` varchar(100) NOT NULL,
  `Ccomercial_password` varchar(255) NOT NULL,
  `Ccomercial_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Ccomercial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ingreso`
--

DROP TABLE IF EXISTS `Ingreso`;
CREATE TABLE IF NOT EXISTS `Ingreso` (
  `id_Ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `Ccomercial_id` int(11) NOT NULL,
  `Persona_id` int(11) NOT NULL,
  `Ingreso_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Ingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
CREATE TABLE IF NOT EXISTS `Persona` (
  `id_Persona` int(11) NOT NULL AUTO_INCREMENT,
  `Persona_nombre` varchar(50) NOT NULL,
  `Persona_apellido` varchar(50) NOT NULL,
  `Persona_email` varchar(100) NOT NULL,
  `Persona_documento` varchar(100) NOT NULL,
  `Persona_positivo` int(1) NOT NULL DEFAULT '0',
  `Persona_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
