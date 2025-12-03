-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:17:44
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
-- Estructura de tabla para la tabla `tbl_ArchiveUsers`
--

CREATE TABLE `tbl_ArchiveUsers` (
  `id_ArchiveUser` int(11) NOT NULL,
  `id_NVA_User` int(11) NOT NULL,
  `id_HistorialClinico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_ArchiveUsers`
--

INSERT INTO `tbl_ArchiveUsers` (`id_ArchiveUser`, `id_NVA_User`, `id_HistorialClinico`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_ArchiveUsers`
--
ALTER TABLE `tbl_ArchiveUsers`
  ADD PRIMARY KEY (`id_ArchiveUser`),
  ADD KEY `id_NVA_User` (`id_NVA_User`),
  ADD KEY `id_HistorialClinico` (`id_HistorialClinico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_ArchiveUsers`
--
ALTER TABLE `tbl_ArchiveUsers`
  MODIFY `id_ArchiveUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
