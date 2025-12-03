-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:16:58
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
-- Estructura de tabla para la tabla `tbl_NutriTokens`
--

CREATE TABLE `tbl_NutriTokens` (
  `id_NutriToken` int(11) NOT NULL,
  `st_Token` varchar(100) NOT NULL,
  `id_NutritionistRelated` int(11) NOT NULL,
  `st_Promo` varchar(50) NOT NULL,
  `st_Percentage` varchar(25) NOT NULL,
  `i_Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_NutriTokens`
--

INSERT INTO `tbl_NutriTokens` (`id_NutriToken`, `st_Token`, `id_NutritionistRelated`, `st_Promo`, `st_Percentage`, `i_Active`) VALUES
(1, '24GH1313', 1, 'Consulta ', '50%', 1),
(2, '30GHHCG', 1, 'Seguimiento', '50%', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
