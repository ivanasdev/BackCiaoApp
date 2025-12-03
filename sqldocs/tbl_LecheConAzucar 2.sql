-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:27:59
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
-- Estructura de tabla para la tabla `tbl_LecheConAzucar`
--

CREATE TABLE `tbl_LecheConAzucar` (
  `id_Alimento` int(11) NOT NULL,
  `st_Alimento` varchar(250) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(100) DEFAULT NULL,
  `st_unidad` varchar(100) DEFAULT NULL,
  `st_peso_neto_g` varchar(100) DEFAULT NULL,
  `st_energia_kcal` varchar(100) DEFAULT NULL,
  `st_energia_kj` varchar(100) DEFAULT NULL,
  `st_proteina_g` varchar(100) DEFAULT NULL,
  `st_lipidos_g` varchar(100) DEFAULT NULL,
  `st_hidratos_de_carbono` varchar(100) DEFAULT NULL,
  `st_Colesterol_g` varchar(100) DEFAULT NULL,
  `st_vitamina_A_Mg_RE` varchar(100) DEFAULT NULL,
  `st_calcio_mg` varchar(100) DEFAULT NULL,
  `st_sodio_mg` varchar(100) DEFAULT NULL,
  `st_azucar_g` varchar(100) DEFAULT NULL,
  `st_azucar` varchar(100) DEFAULT NULL,
  `st_categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_LecheConAzucar`
--

INSERT INTO `tbl_LecheConAzucar` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono`, `st_Colesterol_g`, `st_vitamina_A_Mg_RE`, `st_calcio_mg`, `st_sodio_mg`, `st_azucar_g`, `st_azucar`, `st_categoria`) VALUES
(1, 'Alimento lácteo fermentado con Acti-Regularis sabor Ciruela Pasa', '1 1/3', 'vasito', '200', '206', '861', '6', '6.4', '30.9', '0', '0', '203', '94.7', '30.5', '23', 'Leche con azucar'),
(2, 'Alimento lácteo fermentado con Acti-Regularis sabor Ciruela Pasa (bebible)', '1', 'pieza', '250', '211', '883', '6', '6.8', '31.7', '0', '0', '200.4', '0', '31.5', '31.5', 'Leche con azucar'),
(3, 'Alimento lácteo fermentado con Acti-Regularis sabor Ciruela Pasa (sólido)', '1 1/3', 'pieza', '200', '206', '861', '6', '6.4', '30.9', '0', '0', '203', '94.7', '30.7', '23.1', 'Leche con azucar'),
(4, 'Alimento lácteo fermentado con Acti-Regularis sabor Fresa (bebible)', '1', 'pieza', '250', '211', '883', '6', '6.8', '32', '0', '0', '200.4', '0', '31.8', '31.8', 'Leche con azucar'),
(5, 'Alimento lácteo fermentado sabor manzana (L. casei y S. thermophilus)', '2 1/2', 'pieza', '270', '201', '840', '10', '0.5', '39', '0', '0', '313.2', '121.5', '37.8', '15.1', 'Leche con azucar'),
(6, 'Alimento lácteo fermentado sabor fresa (L. casei y 5. thermophilus)', '2', 'pieza', '216', '188', '786', '8', '4.4', '29.6', '0', '0', '231.1', '92.9', '29.6', '14.8', 'Leche con azucar'),
(7, 'Alimento lácteo fermentado con Acti-Regularis sabor Fresa (sólido)', '1 1/3', 'pieza', '200', '188', '784', '7', '6.4', '25.5', '0', '0', '255.4', '94.7', '25.3', '19.1', 'Leche con azucar'),
(8, 'Helado de choco chip', ' 1/2', 'taza', '84', '215', '897', '4', '14', '17.5', '50.5', '169.2', '119.5', '48', '14.6', '31.8', 'Leche con azucar'),
(9, 'Helado de chocolate bajo en calorías', ' 3/4', 'taza', '99', '199', '832', '5', '7', '28.7', '9.9', '59.4', '157.4', '70.3', '24.5', '32.6', 'Leche con azucar'),
(10, 'Helado de café bajo en calorías', ' 1/2', 'taza', '91', '183', '765', '5', '7', '27', '37.3', 'ND', '143.8', '68.3', '21.9', '43.8', 'Leche con azucar'),
(11, 'Alimento lácteo fermentado sabor natural (L. casei yS. thermophilus)', '2 1/2', 'pieza', '270', '202', '843', '11', '0.5', '38.8', '0', '0', '329.4', '129.6', '35.1', '14', 'Leche con azucar'),
(12, 'Helado de chocolate', ' 3/4', 'taza', '99', '214', '894', '4', '11', '27.9', '33.7', '114.8', '107.9', '75.2', '25.1', '33.5', 'Leche con azucar'),
(13, 'Helado de yogur', '1', 'taza', '158', '201', '841', '5', '5.7', '34.2', '20.6', '60.2', '158.3', '99.8', '33.9', '37.3', 'Leche con azucar'),
(14, 'Helado de yogur de fresa', '1', 'taza', '158', '201', '841', '5', '5.7', '34.2', '20.6', '60.2', '158.3', '99.8', '33.9', '37.3', 'Leche con azucar'),
(15, 'Helado de fresa', ' 3/4', 'taza', '99', '190', '795', '3', '8.3', '27.3', '28.7', '95', '118.8', '59.4', '22.9', '30.6', 'Leche con azucar'),
(16, 'Helado de vainilla', ' 3/4', 'taza', '99', '199', '832', '3', '10.9', '23.4', '43.6', '114.8', '126.7', '79.2', '21', '28', 'Leche con azucar'),
(17, 'Helado de vainilla bajo en calorías', '1', 'taza', '132', '218', '910', '6', '6.4', '34.1', '13.2', '167.6', '212.5', '97.7', '29.2', '29.2', 'Leche con azucar'),
(18, 'Helado de fresa bajo en calorías', ' 1/2', 'taza', '123', '200', '836', '6', '5.7', '31.2', '18.5', '539.3', '208.6', '87.6', '28.1', '42.6', 'Leche con azucar'),
(19, 'Helado napolitano', ' 3/4', 'taza', '102', '205', '857', '4', '11.2', '24.1', '44.9', '120.4', '130.6', '81.6', '21.5', '28.7', 'Leche con azucar'),
(20, 'Helado napolitano bajo en calorías', ' 2/3', 'taza', '119', '192', '804', '6', '5.2', '31.1', '16.7', 'ND', '188.7', '82.4', '26.8', '40.7', 'Leche con azucar'),
(21, 'Leche con chocolate', '1', 'taza', '240', '200', '835', '8', '8.2', '24.9', '29.8', '151.2', '268.8', '143', '22.9', '22.9', 'Leche con azucar'),
(22, 'Leche con chocolate semidescremada 1°/o', '1', 'taza', '240', '182', '762', '7', '4.6', '29.1', '6.7', '142.1', '261.6', '158.4', '22.9', '22.9', 'Leche con azucar'),
(23, 'Leche con vainilla', '1', 'taza', '218', '207', '867', '6', '6.6', '31', '24', '56.8', '200.9', '120.1', '27.6', '30.4', 'Leche con azucar'),
(24, 'Leche fermentada con lactobacilo', '2 1/2', 'pieza', '250', '180', '752', '8', '4', '35.8', '0', '0', '207.5', '100', '35.8', '14.3', 'Leche con azucar'),
(25, 'Leche descremada con chocolate', '1 1/4', 'taza', '300', '189', '790', '10', '3', '31.3', '9', '174', '345', '183', '29.8', '23.9', 'Leche con azucar'),
(26, 'Leche en polvo sabor fresa', '8', 'cucharada', '56', '187', '780', '13', '0', '32', '0', '0', '826.7', '400', 'ND', 'ND', 'Leche con azucar'),
(27, 'Leche fermentada con lactobacilo sabor naranja', '2 1/2', 'pieza', '250', '185', '773', '7', '3.8', '40', '0', '0', '232.5', '100', '40', '16', 'Leche con azucar'),
(28, 'Leche fermentada con lactobacilo sabor natural', '2 1/2', 'pieza', '250', '208', '867', '7', '4', '35.8', '0', '0', '207.5', '100', '35.8', '14.3', 'Leche con azucar'),
(29, 'Leche fermentada con lactobacilo sabor vainilla', '2 1/3', 'pieza', '233', '205', '857', '6', '3.5', '37.3', '0', '0', '149.1', '93.2', '37.3', '16', 'Leche con azucar'),
(30, 'Leche rnalteada de chocolate', '1', 'taza', '240', '202', '843', '8', '7.8', '26.2', '24', '818.4', '307.2', '208.8', '25.2', '25.2', 'Leche con azucar'),
(31, 'Leche malteada sabor chocolate', ' 3/4', 'pieza', '180', '214', '895', '5', '4.9', '38.1', '19.8', '32.4', '237.6', '199.8', '37.5', '100.1', 'Leche con azucar'),
(32, 'Leche malteada sabor vainilla', ' 3/4', 'pieza', '180', '202', '843', '7', '5.5', '32', '21.6', '45', '262.8', '171', '32', '42.6', 'Leche con azucar'),
(33, 'Malteada de chocolate', ' 2/3', 'taza', '156', '198', '828', '5', '5.8', '32', '20', '39', '176.3', '151.3', '29', '44.6', 'Leche con azucar'),
(34, 'Malteada de fresa', ' 3/4', 'pieza', '180', '203', '850', '6', '5', '34', '19.8', '46.8', '203.4', '149.4', '33.3', '44.4', 'Leche con azucar'),
(35, 'Leche malteada sabor fresa', ' 3/4', 'pieza', '182', '204', '854', '7', '5.5', '32.4', '21.9', '45.6', '266.3', '173.3', '32.4', '42.6', 'Leche con azucar'),
(36, 'Chongos zamoranos', ' 1/2', 'taza', '108', '194', '813', '6', '3.2', '34.6', '10.8', '21.6', '220.3', '54', '30.2', '56', 'Leche con azucar'),
(37, 'Leche semidescremada sabor chocolate', '1', 'pieza', '240', '182', '762', '7', '4.6', '29.1', '19.2', '153.6', '261.6', '158.4', '22.9', '22.9', 'Leche con azucar'),
(38, 'Helado con leche', ' 1/2', 'taza', '90', '205', '858', '3', '14.6', '15.5', 'ND', '72', '73.8', '0', 'ND', 'ND', 'Leche con azucar'),
(39, 'Helado de café', ' 1/2', 'taza', '91', '195', '817', '3', '10', '25.5', '30.8', '106.8', '98.6', '68.8', '23', '45.9', 'Leche con azucar'),
(40, 'Yoghurt Activia de Ciruela Pasa', '1 1/4', 'vasito', '200', '206', '861', '6', '6.4', '30.9', '0', '0', '203', '94.7', '30.7', '23.1', 'Leche con azucar'),
(41, 'Malteada de vainilla', ' 1/2', 'pieza', '130', '192', '802', '4', '8.4', '25.4', '29.8', '117.9', '149', '105', '17.7', '32.7', 'Leche con azucar'),
(42, 'Yoghurt bebible sabor durazno', '2', 'pieza', '330', '224', '938', '8', '2.3', '40.9', '0', '0', '290.4', '99.5', '40.6', '20.3', 'Leche con azucar'),
(43, 'Yoghurt de café', ' 3/4', 'taza', '180', '180', '752', '8', '2.1', '32.8', '10.6', '0', '211.8', '95.3', '29.6', '39.5', 'Leche con azucar'),
(44, 'Queso PetitSuisse', '1 1/4', 'pieza', '225', '203', '846', '9', '3.4', '36', '22.5', '69.8', '270', '0', '29.3', '23.4', 'Leche con azucar'),
(45, 'Yoghurtde fruta', ' 3/4', 'taza', '180', '201', '841', '8', '3.2', '33.9', '15.9', '0', '211.8', '105.9', '31.8', '42.4', 'Leche con azucar'),
(46, 'Yoghurt para beber sabor fruta', '1 1/4', 'pieza', '313', '216', '901', '6', '5', '37.5', '0', '0', '221.9', '81.3', 'ND', 'ND', 'Leche con azucar'),
(47, 'Yoghurt bebible sabor fresa', '2', 'pieza', '330', '224', '938', '8', '2.3', '40.9', '0', '0', '290.4', '0.1', '40.6', '20.3', 'Leche con azucar'),
(48, 'Yoghurt bebible sabor piña colada', '2', 'pieza', '330', '224', '938', '8', '2.3', '40.9', '0', '0', '290.4', '99.5', '40.6', '20.3', 'Leche con azucar'),
(49, 'Yoghurt de vainilla', ' 3/4', 'taza', '180', '201', '841', '8', '3.2', '33.9', '15.9', '0', '211.8', '100.6', '30.7', '40.9', 'Leche con azucar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_LecheConAzucar`
--
ALTER TABLE `tbl_LecheConAzucar`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_LecheConAzucar`
--
ALTER TABLE `tbl_LecheConAzucar`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
