-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2021 a las 03:25:48
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `nmaterial` bigint(20) UNSIGNED NOT NULL,
  `tipo_material` varchar(50) NOT NULL,
  `tratamiento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`nmaterial`, `tipo_material`, `tratamiento`) VALUES
(2, 'Botellas de vidrio', 'Se deben entregar sanas y sin residuos de líquido en su interior'),
(3, 'Latas de aluminio', 'Se deben entregar secas y aplastadas'),
(4, 'Cajas de cartón', 'Se entregarán desarmadas y limpias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pesaje_materiales`
--

CREATE TABLE `pesaje_materiales` (
  `npesajemateriales` bigint(20) UNSIGNED NOT NULL,
  `id` int(20) DEFAULT NULL,
  `peso` double NOT NULL,
  `material` varchar(200) NOT NULL,
  `rol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_pedido`
--

CREATE TABLE `solicitud_pedido` (
  `nsolicitud` bigint(20) UNSIGNED NOT NULL,
  `nombre_apellido` varchar(150) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `franja_horaria` varchar(150) NOT NULL,
  `volumen_materiales` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud_pedido`
--

INSERT INTO `solicitud_pedido` (`nsolicitud`, `nombre_apellido`, `direccion`, `telefono`, `franja_horaria`, `volumen_materiales`) VALUES
(1, 'Ernesto', 'Sarmiento 1387', '1549847383', '1', '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`nmaterial`),
  ADD UNIQUE KEY `nmaterial` (`nmaterial`);

--
-- Indices de la tabla `pesaje_materiales`
--
ALTER TABLE `pesaje_materiales`
  ADD PRIMARY KEY (`npesajemateriales`),
  ADD UNIQUE KEY `npesajemateriales` (`npesajemateriales`);

--
-- Indices de la tabla `solicitud_pedido`
--
ALTER TABLE `solicitud_pedido`
  ADD PRIMARY KEY (`nsolicitud`),
  ADD UNIQUE KEY `nsolicitud` (`nsolicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `nmaterial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pesaje_materiales`
--
ALTER TABLE `pesaje_materiales`
  MODIFY `npesajemateriales` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_pedido`
--
ALTER TABLE `solicitud_pedido`
  MODIFY `nsolicitud` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
