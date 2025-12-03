-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:28:42
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
-- Estructura de tabla para la tabla `tbl_LecheEntera`
--

CREATE TABLE `tbl_LecheEntera` (
  `id_Alimento` int(11) NOT NULL,
  `st_Alimento` varchar(50) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(50) DEFAULT NULL,
  `st_unidad` varchar(50) DEFAULT NULL,
  `st_peso_neto_g` varchar(50) DEFAULT NULL,
  `st_energia_kcal` varchar(50) DEFAULT NULL,
  `st_energia_kj` varchar(50) DEFAULT NULL,
  `st_proteina_g` varchar(50) DEFAULT NULL,
  `st_lipidos_g` varchar(50) DEFAULT NULL,
  `st_hidratos_de_carbono_g` varchar(50) DEFAULT NULL,
  `st_Colesterol_mg` varchar(50) DEFAULT NULL,
  `st_vitamina_A_Mg_RE` varchar(50) DEFAULT NULL,
  `st_calcio_mg` varchar(50) DEFAULT NULL,
  `st_sodio_mg` varchar(50) DEFAULT NULL,
  `st_categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_LecheEntera`
--

INSERT INTO `tbl_LecheEntera` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono_g`, `st_Colesterol_mg`, `st_vitamina_A_Mg_RE`, `st_calcio_mg`, `st_sodio_mg`, `st_categoria`) VALUES
(1, 'Leche caliente', '1', 'taza', '240', '148', '617', '7.9', '8', '11.2', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(2, 'Leche', '1', 'taza', '240', '148', '617', '7.9', '8', '11.2', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(3, 'Leche clavel', '1/2', 'taza', '120', '150', '627', '7.5', '7.5', '11.3', '37.5', '0', '300', '112.5', 'Leche Entera'),
(4, 'Leche cruda', '1', 'taza', '240', '146', '612', '7.9', '7.9', '11.3', '33.6', '74.4', '285.6', '117.6', 'Leche Entera'),
(5, 'Leche de burra', '1', 'taza', '237', '126', '525', '4.7', '5.7', '14.5', '0', '47.4', '194.3', '0', 'Leche Entera'),
(6, 'Leche entera en polvo', '4', 'cucharada', '32', '159', '665', '8.4', '8.5', '12.3', '31', '90', '292', '119', 'Leche Entera'),
(7, 'Leche entera evaporada', '1/2', 'taza', '120', '150', '627', '7.5', '7.5', '11.3', '37.5', '0', '300', '112.5', 'Leche Entera'),
(8, 'Leche entera ultrapasteurizada', '1', 'taza', '240', '134', '562', '7', '7', '11.3', '14.4', '0', '0', '168', 'Leche Entera'),
(9, 'Leche evaporada', '1/2', 'taza', '120', '150', '627', '7.5', '7.5', '11.3', '37.5', '0', '300', '112.5', 'Leche Entera'),
(10, 'Leche fría', '1', 'taza', '240', '148', '617', '7.9', '8', '11.2', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(11, 'Leche hervida', '1', 'taza', '240', '163', '682', '8.2', '9.1', '12.5', '33.6', '74.4', '271.2', '117.6', 'Leche Entera'),
(12, 'Leche humana', '1', 'taza', '240', '170', '712', '2.3', '10.8', '16.3', '31', '154.8', '77.4', '38.7', 'Leche Entera'),
(13, 'Leche Liconsa', '4', 'cucharada', '32', '159', '665', '8.4', '8.5', '12.3', '31', '90', '292', '119', 'Leche Entera'),
(14, 'Leche materna', '1', 'taza', '240', '170', '712', '2.3', '10.8', '16.3', '31', '154.8', '77.4', '38.7', 'Leche Entera'),
(15, 'Leche maternizada en polvo', '2', 'cucharada', '26', '132', '551', '3.5', '7', '14.3', '0', '223.6', '87.1', '0', 'Leche Entera'),
(16, 'Leche omega verde', '1', 'taza', '240', '120', '502', '7.9', '4.6', '11.5', '19.2', '0', '292.8', '120', 'Leche Entera'),
(17, 'Leche pasteurizada', '1', 'taza', '240', '146', '612', '7.9', '7.9', '11.3', '33.6', '74.4', '285.6', '117.6', 'Leche Entera'),
(18, 'Leche preparada', '1', 'taza', '240', '141', '589', '6.5', '5.9', '8.5', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(19, 'Leche de cabra', '1', 'taza', '240', '165', '691', '8.6', '9.9', '10.7', '27.5', '134.8', '320.1', '120', 'Leche Entera'),
(20, 'Yogurt', '1', 'taza', '227', '139', '581', '7.9', '7.4', '10.6', '29', '68', '274', '105', 'Leche Entera'),
(21, 'Leche en polvo', '4', 'cucharada', '32', '159', '665', '8.4', '8.5', '12.3', '31', '90', '292', '119', 'Leche Entera'),
(22, 'Leche de vaca', '1', 'taza', '240', '148', '617', '7.9', '8', '11.2', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(23, 'Leche entera', '1', 'taza', '240', '148', '617', '7.9', '8', '11.2', '32.5', '74.8', '286.2', '118', 'Leche Entera'),
(24, 'Yogurt natura', '1', 'taza', '227', '139', '581', '7.9', '7.4', '10.6', '29', '68', '274', '105', 'Leche Entera'),
(25, 'Leche entera en polvo adicionada', '4', 'cucharada', '32', '159', '665', '8.4', '8.5', '12.3', '31', '90', '292', '119', 'Leche Entera'),
(26, 'Leche entera baja en sodio', '1', 'taza', '240', '147', '613', '7.5', '8.3', '10.7', '32.5', '76.7', '242', '5.9', 'Leche Entera');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_LecheEntera`
--
ALTER TABLE `tbl_LecheEntera`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_LecheEntera`
--
ALTER TABLE `tbl_LecheEntera`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
