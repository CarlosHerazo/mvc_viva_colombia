-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2023 a las 06:58:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vivacolombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Fecha_Consulta` date NOT NULL,
  `Fecha_Salida` date NOT NULL,
  `Salida` varchar(60) NOT NULL,
  `Destino` varchar(60) NOT NULL,
  `Hora_Salida` time NOT NULL,
  `Hora_Llegada` time NOT NULL,
  `Puesto` varchar(60) NOT NULL,
  `Clase` int(11) NOT NULL,
  `Fecha_Llegada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`Cedula`, `Nombre`, `Apellido`, `Fecha_Consulta`, `Fecha_Salida`, `Salida`, `Destino`, `Hora_Salida`, `Hora_Llegada`, `Puesto`, `Clase`, `Fecha_Llegada`) VALUES
(64519308, 'Luis Eduardo', 'Roca Lara', '2023-10-06', '2023-10-09', 'Medellin', 'España', '10:30:00', '03:15:00', 'C10', 1, '2023-10-09'),
(1101445764, 'Carlos Alberto ', 'Herazo Paternina', '2023-10-03', '2023-10-06', 'Bogota', 'Miami', '10:00:00', '03:40:00', 'B15', 2, '2023-10-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`Cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
