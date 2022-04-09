-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2022 a las 17:35:01
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `dui` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `email`) VALUES
(1, 'michellx', '$2y$10$gjkUrd4B4HXlneDTN362we.UODwNDIKHHw93tALQRs/yZCuz.89AG', 'michell@gmail.com'),
(2, 'mamonete', '$2y$10$NL9Pg1EpZTYXjABDqN0tIeVfWJKhksr.5DbVyG5Jfz.AgjOEvogBe', 'mamonete@gmail.com'),
(3, 'aidee', '1234', 'aidee@gmail.com'),
(4, 'admin', '$2y$10$b4vE/HyYQ32tGx.9zbyNDeCvVigy/JZg.Oz6aaB.PiEqER95Amscu', 'admin@admin.com'),
(5, 'angelica', '$2y$10$yHETeribXTL85ZRKtIxIYeCbyIYlTTWieUxwEgiXUpBwgqfJb2Bv.', 'angelica@gmail.com'),
(6, 'pruebaX', '$2y$10$o1HK1yck5srKy4htBLjW/.C/ji7l44ZztEUEQhLJ8RgSN.yJxL48O', 'prueba@gmail.com'),
(7, 'jose', '$2y$10$boOJmGeWsbLsfBluzsTGie.chpfwTVLKHgo8pvrQAibRhLjKDpxSu', 'jose@gmailcom'),
(8, 'josselin', '$2y$10$TLKtsDB.kQ0ODh.t.Tr5P.vGaUZYKRfXaB0jfId3TbwOljANbPYHu', 'josselin@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
