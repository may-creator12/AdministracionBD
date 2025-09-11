-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2025 a las 17:41:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventasabarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artefacto`
--

CREATE TABLE `artefacto` (
  `codArt` char(18) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(19,4) DEFAULT NULL,
  `stock` tinyint(1) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `codFabricante` char(18) DEFAULT NULL,
  `linea` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `nroBoleta` char(18) NOT NULL,
  `fechaEmision` date DEFAULT NULL,
  `Situacion` varchar(100) DEFAULT NULL,
  `Total` decimal(19,4) DEFAULT NULL,
  `nroNP` char(18) DEFAULT NULL,
  `codClie` char(18) DEFAULT NULL,
  `codCliente` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` char(18) NOT NULL,
  `nombreClie` varchar(100) DEFAULT NULL,
  `apellidoClie` varchar(100) DEFAULT NULL,
  `direccionClie` varchar(255) DEFAULT NULL,
  `telefonoClie` char(18) DEFAULT NULL,
  `emailClie` varchar(100) DEFAULT NULL,
  `rucClie` char(11) DEFAULT NULL,
  `dniClie` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleboleta`
--

CREATE TABLE `detalleboleta` (
  `nroBoleta` char(18) NOT NULL,
  `codArt` char(18) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` char(18) DEFAULT NULL,
  `precio` decimal(19,4) DEFAULT NULL,
  `monto` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE `detallefactura` (
  `NroFactura` char(18) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` char(18) DEFAULT NULL,
  `monto` decimal(19,4) DEFAULT NULL,
  `codArt` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallenotaped`
--

CREATE TABLE `detallenotaped` (
  `nroNP` char(18) NOT NULL,
  `codArt` char(18) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` char(18) DEFAULT NULL,
  `precio` decimal(19,4) DEFAULT NULL,
  `monto` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `nombreFabric` varchar(100) DEFAULT NULL,
  `procedencia` varchar(100) DEFAULT NULL,
  `direcionLocal` varchar(255) DEFAULT NULL,
  `telefonoLocal` char(9) DEFAULT NULL,
  `emailFabric` varchar(100) DEFAULT NULL,
  `contacto` char(9) DEFAULT NULL,
  `codFabricante` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `NroFactura` char(18) NOT NULL,
  `FechaEmision` date DEFAULT NULL,
  `Situacion` varchar(100) DEFAULT NULL,
  `Subtotal` decimal(19,4) DEFAULT NULL,
  `IGV` decimal(19,4) DEFAULT NULL,
  `Total` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notapedido`
--

CREATE TABLE `notapedido` (
  `nroNP` char(18) NOT NULL,
  `fechaEmision` date DEFAULT NULL,
  `Situacion` varchar(100) DEFAULT NULL,
  `motivoCancelado` varchar(255) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `codVned` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `codVned` char(18) NOT NULL,
  `nombreVend` varchar(100) DEFAULT NULL,
  `apellidosVend` varchar(100) DEFAULT NULL,
  `direccionVend` varchar(255) DEFAULT NULL,
  `dniVend` char(8) DEFAULT NULL,
  `emailVend` varchar(100) DEFAULT NULL,
  `sueldoVend` decimal(19,4) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artefacto`
--
ALTER TABLE `artefacto`
  ADD PRIMARY KEY (`codArt`),
  ADD KEY `codFabricante` (`codFabricante`);

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`nroBoleta`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Indices de la tabla `detalleboleta`
--
ALTER TABLE `detalleboleta`
  ADD PRIMARY KEY (`nroBoleta`,`codArt`),
  ADD KEY `codArt` (`codArt`);

--
-- Indices de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD PRIMARY KEY (`codArt`,`NroFactura`),
  ADD KEY `NroFactura` (`NroFactura`);

--
-- Indices de la tabla `detallenotaped`
--
ALTER TABLE `detallenotaped`
  ADD PRIMARY KEY (`codArt`,`nroNP`),
  ADD KEY `nroNP` (`nroNP`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`codFabricante`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`NroFactura`);

--
-- Indices de la tabla `notapedido`
--
ALTER TABLE `notapedido`
  ADD PRIMARY KEY (`nroNP`),
  ADD KEY `codVned` (`codVned`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`codVned`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artefacto`
--
ALTER TABLE `artefacto`
  ADD CONSTRAINT `artefacto_ibfk_1` FOREIGN KEY (`codFabricante`) REFERENCES `fabricante` (`codFabricante`);

--
-- Filtros para la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD CONSTRAINT `boleta_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);

--
-- Filtros para la tabla `detalleboleta`
--
ALTER TABLE `detalleboleta`
  ADD CONSTRAINT `detalleboleta_ibfk_1` FOREIGN KEY (`nroBoleta`) REFERENCES `boleta` (`nroBoleta`),
  ADD CONSTRAINT `detalleboleta_ibfk_2` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`);

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`),
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`NroFactura`) REFERENCES `factura` (`NroFactura`);

--
-- Filtros para la tabla `detallenotaped`
--
ALTER TABLE `detallenotaped`
  ADD CONSTRAINT `detallenotaped_ibfk_1` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`),
  ADD CONSTRAINT `detallenotaped_ibfk_2` FOREIGN KEY (`nroNP`) REFERENCES `notapedido` (`nroNP`);

--
-- Filtros para la tabla `notapedido`
--
ALTER TABLE `notapedido`
  ADD CONSTRAINT `notapedido_ibfk_1` FOREIGN KEY (`codVned`) REFERENCES `vendedor` (`codVned`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
