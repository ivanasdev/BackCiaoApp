-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:24:07
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
-- Estructura de tabla para la tabla `tbl_AceitesyGrasas`
--

CREATE TABLE `tbl_AceitesyGrasas` (
  `id_Alimento` int(11) NOT NULL,
  `st_Alimento` varchar(100) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(100) DEFAULT NULL,
  `st_unidad` varchar(100) DEFAULT NULL,
  `st_peso_neto_g` varchar(100) DEFAULT NULL,
  `st_energia_kcal` varchar(100) DEFAULT NULL,
  `st_energia_kj` varchar(100) DEFAULT NULL,
  `st_proteina_g` varchar(100) DEFAULT NULL,
  `st_lipidos_g` varchar(100) DEFAULT NULL,
  `st_hidratos_de_carbono_g` varchar(100) DEFAULT NULL,
  `st_AG_saturados_g` varchar(100) DEFAULT NULL,
  `st_AG_mono_g` varchar(100) DEFAULT NULL,
  `st_AG_poli_g` varchar(100) DEFAULT NULL,
  `st_colesterol_mg` varchar(100) DEFAULT NULL,
  `st_sodio_mg` varchar(100) DEFAULT NULL,
  `st_categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_AceitesyGrasas`
--

INSERT INTO `tbl_AceitesyGrasas` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono_g`, `st_AG_saturados_g`, `st_AG_mono_g`, `st_AG_poli_g`, `st_colesterol_mg`, `st_sodio_mg`, `st_categoria`) VALUES
(1, 'Aceite comestible', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.4', '2.9', '1.5', '0', '0', 'Aceites y grasas'),
(2, 'Aceite', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.4', '2.9', '1.5', '0', '0', 'Aceites y grasas'),
(3, 'Aceite de aguacate', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.6', '3.5', '0.7', '0', '0', 'Aceites y grasas'),
(4, 'Aceite de cacahuate', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.9', '2.3', '1.6', '0', '0', 'Aceites y grasas'),
(5, 'Aceite de coco', '1', 'cucharadita', '5', '43', '181', '0', '5', '0', '4.3', '0.3', '0.1', '0', '0', 'Aceites y grasas'),
(6, 'Aceite de girasol', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.5', '1', '3.3', '0', '0', 'Aceites y grasas'),
(7, 'Aceite de ajonjolí', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '2', '2.1', '0', '0', 'Aceites y grasas'),
(8, 'Aceite de algodón', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '1.3', '0.9', '2.6', '0', '0', 'Aceites y grasas'),
(9, 'Aceite de girasol 60% con ácido linoleico', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.5', '1', '3.3', '0', '0', 'Aceites y grasas'),
(10, 'Aceite de girasol 70% con ácido aleico', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.6', '2.3', '1.8', '0', '0', 'Aceites y grasas'),
(11, 'Aceite de hígado de bacalao', '1', 'cucharadita', '5', '45', '188', '0', '5', '0', '1.1', '2.3', '1.1', '28.6', '0', 'Aceites y grasas'),
(12, 'Aceite de maíz', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.6', '1.2', '2.9', '0', '0', 'Aceites y grasas'),
(13, 'Aceite de oliva', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '3.7', '0.4', '0', '0', 'Aceites y grasas'),
(14, 'Aceite de oliva extra virgen', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '3.7', '0.4', '0', '0', 'Aceites y grasas'),
(15, 'Aceite de olivo', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '3.7', '0.4', '0', '0', 'Aceites y grasas'),
(16, 'Aceite de pama', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '2.5', '1.9', '0.5', '0', '0', 'Aceites y grasas'),
(17, 'Aceite de soya', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '1.1', '2.6', '0', '0', 'Aceites y grasas'),
(18, 'Aceite en spray', '5', 'disp. de un seg.', '5', '44', '185', '0', '5', '0', '0.6', '1.2', '2.9', '0', '0', 'Aceites y grasas'),
(19, 'Aceituna negra sin hueso', '5', 'pieza', '25', '46', '192', '0.3', '5', '0.8', '0.5', '3.8', '0.3', '0', '600', 'Aceites y grasas'),
(20, 'Aceituna verde con hueso', '6', 'pieza', '25', '46', '194', '0.3', '5.1', '0.8', '0.5', '3.8', '0.3', '0', '604.8', 'Aceites y grasas'),
(21, 'Aceitunas rellenas de arichoa', '5', 'pieza', '25', '46', '192', '0.6', '4.5', '0.8', '0', '0', '0', '0', '600', 'Aceites y grasas'),
(22, 'Aceituna verde sin hueso', '8', 'pieza', '24', '44', '185', '0.3', '4.8', '0.8', '0.5', '3.6', '0.2', '0', '576', 'Aceites y grasas'),
(23, 'Aceitunas rellenas de pimiento', '7', 'pieza', '35', '44', '183', '0', '3.5', '2.6', '0.9', '2.6', '0', '0', '306.3', 'Aceites y grasas'),
(24, 'Aderezo', '2', 'cucharada', '30', '32', '134', '0', '3', '1.4', '0.4', '0.6', '1.8', '2', '236', 'Aceites y grasas'),
(25, 'Aderezo blue cheese', ' 1/2', 'cucharada', '8', '38', '159', '0.4', '3.9', '0.6', '0.8', '0.9', '2.1', '1.5', '82', 'Aceites y grasas'),
(26, 'Aderezo con queso y ajo', ' 1/2', 'cucharada', '8', '33', '137', '0', '3.8', '0.2', '0.6', '0', '0', '0', '77.3', 'Aceites y grasas'),
(27, 'Aderezo cremoso', ' 1/2', 'cucharada', '8', '38', '159', '0.4', '3.9', '0.6', '0.8', '0.9', '2.1', '1.5', '82', 'Aceites y grasas'),
(28, 'Aderezo de cirueía pasas', ' 1/2', 'cucharada', '8', '39', '165', '0.1', '3.9', '1.1', '0.6', '2.4', '0.7', '11.1', '35.7', 'Aceites y grasas'),
(29, 'Aderezo de miel y mostaza', ' 1/2', 'cucharada', '8', '36', '152', '0', '3.6', '1', '0.5', '0', '0', '0', '48.4', 'Aceites y grasas'),
(30, 'Aceite de cacao', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '3', '1.6', '0.1', '0', '0', 'Aceites y grasas'),
(31, 'Aceite de almendra', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.4', '3.5', '0.9', '0', '0', 'Aceites y grasas'),
(32, 'Aceite de cártamo', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.7', '2', '2.1', '0', '0', 'Aceites y grasas'),
(33, 'Aderezo francés', ' 1/2', 'cucharada', '8', '32', '135', '0', '3.1', '1.3', '0.7', '0.6', '1.6', '0', '102.7', 'Aceites y grasas'),
(34, 'Aceite de canola', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.4', '2.9', '1.5', '0', '0', 'Aceites y grasas'),
(35, 'Aderezo italiano', ' 1/2', 'cucharada', '8', '35', '146', '0.1', '3.6', '0.8', '0.6', '0.9', '2.1', '0', '59', 'Aceites y grasas'),
(36, 'Aceite de soya y algodón', '1', 'cucharadita', '5', '44', '185', '0', '5', '0', '0.9', '1.5', '2.4', '0', '0', 'Aceites y grasas'),
(37, 'Aderezo de mayonesa', ' 1/2', 'cucharada', '7', '51', '212', '0.1', '5.4', '0.3', '0.9', '14', '1', '18.2', '41.8', 'Aceites y grasas'),
(38, 'Aderezo itaíiano bajo en calorías', '2', 'cucharada', '30', '32', '134', '0', '3', '1.4', '0.4', '0.6', '1.8', '2', '236', 'Aceites y grasas'),
(39, 'Aderezo de hierbas finas', ' 1/2', 'cucharada', '8', '31', '130', '0.1', '3.2', '0.8', '0.5', '2.3', '0.3', '0', '73', 'Aceites y grasas'),
(40, 'Aderezo itaHano cremoso bajo en calorías', '4', 'cucharada', '60', '40', '167', '2', '2.2', '6', '0.8', '0', '0', '0', '560', 'Aceites y grasas'),
(41, 'Aderezo itaflano cremoso', ' 1/2', 'cucharada', '8', '28', '115', '0', '2.8', '0.8', '1', '0', '0', '0', '57.5', 'Aceites y grasas'),
(42, 'Aderezo jalapeño', ' 1/2', 'cucharada', '8', '33', '139', '0.1', '3.4', '0.7', '0.5', '2.1', '0.6', '11.1', '30.4', 'Aceites y grasas'),
(43, 'Aderezo mil islas', ' 1/2', 'cucharada', '8', '28', '118', '0', '2.7', '1.1', '0.5', '0.6', '1.5', '1.9', '52.5', 'Aceites y grasas'),
(44, 'Aderezo roquefort', ' 1/2', 'cucharada', '8', '38', '159', '0.4', '3.9', '0.6', '0.8', '0.9', '2.1', '1.5', '82', 'Aceites y grasas'),
(45, 'Aderezo tipo blue cheese', ' 1/2', 'cucharada', '8', '38', '159', '0.4', '3.9', '0.6', '0.8', '0.9', '2.1', '1.5', '82', 'Aceites y grasas'),
(46, 'Aderezo tipo francés', ' 1/2', 'cucharada', '8', '32', '135', '0', '3.1', '1.3', '0.7', '0.6', '1.6', '0', '102.7', 'Aceites y grasas'),
(47, 'Aderezo ranch', ' 1/2', 'cucharada', '8', '44', '184', '0', '4.7', '0.5', '0.8', '0', '0', '1.3', '69.8', 'Aceites y grasas'),
(48, 'Aderezo ruso', ' 1/2', 'cucharada', '8', '37', '155', '0.1', '3.8', '0.8', '0.6', '0.9', '2.2', '1.5', '65', 'Aceites y grasas'),
(49, 'Aderezo tipo cesar', ' 1/2', 'cucharada', '8', '33', '136', '0.3', '3.3', '0.5', '0.6', '0', '0', '1.3', '92.5', 'Aceites y grasas'),
(50, 'Aderezo tipo mil islas', ' 1/2', 'cucharada', '8', '28', '118', '0', '2.7', '1.1', '0.5', '0.6', '1.5', '1.9', '52.5', 'Aceites y grasas'),
(51, 'Aderezo tipo ranch', ' 1/2', 'cucharaditas', '8', '44', '184', '0', '4.7', '0.5', '0.8', '0', '0', '1.3', '69.8', 'Aceites y grasas'),
(52, 'Aderezo vinagreta casera', '2', 'cucharaditas', '10', '45', '188', '0', '5', '0.3', '0.9', '1.5', '2.4', '0', '0', 'Aceites y grasas'),
(53, 'Aderezo vinagreta comercial', '4', 'cucharaditas', '20', '41', '170', '0', '3.3', '2.7', '0.7', '0', '0', '0', '166.7', 'Aceites y grasas'),
(54, 'Aguacate California', ' 1/3', 'pieza', '31', '54', '226', '0.7', '5.3', '2.1', '0.8', '3.4', '0.6', '0', '3.7', 'Aceites y grasas'),
(55, 'Aguacate de pellejo', '1 1/2', 'pieza', '36', '44', '185', '0.5', '4.5', '2', '0.7', '1.8', '0.4', '0', '1.4', 'Aceites y grasas'),
(56, 'Aguacate mediano', ' 1/3', 'pieza', '31', '44', '184', '0.5', '4.1', '2.3', '0.7', '2.7', '0.6', '0', '1.2', 'Aceites y grasas'),
(57, 'Aguacate verde', ' 1/2', 'pieza', '25', '46', '190', '0.5', '4.6', '1.5', '0.8', '2', '0.5', '0', '1', 'Aceites y grasas'),
(58, 'Calahua', '1', 'cucharada', '19', '35', '148', '0.5', '3.3', '1.6', '2.9', '0.1', '0', '0', '9.4', 'Aceites y grasas'),
(59, 'Aguacate hass', ' 1/3', 'pieza', '31', '54', '226', '0.7', '5.3', '2.1', '0.8', '3.4', '0.6', '0', '3.7', 'Aceites y grasas'),
(60, 'Cocada', ' 1/3', 'pieza', '9', '41', '170', '0.7', '2.3', '5.6', '0', '0', '0', '0', '13.2', 'Aceites y grasas'),
(61, 'Coco', '8', 'g', '6', '41', '172', '0.5', '4.3', '0.9', '0', '0', '0', '0', '0', 'Aceites y grasas'),
(62, 'Aguacate florida', ' 1/3', 'pieza', '54', '60', '251', '0.8', '4.8', '4.8', '0.9', '2.6', '0.8', '0', '2.6', 'Aceites y grasas'),
(63, 'Coco de aceite', '8', 'g', '6', '41', '172', '0.5', '4.3', '0.9', '0', '0', '0', '0', '0', 'Aceites y grasas'),
(64, 'Coco deshidratado', '6', 'g', '6', '40', '167', '0.4', '3.9', '1.5', '3.5', '0.2', '0', '0', '2.1', 'Aceites y grasas'),
(65, 'Coco en hojuelas', '2', 'cucharada', '9', '44', '183', '0.3', '3', '4.4', '2.6', '4', '0', '0', '23.6', 'Aceites y grasas'),
(66, 'Coco entero', '25', 'g', '14', '42', '177', '0.5', '4.6', '0.7', '4.1', '0.5', '0.1', '0', '3.2', 'Aceites y grasas'),
(67, 'Coco rallado y endulzado', '1 1/2', 'cucharada', '9', '44', '183', '0.3', '3.1', '4.2', '2.7', '0.1', '0', '0', '22.9', 'Aceites y grasas'),
(68, 'Coco rallado', '1 1/2', 'cucharada', '9', '44', '183', '0.3', '3.1', '4.2', '2.7', '0.1', '0', '0', '22.9', 'Aceites y grasas'),
(69, 'Coquito', '8', 'g', '6', '41', '172', '0.5', '4.3', '0.9', '0', '0', '0', '0', '0', 'Aceites y grasas'),
(70, 'Coco fresco', '12', 'g', '12', '42', '177', '0.4', '4', '1.8', '3.6', '0.2', '0.1', '0', '2.4', 'Aceites y grasas'),
(71, 'Coco seco', '1 1/2', 'cucharada', '9', '44', '183', '0.3', '3.1', '4.2', '2.7', '0.1', '0', '0', '22.9', 'Aceites y grasas'),
(72, 'Coco seco y endulzado', '1 1/2', 'cucharada', '9', '44', '183', '0.3', '3.1', '4.2', '2.7', '0.1', '0', '0', '22.9', 'Aceites y grasas'),
(73, 'Crema', '1', 'cucharada', '15', '43', '179', '0', '3.2', '2.1', '2.1', '0', '0', '10.7', '0', 'Aceites y grasas'),
(74, 'Crema 20% grasa (dulce)', '1 1/3', 'cucharada', '21', '41', '173', '0.6', '4.1', '0.8', '2.6', '1', '0.1', '14', '8.5', 'Aceites y grasas'),
(75, 'Crema chantilly', '1 1/2', 'cucharada', '12', '42', '174', '0.2', '4.4', '0.3', '2.8', '1.3', '0.2', '16.8', '4.8', 'Aceites y grasas'),
(76, 'Crema agria', '1', 'cucharada', '13', '44', '186', '0.3', '4.8', '0.4', '3', '1.2', '0.1', '17.6', '4.9', 'Aceites y grasas'),
(77, 'Crema ácida', '2', 'cucharada', '21', '46', '190', '0.7', '4.4', '0.9', '2.8', '1.2', '0.2', '8.8', '10.5', 'Aceites y grasas'),
(78, 'Crema batida', '1 1/2', 'cucharada', '12', '42', '174', '0.2', '4.4', '0.3', '2.8', '1.3', '0.2', '16.8', '4.8', 'Aceites y grasas'),
(79, 'Crema 40% grasa (agria)', '1', 'cucharada', '13', '45', '187', '0.3', '4.8', '0.4', '3', '1.2', '0.1', '17.8', '4.9', 'Aceites y grasas'),
(80, 'Crema batida en aerosol', '5', 'cucharada', '15', '40', '167', '0.5', '3.5', '2', '2', '1', '0', '10', '20', 'Aceites y grasas'),
(81, 'Crema de coco dulce', '4', 'cucharaditas', '25', '49', '203', '0.3', '4.1', '13.5', '3.9', '0.2', '0', '0', '9.1', 'Aceites y grasas'),
(82, 'Crema de coco natural', '3', 'cucharaditas', '15', '50', '207', '0.5', '5.2', '1', '4.6', '0.2', '0.1', '0', '0.6', 'Aceites y grasas'),
(83, 'Crema de eche en polvo', '4', 'cucharada', '10', '39', '162', '3.4', '0.6', '4.9', '0.4', '0.1', '0', '6.9', '51.7', 'Aceites y grasas'),
(84, 'Crema dulce', '4', 'cucharaditas', '19', '36', '152', '0.5', '3.6', '0.7', '2.2', '0.9', '0.1', '12.3', '7.5', 'Aceites y grasas'),
(85, 'Crema dulce para batfr', '4', 'cucharaditas', '19', '36', '152', '0.5', '3.6', '0.7', '2.2', '0.9', '0.1', '12.3', '7.5', 'Aceites y grasas'),
(86, 'Crema entera', '1', 'cucharada', '14', '41', '172', '0.3', '4.3', '0.4', '2.7', '1.3', '0.1', '15.9', '4.7', 'Aceites y grasas'),
(87, 'Crema ligera', '1', 'cucharada', '14', '41', '172', '0.3', '4.3', '0.4', '2.7', '1.3', '0.1', '15.9', '4.7', 'Aceites y grasas'),
(88, 'Crema natural', '1', 'cucharada', '15', '43', '179', '0', '3.2', '2.1', '2.1', '0', '0', '10.7', '0', 'Aceites y grasas'),
(89, 'Dip', '2', 'cucharada', '30', '48', '202', '1', '3.9', '1.9', '2.9', '0', '0', '19.4', '154.8', 'Aceites y grasas'),
(90, 'Crema para batir', '1 1/2', 'cucharada', '21', '41', '171', '0.6', '4.1', '0.8', '2.5', '1', '0.1', '13.9', '8.4', 'Aceites y grasas'),
(91, 'Dip de cebolla', '2', 'cucharada', '30', '48', '202', '1', '3.9', '1.9', '2.9', '0', '0', '19.4', '154.8', 'Aceites y grasas'),
(92, 'Crema para café', '1', 'cucharada', '14', '41', '172', '0.3', '4.3', '0.4', '2.7', '1.3', '0.1', '15.9', '4.7', 'Aceites y grasas'),
(93, 'Dip preparado con crema', '2', 'cucharada', '30', '48', '202', '1', '3.9', '1.9', '29', '0', '0', '19.4', '154.8', 'Aceites y grasas'),
(94, 'Dip preparado', '2', 'cucharada', '30', '48', '202', '1', '3.9', '1.9', '2.9', '0', '0', '19.4', '154.8', 'Aceites y grasas'),
(95, 'Grasa de tocino', '5', 'g', '5', '44', '185', '0', '5', '0', '2.2', '2.1', '0.6', '4.6', '0', 'Aceites y grasas'),
(96, 'Grasas animales', '5', 'g', '5', '44', '185', '0', '5', '0', '21', '2.1', '0.6', '4.8', '0', 'Aceites y grasas'),
(97, 'Grasas vegetales para cocinar', '5', 'g', '5', '44', '185', '0', '5', '0', '1.2', '3.3', '0.4', '0', '0', 'Aceites y grasas'),
(98, 'Guacamole', '2', 'cucharada', '28', '46', '194', '1', '3.7', '2.7', '0', '0', '0', '0', '195.7', 'Aceites y grasas'),
(99, 'Lardo', '5', 'g', '5', '45', '189', '0', '5', '0', '2', '2.1', '0.5', '4.8', '0', 'Aceites y grasas'),
(100, 'Manteca de cerdo', '1', 'cucharadita', '4', '39', '163', '0', '4.3', '0', '1.7', '2', '5', '4', '0', 'Aceites y grasas'),
(101, 'Manteca vegetal', '1', 'cucharadita', '4', '38', '157', '0', '4.3', '0', '1.1', '1.9', '1.1', '0', '0', 'Aceites y grasas'),
(102, 'Mantequilla', '1 1/2', 'cucharaditas', '6', '47', '195', '0.1', '5.3', '0', '3.3', '1.3', '0.1', '14.2', '0.6', 'Aceites y grasas'),
(103, 'Mantequilla con sal', '1 1/2', 'cucharaditas', '6', '47', '195', '0.1', '5.3', '0', '3.3', '1.3', '0.1', '14.2', '53.6', 'Aceites y grasas'),
(104, 'Mantequilla derretida', '1    ', 'cucharadta', '5', '36', '150', '0', '4.1', '0', '2.5', '1', '0.1', '11', '0.5', 'Aceites y grasas'),
(105, 'Mantequilla sin sal', '1 1/2', 'cucharaditas', '6', '47', '195', '0.1', '5.3', '0', '3.3', '1.3', '0.1', '14.2', '0.6', 'Aceites y grasas'),
(106, 'Margarina', '1    ', 'cucharadita', '4', '39', '163', '0', '4.3', '0', '1.7', '1.9', '0.5', '2.3', '0', 'Aceites y grasas'),
(107, 'Margarina baja en grasa', '2 1/2', 'cucharaditas', '11', '42', '174', '0', '5', '0', '0', '0', '0', '0', '108.3', 'Aceites y grasas'),
(108, 'Margarina con sal', '1 1/2', 'cucharaditas', '6', '47', '195', '0.1', '5.2', '0.1', '1', '2.3', '1.6', '0', '61.2', 'Aceites y grasas'),
(109, 'Margarina sin sal', '1', 'cucharadita', '4', '39', '163', '0', '4.3', '0', '1.7', '1.9', '0.5', '2.3', '0', 'Aceites y grasas'),
(110, 'Mayonesa', '1', 'cucharadita', '5', '34', '141', '0.1', '3.6', '0.2', '0.6', '2.2', '0.7', '12.1', '27.8', 'Aceites y grasas'),
(111, 'Media crema', '2', 'cucharada', '30', '40', '167', '0.8', '3.4', '1.2', '2.2', '1', '0.2', '12', '12', 'Aceites y grasas'),
(112, 'Pan', '5    ', 'disp. de un seg.', '5', '44', '185', '0', '5', '0', '0.6', '1.2', '2.9', '0', '0', 'Aceites y grasas'),
(113, 'Praliné', ' 1/2', 'cucharada', '8', '36', '152', '0.2', '1.9', '5', '0.1', '1.2', '0.5', '0', '4.9', 'Aceites y grasas'),
(114, 'Queso crema', '1', 'cucharada', '13', '46', '192', '1', '4.6', '0.4', '2.9', '1.3', '0.2', '14.4', '39', 'Aceites y grasas'),
(115, 'Queso crema untable', '1', 'cucharada', '10', '37', '153', '0.7', '3.7', '0.3', '2.3', '0', '0', '11.6', '31.6', 'Aceites y grasas'),
(116, 'Queso crema bajo en grasa', '1', 'cucharada', '13', '32', '135', '1.1', '3', '0.3', '2.1', '0', '0', '6.1', '51.1', 'Aceites y grasas'),
(117, 'Queso Philadelphia', '1', 'cucharada', '192', '1', '4.6', '0.4', '2.9', '1.3', '0.2', '14.4', '39', '13', '13', 'Aceites y grasas'),
(118, 'Salsa alfredo', '1    ', 'cucharada', '14', '44', '185', '0.7', '4.3', '0.8', '0', '0', '0', '7', '50.8', 'Aceites y grasas'),
(119, 'Salsa holandesa industrializada', ' 1/2', 'cucharada', '8', '44', '185', '0.9', '3.7', '2.6', '2.2', '1.1', '0.2', '9.4', '292', 'Aceites y grasas'),
(120, 'Salsa tártara industrializada', '1', 'cucharadita', '16', '52', '216', '0', '5.2', '2.1', '2.1', '0', '0', '5.2', '93', 'Aceites y grasas'),
(121, 'Salsa tártara sin grasa', '3', 'cucharada', '47', '36', '152', '0', '1.5', '7.3', '0.6', '0', '0', '0', '305.2', 'Aceites y grasas'),
(122, 'Salsa velouté', '1 1/2', 'cucharada', '21', '38', '157', '0.6', '3.4', '1.1', '0', '0', '0', '8.6', '98.3', 'Aceites y grasas'),
(123, 'Tocino', '1', 'rebanada delgada', '8', '44', '186', '0.7', '4.6', '0', '1.7', '2', '0.5', '5.4', '54.8', 'Aceites y grasas'),
(124, 'Tocino ahumado', '1', 'rebanada delgada', '8', '44', '186', '0.7', '4.6', '0', '1.7', '2', '0.5', '5.4', '54.8', 'Aceites y grasas'),
(125, 'Tocino en lonja', '8', 'g', '8', '44', '186', '0.7', '4.6', '0', '1.7', '2', '0.5', '5.4', '54.8', 'Aceites y grasas'),
(126, 'Tocino frito', '1', 'rebanada', '7', '39', '163', '0.6', '4', '0', '0', '0', '0', '5.7', '48', 'Aceites y grasas'),
(127, 'Vinagreta', ' 1/2', 'cucharada', '8', '36', '150', '0', '4', '0.2', '0.8', '1.2', '2', '0', '0', 'Aceites y grasas'),
(128, 'Tocino imitación', '1', 'rebanada', '10', '41', '172', '1', '3.9', '0.1', '0', '0', '0', '6.7', '96.7', 'Aceites y grasas'),
(129, 'Vinagreta baja en calorías', '5', 'cucharada', '80', '38', '157', '0', '0', '7.5', '0', '0', '0', '0', '1000', 'Aceites y grasas'),
(130, 'Vinagreta comercial', '1 1/2', 'cucharada', '23', '46', '191', '0', '3.8', '3', '0.8', '0', '0', '0', '187.5', 'Aceites y grasas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_AceitesyGrasas`
--
ALTER TABLE `tbl_AceitesyGrasas`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_AceitesyGrasas`
--
ALTER TABLE `tbl_AceitesyGrasas`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
