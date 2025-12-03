-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:25:29
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
-- Estructura de tabla para la tabla `tbl_AOABAG`
--

CREATE TABLE `tbl_AOABAG` (
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
  `st_Colesterol_g` varchar(50) DEFAULT NULL,
  `st_vitamina_A_Mg_RE` varchar(50) DEFAULT NULL,
  `st_calcio_mg` varchar(50) DEFAULT NULL,
  `st_Hierro_mg` varchar(50) DEFAULT NULL,
  `st_sodio_mg` varchar(50) DEFAULT NULL,
  `st_selenio_mg` varchar(50) DEFAULT NULL,
  `st_categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_AOABAG`
--

INSERT INTO `tbl_AOABAG` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono_g`, `st_Colesterol_g`, `st_vitamina_A_Mg_RE`, `st_calcio_mg`, `st_Hierro_mg`, `st_sodio_mg`, `st_selenio_mg`, `st_categoria`) VALUES
(1, 'Agujas de res', '35', 'g', '33', '51', '213', '6.8', '2.6', '0', '20.6', '77.5', '3', '0.6', '20.9', '6.6', 'Alimentos de origen animal bag'),
(2, 'Anchoas crudas', '9', 'pieza', '36', '47', '197', '7.3', '1.7', '0', '21.6', '5.4', '52.9', '1.2', '37.4', '13.1', 'Alimentos de origen animal bag'),
(3, 'Arenque cocido', '25', 'g', '25', '51', '212', '5.8', '2.9', '0', '19.3', '9', '18.5', '0.4', '28.8', '11.7', 'Alimentos de origen animal bag'),
(4, 'Anchoa con aceite', '6', 'pieza', '24', '50', '211', '7', '2.3', '0', '20.4', '2.9', '55.7', '1.1', '880.3', '16.3', 'Alimentos de origen animal bag'),
(5, 'Arenque fresco crudo', '35', 'g', '35', '55', '231', '6.3', '3.2', '0', '21', '9.8', '20', '0.4', '31.5', '12.8', 'Alimentos de origen animal bag'),
(6, 'Atún drenado', '25', 'g', '25', '49', '207', '7.3', '2.1', '0', '7.8', '5.8', '3.2', '0.3', '88.5', '19', 'Alimentos de origen animal bag'),
(7, 'Atún blanco en aceite', '25', 'g', '25', '46', '194', '6.6', '2', '0', '7', '1.2', '0.8', '0.1', '91.2', '15', 'Alimentos de origen animal bag'),
(8, 'Barbacoa', '50', 'g', '40', '54', '227', '7.6', '2.4', '0', '26', '0', '2.8', '0.9', '30', '15.2', 'Alimentos de origen animal bag'),
(9, 'Arrachera cruda', '35', 'g', '35', '49', '206', '7.5', '1.9', '0', '11.6', '0', '8.4', '0.5', '19.3', '9.2', 'Alimentos de origen animal bag'),
(10, 'Arrachera de res', '30', 'g', '30', '56', '233', '8.4', '2.2', '0', '14.7', '0', '5.4', '0.5', '17.1', '9.6', 'Alimentos de origen animal bag'),
(11, 'Bonito en aceite', '25', 'g', '25', '55', '229', '7.3', '2.9', '0', '11.7', '0', '7.2', '0.3', '0', '4', 'Alimentos de origen animal bag'),
(12, 'Barbacoa con hueso', '65', 'g', '38', '51', '214', '7.2', '2.3', '0', '24.5', '0', '2.6', '0.8', '28.3', '14.3', 'Alimentos de origen animal bag'),
(13, 'Cabeza de cerdo', '495', 'g', '50', '55', '230', '7', '2.8', '0', '32.2', '0', '8.4', '1', '37.1', '14.1', 'Alimentos de origen animal bag'),
(14, 'Cabeza de carnero cocida', '495', 'g', '50', '55', '230', '7', '2.8', '0', '32.2', '0', '8.4', '1', '37.1', '18.8', 'Alimentos de origen animal bag'),
(15, 'Calamarfrlto', '35', 'g', '35', '61', '256', '6.3', '2.6', '2.7', '91', '3.7', '13.6', '0.4', '107.1', '15.7', 'Alimentos de origen animal bag'),
(16, 'Carne de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '13.2', 'Alimentos de origen animal bag'),
(17, 'Carne de cerdo molida', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(18, 'Carne de ganso de crianza', '40', 'g', '32', '52', '218', '7.4', '2.3', '0', '27.2', '3.9', '4.2', '0.8', '28.2', '5.4', 'Alimentos de origen animal bag'),
(19, 'Carne de res molida', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '3.8', 'Alimentos de origen animal bag'),
(20, 'Carne de res', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '5.9', 'Alimentos de origen animal bag'),
(21, 'Carne de pato de crianza', '60', 'g', '39', '51', '215', '7.1', '2.3', '0', '30', '9.4', '4.3', '0.9', '28.9', '5.4', 'Alimentos de origen animal bag'),
(22, 'Carne de ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(23, 'Carne molida especial', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '3.8', 'Alimentos de origen animal bag'),
(24, 'Carne molida', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '3.8', 'Alimentos de origen animal bag'),
(25, 'Carne molida de res', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '3.8', 'Alimentos de origen animal bag'),
(26, 'Carne molida de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '9.8', 'Alimentos de origen animal bag'),
(27, 'Carne promedio', '30', 'g', '29', '51', '213', '5.9', '2.9', '0', '18.5', '1.7', '3.4', '0.9', '18.5', '5.7', 'Alimentos de origen animal bag'),
(28, 'Carnero', '50', 'g', '40', '54', '227', '7.6', '2.4', '0', '26', '0', '2.8', '0.9', '30', '15.2', 'Alimentos de origen animal bag'),
(29, 'Carnero con hueso', '65', 'g', '38', '51', '214', '7.2', '2.3', '0', '24.5', '0', '2.6', '0.8', '28.3', '14.3', 'Alimentos de origen animal bag'),
(30, 'Carpa', '75', 'g', '41', '51', '215', '7.2', '2.3', '0', '26.7', '3.8', '16.7', '0.5', '20', '5.7', 'Alimentos de origen animal bag'),
(31, 'Carpa cocida', '30', 'g', '30', '49', '204', '6.8', '2.2', '0', '25.1', '2.8', '15.5', '0.5', '19.1', '5.4', 'Alimentos de origen animal bag'),
(32, 'Cecina', '30', 'g', '30', '48', '202', '7.2', '2', '0.2', '21', '72', '10.5', '1.4', '330', '5.7', 'Alimentos de origen animal bag'),
(33, 'Carpa horneada', '30', 'g', '30', '49', '204', '6.8', '2.2', '0', '25.1', '2.8', '15.5', '0.5', '19.1', '5.4', 'Alimentos de origen animal bag'),
(34, 'Atún en aceite', '25', 'g', '25', '49', '207', '7.3', '2.1', '0', '6.2', '4.6', '2.6', '0.3', '70.8', '19', 'Alimentos de origen animal bag'),
(35, 'Bistec de ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(36, 'Bonito fileteado', '30', 'g', '30', '50', '211', '7.2', '2.2', '0', '0', '0', '7.8', '0.2', '12', '4.2', 'Alimentos de origen animal bag'),
(37, 'Bonito', '60', 'g', '31', '51', '215', '7.3', '2.2', '0', '0', '0', '8', '0.2', '12.2', '4.3', 'Alimentos de origen animal bag'),
(38, 'Cecina enchilada', '30', 'g', '30', '48', '202', '7.2', '2', '0.2', '21', '72', '10.5', '1.4', '330', '8.6', 'Alimentos de origen animal bag'),
(39, 'Cecina de cerdo', '30', 'g', '30', '48', '202', '7.2', '2', '0.2', '21', '72', '10.5', '1.4', '330', '8.6', 'Alimentos de origen animal bag'),
(40, 'Chuleta de cerdo', '1/2', 'pieza', '38', '54', '224', '7.6', '2.4', '0', '24.9', '0.4', '2.3', '0.5', '31.4', '12.2', 'Alimentos de origen animal bag'),
(41, 'Conejo', '45', 'g', '36', '57', '239', '7.3', '2.9', '0', '23.4', '0', '6.5', '0.9', '15.5', '8.5', 'Alimentos de origen animal bag'),
(42, 'Conejo de crianza', '40', 'g', '32', '51', '213', '6.5', '2.6', '0', '20.8', '0', '5.8', '0.8', '13.8', '7.6', 'Alimentos de origen animal bag'),
(43, 'Conejo crudo', '35', 'g', '35', '48', '199', '7', '1.9', '0', '20', '0', '4.6', '0.5', '14.4', '8.3', 'Alimentos de origen animal bag'),
(44, 'Corazón de borrego', '45', 'g', '45', '55', '231', '7.4', '2.5', '0.2', '60', '0', '0', '0', '39.5', '21.2', 'Alimentos de origen animal bag'),
(45, 'Corazón de borrego cocido', '30', 'g', '30', '55', '231', '7.4', '2.4', '0.6', '74.2', '0', '0', '0', '18.7', '14.1', 'Alimentos de origen animal bag'),
(46, 'Corazón de cordero', '45', 'g', '45', '55', '231', '7.4', '2.5', '0.2', '60', '0', '0', '0', '39.5', '14.4', 'Alimentos de origen animal bag'),
(47, 'Corazón de cordero cocido', '30', 'g', '30', '55', '231', '7.4', '2.4', '0.6', '74.2', '0', '0', '0', '18.7', '14.1', 'Alimentos de origen animal bag'),
(48, 'Corazón de pollo cocido', '25', 'g', '25', '53', '220', '7.9', '2.6', '0', '70.2', '0', '0', '0', '17.5', '2', 'Alimentos de origen animal bag'),
(49, 'Comed beef', '25', 'g', '25', '54', '224', '6.7', '3.1', '0', '22.3', '0', '0', '0.6', '218.8', '4.3', 'Alimentos de origen animal bag'),
(50, 'Corazón de pavo', '40', 'g', '40', '58', '241', '7.3', '2.8', '0.3', '46.3', '0', '0', '0', '35.1', '2', 'Alimentos de origen animal bag'),
(51, 'Cuete de ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(52, 'Comed beef con áspic', '30', 'g', '30', '46', '193', '6.9', '1.8', '0', '13.9', '0', '3.2', '0.6', '286.1', '5.2', 'Alimentos de origen animal bag'),
(53, 'Falda de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(54, 'Filete de carpa', '40', 'g', '40', '51', '212', '7.2', '2.3', '0', '26.4', '3.8', '16.5', '0.5', '19.8', '5.6', 'Alimentos de origen animal bag'),
(55, 'Filete de cerdo', '35', 'g', '35', '49', '205', '6.9', '2.2', '0', '22.8', '0.4', '2.1', '0.4', '28.7', '10', 'Alimentos de origen animal bag'),
(56, 'Filete de puerco', '35', 'g', '35', '49', '205', '6.9', '2.2', '0', '22.8', '0.4', '2.1', '0.4', '28.7', '10', 'Alimentos de origen animal bag'),
(57, 'Filete de salmón', '30', 'g', '30', '55', '230', '6', '3.2', '0', '17.6', '4.6', '3.5', '0.1', '17.6', '13.4', 'Alimentos de origen animal bag'),
(58, 'Gallina', '40', 'g', '27', '59', '248', '7.6', '3', '0', '21.2', '5.4', '7.1', '0.5', '17.4', '3.4', 'Alimentos de origen animal bag'),
(59, 'Gallina joven codda', '40', 'g', '27', '59', '248', '7.6', '3', '0', '21.2', '5.4', '7.1', '0.5', '17.4', '4.9', 'Alimentos de origen animal bag'),
(60, 'Ganso de crianza', '40', 'g', '32', '52', '218', '7.4', '2.3', '0', '27.2', '3.9', '4.2', '0.8', '28.2', '5.4', 'Alimentos de origen animal bag'),
(61, 'Guajolote', '45', 'g', '36', '57', '238', '7.3', '2.8', '0', '26', '0.7', '5.3', '0.5', '23.1', '8.2', 'Alimentos de origen animal bag'),
(62, 'Hígado de ganso crudo', '40', 'g', '40', '53', '222', '6.5', '1.7', '2.5', '206', '3723.6', '17.2', '12.2', '56', '27.2', 'Alimentos de origen animal bag'),
(63, 'Hígado de borrego cocido', '25', 'g', '25', '55', '230', '7.6', '2.2', '0.6', '125.3', '1872.8', '2', '2.1', '14', '27.9', 'Alimentos de origen animal bag'),
(64, 'Hígado de cerdo cocido', '30', 'g', '30', '50', '207', '1.8', '1.3', '1.1', '106.5', '1621.5', '3', '5.4', '14.7', '20.3', 'Alimentos de origen animal bag'),
(65, 'Hígado de ganso', '1/2', 'pieza', '47', '63', '261', '7.7', '2', '3', '242.1', '4375.2', '20.2', '14.3', '65.8', '32', 'Alimentos de origen animal bag'),
(66, 'Hígado de pollo crudo', '40', 'g', '40', '48', '202', '7.2', '1.6', '1.4', '120', '1452', '4.4', '3.4', '31.6', '25.6', 'Alimentos de origen animal bag'),
(67, 'Hígado de pollo cocido', '30', 'g', '30', '50', '209', '7.3', '2', '0.3', '168.9', '1194.3', '3.3', '3.5', '22.8', '24.7', 'Alimentos de origen animal bag'),
(68, 'Hígado de pavo', '4', 'cucharada', '35', '59', '247', '8.4', '2.1', '1.2', '219.1', '4403.4', '3.9', '2.7', '22.4', '35.2', 'Alimentos de origen animal bag'),
(69, 'Hígado de pato crudo', '40', 'g', '40', '54', '227', '7.5', '1.8', '1.4', '206', '4793.6', '4.4', '12.2', '56', '26.8', 'Alimentos de origen animal bag'),
(70, 'Hígado de res cocido', '25', 'g', '25', '48', '200', '7.3', '1.3', '1.3', '99', '2360.5', '1.5', '1.6', '19.8', '9', 'Alimentos de origen animal bag'),
(71, 'Hígado de res cocido', '30', 'g', '30', '48', '202', '7.3', '1.5', '1', '116.7', '3180.6', '2.1', '2', '21', '17.1', 'Alimentos de origen animal bag'),
(72, 'Hígado de res frito', '25', 'g', '25', '54', '227', '6.7', '2', '2', '120.5', '2682.3', '2.8', '1.6', '26.5', '14.3', 'Alimentos de origen animal bag'),
(73, 'Hueva de pescado cocida', '25', 'g', '25', '51', '213', '7.2', '2.1', '0.5', '119.8', '22.8', '7', '0.2', '29.3', '12.9', 'Alimentos de origen animal bag'),
(74, 'Huevo deshidratado', '2 1/2', 'cucharada', '13', '56', '232', '6.9', '1.6', '2.7', '71.5', '46.1', '40.8', '0.4', '100', '16', 'Alimentos de origen animal bag'),
(75, 'Huevo de tortuga', '50', 'g', '45', '51', '214', '5.6', '2.8', '0.4', '0', '28.9', '27.6', '0.7', '0', '0', 'Alimentos de origen animal bag'),
(76, 'Huevo en polvo', '2 1/2', 'cucharada', '13', '56', '232', '6.9', '1.6', '2.7', '71.5', '46.1', '40.8', '0.4', '100', '16', 'Alimentos de origen animal bag'),
(77, 'Jamón bajo en grasa', '2', 'rebanada', '42', '56', '232', '8.1', '2.1', '0.5', '19.5', '0', '3', '0.3', '600', '7.3', 'Alimentos de origen animal bag'),
(78, 'Jamón de pavo', '2', 'rebanada', '42', '54', '225', '8', '2.1', '0.1', '23.6', '0', '4.4', '1.2', '418.5', '7.3', 'Alimentos de origen animal bag'),
(79, 'Lomo de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '12.8', 'Alimentos de origen animal bag'),
(80, 'Jamón de pierna', '2', 'rebanada', '42', '56', '232', '8.1', '2.1', '0.5', '19.5', '0', '3', '0.3', '600', '12.3', 'Alimentos de origen animal bag'),
(81, 'Lomo de cerdo en trozos', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '12.8', 'Alimentos de origen animal bag'),
(82, 'Maciza de res en trozo', '35', 'g', '35', '49', '205', '7.3', '2.2', '0', '21.7', '2.1', '2.1', '0.8', '22.1', '6.6', 'Alimentos de origen animal bag'),
(83, 'Machacado de res', '15', 'g', '15', '50', '207', '6.7', '1.3', '0', '24.1', 'ND', 'ND', 'ND', '283.8', 'ND', 'Alimentos de origen animal bag'),
(84, 'Macíza de carnero', '50', 'g', '40', '54', '227', '7.6', '2.4', '0', '26', '0', '2.8', '0.9', '30', '15.2', 'Alimentos de origen animal bag'),
(85, 'Madza de res', '15', 'g', '15', '50', '207', '6.7', '1.3', '0', '24.1', 'ND', 'ND', 'ND', '283.8', 'ND', 'Alimentos de origen animal bag'),
(86, 'Madza de ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(87, 'Milanesa de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '24', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(88, 'Milanesa de ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(89, 'Molida de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '9.8', 'Alimentos de origen animal bag'),
(90, 'Molida de res', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '5.7', 'Alimentos de origen animal bag'),
(91, 'Molida de sirloin', '25', 'g', '25', '51', '211', '7.6', '2', '0', '22.3', '0', '2.8', '0.8', '16.5', '4.6', 'Alimentos de origen animal bag'),
(92, 'Molida especial', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '5.7', 'Alimentos de origen animal bag'),
(93, 'Molida regular de res', '30', 'g', '30', '54', '224', '6.2', '3', '0', '19.5', '1.8', '3.6', '0.9', '19.5', '5.7', 'Alimentos de origen animal bag'),
(94, 'Ostión cocido', '35', 'g', '35', '57', '238', '6.6', '1.6', '3.5', '35', '51.1', '5.8', '3.2', '74.1', '53.9', 'Alimentos de origen animal bag'),
(95, 'Ostión crudo', '75', 'g', '75', '61', '254', '7.1', '1.7', '3.7', '37.5', '60.9', '6.2', '3.8', '79.4', '57.8', 'Alimentos de origen animal bag'),
(96, 'Ostión cultivado cocido', '9', 'pieza', '88', '70', '294', '6.1', '1.9', '6.4', '32.9', '16.4', '49.3', '6.8', '143.5', '68.4', 'Alimentos de origen animal bag'),
(97, 'Ostión en jugo', '70', 'g', '70', '57', '238', '6.6', '1.6', '3.5', '35', '56.8', '5.8', '3.6', '74.1', '53.9', 'Alimentos de origen animal bag'),
(98, 'Ostión cuItvado', '9', 'pieza', '126', '75', '314', '6.6', '2', '6.9', '31.5', '10.5', '55.5', '7.3', '225', '80.3', 'Alimentos de origen animal bag'),
(99, 'Ostión enlatado', '100', 'g', '100', '69', '290', '7.1', '2.5', '3.9', '55.3', '90.6', '44.7', '6.7', '111.8', '77.5', 'Alimentos de origen animal bag'),
(100, 'Pámpano', '65', 'g', '33', '55', '231', '6.2', '3.1', '0', '16.3', '0', '5.5', '0', '15.3', '11.9', 'Alimentos de origen animal bag'),
(101, 'Pámpano cocido', '25', 'g', '25', '53', '220', '5.9', '3', '0', '15.9', '9.1', '10.9', '0.2', '19.1', '11.7', 'Alimentos de origen animal bag'),
(102, 'Pámpano fileteado', '35', 'g', '35', '60', '249', '6.7', '3.3', '0', '17.5', '0', '6', '0', '16.5', '12.8', 'Alimentos de origen animal bag'),
(103, 'Pasta de anchoas', '4', 'cucharadita', '28', '56', '234', '5.6', '3.2', '1.2', '0', '0', '0', '0', '0', '0', 'Alimentos de origen animal bag'),
(104, 'Pasta de camarón', '30', 'g', '30', '54', '226', '6.2', '2.8', '0.5', '0', '0', '0', '0.1', '0', '0', 'Alimentos de origen animal bag'),
(105, 'Pasta de langosta', '4', 'cucharadita', '28', '52', '217', '6', '2.8', '0.4', '0', '0', '20', '0.4', '0', '0', 'Alimentos de origen animal bag'),
(106, 'Pastrami de pavo', '2', 'rebanada', '42', '59', '246', '7.7', '2.6', '0.7', '22.8', '0', '3.7', '0.7', '439.2', '6.8', 'Alimentos de origen animal bag'),
(107, 'Pato de crianza', '60', 'g', '39', '51', '215', '7.1', '2.3', '0', '30', '9.4', '4.3', '0.9', '28.9', '5.4', 'Alimentos de origen animal bag'),
(108, 'Pavo', '45', 'g', '36', '57', '238', '7.3', '2.8', '0', '26', '0.7', '5.3', '0.5', '23.1', '13.1', 'Alimentos de origen animal bag'),
(109, 'Pavo entero', '45', 'g', '36', '57', '238', '7.3', '2.8', '0', '26', '0.7', '5.3', '0.5', '23.1', '11.7', 'Alimentos de origen animal bag'),
(110, 'Pancita de puerco', '35', 'g', '35', '55', '230', '5.8', '3.4', '0', '67.6', '0', '3.5', '0.8', '18.2', '9', 'Alimentos de origen animal bag'),
(111, 'Pechuga de pollo con piel', '35', 'g', '30', '55', '231', '6', '3.3', '0', '19.9', '11.6', '3.3', '0.2', '19.3', '4.9', 'Alimentos de origen animal bag'),
(112, 'Pescado blanco', '75', 'g', '39', '52', '219', '7.4', '2.3', '0', '23.4', '14.2', '10.1', '0.1', '19.7', '5.5', 'Alimentos de origen animal bag'),
(113, 'Pescado blanco cocido', '30', 'g', '30', '52', '215', '7.3', '2.3', '0', '22.9', '11.6', '9.9', '0.1', '19.4', '4.2', 'Alimentos de origen animal bag'),
(114, 'Pescuezo de res', '50', 'g', '33', '50', '209', '6.7', '2.4', '0', '19.8', '37.7', '1.6', '0.6', '25.4', '6.1', 'Alimentos de origen animal bag'),
(115, 'Pescuezo de pollo sin piel', '125', 'pieza', '38', '58', '241', '6.6', '3.3', '0', '31.1', '16.5', '10.1', '0.8', '30.4', '4.5', 'Alimentos de origen animal bag'),
(116, 'Pierna de carnero', '50', 'g', '40', '54', '227', '7.6', '2.4', '0', '26', '0', '2.8', '0.9', '30', '15.2', 'Alimentos de origen animal bag'),
(117, 'Pierna de pollo con piel cocida', '1/4', 'taza', '26', '58', '241', '6.3', '3.4', '0', '22.1', '9.5', '2.9', '0.4', '19.2', '6.2', 'Alimentos de origen animal bag'),
(118, 'Pescado blanco fileteado', '35', 'g', '35', '47', '196', '6.7', '2.1', '0', '21', '12.6', '9.1', '0.1', '17.9', '4.4', 'Alimentos de origen animal bag'),
(119, 'Pierna de cordero', '30', 'g', '26', '49', '204', '7.2', '2', '0', '22.7', '0', '2', '0.5', '17.3', '2.7', 'Alimentos de origen animal bag'),
(120, 'Pierna de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(121, 'Queso fresco de cabra', '30', 'g', '30', '52', '218', '7.1', '1.5', '2.6', '7.8', '12', '260.1', '1.7', 'ND', '2.7', 'Alimentos de origen animal bag'),
(122, 'Pierna de puerco', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(123, 'Pierna y muslo de pollo sin piel', '45', 'g', '34', '41', '169', '6.8', '1.3', '0', '27', '6.1', '3.7', '0.3', '29', '4.6', 'Alimentos de origen animal bag'),
(124, 'Queso cottage cremoso', '3', 'cucharada', '54', '56', '234', '6.8', '2.5', '1.5', '7.7', '25.1', '32.8', '0.1', '217.9', '4.9', 'Alimentos de origen animal bag'),
(125, 'Queso fresco de vaca', '40', 'g', '40', '58', '244', '6.1', '2.8', '2', '0', '28', '273.6', '0.1', '0', '3.6', 'Alimentos de origen animal bag'),
(126, 'Pulpa de cerdo', '40', 'g', '40', '56', '234', '7.9', '2.5', '0', '26', '0.4', '2.4', '0.5', '32.8', '11.4', 'Alimentos de origen animal bag'),
(127, 'Pulpa de ternera', '40', 'g', '38', '59', '248', '7.5', '3', '0', '34.2', '0', '4.2', '1.1', '34.2', '5.9', 'Alimentos de origen animal bag'),
(128, 'Queso cheddar bajo en grasa', '30', 'g', '30', '53', '219', '7.4', '2.1', '0.5', '6.4', '19.3', '126.4', '0.1', '186.4', '4.4', 'Alimentos de origen animal bag'),
(129, 'Queso fresco', '40', 'g', '40', '58', '244', '6.1', '2.8', '2', '0', '28', '273.6', '0.1', '0', '3.6', 'Alimentos de origen animal bag'),
(130, 'Pierna de pollo sin piel', '1/3', 'pieza', '38', '45', '188', '7.5', '1.4', '0', '30', '6.8', '4.1', '0.4', '32.3', '5.1', 'Alimentos de origen animal bag'),
(131, 'Pierna de pollo sin piel cocida', '1/4', 'pieza', '26', '47', '198', '6.7', '2.1', '0', '0', '0', '0', '0', '0', '6.8', 'Alimentos de origen animal bag'),
(132, 'Queso panela', '40', 'g', '40', '58', '244', '6.1', '2.8', '2', '0', '28', '273.6', '0.1', '0', '4.8', 'Alimentos de origen animal bag'),
(133, 'Retazo de carnero', '500', 'g', '50', '56', '232', '7.1', '2.8', '0', '32.5', '0', '8.5', '1.1', '37.5', '19', 'Alimentos de origen animal bag'),
(134, 'Rib eye sn grasa', '25', 'g', '25', '56', '235', '7', '2.9', '0', '20', '0', '3.3', '0.6', '17.3', '4.3', 'Alimentos de origen animal bag'),
(135, 'Salmón', '30', 'g', '30', '55', '230', '6', '3.2', '0', '17.6', '4.6', '3.5', '0.1', '17.6', '11', 'Alimentos de origen animal bag'),
(136, 'Salmón cocido', '30', 'g', '30', '55', '230', '6', '3.2', '0', '17.6', '4.6', '3.5', '0.1', '17.6', '17.2', 'Alimentos de origen animal bag'),
(137, 'Salmón fresco', '30', 'g', '30', '55', '230', '6', '3.2', '0', '17.6', '4.6', '3.5', '0.1', '17.6', '13.8', 'Alimentos de origen animal bag'),
(138, 'Sierra ahumada', '30', 'g', '30', '51', '212', '7.3', '2.2', '0', '20.5', '25.8', '25.8', '0.1', '12.7', '4.2', 'Alimentos de origen animal bag'),
(139, 'Shcrt bm', '25', 'g', '25', '54', '224', '7.2', '2.6', '0', '19', '0', '2', '0.6', '17', '5.8', 'Alimentos de origen animal bag'),
(140, 'Sirloin', '25', 'g', '25', '51', '211', '7.6', '2', '0', '22.3', '0', '2.8', '0.8', '16.5', '4.6', 'Alimentos de origen animal bag'),
(141, 'Sustituto de huevo liquido', '4', 'cucharada', '60', '51', '213', '7.1', '2', '0.4', '0', '130.2', '31.9', '1.3', '106', '24.8', 'Alimentos de origen animal bag'),
(142, 'Sustituto de huevo en polvo', '2 1/2', 'cucharada', '13', '56', '232', '6.9', '1.6', '2.7', '71.5', '46.1', '40.8', '0.4', '100', '16', 'Alimentos de origen animal bag'),
(143, 'T-bone sin grasa', '30', 'g', '24', '49', '206', '6.4', '2.4', '0', '14.2', '0', '1.4', '0.8', '17', '5.3', 'Alimentos de origen animal bag'),
(144, 'Ternera', '35', 'g', '35', '55', '228', '6.9', '2.8', '0', '31.5', '0', '3.9', '1.1', '31.5', '5.5', 'Alimentos de origen animal bag'),
(145, 'Ternera en canal', '40', 'g', '38', '59', '248', '7.5', '3', '0', '34.2', '0', '4.2', '1.1', '34.2', '5.9', 'Alimentos de origen animal bag'),
(146, 'Trucha cocida', '30', 'g', '30', '51', '212', '7.3', '2.2', '0', '20.5', '25.8', '25.8', '0.1', '12.7', '4.5', 'Alimentos de origen animal bag'),
(147, 'Trucha ahumada', '30', 'g', '30', '51', '212', '7.3', '2.2', '0', '20.5', '25.8', '25.8', '0.1', '12.7', '4.5', 'Alimentos de origen animal bag'),
(148, 'Trucha', '70', 'g', '32', '54', '226', '5.9', '3.2', '0', '15.5', '0', '3.9', '0.3', '22.5', '4.1', 'Alimentos de origen animal bag'),
(149, 'Trucha fileteada', '35', 'g', '35', '59', '246', '6.4', '3.5', '0', '16.8', '0', '4.2', '0.4', '24.5', '4.4', 'Alimentos de origen animal bag');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_AOABAG`
--
ALTER TABLE `tbl_AOABAG`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_AOABAG`
--
ALTER TABLE `tbl_AOABAG`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
