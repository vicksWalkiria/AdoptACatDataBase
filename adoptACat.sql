-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-01-2020 a las 23:22:28
-- Versión del servidor: 5.7.28-0ubuntu0.18.04.4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adoptACat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `picture_url` varchar(128) NOT NULL,
  `adoption` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cats`
--

INSERT INTO `cats` (`id`, `name`, `picture_url`, `adoption`) VALUES
(1, 'Apolo', 'pictures/apolo.jpg', 0),
(2, 'Jacinto', 'pictures/jacinto.jpg', 0),
(3, 'Zaida', 'pictures/zaida.jpg', 0),
(4, 'Dido', 'pictures/dido.jpg', 0),
(5, 'Eneas', 'pictures/eneas.jpg', 0),
(6, 'Don Giovanni', 'pictures/don_giovanni.jpg', 0),
(7, 'Tristán', 'pictures/tristan.jpg', 0),
(8, 'Isolda', 'pictures/isolda.jpg', 0),
(9, 'Grimgor', 'pictures/grimgor.jpg', 1),
(10, 'Louen Leoncoeur', 'pictures/louen.jpg', 1),
(11, 'Teclis', 'pictures/teclis.jpg', 1),
(12, 'Tehenhauin', 'pictures/tehenhauin.jpg', 1),
(13, 'Alarielle', 'pictures/alarielle.jpg', 1),
(14, 'Karl Franz', 'pictures/karl_franz.jpg', 1),
(15, 'Manfred', 'pictures/manfred.jpg', 1),
(16, 'Malus', 'pictures/malus.jpg', 1),
(17, 'Morathi', 'pictures/morathi.jpg', 1),
(18, 'Sigmar', 'pictures/sigmar.jpg', 1),
(19, 'Valaya', 'pictures/valaya.jpg', 1),
(20, 'Gitilla', 'pictures/gitilla.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `token` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `token`) VALUES
(1, 'victor', 'a1f8bbd098b1ac15b357ea2db8a528f7a266109a03b5fb385685eee7fa45a21e', 'fe79ceffce04e339f3b6aeceb043e050e7967b7019ce326b6da12a109a00546b0c4c9918e02a366782c9f4b932db3f72d6b41b753ea2dbe4462e1cb7de3eb85c'),
(9, 'victor2', 'a1f8bbd098b1ac15b357ea2db8a528f7a266109a03b5fb385685eee7fa45a21e', '27b2a4c86f2b4269be8b2dbc2bf8631bad03f0653d98efa523be5301699c18acd95c95a5ea4256ab853ff7565aa6bbc0cc81f2be76b7704980ff026eddecf44e'),
(10, 'victor5', '1234', NULL),
(11, 'victor3', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '92a36a06d5db6481e1eb347b53b47d97bb8c8da36362001db35afc47fd071b98b4c9b9b461f90f926e3e549526ded8c4ef510f61fd01f2f22d5f44ab800f771c'),
(12, 'victor6', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '1e8c906854ce6861a25dcc013f7e092eed666a5f0bec42bc4d6d44429a37cfc509853d8a4fa84274013ad967b3530947cd19c2f6c2d6c7c27d7c7fd00f09a630');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
