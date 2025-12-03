-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:15:29
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
-- Estructura de tabla para la tabla `tbl_NVA_Users`
--

CREATE TABLE `tbl_NVA_Users` (
  `id_NVA_User` int(11) NOT NULL,
  `st_Nombre` varchar(30) NOT NULL,
  `st_Ap` varchar(30) NOT NULL,
  `st_Am` varchar(30) NOT NULL,
  `st_Email` varchar(50) NOT NULL,
  `st_CellPhone` varchar(13) NOT NULL,
  `st_TokenNutri` varchar(100) DEFAULT NULL,
  `st_Password` varchar(100) NOT NULL,
  `st_Latitude` varchar(50) NOT NULL,
  `st_Longitude` varchar(50) NOT NULL,
  `st_Accuracy` varchar(30) NOT NULL,
  `st_Device` varchar(30) NOT NULL,
  `st_SysOp` varchar(30) NOT NULL,
  `dt_FechaRegistro` date NOT NULL,
  `i_Active` int(11) DEFAULT NULL,
  `id_ArchiveUser` int(11) DEFAULT NULL,
  `id_HistorialClinico` int(11) DEFAULT NULL,
  `id_NVNutritionist` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_NVA_Users`
--

INSERT INTO `tbl_NVA_Users` (`id_NVA_User`, `st_Nombre`, `st_Ap`, `st_Am`, `st_Email`, `st_CellPhone`, `st_TokenNutri`, `st_Password`, `st_Latitude`, `st_Longitude`, `st_Accuracy`, `st_Device`, `st_SysOp`, `dt_FechaRegistro`, `i_Active`, `id_ArchiveUser`, `id_HistorialClinico`, `id_NVNutritionist`) VALUES
(1, 'Ivan', 'Acosta', 'Suarez', 'ivan@ivan.com', '5567435678', '24GH1313', '9e50fdc4048209bc2309d937d71557c6', '37.785834', '-122.406417', '5', 'Apple', 'iOS', '2024-01-14', 1, 1, NULL, 1),
(2, 'Ricardo', 'Acosta', 'Santiago', 'ricardo@ricardo.com', '5567435678', '24GH1313', '9e50fdc4048209bc2309d937d71557c6', '37.785834', '-122.406417', '5', 'Apple', 'iOS', '2024-01-14', 1, 2, NULL, 1),
(3, 'Friedrich', 'Hartz', 'Hernandez', 'fred@fred.com', '5567435678', '30GHHCG', '9e50fdc4048209bc2309d937d71557c6', '37.785834', '-122.406417', '5', 'Apple', 'iOS', '2024-01-14', 1, 3, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_NVA_Users`
--
ALTER TABLE `tbl_NVA_Users`
  ADD PRIMARY KEY (`id_NVA_User`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_NVA_Users`
--
ALTER TABLE `tbl_NVA_Users`
  MODIFY `id_NVA_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
