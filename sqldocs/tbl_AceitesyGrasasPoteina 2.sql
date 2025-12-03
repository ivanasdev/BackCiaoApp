-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:24:44
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
-- Estructura de tabla para la tabla `tbl_AceitesyGrasasPoteina`
--

CREATE TABLE `tbl_AceitesyGrasasPoteina` (
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
-- Volcado de datos para la tabla `tbl_AceitesyGrasasPoteina`
--

INSERT INTO `tbl_AceitesyGrasasPoteina` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono_g`, `st_AG_saturados_g`, `st_AG_mono_g`, `st_AG_poli_g`, `st_colesterol_mg`, `st_sodio_mg`, `st_categoria`) VALUES
(1, 'Ajonjolí', '4', 'cucharadita', '10', '61', '255', '2.7', '5.7', '1', '0.8', '2.2', '2.5', '0', '3.9', 'Aceites y grasas con proteina'),
(2, 'Alrnendra', '10', 'pieza', '12', '66', '276', '2.7', '6.6', '0.5', '0.5', '4.3', '1.3', '0', '0.5', 'Aceites y grasas con proteina'),
(3, 'Almond joy miniatura', ' 1/4', 'pieza', '15', '74', '308', '0.6', '4', '8.8', '2.6', '0.8', '0.4', '0.6', '22', 'Aceites y grasas con proteina'),
(4, 'Almendra deshidratada', '10', 'pieza', '12', '71', '296', '2.4', '6.3', '2.4', '0.6', '4.1', '1.3', '0', '1.3', 'Aceites y grasas con proteina'),
(5, 'Almendra ahumada', '10', 'pieza', '12', '71', '297', '2.6', '6.4', '2.1', '0', '0', '0', '0', '73.7', 'Aceites y grasas con proteina'),
(6, 'Ajonjolí tostado', '5', 'cucharada', '13', '75', '312', '2.2', '6.3', '3.4', '0.9', '2.4', '2.8', '0', '5.1', 'Aceites y grasas con proteina'),
(7, 'Avellana', '9', 'pieza', '13', '72', '303', '2.5', '6.5', '2.3', '0', '0', '0', '0', '0', 'Aceites y grasas con proteina'),
(8, 'Avellana picada', '5', 'cucharadita', '12', '71', '298', '2.4', '6.4', '2.3', '0', '0', '0', '0', '0', 'Aceites y grasas con proteina'),
(9, 'Avellana salada', '8', 'pieza', '11', '72', '301', '1.8', '7.1', '1.6', '0', '0', '0', '0', '15.6', 'Aceites y grasas con proteina'),
(10, 'Avellana tostada', '8', 'pieza', '11', '75', '314', '1.1', '7.5', '2', '0.6', '5.9', '0.7', '0', '0.4', 'Aceites y grasas con proteina'),
(11, 'Cacahuate', '14', 'pieza', '12', '73', '304', '2.9', '6.2', '2.7', '0.9', '3.1', '1.9', '0', '100.6', 'Aceites y grasas con proteina'),
(12, 'Cacahuate acaramelado', '5', 'cucharadita', '14', '75', '315', '3', '6.5', '2.5', '1', '3.5', '2', '0', '57.8', 'Aceites y grasas con proteina'),
(13, 'Almendra picada', '4', 'cucharadita', '10', '62', '259', '2.1', '5.2', '1.8', '0.4', '0', '1.2', '0', '0', 'Aceites y grasas con proteina'),
(14, 'Almendra fileteada', '2', 'cucharada', '12', '72', '300', '2.5', '6.5', '2.2', '0.5', '4.3', '1.4', '0', '0', 'Aceites y grasas con proteina'),
(15, 'Cacahuate cocido', '20', 'g', '20', '64', '266', '2.7', '4.4', '4.3', '0.6', '2.2', '1.4', '0', '150', 'Aceites y grasas con proteina'),
(16, 'Almendra acaramelada', '6', 'pieza', '12', '72', '303', '2.2', '6', '3.4', '0.4', '3.3', '1.5', '0', '15.9', 'Aceites y grasas con proteina'),
(17, 'Almond joy', ' 1/3', 'pieza', '16', '80', '332', '0.7', '4.3', '9.4', '2.8', '0.9', '0.4', '0.7', '23.8', 'Aceites y grasas con proteina'),
(18, 'Almendra tostada', '10', 'cucharada', '12', '71', '297', '2', '6.3', '3', '0.6', '4.1', '1.3', '0', '1.3', 'Aceites y grasas con proteina'),
(19, 'Cacahuate con cáscara', '12', 'g', '12', '70', '293', '2.8', '6', '0.2', '0.8', '1.9', '1.7', '0', '0.6', 'Aceites y grasas con proteina'),
(20, 'Cacahuate con pepitas', '12', 'g', '12', '75', '313', '2.8', '6', '2.4', '0.8', '2.8', '2.4', '0', '144', 'Aceites y grasas con proteina'),
(21, 'Cacahuate con piel', '15', 'pieza', '14', '72', '302', '3.4', '6.3', '2.9', '1.4', '2.9', '1.9', '0', '50.6', 'Aceites y grasas con proteina'),
(22, 'Cacahuate enchilado', '13', 'pieza', '12', '67', '279', '2.9', '5.9', '2.1', '0.8', '2.9', '1.7', '0', '79.4', 'Aceites y grasas con proteina'),
(23, 'Cacahuate japonés', '15', 'pieza', '14', '68', '286', '2.7', '3.6', '6.3', '0', '0', '0', '0', '270', 'Aceites y grasas con proteina'),
(24, 'Cacahuate picado', '5', 'cucharadita', '12', '74', '307', '3', '6.2', '2.7', '0.9', '3.1', '1.9', '0', '101.9', 'Aceites y grasas con proteina'),
(25, 'Cacahuate salado', '13', 'pieza', '12', '71', '295', '3.2', '5.5', '2.4', '1', '2.9', '1.6', '0', '34', 'Aceites y grasas con proteina'),
(26, 'Cacahuate tostado', '13', 'pieza', '12', '69', '290', '2.8', '5.9', '2.5', '0.8', '2.9', '1.8', '0', '96.1', 'Aceites y grasas con proteina'),
(27, 'Cacahuates confitados', ' 1/4', 'bolsa', '14', '72', '299', '1.4', '4.3', '7.1', '1.5', '2', '0.6', '0.7', '36.7', 'Aceites y grasas con proteina'),
(28, 'Cacahuates cubiertos con salsa y limón', '2', 'cucharada', '13', '72', '302', '2.6', '4.6', '5.3', '0', '0', '0', '0', '124.7', 'Aceites y grasas con proteina'),
(29, 'Cacao con cáscara', '14', 'g', '13', '70', '291', '1.9', '5.9', '3.3', '3.4', '2.4', '0.1', '0', '0.5', 'Aceites y grasas con proteina'),
(30, 'Cacao pataste', '12', 'g', '12', '72', '302', '2.1', '6.5', '2.6', '3.6', '2.5', '0.1', '0', '0.5', 'Aceites y grasas con proteina'),
(31, 'Cacao con cáscara', '14', 'g', '13', '70', '291', '1.9', '5.9', '3.3', '3.4', '2.4', '0.1', '0', '0.5', 'Aceites y grasas con proteina'),
(32, 'Cacao pataste', '12', 'g', '12', '72', '302', '2.1', '6.5', '2.6', '3.6', '2.5', '0.1', '0', '0.5', 'Aceites y grasas con proteina'),
(33, 'Castaña', '1 1/2', 'pieza', '17', '62', '258', '1.1', '0.3', '13.6', '0.1', '0.2', '0.1', '0', '0.6', 'Aceites y grasas con proteina'),
(34, 'Castaña asada', '30', 'g', '30', '73', '305', '1.4', '0.3', '15.9', '0', '0.2', '0.1', '0', '1.1', 'Aceites y grasas con proteina'),
(35, 'Chía', '7', 'cucharada', '12', '69', '289', '3.5', '5.9', '1.9', '1.2', '0.9', '3.5', '0', '12.3', 'Aceites y grasas con proteina'),
(36, 'Castaña con cáscara', '2', 'pieza', '18', '67', '281', '1.2', '0.3', '14.8', '0.1', '0.2', '0.1', '0', '0.7', 'Aceites y grasas con proteina'),
(37, 'Cacao sin cáscara', '12', 'g', '12', '67', '279', '1.9', '5.9', '2.5', '3.2', '2.3', '0.1', '0', '0.5', 'Aceites y grasas con proteina'),
(38, 'Chilorio', '30', 'g', '30', '64', '267', '5', '4.7', '0.7', '0.7', '0', '0', '17.1', '203.1', 'Aceites y grasas con proteina'),
(39, 'Chilorio de pavo', '30', 'g', '30', '64', '267', '5', '4.7', '0.7', '0.7', '0', '0', '17.1', '203.1', 'Aceites y grasas con proteina'),
(40, 'Chistorra', '15', 'g', '15', '73', '305', '1.7', '7', '0.7', '0', '0', '0', '25.5', '156.8', 'Aceites y grasas con proteina'),
(41, 'Chorizo vegetariano', '15', 'g', '15', '70', '292', '4.1', '5.7', '0.2', '0', '0', '0', '0', '0', 'Aceites y grasas con proteina'),
(42, 'Coroso', '14', 'g', '11', '72', '301', '0.8', '7.5', '1.6', '0', '0', '0', '0', '0', 'Aceites y grasas con proteina'),
(43, 'Harina de ajonjolí', '13', 'g', '13', '69', '289', '4', '4.9', '3.5', '0.7', '1.9', '2.1', '0', '5.6', 'Aceites y grasas con proteina'),
(44, 'Harina de ajonjolí baja en grasa', '20', 'g', '20', '67', '281', '10.1', '0.4', '7.2', '0.1', '0.1', '0.1', '0', '7.9', 'Aceites y grasas con proteina'),
(45, 'Chorizo', '15', 'g', '15', '64', '266', '3.5', '5.6', '0', '2.1', '2.4', '0.4', '16.2', '11.5', 'Aceites y grasas con proteina'),
(46, 'Chorizo de polIo', '35', 'g', '35', '72', '299', '5', '5.7', '0.1', '0', '0', '0', '5.3', '302.4', 'Aceites y grasas con proteina'),
(47, 'Cocoa', '2', 'cucharada', '22', '72', '300', '6.3', '0.6', '11.8', '0', '0', '0', '4.6', '155.2', 'Aceites y grasas con proteina'),
(48, 'Harina de cacahuate', '15', 'g', '15', '65', '271', '5.1', '3.3', '4.8', '0.5', '1.7', '1.1', '0', '0', 'Aceites y grasas con proteina'),
(49, 'Harina de almendras', '11', 'g', '11', '66', '276', '2.2', '5.7', '2.5', '0.6', '3.7', '1.2', '0', '0.8', 'Aceites y grasas con proteina'),
(50, 'Harina de cacahuate desgrasada', '20', 'g', '20', '66', '278', '10.6', '0.1', '7', '0', '0.1', '0', '0', '36.4', 'Aceites y grasas con proteina'),
(51, 'Nueces mixtas', '1', 'cucharada', '12', '74', '309', '2', '6.8', '2.6', '1', '3.8', '1.6', '0', '78.2', 'Aceites y grasas con proteina'),
(52, 'Nuez de castilla', '3', 'pieza', '9', '67', '280', '0.9', '7', '1.3', '0.6', '4.2', '1.9', '0', '0.1', 'Aceites y grasas con proteina'),
(53, 'Nuez de la india con almendras', ' 3/4', 'cucharada', '11', '64', '266', '1.9', '5.6', '2.3', '0.8', '3.4', '1.5', '0', '35.6', 'Aceites y grasas con proteina'),
(54, 'Nuez acaramelada', ' 3/4', 'taza', '12', '64', '269', '1.7', '5.6', '3', '1.3', '3', '1.3', '0', '38.6', 'Aceites y grasas con proteina'),
(55, 'Mantequilla de cacahuate', '2', 'cucharadita', '11', '63', '262', '2.6', '5.3', '2.3', '1', '2.5', '1.5', '0', '52', 'Aceites y grasas con proteina'),
(56, 'Nuez de la india acaramelada', ' 3/4', 'cucharada', '12', '64', '269', '1.7', '5.6', '3', '1.3', '3', '1.3', '0', '38.6', 'Aceites y grasas con proteina'),
(57, 'Nuez de la india sin sal en mitades', '15', 'mitades', '12', '72', '300', '2.1', '5.9', '3.4', '1.1', '3.4', '1.1', '0', '0', 'Aceites y grasas con proteina'),
(58, 'Nuez', '3', 'pieza', '9', '67', '280', '0.9', '7', '1.3', '0.6', '4.2', '1.9', '0', '0.1', 'Aceites y grasas con proteina'),
(59, 'Nuez de la india tostada sin sal', '8', 'pieza', '13', '73', '307', '1.9', '5.9', '4.2', '1.2', '3.5', '1', '0', '2.3', 'Aceites y grasas con proteina'),
(60, 'Nuez deshidratada', '3', 'pieza', '9', '67', '280', '0.9', '7', '1.3', '0.6', '4.2', '1.9', '0', '0.1', 'Aceites y grasas con proteina'),
(61, 'Nuez de macadamia deshidratada', '4', 'pieza', '10', '73', '305', '0.9', '7.7', '1.4', '1.1', '6.1', '0.1', '0', '0.4', 'Aceites y grasas con proteina'),
(62, 'Nuez en mitades', '7', 'mitades', '10', '74', '310', '1', '7.7', '1.4', '0.7', '4.6', '2.1', '0', '0.1', 'Aceites y grasas con proteina'),
(63, 'Nuez garapiñada', ' 3/4', 'taza', '12', '64', '269', '1.7', '5.6', '3', '1.3', '3', '1.3', '0', '38.6', 'Aceites y grasas con proteina'),
(64, 'Nuez tostada', '3', 'pieza', '9', '67', '280', '0.9', '7', '1.3', '0.6', '4.2', '1.9', '0', '0.1', 'Aceites y grasas con proteina'),
(65, 'Pasta de almendras', '4', 'cucharadita', '13', '62', '259', '1.2', '3.8', '6.5', '0.3', '2.4', '0.8', '0', '1.4', 'Aceites y grasas con proteina'),
(66, 'Pasta de cacahuate desgrasada', '1', 'cucharada', '10', '43', '181', '3', '2.5', '2.8', '0.9', '2.5', '1.4', '0', '60.7', 'Aceites y grasas con proteina'),
(67, 'Nuez de la india con sal', '7', 'pieza', '11', '66', '277', '1.9', '5.2', '2.7', '1', '3.2', '1', '0', '32', 'Aceites y grasas con proteina'),
(68, 'Nuez entera', '3', 'pieza', '9', '57', '280', '0.9', '7', '1.3', '0.6', '4.2', '1.9', '0', '0.1', 'Aceites y grasas con proteina'),
(69, 'Paté', '5', 'cucharadita', '22', '69', '289', '3.1', '6.1', '0.3', '0', '0', '0', '0', '150.9', 'Aceites y grasas con proteina'),
(70, 'Paté de cerdo', '1', 'cucharada', '13', '61', '254', '1.5', '5.8', '0.6', '1.9', '3.4', '0.1', '20', '91.9', 'Aceites y grasas con proteina'),
(71, 'Nuez picada', '10', 'g', '10', '71', '297', '1', '7.4', '1.4', '0.6', '4.4', '2.1', '0', '0.1', 'Aceites y grasas con proteina'),
(72, 'Paté de Foie Oras', '1', 'cucharada', '13', '60', '251', '1.5', '5.7', '0.6', '1.9', '3.3', '0.1', '19.5', '90.6', 'Aceites y grasas con proteina'),
(73, 'Paté de ganso', '1', 'cucharada', '13', '61', '254', '1.5', '5.8', '0.6', '1.9', '3.4', '0.1', '20', '91.9', 'Aceites y grasas con proteina'),
(74, 'Paté de hígado de cerdo', '1', 'cucharada', '13', '61', '254', '1.5', '5.8', '0.6', '1.9', '3.4', '0.1', '20', '91.9', 'Aceites y grasas con proteina'),
(75, 'Paté de hígado de ternera', '1', 'cucharada', '13', '61', '254', '1.5', '5.8', '0.6', '1.9', '3.4', '0.1', '20', '91.9', 'Aceites y grasas con proteina'),
(76, 'Pasta de cacahuate', '1', 'cucharada', '10', '58', '243', '2.8', '4.9', '1.7', '0.9', '2.5', '1.4', '0', '47.8', 'Aceites y grasas con proteina'),
(77, 'Paté de poilo', '8', 'cucharadita', '35', '71', '205', '4.7', '4.6', '2.4', '1.4', '1.9', '0.9', '137.3', '134.8', 'Aceites y grasas con proteina'),
(78, 'Paté de ternera', '1', 'cucharada', '13', '61', '254', '1.5', '5.8', '0.6', '1.9', '3.4', '0.1', '20', '91.9', 'Aceites y grasas con proteina'),
(79, 'Pepita limpia', '1', 'cucharada', '10', '53', '221', '3.3', '4.3', '1.4', '0.8', '1.3', '1.9', '0', '1.8', 'Aceites y grasas con proteina'),
(80, 'Pepitas', '60', 'pieza', '12', '66', '274', '3', '5.6', '2.1', '1.1', '1.7', '2.5', '0', '2.1', 'Aceites y grasas con proteina'),
(81, 'Pepitas con cáscara', '2', 'cucharada', '13', '70', '292', '3.5', '5.6', '1.3', '0.9', '2.2', '2.6', '0', '520', 'Aceites y grasas con proteina'),
(82, 'Pepitas de calabaza', '1 1/2', 'cucharada', '12', '66', '274', '3.6', '5.5', '1.7', '0', '0', '0', '0', '0', 'Aceites y grasas con proteina'),
(83, 'Pepitas de melón', '5', 'cucharadita', '12', '66', '275', '3.3', '5.6', '1.8', '1.2', '0.9', '3.3', '0', '11.7', 'Aceites y grasas con proteina'),
(84, 'Pepitas tostadas', '1', 'cucharadita', '13', '69', '287', '4.3', '5.5', '1.8', '1.1', '1.7', '2.5', '0', '2.3', 'Aceites y grasas con proteina'),
(85, 'Piñón', '1', 'cucharada', '10', '64', '266', '1.2', '6.2', '2', '1', '2.3', '2.6', '0', '7.1', 'Aceites y grasas con proteina'),
(86, 'Pepperoni', '4', 'rebanada', '15', '72', '299', '2.8', '6.7', '0.1', '2.6', '3.3', '0.6', '12.5', '274', 'Aceites y grasas con proteina'),
(87, 'Pistache', '18', 'pieza', '13', '73', '305', '2.6', '6.3', '2.5', '0.8', '3.1', '1.9', '0', '86.4', 'Aceites y grasas con proteina'),
(88, 'Pistache tostado', '1', 'cucharada', '10', '59', '245', '2.1', '4.9', '2.5', '0.6', '3.3', '0.8', '0', '0.7', 'Aceites y grasas con proteina'),
(89, 'Queso de puerco', '20', 'g', '20', '75', '314', '2', '7.4', '0', '4.1', '4', '1', '20', '0', 'Aceites y grasas con proteina'),
(90, 'Salsa bechamel', '3', 'cucharadas', '45', '66', '277', '1.7', '4.8', '4.1', '1.3', '2', '1.3', '3.2', '159.5', 'Aceites y grasas con proteina'),
(91, 'Salsa blanca', '3', 'cucharadas', '45', '66', '277', '1.7', '4.8', '4.1', '1.3', '2', '1.3', '3.2', '159.5', 'Aceites y grasas con proteina'),
(92, 'Salsa de ajonjolí', '2', 'cucharadita', '11', '63', '252', '2.6', '5.3', '2.3', '1', '2.5', '1.5', '0', '50.4', 'Aceites y grasas con proteina'),
(93, 'Salsa bearnesa industrializada', '4', 'cucharadita', '17', '61', '253', '2.3', '1.5', '9.9', '0.2', '0.7', '0.5', '0', '564.4', 'Aceites y grasas con proteina'),
(94, 'Salsa de pimienta verde', '5', 'cucharada', '75', '72', '301', '2.3', '4.4', '6', '2.7', '1.2', '0.1', '13.3', '280.4', 'Aceites y grasas con proteina'),
(95, 'Salsa pesto', '4', 'cucharadita', '24', '66', '276', '3.1', '5.5', '0.9', '0', '0', '0', '5.9', '103.2', 'Aceites y grasas con proteina'),
(96, 'Salsa de cacahuate', '2', 'cucharadita', '11', '63', '252', '2.6', '5.3', '2.3', '1', '2.5', '1.5', '0', '52', 'Aceites y grasas con proteina'),
(97, 'Salsa de queso', '2', 'cucharada', '34', '67', '280', '3.5', '5.1', '1.8', '2.7', '1.6', '0.5', '12.5', '167.7', 'Aceites y grasas con proteina'),
(98, 'Semilla de calabaza', '1 1/2', 'cucharada', '11', '61', '254', '3.4', '5.1', '1.6', '0.9', '1.9', '2.2', '0', '0', 'Aceites y grasas con proteina'),
(99, 'Semilla de girasol', '4', 'cucharadita', '12', '69', '287', '2.7', '6', '2.1', '0.7', '1.5', '3.7', '0', '0.4', 'Aceites y grasas con proteina'),
(100, ' botana mexicana', '1', 'cucharada', '10', '62', '261', '2.3', '5', '2', '0.7', '2.3', '2', '0', '120', 'Aceites y grasas con proteina'),
(101, 'Semilla de chía', '5', 'cucharadita', '12', '66', '275', '3.3', '5.6', '1.8', '1.2', '0.9', '3.3', '0', '11.7', 'Aceites y grasas con proteina'),
(102, 'Semilla de calabaza menuda', '2', 'cucharada', '15', '65', '273', '5.3', '4.1', '3', '0.7', '1.5', '0', '0', '0', 'Aceites y grasas con proteina'),
(103, 'Semilla de girasol tostada', '4', 'cucharadita', '12', '71', '296', '2.4', '6', '2.9', '0.6', '1.2', '4', '0', '0.4', 'Aceites y grasas con proteina'),
(104, 'Tocino vegetariano', '2', 'rebanada', '20', '63', '261', '2.3', '6', '1.3', '1', '1.5', '3', '0', '292.5', 'Aceites y grasas con proteina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_AceitesyGrasasPoteina`
--
ALTER TABLE `tbl_AceitesyGrasasPoteina`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_AceitesyGrasasPoteina`
--
ALTER TABLE `tbl_AceitesyGrasasPoteina`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
