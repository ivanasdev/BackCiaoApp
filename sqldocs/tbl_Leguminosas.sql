-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:29:16
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
-- Estructura de tabla para la tabla `tbl_Leguminosas`
--

CREATE TABLE `tbl_Leguminosas` (
  `id_Alimento` int(11) NOT NULL,
  `st_alimento` varchar(50) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(50) DEFAULT NULL,
  `st_unidad` varchar(50) DEFAULT NULL,
  `st_peso_neto_g` varchar(50) DEFAULT NULL,
  `st_energia_kcal` varchar(50) DEFAULT NULL,
  `st_energia_kj` varchar(50) DEFAULT NULL,
  `st_proteina_g` varchar(50) DEFAULT NULL,
  `st_lipidos_g` varchar(50) DEFAULT NULL,
  `st_hidratos_de_carbono` varchar(50) DEFAULT NULL,
  `st_fibra_g` varchar(50) DEFAULT NULL,
  `st_hierro_no_hem` varchar(50) DEFAULT NULL,
  `st_selenio_mcg` varchar(50) DEFAULT NULL,
  `st_sodio_mg` varchar(50) DEFAULT NULL,
  `st_fosforo_mg` varchar(50) DEFAULT NULL,
  `st_azucar_g` varchar(50) DEFAULT NULL,
  `st_azucar` varchar(50) DEFAULT NULL,
  `st_indice_glicemico` varchar(50) DEFAULT NULL,
  `st_carga_glicemica` varchar(50) DEFAULT NULL,
  `st_categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_Leguminosas`
--

INSERT INTO `tbl_Leguminosas` (`id_Alimento`, `st_alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono`, `st_fibra_g`, `st_hierro_no_hem`, `st_selenio_mcg`, `st_sodio_mg`, `st_fosforo_mg`, `st_azucar_g`, `st_azucar`, `st_indice_glicemico`, `st_carga_glicemica`, `st_categoria`) VALUES
(1, 'Alubia germinada', '2', 'taza', '380', '125', '524', '18.2', '2.3', '17.9', 'ND', '3.4', '2.3', '26.6', '144.4', 'ND', 'ND', 'ND', 'ND', 'Leguminosas'),
(2, 'Alubia cruda (chica o grande)', '35', 'g', '35', '117', '487', '8.1', '0.3', '21.1', '5.3', '3.7', '4.5', '5.6', '105.4', '0.7', '0', '0', '0', 'Leguminosas'),
(3, 'Alubia cocida (chica o grande)', ' 1/2', 'taza', '90', '124', '520', '8.7', '0.3', '22.5', '5.6', '3.3', '1.2', '5.4', '101.1', '0.3', '0.6', '28', '6.3', 'Leguminosas'),
(4, 'Alubia enlatada guisada', ' 1/3', 'taza', '86', '99', '412', '6.3', '0.3', '18.3', '4.2', '2.6', '1.4', '299.9', '78.7', '0.3', '0.8', '52', '9.5', 'Leguminosas'),
(5, 'Frjol germinado cocido', '1', 'taza', '124', '97', '404', '8.8', '1', '18.6', '10.7', '2.6', '0.7', '17.4', '127.7', 'ND', 'ND', 'ND', 'ND', 'Leguminosas'),
(6, 'Frijol germinado crudo', '1 1/2', 'taza', '156', '105', '437', '9.6', '1.1', '20.4', 'ND', '3', '0.9', '203', '156', 'ND', 'ND', '0', '0', 'Leguminosas'),
(7, 'Frijol molido', ' 1/3', 'taza', '73', '96', '401', '64', '0.4', '17.2', '6.3', '1.5', '0.9', '0.8', '101.6', '0.2', '0.7', 'ND', 'NO', 'Leguminosas'),
(8, 'Frijol promedio cocido', ' 1/2', 'taza', '86', '114', '475', '7.6', '0.5', '20.4', '7.5', '1.8', '1', '1', '120.4', '0.3', '0.6', '43', '8.8', 'Leguminosas'),
(9, 'Frijol promedio crudo', '35', 'g', '35', '119', '499', '7.6', '0.5', '21.8', '5.3', '1.8', '1.1', '1.8', '123.2', '0.7', '0', '0', '0', 'Leguminosas'),
(10, 'Frijoles enteros enlatados', ' 1/2', 'taza', '128', '108', '449', '6.7', '0.8', '18.6', '6.8', '1.5', '1.2', '378.9', '115.2', '2.4', '4.7', '45', '8.4', 'Leguminosas'),
(11, 'Frijoles refritos, caseros o enlatados', ' 1/3', 'taza', '75', '95', '396', '4.1', '4.1', '11.3', '7.1', 'ND', '2.4', '237', 'ND', '3', '9', 'ND', 'ND', 'Leguminosas'),
(12, 'Gandul', '40', 'g', '34', '118', '493', '6', '0.6', '22.7', '2.9', '1.7', '1', '5.8', 'ND', 'ND', '0', 'ND', 'ND', 'Leguminosas'),
(13, 'Garbanzo cocido', ' 1/2', 'taza', '82', '135', '562', '7.3', '2.1', '22.5', '6.3', '2.4', '3', '5.5', '138', '4', '7.9', '31', '7', 'Leguminosas'),
(14, 'Garbanzo crudo', '35', 'g', '35', '127', '533', '6.8', '2.2', '21.2', '6.1', '2.2', '2.9', '8.4', '128.1', '3.7', '0.1', '0', '0', 'Leguminosas'),
(15, 'Garbanzo enlatado', ' 1/5', 'taza', '79', '94', '395', '3.9', '0.9', '17.9', '3.5', '1.1', '2.2', '236.9', '71.3', 'ND', 'ND', '42', '7.5', 'Leguminosas'),
(16, 'Haba cocida', ' 1/2', 'taza', '85', '94', '391', '6.5', '0.3', '16.7', '4.6', '1.3', '2.2', '4.3', '106.3', '1.5', '3.1', 'ND', 'ND', 'Leguminosas'),
(17, 'Haba cruda', ' 1/4', 'taza', '38', '128', '535', '9.8', '0.6', '21.9', '9.4', '2.5', '3.1', '4.9', '157.9', '2.1', '8.6', '0', '0', 'Leguminosas'),
(18, 'Harina de frijol', '3', 'cucharada', '33', '110', '461', '7.4', '0.7', '19.4', '1.5', '4.4', '4.2', '2.6', 'ND', 'ND', 'ND', '0', '0', 'Leguminosas'),
(19, 'Harina de haba', '3', 'cucharada', '33', '114', '477', '9.1', '0.6', '19.1', '0.6', '6', '3.9', '4.3', 'ND', 'ND', 'ND', '0', '0', 'Leguminosas'),
(20, 'Harina de garbanzo', '3', 'cucharada', '33', '117', '490', '6.6', '2.2', '18.7', '1.5', '2.3', '3.9', '8.5', 'ND', 'ND', 'ND', '0', '0', 'Leguminosas'),
(21, 'Harina de lenteja', '3', 'cucharada', '33', '108', '451', '8.1', '0.5', '18.5', '1.3', '6.6', '3.9', '0', '80.4', 'ND', 'ND', '0', '0', 'Leguminosas'),
(22, 'Harina de soya', '4', 'cucharada', '25', '108', '450', '9.3', '5.1', '7.8', '2.4', '1.6', '1.8', '2.9', '116.6', 'ND', 'ND', '0', '0', 'Leguminosas'),
(23, 'Hadna de soya baja en grasa', '5', 'cucharada', '31', '114', '476', '15.3', '2.7', '9.4', '3', '1.8', '2.8', '5.5', '181.6', '3.1', '0.6', '0', '0', 'Leguminosas'),
(24, 'Harina de soya sin grasa', '5', 'cucharada', '28', '101', '424', '14', '1.8', '9.9', '2.7', '1.6', '16.2', '2.5', '185.6', '5.4', '1.1', '0', '0', 'Leguminosas'),
(25, 'Ibes o haba de lima cocido', ' 1/2', 'taza', '85', '105', '437', '5.8', '0.3', '20.1', '4.5', '2.1', '1.7', '14.5', '110.5', '1.4', '2.8', '32', '6.4', 'Leguminosas'),
(26, 'ibes o haba de lima crudo', '90', 'g', '90', '102', '425', '6.2', '0.8', '18.2', '4.4', '2.8', '1.6', '7.2', '122.4', '1.3', '0', '0', '0', 'Leguminosas'),
(27, 'Lenteja cocida', ' 1/2', 'taza', '99', '115', '481', '9', '0.4', '20', '7.8', '3.3', '2.8', '2', '178', '1.8', '3.6', '26', '5.2', 'Leguminosas'),
(28, 'Miso de soya', ' 1/4', 'taza', '69', '142', '594', '8.2', '4.2', '19.3', '3.8', '1.9', '1.1', '2516.5', '105.5', 'ND', 'ND', '0', '0', 'Leguminosas'),
(29, 'Lenteja cruda', '35', 'g', '35', '124', '516', '9', '0.4', '21', '10.7', '2.6', '2.9', '2.1', '157.9', '0.7', '0', '0', '0', 'Leguminosas'),
(30, 'Proteína aislada de soya', '15', 'g', '15', '51', '212', '12.1', '0.5', '1.1', '0.8', '2.2', '0.1', '150.8', '116.4', 'ND', 'ND', '0', '0', 'Leguminosas'),
(31, 'Soya texturizada', '35', 'g', '35', '111', '465', '13.5', '1', '13.6', '6.3', '4.3', '0.3', '3.8', '226.3', 'ND ', 'ND', '0', '0', 'Leguminosas'),
(32, 'Alverjón o chícharo seco cocido', ' 1/2', 'taza', '98', '116', '483', '8.2', '0.4', '20.7', 'ND', '1.3', '0.6', '2', '97', '2.8', '5.7', '22', '4.5', 'Leguminosas'),
(33, 'Proteína concentrada de soya', '20', 'g', '20', '66', '277', '11.6', '0.1', '6.2', '1.1', '2.2', '0.2', '0.6', '167.8', '4', '0.2', '0', '0', 'Leguminosas'),
(34, 'Soya cocida', ' 1/5', ' taza', '57', '98', '410', '9.4', '5.1', '5.6', '3.4', '2.9', '4.1', '0.6', '139.1', '1.7', '5.2', '18', '1', 'Leguminosas'),
(35, 'Alverjón o chícharo seco crudo', '35', 'g', '35', '119', '499', '8.6', '0.4', '21.1', 'ND', '1.6', '0.6', '5.3', '128.1', '2.8', '0.1', '0', '0', 'Leguminosas'),
(36, 'Chícharo germinado coddo', ' 1/2', 'taza', '103', '100', '420', '7.2', '0.5', '17.5', 'ND', '1.7', '0.6', '3.1', '24.6', 'ND', 'ND', 'ND', 'ND', 'Leguminosas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_Leguminosas`
--
ALTER TABLE `tbl_Leguminosas`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_Leguminosas`
--
ALTER TABLE `tbl_Leguminosas`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
