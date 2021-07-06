-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-07-2021 a las 05:43:08
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `cartoneros`
--

CREATE TABLE `cartoneros` (
  `ncartonero` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `vehiculo` varchar(50) NOT NULL,
  `dni` int(20) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `telefono` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cartoneros`
--

INSERT INTO `cartoneros` (`ncartonero`, `nombre`, `vehiculo`, `dni`, `direccion`, `nacimiento`, `telefono`) VALUES
(1, 'Agustin', 'Bicicleta', 1860206, 'Paraguay 85', '1985-09-08', ''),
(2, 'Pablo', 'Camioneta', 12731823, '4 de abril 839', '1984-01-07', '23424323'),
(4, 'Patricio', 'camion', 232342342, 'Sargento Cabral 450', '1987-09-17', '');

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

--
-- Volcado de datos para la tabla `pesaje_materiales`
--

INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES
(1, 1860206, 34, '4 ', 'Cartonero'),
(2, 12731823, 87, '3 ', 'Cartonero'),
(3, 1860206, 65, '3 ', 'Cartonero');

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
(1, 'Ernesto', 'Sarmiento 1387', '1549847383', '9-12 hs', 'Entra en una caja'),
(2, 'Monica', 'Maipu 1350', '139834738', '13-17 hs', 'Entra en el baúl de un auto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nusuario` bigint(20) UNSIGNED NOT NULL,
  `usuario` varchar(120) NOT NULL,
  `contraseña` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nusuario`, `usuario`, `contraseña`) VALUES
(1, 'secretaria01', '$2y$10$.9JxeYTVrPK8KbAxjLLdx.qubd9BJMgpDMv6l4ouUqitTyFq5IZQi'),
(2, 'secretaria02', '$2y$10$.9JxeYTVrPK8KbAxjLLdx.qubd9BJMgpDMv6l4ouUqitTyFq5IZQi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartoneros`
--
ALTER TABLE `cartoneros`
  ADD PRIMARY KEY (`ncartonero`),
  ADD UNIQUE KEY `ncartonero` (`ncartonero`);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nusuario`),
  ADD UNIQUE KEY `nusuario` (`nusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartoneros`
--
ALTER TABLE `cartoneros`
  MODIFY `ncartonero` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `nmaterial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pesaje_materiales`
--
ALTER TABLE `pesaje_materiales`
  MODIFY `npesajemateriales` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud_pedido`
--
ALTER TABLE `solicitud_pedido`
  MODIFY `nsolicitud` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `nusuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;