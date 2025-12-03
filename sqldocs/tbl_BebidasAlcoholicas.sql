-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2024 a las 20:27:12
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
-- Estructura de tabla para la tabla `tbl_BebidasAlcoholicas`
--

CREATE TABLE `tbl_BebidasAlcoholicas` (
  `id_Alimento` int(11) NOT NULL,
  `st_Alimento` varchar(70) DEFAULT NULL,
  `st_cantidad_sugerida` varchar(70) DEFAULT NULL,
  `st_unidad` varchar(70) DEFAULT NULL,
  `st_peso_neto_g` varchar(70) DEFAULT NULL,
  `st_energia_kcal` varchar(70) DEFAULT NULL,
  `st_energia_kj` varchar(70) DEFAULT NULL,
  `st_hidratos_de_carbono_g` varchar(70) DEFAULT NULL,
  `st_etanol_g` varchar(70) DEFAULT NULL,
  `st_categoria` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_BebidasAlcoholicas`
--

INSERT INTO `tbl_BebidasAlcoholicas` (`id_Alimento`, `st_Alimento`, `st_cantidad_sugerida`, `st_unidad`, `st_peso_neto_g`, `st_energia_kcal`, `st_energia_kj`, `st_hidratos_de_carbono_g`, `st_etanol_g`, `st_categoria`) VALUES
(1, 'Anís dulce o seco', '55', 'ml', '55', '147', '614', '1', '20.6', 'Bebidas alcoholicas'),
(2, 'Aguardiente', '50', 'ml', '50', '140', '585', '0', '20', 'Bebidas alcoholicas'),
(3, 'Licor 94° proof', '50', 'ml', '50', '138', '575', '2', '19.9', 'Bebidas alcoholicas'),
(4, 'Brandy', '60', 'ml', '60', '139', '579', '0', '20', 'Bebidas alcoholicas'),
(5, 'Champaña', '1', 'copa', '150', '101', '424', '2', '13.1', 'Bebidas alcoholicas'),
(6, 'Licor 86° proof', '55', 'ml', '55', '138', '575', '2', '19.8', 'Bebidas alcoholicas'),
(7, 'Licor 80° proof', '60', 'ml', '60', '139', '579', '2', '20', 'Bebidas alcoholicas'),
(8, 'Licor de almendras', '60', 'ml', '60', '134', '562', '21', '7.2', 'Bebidas alcoholicas'),
(9, 'Coñac', '60', 'ml', '60', '144', '602', '1', '19.9', 'Bebidas alcoholicas'),
(10, 'Licor de café', '45', 'ml', '45', '147', '613', '21', '9.8', 'Bebidas alcoholicas'),
(11, 'Licor de café con crema', '45', 'ml', '45', '147', '616', '9', '15.9', 'Bebidas alcoholicas'),
(12, 'Crema de menta', '40', 'ml', '40', '148', '620', '17', '11.9', 'Bebidas alcoholicas'),
(13, 'Licor de naranja', '65', 'ml', '65', '146', '609', '23', '7.8', 'Bebidas alcoholicas'),
(14, 'Licor de café con whiskey', '45', 'ml', '45', '147', '616', '9', '15.9', 'Bebidas alcoholicas'),
(15, 'Oporto', '90', 'ml', '90', '145', '606', '12', '14', 'Bebidas alcoholicas'),
(16, 'Licor 90° proof', '55', 'ml', '55', '145', '605', '2', '20.8', 'Bebidas alcoholicas'),
(17, 'Ron blanco o añejo', '60', 'ml', '60', '139', '579', '0', '20', 'Bebidas alcoholicas'),
(18, 'Pulque', '1', 'tarro', '330', '155', '648', '20', '9.9', 'Bebidas alcoholicas'),
(19, 'Cerveza light', '1 1/2', 'tarro o lata', '531', '154', '644', '9', '16.5', 'Bebidas alcoholicas'),
(20, 'Ginebra ', '55', 'ml', '55', '145', '605', '0', '20.8', 'Bebidas alcoholicas'),
(21, 'Tequila', '55', 'ml', '55', '146', '612', '0', '20.9', 'Bebidas alcoholicas'),
(22, 'Sidra', '2', 'copa', '300', '150', '626', '18', '11.1', 'Bebidas alcoholicas'),
(23, 'Rompope', '60', 'ml', '60', '141', '589', '14', '10', 'Bebidas alcoholicas'),
(24, 'Vermouth seco', '60', 'ml', '60', '134', '559', '0', '18.6', 'Bebidas alcoholicas'),
(25, 'Vino (12.2% alcohol)', '1', 'copa', '100', '137', '573', '8', '12.2', 'Bebidas alcoholicas'),
(26, 'Vino blanco dulce', '1', 'copa', '100', '160', '669', '14', '15.3', 'Bebidas alcoholicas'),
(27, 'Vino blanco seco', '2', 'copa', '200', '164', '686', '5', '20.6', 'Bebidas alcoholicas'),
(28, 'Vino de mesa', '2', 'copa', '200', '166', '694', '5', '20.8', 'Bebidas alcoholicas'),
(29, 'Vino de manzana', '1', 'copa', '150', '191', '796', '15', '18.5', 'Bebidas alcoholicas'),
(30, 'Vino espumoso', '1', 'copa', '150', '101', '424', '2', '13.1', 'Bebidas alcoholicas'),
(31, 'Vino tinto', '2', 'copa', '200', '170', '711', '5', '21.2', 'Bebidas alcoholicas'),
(32, 'Licor 100° proof', '50', 'ml', '50', '148', '617', '2', '21.3', 'Bebidas alcoholicas'),
(33, 'Vino rosado', '2', 'copa', '200', '134', '559', '3', '17.4', 'Bebidas alcoholicas'),
(34, 'Vodka', '60', 'ml', '60', '139', '579', '0', '19.8', 'Bebidas alcoholicas'),
(35, 'Cerveza', '1', 'tarro o lata', '356', '153', '640', '13', '13.9', 'Bebidas alcoholicas'),
(36, 'Whisky', '55', 'ml', '55', '138', '575', '0', '19.8', 'Bebidas alcoholicas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_BebidasAlcoholicas`
--
ALTER TABLE `tbl_BebidasAlcoholicas`
  ADD PRIMARY KEY (`id_Alimento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_BebidasAlcoholicas`
--
ALTER TABLE `tbl_BebidasAlcoholicas`
  MODIFY `id_Alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
