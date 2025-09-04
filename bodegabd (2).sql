-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 19:03:41
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
-- Base de datos: `bodegabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Juan Pérez', 'Av. Siempre Viva 123', '987654321'),
(2, 'María López', 'Jr. Los Olivos 456', '912345678'),
(3, 'Carlos García', 'Calle Las Flores 789', '934567890'),
(4, 'Ana Torres', 'Av. Primavera 321', '945612378'),
(5, 'Luis Sánchez', 'Jr. Los Pinos 654', '956789123'),
(6, 'Rosa Díaz', 'Av. Universitaria 987', '967890123'),
(7, 'Pedro Ramírez', 'Calle Central 147', '978901234'),
(8, 'Lucía Gómez', 'Av. Los Próceres 258', '989012345'),
(9, 'Miguel Herrera', 'Jr. San Martín 369', '990123456'),
(10, 'Carmen Flores', 'Calle Libertad 741', '901234567'),
(11, 'Andrés Castillo', 'Av. Grau 101', '987111222'),
(12, 'Verónica Medina', 'Calle Perú 202', '987222333'),
(13, 'Sergio Vargas', 'Jr. Cusco 303', '987333444'),
(14, 'Patricia Ramos', 'Av. Arequipa 404', '987444555'),
(15, 'Hugo Peña', 'Calle Lima 505', '987555666'),
(16, 'Elena Morales', 'Jr. Tacna 606', '987666777'),
(17, 'Ricardo Núñez', 'Av. Puno 707', '987777888'),
(18, 'Marta Cabrera', 'Calle Ica 808', '987888999'),
(19, 'Jorge Silva', 'Jr. Moquegua 909', '987999000'),
(20, 'Claudia Rojas', 'Av. Junín 100', '988000111'),
(21, 'Fernando Castro', 'Calle Ayacucho 200', '988111222'),
(22, 'Gabriela Ortiz', 'Jr. Apurímac 300', '988222333'),
(23, 'Diego Salas', 'Av. Amazonas 400', '988333444'),
(24, 'Lorena Chávez', 'Calle Madre de Dios 500', '988444555'),
(25, 'Raúl Campos', 'Jr. Ucayali 600', '988555666'),
(26, 'Silvia Delgado', 'Av. Loreto 700', '988666777'),
(27, 'Martín Aguilar', 'Calle San Juan 800', '988777888'),
(28, 'Natalia Torres', 'Jr. Santa Rosa 900', '988888999'),
(29, 'Oscar Fuentes', 'Av. Piura 110', '988999000'),
(30, 'Paola Paredes', 'Calle Cajamarca 120', '989000111'),
(31, 'Cristian Lozano', 'Jr. Huancayo 130', '989111222'),
(32, 'Alejandra Vega', 'Av. Pasco 140', '989222333'),
(33, 'Esteban Romero', 'Calle Junín 150', '989333444'),
(34, 'Vanessa Cruz', 'Jr. Callao 160', '989444555'),
(35, 'Héctor Bravo', 'Av. Lambayeque 170', '989555666'),
(36, 'Liliana Campos', 'Calle Amazonas 180', '989666777'),
(37, 'Mauricio Ponce', 'Jr. Cañete 190', '989777888'),
(38, 'Daniela Flores', 'Av. Ancash 200', '989888999'),
(39, 'Fabián Navarro', 'Calle Pisco 210', '989999000'),
(40, 'Carolina Peña', 'Jr. Huaral 220', '990000111'),
(41, 'Rodrigo Guerra', 'Av. Huánuco 230', '990111222'),
(42, 'Valeria Méndez', 'Calle Junín 240', '990222333'),
(43, 'Ignacio León', 'Jr. Abancay 250', '990333444'),
(44, 'Patricia Soto', 'Av. Sullana 260', '990444555'),
(45, 'Julián Córdova', 'Calle Ilo 270', '990555666'),
(46, 'Teresa Flores', 'Jr. Tarapoto 280', '990666777'),
(47, 'Álvaro Quispe', 'Av. Juliaca 290', '990777888'),
(48, 'Mónica Herrera', 'Calle Talara 300', '990888999'),
(49, 'Bruno Serrano', 'Jr. Ayabaca 310', '990999000'),
(50, 'Diana Ruiz', 'Av. Chiclayo 320', '991000111'),
(51, 'Santiago Prieto', 'Calle Chimbote 330', '991111222'),
(52, 'Camila Fernández', 'Jr. Huacho 340', '991222333'),
(53, 'Emilio Vargas', 'Av. Pucallpa 350', '991333444'),
(54, 'Lucero Montes', 'Calle Tumbes 360', '991444555'),
(55, 'Matías Salgado', 'Jr. Piura 370', '991555666'),
(56, 'Andrea Ramírez', 'Av. Trujillo 380', '991666777'),
(57, 'Nicolás Torres', 'Calle Arequipa 390', '991777888'),
(58, 'Sofía Guzmán', 'Jr. Cusco 400', '991888999'),
(59, 'Gonzalo Peña', 'Av. Puno 410', '991999000'),
(60, 'Marisol Chávez', 'Calle Lima 420', '992000111'),
(61, 'Francisco Jiménez', 'Jr. Iquitos 430', '992111222'),
(62, 'Isabella Castillo', 'Av. Tumbes 440', '992222333'),
(63, 'Javier Cárdenas', 'Calle Tacna 450', '992333444'),
(64, 'Renata Moreno', 'Jr. Moquegua 460', '992444555'),
(65, 'Felipe Huamán', 'Av. Loreto 470', '992555666'),
(66, 'Daniela Reyes', 'Calle Huancayo 480', '992666777'),
(67, 'Tomás Delgado', 'Jr. Madre de Dios 490', '992777888'),
(68, 'Mariana Campos', 'Av. Pasco 500', '992888999'),
(69, 'Pablo Salinas', 'Calle Apurímac 510', '992999000'),
(70, 'Fiorella Ríos', 'Jr. Amazonas 520', '993000111'),
(71, 'Hernán Palacios', 'Av. Arequipa 530', '993111222'),
(72, 'Julieta Vargas', 'Calle Cusco 540', '993222333'),
(73, 'Sebastián Molina', 'Jr. Lima 550', '993333444'),
(74, 'Ángela Torres', 'Av. Cajamarca 560', '993444555'),
(75, 'Cristóbal Herrera', 'Calle Junín 570', '993555666'),
(76, 'Yesenia Castro', 'Jr. Loreto 580', '993666777'),
(77, 'Ramiro Gutiérrez', 'Av. Ucayali 590', '993777888'),
(78, 'Pamela Chávez', 'Calle Amazonas 600', '993888999'),
(79, 'Emanuel Salazar', 'Jr. Madre de Dios 610', '993999000'),
(80, 'Melanie Paredes', 'Av. Ayacucho 620', '994000111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `IdDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`IdDetalles`, `idFactura`, `idProductos`, `Cantidad`, `Total`) VALUES
(1, 1, 1, 2, 240.00),
(2, 2, 2, 1, 89.90),
(3, 3, 3, 3, 750.00),
(4, 4, 4, 1, 45.75),
(5, 5, 5, 2, 620.40),
(6, 6, 6, 4, 600.00),
(7, 7, 7, 2, 159.98),
(8, 8, 8, 1, 200.00),
(9, 9, 9, 5, 2253.00),
(10, 10, 10, 1, 99.50),
(11, 11, 11, 2, 421.50),
(12, 12, 12, 3, 540.00),
(13, 13, 13, 1, 75.25),
(14, 14, 14, 4, 2403.60),
(15, 15, 15, 2, 650.80),
(16, 16, 16, 1, 50.00),
(17, 17, 17, 5, 2200.50),
(18, 18, 18, 2, 240.00),
(19, 19, 19, 3, 931.50),
(20, 20, 20, 1, 90.00),
(21, 1, 2, 4, 840.00),
(22, 2, 3, 2, 1000.00),
(23, 3, 4, 1, 130.75),
(24, 4, 5, 3, 660.00),
(25, 5, 6, 1, 65.50),
(26, 6, 7, 5, 499.95),
(27, 7, 8, 3, 435.00),
(28, 8, 9, 2, 800.50),
(29, 9, 10, 1, 185.60),
(30, 10, 11, 4, 1199.96),
(31, 11, 12, 1, 125.00),
(32, 12, 13, 2, 701.50),
(33, 13, 14, 3, 631.20),
(34, 14, 15, 1, 79.99),
(35, 15, 16, 4, 1800.00),
(36, 16, 17, 2, 1040.20),
(37, 17, 18, 1, 85.50),
(38, 18, 19, 5, 1500.00),
(39, 19, 20, 2, 421.98),
(40, 20, 1, 1, 65.25),
(41, 1, 3, 3, 345.00),
(42, 2, 4, 1, 230.40),
(43, 3, 5, 4, 703.60),
(44, 4, 6, 2, 920.00),
(45, 5, 7, 1, 95.00),
(46, 6, 8, 3, 421.80),
(47, 7, 9, 2, 780.00),
(48, 8, 10, 1, 270.75),
(49, 9, 11, 5, 2552.50),
(50, 10, 12, 2, 250.50),
(51, 11, 13, 4, 1260.00),
(52, 12, 14, 1, 145.80),
(53, 13, 15, 2, 500.00),
(54, 14, 16, 3, 1199.97),
(55, 15, 17, 1, 185.20),
(56, 16, 18, 5, 375.00),
(57, 17, 19, 4, 2401.60),
(58, 18, 20, 2, 430.60),
(59, 19, 1, 3, 541.50),
(60, 20, 2, 1, 95.99),
(61, 1, 4, 2, 310.00),
(62, 2, 5, 1, 200.00),
(63, 3, 6, 3, 946.50),
(64, 4, 7, 2, 161.50),
(65, 5, 8, 5, 2104.50),
(66, 6, 9, 1, 240.00),
(67, 7, 10, 4, 700.40),
(68, 8, 11, 3, 1562.25),
(69, 9, 12, 2, 600.00),
(70, 10, 13, 1, 110.00),
(71, 11, 14, 2, 291.60),
(72, 12, 15, 1, 180.75),
(73, 13, 16, 3, 375.00),
(74, 14, 17, 2, 480.40),
(75, 15, 18, 1, 210.20),
(76, 16, 19, 4, 342.00),
(77, 17, 20, 2, 1200.80),
(78, 18, 1, 3, 645.00),
(79, 19, 2, 1, 180.50),
(80, 20, 3, 2, 261.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `IdCliente`, `Fecha`, `Total`) VALUES
(1, 1, '2025-01-05', 121),
(2, 2, '2025-01-06', 90),
(3, 3, '2025-01-07', 250),
(4, 4, '2025-01-08', 46),
(5, 5, '2025-01-09', 310),
(6, 6, '2025-01-10', 150),
(7, 7, '2025-01-11', 80),
(8, 8, '2025-01-12', 200),
(9, 9, '2025-01-13', 451),
(10, 10, '2025-01-14', 100),
(11, 11, '2025-01-15', 211),
(12, 12, '2025-01-16', 180),
(13, 13, '2025-01-17', 75),
(14, 14, '2025-01-18', 601),
(15, 15, '2025-01-19', 325),
(16, 16, '2025-01-20', 50),
(17, 17, '2025-01-21', 440),
(18, 18, '2025-01-22', 120),
(19, 19, '2025-01-23', 311),
(20, 20, '2025-01-24', 90),
(21, 1, '2025-02-01', 210),
(22, 2, '2025-02-02', 500),
(23, 3, '2025-02-03', 131),
(24, 4, '2025-02-04', 220),
(25, 5, '2025-02-05', 66),
(26, 6, '2025-02-06', 100),
(27, 7, '2025-02-07', 145),
(28, 8, '2025-02-08', 400),
(29, 9, '2025-02-09', 186),
(30, 10, '2025-02-10', 300),
(31, 11, '2025-02-11', 125),
(32, 12, '2025-02-12', 351),
(33, 13, '2025-02-13', 210),
(34, 14, '2025-02-14', 80),
(35, 15, '2025-02-15', 450),
(36, 16, '2025-02-16', 520),
(37, 17, '2025-02-17', 86),
(38, 18, '2025-02-18', 300),
(39, 19, '2025-02-19', 211),
(40, 20, '2025-02-20', 65),
(41, 1, '2025-03-01', 115),
(42, 2, '2025-03-02', 230),
(43, 3, '2025-03-03', 176),
(44, 4, '2025-03-04', 460),
(45, 5, '2025-03-05', 95),
(46, 6, '2025-03-06', 141),
(47, 7, '2025-03-07', 390),
(48, 8, '2025-03-08', 271),
(49, 9, '2025-03-09', 511),
(50, 10, '2025-03-10', 125),
(51, 11, '2025-03-11', 315),
(52, 12, '2025-03-12', 146),
(53, 13, '2025-03-13', 250),
(54, 14, '2025-03-14', 400),
(55, 15, '2025-03-15', 185),
(56, 16, '2025-03-16', 75),
(57, 17, '2025-03-17', 600),
(58, 18, '2025-03-18', 215),
(59, 19, '2025-03-19', 181),
(60, 20, '2025-03-20', 96),
(61, 1, '2025-04-01', 155),
(62, 2, '2025-04-02', 200),
(63, 3, '2025-04-03', 316),
(64, 4, '2025-04-04', 81),
(65, 5, '2025-04-05', 421),
(66, 6, '2025-04-06', 240),
(67, 7, '2025-04-07', 175),
(68, 8, '2025-04-08', 521),
(69, 9, '2025-04-09', 300),
(70, 10, '2025-04-10', 110),
(71, 11, '2025-04-11', 216),
(72, 12, '2025-04-12', 450),
(73, 13, '2025-04-13', 96),
(74, 14, '2025-04-14', 181),
(75, 15, '2025-04-15', 325),
(76, 16, '2025-04-16', 500),
(77, 17, '2025-04-17', 140),
(78, 18, '2025-04-18', 221),
(79, 19, '2025-04-19', 75),
(80, 20, '2025-04-20', 611);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `PrecioVenta`, `Nombre`) VALUES
(1, 0.00, '[value-3]'),
(2, 0.00, '[value-3]'),
(3, 15.50, 'Arroz 1kg'),
(4, 22.00, 'Frijol Negro 1kg'),
(5, 18.75, 'Aceite Vegetal 1L'),
(6, 30.00, 'Azúcar 1kg'),
(7, 12.00, 'Sal yodada 500g'),
(8, 9.90, 'Sopa de Pasta 200g'),
(9, 35.00, 'Harina de Trigo 1kg'),
(10, 25.00, 'Leche Entera 1L'),
(11, 27.50, 'Café Molido 250g'),
(12, 10.00, 'Gelatina en Polvo'),
(13, 55.00, 'Atún en Lata 140g'),
(14, 65.00, 'Sardinas en Tomate'),
(15, 45.00, 'Mayonesa 390g'),
(16, 48.00, 'Catsup 350g'),
(17, 20.00, 'Vinagre Blanco 500ml'),
(18, 70.00, 'Detergente en Polvo 1kg'),
(19, 60.00, 'Jabón de Barra'),
(20, 32.00, 'Papel Higiénico 4pzas'),
(21, 40.00, 'Shampoo 750ml'),
(22, 75.00, 'Desodorante en Aerosol'),
(23, 29.00, 'Crema para Café'),
(24, 58.00, 'Pan de Caja 500g'),
(25, 36.00, 'Tortillas 1kg'),
(26, 44.00, 'Mermelada de Fresa'),
(27, 38.00, 'Mantequilla 250g'),
(28, 42.00, 'Yogurt Natural 1L'),
(29, 19.00, 'Chiles Enlatados'),
(30, 52.00, 'Purê de Tomate'),
(31, 33.00, 'Cereal de Maíz'),
(32, 47.00, 'Galletas Marías'),
(33, 49.00, 'Galletas de Chocolate'),
(34, 34.00, 'Agua Embotellada 1.5L'),
(35, 55.00, 'Refresco 2L'),
(36, 61.00, 'Jugo de Naranja 1L'),
(37, 14.00, 'Maicena'),
(38, 20.00, 'Avena en Hojuelas'),
(39, 26.00, 'Cocoa en Polvo'),
(40, 66.00, 'Queso Panela 250g'),
(41, 77.00, 'Jamón de Pavo 250g'),
(42, 80.00, 'Salchichas 500g'),
(43, 23.00, 'Salsa Picante'),
(44, 67.00, 'Chips de Papa'),
(45, 21.00, 'Galletas Saladas'),
(46, 16.00, 'Pan Molido'),
(47, 11.00, 'Cubitos de Caldo'),
(48, 62.00, 'Sazonador en Polvo'),
(49, 39.00, 'Mostaza 250g'),
(50, 50.00, 'Cajeta 500g'),
(51, 17.00, 'Chocolate en Polvo'),
(52, 28.00, 'Café Instantáneo'),
(53, 35.00, 'Te en Sobres'),
(54, 19.50, 'Cereal Infantil'),
(55, 72.00, 'Leche Evaporada'),
(56, 73.00, 'Leche Condensada'),
(57, 13.00, 'Polvo para Gelatina'),
(58, 59.00, 'Mole en Pasta'),
(59, 41.00, 'Crema Ácida 250g'),
(60, 24.00, 'Flan Instantáneo'),
(61, 30.00, 'Consomé de Pollo'),
(62, 43.00, 'Puré de Papa Instantáneo'),
(63, 37.00, 'Té Verde'),
(64, 46.00, 'Granola 300g'),
(65, 31.00, 'Chocomilk 400g'),
(66, 68.00, 'Galletas Integrales'),
(67, 22.50, 'Barritas de Fruta'),
(68, 53.00, 'Arroz Instantáneo'),
(69, 12.50, 'Puré de Manzana'),
(70, 54.00, 'Sopa Instantánea'),
(71, 26.50, 'Bebida de Soya'),
(72, 76.00, 'Cereal de Avena'),
(73, 64.00, 'Churros Empacados'),
(74, 63.00, 'Caramelos Surtidos'),
(75, 57.00, 'Palomitas para Microondas'),
(76, 51.00, 'Agua Mineral'),
(77, 69.00, 'Refresco en Lata'),
(78, 71.00, 'Agua de Coco'),
(79, 70.50, 'Salsa de Soya'),
(80, 74.00, 'Vinagre de Manzana'),
(81, 65.50, 'Mermelada de Durazno'),
(82, 60.50, 'Salsa Inglesa'),
(83, 66.50, 'Mostaza Dijon'),
(84, 45.50, 'Manteca Vegetal'),
(85, 56.00, 'Cajeta Quemada'),
(86, 61.50, 'Jarabe de Maple'),
(87, 0.00, '[value-3]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`IdDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `IdCliente` (`IdCliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `IdDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
