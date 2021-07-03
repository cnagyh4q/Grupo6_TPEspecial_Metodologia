-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2021 a las 02:49:43
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
-- Estructura de tabla para la tabla `cartoneros`
--

CREATE TABLE `cartoneros` (
  `ncartonero` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `vehiculo` varchar(50) NOT NULL,
  `dni` int(20) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `cartoneros`
--

TRUNCATE TABLE `cartoneros`;
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
-- Truncar tablas antes de insertar `material`
--

TRUNCATE TABLE `material`;
--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`nmaterial`, `tipo_material`, `tratamiento`) VALUES(2, 'Botellas de vidrio', 'Se deben entregar sanas y sin residuos de líquido en su interior');
INSERT INTO `material` (`nmaterial`, `tipo_material`, `tratamiento`) VALUES(3, 'Latas de aluminio', 'Se deben entregar secas y aplastadas');
INSERT INTO `material` (`nmaterial`, `tipo_material`, `tratamiento`) VALUES(4, 'Cajas de cartón', 'Se entregarán desarmadas y limpias');

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
-- Truncar tablas antes de insertar `pesaje_materiales`
--

TRUNCATE TABLE `pesaje_materiales`;
--
-- Volcado de datos para la tabla `pesaje_materiales`
--

INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES(1, 2, 2, '2', '2');
INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES(2, 0, 34, 'vidrio', 'Vecino');
INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES(3, 366421346, 21, 'latas', 'Cartonero');
INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES(4, 0, 90, 'Latas', 'Vecino buena onda');
INSERT INTO `pesaje_materiales` (`npesajemateriales`, `id`, `peso`, `material`, `rol`) VALUES(5, NULL, 90, 'Latas', 'Vecino buena onda');

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
-- Truncar tablas antes de insertar `solicitud_pedido`
--

TRUNCATE TABLE `solicitud_pedido`;
--
-- Volcado de datos para la tabla `solicitud_pedido`
--

INSERT INTO `solicitud_pedido` (`nsolicitud`, `nombre_apellido`, `direccion`, `telefono`, `franja_horaria`, `volumen_materiales`) VALUES(1, 'Ernesto', 'Sarmiento 1387', '1549847383', '9-12 hs', 'Entra en una caja');
INSERT INTO `solicitud_pedido` (`nsolicitud`, `nombre_apellido`, `direccion`, `telefono`, `franja_horaria`, `volumen_materiales`) VALUES(2, 'Monica', 'Maipu 1350', '139834738', '13-17 hs', 'Entra en el baúl de un auto');

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
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nusuario`, `usuario`, `contraseña`) VALUES(1, 'secretaria01', '$2y$10$.9JxeYTVrPK8KbAxjLLdx.qubd9BJMgpDMv6l4ouUqitTyFq5IZQi');
INSERT INTO `usuarios` (`nusuario`, `usuario`, `contraseña`) VALUES(2, 'secretaria02', '$2y$10$.9JxeYTVrPK8KbAxjLLdx.qubd9BJMgpDMv6l4ouUqitTyFq5IZQi');

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
  MODIFY `ncartonero` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `nmaterial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pesaje_materiales`
--
ALTER TABLE `pesaje_materiales`
  MODIFY `npesajemateriales` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
