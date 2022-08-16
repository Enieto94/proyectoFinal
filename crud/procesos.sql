-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2022 a las 15:05:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id` int(20) NOT NULL,
  `juzgado` text DEFAULT NULL,
  `radicado` text DEFAULT NULL,
  `tipo_proceso` text DEFAULT NULL,
  `demandante` text DEFAULT NULL,
  `demandado` text DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `encargado` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id`, `juzgado`, `radicado`, `tipo_proceso`, `demandante`, `demandado`, `estado`, `encargado`) VALUES
(13, 'Zipaquiráaaaaeditado', '193013924', '', 'Edwin Nieto', 'Colpensiones', 'EN PROCESO', 'Andrés Carvajal'),
(14, 'Zipaquiráa', '193013924', 'Familia', 'Edwin Nieto', 'Colpensiones', 'EN PROCESO', 'Andrés Carvajal'),
(15, 'Zipaquiráa', '193013924', 'Familia', 'Edwin Nieto', 'Colpensiones', 'EN PROCESOeditado', 'Andrés Carvajal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
