-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:25:09
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
-- Estructura de tabla para la tabla `tbl_AOAAPG`
--

CREATE TABLE `tbl_AOAAPG` (
  `id_Alimento` int(11) NOT NULL,
  `st_Alimento` varchar(50) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(50) DEFAULT NULL,
  `st_unidad` varchar(50) DEFAULT NULL,
  `st_peso_neto_g` varchar(50) DEFAULT NULL,
  `st_energia_kcal` varchar(50) DEFAULT NULL,
  `st_energia_kj` varchar(50) DEFAULT NULL,
  `st_proteina_g` varchar(50) DEFAULT NULL,
  `st_lipidos_g` varchar(50) DEFAULT NULL,
  `st_hidratos_de_carbono` varchar(50) DEFAULT NULL,
  `st_Colesterol_g` varchar(50) DEFAULT NULL,
  `st_vitamina_A_Mg_RE` varchar(50) DEFAULT NULL,
  `st_calcio_mg` varchar(50) DEFAULT NULL,
  `st_Hierro_mg` varchar(50) DEFAULT NULL,
  `st_sodio_mg` varchar(50) DEFAULT NULL,
  `st_selenio_mg` varchar(50) DEFAULT NULL,
  `st_categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_AOAAPG`
--

INSERT INTO `tbl_AOAAPG` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono`, `st_Colesterol_g`, `st_vitamina_A_Mg_RE`, `st_calcio_mg`, `st_Hierro_mg`, `st_sodio_mg`, `st_selenio_mg`, `st_categoria`) VALUES
(1, 'Alón de pollo con piel cocido', '1', 'pieza', NULL, '88', '366', '8.7', '6.4', NULL, '26.8', '15.3', '4.6', '0.4', '25.6', '7.1', 'AOAAPG'),
(2, 'Alón de pollo con piel crudo', '1', 'pieza', NULL, '85', '357', '7.1', '6.1', NULL, '29.6', '16.9', '4.6', '0.4', '28.1', '6', 'AOAAPG'),
(3, 'Carne de cerdo', '40', 'g', NULL, '105', '440', '6.8', '8.5', NULL, '28.8', '0.8', '5.6', '0.4', '22.4', '1.7', 'AOAAPG'),
(4, 'Afiejo tipo cotija', '2', 'cucharada', NULL, '70', '292', '6.8', '8', NULL, '20.4', '156', '206.4', '0.6', 'ND', '1', 'AOAAPG'),
(5, 'Carne de res semigrasosa', '40', 'g', NULL, '98', '408', '7', '7.5', NULL, '26.2', '3.4', '2.7', '0.8', '22.4', '1.4', 'AOAAPG'),
(6, 'Cheez whiz', '2', 'cucharada', NULL, '91', '381', '4', '6.9', NULL, '24.8', 'ND', '118.5', '0.1', '540.5', 'ND', 'AOAAPG'),
(7, 'Chuleta de carnero', '40', 'g', NULL, '105', '439', '5.6', '9', NULL, '25.6', '0', '1.8', '0.8', '27', '2.1', 'AOAAPG'),
(8, 'Cerdo en canal', '40', 'g', NULL, '111', '466', '3.8', '10.6', NULL, '20.7', '0.6', '1.4', '0.2', '12.3', '1.1', 'AOAAPG'),
(9, 'Cordero', '50', 'g', NULL, '104', '434', '6.1', '8.6', NULL, '26.9', '0', '5.9', '0.6', '21.7', '1.2', 'AOAAPG'),
(10, 'Chuleta de cordero entera', '1    ', 'pieza', NULL, '94', '394', '8.3', '6.5', NULL, '29.9', 'ND', '5', '0.8', '26.8', '0.6', 'AOAAPG'),
(11, 'Espaldilla', '45', 'g', NULL, '99', '414', '5.8', '8.2', NULL, '25.9', '0.7', '1.8', '0.4', '22.7', '1.1', 'AOAAPG'),
(12, 'Costilla de res', '40', 'g', NULL, '112', '467', '4.5', '10.3', NULL, '21.6', '0', '2.3', '0.5', '15.2', '0.7', 'AOAAPG'),
(13, 'EspaldHla de cerdo', '45', 'g', NULL, '99', '414', '5.8', '8.2', NULL, '25.9', '0.7', '1.8', '0.4', '22.7', '1.1', 'AOAAPG'),
(14, 'Espinazo', '45', 'g', NULL, '99', '414', '5.8', '8.2', NULL, '25.9', '0.7', '1.8', '0.4', '22.7', '1.1', 'AOAAPG'),
(15, 'Espinazo de cerdo', '45', 'g', NULL, '99', '414', '5.8', '8.2', NULL, '25.9', '0.7', '1.8', '0.4', '22.7', '1.1', 'AOAAPG'),
(16, 'Huevo de gansa', '1', 'pieza', NULL, '116', '485', '8.7', '8.3', NULL, '533.7', '115.9', '37.8', '2.3', '86.6', '3.2', 'AOAAPG'),
(17, 'Carne molida popular de res', '40', 'g', NULL, '97', '407', '5.2', '8.3', NULL, '24.3', '3.9', '2.6', '0.6', '19.4', '0.7', 'AOAAPG'),
(18, 'Fondue de queso', '31/2', 'cucharada', NULL, '104', '435', '6.5', '6.1', NULL, '20.6', 'ND', '216.5', '0.2', '60.2', '0.6', 'AOAAPG'),
(19, 'Huevo congelado sin colesterol', '4', 'cucharada', NULL, '96', '401', '6.8', '6.7', NULL, '1', '81', '44', '1.2', '120', '2', 'AOAAPG'),
(20, 'Huevo de pato', '1', 'pieza', NULL, '85', '357', '5.9', '6.4', NULL, '408.5', '88.7', '29.7', '1.8', '67.3', '2.2', 'AOAAPG'),
(21, 'Carne molida regular', '40', 'g', NULL, '107', '448', '7.2', '8.5', NULL, '29.6', '4.8', '4', '1.1', '26', '0.9', 'AOAAPG'),
(22, 'Huevo estrellado', '1', 'pieza', NULL, '90', '377', '6.3', '7', NULL, '210.2', '88.8', '27.1', '0.9', '93.8', '2.1', 'AOAAPG'),
(23, 'Huevo frito', '1', 'pieza', NULL, '90', '377', '6.3', '7', NULL, '210.2', '88.8', '211', '0.9', '93.8', '2.1', 'AOAAPG'),
(24, 'Carne molida regular cocida', '35', 'g', NULL, '100', '420', '8.1', '7.3', NULL, '30.5', '0', '3.5', '0.8', '21', '1', 'AOAAPG'),
(25, 'Jamón del diablo', '3 1/2', 'cucharada', NULL, '100', '418', '6.2', '8.6', NULL, '28.6', '0', '0', '0.3', '333.3', '2.7', 'AOAAPG'),
(26, 'Huevo revuelto', '60', 'g', NULL, '100', '419', '6.7', '7.3', NULL, '211.5', '84', '42.6', '0.7', '168', '1.5', 'AOAAPG'),
(27, 'Jumiles', '20', 'g', NULL, '89', '373', '6.4', '6.8', NULL, '0', '0', '15.6', '2', 'ND', 'ND', 'AOAAPG'),
(28, 'Lengua de cerdo cocida', '30', 'g', NULL, '81', '340', '7.2', '5.6', NULL, '43.8', '0', '5.7', '1.5', '32.7', '4.7', 'AOAAPG'),
(29, 'Lengua de res cocida', '45', 'g', NULL, '100', '417', '6.8', '7.8', NULL, '46.3', '0', '1.8', '0.9', '22.8', '0.9', 'AOAAPG'),
(30, 'Carne obscura de pollo con piel', '40', 'g', NULL, '95', '396', '6.7', '7.3', NULL, '32.4', '19.6', '4.4', '0.4', '29.2', '1.9', 'AOAAPG'),
(31, 'Maciza de cerdo', '35', 'g', NULL, '92', '385', '5.9', '7.4', NULL, '25.2', '0.7', '4.9', '0.3', '19.6', '1.5', 'AOAAPG'),
(32, 'Costilla de carnero', '45', 'g', NULL, '105', '439', '5.6', '9', NULL, '25.6', '0', '1.8', '0.8', '27', '2.1', 'AOAAPG'),
(33, 'Molida popular de res', '40', 'g', NULL, '97', '407', '5.2', '8.3', NULL, '24.3', '3.9', '2.6', '0.6', '19.4', '1', 'AOAAPG'),
(34, 'Maciza de puerco', '35', 'g', NULL, '92', '385', '5.9', '7.4', NULL, '25.2', '0.7', '4.9', '0.3', '19.6', '1.5', 'AOAAPG'),
(35, 'Molida de carnero', '40', 'g', NULL, '96', '402', '6.9', '7.4', NULL, '27', '0', '2.7', '1', '30.4', '2.6', 'AOAAPG'),
(36, 'Mozarella fresco', '35', 'g', NULL, '105', '439', '7.8', '7.8', NULL, '27.5', '60.9', '176.8', '0.2', '219.5', '1.3', 'AOAAPG'),
(37, 'Morcilla de arroz', '1', 'rebanada gruesa', NULL, '95', '396', '3.7', '8.6', NULL, '30', '0', '1.5', '1.6', '170', '0.6', 'AOAAPG'),
(38, 'Morcilla de arroz', '1', 'rebanada gruesa', NULL, '95', '396', '3.7', '8.6', NULL, '30', '0', '1.5', '1.6', '170', '0.6', 'AOAAPG'),
(39, 'Moronga', '1', 'rebanada gruesa', NULL, '95', '396', '3.7', '8.6', NULL, '30', '0', '1.5', '1.6', '170', '0.6', 'AOAAPG'),
(40, 'Cecina de res', '50', 'g', NULL, '98', '410', '7.3', '7.4', NULL, '42.6', '0', '3.5', '0.8', '602.4', '1.4', 'AOAAPG'),
(41, 'Nugget de polIo', '2', 'pieza', NULL, '101', '421', '5.2', '6.7', NULL, '14.6', '0', '10.5', '0.4', '189.4', '0.9', 'AOAAPG'),
(42, 'Nugget de queso', '3 1/2', 'pieza', NULL, '123', '513', '5.3', '6.4', NULL, '5.8', '0', '87.7', '0.2', '619.8', '1', 'AOAAPG'),
(43, 'Nuguet de soya', '2', 'pieza', NULL, '98', '410', '4.8', '6.4', NULL, '0.8', '0', '16', '0.6', '283.6', '0', 'AOAAPG'),
(44, 'Mortadela', '1 1/2', 'rebanada', NULL, '99', '413', '5.3', '8', NULL, '18.3', '0', '6.3', '0.4', '392.7', '0', 'AOAAPG'),
(45, 'Ostión ahumado', '55', 'g', NULL, '109', '454', '4.9', '6.9', NULL, '44.6', '49.8', '34.3', '3.8', '229.7', '3.8', 'AOAAPG'),
(46, 'Ostión empanizado', '55', 'g', NULL, '109', '454', '4.9', '6.9', NULL, '44.6', '49.8', '34.3', '3.8', '229.7', '3.8', 'AOAAPG'),
(47, 'Palitos de pescado congelados', '1 1/2', 'pieza', NULL, '116', '483', '6.6', '5.3', NULL, '48', '13.5', '9', '0.3', '247.5', '5.9', 'AOAAPG'),
(48, 'Paloma', '45', 'g', NULL, '102', '426', '6.4', '8.2', NULL, '32.9', '25.3', '4.2', '1.2', '18.7', '0.9', 'AOAAPG'),
(49, 'Pastel de pavo', '1 1/2', 'rebanada', NULL, '105', '439', '3.9', '9.6', NULL, '19.5', '0', '1.5', '0.2', '406.5', '1.3', 'AOAAPG'),
(50, 'Pastel de poilo', '40', 'g', NULL, '106', '442', '4', '8.7', NULL, '28.6', '0', '41.4', '0.7', '511.4', '0.6', 'AOAAPG'),
(51, 'Pastel de puerco', '1 1/2', 'rebanada', NULL, '105', '439', '3.9', '9.6', NULL, '19.5', '0', '1.5', '0.2', '406.5', '0.6', 'AOAAPG'),
(52, 'Pastel de ternera', '40', 'g', NULL, '106', '442', '4', '8.7', NULL, '28.6', '0', '41.4', '0.7', '511.4', '0.6', 'AOAAPG'),
(53, 'Pata de carnero cocida', '50', 'g', NULL, '38', '159', '7.4', '7.4', NULL, '0', '0', '18.2', '0.4', 'ND', '2.8', 'AOAAPG'),
(54, 'Peperami', ' 3/4', 'pieza', NULL, '103', '431', '4', '9.3', NULL, '25.3', '31.9', '13.1', '0.6', '277.5', '0', 'AOAAPG'),
(55, 'Peperoni', '10', 'rebanada', NULL, '99', '413', '4.5', '88', NULL, '21', '0', '4.4', '0.3', '330.6', '1.6', 'AOAAPG'),
(56, 'Pescuezo de pollo con piel sin hueso', '1', 'pieza', NULL, '95', '397', '4.5', '8.4', NULL, '31.7', '20.8', '5.8', '0.6', '20.5', '0.5', 'AOAAPG'),
(57, 'Pollo crispy', '45', 'g', NULL, '106', '442', '5.4', '7.1', NULL, '20', '0', '5.7', '0.3', '154.4', '0.7', 'AOAAPG'),
(58, 'Pollo rostizado', ' 1/3', 'pieza', NULL, '80', '336', '6.7', '6.3', NULL, '0', '57.4', '2.8', '0.5', 'ND', '1.6', 'AOAAPG'),
(59, 'Pulpa de res', '25', 'g', NULL, '87', '364', '6.8', '6.5', NULL, '26', '0', '3.3', '0.8', '16.3', '1.3', 'AOAAPG'),
(60, 'Queso amarillo', '2', 'rebanada', NULL, '100', '420', '7', '5.9', NULL, '15.1', '47.9', '236', '0.1', '564.9', '1.1', 'AOAAPG'),
(61, 'Queso americano fundido 7 cucharadita', '7', 'cucharadita', NULL, '105', '439', '5.8', '8.2', NULL, '23.3', '0', '175', '0', '653.3', '0.8', 'AOAAPG'),
(62, 'Queso añejo rallado', '4', 'cucharada', NULL, '109', '455', '6.3', '8.7', NULL, '30.8', '18.5', '198.2', '0.1', '329.7', '0.9', 'AOAAPG'),
(63, 'Queso añejo', '25', 'g', NULL, '95', '396', '5.4', '7.6', NULL, '26.8', '16.1', '172.3', '0.1', '286.6', '0.8', 'AOAAPG'),
(64, 'Queso asadero', '1', 'rebanada', NULL, '100', '417', '6.4', '8', NULL, '30', '18', '187', '0.1', '186', '0.9', 'AOAAPG'),
(65, 'Queso blanco', '40', 'g', NULL, '88', '368', '6.9', '5.9', NULL, '30', '25.7', '0', '0', 'ND', '5.8', 'AOAAPG'),
(66, 'Queso blue cheese', '30', 'g', NULL, '106', '443', '6.4', '8.6', NULL, '22.5', '69.6', '160.7', '0.1', '424.3', '0.9', 'AOAAPG'),
(67, 'Queso brick', '25', 'g', NULL, '94', '392', '5.9', '7.5', NULL, '24.1', '76.8', '170.5', '0.1', '142', '0.9', 'AOAAPG'),
(68, 'Queso brie', '30', 'g', NULL, '102', '425', '6.3', '8.4', NULL, '30', '55.7', '55.7', '0.2', '190.7', '0.9', 'AOAAPG'),
(69, 'Queso camembert', '35', 'g', NULL, '106', '444', '7', '8.6', NULL, '25', '88.8', '137.5', '0.1', '298.8', '1', 'AOAAPG'),
(70, 'Queso canasto', '30', 'g', NULL, '87', '365', '8.5', '10', NULL, '25.5', '195', '258', '0.7', 'ND', '1.2', 'AOAAPG'),
(71, 'Queso cheddar', ' 3/4', 'rebanada', NULL, '85', '353', '5.2', '7', NULL, '22.1', '63.6', '151.5', '0.1', '130.3', '0.7', 'AOAAPG'),
(72, 'Queso cheddar rallado', ' 1/4', 'taza', NULL, '114', '475', '7', '9.4', NULL, '29.8', '85.5', '203.8', '0.2', '175.3', '1', 'AOAAPG'),
(73, 'Queso Cheezwiz', '2', 'cucharada', NULL, '91', '381', '4', '6.9', NULL, '24.8', 'ND', '118.5', '0.1', '540.5', 'ND', 'AOAAPG'),
(74, 'Queso chihuahua', '25', 'g', NULL, '94', '391', '5.4', '7.5', NULL, '26.3', '16.1', '162.8', '0.1', '156.3', '0.8', 'AOAAPG'),
(75, 'Queso Chihuahua fresco', '1', 'rebanada', NULL, '105', '438', '6', '8.4', NULL, '29.4', '18', '182.3', '0.1', '175', '0.9', 'AOAAPG'),
(76, 'Queso chihuahua rallado', ' 1/4', 'taza', NULL, '106', '442', '6.1', '8.5', NULL, '29.7', '18.2', '183.9', '0.1', '176.6', '0.9', 'AOAAPG'),
(77, 'Queso cotija', '30', 'g', NULL, '87', '365', '8.5', '10', NULL, '25.5', '195', '258', '0.7', 'ND', '1.2', 'AOAAPG'),
(78, 'Queso crema light', '3', 'cucharada', NULL, '104', '435', '4.8', '7.9', NULL, '25.2', '81.5', '50.4', '0.8', '133.2', '0.2', 'AOAAPG'),
(79, 'Queso de cabra con ceniza', '35', 'g', NULL, '94', '392', '6.6', '7.4', NULL, '16.3', '100', '49', '0.7', '130', '0.3', 'AOAAPG'),
(80, 'Queso de cabra duro', '20', 'g', NULL, '91', '382', '6.2', '7.2', NULL, '21.4', '96.4', '181.4', '0.4', '70', '0.3', 'AOAAPG'),
(81, 'Queso de cabra suave', '35', 'g', NULL, '94', '392', '6.6', '7.4', NULL, '16.3', '100', '49', '0.7', '130', '0.3', 'AOAAPG'),
(82, 'Queso edam', '30', 'g', NULL, '107', '448', '7.5', '8.3', NULL, '26.8', '72.6', '219.3', '0.1', '289.5', '1.1', 'AOAAPG'),
(83, 'Queso feta', '40', 'g', NULL, '106', '441', '5.7', '8.5', NULL, '35.7', '50', '197.2', '0.3', '451.4', '0.9', 'AOAAPG'),
(84, 'Queso fontina', '25', 'g', NULL, '97', '407', '6.4', '7.8', NULL, '29', '64.5', '137.5', '0.1', '200', '0.9', 'AOAAPG'),
(85, 'Queso fundido', ' 1/4', 'taza', NULL, '124', '516', '7.7', '7.3', NULL, '24.5', 'ND', '257', '0.2', '71.5', '0.7', 'AOAAPG'),
(86, 'Queso gouda', '30', 'g', NULL, '107', '446', '7.5', '8.2', NULL, '34.3', '49.2', '210', '0.1', '245.7', '1.1', 'AOAAPG'),
(87, 'Queso manchego', '25', 'g', NULL, '102', '427', '6.1', '8.1', NULL, '0', '0', '0', '0', 'ND', '0.9', 'AOAAPG'),
(88, 'Queso gruyere', '25', 'g', NULL, '103', '432', '7.5', '8.1', NULL, '27.5', '67', '252.8', '0', '84', '1.1', 'AOAAPG'),
(89, 'Queso manchego rallado', '25', 'g', NULL, '102', '427', '6.1', '8.1', NULL, '0', '0', '0', '0', 'ND', '0.9', 'AOAAPG'),
(90, 'Queso manchego rebanado', '25', 'g', NULL, '102', '427', '6.1', '8.1', NULL, '0', '0', '0', '0', 'ND', '0.9', 'AOAAPG'),
(91, 'Queso menonita', '25', 'g', NULL, '95', '396', '5.4', '7.5', NULL, '26.8', '16.1', '165.2', '0.1', '156.3', '0.8', 'AOAAPG'),
(92, 'Queso Monterrey', '25', 'g', NULL, '93', '390', '6.1', '7.6', NULL, '22.3', '48', '186.5', '0.2', '134', '0.9', 'AOAAPG'),
(93, 'Queso mozarella', '35', 'g', NULL, '105', '439', '7.8', '7.8', NULL, '27.5', '60.9', '176.8', '0.2', '219.5', '1.3', 'AOAAPG'),
(94, 'Queso mozzarella raUado', '35', 'g', NULL, '105', '439', '7.8', '7.8', NULL, '27.5', '60.9', '176.8', '0.2', '219.5', '1.3', 'AOAAPG'),
(95, 'Queso mozzarella suave', '1', 'rebanada', NULL, '89', '372', '6', '6.9', NULL, '25', '53.8', '163', '0.1', '116.2', '1', 'AOAAPG'),
(96, 'Queso neufchatel', '35', 'g', NULL, '91', '380', '3.5', '8.2', NULL, '26.6', '101.2', '26.3', '0.1', '139.7', '0.1', 'AOAAPG'),
(97, 'Queso Oaxaca', '30', 'g', NULL, '95', '398', '73', '6.6', NULL, '25.8', '0.8', '140.7', '1', 'ND', '1.1', 'AOAAPG'),
(98, 'Queso pasteurizado americano', '1', 'rebanada', NULL, '105', '439', '6.2', '8.7', NULL, '26.3', '69.2', '172.5', '0.1', '400.4', '0.9', 'AOAAPG'),
(99, 'Queso pasteurizado suizo', '1 1/2', 'rebanada', NULL, '105', '440', '7.8', '7.9', NULL, '26.8', '60.5', '243.2', '0.2', '431.6', '1.1', 'AOAAPG'),
(100, 'Queso port salut', '1', 'rebanada', NULL, '99', '412', '6.7', '7.9', NULL, '34.4', '87.6', '182', '0.1', '149.5', '1', 'AOAAPG'),
(101, 'Queso provolone', '1', 'rebanada', NULL, '98', '411', '7.2', '7.5', NULL, '19.3', '64.4', '211.7', '0.1', '245.3', '1', 'AOAAPG'),
(102, 'Queso rallado', '6', 'cucharada', NULL, '95', '397', '7.4', '6.3', NULL, '32.4', '27.7', '297.2', '0', 'ND', '1.1', 'AOAAPG'),
(103, 'Queso rkotta', ' 1/4', 'taza', NULL, '107', '448', '6.9', '8', NULL, '31.2', '72', '127.5', '0.2', '51.6', '1', 'AOAAPG'),
(104, 'Queso romano', '23', 'g', NULL, '89', '372', '7.3', '6.2', NULL, '23.8', '20.7', '244.7', '0.2', '276', '3.3', 'AOAAPG'),
(105, 'Queso suizo rallado', '1', 'rebanada', NULL, '106', '445', '7.5', '7.8', NULL, '26', '59.9', '221.5', '0.1', '53.8', '1.4', 'AOAAPG'),
(106, 'Queso roquefort', '25', 'g', NULL, '92', '386', '5.4', '7.7', NULL, '22.5', '72.5', '165.5', '0.1', '452.3', '0.8', 'AOAAPG'),
(107, 'Queso tipo roquefort', '25', 'g', NULL, '92', '386', '5.4', '7.7', NULL, '22.5', '72.5', '165.5', '0.1', '452.3', '0.8', 'AOAAPG'),
(108, 'Retazo', '350', 'g', NULL, '104', '435', '5.6', '8.9', NULL, '25.9', '4.2', '2.8', '0.6', '20.7', '1.1', 'AOAAPG'),
(109, 'Retazo de res', '350', 'g', NULL, '104', '435', '5.6', '8.9', NULL, '25.9', '4.2', '2.8', '0.6', '20.7', '1.1', 'AOAAPG'),
(110, 'Queso velveta', '35', 'g', NULL, '100', '418', '6.3', '7.5', NULL, '25', '0', '187.5', '0', '525', '0.9', 'AOAAPG'),
(111, 'Retazo con hueso', '350', 'g', NULL, '104', '435', '5.6', '8.9', NULL, '25.9', '4.2', '2.8', '0.6', '20.7', '1.1', 'AOAAPG'),
(112, 'Retazo de polio', '350', 'g', NULL, '104', '435', '5.6', '8.9', NULL, '25.9', '4.2', '2.8', '0.6', '20.7', '0.7', 'AOAAPG'),
(113, 'Salami', '3', 'rebanada', NULL, '104', '435', '6.3', '8.1', NULL, '27', '0', '2.2', '0.4', '542.7', '1.6', 'AOAAPG'),
(114, 'Salami de ternera', '6', 'rebanada', NULL, '110', '458', '6.4', '8.8', NULL, '27.4', '0', '3.7', '0.9', '493', '1', 'AOAAPG'),
(115, 'Retazo de ternera', '350', 'g', NULL, '104', '435', '5.6', '8.9', NULL, '25.9', '4.2', '2.8', '0.6', '20.7', '0.9', 'AOAAPG'),
(116, 'Rib eye', '30', 'g', NULL, '82', '344', '5.3', '6.6', NULL, '20.4', '0', '3.9', '0.6', '16.8', '0.9', 'AOAAPG'),
(117, 'Salchicha de pollo', ' 3/4', 'pieza', NULL, '100', '418', '6.2', '8.1', NULL, '23.6', '10.5', '3.7', '0.4', '344.3', '0.9', 'AOAAPG'),
(118, 'Salchicha ahumada', ' 1/2', 'pieza', NULL, '109', '455', '4.1', '9.8', NULL, '19.7', '3.7', '4.1', '0.3', '309.7', '0', 'AOAAPG'),
(119, 'Salchicha de puerco', ' 3/4', 'pieza', NULL, '114', '478', '6.6', '9.6', NULL, '28.4', '4.1', '4.4', '0.5', '252.8', '0', 'AOAAPG'),
(120, 'Salchicha de ternera', ' 1/2', 'pieza', NULL, '90', '376', '3.4', '8.1', NULL, '17.5', '0', '5.5', '0.4', '292.5', '0.5', 'AOAAPG'),
(121, 'Salchicha vienna', '3', 'pieza', NULL, '110', '461', '5', '9.3', NULL, '41.8', '0', '4.8', '0.4', '465.1', '0.9', 'AOAAPG'),
(122, 'Salchicha vienna ahumada', '1 1/2', 'pieza', NULL, '93', '389', '4.3', '7.9', NULL, '35.2', '0', '4.1', '0.4', '392.4', '0.7', 'AOAAPG'),
(123, 'Sesos de res cocidos', '60', 'g', NULL, '91', '379', '7', '6.3', NULL, '1860', '0', '5.4', '14', '64.8', '1.5', 'AOAAPG'),
(124, 'Salchicha', ' 3/4', 'pieza', NULL, '114', '478', '6.6', '9.6', NULL, '28.4', '4.1', '4.4', '0.5', '252.8', '0', 'AOAAPG'),
(125, 'Sesos de res fritos', '55', 'g', NULL, '108', '451', '6.9', '8.7', NULL, '1097.3', '0', '5', '1.2', '86.9', '1.3', 'AOAAPG'),
(126, 'Tripas de res', '55', 'g', NULL, '109', '455', '5.6', '9.5', NULL, '74.3', '26.2', '5.9', '0.9', '22.8', '0', 'AOAAPG'),
(127, 'Ubre', '45', 'g', NULL, '105', '440', '6.9', '8.4', NULL, '0', '0', '31.5', '1.2', 'ND', '0', 'AOAAPG'),
(128, 'Sesos de res crudos', '75', 'g', NULL, '105', '439', '8', '7.6', NULL, '2212.4', '0', '31.6', '1.9', '92.6', '1.7', 'AOAAPG'),
(129, 'Velveta', '35', 'g', NULL, '100', '418', '6.3', '7.5', NULL, '25', '0', '187.5', '0', '525', '0', 'AOAAPG'),
(130, 'T-bone con grasa cocido', '35', 'g', NULL, '96', '403', '7.4', '7.2', NULL, '20.5', '0', '2.2', '1', '21.1', '0.9', 'AOAAPG'),
(131, 'Yema de huevo en polvo', '3', 'cucharada', NULL, '103', '430', '5.3', '8.6', NULL, '360.8', '203.2', '43.9', '0.8', '20.9', '4.6', 'AOAAPG'),
(132, 'Yema', '2', 'pieza', NULL, '108', '451', '5.4', '9', NULL, '419.6', '126.1', '43.9', '0.9', '16.3', '3', 'AOAAPG'),
(133, 'Yema de huevo', '2', 'pieza ', NULL, '108', '451', '5.4', '9', NULL, '419.6', '126.1', '43.9', '0.9', '16.3', '3', 'AOAAPG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_AOAAPG`
--
ALTER TABLE `tbl_AOAAPG`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_AOAAPG`
--
ALTER TABLE `tbl_AOAAPG`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
