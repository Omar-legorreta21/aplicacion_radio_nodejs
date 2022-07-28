-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2022 at 12:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `radios_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_radios`
--

CREATE TABLE `base_radios` (
  `ID` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `proveedor_ran` varchar(255) NOT NULL,
  `id_sitio` varchar(50) NOT NULL,
  `nombre_sitio` varchar(255) NOT NULL,
  `multicarrer` varchar(255) NOT NULL,
  `tipo_tt` varchar(255) NOT NULL,
  `status_tt` int(11) NOT NULL,
  `baseline_ran` varchar(255) NOT NULL,
  `status_construccion` varchar(255) NOT NULL,
  `rfi_estimado` varchar(255) NOT NULL,
  `status_ca` int(11) NOT NULL,
  `rfi_estimado_cfe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_radios`
--

INSERT INTO `base_radios` (`ID`, `region`, `proveedor_ran`, `id_sitio`, `nombre_sitio`, `multicarrer`, `tipo_tt`, `status_tt`, `baseline_ran`, `status_construccion`, `rfi_estimado`, `status_ca`, `rfi_estimado_cfe`, `status`, `fecha_registro`) VALUES
(2, 'prueba', 'legorreta talavera', '', '', '', '', 0, '', '', '', 0, '', 1, '2022-07-27 20:11:07'),
(3, 'Elzabeth__', 'Ramos Gonzalez', '', '', '', '', 0, '', '', '', 0, '', 1, '2022-07-27 22:32:28'),
(4, 'Sara Noemi', 'Fernandez Ramos', '', '', '', '', 0, '', '', '', 0, '', 1, '2022-07-27 22:15:13'),
(5, 'Elzabeth 22', 'Ramos Gonzalez', '', '', '', '', 0, '', '', '', 0, '', 1, '2022-07-27 22:28:21'),
(6, 'Elzabeth 33', 'Ramos Gonzalez', '', '', '', '', 0, '', '', '', 0, '', 1, '2022-07-27 22:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `radios_base`
--
-- Error reading structure for table radios_base.radios_base: #1932 - Table &#039;radios_base.radios_base&#039; doesn&#039;t exist in engine
-- Error reading data for table radios_base.radios_base: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `radios_base`.`radios_base`&#039; at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_radios`
--
ALTER TABLE `base_radios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base_radios`
--
ALTER TABLE `base_radios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
