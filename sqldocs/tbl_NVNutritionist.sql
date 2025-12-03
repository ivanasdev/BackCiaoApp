-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:16:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_Sanne`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_NVNutritionist`
--

CREATE TABLE `tbl_NVNutritionist` (
  `id_NVNutritionist` int(11) NOT NULL,
  `id_NutritionistRequest` int(11) NOT NULL,
  `id_Membership` int(11) DEFAULT NULL,
  `id_NArchive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_NVNutritionist`
--

INSERT INTO `tbl_NVNutritionist` (`id_NVNutritionist`, `id_NutritionistRequest`, `id_Membership`, `id_NArchive`) VALUES
(1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_NVNutritionist`
--
ALTER TABLE `tbl_NVNutritionist`
  ADD PRIMARY KEY (`id_NVNutritionist`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_NVNutritionist`
--
ALTER TABLE `tbl_NVNutritionist`
  MODIFY `id_NVNutritionist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
