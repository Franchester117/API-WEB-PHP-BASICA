-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2021 a las 19:57:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contacts_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `tel`) VALUES
(1, 'Azula', 'example@example.com', '3222838392'),
(2, 'Antonio', 'example@example.com', '3222838392'),
(3, 'Yeison', 'example@example.com', '3222838392'),
(4, 'Jader', 'example@example.com', '3222838392'),
(5, 'Cristian', 'example@example.com', '3222838392'),
(6, 'Andrea', 'example@example.com', '3222838392'),
(7, 'Melissa', 'example@example.com', '3222838392'),
(8, 'Anderson', 'example@example.com', '3222838392'),
(9, 'Maicol', 'example@example.com', '3222838392'),
(10, 'Morgiana', 'example@example.com', '3222838392'),
(11, 'Sebas', 'example@example.com', '3222838392'),
(12, 'Narlys', 'example@example.com', '3222838392'),
(13, 'Angie', 'example@example.com', '3222838392'),
(14, 'Lara', 'example@example.com', '3222838392'),
(15, 'Ars', 'example@example.com', '3222838392'),
(16, 'Frank Camilo', 'example@example.com', '3222927493'),
(17, 'Carmen', 'example@example.com', '3222927493'),
(18, 'Ariana', 'example@example.com', '3222927493'),
(19, 'Azula', 'example@example.com', '3222927493');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
