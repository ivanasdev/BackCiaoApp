-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:29:00
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
-- Estructura de tabla para la tabla `tbl_LecheSemiDescremada`
--

CREATE TABLE `tbl_LecheSemiDescremada` (
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
-- Volcado de datos para la tabla `tbl_LecheSemiDescremada`
--

INSERT INTO `tbl_LecheSemiDescremada` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_proteina_g`, `st_lipidos_g`, `st_hidratos_de_carbono_g`, `st_Colesterol_mg`, `st_vitamina_A_Mg_RE`, `st_calcio_mg`, `st_sodio_mg`, `st_categoria`) VALUES
(1, 'Jocoque ligero', '3/4', 'taza', '180', '113', '474', '9.4', '2.9', '12.6', '10.8', '0', '0', '126', 'Leche semidescremada'),
(2, 'Jocoque', '3/4', 'taza', '180', '113', '474', '9.4', '2.9', '12.6', '10.8', '0', '0', '126', 'Leche semidescremada'),
(3, 'Jocoque seco', '3/4', 'taza', '180', '113', '474', '9.4', '2.9', '12.6', '10.8', '0', '0', '126', 'Leche semidescremada'),
(4, 'Leche evaporada semidescremada', '1/2', 'taza', '130', '101', '423', '8.1', '2', '12.2', '20.3', '0', '324', '141.8', 'Leche semidescremada'),
(5, 'Leche Lactium MX', '1', 'taza', '240', '109', '456', '7.2', '4', '11', '21', '330', '264', '100', 'Leche semidescremada'),
(6, 'Leche fácil digestión', '1', 'taza', '240', '109', '457', '7.5', '3.9', '11.2', '0', '144', '248', '120', 'Leche semidescremada'),
(7, 'Leche semidescremada', '1', 'taza', '233', '116', '487', '7.7', '4.4', '11.2', '18.6', '0', '284', '116.4', 'Leche semidescremada'),
(8, 'Leche semidescremada 1%', '1', 'taza', '244', '102', '426', '8', '2.6', '11.7', '10', '144', '300', '123', 'Leche semidescremada'),
(9, 'Leche semidescremada 2 %', '1', 'taza', '234', '116', '486', '7.8', '4.5', '11.2', '17.3', '133.4', '285.1', '117.1', 'Leche semidescremada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_LecheSemiDescremada`
--
ALTER TABLE `tbl_LecheSemiDescremada`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_LecheSemiDescremada`
--
ALTER TABLE `tbl_LecheSemiDescremada`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
