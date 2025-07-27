-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2025 a las 21:54:17
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
-- Base de datos: `mi_pagina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `historia` text NOT NULL,
  `motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`id`, `nombre`, `historia`, `motivo`) VALUES
(1, 'CDOBLETA', 'CDobleA, cuyo nombre real es Carlos Alberto Díaz, es un artista urbano colombiano nacido en Medellín, conocido por su estilo versátil que mezcla reguetón, rap, trap y sonidos callejeros con letras que reflejan la vida real y el entorno popular. Desde muy joven, mostró interés por la música, componiendo y grabando sus primeras canciones de manera independiente con recursos limitados, pero con una fuerte convicción artística.\r\n\r\nSu carrera comenzó a tomar fuerza a través de las plataformas digitales y redes sociales, donde logró conectar con un público que valoraba sus letras crudas y auténticas. La perseverancia lo llevó a colaborar con otros talentos emergentes y productores del género urbano en Colombia, destacándose por su autenticidad y su potente presencia en tarima.\r\n\r\nEntre sus temas más reconocidos están “La Presión”, “No Sé”, y otros que giran en torno a temas como el amor, el barrio, la superación y las experiencias cotidianas. Su identidad artística se basa en representar a quienes no tienen voz, siendo un reflejo de la realidad de muchos jóvenes en los sectores populares.\r\n\r\nCDobleA ha logrado consolidar una base sólida de seguidores, no solo por su música, sino también por su cercanía con el público y su constante evolución dentro del género. Es considerado un exponente que, sin grandes disqueras, ha sabido ganarse el respeto en la escena urbana.\r\n\r\n', 'me gusta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
