-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2024 a las 21:25:45
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(44) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`) VALUES
(1, 'Richard', 'Sucuy', 'richarsucuycriz@gmail.com', '0983965255', 'Machala libre'),
(2, 'Karla', 'Aguilar', 'karlaaguilar@gmail.com', '0982737670', 'Puerto Bolivar'),
(3, 'Esteban', 'Rodriguez', 'estebanrodriguez@gmail.com', '0974652343', 'Parque Colon'),
(5, 'Jeremy', 'Prieto', 'jeremyprieto@gmail.com', '0921932101', 'Santa Rosa'),
(39, 'Hiter', 'Moreira', 'hitermoreira@gmail.com', '0987645321', 'Pasajecito'),
(40, 'ssssss', NULL, NULL, NULL, NULL),
(41, NULL, NULL, 'aasss', NULL, NULL),
(42, 'aaaa', NULL, NULL, NULL, NULL),
(43, 'Paquito', 'Zambrano', 'paquitozambrano@gmail.com', '0986787654', 'Parque Nuevo Pilo '),
(44, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(44) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `salary`) VALUES
(1, 'Jeremy', 'Prieto', 'jeremyprieto@gmail.com', '0921932101', 'Santa Rosa', 2433),
(2, 'Oscar', 'Cuenca', 'oscarcuenca@gmail.com', '0982994311', 'Parque Central', 890.25),
(3, 'Jose', 'Alvarez', 'ralvarez@gmail.com', '098920902', 'Puerto Hualtaco', 2343.22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(44) COLLATE utf8mb3_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `web`, `contact`) VALUES
(19, 'Juanito Alcachofas', 'juanito@gmail.com', '0987452543', 'Parque Zoila Ugarte', 'juanito.alcachofas.co/index.html', 'youtube managment studio universal'),
(23, 'Luis Montero', 'luismontero@gmail.com', '0989676233', 'El cambio', 'luis.montero.com/index/dev', 'google company enterprise');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
