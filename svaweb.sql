-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2023 a las 00:14:21
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `svaweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `cargo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `cargo`) VALUES
(1, 'Admin'),
(2, 'Repartidor'),
(3, 'Administración'),
(4, 'Vendedor'),
(5, 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cc_pagos`
--

CREATE TABLE `cc_pagos` (
  `id_pago` int(11) NOT NULL,
  `id_cc` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `efectivo` float NOT NULL,
  `transferencia` float NOT NULL,
  `cobrador` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cc_pagos`
--

INSERT INTO `cc_pagos` (`id_pago`, `id_cc`, `codcliente`, `fecha`, `efectivo`, `transferencia`, `cobrador`) VALUES
(747, 486, 0, '2023-04-19', 0, 0, 'admin'),
(748, 487, 0, '2023-04-19', 5730, 0, 'admin'),
(749, 488, 0, '2023-04-19', 0, 0, 'admin'),
(750, 489, 0, '2023-04-19', 2600, 0, 'admin'),
(751, 490, 0, '2023-04-19', 14600, 0, 'admin'),
(752, 491, 0, '2023-04-19', 3000, 0, 'admin'),
(753, 492, 0, '2023-04-19', 5000, 0, 'admin'),
(754, 493, 0, '2023-04-19', 0, 0, 'admin'),
(755, 494, 0, '2023-04-19', 9000, 0, 'admin'),
(756, 495, 0, '2023-04-19', 4000, 0, 'admin'),
(757, 496, 0, '2023-04-19', 3150, 0, 'admin'),
(758, 497, 0, '2023-04-19', 20000, 0, 'admin'),
(759, 498, 0, '2023-04-19', 0, 0, 'admin'),
(760, 499, 0, '2023-04-19', 0, 0, 'admin'),
(761, 500, 0, '2023-04-19', 5635, 0, 'admin'),
(762, 501, 0, '2023-04-19', 2000, 0, 'admin'),
(763, 502, 0, '2023-04-19', 0, 0, 'admin'),
(764, 503, 0, '2023-04-19', 1500, 0, 'admin'),
(765, 504, 0, '2023-04-19', 0, 0, 'admin'),
(766, 505, 0, '2023-04-19', 0, 0, 'admin'),
(767, 506, 0, '2023-04-19', 0, 0, 'admin'),
(768, 507, 0, '2023-04-19', 0, 0, 'admin'),
(769, 508, 0, '2023-04-19', 5400, 0, 'admin'),
(770, 509, 0, '2023-04-19', 0, 0, 'admin'),
(771, 510, 0, '2023-04-19', 0, 0, 'admin'),
(772, 511, 0, '2023-04-19', 12000, 10172, 'admin'),
(773, 512, 0, '2023-04-19', 10000, 0, 'admin'),
(774, 513, 0, '2023-04-19', 0, 0, 'admin'),
(775, 514, 0, '2023-04-19', 0, 9600, 'admin'),
(776, 515, 0, '2023-04-19', 5000, 0, 'admin'),
(777, 516, 0, '2023-04-19', 0, 0, 'admin'),
(778, 517, 0, '2023-04-19', 0, 11453, 'admin'),
(779, 518, 0, '2023-04-19', 0, 0, 'admin'),
(780, 519, 0, '2023-04-19', 3000, 0, 'admin'),
(781, 520, 0, '2023-04-19', 0, 0, 'admin'),
(782, 521, 0, '2023-04-19', 2000, 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cc_sva`
--

CREATE TABLE `cc_sva` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `codcliente` int(11) NOT NULL,
  `num_rem` int(13) NOT NULL,
  `total_rem` float NOT NULL,
  `zona` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `anulado` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cc_sva`
--

INSERT INTO `cc_sva` (`id`, `fecha`, `codcliente`, `num_rem`, `total_rem`, `zona`, `saldo`, `anulado`, `createdAt`, `updatedAt`) VALUES
(486, '2023-04-19', 1674, 15, 19605, 1, 19605, 0, '0000-00-00', '0000-00-00'),
(487, '2023-04-19', 1092, 16, 8729, 1, 2999, 0, '0000-00-00', '0000-00-00'),
(488, '2023-04-19', 459, 17, 5182, 1, 5182, 0, '0000-00-00', '0000-00-00'),
(489, '2023-04-19', 5, 18, 2264, 1, 64, 0, '0000-00-00', '0000-00-00'),
(490, '2023-04-19', 1027, 19, 14616, 1, 16, 0, '0000-00-00', '0000-00-00'),
(491, '2023-04-19', 35, 20, 4843, 1, 1843, 0, '0000-00-00', '0000-00-00'),
(492, '2023-04-19', 265, 987, 9070, 2, 4070, 0, '0000-00-00', '0000-00-00'),
(493, '2023-04-19', 436, 21, 16119, 1, 16119, 0, '0000-00-00', '0000-00-00'),
(494, '2023-04-19', 1388, 886769, 18391, 2, 9391, 0, '0000-00-00', '0000-00-00'),
(495, '2023-04-19', 1452, 22, 6373, 1, 2373, 0, '0000-00-00', '0000-00-00'),
(496, '2023-04-19', 991, 878978, 6297, 2, 3147, 0, '0000-00-00', '0000-00-00'),
(497, '2023-04-19', 449, 23, 31302, 1, 11302, 0, '0000-00-00', '0000-00-00'),
(498, '2023-04-19', 295, 24, 4264, 1, 4264, 0, '0000-00-00', '0000-00-00'),
(499, '2023-04-19', 492, 25, 6392, 1, 6392, 0, '0000-00-00', '0000-00-00'),
(500, '2023-04-19', 1712, 26, 8635, 1, 3000, 0, '0000-00-00', '0000-00-00'),
(501, '2023-04-19', 111, 27, 3611, 1, 1611, 0, '0000-00-00', '0000-00-00'),
(502, '2023-04-19', 1016, 28, 19277, 1, 19277, 0, '0000-00-00', '0000-00-00'),
(503, '2023-04-19', 774, 29, 4979, 1, 3479, 0, '0000-00-00', '0000-00-00'),
(504, '2023-04-19', 334, 30, 39272, 1, 39272, 0, '0000-00-00', '0000-00-00'),
(505, '2023-04-19', 176, 31, 7552, 1, 7552, 0, '0000-00-00', '0000-00-00'),
(506, '2023-04-19', 267, 32, 16429, 1, 16429, 0, '0000-00-00', '0000-00-00'),
(507, '2023-04-19', 207, 33, 4613, 1, 4613, 0, '0000-00-00', '0000-00-00'),
(508, '2023-04-19', 1365, 34, 10387, 1, 4987, 0, '0000-00-00', '0000-00-00'),
(509, '2023-04-19', 187, 35, 27115, 1, 27115, 0, '0000-00-00', '0000-00-00'),
(510, '2023-04-19', 1278, 36, 26508, 2, 26508, 0, '0000-00-00', '0000-00-00'),
(511, '2023-04-19', 961, 37, 25171, 2, 2999, 0, '0000-00-00', '0000-00-00'),
(512, '2023-04-19', 1085, 38, 16136, 2, 6136, 0, '0000-00-00', '0000-00-00'),
(513, '2023-04-19', 357, 39, 3718, 2, 3718, 0, '0000-00-00', '0000-00-00'),
(514, '2023-04-19', 1663, 40, 19596, 2, 9996, 0, '0000-00-00', '0000-00-00'),
(515, '2023-04-19', 1681, 41, 9710, 2, 4710, 0, '0000-00-00', '0000-00-00'),
(516, '2023-04-19', 895, 42, 22550, 2, 22550, 0, '0000-00-00', '0000-00-00'),
(517, '2023-04-19', 1310, 43, 11453, 2, 0, 0, '0000-00-00', '0000-00-00'),
(518, '2023-04-19', 1278, 44, 16668, 2, 16668, 0, '0000-00-00', '0000-00-00'),
(519, '2023-04-19', 991, 45, 5994, 2, 2994, 0, '0000-00-00', '0000-00-00'),
(520, '2023-04-19', 961, 46, 11336, 2, 11336, 0, '0000-00-00', '0000-00-00'),
(521, '2023-04-19', 1388, 47, 4143, 2, 2143, 0, '0000-00-00', '0000-00-00'),
(529, '2023-08-21', 1695, 2, 345345, 1, 11234.5, 0, '2023-08-21', '2023-08-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `localidad` varchar(255) NOT NULL,
  `provincia` varchar(255) NOT NULL,
  `cuit` varchar(255) NOT NULL,
  `clihorario` varchar(25) NOT NULL,
  `clihab` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `Direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `clihab`, `createdAt`, `updatedAt`) VALUES
(1, 'NUEVO CLIENTE', 'XXX', 'XXX', 'Revisar', '', '0', '', 0, '0000-00-00', '0000-00-00'),
(2, 'Cristina Cabrera', 'rincon frente al colegio', '3573495697', 'Rincon', '', '', '', 0, '0000-00-00', '0000-00-00'),
(3, 'Gisela Faria', 'La rioja 497', '3573434068', 'rincon', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(4, 'Florencia', 'bv Cordoba 464', '3572616445', 'Costa Sacate', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(5, 'Graciela Gonzalez', 'Maipu 413', '3572545695', 'Costa Sacate', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(6, 'Cristian', 'belgrano 774', '3516965510', 'Malvinas Argentinas', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(7, 'Ana Zarate', 'Medrano 5025', '4582072', 'Cordoba', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(8, 'Nelly Bazan', 'Mendoza 1150', '3572437224', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(9, 'Monica Leguizamon', 'San Lorenzo 375', '3572442189', 'Manfredi', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(10, 'MONTIEL', 'INDEPENDENCIA', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(11, 'Andrea Ruiz El Gauchito', 'San Luis 499', '3513508705', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(12, 'Valeria Pincirolli', 'Rio Cuarto 410', '3515083582', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(13, 'Pet Shop  San Expedito', 'Cura Brochero 197', '3572523696', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(14, 'Carniceria Virgen del Rosaio', 'Mendoza 529', '3572481003', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(15, 'Plan B', 'San LUIS 445', '3513284259', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(16, 'Drugstore Homero', 'Rio Cuarto 625', '3572448980', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(17, 'La Feria del Polirubro', 'Hipolito Yrigoyen 1180', '3572438400', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(18, 'La 9 Maxi kiosco', 'Hipolito Yrigoyen 1084', '3572438400', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(19, 'Andrea Kiosco', 'Hipolito Yrigoyen 779', '3572505718', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(20, 'Maxi Kiosco Las 24', 'Hipolito Yrigoyen 1010', '3572694847', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(21, 'Kiosco Leo', 'Hipolito Yrigoyen 500', '3572505985', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(22, 'Jose Perussia', 'San Luis 125', '3572594990', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(24, 'Luis Sanchez', 'Ameguino 447', '3572540129', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(26, 'Beatriz Villareal', 'Entre Rios 5582', '3515737512', 'Cordoba', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(27, 'Franco Suarez', 'Mario Bravo 2573', '3517439418', 'cordoba', 'cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(28, 'Tatu', 'Venecia al nose cuanto', '3512258418', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(29, 'Ayelen Cordoba', 'Santiago del Estero 875', '3513589137', 'Malvinas Argentinas', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(30, 'Valeria Oviedo', 'Tomas de Irobi 617', '3513403249', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(31, 'Centro Ed Nicolas de Avellaneda', 'Colegio', '3573403645', 'Rincon', '', '', '', 0, '0000-00-00', '0000-00-00'),
(32, 'Verduleria Francisco', 'Cordoba', '3572524268', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(33, 'El Portal de los 60', 'Bv Cordoba', '3572439734', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(34, 'Juana', 'Juan Jose Paso 38', '3572495059', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(35, 'Noemi Rios', 'Urquiza y Posadas', '3572495337', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(36, 'Ester Nadal', 'Velez Sarfield 252', '3572495236', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(37, 'Noelia Godoy', 'Resistencia esq Belgrano', '3572401667', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(38, 'Ivana Pereyra', 'Obispo Trejo 169', '3572528240', 'Costa Sacate', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(39, 'Kiosco Al Paso', 'Juan Jose Paso 8 esq Gral Paz', '3572540630', 'Laguna Larga', 'Cordoba', '', 'Lunes a la mañana NO', 0, '0000-00-00', '0000-00-00'),
(40, 'Panaderia La Amistad', 'Gral Paz 414', '3572608858', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(41, 'Hugo Rico', 'Jeronimo Luis de Cabrera 46', '3572441029', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(42, 'Karina Gigena Daluka', 'San Nicolas 982', '3572447809', 'Laguna Larga', 'Cordoba', '', '11.30 cierra', 0, '0000-00-00', '0000-00-00'),
(43, 'Mercedes Rodriguez', 'Doroteo Robles 3965', '3512648987', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(44, 'Fatima', 'Am. Sabattinni 450', '3534173546', 'Laguna Larga', 'Cordoba', '', '8 a 13.30', 0, '0000-00-00', '0000-00-00'),
(45, 'Maxi Kiosco Zuca Jose Rossi', '-', '3572594899', 'Laguna Larga', 'Cordoba', '', '7:30 hs', 0, '0000-00-00', '0000-00-00'),
(46, 'Kiosco Falcinelli', '-', '3572585465', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(47, 'IPEM 342', 'Domingo Peron 340', '35725586186', 'Laguna Larga', 'Cordoba', '', 'Despues de las 12', 0, '0000-00-00', '0000-00-00'),
(48, 'Maxi Kiosco Totto', 'Gral Paz', '3572615125', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(49, 'Guillermo Rodriguez', 'Primera Junta 43', '1', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(50, 'Adriana Rivarola', 'Maipu  casa 18', '3572593850', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(51, '4 Estaciones', '-', '3572526009', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(52, 'Kiosco Pavon', 'Jeronimo del Barco 1047', '3573425563', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(53, 'Carniceria y Despensa La Familia', 'J. del Barco 1165', '3573498155', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(54, 'Don Leon', 'San Martin 1594 es F.Perez', '3573465138', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(55, 'La Nueva Avenida (Norma Zampetti)', 'San Martin 773', '3573444401', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(56, 'Maxi Kiosco Andru', 'San Martin esq. Ardiles', '3573456888', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(57, 'La Nelu', 'Sarmiento 750', '3573415012', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(58, 'Kiosco Marga', 'Sarmiento 1031', '3573432657', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(59, 'Carina Re', 'Malvinas Argentinas 1352 media cuadra de la plaza', '3573404852', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(60, 'Maria', 'Los Ranchos 1328', '3573404852', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(61, 'Olga Valvasori', 'Arturo M. Bas y Velez Sarfield', '3572406312', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(62, 'Elisa Maciel', 'Patagonia 1265', '3572501634', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(63, 'Mirna Zarate', 'Patagonia 1265', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(64, 'Despensa Stella Maris', 'San Martin 1997 esq Rioja', '3573446295', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(65, 'Maxi Kiosco El 24', 'San Martin 1065', '3573514052', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(66, 'Despensa Cristian', 'Cordoba 934', '3572605583', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(67, 'Super Cordoba', 'Cordoba 1305', '3573513239', 'Villa del Rosario', 'Cordoba', '27956478036', '', 0, '0000-00-00', '0000-00-00'),
(68, 'Despensa Belu', 'Dutari 1377', '3573496362', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(69, 'Viviana', 'Los Ranchos', '3573404594', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(70, 'Laura', 'Jeronimo del Barco', '3573415465', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(71, 'Maxi Kiosco Teo', '-', '3573444775', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(72, 'Derspensa Guillermina', 'Vicentina 724', '3573414638', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(73, 'Javier', 'Sarmiento 215', '3573412193', 'Revisar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(74, 'Gabriel de la Tefa', '-', '3517538568', 'Revisar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(75, 'Monica Bolea', 'Zenon Lopez 2498', '3572443780', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(76, 'Super Eco', 'Pueyrredon 741', '3572438003', 'Pilar', 'Cordoba', '', '08.30 a 13. y 17 a 21', 0, '0000-00-00', '0000-00-00'),
(77, 'Sonia Almada', 'Ruta 9 esq pueyrredon', '3572507188', 'Pilar', 'Cordoba', '', '8 a 2am', 0, '0000-00-00', '0000-00-00'),
(78, 'Maxi Kiosco El Gallego', 'Palo Santo esq Velez Sarfield', '3572608180', 'Pilar', 'Cordoba', '', '7 a 24', 0, '0000-00-00', '0000-00-00'),
(79, 'Maria Isabel Nanni', 'San Nicolas 758', '3572571364', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(80, 'Gabriela Varela La Previa', 'Heros de Malvinas 434', '3572435973', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(81, 'Dominguez (Cecilia)', 'Aguaribay 423', '3572523972', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(82, 'Mirta', 'Ombu 366', '3572595541', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(83, 'Ramirez', 'Algarrobo 287', '3572402539', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(84, 'Edis Fariña', 'Rafael Nuñez esq Illia', '3572503497', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(85, 'Andres', 'Pueyrredon esq Zenon Lopez', '3572536071', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(86, 'Daniel Osvaldo Creus Paneria Delicia', 'La Pampa 326 entre jujuy y mendoza', '3572504215', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(87, 'Fabian Perez', 'Alberdi y Gral Campos', '3572500168', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(88, 'Nilda Gomez', 'Pje. Nabosacate 1185', '3573414910', 'Villa del Rosario', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(89, 'Los 3 Hermanos', 'Los Ranchos esq 25 de Mayo', '3573411845', 'Villa Del Rosario', 'cba', '', '', 0, '0000-00-00', '0000-00-00'),
(90, 'Paula Taborda', 'Norberto Dutari 256', '3573431188', 'Villa Del Rosario', 'Cba', '', '8-12:30-16-21', 0, '0000-00-00', '0000-00-00'),
(91, 'Gisella Sampaolsi', 'YPF', '3572537963', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(92, 'Olga Trinchero', 'San Juan 1370', '3572470577', 'Pilar', 'Cordoba', '', '8 a 15 19 a 23', 0, '0000-00-00', '0000-00-00'),
(93, 'Cristina Altamira', '25 de mayo 130', '3572589176', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(94, 'Sol Maidana', 'Medrano 5025', '3512653100', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(95, 'Sandra Fernandez Santa Rita', 'Mitre esq Rafael Nuñez', '3572531747', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(96, 'Susana Rodriguez', '-', '-', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(97, 'Veronica Juarez', 'Juan b Alberdi 1888', '3572505588', 'pilar', 'cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(98, 'Mayra Centeno', 'Medrano 5200', '3515080768', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(99, 'Paola Romagnoli', 'Belgrano y Horacio Laurido', '3572443271', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(100, 'Marcelo Inaudi (La 25)', '25 de mayo 955', '00000000', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(101, 'Fernando Coloti (Kiosco del Centro)', '9 de Julio 818', '3572437034', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(102, 'Maria Cipolat (Rincon de mama)', '9 de Julio 929', '3572443987', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(103, 'Jose Carrizo (Verduleria Seint)', 'Bv Argentino 1045', '3572522239', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(104, 'Clara Fernandez', 'Tala 386', '3572595967', 'Pilar', '', '', '8hs a 13:30 y 16hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(105, 'Farmacia Robert', 'Bv Argentino esq Gral Paz', '3572406398', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(106, 'Ruben Martinez', 'Corrientes 1563', '3572471205', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(107, 'Silvina Lopez (Polleria los 4 hermanos)', 'Corrientes 1844', '3572500198', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(109, 'JESICA DIAZ (TODO RESUELTO)', 'GRAL PAZ 930', '3572539053', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(110, 'PABLO NARBONA (SAN CAYETANO)', 'GRAL PUEYRREDON 841', '3572533509', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(111, 'MARGARITA VARGAS', 'INT. BARTOLO INAUDI ENTRE JOSE HERNANDEZ Y COSTANE', '3572592930', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(112, 'SILVA DIEGO HERMAN  (LA LILI)', 'JUAN B ALBERDI 1015', '3572444168', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(113, 'LILIANA ANDRADA (VIDA VERDE)', 'JUAN B ALBERDI 1047', '3572507404', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(114, 'JOSÉ CHANQUIA', 'JUAN B ALBERDI 1238', '3572540172', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(115, 'TAMARA AVILA (OASIS)', 'JUAN B ALBERDI 1613', '357244308', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(116, 'FABIAN PEREZ (LA ELENA)', 'JUAN B. ALBERDI 1000', '3572500168', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(117, 'NANCY TOLEDO', 'JUSTO PAEZ MOLINA ENTRE JOSE HERNANDEZ Y POPOPIS', '3572441528', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(118, 'MARIA LOYOLA (ESTILO)', 'LIBERTAD 831', '3572446511', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(119, 'MARIA CALDERON', 'LUGONES 2316 ESQ ALBERDI', '3572538067', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(120, 'MARIANA PILLA', 'MAIPÚ 205 ESQ SAN JUAN', '3572526526', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(121, 'MARCOS TREJO', 'RAFAEL NUÑEZ 1963', '3572536542', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(122, 'MELISA VASALLO', 'RAFAEL NUÑEZ 808 ESQ LIBERTAD', '3572449398', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(124, 'LAUTARO ETCHEVERRY', 'RAFAEL NUÑEZ ESQ VELEZ SARSFIELD', '3572507156', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(125, 'FLORENCIA BUSTAMANTE', 'SANTIAGO DEL ESTERO 804', '3572400045', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(126, 'MIGUEL VILLALBA', 'TCALAMUCHITA ENTRE INAUDI Y TUCUMAN', '35722534907', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(127, 'SILVANA COLAZO (VIVERO SAN NICOLAS)', 'VELEZ SARSFIELD 757', '3572585243', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(128, 'LORENA HEREDIA', 'ZENAIDA CABRERA 2127', '3572439787', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(129, 'CARINA TORRES (KyC)', 'ZENAIDA CABRERA ENTRE PUEYRREDON Y PERON', '3572612764', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(130, 'GUSTAVO GIRALDO (EL PÀLENQUE)', 'ZENON LOPEZ 1890', '3572589183', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(131, 'ESTER BUSTAMANTE', 'ZENON LOPEZ 739', '3572471473', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(132, 'GLADYS GIARDELLI', 'ZENÓN LOPÉZ 820', '3572470925', 'Pilar', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(133, 'DON RAMON', 'ALEM 1576', '3572666713', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(134, 'ALFREDO URRUTIA', 'ALEM 867', '3572442314', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(135, 'ELIANA PEREYRA', 'BELGRANO 1614', '3512024267', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(136, 'ABEL (MINI RUBRO)', 'BELGRANO 1779', '3572583573', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(138, 'CLAUDIA MOLA (VERDE LIMÓN)', 'CORRIENTES 1155', '3572544701', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(139, 'SILVANA MONTIEL', 'DEAN FUNES 1754', '3572604225', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(140, 'NICOLÁS CHESTA (BRILLANTE)', 'HIPOLITO YRIGOYEN 1409', '3572539333', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(141, 'ZULMA GODOY (EL ANGEL)', 'HIPOLITO YRIGOYEN 1895 ESQ XANAES', '35725865912', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(142, 'FEDERICO GARAY (LA FERIA)', 'HIPOLITO YRIGOYEN 661', '3572442846', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(143, 'LAURA BEARSI (CAYETANO PASTAS CESERAS)', 'HIPOLITO YRIGOYEN 695 ESQ CORRIENTES', '3572506952', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(144, 'MAURICIO SALVATORI', 'JULIO A ROCA 649', '3572532660', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(145, 'SERGIO PAZ (LIMPITOS)', 'LAS HERAS 1632', '3572541340', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(146, 'MIGUEL ANGEL GONZALEZ (DON PEDRO)', 'LAS HERAS 1678', '0000000', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(147, 'WILBER CARRIZO', 'LAS HERAS 820', '0000000', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(148, 'SANDRA VERA', 'LAVALLE 444 ENTRE SANTIAGO SUR Y BS AS', '3572437452', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(149, 'AMELIA PAVESIO', 'MARCONI 1772', '3572501650', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(150, 'MARCELO GOMEZ (EL PEPE)', 'MISIONES (FRENTE AL 1170)', '3572593983', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(151, 'CRISTINA COLAZO (LA CAMPANA)', 'MISIONES S/N (FRENTE AL 1468)', '3572452000', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(152, 'MARIELA MONIER (FRADA)', 'NEUQUEN 1300 ESQ ALMIRANTE BROWN', '3572509854', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(153, 'SONIA MONZON (MINIMERCADO EL POLLO)', 'NEUQUEN 247', '3572422477', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(154, 'Miguel Gonzalez (Mis Dos Soles)', 'Neuquen 245', '3572441781', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(156, 'Hector Tabernero Santa Rita', 'Rep. de Siria 1042', '3572422508', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(157, 'YULI ALVARES', 'REPUBLICA DE SIRIA ESQ CALLEJUELA VELEZ SARSFIELD', '000000000', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(158, 'CRISTELA SANCHEZ', 'RIOJA 576', '3572595338', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(159, 'VANESA ROCA (PROVEDURIA IRIGOYEN)', 'SALTA 1206', '35172422695', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(160, 'NOELIA PLAZA (GRAN LIFE)', 'SALTA 750', '3572530175', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(161, 'ELISEO LUCERO', 'SALTA ESQ SOBREMONTE', '3572666713', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(162, 'FACUNDO (POLLERIA SANTA FE)', 'SANTA FE 635', '3572582964', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(163, 'FABIAN BONO', 'SANTA FE 746', '3513481121', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(164, 'MIRTA GALLARDO', 'SARGENTO CABRAL 510', '3572536431', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(165, 'PATRICIA DE MARIA (VIA SANA)', 'SARMIENTO 1484', '3572400801', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(166, 'FEDERICO ARCE (TODO GOMA)', 'SOBREMONTE 1498 ESQ RIOJA', '3572528342', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(167, 'OLGA LUCERO (LA ESQUINA LUCERO)', 'SOBREMONTE 159 ESQ SALTA', '3572666713', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(168, 'ZULMA PIERMATEI (FARMACIA BELEN)', 'SOBREMONTE 1690', '3572421404', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(169, 'GERMAN RUIZ', 'TUCUMAN ESQ MARCONI', '3572539561', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(170, 'LETICIA (FRUTAS Y VERDURAS)', 'YRIGOYEN 1615', '0000000', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(171, 'CLAUDIA GONZÁLEZ', 'YRIGOYEN 1700 ESQ REP. DE SIRIA', '3572540089', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(172, 'ROMINA OGAS (LOS PITUFINES)', 'YRIGOYEN 400', '3572544980', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(173, 'Las Amigas', 'Ruta 9 612', '15535948', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(174, 'Panaderia Panallet', 'Corrientes 534', '3572425165', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(175, 'Don Atilio', 'Santa Fe 824', '3572529504', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(176, 'Pablo Ghio', 'Santa Fe esq Sarmiento', '3515165932', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(177, 'Nancy Arias', 'San Martin 1181', '15501417', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(178, 'Piturro', 'San Martin 1190', '3572523495', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(179, 'Libreria Tite', 'Irigoyen esq San Juan', '3572521037', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(180, 'Luciano Pereyra', 'Mendoza esq Rio Cuarto', '3572530877', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(182, 'La Tranquera', 'Belgrano 1779', '3572583573', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(183, 'Arevalo', 'Liniers 1679', '3572588679', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(184, 'Super Mercado Sol', 'San Luis 335', '3572543142', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(185, 'Rosa Celso Tapia', 'Sto Cabral entre Salta Y Rioja', '422185', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(186, 'Maximiliano Cueva', 'Catamarca esq Carlos Alonso', '3572501868', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(187, 'Noelia Ludueña', 'Carlos Besso 840', '3572503785', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(188, 'Gabriel Servarini', 'Belgrano Esq Salta', '3534272285', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(189, 'Yohana Mazzi', 'Lavalle 235', '552408', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(190, 'Victor Oses', 'Liniers 258', '3516316492', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(191, 'Marcelo Gomez', 'Misiones esq Yrigoyen', '3572593985', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(192, 'Marisa Machada', 'Misiones 1185', '3572443778', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(193, 'Fabian Luque', 'Corrientes 1120', '5887566', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(194, 'El Rey', 'Republica de Siria Entre Julio Roca Y Mercedez', '3572446519', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(195, 'Clidy Druetta', 'Sarmiento 820', '3572599815', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(196, 'Kiosco Lalo', 'Sarmiento esq San Martin', '3572542096', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(197, 'Yanella Rugeri', 'Sarmiento', '3572692058', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(198, 'Ramito Tisera', 'Rep. De Siria esq Velez Sarfield', '35720438655', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(199, 'Mary Pieimatei', 'Alem esq Mendoza', '3572546080', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(200, 'Hernan Paz', 'Tucuman esq Velez Sarfield', '3572441570', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(201, 'Mariela Monier', 'Almirante Brow esq Neuquen', '3572509854', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(202, 'Cintia Giassini', 'Ruta 9 1800', '3572442563', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(203, 'Olga Pinas', 'Santa Cruz 385', '526510', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(204, 'Sabrina Miretti', 'Ruta 13 220', '3572531339', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(205, 'Polleria Nano', 'Ruta 9 650', '3572583832', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(206, 'Maqui Gomez', 'Bv Argentino esq Costa Rica', '3512364972', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(207, 'Raul Quevedo', '-', '3572404030', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(208, 'Susana del Rio', 'Entre Rios 530', '3572544935', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(209, 'Teresa Jimenez', 'Sarmiento 250', '3572589420', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(210, 'Kiosco Pela', '-', '3572525834', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(211, 'Supermercado Sol', 'Pueyrredon 741', '3572481050', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(212, 'Trejo', 'Rafael Nuñez 1963', '15403096', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(214, 'Maria Acuña', 'Mitre 720', '3572617276', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(215, 'Nancy Gomez', '-', '3572585275', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(216, 'Graciela Villagra', 'Dionisio Gonzalez 420', '3572548961', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(217, 'Mercedez Basualdo', 'San Martin esq Gral Campos', '3572524244', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(218, 'Naty Lopez Diaz', 'Dionisio Gonzalez 800', '3572583459', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(220, 'Noemi Ferreyra', 'Dionisio Gonzalez 810', '3572441639', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(222, 'Polleria Tabernero', 'Bv Argentina 332', '3572547048', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(223, 'Sabrina Brandalisse', 'Rafael Nuñez 1093', '3572508921', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(224, 'Farmacia Marzola', 'Rafael Nuñez esq Gral Paz', '3572502942', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(225, 'Travesuras', 'Rafael Nuñez 312', '3572345131', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(226, 'Cristina Gomez', 'Rafael Nuñez 1313', '3573403439', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(227, 'Viviana Navarro', 'Alberdi 1167', '3572615201', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(228, 'Hugo Rodriguez', 'Libertad esq Ruta 9', '3572581200', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(229, 'Ezequiel Mercado', 'Ruta 13', '3572437478', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(230, 'Nancy Perez Al Toque', 'RUTA 13', '3572604600', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(231, 'Belen Rodriguez 2 (Ex Isabel Frandino)', 'Tomas Garzon esq Tucuman', '3572502008', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(232, 'Bety Gomez', 'Gral Campos 232', '3512455488', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(233, 'Adriana Parra', 'Alberdi 530', '3572617885', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(234, 'Beatriz Toledo', 'Jose Hernandez 890', '3572491528', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(236, 'Ruben Martinez', 'Corrientes 1564', '3572584054', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(237, 'Las Popis', 'Pampa entre Belgrano', '357445179', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(238, 'Valeria', 'Cochabamba 230', '3512300117', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(239, 'Mini Mercado Rupert', 'Zenon Lopez 1800', '3572449890', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(240, 'Gauchito Gil', 'Catamarca esq Belgrano', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(241, 'Dilma Dolgi', 'Mendoza 83', '3572545765', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(242, 'Irma Draperi', 'Catalina Rodriguez 390', '3572403096', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(243, 'Acuarella', 'Rio Cuarto 680', '3513579281', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(244, 'El Duo', 'Irigoyen 320', '3572404595', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(245, 'Jorgelina Garcia', 'Irigoyen 650', '3572583589', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(246, 'Carla Guzman', 'Cachicoya 220', '3572405622', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(247, 'Hitati Rotiseria', 'Velez Sarfield y Rios Cuarto', '3573694653', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(248, 'Silvia Silva', 'Cachicoya 1121', '3572589456', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(249, 'Gabriela Varella La Previa', '-', '3572435973', 'Laguna Larga', 'CORDOBA', '', '', 0, '0000-00-00', '0000-00-00'),
(250, 'Ariel Rossi', 'Gral Paz 920', '3572423300', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(251, 'Elena Cotura', 'Buenos Aires 926', '3572432030', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(252, 'Llanos', 'Entre Rios 145', '3572528629', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(253, 'Fissore', 'San Nicolas 57', '3572500189', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(254, 'Hilda Miretti', '-', '3572607124', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(255, 'Polleria Manzanita', 'Domingo Peron 416', '3572607124', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(257, 'Eve Atis', '-', '3572443372', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(259, 'Kiosco Gachi', 'Virginia Yaniz 535', '3572614837', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(260, 'Monica Albornoz', 'Virginia Yaniz 570', '3572502992', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(261, 'Mirta', 'Virginia Yaniz esq Gral Paz', '3572539771', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(262, 'Monica Ibatissoto', 'Gral Paz 278', '3572506169', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(263, 'La Abuela', 'Peron 230', '3513043535', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(264, 'Santa Rita -', 'French 230', '3576560218', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(265, 'Mirta Cicolanti', 'Virginia Yaniz esq Gral Paz', '3572539771', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(266, 'Jose Valverde', 'Sarmiento 980', '3572524761', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(267, 'Eliana Quevedo', 'Santa Fe esq Velez Sarfield', '3572503724', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(268, 'Polleria Edith', 'Sobremonte 702', '3572509197', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(269, 'Graciela', 'Pocho entre Neuquen y Santa Cruz', '3572540415', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(270, 'Sandra', 'Bv Argentina 518', '3572500736', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(271, 'Mini Libreria', 'Zenon Lopez 1053', '3516812233', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(272, 'Viviana Najaro', 'Ruta 9 1165', '3572615201', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(273, 'Carla Villareal', '9 de Julio 1606 esq Santa Fe', '3572549262', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(274, 'Hugo Britos', 'Chile 58', '3572552028', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(275, 'Escuela Clotilde', 'Alem esq Misiones', '3517584463', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(276, 'Florencia Tisera', 'Chile 63', '3572543096', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(277, 'Raul Carasay', 'Mendoza 958', '3572666817', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(278, 'Nora Rios', 'Mariano Moreno esq Maipu', '----', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(279, 'Los Olivares', 'Alcorta esq Azcuenaga', '3572423600', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(280, 'Felisa Salvay (Panaderia)', 'Virginia Yaniz 275', '3572437480', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(281, 'Sede Sportivo', 'Agustin P. Justo 195', '3572507517', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(282, 'Eliana Colazo', 'Leopoldo Lugones 280', '-', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(283, 'Mary Rinaldi', 'Uruguay Esq San Martin', '3572594395', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(285, 'Graciela Susana Rojas', 'Saavedra 245', '3572503865', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(286, 'Jorge Airasca', '---', '3534172081', 'James Craik', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(287, 'Marcela Pelegrino', 'Belgrano 236', '3534011409', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(288, 'Nancy Sanabria', '--------', '3534226273', 'Pozo del Molle', 'CORDOBA', '', '', 0, '0000-00-00', '0000-00-00'),
(289, 'Elizabeth Mieres', 'Tucuman S/N', '3534146952', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(290, 'Miguel Villalba', 'Talamuchita entre Inaudi y Tucuman', '3572534907', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(291, 'Iris Pucheta', 'Algarrobo 356', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(292, 'Ciber Star', 'Santa Fe 871', '3572439224', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(293, 'Marta Lopez Diaz', 'Tomas Garzon 1538', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(294, 'Karina Diaz', 'Senador Inaudi Casa 7', '3572618230', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(295, 'Valeria Torres', 'Aromo 500 esq', '3512306117', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(296, 'Gerardo Ravera (Rot. Family Food)', 'Garcia Montaño 194', '3534093571', 'La Playosa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(297, 'Carlos Angiolini', 'Lajes Huescan 54', '-', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(298, 'Luciano Fabricio Diaz (Kiosco Pepos)', 'Sarmiento Y Buenos Aires', '-', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(299, 'Liliana Solis (Kiosco Encuentro)', 'Av. Libertad 117 Ruta 158', '3534018298', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(300, 'MaxiKiosco La Gringa', 'Colon 121', '353412007', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(301, 'Ruben Tesio', 'Jujuy y Mitre', '3534115452', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(302, 'Veronica Sonia Chanquia', 'Humberto Primo y Dorrego', '3537336955', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(303, 'Johana Paez Kiosco A Tiempo', 'Colon 491', '3534769916', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(304, 'Kiosco Libreria Exquis', 'Buenos Aires esq Fernandez Ruta 58', '3534135020', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(305, 'Celia Ester Cazarre Diaz', 'España esq Salta', '3534899397', 'La Playosa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(306, 'Panaderia Acosta', 'Bv Cordoba esq Belgrano', '3534899397', 'La Playosa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(307, 'Jesica Kiosco El Paso', 'Diagonal Pedro Bruno  S/N', '3534013124', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(308, 'Yenni Carolina Leguizamo', 'Mendoza 604', '-', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(309, 'Panaderia S', 'Mendoza S/N', '3532467385', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(310, 'Mara Didier', 'Italia 352', '3532439274', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(311, 'Andrea (Panaderia)', 'Alem y Belgrano', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(312, 'Maria Toscano', 'Bv Buenos Aires 1366', '3572527831', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(313, 'Nardi Facundo (Pancita Dulce)', 'Dante y Puerto Argentino', '3572449727', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(314, 'Liliana Nabone', 'Diagonal Peron 557', '3534204215', 'Pozo del Molle', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(315, 'Kiosco Tini', 'Santa Fe 587', '3572611122', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(316, 'Despensa Panchito', 'Resistencia esq Belgrano', '3572495158', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(317, 'La Gallega', 'Bv Argentino esq Santa Fe', '3572542210', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(318, 'Lorena', 'Av. Del Centenario 500', '3572580696', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(319, 'Dayana Chali (Terminal)', 'Entre Rios esq Alem', '3572448392', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(320, 'El Panco', 'Rafael Nuñez 808', '3572446603', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(321, 'Meilina Prioti-Francisco Martinez', 'Peru esq Costa Rica', '3572444035', 'Rio Segundo', 'cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(322, 'Comedor Lily', 'Ruta 9 esq Belgrano', '3572444168', 'Pilar', 'cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(323, 'La Feria', 'Ruta 9 1180', '3572438400', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(324, 'Alejandro Lombo', 'Medrano 5025', '3513549611', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(325, 'Marcelo Gorosito Estacion GNC', 'Ruta 9 esq Accseso a Autopista', '3572436770', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(326, 'Gisel Kiosco la Estacion', 'Libertad 81 esq ruta 158', '----', 'pozo del molle', 'cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(327, 'Emiliano Alba', 'M. T de Alvear 272', '3533686331', 'Las Varillas', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(328, 'Farmacia Valozzi', 'Gral Campos 809', '3572545900', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(329, 'Sandra Fernandez', 'Gral Mitre esq Rafael Nuñez', '3572531747', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(330, 'Nancy Alvarez', 'Marconi 1979', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(331, 'Elsa Caceres', 'Jorge Bocos Lezcano 565', '3572435793', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(332, 'El Ahorro', 'Peru Esq Ecuador', '3572443036', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(333, 'Lily  Carabante', 'Tomas Garzon 267', '3515784463', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(334, 'La Perla', 'Alem esq Rivadavia', '3572520299', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(335, 'Vanesa Cordoba', 'Mario Bravo', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(336, 'Angel Acosta', '9 de julio 818', '3572437024', 'Pilar', 'Cordoba', '', '9hs 13hs', 0, '0000-00-00', '0000-00-00'),
(337, 'YPF', 'San Juan 574', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(338, 'Kiosco Ferreyra', 'Maipu 1227', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(339, 'Rapi Taxi', 'Bancalari 1655', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(340, 'Monica Fessia', 'Juan B Alberdi 1047', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(341, 'Ivana Figueroa', 'Catamarca esq Las Heras', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(342, 'Gisela Tisera', 'Intendente Lucero  1928 Entre Cabrera e Irigoyen', '3572528013', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(343, 'Dos Corazones', 'Zenon Lopez esq Ombu', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(344, 'Pamela Centeno', '9 de julio 238', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(345, 'Despensa Tomas', 'Tucuman 622', '3572527251', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(346, 'Araceli Gomez', 'Liniers esq  La Rioja', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(347, 'Kiosco El Mejor (Flia Molina)', 'Lavalle entre Gran Chaco y Bolivia', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(348, 'Forrajeria Tuki', 'Zenon Lopez Esq Bv Argentino', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(349, 'Graciela Depto F', '25 de Mayo 336 Dep F', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(350, 'Sandra Vera', 'Lavalle esq Santiago Sur', '3572437452', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(351, 'Mirta Gallardo', 'Sargento Cabral Y Buenos Aires', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(352, 'Janet Saenz', 'Belgrano 395 esq. Corrientes', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(353, 'Ema Tissera (Ex El Parador)', 'Ruta 9', '3572617833', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(354, 'Marcela Tula', 'Tucuman Esq Belgrano', '3572538263', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(355, 'Ines Rodriguez', 'Dionisio Gonzalez entre 25 de mayo y gral mitre', '3572520698', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(356, 'Libreria Arco Iris', 'Rioja 404', '-', 'Manfredi', '', '', '', 0, '0000-00-00', '0000-00-00'),
(357, 'Gabriel Viani Verduleria  Julian', 'Gral Paz Frente al super', '3572585390', 'Manfredi', '', '', '', 0, '0000-00-00', '0000-00-00'),
(358, 'Belen Rodriguez', 'Justo Paez Peña 120', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(359, 'Luis Arias 1', 'Entre Rios y Ranchos', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(360, 'Fernando', 'Lavalle 552', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(361, 'Valeria B', '25 de mayo 336 dpto B', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(362, 'Olga Ferreyra Monti', 'Santiago Sud esq Lavalle', '3572535846', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(363, 'Jesica Dominguez', 'Guatemala entre Av. Argentina y Colombia', '3572520651', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(364, 'Panaderia Chileno', 'ruta 9 1226', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(365, 'Pileta  Del Cura', 'Chile esq Venezuela', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(366, 'Pileta ACD', 'Corrientes esq Alem', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(367, 'Ivanof', 'antartid argentina esq matienzo', '1', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(368, 'Luis Arias 2', 'Santa Fe esq Sobremonte', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(369, 'Maricel Araya', 'Pocho 446', '3572421599', 'Rio Segundo', '', '23-25656814-4', '', 0, '0000-00-00', '0000-00-00'),
(370, 'Daniela Ferreyra', 'Gral Paz esq San Lucas', '-', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(371, 'LuisArias 3', 'Alem esq Cordoba', '1', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(372, 'MaxiKiosco NAWI', 'Catamarca esq Marconi', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(373, 'Pileta Central', 'San Juan entre Las Heras Y Sobremonte', '3572593798', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(374, 'MaxiKiosco El Pela', 'San Luis pasando Carlos Besso', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(375, 'Funes', 'Gral Campos 257', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(376, 'Marta', 'Bv Argentina esq San Juan', '3572439589', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(377, 'Adela', 'Libertad 219', '3572589940', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(378, 'Andrea (verduleria)', 'Bv Cordoba', '3572593866', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(379, 'Abigail', 'La Pampa 1991', '3572612353', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(380, 'JYM', 'San Juan esq Hipolito Irigoyen', '3572501919', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(381, 'El Luis', 'Ecuador 525', '3572666722', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(382, 'Sandra Bv Argentina', 'Av. Argentina 518', '3572500736', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(383, 'Taty Arevalo', 'Almirante Brow', '3572608559', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(384, 'Alfredo', 'Alem 867', '3572440471', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(385, 'MaxiKiosco 5 Estrellas', 'Julio Roca esq Cordoba', '*', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(386, 'Maxi Kiosco Alem', 'Alem 1130 (frente banco nacion)', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(387, 'Norma Lagostena', 'Gildo Giotto esq Gral Paz', '3572583443', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(388, 'Verduleria Wilde', '25 de Mayo 300', '3572619965', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(389, 'Verduleria Seynet', 'Bv Argentino 1045', '3572522239', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(390, 'MaxiKiosco La Pampa', 'La Pampa esq 9 de Julio', '3572532660', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(391, 'El Cruce.', 'Mendoza 966', '3572500179', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(392, 'Norma (LibertRut)', 'Ruta 9 esq Libertad', '3572440516', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(393, 'Panaderia Peralta', 'Rivadavia 1122', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(394, 'MaxiKiosco Bonche', 'Rafael Nuñez 1116', '3572604425', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(395, 'MaxiKiosco', 'Maipu 862', '3572472161', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(396, 'Verduleria Tarija', 'Las Heras 820', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(397, 'Panaderia Buen Sabor', 'Santa Cruz', '3572596088', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(398, 'Luis Vazquez', 'San Nicolas Oeste 87', '35752443933', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(399, 'Della Cecca', 'Tomas Garzon 1428', '3572545389', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(400, 'Maria Lopez', 'Jujuy 1525', '3572422640', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(401, 'Marta Gollena', 'Belgrano  335', '3572509525', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(402, 'Mariana Dominguez', 'Rivadavia esq Chaco', '3516812976', 'Costa Sacate', '', '', '', 0, '0000-00-00', '0000-00-00'),
(403, 'Kiosco Jose (Maria Luz)', 'Gran Chaco 1483', '3572582769', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(404, 'Gonzalez', 'Hipolito Yrigoyen esq Republica de Siria', '3572593568', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(405, 'Isabel Coria', 'Las Heras 1287', '3572421450', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(406, 'Olga Taborda', 'Dionisio Gonzalez 1481', '3572587934', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(407, 'Polleria 9 de Julio', '9 de Julio 333', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(408, 'Limpieza', 'Libertad 831', '3572446511', 'Pilar', '', '', 'Por la mañana', 0, '0000-00-00', '0000-00-00'),
(409, 'Kiosco Mauro', 'Rafael Nuñez esq Tala', '3572543226', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(410, 'Cristina Quevedo', 'Santa Cruz 182', '3517722596', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(411, 'Mirta Diaz', 'Belgrano 352', '1', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(412, 'Alejandra', 'Juan Baustista Justo entre maipu y rio segundo', '3572550042', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(413, 'Valeria', 'San Martin 129 entre 25 de mayo y mitre', '*', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(414, 'Cherry', 'Sobremonte 770', '3572527216', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(415, 'Sonia Isoardi', 'Cura Brochero 398 esq Mendoza', '-', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(416, 'Marta Olariaga', 'Mendoza 1289 (puerta blanca)', '3572534184', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(417, 'Emilce Fernandez', 'Tucuman 866', '3572448528', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(418, 'Cristina Ortega', '9 de Julio entre san martin y dionisio gonzalez', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(419, 'Silvia Vera', 'Santiago Sud esq Sargento Cabral', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(420, 'Mariela Romero', 'Leopoldo Lugones 360', '3572540542', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(421, 'Brisa Moliina', '-', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(422, 'Alejandra (limpieza)', 'Almirante brown esq neuquen', '3572545729', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(423, 'Delsi Marmiroli', 'Belgrano 1170 (REJAS NEGRAS)', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(424, 'Distribuidora Siloe', 'Mitre', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(425, 'Mercado El Pollo', 'Neuquen', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(426, 'Carla Andrea Storti', 'Bv Rio Segundo 464', '3572542200', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00');
INSERT INTO `clientes` (`id`, `nombre`, `Direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `clihab`, `createdAt`, `updatedAt`) VALUES
(427, 'Pamela Lopez', 'San Luis 1100 esq Hipolito Yrigoyen', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(428, 'Los Primos', 'Cordoba 1366', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(429, 'Viviana Padilla', 'Juan B Alberdi 1585', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(430, 'Laura Tirinello', 'San Juan 1332', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(431, 'Forrajeria Tuki 2', 'Ruta 13 esq Entre Rios', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(432, 'Yamina Campos', 'Argentina y Granja', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(433, 'SVA', '-', '-', 'Revisar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(434, 'Sergio Bechis', 'Mercedes 721. Entre corrientes y Santa Fe', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(435, 'Eduardo Lombo', 'braulio colazo', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(436, 'Porota', 'Mendoza 945', '3572593395', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(437, 'Ayelen Garrote', 'Tomas Garzon 1407', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(438, 'Kiosco Alejo', 'Belgrano 467', '-', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(439, 'Stella', 'Santiago Sud 1146', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(440, 'Maricel Dufau', 'Tucuman 963', '-', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(441, 'Adriana Rodriguez', 'La rioja Esq Yrigoyen', '3572523630', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(442, 'Ayrton', '25 de Mayo 129', '3572605093', 'Costa Sacate', '', '', '', 0, '0000-00-00', '0000-00-00'),
(443, 'Romina Ogaz', 'Hipolito Yrigoyen esq Bs As', '3572544880', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(444, 'Karen Brondino', 'Gral Paz 450', '3572504100', 'Manfredi', '', '', '', 0, '0000-00-00', '0000-00-00'),
(445, 'Valeria Peralta', 'Chile esq Venezuela', '3572532325', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(446, 'Rocio Diaz', 'Mitre entre san martin y san nicolas', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(447, 'Iber Bercero', 'Bv Argentino esq Gral Paz', '3572605387', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(448, 'Carnes Vicentito (Alejandro Sanchez)', 'Libertad y San Luis', '3572-500569', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(449, 'Verduleria La Familia (Estella Zamora)', 'Maipu 216', '3572-444194', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(450, 'Kiosco Belgrano (Alessandria Claudia)', 'Belgrano 171', '3572-526506', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(451, 'Los Totos (Daniela Castro)', 'Francisco Cabrera esquina Bs As o Nestor Kirchner', '3572-583204', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(452, 'Papa Pollo (Lucas Bezzari)', 'San Luis esquina Giotto', '3572-508930)', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(453, 'Despenza Elisa (Peralta Natalia)', 'Carlos besso 518', '351-5513464', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(454, 'Kiosco El Mejor (Jessica Molina9', 'Lavalle entre Chaco Y Bolivia', '3572587918', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(455, 'Kiosco Naty (Natalia Cuello)', 'Republica de Siria 1425', '3572549505', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(456, 'Los Pitufos (Erica Alanis)', 'Bengrano 320', '3572609938', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(457, 'El Angel 2 (Zulma Godoy)', 'H. Irigoyen esq Xanaes', '3572586912', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(458, 'Verduleria Nono Luis (Carlos Garay)', 'H.Irigoyen 1838', '3572608939', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(459, 'Yolanda Alarcon', 'Maipu 468', '3512409932', 'Costa Sacate', '', '', '', 0, '0000-00-00', '0000-00-00'),
(460, 'Multirubro (Lautaro Echeverry)', 'Peru esq Bolivia', '3572532660', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(461, 'Los Pekes (German Castellano)', 'Av. Argentina 739', '35725406220', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(462, 'Sofia Gonzalez', 'Sarmiento 1712', '3572615139', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(463, 'Agustin 2  (Pamela Diaz)', 'Entre Rios esq J. Roca', '3572587760', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(464, 'Kiosco Mana (Maxi Ramos/Ezequiel Blati)', 'Tucuman 998', '3513991757', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(465, 'La 31', 'Algarrobo esq Gaucho Rivero', '3572618649', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(466, 'La Martina (Veronica Villareal)', 'Juan de la Cruz 2039', '3513404707', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(467, 'Verduleria Los Dos Hermanos (Pablo Morales)', 'Entre Rios esq H.Irigoyen', '3572582884', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(468, 'Kiosco (Andrea Novillo)', 'Bv San Juan 1536 entre Rio Segundo y Maipu', '3572571387', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(469, 'Verduleria La Buena Onda (Yuliana Alvarez)', 'R. Siria Entre Alem y Velez Sarfield', '3572501381', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(470, 'Kiosco La Franca (Mauricio Salvatori)', 'Julio Roca 649', '3572507156', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(471, 'Kiodco Gaby', 'Tala entre Zenon Lopez y Rafael Nuñez (porton negr', '3572674520', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(472, 'Griselda Castro (limpieza casa naranja)', 'Francisco Cabrera esq J.M Olmedo', '3572589782', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(473, 'Brian Marcatto', 'Santa Rosa 335', '3572536271', 'Manfredi', '', '', '', 0, '0000-00-00', '0000-00-00'),
(474, 'MaxiKiosco (Sandra Matasi)', 'Bv Argentina 518', '3572400697', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(475, 'Despenza Cosecha (Nancy Zana)', 'Nestor Kirchner esq H. Irigoyen', '3572589782', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(476, 'Kiosco (Dana Rojas)', 'La Pampa entre Belgrano y Santiago Del Estero', '3572670834', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(477, 'Kiosco (Raquel Peralta)', 'San Juan 1643', '3518176342', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(478, 'MaxiKiosco Lo De Chicho (Yohana Vergara)', 'Zenon Lopez 720', '3572528139', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(479, 'Kiosco (Eduardo De La Cecca)', 'Tomas Garzon 1428', '3572545389', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(480, 'Julian Pedraza', '9 De Julio 840', '3572503015', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(481, 'Maria Jose Ramb', '1 de Mayo esq Chubut', '3572449484', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(482, 'Isabel Oscare', 'Santiago del Estero 930', '3513058372', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(483, 'Lo de Chicho (Yohana Vergara)', 'Neuquen Esq Pocho', '3572528139', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(484, 'Carniceria Gomez', 'Gral paz 2180', 'q', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(485, 'Mariana Garcia', 'senador Inaudi 936 (bv arg y tomas garzon)', '3572581053', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(486, 'Nueva Gula (Fernando Casas)', 'Ruta 9 esq Tucuman', '3572671105', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(487, 'Kiosco Negrin', 'Corrientes 1120   entre Julio Roca y Mercedes', '3572531789', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(488, 'Alejandro', 'Jujuy Esq Sargento Cabral', '3513700405', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(489, 'Vanesa Rosso', 'Santiago Del Estero 912', '3572432097', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(490, 'Pamela Fernandez', 'Leopoldo Lugones 606', '3572612369', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(491, 'Luciano Balzamino', '-', '-', 'Revisar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(492, 'Karen Ramos', 'Chacabuco Frente a niño divino', '3572509457', 'Costa Sacate', '', '', '', 0, '0000-00-00', '0000-00-00'),
(493, 'Lo de Rami', 'Sarmiento entre San Martin y Rivadavia', '3572448844', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(494, 'Verduleria Carola', 'Marconi esq Catamarca', '3572435857', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(495, 'Ariel Gribaudo (Forrajeria)', 'Zenon Lopez y Gral Belgrano', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(496, 'MaxiKiosco 18', '9 de Juliod 980', '3516578432', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(497, 'Oscar Mandioca', 'Entre Rios 447', '3572510217', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(498, 'Victor Linares El Paso', 'Bv Argentina 1050', '3572407543', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(499, 'Edgardo Martinez', 'Hipolito Yrigoyen 650', '3572570191', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(500, 'El Dandy (Alexis Strasorier)', 'Ruta 9 Esq Bv Argentino', '3572596536', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(501, 'Jorge Garay', 'Santiago del Estero 146 oeste', '3572595456', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(502, 'MaxiKiosco 9 (Fabiana Liandro)', '9 de Julio entre La Pampa y Tucuman', '3572439726', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(503, 'Pablo Aguero', '-', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(504, 'Benmax (Marianela Pereyra)', 'Senador Inaudi entre Bv Argentino y Libertad', '3512058088', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(505, 'Kiosco La Nena (Alejo Jacquet)', '25 de Mayo 651', '3513861483', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(506, 'Roticeria La Yaya (Graciela Pereyra)', 'Irigoyen y Belgrano', '3572580317', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(507, 'Despenza Mayra', 'Republica de Siria 594', '3572570646', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(508, 'Mandi Gonzalez', '-', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(509, 'Vanesa Whitney', '9 De Julio 300 esq Entre Rios', '3572547732', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(510, 'MaxiKiosco MyB', 'Juan Peron 1371 rura 9', '3572438268', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(511, 'Yohana Molina', 'Hipolito Yrigoyen y 1 de Mayo 110', '3572596075', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(512, 'Alejandra Gomez', 'Zenon Lopez 820', '3572505158', 'Pilar', '', '', '9 a 14 y 18 a 00', 0, '0000-00-00', '0000-00-00'),
(513, 'Proveduria Kem (ex chicho)', 'Pocho y Neuquen', '3572409211', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(514, 'Blanca Peralta', 'Belgrano 1840 entre siria y xanaes', '3572422628', 'Rio Segundo', '', '', '8 a 14 y 16 a 22', 0, '0000-00-00', '0000-00-00'),
(515, 'Polleria Silvia Perez', 'Mendoza 1300 esq Belgrano', '3572549163', 'Revisar', '', '', '8:30 a 13 y 17 a 21', 0, '0000-00-00', '0000-00-00'),
(516, 'Dayana Peralta', 'Lujan 375', '3572330044', 'Manfredi', '', '', '9 a 13 y 17 a 21', 0, '0000-00-00', '0000-00-00'),
(517, 'MABEL DELGADO', 'BUENOS AIRES 445- GRAL PAZ', '3525434980', 'Gral Paz', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(518, 'MERCEDEZ BARCO', 'CATAMARCA S/N', '3525441276', 'Gral Paz', 'Córdoba', '', '8 A 22HS', 0, '0000-00-00', '0000-00-00'),
(519, 'FRANCISCO ROJAS', 'ORTIZ HERRERA 155', '3525612749', 'Gral Paz', 'Córdoba', '', '8:30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(520, 'MARCELA RIZZI', 'PEDRO NOBILE 254', '3525432819', 'Sinsacate', 'Córdoba', '', '7 a 13hs', 0, '0000-00-00', '0000-00-00'),
(521, 'Carolina Martinez', 'Pedro nobille 379 esq rioja', '3525646726', 'Sinsacate', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(522, 'MARIO OLMOS', 'el salvador 815', '3525606053', 'Jesus Maria', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(523, 'ROCIO ASTRADA', 'BALCARCE 1280', '3525437176', 'Jesus Maria', 'Córdoba', '', '9:30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(524, 'YESI MATEO', 'Lavalleja esq las heras', '1', 'Jesus Maria', 'Córdoba', '', '08.30 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(525, 'SOLE', 'LAS HERAS 1368', '1', 'Jesus Maria', 'Córdoba', '', '9 A 14HS', 0, '0000-00-00', '0000-00-00'),
(526, 'MARIELA VALENCIA', 'BUCHARDO 1269', '3525539218', 'Jesus Maria', 'Córdoba', '', '9 A 23 HS', 0, '0000-00-00', '0000-00-00'),
(527, 'ANGELICA', 'FORMOSA 25', '3525444851', 'Jesus Maria', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(528, 'VANESA', 'CHILE 460', '1', 'Jesus Maria', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(529, 'ANALIA ACUÑA', 'BARCELONA 517', '3525456030', 'Jesus Maria', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(530, 'BELEN SEDOO', 'SAN LORENZO 83', '3525439236', 'Sinsacate', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(538, 'Montiel', 'INDEPENDENCIA 1150', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(539, 'BLANCO', 'INDEPENDENCIA 1102', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(540, 'CARNICERIA', '17 DE OCTUBRE', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(541, 'POLLERIA LEO', 'IGUALDAD', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(542, 'MARSHALL', 'ALM.BROWN', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(548, 'PAOLA', 'SINSACATE', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(549, 'CAROLINA', 'SINSACATE', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(550, 'BELEN SEDO', 'SAN LORENZO 83', '11', 'Sinsacate', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(555, 'ANA NARVAEZ', 'J.B.JUSTO', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(556, 'VERDULERIA AGUS', 'AV 28 JULIO', '11', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(561, 'POLLERIA MALABRIGO', 'MALABRIGO', '  ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(562, 'ROXANA', 'AV LOS FUNDADORES', '  ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(567, 'MARIA JOSE', 'SYP', '  ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(568, 'MARINA BLANCO', 'SYP', '  ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(570, 'MARIINA', 'SYPP', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(571, 'ROSA', 'SYO', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(577, 'MAJO', 'CHILE 156', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(579, 'POLLERIA NOE', 'ESTRADA', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(581, 'ANACHURI', 'TUCUMAN ESQ MAIPU', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(582, 'RUARTE', 'SAN JUAN 605}}}', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(583, 'BAR TREGUA', 'ITALAI ESQ NEMESIO GONZALEZ', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(584, 'DIAZ BLANCA', 'PASAJE PROGRESO ESQ', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(585, 'SAVORGNAN', 'SARMIENTO(FRENTE TRIBU)', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(586, 'MAGA', 'BOLIVIA ESQ VICENTE AGUERO', ' ', 'Jesus Maria', 'CBA', '', '', 0, '0000-00-00', '0000-00-00'),
(638, 'CARLOS LUNA', 'MALVINAS ARGENTINAS ESQ BRASIL', '3525442684', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(639, 'FRANCISCO OLEA', 'BV AGUERO 45', '3517730409', 'Jesus Maria', '', '', '9 A 23HS', 0, '0000-00-00', '0000-00-00'),
(640, 'VICTOR BERUCCO', 'ESTRADA 1016', '1', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(641, 'ROXANA CORONEL', 'PAMPLONA 1390', '3525608150', 'Jesus Maria', '', '', '9 A 24HS', 0, '0000-00-00', '0000-00-00'),
(642, 'SANTUCHO MARIA', 'VENEZUELA 135', '1', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(643, 'REYNA VIVIANA', 'BELGRANO 545', '3525646715', 'Jesus Maria', '', '', '8 A 22HS', 0, '0000-00-00', '0000-00-00'),
(644, 'MANUEL NOLLA', 'PASO DEL HUERTO 269', '3525613635', 'Jesus Maria', '', '', '8 A 13HS', 0, '0000-00-00', '0000-00-00'),
(645, 'RODAL WALTER', 'IGUALDAD 1135', '3525444027', 'Jesus Maria', '', '', '9 A 22HS', 0, '0000-00-00', '0000-00-00'),
(646, 'MEDINA JOSE', 'LIBERTADAD 1148', '3525415133', 'Jesus Maria', '', '', '8:30 A 22HS', 0, '0000-00-00', '0000-00-00'),
(647, 'VACA MONICA', 'COSTA RICA ESQ REP. DOMINICANA', '3525607439', 'Jesus Maria', '', '', '7:30HS A 12HS', 0, '0000-00-00', '0000-00-00'),
(648, 'ANA', 'CAMINOS LOS QUEBRACHOS VICENTE AGUERO', '3525500381', 'Colonia Caroya', '', '', '8 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(649, 'ANGELA CUELLO', '72 SUR 776 ESQ 124', '3525461746', 'Colonia Caroya', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(650, 'LAURA ROSALES', 'AV. SAN MARTIN 5102', '3525546693', 'Colonia Caroya', '', '', '9 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(651, 'MACARENA DANDREA', 'PEDRO PATAT SUR 670', '3525438223', 'Colonia Caroya', '', '', '08.30 A 13.30', 0, '0000-00-00', '0000-00-00'),
(652, 'MARIANO MARCHETTI', '36 SUR 336', '3525549385', 'Colonia Caroya', '', '', '08.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(653, 'Rosa Sanchez', '47 al 2779 entre 26 Y 27', '3525468925', 'Colonia Caroya', '', '', '08.30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(654, 'Ramon Rementeria (Poli)', '47 al 2450 entre  23 Y 24', '3525463093', 'Colonia Caroya', '', '', '8 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(655, 'ANCLA', 'DON BOSCO 2050', '3525466190', 'Colonia Caroya', '', '', '8 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(656, 'PAOLA DINCA', '46 Y 18', '3525419310', 'Colonia Caroya', '', '', '9 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(657, 'SILVIO LOBO', 'SAN MARIN 2338', '3525663080', 'Colonia Caroya', '', '', '9 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(658, 'CINTIA', '-', '-', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(659, 'SABRINA DIAZ', 'SAN MARTIN 690 ESQ 6', '1138619423', 'Colonia Caroya', '', '', '8 A 21 HS', 0, '0000-00-00', '0000-00-00'),
(660, 'ALICIA MORENO', 'CALLE 41 Y 15', '3525467553', 'Colonia Caroya', '', '', '9 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(661, 'ELBA GOMEZ', 'SAN MARTIN 6552', '3525465409', 'Colonia Caroya', '', '', '8 A 22', 0, '0000-00-00', '0000-00-00'),
(662, 'RUBEN CADAMURO', 'SAN MARTIN 6803', '3525466303', 'Colonia Caroya', '', '', '08.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(663, 'GABRIELA CADAMURO', 'SAN MARTIN 6803', '3525485137', 'Colonia Caroya', '', '', '08.30 A 13HS', 0, '0000-00-00', '0000-00-00'),
(664, 'MARIA VERON', 'CALLE 55 AL 125', '3525562855', 'Colonia Caroya', '', '', '08.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(665, 'VALERIA GOMEZ', 'SAN MARTIN 3869', '3525466462', 'Colonia Caroya', '', '', '08.30 A 13', 0, '0000-00-00', '0000-00-00'),
(666, 'ALICIA TORANZO (DON QUESO)', 'SAN MARTIN 2814', '3525506013', 'Colonia Caroya', '', '', '9 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(667, 'LORENA TURUS', 'DON BOSCO 2313', '3525641366', 'Colonia Caroya', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(668, 'JOSE VERA', 'CALLE 47 Y 14', '3525535853', 'Colonia Caroya', '', '', '08.30 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(669, 'GERMAN ESTRASORIER', 'CALLE 47 AL 1372', '3525465619', 'Colonia Caroya', '', '', '08.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(670, 'NORMA LAZARTE', 'VICENTE AGUERO SUR 52 AL 120 CASI ESQ DON BOSCO', '3521411308', 'Colonia Caroya', '', '', '09 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(671, 'DISTRIBUIDORA LA MALVINA', 'CASTALUTO PEÑA ESQ OLMOS', '3525445477', 'Jesus Maria', '', '', '08.30 A 12.30 HS', 0, '0000-00-00', '0000-00-00'),
(672, 'SOFIA MORRON', 'ESTRADA 895 ESQ YRIGOYEN', '3525433868', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(673, 'CRISTINA RUARTE', 'SAN JUAN 606', '3525413700', 'Jesus Maria', '', '', '08.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(674, 'CLAUDIA HERRERA', 'SAN JUAN NORTE 992', '3525633168', 'Jesus Maria', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(675, 'Yohana Borgobello', 'AV. 28 DE JULIO 1618', '3525651918', 'Jesus Maria', '', '', '7 A 12 HS', 0, '0000-00-00', '0000-00-00'),
(676, 'CARMEN AGUILAR', 'LA CABAÑA 1780', '3525442412', 'Jesus Maria', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(677, 'LUCIA RONCO', 'MIGUEL JUAREZ 957', '3525458479', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(678, 'BETY REYNA', 'COLON 537', '3525608563', 'Jesus Maria', '', '', '08.30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(679, 'MARINA BLANCO', 'PARQUE IGUAZU 137', '3525506723', 'Jesus Maria', '', '', '8 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(680, 'FELIX CEPEDA(SIERRA Y PARQUE)', 'CERRO MINAS 1164', '3525540137', 'Jesus Maria', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(681, 'VERONICA LEDEZMA', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(682, 'Fatima Gimenez', 'Mendoza 1032 dpto 4', '1', 'Laguna Larga', '', '', '', 0, '0000-00-00', '0000-00-00'),
(683, 'CEFERINO GODOY', 'JUAN 23 129', '3525415702', 'Jesus Maria', '', '', '8 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(684, 'EL DUENDE', 'LAVALLEJA 1481', '3525422365', 'Jesus Maria', '', '', '08.30 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(685, 'FABIAN VIEL', 'LA ERA Y BERUTTI', '3525445290', 'Jesus Maria', '', '', '9 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(686, 'JUAN DIAZ', 'BUCHARDO 1554', '3525415390', 'Jesus Maria', '', '', '08 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(687, 'EVELIN QUINTEROS', 'BUCHARDO ESQ PASO DE LOS ANDES', '3525416630', 'Jesus Maria', '', '', '8 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(688, 'MARIO LOPEZ', 'FORMOSA 257', '3525418199', 'Gral Paz', '', '', '7.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(689, 'NANCY NANINI', 'CORDOBA 71', '-', 'Gral Paz', '', '', '07.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(690, 'GASTON VILLAFAÑE', 'CATAMARCA 65', '3525441287', 'Gral Paz', '', '', '08.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(691, 'SOL DEL MAR (MARIA CEREZO)', 'LA CABAÑA 1748', '3525553575', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(692, 'MARIA ARASCAETA', 'CALLE 41 AL 1368', '3525528548', 'Colonia Caroya', '', '', '08.30 A 14', 0, '0000-00-00', '0000-00-00'),
(693, 'VALERIA ZAMUDIO', 'CALLE 41 ESQ 14', '3525641986', 'Colonia Caroya', '', '', '08.30 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(694, 'GABRIELA CARUCILLO', 'CALLE 41 AL 2865', '3525633581', 'Colonia Caroya', '', '', '10.30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(695, 'JOEL TOROS', 'CALLE 42 AL 1549', '3525464577', 'Colonia Caroya', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(696, 'GUSTAVO OJEDA', 'CALLE 37 AL 75', '3525647604', 'Colonia Caroya', '', '', '08.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(697, 'LORENA VICINTINI', 'CALLE 47 Y 10', '3525485421', 'Colonia Caroya', '', '', '08.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(698, 'FERNANDO CAUSICHI', 'CALLE 13 Y 46', '3525458899', 'Colonia Caroya', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(699, 'ROCIO ALFARO', 'SAN MARTIN 2634', '3525642443', 'Colonia Caroya', '', '', '08.30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(700, 'NOELIA CAMINOS', 'CALLE 45 AL 2098', '3525555520', 'Colonia Caroya', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(701, 'MAXIMILIANO GEORDANO', 'SAN MARTIN 3400', '3525463869', 'Colonia Caroya', '', '', '10 A 22', 0, '0000-00-00', '0000-00-00'),
(702, 'NORA MONDINO', 'ITALIA SUR 20', '3525467816', 'Colonia Caroya', '', '', '8 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(703, 'TERESA VELEZ', 'CALLE 45 AL 645', '3513337745', 'Colonia Caroya', '', '', '8 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(704, 'RODRIGO DONNET', 'ESTRADA ESQ DIPOLO', '3525612529', 'Jesus Maria', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(705, 'CLARA MANZILLA', 'CARABELA 700', '3525445771', 'Jesus Maria', '', '', '08.30 A 22', 0, '0000-00-00', '0000-00-00'),
(706, 'DANIELA LUCERO', 'TUCUMAN 25', '3525489567', 'Jesus Maria', '', '', '09.30 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(707, 'MARISA GOROSITO', 'SERREZUELA 314', '3515300353', 'Jesus Maria', '', '', '7 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(708, 'NATALIA ALVAREZ', 'SERREZUELA 376', '3525485735', 'Jesus Maria', '', '', '09.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(709, 'SANDRA', 'ITALIA 1035 LOCAL 2', '3525500992', 'Jesus Maria', '', '', '09.30 A 13.30', 0, '0000-00-00', '0000-00-00'),
(710, 'OLGA CASTRO', 'LIBERTAD 962', '3525445077', 'Jesus Maria', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(711, 'MARA RUBINO', 'FRENCH ESQ IGUALDAD 1570', '-', 'Jesus Maria', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(712, 'PAOLA AREVALO', 'SEVILLA 1423', '3515339878', 'Jesus Maria', '', '', '9 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(713, 'GABRIELA BRANDALESI', 'BARCELONA 482', '3525550255', 'Jesus Maria', '', '', '08 A 15 HS', 0, '0000-00-00', '0000-00-00'),
(714, 'LUCIA MARQUEZ', 'AYACUCHO 295', '3525605725', 'Jesus Maria', '', '', '10 A 15 HS', 0, '0000-00-00', '0000-00-00'),
(715, 'ENRIQUE CANELO', 'MARIANO MORENO SUR 155', '3525645343', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(716, 'ROMINA AMAYA', 'VICENTE AGUERO 380', '3525413147', 'Jesus Maria', '', '', '09 A 13.30 HS', 0, '0000-00-00', '0000-00-00'),
(717, 'VALERIA JUNCOS', 'INDEPENDENCIA 1567', '3525547939', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(718, 'LILIANA', 'INDEPENDENCIA 1191', '3525630579', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(719, 'VANESA DIAZ', 'MALVINAS ARGENTINAS ESQ IGUALDAD', '3525504812', 'Jesus Maria', '', '', '11 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(720, 'LORENA ROJAS', 'IGUALDAD 994', '3525615373', 'Jesus Maria', '', '', '09.30 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(721, 'Eugenia Gauna', 'Jujuy 1540', '3572595983', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(722, 'Nemesis Guzman (Kiosco Rosa)', 'Miguel Juarez 711', '3525632124', 'Jesus Maria', '', '', '7 a 12 HS', 0, '0000-00-00', '0000-00-00'),
(723, 'JOSE LOPEZ', 'CASTULO PEÑA 909', '-', 'Jesus Maria', '', '', '08.30 A 13 Y 17 A 21', 0, '0000-00-00', '0000-00-00'),
(724, 'JUANA DE ARCO', 'TUCUMAN 1120', '3525481200', 'Jesus Maria', '', '', '08.30 A 12 Y 17 A 21', 0, '0000-00-00', '0000-00-00'),
(725, 'VALERIA FANTINI', 'CORDOBA ESQ INT. CESPED', '-', 'Jesus Maria', '', '', '08.30 A 13', 0, '0000-00-00', '0000-00-00'),
(726, 'MONICA (POLLERIA)', 'LAVALLEJA 1321', '3525300209', 'Jesus Maria', '', '', '9 A 13.30', 0, '0000-00-00', '0000-00-00'),
(727, 'MARCELO LEIVA', 'SANTA FE 438', '3525482496', 'Gral Paz', '', '', '07.30 A 13 Y 17 A 21.30', 0, '0000-00-00', '0000-00-00'),
(728, 'VERONICA SYP (SIERRA Y PARQUE)', 'GUASAPAMPA 743', '3525583383', 'Jesus Maria', '', '', '9 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(729, 'YOHANA LEGUIZAMON (SIERRAY PARQUE)', 'SIERRA DE MAZA 844', '3525541027', 'Jesus Maria', '', '', '09.30 A 22HS', 0, '0000-00-00', '0000-00-00'),
(730, 'DANIELA IBARRA (SIERRA Y PARQUE)', 'CERRO LOS GIGANTES 770', '35255506382', 'Jesus Maria', '', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(731, 'LORENA GUZMAN (SIERRA Y PARQUE)', 'COMECHINGONES 490', '3525534364', 'Jesus Maria', '', '', '9 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(732, 'ROSA GUZMAN (SIERRA Y PARQUE)', 'GUASAPAMPA 301', '3525562627', 'Jesus Maria', '', '', '09 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(733, 'MARIA VANEGA (SIERRA Y PARQUE)', 'CERRO URITORCO 286', '3525523229', 'Jesus Maria', '', '', '9 A 23 HS', 0, '0000-00-00', '0000-00-00'),
(734, 'Ximena Martinez', 'Mercedes 1531 (la rioja y salta. 2 plantas)', '3572400241', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(735, 'WALTER COOL', 'MIGUEL JUAREZ 711 ESQ LA RIOJA', '3525457032', 'Jesus Maria', '', '', '8 A 14 HS Y 16.30 A 21 HS', 0, '0000-00-00', '0000-00-00'),
(736, 'SILVIA GIAQUINTA', 'LA TOMA 591', '-', 'Jesus Maria', '', '', '09 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(737, 'SOLEDAD PUIG', 'GENERAL BUSTOS 1506', '3549472867', 'Jesus Maria', '', '', '9 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(738, 'CLAUDIA GAMRUN', 'LA ISLA 766', '3525419780', 'Jesus Maria', '', '', '-', 0, '0000-00-00', '0000-00-00'),
(739, 'SONIA', 'LAVALLEJA ESQ AMERICA', '3525500568', 'Jesus Maria', '', '', '08.30 A 13 Y 18.30 A 22', 0, '0000-00-00', '0000-00-00'),
(740, 'MARIO CASTRO', 'CALLE 6 ESQ 43', '3525453912', 'Colonia Caroya', 'Cordoba', '', '08.30 A 14 HS', 0, '0000-00-00', '0000-00-00'),
(741, 'Merjildo', 'Santa Cruz y Matienzo', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(742, 'CLAUDIA ALDECOBA', 'RUTA9 AL LADO DEL BAR', '3525565057', 'Gral Paz', 'Cordoba', '', '8 A 13 HS', 0, '0000-00-00', '0000-00-00'),
(743, 'CAROLINA DIAZ (SIERRA Y PARQUE)', 'COPACABANA 67', '3525631871', 'Jesus Maria', 'Cordoba', '', '8 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(744, 'MARIA JOSE ALBERTO (SIERRA Y PARQUE)', 'PARQUE LOS GLASEARES 434', '-', 'Jesus Maria', 'Cordoba', '', '8.30 A 22', 0, '0000-00-00', '0000-00-00'),
(745, 'Melani Millicay', 'Jose De Sobradiel entre castellano y jujuy', '3572584859', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(746, 'ALFREDO FERRERO', 'LAVALLEJA ESQ CONGRESO', '3525487652', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(747, 'Miriam Barrera', 'Casa Vero', '-', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(748, 'Victoria Palacios', 'Casa Vero', '-', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(749, 'Adriana Ansolini', 'Calle 46 al 4219', '3525503259', 'Colonia Caroya', 'Cordoba', '', '8 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(750, 'Gisel Suarez', 'Calle 45 al 2347', '-', 'Colonia Caroya', 'Cordoba', '', '9.30 a 13.30', 0, '0000-00-00', '0000-00-00'),
(751, 'Claudio Rivero', 'Calle 18 Sur al 10 LOCAL 3', '3525550411', 'Colonia Caroya', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(752, 'Josefa de Diaz', 'Pedro Patat BIS 550', '3525468238', 'Colonia Caroya', '', '', '9 a 15 hs', 0, '0000-00-00', '0000-00-00'),
(753, 'Aedey Chavarria (Sierra y Parque)', 'Los Glaseares 936', '3525538825', 'Jesus Maria', 'Cordoba', '', '8.30 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(754, 'Despensa Fabri (Sierra y Parque)', 'Comechingones 247', '3525614098', 'Jesus Maria', 'Cordoba', '', '9 a 22hs', 0, '0000-00-00', '0000-00-00'),
(755, 'Noela Marote', 'Santa Fe 372', '3525455727', 'Gral Paz', 'Cordoba', '', '7.30 a 13.30 hs', 0, '0000-00-00', '0000-00-00'),
(756, 'Abel Mondino', 'Jhon Kenedy 182', '3525422163', 'Jesus Maria', 'Cordoba', '', '8 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(757, 'Mcarena Moreno', 'Ameghino 317', '3525631844', 'Jesus Maria', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(758, 'Macarena Moreno', 'Ameghino 317', '3525631844', 'Jesus Maria', 'Cordoba', '', '9 a 14 Hs', 0, '0000-00-00', '0000-00-00'),
(759, 'Liliana Castillo', 'Calle 38 Sur 325', '3525534346', 'Colonia Caroya', 'Cordoba', '', '9 a 22 HS', 0, '0000-00-00', '0000-00-00'),
(760, 'Santiago Fazi', 'Patat 396 Sur', '3525541932', 'Colonia Caroya', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(761, 'Gerardo Ortiz', 'San Martin 188 esq 1', '3525435009', 'Colonia Caroya', 'Cordoba', '', '08.30 a 13hs', 0, '0000-00-00', '0000-00-00'),
(762, 'Debora Gutierrez', 'Calle 14 y 46 Sur 205', '3525415871', 'Colonia Caroya', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(763, 'Florencia valle(SIERRA Y PARQUE)', 'sierra de las peñas 1058', '3525622911', 'Jesus Maria', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(764, 'Mariela Boscato(SIERRA Y PARQUE)', 'Cerro Uritorco 457', '3525435466', 'Jesus Maria', 'Cordoba', '', '9:30 a 13:30 hs', 0, '0000-00-00', '0000-00-00'),
(765, 'Leticia Torres', 'Hipolito Irigoyen 1615', '3572593927', 'Rio Segundo', 'Cordoba', '', 'Hasta las 13', 0, '0000-00-00', '0000-00-00'),
(766, 'Irma Garcia', 'Jose Ingeniero 2053', '3525480681', 'Jesus Maria', 'Cordoba', '', '9 a 15 hs', 0, '0000-00-00', '0000-00-00'),
(767, 'Daniel Rizi', 'Miguel Juarez 935', '3525447758', 'Jesus Maria', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(768, 'Yamila Luberchi', 'La Rioja 693', '3515143758', 'Jesus Maria', 'Cordoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(769, 'Jose Ledezma (Veronica)', '-', '-', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(770, 'Maria Jose Silva', 'Ramon J Carcano 554', '3525488282', '', '', '', '7 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(771, 'Nestor Libra', 'Sabatinni 161', '3572481824', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(772, 'Verduleria La Familia', 'San Martin 4764', '3525680578', 'Colonia Caroya', 'Cordoba', '', '8 a 13.30', 0, '0000-00-00', '0000-00-00'),
(773, 'Julio Rojas', 'Don Bosco 370', '3525439207', 'Colonia Caroya', 'Cordoba', '', '8.20 a 22', 0, '0000-00-00', '0000-00-00'),
(774, 'Marta Paredes', 'Carlos Besso 956', '3518570716', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(775, 'Piturro 2', 'Cordoba y Lavalle', '3572536904', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(776, 'Dayana Albendaño (SYP)', 'Guasapampa Esq Champaqui', '3525478384', 'Jesus Maria', 'Cordoba', '', '9.30 A 22', 0, '0000-00-00', '0000-00-00'),
(777, 'Norma Leguizamon SYP', 'Macha 43', '3525302808', 'Jesus Maria', '', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(778, 'Gabriela Martinez', 'Libertad 1495', '3525606109', 'Jesus Maria', 'Cordoba', '', '9.30 a 15 hs', 0, '0000-00-00', '0000-00-00'),
(779, 'El Bayo', 'Juan B Justo 1355', '3525476094', 'Jesus Maria', 'Cordoba', '', '9.30 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(780, 'Miriam (Vero)', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(781, 'Nestor', '-', '-', '-', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(782, 'Fabian Grion', 'Don Bosco 3541', '3525456051', 'Jesus Maria', 'Cordoba', '', '7 a 13hs', 0, '0000-00-00', '0000-00-00'),
(783, 'Walter Grandi', 'La Isla 766', '3525537709', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(784, 'Yesica Bosio', 'Arturo Illia 231', '3518177550', 'Colonia Tirolesa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(785, 'Mariana Contreras', 'Arturo Ilia 632', '3513242332', 'Colonia Tirolesa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(786, 'Aymara', 'Av. San Martin 50 Local 2', '-', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(787, 'Daniela Bustamante', 'Miguel Juarez 810', '3521452167', 'Jesus Maria', 'Cordoba', '', '9.30 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(788, 'Dandy 2', 'Juan Bautista Alberdi esq Belgrano', '3572596536', 'Pilar', 'Cordoba', '', '8 a 23hs', 0, '0000-00-00', '0000-00-00'),
(789, 'Claudia Carballo', 'Balbin 1311', '3547566761', 'Alta Gracia', 'Cordoba', '', '9.30 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(790, 'Guillermo Molina', 'Roberto Saieg 1316', '3518178081', 'Alta Gracia', 'Cordoba', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(791, 'Graciela Loyola', 'Aguirre Camara y Zabala Ortiz', '3547650634', 'Alta Gracia', 'Cordoba', '', '9 a 22hs', 0, '0000-00-00', '0000-00-00'),
(792, 'Mara Acosta', 'Americo Aguilera 1340', '3574543385', 'Alta Gracia', 'Cordoba', '', '9 a 00', 0, '0000-00-00', '0000-00-00'),
(793, 'Claudio Bobeda', 'Los Quebrachos 1920', '3547593298', 'Alta Gracia', '', '', '9.30 a 14 y 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(794, 'Elvio Villaverde', 'Paraguay esq Santillan', '3547592073', 'Alta Gracia', 'Cordoba', '', '9.30 a 00', 0, '0000-00-00', '0000-00-00'),
(795, 'Estela Sanchez', 'Raul Alffonsin Casa 3', '3547572824', 'Alta Gracia', 'Cordoba', '', '24 HS', 0, '0000-00-00', '0000-00-00'),
(796, 'Los Changuitos (Diego)', 'General Lopez 1069', '3547562312', 'Alta Gracia', 'Cordoba', '', '9 a 14 y 17.30 a 22', 0, '0000-00-00', '0000-00-00'),
(797, 'Belen Marmol', 'Julio Antun 825', '3547667544', 'Alta Gracia', '', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(798, 'Carlos Romero (Despensa Yrogoyen)', 'Hipolito Yrigoyen 1026', '-', 'Alta Gracia', 'Cordoba', '', '9.30 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(799, 'Laura Britos', 'Hipolito Yrigoyen 1269', '3547453996', 'Alta Gracia', 'Cordoba', '', '11.30 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(800, 'Gabriela Fernando Chaparro', 'Hipolito Yrigoyen 1333', '3547598239', 'Alta Gracia', 'Cordoba', '', '9 a 14.30 hs', 0, '0000-00-00', '0000-00-00'),
(801, 'Angelina Papa', 'Hipolito Yrigoyen 1165', '3547639547', 'Alta Gracia', 'Cordoba', '', '9.30 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(802, 'Doris Bronzone', 'Hipolito Yrigoyen', '3547585542', 'Alta Gracia', 'Cordoba', '', '9.30 a 16 hs', 0, '0000-00-00', '0000-00-00'),
(803, 'Alejandro Olivares', 'Daniger 363', '354715164', 'Alta Gracia', 'Cordoba', '', '11 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(804, 'Despensa Susy', 'Ecuador 1909', '3547674748', 'Alta Gracia', 'Cordoba', '', '8 a 15 hs', 0, '0000-00-00', '0000-00-00'),
(805, 'Andrus Edu', 'Paraná y Uruguay', '3512405915', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(806, 'Daniel Ferreyra', 'Uruguay esq Cirilo Allande', '3547455116', 'Alta Gracia', 'Cordoba', '', '8 a 13.30 hs', 0, '0000-00-00', '0000-00-00'),
(807, 'Valentina Gili', 'Agustin Aguirre y Llorens', '3547597457', 'Alta Gracia', 'Cordoba', '', '8 a 13.30', 0, '0000-00-00', '0000-00-00'),
(808, 'Walter', 'Roberto Saieg 540', '3574574963', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(809, 'Nahuel Arias', 'Julio Anton esq Yrigoyen', '3547610778', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(810, 'Pamela Farias', 'Julio Anton esq Lavalle', '3547450313', 'Alta Gracia', 'Cordoba', '', '8 a 14 - 18 a 22', 0, '0000-00-00', '0000-00-00'),
(811, 'Lorena Leguizamon', 'Paraguay esq Cuba', '3547598796', 'Alta Gracia', 'Cordoba', '', '9.30 a 14.30 - 18.30 a 22', 0, '0000-00-00', '0000-00-00'),
(812, 'Sandra Olmedo', 'Santillan esq Paraguay', '3547642848', 'Alta Gracia', 'Cordoba', '', '8 a 14.30 - 17 a 22.30', 0, '0000-00-00', '0000-00-00'),
(813, 'Natalia Bosque', 'Consejal Loruso esq Ecuador', '3547446503', 'Alta Gracia', 'Cordoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(814, 'Elisabeth Gagliardi', 'Hipolito Yrigoyen 1770', '35474560352', 'Alta Gracia', 'Cordoba', '', '8 a 14 - 16 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(815, 'Panaderia Santa Rita', 'Hipolito Yrigoyen 1695', '3547532983', 'Alta Gracia', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(816, 'Daniel Chavez', 'Hipolito Yrigoyen 1505', '3547612285', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 hs', 0, '0000-00-00', '0000-00-00'),
(817, 'Cristian Rafaelli', 'Los Lapachos 57', '3516109078', 'Alta Gracia', 'Cordoba', '', '9 a 14.30 hs', 0, '0000-00-00', '0000-00-00'),
(818, 'Agustina Falcinelli', 'Jose Rossi 54', '3572585465', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(819, 'Mirta Duan - Granja Aluem', 'San Juan Bosco 360', '3547632491', 'Alta Gracia', 'Cordoba', '', '8.30 a 13', 0, '0000-00-00', '0000-00-00'),
(820, 'Leonardo Navarro', 'Castellano y Ituzaingo', '3547563360', 'Alta Gracia', 'Cordoba', '', '9 a 14.30 hs', 0, '0000-00-00', '0000-00-00'),
(821, 'Antonella Vatt', 'Concordia 184 esq Suipacha', '3547530179', 'Alta Gracia', 'Cordoba', '', '8.30 a 13 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(822, 'Sonia Guerrero', 'Montamat 1271', '3547671717', 'Alta Gracia', 'Cordoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(823, 'Natalia Soria', 'Carlos Miguel Avazi esq  Calle 10', '3547448166', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17 a 22.30', 0, '0000-00-00', '0000-00-00'),
(824, 'Rodrigo Mancini', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(825, 'Franco Mancini', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(826, 'Daniel Fernandez (El Gallito)', 'Piquillin esq Varillas', '3513044676', 'Alta Gracia', 'Cordoba', '', '7 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(827, 'Rodolfo Ribulgo (Adriana)', 'Prudencio Bustos 1032', '3547590230', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17.30 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(828, 'Nelida Olga Reartes', 'Italia 1057', '3547504192', 'Alta Gracia', 'Cordoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(829, 'La Pata Loca', 'Hipolito Yrigoyen 1422', '3547502244', 'Alta Gracia', 'Cordoba', '', '10 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(830, 'Walter San Martin', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(831, 'Renzo Oviedo', 'Balbin 266', '3512474414', 'Alta Gracia', 'Cordoba', '', '8 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(832, 'Norma Diaz', 'Hipolito Yrigoyen 1125', '3547477751', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(833, 'Jesica Pizzati', 'Segundo Blanco 1587', '3572525351', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(834, 'Claudia Zarraga', 'La Isla 763 Local 3', '3525455554', 'Jesus Maria', 'Cordoba', '', '8.30 a 13.30', 0, '0000-00-00', '0000-00-00'),
(835, 'Mariel Spicogna', 'La Isla 766 Local 1', '3525449687', 'Jesus Maria', 'Cordoba', '', '9.30 a 13.30', 0, '0000-00-00', '0000-00-00'),
(836, 'Alejandro Araujo', 'Calle 8 810', '3547464258', 'Alta Gracia', '', '', '9 a 22 Hs', 0, '0000-00-00', '0000-00-00'),
(837, 'Gabriela Lopez', 'Zellaya esq Calle 1', '3512012601', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(838, 'Pedro Dovganj', 'Consejal Alonso 1174', '3574664679', 'Alta Gracia', 'Cordoba', '', '9.30 a 14 Hs', 0, '0000-00-00', '0000-00-00'),
(839, 'Miguel Gilez', 'Falucho 630', '3574449331', 'Alta Gracia', 'Cordoba', '', '10 a 17 hs', 0, '0000-00-00', '0000-00-00'),
(840, 'Javier Amarilla', 'San Martin 3490', '3525640920', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(841, 'Alfredo Uranga', 'Lupi esq Mariano Moreno', '3547504862', 'Alta Gracia', 'Cordoba', '', '9 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(842, 'Martin Garcia', 'Consejal Alonzo', '3547596937', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(843, 'Kiosco Candela', 'Saavedra 942', '3547660203', 'Alta Gracia', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(844, 'Analia Ortiz', 'Salta 1080', '3547512093', 'Alta Gracia', 'Cordoba', '', '9 a 13.30', 0, '0000-00-00', '0000-00-00'),
(845, 'Eliana Cuello', 'Mendoza 751', '3547512093', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(846, 'Marcelo Pereyra', 'Garzon esq Rivadavia', '3547530767', 'Alta Gracia', 'Cordoba', '', '9 a 23', 0, '0000-00-00', '0000-00-00'),
(847, 'Ana Toranzo', 'Bahia Blanca 455', '3517378919', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17.30 a 22.30', 0, '0000-00-00', '0000-00-00'),
(848, 'Noelia Palacios', 'Intendente Cesped 601', '3525508315', 'Jesus Maria', 'Cordoba', '', '7 a 22', 0, '0000-00-00', '0000-00-00'),
(849, 'Liliana Zanforlin', 'Miguel Juarez 506', '-', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(850, 'Mirta Lazarte', 'Calle 41 al 1368', '3525539487', 'Colonia Caroya', 'Cordoba', '', '9 a 14', 0, '0000-00-00', '0000-00-00'),
(851, 'Maria Cristina Gonzales', 'Nuñez esq Mendoza', '3547608990', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(852, 'Vanesa Carpio', 'Liniers esq 3 de Febrero', '3547573457', 'Alta Gracia', '', '', '9 a 13 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(853, 'Alejandro Kiosco Al Toque', 'Liniers 460', '3547575441', 'Alta Gracia', 'Cordoba', '', '7 a 13', 0, '0000-00-00', '0000-00-00'),
(854, 'Roxana Nievas', 'Margarita Funes 232', '3547632152', 'Alta Gracia', 'Cordoba', '', '9.30 a 13.30 - 18 a 22', 0, '0000-00-00', '0000-00-00'),
(855, 'Maria Isabel Navarro', 'Primero de Mayo esq Moscini', '3547575306', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(856, 'Norma', 'Rafael Lozada 383', '3547420271', 'Alta Gracia', 'Cordoba', '', '8 a 13 - 16 a 20', 0, '0000-00-00', '0000-00-00'),
(857, 'Blanca Moreyra', 'Cjal Alonso 306', '3547671805', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 17.30 a 20.30', 0, '0000-00-00', '0000-00-00'),
(858, 'Joaquin Dejesus.', 'San Juan Bosco 383', '3547459395', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(859, 'Juan Mancini', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(860, 'Andrea Bastos', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(861, 'Federico Britos', 'Calle 18 al 10 Local 10', '3512237028', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(862, 'Dolivo Hnos', 'Angel Cragnolini esq Jose Dolivo', '3525641279', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(863, 'Lorena Caparroz', 'Zarate Brazo Lago esq Cordoba', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(864, 'Yanina Sanchez', 'Hipolito Yrigoyen 1680', '3547611193', 'Alta Gracia', 'Cordoba', '', '10.30 a 00', 0, '0000-00-00', '0000-00-00'),
(865, 'Laura Farias', 'Mexico Y Dorrego 1191', '3525618950', 'Jesus Maria', 'Cordoba', '', '9 a 23', 0, '0000-00-00', '0000-00-00'),
(866, 'Supermercado China', 'Mariano Moreno esq Hipolito Yrigoyen', '3516638746', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(867, 'Moira Kiosko El Barto', 'Liniers 301', '3547611365', 'Alta Gracia', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(868, 'Laura Simbron', '24 de septiembre 597', '3512467883', 'Alta Gracia', 'Cordoba', '', '8.30 a 14.30 / 17 a 22', 0, '0000-00-00', '0000-00-00'),
(869, 'Cristian Zuleta', 'La Plata 791', '3547571747', 'Alta Gracia', 'Cordoba', '', '9 a 13 / 17 a 21.30', 0, '0000-00-00', '0000-00-00'),
(870, 'Jessica San Martin', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(871, 'Alberto Chavarria', 'Suipacha 1430', '3547439640', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(872, 'Diego Sandoval', 'Calle 7 228', '3547469160', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(873, 'Catalina Vilar', 'Malvina 1465', '3547501790', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(874, 'Andrea Toledo', 'Mariano Moreno 1029', '3547521892', 'Alta Gracia', 'Cordoba', '', '10 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(875, 'Cecilia Bacile', '3 de Febrero y Manuel Solares', '3547604617', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(876, 'Monica Ortega', 'Liniers 587', '3547595401', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(877, 'Alejandro Gomez', 'Av. De Mayo 52', '3547455522', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(878, 'Jorge Rivas', 'Av Libertador 1130', '3547463901', 'Alta Gracia', 'Cordoba', '', '9 a 13 - 16.30 a 21', 0, '0000-00-00', '0000-00-00'),
(879, 'Forrajeria Simba', 'Hipolito Yrigoyen', '3516249847', 'Alta Gracia', 'Cordoba', '', '10 a 14 - 15 a 19', 0, '0000-00-00', '0000-00-00'),
(880, 'Yohana Casa Nueva Luna', 'Av Libertador 625', '3547501996', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(881, 'Matias Martin', 'Brasil 1137', '3547635652', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 18 a 22', 0, '0000-00-00', '0000-00-00'),
(882, 'Andrea Miranda', 'Hipolito Yrigoyen 1144', '3547531182', 'Alta Gracia', 'Cordoba', '', '9.30 a 22', 0, '0000-00-00', '0000-00-00'),
(883, 'Jose Mendez', 'Marcos Perdia 1063 Local 1', '3517737013', 'Jesus Maria', 'Cordoba', '', '8 a 23', 0, '0000-00-00', '0000-00-00'),
(884, 'Karina Ternaski', 'Dalinger 311', '3547639156', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(885, 'Diego Zagaglia', 'Yrigoyen 1290', '3532498931', 'Laguna Larga', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(886, 'Despensa Chiche (Diego)', 'Av. Argentina esq Viamonte', '3547562312', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(887, 'Noelia', 'Celestina De Aguero 10 (al lado de YPF)', '3514021443', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(888, 'Juan Montoya', 'Av. Mayo 129', '3547452602', 'Alta Gracia', 'Cordoba', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(889, 'Farmacia Birouste', 'Av. Mayo 33', '3547629721', 'Alta Gracia', 'Cordoba', '', '8.45 a 13 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(890, 'Melisa Mancini', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(891, 'Micaela Rodriguez', 'Hipolito Yrigoyen 1132', '3547663765', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(892, 'Roxana Cesar', 'Dalinger 472', '3515323177', 'Alta Gracia', 'Cordoba', '', '9.30 a 13 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(893, 'Camila Suarez', 'Dalinger 93', '3547625672', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(894, 'Sonia Melian', 'Francisco Cabrera 507', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(895, 'Capp Dan', 'Sobremonte 645', '3573411397', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(896, 'Li Hui', 'Colon 45', '3513924614', 'Villa del Rosario', 'Cordoba', '', '8.30', 0, '0000-00-00', '0000-00-00'),
(897, 'Rodrigo Racca', 'San Martin 545', '3533447557', 'Villa del Rosario', 'Cordoba', '', '9.30 a 12.30', 0, '0000-00-00', '0000-00-00'),
(898, 'Juliana Piergentelli', 'Obispo Ferreyra 580', '3573496241', 'Villa del Rosario', '', '', '', 0, '0000-00-00', '0000-00-00'),
(899, 'Javier Antonucci', 'Sarmiento 215', '-', 'Villa del Rosario', '-', '', '8 a 13 - 16.30 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(900, 'Claudio Martin Rivarola', 'Raul Soldi y Fernando Fader', '-', 'Villa del Rosario', '', '', '9 a 15 - 17 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(901, 'Liliana Soledad Gomez', 'Jeronimo del Barco 1165', '3573402125', 'Villa del Rosario', '', '', '8 a 13.30 - 16 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(902, 'Ercolico Quintero', 'San Martin 1331', '-', 'Villa del Rosario', 'Cordoba', '', '10 a 14 hs - 18 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(903, 'Andres Nevado', 'Cordoba 924', '3573411489', 'Villa del Rosario', 'Cordoba', '', '8 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(904, 'Mario Buffa', 'San Martin 430', '3573464483', 'Villa del Rosario', 'Cordoba', '', 'Desde 11 hs', 0, '0000-00-00', '0000-00-00'),
(905, 'Tefa Rogiero', 'San Martin 508', '3517538568', 'Villa del Rosario', '', '', '10 a 13.30 - 15 en adelan', 0, '0000-00-00', '0000-00-00');
INSERT INTO `clientes` (`id`, `nombre`, `Direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `clihab`, `createdAt`, `updatedAt`) VALUES
(906, 'Mario Gaido', '25 de Mayo 1295', '3573690922', 'Villa del Rosario', 'Cordoba', '', '9 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(907, 'Juan Masciarelli', '25 de Mayo 873', '3512136121', 'Villa del Rosario', 'Cordoba', '', '10 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(908, 'Matias Juan Pablo', 'Cordoba 537', '3573412299', 'Villa del Rosario', 'Cordoba', '', '9 a 13 - 16 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(909, 'Marisa Taborda', 'Sarmiento esq Martin Olmos y Aguilera', '3573404464', 'Villa del Rosario', 'Cordoba', '', '09 a 12 - 16 a 20', 0, '0000-00-00', '0000-00-00'),
(910, 'Sergio Corzo', 'Obispo Ferreyra 1451', '3573430829', 'Villa del Rosario', 'Cordoba', '', '8.30 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(911, 'Chen Xialon (Villa Del Rosario)', 'Cordoba esq Los Ranchos', '3573443685', 'Villa del Rosario', 'Cordoba', '', '09 a 13 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(912, 'Daniela Zate', 'Martinez Olmos y Aguilera 467', '3573431748', 'Villa del Rosario', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(913, 'Nelson Santoro', 'Norberto Dutari 250', '3573431188', 'Villa del Rosario', 'Cordoba', '', '8 a 13 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(914, 'Norma Cuello', 'Belisario Roldan 487', '3547624626', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(915, 'Norberto Sosa', 'Avanci esq 10 (Negocio Rojo)', '-', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(916, 'Amalia Bazan', 'Mariano Moreno esq Lupi', '-', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(917, 'Yanina Zubata', '3 de Febrero 1194', '-', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(918, 'Panaderia Olmos', 'Olmos 501', '3547653347', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(919, 'Dino Reimomdi', 'Av. De Mayo 539', '3547592721', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(920, 'Fernando Fassi (Kiosco Vigote)', 'San Martin 1930', '3525477227', 'Colonia Caroya', 'Cordoba', '', 'Corrido', 0, '0000-00-00', '0000-00-00'),
(921, 'Valeria Roldan', 'San Martin 6808', '3525461478', 'Colonia Caroya', 'Cordoba', '', '8 a 13 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(922, 'Delmonte Aguada', 'Ruta 9 629 (Axion)', '3572437398', 'Oncativo', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(923, 'Nelida Nanzer', 'San Martin 205', '3572583461', 'Oncativo', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(924, 'Gabriel Aguirre', 'Maipu 243', '2657309955', 'Oncativo', 'Cordoba', '', '7 a 12 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(925, 'Susana Terreno', 'Independencia 243', '3572457389', 'Oncativo', 'Cordoba', '', '8 a 12 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(926, 'Mabel Heredia', 'Yapeyu 132 esq Sucre', '3513531259', 'Oncativo', 'Cordoba', '', '8 a 12.30 - 16.30 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(927, 'Margot Villafañe', 'La Rioja 311', '3572506113', 'Oncativo', 'Cordoba', '', '8 a 12.30 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(928, 'Gladys Gallo', 'Pelegrini 418', '3572526634', 'Oncativo', 'Cordoba', '', '8 a 12 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(929, 'Javier Hernan Lambertussi', 'Paso Y Pelegrini', '3572403715', 'Oncativo', 'Cordoba', '', '8 a 13 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(930, 'Maria Soledad Toscano', 'Buenos Aires 1366', '3572527831', 'Oncativo', 'Cordoba', '', '8ha a 13hs 15hs 20hs', 0, '0000-00-00', '0000-00-00'),
(931, 'Jimena Mondino', 'Tucuman 622', '3572530404', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(932, 'Graciela Rojas', 'Saavedra 245', '3572503865', 'Oncativo', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(933, 'Fabian Davico', 'Alem y La Tablada', '3572552297', 'Oncativo', 'Cordoba', '', '7.30 a 13 - 16.30 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(934, 'Maria Josefa Rinaldi', 'San Martin 1213', '3572594395', 'Oncativo', 'Cordoba', '', '7hs 13hs 16hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(935, 'Veronica Raquel Lago', '25 de Mayo 1096', '3572504867', 'Oncativo', 'Cordoba', '', '8.30 a 13.30 hs', 0, '0000-00-00', '0000-00-00'),
(936, 'Martin Barrionuevo', 'Belgrano 1196', '3572609133', 'Oncativo', 'Cordoba', '', '8.30 a 13 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(937, 'Mayra Hernandez', 'Av. Padre Viera 65', '3547675289', 'Alta Gracia', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(938, 'Fernanda De Guevara', 'Estrada 978', '3525441414', 'Jesus Maria', 'Cordoba', '', '9.30 a 14 - 16.30 a 21.30', 0, '0000-00-00', '0000-00-00'),
(939, 'Carolina Luna .', 'Estrada 853', '3525485907', 'Jesus Maria', 'Cordoba', '', '13 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(940, 'Agustina', 'Carabela 845', '3525 415396', 'Jesus Maria', 'Cordoba', '', '8 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(941, 'Patricia Rodriguez', 'Tucuman 1122', '3525442900', 'Jesus Maria', 'Cordoba', '', '8.30 a 12 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(942, 'Mariela Nocelli', 'Chile 63', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(943, 'Marina Ferreyra', 'Gral Campos esq Santa Fe', '3572534271', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(944, 'Paola Rodriguez', '3 de Febrero 1120', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(945, 'Brenda Criado', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(946, 'Osvaldo Limdo', 'Agustin Aguirre entre Alvear e Italia', '-', 'Alta Gracia', '', '', '9 a 13 - 16 a 19', 0, '0000-00-00', '0000-00-00'),
(947, 'Sebastian Pereyra', 'Eustaquio Velazquez 169', '3547479792', 'Alta Gracia', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(948, 'Claudia Villarreal', 'Americo Aguilera', '3547 67629', 'Alta Gracia', 'Cordoba', '', '9 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(949, 'Cesar Palacios', 'Ema Ceballos 156', '3547566250', 'Alta Gracia', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(950, 'Ivan Martinez', '3 de Febrero 1090 y Godoy Nuñez', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(951, 'Joaquin Heredia', 'Buchardo 1445 esq America', '352527702', 'Jesus Maria', 'Cordoba', '', '10 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(952, 'El Beto', 'Buchardo 1418', '3525444864', 'Jesus Maria', 'Cordoba', '', '10 a 14 y 18y30 a 21y30', 0, '0000-00-00', '0000-00-00'),
(953, 'Paula Marshal', 'Almirante Brow 1260 Local 2', '3525643469', 'Jesus Maria', 'Cordoba', '', '9 a 12y30 y 17 a 20y30', 0, '0000-00-00', '0000-00-00'),
(954, 'Juan Torres', 'Paso De Los Andes 1165', '3525606881', 'Jesus Maria', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(955, 'Federico Pugener', 'La Madrid 838', '3572526827', 'Oncativo', 'Cordoba', '', '8:30 a 12:00 16hs 20hs', 0, '0000-00-00', '0000-00-00'),
(956, 'Yan Huayuan', 'La Madrid 881', '3572538464', 'Oncativo', 'Cordoba', '', '15:30 a 19hs', 0, '0000-00-00', '0000-00-00'),
(957, 'Valeria Pavon', '25 de Mayo 1364', '3572586445', 'Oncativo', 'Cordoba', '', '7ha a 13:30 15:30 a 19hs', 0, '0000-00-00', '0000-00-00'),
(958, 'Erica Fonsalida', 'Puerto Argentino 1540', '3572570763', 'Oncativo', 'Cordoba', '', '8hs 13:30 16:30 a 20hs', 0, '0000-00-00', '0000-00-00'),
(959, 'Li Ling', 'San Martin 805', '-', 'Oncativo', 'Cordoba', '', '8ha 12:30 y de 16hs  19hs', 0, '0000-00-00', '0000-00-00'),
(960, 'Alejandro Rubiolo', 'French 319', '3572690642', 'Oncativo', 'Cordoba', '', '8hs 20hs', 0, '0000-00-00', '0000-00-00'),
(961, 'Sandra Zorrilla', 'Tomas Grazon 661', '3572435792', 'Oncativo', 'Cordoba', '', '8hs 00hs', 0, '0000-00-00', '0000-00-00'),
(962, 'Carolina Baldonsini', 'Belgrano 212', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(963, 'German Casas', 'San Martin esq Pje Ardiles', '3573456888', 'Villa del Rosario', '', '', '7hs 20hs', 0, '0000-00-00', '0000-00-00'),
(964, 'Federico Fernandez', 'San Martin 799', '3573454157', 'Villa del Rosario', 'Cordoba', '', '8hs 13hs 17hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(965, 'Guillermo Rech', 'San Martin 542', '3573499833', 'Villa del Rosario', 'Cordoba', '', '9ha 12:30hs 18:30 20hs', 0, '0000-00-00', '0000-00-00'),
(966, 'Ariel Pucheta', 'Pedro Novile 561', '3525526328', 'Sinsacate', 'Cordoba', '', '8 a 13.30 - 16.30 a 19.30', 0, '0000-00-00', '0000-00-00'),
(967, 'Leonor Elizabeth Motura', 'San Martin 4735', '3525562728', 'Colonia Caroya', 'Cordoba', '', '8y30 a 13 y 16y30 a 19', 0, '0000-00-00', '0000-00-00'),
(968, 'Patricia Sanabria', 'Calle 4 esq 43', '3525643196', 'Colonia Caroya', 'Cordoba', '', '8am a 9pm', 0, '0000-00-00', '0000-00-00'),
(969, 'Tita Daniel', 'San Martin 5198', '3525431910', 'Colonia Caroya', 'Cordoba', '', '8y30 a 13y30  15y30 a 19', 0, '0000-00-00', '0000-00-00'),
(970, 'Paola Santucho', 'Calle 45 3686', '3515174440', 'Colonia Caroya', 'Cordoba', '', 'Por la Mañana', 0, '0000-00-00', '0000-00-00'),
(971, 'Claudia Gomez', 'Jose Mateo Luque 1330', '3573445135', 'Villa del Rosario', 'Cordoba', '', '9hs 21hs', 0, '0000-00-00', '0000-00-00'),
(972, 'Jorge Bernardi', 'Cordoba 951', '3572571034', 'Pilar', 'Cordoba', '', '8.30 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(973, 'Soledad Martinez', 'Huayra Muyu esq. Achiras', '3547650527', 'Alta Gracia', 'Cordoba', '', 'De Corrrido', 0, '0000-00-00', '0000-00-00'),
(974, 'Celeste Alrutia', 'Rawson 100', '3547678543', 'Alta Gracia', 'Cordoba', '', '9:30 a 14:3016:30 a 19hs', 0, '0000-00-00', '0000-00-00'),
(975, 'Susana Guitierrez', 'Coletora Ruta 5 esq Mariano Moreno', '3513988216', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(976, 'Matias Limba', 'Colectora ruta 5 y Mariano Moreno', '3457 516512', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(977, 'Maria Elena Torres', 'Barbeito 351', '3547581144', 'Alta Gracia', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(978, 'Perla Noelia Deltel', 'Entre Rios Esq Hipolito Yrigoyen', '3572522884', 'Pilar', 'Cordoba', '', '9hs 13hs 16hs 20hs', 0, '0000-00-00', '0000-00-00'),
(979, 'Sandra Fernandez', 'Yrigoyen esq Molina Campo', '3572501826', 'Pilar', 'Cordoba', '', '9hs 13hs y 16:30 a 20:30h', 0, '0000-00-00', '0000-00-00'),
(980, 'Yamila Pereyra', 'Néstor Kirchner esq Hipólito irigoyen', '3572506273', 'Pilar', 'Cordoba', '', '10hs 22hs', 0, '0000-00-00', '0000-00-00'),
(981, 'Bruno Delgado', '-', '-', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(982, 'Norberto Torres', 'Gildo Giotto 525', '3516133073', 'Pilar', 'Cordoba', '', '8:30 a 13 y 17 a 20hs', 0, '0000-00-00', '0000-00-00'),
(983, 'Ines Murau', 'Aguaribay Entre R. Nuñez y Zenon Lopez', '3572438413', 'Pilar', 'Cordoba', '', '9hs 15hs', 0, '0000-00-00', '0000-00-00'),
(984, 'Miguel Alberto Gonzalez', 'Neuquen 245', '3517722596', 'Rio Segundo', 'Cordoba', '', '8hs a 14hs 17hs 21:30', 0, '0000-00-00', '0000-00-00'),
(985, 'Isabel Soria', 'Ruta 9 esq Pueyrredon', '3572507188', 'Pilar', 'Cordoba', '', '8hs 21hs', 0, '0000-00-00', '0000-00-00'),
(986, 'Mauro Lopez', '25 De Mayo 979', '-', 'Villa del Rosario', 'Cordoba', '', '8 a 13 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(987, 'Celeste Angulo', 'Malvinas Argentinas 1146', '3573413625', 'Villa del Rosario', 'Cordoba', '', '9 a 13 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(988, 'Monica Del Valle Guerrero', 'Cordoba 1241', '3573498890', 'Villa del Rosario', 'Cordoba', '', '9 a 11 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(989, 'Yanina Soledad Barbosa', 'Sarmiento 1440(es una casa)', '-', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(990, 'Granatelli Maria Rosa', 'Colon 106', '3572596885', 'Oncativo', 'Cordoba', '', '9 a 12 y 16 a 20', 0, '0000-00-00', '0000-00-00'),
(991, 'Dias Graciles del Valle', 'Combatiente de Malvinas 1560', '3572532787', 'Oncativo', 'Cordoba', '', '8 a 20', 0, '0000-00-00', '0000-00-00'),
(992, 'Adrian', 'Lucas V. Cordoba 950', '3547592151', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(993, 'Corina Franco SYP', 'Cerro Los Gigantes 606 esq. Macha', '3525554131', 'Jesus Maria', 'Cordoba', '', '9 a 20', 0, '0000-00-00', '0000-00-00'),
(994, 'Guzman Pablo SYP', 'Cerro Champaqui 254', '3525475752', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(995, 'Emilse Luque SYP', 'Cerro Poco 368 (frente dispensario)', '3525536429', 'Jesus Maria', 'Cordoba', '', 'Corrido', 0, '0000-00-00', '0000-00-00'),
(996, 'Analia Cordero', 'Calle 126 N°19 Malabrigo', '35254899252', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(997, 'Graciela Amela SYP', 'Guasapampa 150', '3525638586', 'Jesus Maria', 'Cordoba', '', '8.30 a 21', 0, '0000-00-00', '0000-00-00'),
(998, 'Jessica Ruiz', 'Buenos Aires y San Lorenzo', '3572508873', 'Oncativo', 'Cordoba', '', '8.30 a 13 y 16 a 21', 0, '0000-00-00', '0000-00-00'),
(999, 'Matias Vaccarini', 'Mansilla 248', '3547668650', 'Alta Gracia', 'Cordoba', '', '11.ª 14hs', 0, '0000-00-00', '0000-00-00'),
(1000, 'Pilar Bracamonte', 'Camiares esq Colectora', '3547578601', 'Alta Gracia', 'Cordoba', '', '8 a 21', 0, '0000-00-00', '0000-00-00'),
(1001, 'Susana Torrejon', 'Belisario Roldan 375', '3547451657', 'Alta Gracia', 'Cordoba', '', '8.30 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1002, 'Florencia Acevedo', 'Butorri 226', '35475664232', 'Alta Gracia', 'Cordoba', '', '10 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1003, 'Adrian Vissani', 'Butorri 410', '3547530677', 'Alta Gracia', 'Cordoba', '', '7 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1004, 'Nazareno Pedernera', 'Velázquez 320', '3547507599', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1005, 'Maria Jose Carrera', 'Tomas Garzon y Las Heras', '3572537040', 'Oncativo', 'Cordoba', '', '8:30 hs a 13hs 16 a 20hs', 0, '0000-00-00', '0000-00-00'),
(1006, 'Susana Serra', 'Uruguay 631', '3572525436', 'Oncativo', 'Cordoba', '', '8:30 a 13 y 17 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1007, 'Americo Caricio', 'Alem 480', '3572545704', 'Oncativo', 'Cordoba', '', '9HS 13HS 15HS 20HS', 0, '0000-00-00', '0000-00-00'),
(1008, 'Rodrigo Prena', 'Alem 434', '3572501349', 'Oncativo', '', '', '8 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1009, 'Karla Cornelio', 'Campos de Rios S/N (100 vivienda)', '3525630948', 'Jesus Maria', '', '', '10 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1010, 'Ana Lourdes Mendez', 'Tilcara 33', '3525546849', 'Jesus Maria', 'Cordoba', '', '8 a 14 - 16.30 a 21', 0, '0000-00-00', '0000-00-00'),
(1011, 'Roxana Lindon', 'Coorientes 75', '3562586347', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1012, 'Carla Abrego', 'Colon 1572', '3576471753', 'Villa del Rosario', 'Cordoba', '', '8:30 13HS 16:30 20HS', 0, '0000-00-00', '0000-00-00'),
(1013, 'Graciela Schap', 'Misiones 45', '3548591660', 'Rincon', 'Cordoba', '', '8hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1014, 'Raquel Tissera', 'Julio Roca esq Cordoba', '3572511803', 'Rio Segundo', 'Cordoba', '', '17HS A 21HS', 0, '0000-00-00', '0000-00-00'),
(1015, 'Marcos Posada', 'Juan Domingo Peron 1231', '3572692903', 'Rio Segundo', 'Cordoba', '', '8HS A 20HS', 0, '0000-00-00', '0000-00-00'),
(1016, 'Enrique Miguel Pepino', 'Zenón López 822', '3572697777', 'Pilar', 'Cordoba', '', '9.30 a 14.30 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1017, 'Rosaura Viana', 'Catamarca 1523', '3573454409', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1018, 'Elisabeth Cisterna', 'Pedro Patat 550 (sur)', '15531079', 'Colonia Caroya', 'Cordoba', '', '9 a 13 y 16 a 20', 0, '0000-00-00', '0000-00-00'),
(1019, 'Noelia Vivas (Panaderia Mafalda)', 'Alvear 161', '3547509363', 'Alta Gracia', 'Cordoba', '', '9 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1020, 'Laura Miguez', 'Rivadavia 941', '3547 50 5593', 'Alta Gracia', 'Cordoba', '', '9 a 22hs', 0, '0000-00-00', '0000-00-00'),
(1021, 'Agustina Olaciregui', 'Malvinas Argentinas 1504', '3547657895', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1022, 'Silvia Lubary', 'Carlos Avanci Esq 13', '3547563816', 'Alta Gracia', 'Cordoba', '', '9 a 20hs', 0, '0000-00-00', '0000-00-00'),
(1023, 'Maria Cristina Alberch', 'Ecuador 351', '03547-421019', 'Alta Gracia', 'Cordoba', '', '9.30 a 13 -16 a 20', 0, '0000-00-00', '0000-00-00'),
(1024, 'Maria Zabala', 'Norberto Dutari 1061', '3573403613', 'Villa del Rosario', 'Cordoba', '', '8HS 20HS', 0, '0000-00-00', '0000-00-00'),
(1025, 'Luis Carabante', 'Norberto Dutari 1116', '3573415101', 'Villa del Rosario', 'Cordoba', '', '9HS A 13:30 17:30 22HS', 0, '0000-00-00', '0000-00-00'),
(1026, 'Julio Ludueña', 'Nabosacate 1175', '3573404087', 'Villa del Rosario', 'Cordoba', '', '8 a 13.30 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1027, 'Carina Soliz', 'Ruta 13 s/n', '3572403099', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1028, 'Luis Caceres', 'Ruta 9 y Mitre', '3572694696', 'Pilar', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1029, 'Romina Bujedo', 'Juan Bautista Alberdi 2030', '3572520494', 'Pilar', 'Cordoba', '', '9HS 13 HS 16:30 A 20HS', 0, '0000-00-00', '0000-00-00'),
(1030, 'Silvana Lopez', 'San Lorenzo esq Venezuela', '3572510233', 'Rio Segundo', 'Cordoba', '', '9HS A 13HS Y DE 17HS 21H', 0, '0000-00-00', '0000-00-00'),
(1031, 'Luz Zigarran', 'Ruta 5 Km 32 1/2', '-', 'Anisacate', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1032, 'Marcelo Gilabert Don Pollo', 'Ruta 5 Km 37', '3513621268', 'La Bolsa', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1033, 'Lo De Vito Polirubro', 'Ruta 5 esq Sebastian Machesinni', '3512019523', 'La Bolsa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1034, 'Marcelo Moyano', 'Ruta 5 Km 38 1/2', '3573 692584', 'La Bolsa', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1035, 'Daniel Alberto Tapia', 'Malvinas Argentinas 1332', '3516884741', 'Alta Gracia', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1036, 'Chen Xin', 'Ruta 13 entre Corrientes y Entre Rios', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1037, 'Mauro Morales', 'Corrientes Cancha Padel  Media cuadra de Ruta 13', '3572613160', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1038, 'Sergio Barzola', 'Libertad 383', '3572677700', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1039, 'Fernando Re', 'Castelli 163', '3572608205', 'Oncativo', 'Cordoba', '', '9 a 12 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1040, 'Leticia Andres', 'Belgrano 780', '3572529100', 'Oncativo', 'Cordoba', '', '9 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1041, 'Liliana Fernandez', 'Ayacucho 1057', '3572592414', 'Oncativo', 'Cordoba', '', '7 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1042, 'Cecilia Alonso', 'Las Heras 247', '3572667636', 'Oncativo', '', '', '17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1043, 'Ivana Small', 'Alem 525', '3572537991', 'Oncativo', 'Cordoba', '', '9 a 13 - 18 a 21 Hs', 0, '0000-00-00', '0000-00-00'),
(1044, 'Cristian Alamo', 'Rodriguez Saenz Peña esq Sarmiento', '3572436923', 'Oncativo', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1045, 'Adriana Bustos', 'Mitre 1073', '3572461221', 'Oncativo', 'Cordoba', '', '8 a 13 - 16.30 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1046, 'Maria Jose Garcia', 'Bolivia 996 esq Genova', '3547627777', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1047, 'Andrea Valles', 'Butorri y Esquiu', '3547503192', 'Alta Gracia', 'Cordoba', '', '10 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(1048, 'Verduleria Olmos', 'Olmos 969', '3547674317', 'Alta Gracia', 'Cordoba', '', '10 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(1049, 'Agustina Cordoba', 'Agustin Aguirre y Alvear', '3547 509093', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1050, 'Carina Martinez', 'Fernando Peña esq Bahia Blanca', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1051, 'Matias', 'Escuela Catolica', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1052, 'Monica Fernandez', '9 de Julio 1140', '3573458647', 'Villa del Rosario', 'Cordoba', '', '9HS 12:30 16HS 17HS', 0, '0000-00-00', '0000-00-00'),
(1053, 'Roxana Mabel Racca', 'Corrientes 1055', '3573431951', 'Villa del Rosario', 'Cordoba', '', '9HS A 14HS 17HS A 22HS', 0, '0000-00-00', '0000-00-00'),
(1054, 'Ruben Carranza', 'Av. De Mayo 490 Carniceria', '3547 593870', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(1055, 'Mariela Oviedo. Polleria Maru', 'Malvinas Argentinas 915', '3547599109', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1056, 'Alejandra Caponigro', 'Calle 7 336', '3547678088', 'Alta Gracia', 'Cordoba', '', '10 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(1057, 'Wilton Basualdo', 'Alem 564', '3572 541542', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1058, 'Natalia Palomino', 'Entre Rios 1064', '3573411596', 'Villa del Rosario', 'Cordoba', '', '8 a 13 - 16 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1059, 'Daniel Prino', 'La Rioja 1019', '357315451703', 'Villa del Rosario', 'Cordoba', '', '8 a 14 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1060, 'Vida Miranda - Panaderia Mi Sueño', 'Godoy Nuñez 620', '3547521191', 'Alta Gracia', 'Cordoba', '', '8 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1061, 'Edgar Sanchez', 'Ituzaingo 838', '3547590312', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1062, 'Dario Molina', 'Fachulo 272', '3517368802', 'Alta Gracia', 'Cordoba', '', '7 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1063, 'Jose Verdier', 'Garzon 662', '3547655112', 'Alta Gracia', 'Cordoba', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1064, 'Isabel Frandino', 'Tomaz Garzon esq Tucuman(deja en al casa)', '1', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1065, 'Romina Zanzi Los Amigos', 'Ruta 5 Km 31 1/2', '-', 'Anisacate', 'Cordoba', '', '8 a 21', 0, '0000-00-00', '0000-00-00'),
(1066, 'Saldando Luciano Don Placido', 'Ruta 5 Km 32 1/2', '3517540783', 'Anisacate', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(1067, 'Claudia Puglesie', 'Ruta 5 colectora esq. Mariano Moreno', '3513652790', 'Anisacate', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1068, 'Deolinda Merlo - Kiosco Carlitos', 'Dorsales 131', '3457673437', 'Anisacate', 'Cordoba', '', '9 a 15', 0, '0000-00-00', '0000-00-00'),
(1069, 'Lorena Marco', 'Rafael Nuñes 1053', '3512500367', 'Pilar', 'Cordoba', '', '7 a 14 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1070, 'Lucia Natali Bochero', 'Zenon Lopez 1890', '*', 'Pilar', 'Cordoba', '', '8 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1071, 'Cintia Grassini 2', 'Republica de Siria Entre Julio Roca y Mercedes', '3572 615483', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1072, 'Maria Del Carmen Marinsalda', 'Santa Fe 65', '3572500525', 'Oncativo', 'Cordoba', '', '8hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1073, 'Despensa Graciela', 'San Lorenzo esq Yapeyu', '3572436301', 'Oncativo', 'Cordoba', '', '9ha 1hs 16hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1074, 'Santiago Ergo', 'Juan Jose Paso 186', '3572535407', 'Oncativo', 'Cordoba', '', '9HS A 12HS Y DE 16HS 20HS', 0, '0000-00-00', '0000-00-00'),
(1075, 'Raul Baldonsini', 'Larrea Y Pelegrini', '3572524206', 'Oncativo', 'Cordoba', '', '9hs a 12hs y 17hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1076, 'Maximiliano Castillo', '25 de Mayo 1350', '3572592364', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1077, 'Rodrigo Bigatton', 'Belgrano 783', '3572613693', 'Oncativo', 'Cordoba', '', '7hs a 12hs 18hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1078, 'Ines Mazzola', 'Falucho 659', '-', 'Oncativo', 'Cordoba', '', '9 a 12 hs', 0, '0000-00-00', '0000-00-00'),
(1079, 'Ese Es Mi Pollo Suc 3', 'Irigoyen esq La Rioja', '3572 59-2951', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1080, 'Romina Bula', 'Intendente Matta 364', '3572570120', 'Oncativo', 'Cordoba', '', '9hs 13hs 17hs 20hs', 0, '0000-00-00', '0000-00-00'),
(1081, 'Alejandro Paredes', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1082, 'Elisabeth Moyano', 'Zabala Ortiz 36 (casa con tapia)', '3547611981', 'Alta Gracia', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1083, 'Gabriel Arrieta', 'Olmos 130', '35474558401', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(1084, 'Ramiro', 'Julio Antun 514', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1085, 'Karina Carle', 'Monseñor Lindor Ferreyra 534', '3573469818', 'Villa del Rosario', 'Cordoba', '', '8:30hs 12:30 15:30 20hs', 0, '0000-00-00', '0000-00-00'),
(1086, 'Gabi DeMarchi', 'Salta y Ruta 9', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1087, 'Juliana Ortiz', 'Cabo Primero Hector Varas 511', '3573435250', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1088, 'Vanesa Racca', 'Catamarca 1408', '3573401192', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1089, 'Silvia Rodriguez', 'Los Ranchos esq Aguilera', '3573415070', 'Villa del Rosario', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1090, 'Gabriel Gonzalez', 'Butorri 761', '3547610273', 'Alta Gracia', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(1091, 'Flavia Apaza', 'Tucuman 101', '3516104338', 'Lozada', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1092, 'Antonella Huerta', 'Marconi 1979', '3572582824', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1093, 'Cancha de Tarrito', 'LLAMAR X TEL', '3572587342', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1094, 'Julian Rodriguez', '9 de Julio 980 (verduleria)', '3572530331', 'Pilar', 'Cordoba', '', '8ha a 13hs 16hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1095, 'Gustavo Jacquet', '25 de Mayo 651', '3572402987', 'Pilar', 'Cordoba', '', '9hs 13hs y 15hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1096, 'Luciana Zapata', 'San Juan 1330', '3572524107', 'Pilar', 'Cordoba', '', '9hs 13:30hs 17hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1097, 'Escuela Caseros', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1098, 'Micaela Del Vecchio', 'José Hernández 595 esq puerto Argentino', '3572524142', 'Oncativo', 'Cordoba', '', '9hs 13hs 17hs a 19hs', 0, '0000-00-00', '0000-00-00'),
(1099, 'El Triunfo', 'Ruta 9 Shell', '30709157430', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1100, 'Ese Es Mi Pollo Suc. 2', 'Alem 1213', '3572 53-7517', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1101, 'Natalia Ferreyra', 'Rivadavia 540', '3518143709', 'Oncativo', 'Cordoba', '', '8hs 23hs', 0, '0000-00-00', '0000-00-00'),
(1102, 'Patricia Zarate', 'Malvinas Argentinas 1390', '3547 526396', 'Alta Gracia', 'Cordoba', '', '9.30 a 13.30', 0, '0000-00-00', '0000-00-00'),
(1103, 'Ramiro Ruben', 'Obispo Ferreyra esq Independencia', '3572507053', 'Villa del Rosario', 'Cordoba', '', '8hs 13:30 16:30 20hs', 0, '0000-00-00', '0000-00-00'),
(1104, 'Polleria Albino', 'Sarmiento 1480', '3573694375', 'Villa del Rosario', 'Cordoba', '', '8hs 1hs 17hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1105, 'Escuela Congreso de Tucuman', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1106, 'Martin Pizzatti', '-', '-', 'Pilar', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1107, 'Fani Marin', 'Zarzales 165', '3547478520', 'Alta Gracia', 'Cordoba', '', '8 a 20hs', 0, '0000-00-00', '0000-00-00'),
(1108, 'Escuela Bustos', '-', '-', '', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1109, 'Marcelo Amado', 'Mendoza esq J.B. Alberdi', '3572446204', 'Pilar', 'Cordoba', '', '9hs 13hs y de 18 a 21', 0, '0000-00-00', '0000-00-00'),
(1110, 'Carolina Sosa', 'Ramos Mejia 315', '3518008029', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1111, 'Ines Heredia', 'Zabala Ortiz 26', '3547678403', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1112, 'Carlos Alberto Sanchez', 'Fortuna Gonzalez 1856', '3547448361', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1113, 'Noelia Castillo', 'José Manuel Estrada 1245', '3525302413', 'Jesus Maria', 'Cordoba', '', '9.15 a 14 - 17.30 a 21', 0, '0000-00-00', '0000-00-00'),
(1114, 'Susana Massola', 'Uruguay 439', '3572455768', 'Oncativo', 'Cordoba', '', '9 a 13 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1115, 'Natalia Idañes', 'Av Libertador 548', '3547451818', 'Alta Gracia', 'Cordoba', '', '7 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1116, 'Gisela Zarate', 'Eduardo Gamon 869', '3547504134', 'Alta Gracia', 'Cordoba', '', 'De 9 a 15hs', 0, '0000-00-00', '0000-00-00'),
(1117, 'Jenifer Lombo', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1118, 'Marcos Gianini', 'Libertad esq Tucuman', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1119, 'Valeria Lopez', 'Falucho 907', '3547479297', 'Alta Gracia', 'Cordoba', '', '9 a 15hs', 0, '0000-00-00', '0000-00-00'),
(1120, 'Walter Carabante', 'Pje Argarañas 955', '3573455674', 'Villa del Rosario', 'Cordoba', '', '8hs 13hs y 17hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1121, 'Silvana Dubini', 'Sarmiento 750', '3573415012', 'Villa del Rosario', 'Cordoba', '', '7hs 12hs 14hs 22hs', 0, '0000-00-00', '0000-00-00'),
(1122, 'Alejandra Fernandez', 'Florentino Ameguino (Primera Parada entrando a Lag', '3572 43-9222', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1123, 'Noelia Mendez', 'Av. Mayo 555', '3547531882', 'Alta Gracia', 'Cordoba', '', '8.30 a 13 y 16 a 20', 0, '0000-00-00', '0000-00-00'),
(1124, 'Lopez Ernestina', 'Pedro Butorri 318', '3547448423', 'Alta Gracia', 'Cordoba', '', '10 a 13:15', 0, '0000-00-00', '0000-00-00'),
(1125, 'Iris Colazo', 'Jujuy 1500 casa 12', '421653', 'Rio Segundo', 'Cordoba', '', '9hs 14hs', 0, '0000-00-00', '0000-00-00'),
(1126, 'Chen', 'Marconi esq San Luis', '-', 'Rio Segundo', 'Cordoba', '', '9 a 12 hs', 0, '0000-00-00', '0000-00-00'),
(1127, 'Nerea Ramirez', 'Neuquen 476', '3572612058', 'Rio Segundo', 'Cordoba', '', '9hs 13:30hs 18hs 20hs', 0, '0000-00-00', '0000-00-00'),
(1128, 'Noelia Mendez', 'Av. de Mayo 555', '3547531882', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1130, 'Ignacio Giammaria', 'Rivadavia esq Velez Sarfield', '3572402602', 'Oncativo', 'Cordoba', '', '9hs 23hs', 0, '0000-00-00', '0000-00-00'),
(1131, 'Barbara Cortez', 'Zenaida Cabrera entre Salta Y Mendoza', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1132, 'Jessica Menne', 'Gran Chaco esq Sargento Cabral', '3572582675', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1133, 'Marcelo Molina', 'Mario Bravo 1673', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1134, 'Romina Amaranto', 'Gral Campo Esq Juan Bautista Alberdi', '3572537574', 'Pilar', '', '', '16 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1135, 'Patricia Gomez', 'Quebec 1260', '3534140013', 'Alta Gracia', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1136, 'Fabian Frozer', 'Agustin Aguirre 1166', '-', 'Alta Gracia', '', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1137, 'Sebastian Diesenberg', 'Sacha 247', '3547631685', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1138, 'Nicolas Ramirez', 'Bosco Lezcano esq Salta', '3512443296', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1139, 'Adriana Villa', 'Bv Argentino 366', '3572448776', 'Pilar', 'Cordoba', '', '8hs 13hs 16hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(1140, 'Roberto Viotti', 'Agustin Aguirre 870', '3517462449', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17.30 a 22', 0, '0000-00-00', '0000-00-00'),
(1141, 'Cordoba Agustina', 'Agustin Aguirre y Alvear', '3547509093', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 y 17.30 a 21.30', 0, '0000-00-00', '0000-00-00'),
(1142, 'Tomas Britos', 'Agustin Aguirre y Alvear', '3513973567', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1143, 'Miranda Claudio - Kiosko Monster', 'Padre Viera 225', '3547610069', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1144, 'Leandro - Fiambreria Elena', 'Av Libertador 685', '3547637595', 'Alta Gracia', 'Cordoba', '', 'Hasta las 14', 0, '0000-00-00', '0000-00-00'),
(1145, 'Natalia Varella', 'Catalina Rodriguez 327', '3573451709', 'Laguna Larga', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1146, 'Mario Altamirano - Terminal de Omnibus', 'Juan Domingo Peron 1792', '3547502688', 'Alta Gracia', 'Cordoba', '', '9 a21', 0, '0000-00-00', '0000-00-00'),
(1147, 'Proveeduria Nico Rami - Lorena Sanchez', 'Pedro Butori 319', '3547597601', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1148, 'Katherine Verduleria', 'Av Mayo y Pasteur', '3547528862', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1149, 'Valentina Herrera', 'Florida 155', '3547571157', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1150, 'MaxiKiosko Lo de Juan', 'Av Libertador 1473', '3547456884', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1151, 'Walter Jose Hubeli - Panaderia El Trigal', 'Cjal. Alonso 730', '3547545656', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1152, 'Melisa Exposito', 'Manuel Solares 384', '3547573897', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1153, 'Emiliano Barboza', 'Mendoza 834', '3572676562', 'Pilar', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1154, 'Despensa El Flaco', 'Paraguay esq Uruguay', '354715640975', 'Alta Gracia', 'Cordoba', '', '9 a 14 hs', 0, '0000-00-00', '0000-00-00'),
(1155, 'Kiosco Calabaza', 'Belgrano 212', '3547520504', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1156, 'Paseo La Merced', 'Av. Belgrano 425(Frente Supe Becerra Local 1)', '3547528416', 'Alta Gracia', 'Cordoba', '', '09 a 13 - 17 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1157, 'Tio Pelado', 'Frente Plaza Solares', '3547639238', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1158, 'Kiosco Lali', 'Roldan 48', '3547451692', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1159, 'Claribel', 'Paraguay 1418 esq Freite', '3547479381', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1160, 'Diana Lianza', 'Chile 176', '2447637102', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1161, 'Gabriela Gigena', 'Paraguay 1036', '-', 'Alta Gracia', 'Cordoba', '', '10 a 13.30 - 17.30 a 21.3', 0, '0000-00-00', '0000-00-00'),
(1162, 'Walter Gomez (Kiosco Olmos)', 'Olmos 944', '3547452715', 'Alta Gracia', 'Cordoba', '', '11 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1163, 'Mariela Moreno (Escuela  Estrada)', '-', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1164, 'Despensa Charly', 'Uruguay 1741', '3547527219', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1165, 'Matias Giordano - La Cosecha', 'Llorens 380', '3547527090', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1166, 'Lopez Gisele', 'España 196 y San Martin', '3547469901', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1167, 'Panaderia El Chelo', 'Hipolito Yrigoyen 1760', '3547529134', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1168, 'Maira Ávila', 'Fernando Peña 1890', '3547625878', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1169, 'Griselda Caraga', 'Sabala Ortiz y Bahia Blanca 71', '-', 'Alta Gracia', 'Cordoba', '', '9.30 de corrido', 0, '0000-00-00', '0000-00-00'),
(1170, 'Forrajeria San Cayetano', 'Hipolito Yrigoyen 1775', '3547450716', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1171, 'Comision Coopera IPAYM (Eduardo Olivera)', '-', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1172, 'Raquel Bruno', 'Colon 1520', '3516775232', 'Villa del Rosario', 'Cordoba', '', '8:30 13:30 16:30 20', 0, '0000-00-00', '0000-00-00'),
(1173, 'Edita Torrazza', 'Hipólito irigoyen 401', '3573454675', 'Villa del Rosario', 'Cordoba', '', '8hs a 13hs 17hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(1174, 'Alejandra Perez', 'Pasaje Ardiles 505 esq Colon', '3573450099', 'Villa del Rosario', 'Cordoba', '', '9hs 13hs y 18hs 20hs', 0, '0000-00-00', '0000-00-00'),
(1175, 'Estela Algarbe', 'San Jose 934', '3573496434', 'Villa del Rosario', 'Cordoba', '', '8hs 13hs 16hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1176, 'Negro Gin', 'Av Libertador 1966 (Kiosco Rojo)', '3547459799', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1177, 'Lorena Avicola (Polleria)', 'Av Libertador 979', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1178, 'Carniceria Martin', 'Paraguay esq Uruguay', '3547 58-1107', 'Alta Gracia', 'Cordoba', '', 'Antes de las 13 hs', 0, '0000-00-00', '0000-00-00'),
(1179, 'Proveduria El Ancla', '9 de Julio 370 y Catamarca', '3547521059', 'Alta Gracia', 'Cordoba', '', '9 a 13 Hs', 0, '0000-00-00', '0000-00-00'),
(1180, 'Romina Vega', 'Pedro Butori 578', '3547577721', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1181, 'Kiosco Amarillo', 'España esq San Martin', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1182, 'Maria Gabriela Berselli', 'Corrientes 1665', '3572522320', 'Pilar', 'Cordoba', '', '8:30hs 13:30hs 16hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1183, 'Luciana', 'Francisco Cabrera esq Buenos Aires', '3572449838', 'Pilar', 'Cordoba', '', '8hs a 13hs 17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1184, 'Dario Kiosco City', 'Belgrano 141', '3547570525', 'Alta Gracia', '', '', '11 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1185, 'Proveduria (Gabriel)', 'Olmos 130', '3547 15458401', 'Alta Gracia', '', '', '10 hs a 14 . Hs 17 a 2', 0, '0000-00-00', '0000-00-00'),
(1186, 'Hernan Cipoleta', 'Ob. Castellano 1870', '3547508458', 'Alta Gracia', 'Cordoba', '', '9 . A 21 hs corrido', 0, '0000-00-00', '0000-00-00'),
(1187, 'Romina Martinez', 'Lepri 264', '3547506653', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1188, 'Guadalupe Lopez', 'Zabala Ortiz 13', '3547661901', 'Alta Gracia', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1189, 'Despensa Nano', 'Italia 390 esq Uruguay', '3547637499', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 16 a 20', 0, '0000-00-00', '0000-00-00'),
(1190, 'Super Limpito', 'Av Libertador 1130', '3547463901', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1191, 'Verduleria Edu', 'Paraguay 431', '-', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 - 17.30 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1192, 'Guillermo Valerio', 'Tucuman 259', '3547599379', 'Alta Gracia', 'Cordoba', '', '9 a 13  - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1193, 'Luciana Di Giacomo', '25 De Mayo 390', '3547595961', 'Alta Gracia', 'Cordoba', '', '9 a 13- 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1194, 'Monica Reartes', 'Viena 244( al frente es 71 mala numeración )', '3547651334', 'Alta Gracia', 'Cordoba', '', '9 a 14 - 17 a 23.30 hs', 0, '0000-00-00', '0000-00-00'),
(1195, 'Jessica Funes', 'Liniers 1255', '3547672557', 'Alta Gracia', 'Cordoba', '', '9.30 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1196, 'Gisela Gimenez Despensa El Trigal', 'Pedro Butori 246', '3547672313', 'Alta Gracia', 'Cordoba', '', 'Antes de llas 13', 0, '0000-00-00', '0000-00-00'),
(1197, 'Joel Salgado', 'España 250', '3547453217', 'Alta Gracia', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1198, 'Eduardo Filloy', 'Chumamaya 435', '3547597242', 'Alta Gracia', 'Cordoba', '', '9 A 13 - 17 A 21', 0, '0000-00-00', '0000-00-00'),
(1199, 'Nelson Villarreal Despensa Vaquita', 'Paraguay 1469', '3547676592', 'Alta Gracia', 'Cordoba', '', '9.30 a 14.20 - 17 a 23', 0, '0000-00-00', '0000-00-00'),
(1200, 'Davis Gomez', 'Paraguay 820', '3547654405', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1201, 'Cristina Figueroa El Gavilan', 'Francis Cabrera  325', '3516864077', 'Pilar', 'Cordoba', '', '8 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1202, 'Noelia Plaza', 'Salta esq Dean Funes', '*', 'Rio Segundo', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1203, 'Favio Rodriguez', '-', '-', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1204, 'Kiosco Milka', 'Agustin Aguirre y Alfonsin', '3547571297', 'Alta Gracia', 'Cordoba', '', '9 a 00 hs', 0, '0000-00-00', '0000-00-00'),
(1205, 'Noelia Oliva', 'Liniers 855 Local 1', '357200920', 'Alta Gracia', 'Cordoba', '', '9 a 13 - 16.30 a 19.30 hs', 0, '0000-00-00', '0000-00-00'),
(1206, 'Nico Gianini', 'Zenon Lopez 2215', '3572582320', 'Pilar', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1207, 'Julian Gonzalo Peralta Pavon', 'Arzobispo Castellano 157', '3547625143', 'Alta Gracia', 'Cordoba', '', '8 a 12 - 17 a 22', 0, '0000-00-00', '0000-00-00'),
(1208, 'Fabian Polleria', 'Agustin Aguirre 1166', '3547628534', 'Alta Gracia', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1209, 'Noelia Tisera', 'Entre Rios 557 (ladrillo visto)', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1210, 'Carola Martinez', 'Av Libertador 1398', '3547622760', 'Alta Gracia', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1211, 'Silvia Morales', 'Barulio Colazo 1620', '3572443880', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1212, 'Leo', 'San Martin 340', '3547530215', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1213, 'Anahi  Zuppa', 'Las Heras 306', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1214, 'Ariel Marangoni', 'Belgrano 261', '3572587549', 'Oncativo', 'Cordoba', '', '12 en adelante', 0, '0000-00-00', '0000-00-00'),
(1215, 'Distribuidora Libertador', 'Av Libertador 1453', '3547675855', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1216, 'Panaderia Titi', 'Intendente Peralta Esq Bolivia', '3547460626', 'Alta Gracia', 'Cordoba', '', '9 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1217, 'Rocio Sanchez', 'Lobos 55', '3547612407', 'Alta Gracia', 'Cordoba', '', '9 a 23', 0, '0000-00-00', '0000-00-00'),
(1218, 'Carlos Montaut', 'Eduardo Gamond 1757', '3547627333', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1219, 'Clever Everle', 'Zabala Ortin y Virrey Liniers', '3547655682', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1220, 'Catalina', 'Malvinas Argentinas 1564', '3547501790', 'Alta Gracia', 'Cordoba', '', '9 a 13.30 hs', 0, '0000-00-00', '0000-00-00'),
(1221, 'Polleria Miguel', 'Malvinas Argentinas 1504', '3547468188', 'Alta Gracia', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1222, 'Rafael Rodriguez', 'Ruta 13 Cromado', '3755645730', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1223, 'Panaderia Entre Masas', 'San Juan Bosco 548', '3547562261', 'Alta Gracia', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1224, 'Luciano Noe', 'San Juan Bosco y Cjal. Alonso', '3547477448', 'Alta Gracia', 'Cordoba', '', '9 a 15', 0, '0000-00-00', '0000-00-00'),
(1225, 'Polleria Miguel', 'Malvinas Argentinas 1504', '3547468188', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1226, 'Altamira Roberto - Panaderia Isabel', 'Liniers 5089', '3547632850', 'Alta Gracia', 'Cordoba', '', '8 a 13 y 17 a 21', 0, '0000-00-00', '0000-00-00'),
(1227, 'Rocio Yolanda', 'Cervantes 433', '3547678595', 'Alta Gracia', 'Cordoba', '', '9.30 a 21.30', 0, '0000-00-00', '0000-00-00'),
(1228, 'Gisele Broche', 'Olmos esq La Rioja', '3572403680', 'Villa del Rosario', '', '', '9 a 14 - 18 a 22', 0, '0000-00-00', '0000-00-00'),
(1229, 'Despensa Susy', 'Santillan esq Paraguay', '3547642828', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1230, 'Silvana Guzman', 'Prudencia esq Ema. Ceballos', '354715503182', 'Alta Gracia', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1231, 'Claudio (casa)', 'Los Quebracho 1920', '35474330022', 'Alta Gracia', 'Cordoba', '', '10 a 12 hs', 0, '0000-00-00', '0000-00-00'),
(1232, 'Liliana', 'Veñazquez  443', '3547609135', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1233, 'Despensa Don David', 'Agustin Aguirrez esq Parana', '3547597120', 'Alta Gracia', 'Cordoba', '', '14 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1234, 'Miriam Fernandez', 'Mitre 370', '3572611958', 'Oncativo', 'Cordoba', '', '8hs a 13 -  17hs s 21', 0, '0000-00-00', '0000-00-00'),
(1235, 'Patricia Pereyra', 'Velez Sarfield 319', '3512453176', 'Oncativo', '', '', '8 a 14 - 17 a 22', 0, '0000-00-00', '0000-00-00'),
(1236, 'Pablo Caltaterra', 'Rivadavia 729', '3572690637', 'Oncativo', 'Cordoba', '', '9 a 12 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1237, 'Silvana', 'Bello Horizonte y Tacuari', '3547593647', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1238, 'Noelia Cabrera', 'Americo Aguilera 1244', '3517077752', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1239, 'Male Criado', '-', '-', '-', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1240, 'Barbara Bastos', '-', '-', '-', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1241, 'Ese Es Mi Pollo Suc. 1', '9 de Julio 980', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1242, 'Emanuel Casas', 'San Martin 1028', '3573404718', 'Villa del Rosario', 'Cordoba', '', '8:30 a 13hs 17hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1243, 'Estefania Martinez', 'La Rioja casi 9 De Julio', '3884444738', 'Villa del Rosario', 'Cordoba', '', '9hs 13hs 17hs 21hs', 0, '0000-00-00', '0000-00-00'),
(1244, 'Alejandro Kiosko Yadarola', 'Yadarola y Av. del trabajo', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1245, 'Carmen Gaston', 'San Juan Bosco y 3 de febrero', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1246, 'Agostina Aguirre', 'Hipolito Irigoyen 565', '3572530117', 'Pilar', 'Cordoba', '', '9.30 a 13.30 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1247, 'Lucia Heredia', 'Belisario Roldan 76', '3547509631', 'Alta Gracia', 'Cordoba', '', '9.30 a 19', 0, '0000-00-00', '0000-00-00'),
(1248, 'Anexo Esc. Estrada', '-', '-', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1249, 'Rosaxa Racca', 'Corrientes 1055', '-', 'Villa del Rosario', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1250, 'Gaston Lazaro', 'San Martin esq Jose Mateo Luque', '3573463924', 'Villa del Rosario', 'Cordoba', '', '7 a 00 hs', 0, '0000-00-00', '0000-00-00'),
(1251, 'Marcos - Polleria el Rey', 'Ituzaingo y Mateo Beres', '3547500179', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1252, 'Fabián bernardi', 'Dirección  Rivadavia s/n', '3533407674', 'La Playosa', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1253, 'Daiana Dominguez', 'Velasquez 673', '3547609531', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1254, 'Leonardo Gilardi', 'Bv Argentino 1290', '3515051866', 'Pilar', 'Cordoba', '', '8 a 13 y 15 a 21', 0, '0000-00-00', '0000-00-00'),
(1255, 'Carla Heredia', 'Francisco Cabrera 456', '3572442042', 'Pilar', 'Cordoba', '', '8 a 21', 0, '0000-00-00', '0000-00-00'),
(1256, 'Liliana Gonzales', 'San Luis 1213', '3572541165', 'Rio Segundo', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1257, 'Alejandra Fernández 2', 'Leandro N Alem 138 - Oeste Laguna Larga', '3572439222', '', 'Cordoba', '', '9 a 13 y 18 a 21', 0, '0000-00-00', '0000-00-00'),
(1258, 'Mariela broyero', 'parana 432', '3572549150', 'Oncativo', 'Cordoba', '', '8hs 13hs 16:30hs 20hs', 0, '0000-00-00', '0000-00-00'),
(1259, 'Nadia Segura', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1260, 'Marim Gonzalo', 'independencia esq lindor Ferreyra', '3573469068', 'Villa del Rosario', 'Cordoba', '', '9hs 14hs 17hs 22hs', 0, '0000-00-00', '0000-00-00'),
(1261, 'Pitus Kiosko Almacen', 'Av Libertador 1990', '3547478484', 'Alta Gracia', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1262, 'Natalia Herrera', 'Independencia 569', '3573438019', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1263, 'Jose Pereyra', 'Cjal. Alonso 783', '3547547122', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1264, 'Polleria Naida', 'San Juan Bosco 360', '3547632751', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1265, 'Vanesa Alta Gracia', '-', '3547577465', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1266, 'Maricel Pasten', 'Rawson 216', '3547541685', 'Alta Gracia', 'Cordoba', '', '11:00 hs hasta 21:00', 0, '0000-00-00', '0000-00-00'),
(1267, 'Edith Paz', 'Rawson 213', '3547468608', 'Alta Gracia', 'Cordoba', '', '9.30 a 14.30', 0, '0000-00-00', '0000-00-00'),
(1268, 'Carlos', 'Prudencion Bustos y Brasil', '3547524471', 'Alta Gracia', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1269, 'Marisel Barboni', 'Colon esq Cordoba', '3572535507', 'Oncativo', 'Cordoba', '', '8.30 -16 a 21', 0, '0000-00-00', '0000-00-00'),
(1270, 'Paola Pavon', 'Absobispo Castellano 157', '3547639380', 'Alta Gracia', 'Cordoba', '', '9 a 13 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(1271, 'La Buena Onda Polleria', 'Nuñez 934', '3547521892', 'Alta Gracia', 'Cordoba', '', '11 a 12.30 - 18 a 20.30', 0, '0000-00-00', '0000-00-00'),
(1272, 'Lautaro Cabrera', 'RIO SEGUNDO', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1273, 'Marta Herrera', '9 de Julio esq La Rioja', '3573469972', 'Villa del Rosario', 'Cordoba', '', '8 a 12.30 - 17 a 22', 0, '0000-00-00', '0000-00-00'),
(1274, 'Debora Sanchez', 'Islas Giogias 1464 (casa amarilla)', '3572583312', 'Rio Segundo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1275, 'Cecilia  Astudillo', 'Antartida Argentina entre Georgias y Orcadas', '3572584077', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1276, 'Dahyana Sanchez', 'Hipolito Yrigoyen esq Corrientes', '-', 'Pilar', 'Cordoba', '', '9 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1277, 'Nadia Segura', '-', '-', 'Alta Gracia', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1278, 'Romina Acebedo', 'Yapeyu 1254', '3572543624', 'Oncativo', 'Cordoba', '', '8.30 a 12', 0, '0000-00-00', '0000-00-00');
INSERT INTO `clientes` (`id`, `nombre`, `Direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `clihab`, `createdAt`, `updatedAt`) VALUES
(1279, 'Sonia Caminos', 'San Juan Norte 944', '3525415782', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1280, 'Jesica Cuello', 'Miguel Juarez y San Juan', '3525438861', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1281, 'Reina Teresita Elena', 'Miguel Juarez 838', '3525549147', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1282, 'Gaston Bustos', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1283, 'Milagros Vega', 'La Isla 766 Local 4', '2324546071', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1284, 'Blanca Parositto', 'Miguel Juarez 1085 (frente bomberos)', '3525400626', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1285, 'Mercadito Donet Rodrigo', 'Estrada Esq Zipoli', '3525612528', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1286, 'valeria Ranzoni', 'Castulo Peña y Olmos', '3516340961', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1287, 'Ana Cristina', 'Italia y 25 de mayo', '3525436094', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1288, 'Lobo Luis', 'Italia 994', '3525517064', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1289, 'Amneris Reali', 'Ameguino 399', '3525613939', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1290, 'Mas x Menos', 'Italia y Almafuerte', '3525485756', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1291, 'Gonzales Edith - Despensa los 4 hermanos', 'Ruta 9 km 748', '3525301794', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1292, 'Rolando Bergagna', 'Paraguay 133', '3525644555', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1293, 'Javier Moyano', 'Vicente Agüero 302', '3525619272', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1294, 'Liliana Diaz', 'Calle 36 y 46', '3525642117', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1295, 'Natalia Campana', 'Calle 32 Sur 85', '3525643273', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1296, 'Cristian Toniati', '41 Norte Bis y 30', '3525415821', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1297, 'Gabriela Londero', '45 al 2900', '3525625983', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1298, 'Leonel Gornejo', '45 al 2679', '3525643941', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1299, 'Francisco Vidal', 'Malvina Argentinas 1390', '3525453778', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1300, 'Adrian Cejas', 'Malvinas Argentinas 1311', '3525413860', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1301, 'Norma Martinez', 'Malvinas Argentina 1263', '3525653897', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1302, 'Shirley Ochoa', 'Paso de los andes 957', '3525487127', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1303, 'Mariana Medina', 'Republica Dominicana 1196', '3525544280', 'Jesus Maria', 'Cordoba', '', '9 a 13 y 17.30 a 21', 0, '0000-00-00', '0000-00-00'),
(1304, 'Soledad Gallardo', 'Las heras 1368', '3525489197', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1305, 'Monica Diaz', 'Lavalleja 1321', '3525300209', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1306, 'El Duende', 'Lavalleja 1481', '3525417313', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1307, 'Verduleria Amiga', 'Lavalleja y Congreso', '3525519250', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1308, 'Gabriela Martinez', 'Libertad 1495', '3525606109', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1309, 'Barbara Gorn', 'Julio Roca 821', '3572605801', 'Rio Segundo', 'Cordoba', '', '9 a 15 - 18 a 20 hs', 0, '0000-00-00', '0000-00-00'),
(1310, 'Yohana Mattana', '25 De Mayo 909', '3572543002', 'Oncativo', 'Cordoba', '', '8 a 13.30 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1311, 'Juan Rodriguez', 'Tucuman 1122', '3525442900', 'Jesus Maria', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1312, 'Pamela Ortiz', 'Tucuman y Maipu', '3884300051', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1313, 'Andrea Ortiz', 'Bv. Aguero 426', '9 a 12.30 - 17 a 21 hs', 'Jesus Maria', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1314, 'Susana Barcos', 'Pasaje Progreso 477', '3525443992', 'Jesus Maria', 'Cordoba', '', '9 a 14 - 17 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1315, 'Alberto Farias', '25 de Mayo 304', '3525536297', 'Jesus Maria', 'Cordoba', '', '8 a 14 - 17 a 21.30 hs', 0, '0000-00-00', '0000-00-00'),
(1316, 'Sonia Perez', 'Italia 55', '3525432800', 'Jesus Maria', 'Cordoba', '', '9 A 21 hs', 0, '0000-00-00', '0000-00-00'),
(1317, 'Mario Olmos', 'Salvador 815', '3525606053', 'Jesus Maria', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1318, 'Autoservicio El 27', 'Neuquen esq Chacho', '3525544847', 'Jesus Maria', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1319, 'Brian Parodi Vidoz', 'Mariano Moreno 313', '01161157361', 'Jesus Maria', 'Cordoba', '', '8 a 13 - 17 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1320, 'Marta Grion', 'Catamarca 385', '3525442144', 'Jesus Maria', 'Cordoba', '', '8 a 14 - 17 a 00 hs', 0, '0000-00-00', '0000-00-00'),
(1321, 'Susana Pozo', 'Intendente Cesped 984', '3525449858', 'Jesus Maria', 'Cordoba', '', '11 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1322, 'Gianquinta Kiosco Felix', 'La Toma 592', '3525543237', 'Jesus Maria', 'Cordoba', '', '9 a 16 hs', 0, '0000-00-00', '0000-00-00'),
(1323, 'Despensa Margarita', 'Los Rosas 692', '3525419018', 'Jesus Maria', 'Cordoba', '', '8.30 a 14.30 - 17.30 a 22', 0, '0000-00-00', '0000-00-00'),
(1324, 'Celeste Molina', 'Yasireta Apipe', '3572447118', 'Rio Segundo', 'Cordoba', '', '8 a 14 - 16 a 19 Hs', 0, '0000-00-00', '0000-00-00'),
(1325, 'Graciela Ponce', 'Lopez y planes 182', '3525643886', 'Jesus Maria', '', '', '9hs a 13hs - 17hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1326, 'Roxana Coronel', 'Pamplinas 1490', '3525507586', 'Jesus Maria', 'Cordoba', '', '9hs a 14hs añ-17hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1327, 'Maria Banegas', 'Cerro uritorco 286', '3525432636', 'Sierra Y Parque JM', 'Cordoba', '', '9hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1328, 'Liliana Lopez', 'Cerro uritorco 386', '3525519499', 'Sierra Y Parque JM', '', '', '10hs a 14hs - 18hs a 00hs', 0, '0000-00-00', '0000-00-00'),
(1329, 'Monica Cejas', 'Cerro champaqui 235', '3525646374', 'Sierra Y Parque JM', '', '', '8hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1330, 'Ezequiel Ferreyra', 'Sierras macha 175', '3525455118', 'Sierra Y Parque JM', 'Cordoba', '', '9hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1331, 'Silvana Pereyra', 'Parque iguazu 77', '3525539526', 'Sierra Y Parque JM', 'Cordoba', '', '9hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1332, 'Marcela Lopez', 'Calle 171 832', '3525485321', 'Jesus Maria', 'Cordoba', '', '9hs 15hs -17hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1333, 'XE', '25 mayo 201', '3525436094', 'Jesus Maria', 'Cordoba', '', '9hs a las 12 hs a 16hs a', 0, '0000-00-00', '0000-00-00'),
(1334, 'Polleria Supremas', 'Chile 156', '3525650583', 'Jesus Maria', 'Cordoba', '', '8 a 13hs - 17:30 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1335, 'Rafael Saldaño', 'España 648', '3525667300', 'Jesus Maria', 'Cordoba', '', '9hs a 14hs - 17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1336, 'Polleria Ameghino', 'Ameghino 317', '3525500788', 'Jesus Maria', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1337, 'Abel Ponce', 'Alberdi esq yadarola 790', '3525483287', 'Jesus Maria', 'Cordoba', '', '9:30hs a 13:30 - 17:30hs', 0, '0000-00-00', '0000-00-00'),
(1338, 'Angie Amarilla', 'Berutti 197', '-', 'Oncativo', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1339, 'Mini Mercado Lima Limon', 'Mitre 390', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1340, 'Carina Pintos', 'Intendente Ventre 235', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1341, 'Emanuel Liendo', 'Ecuador esq Uruguay', '3572531289', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1342, 'Alberto Monjes', 'Provincias Unidas 1535', '3525400382', 'Jesus Maria', 'Cordoba', '', '8:30 a 13:30 - 18hs a 22h', 0, '0000-00-00', '0000-00-00'),
(1343, 'Andrea Carolini (Panaderia La Rica Masa)', 'Belgrano y Alem', '3572446927', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1344, 'Vanesa Bertole', 'Monseñor Lindor Ferreyra 210 (Cancha)', '3573463594', 'Villa del Rosario', 'Cordoba', '', '8 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1345, 'Nancy Buchile', '42 esq 24', '3525512521', 'Colonia Caroya', 'Cordoba', '', '8:30 a 13:30 - 16hs a 22h', 0, '0000-00-00', '0000-00-00'),
(1346, 'Despensa Valentina', 'Calle 43 3611', '3525508119', 'Colonia Caroya', 'Cordoba', '', '8hs a 13hs a - 16 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1347, 'Kiosco Lu', 'Av san Martin 3400', '3525463869', 'Colonia Caroya', 'Cordoba', '', '10am a 22hs', 0, '0000-00-00', '0000-00-00'),
(1348, 'Carolina Ferrero', 'Don bosco 1452', '3525417753', 'Colonia Caroya', 'Cordoba', '', '7:30hs 14hs y 17:30hs 22h', 0, '0000-00-00', '0000-00-00'),
(1349, 'Carnicería la victoria', 'Calle 14 norte 503', '3525483105', 'Colonia Caroya', 'Cordoba', '', '8:30 a 14hs - 17:30a 21hs', 0, '0000-00-00', '0000-00-00'),
(1350, 'Karen Sayago', 'Colon 266', '3572607044', 'Oncativo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1351, 'Jose Rodolfo Heredia', 'Gomeria Axion', '3572604292', 'Oncativo', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1352, 'Gomez Irma', 'Cordoba 1049', '3573454025', '', 'Cordoba', '', '12:30 a 17 a 21', 0, '0000-00-00', '0000-00-00'),
(1353, 'Laura', 'Geronimo del Barco 330', '3573415465', '', 'Cordoba', '', '9 a 13hs 17 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1354, 'Mariela Taborda', 'Geronimo del Barco 783', '3753438070', '', 'Cordoba', '', '8 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1355, 'Sergio Delgado', 'Chile 233', '3525438274', 'Jesus Maria', 'Cordoba', '', '7hs a 14hs - 17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1356, 'Cleo dasaliva', 'Juan Manuel de rosas 1645', '3515956810', 'Jesus Maria', 'Cordoba', '', '8hs a 11hs - 15hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(1357, 'Adriana Arias', 'Independencia 358', '3572593121', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1358, 'Sabrina Marinsalde', 'Perregrino 758', '-', 'Oncativo', 'Cordoba', '', '8 a 13 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1359, 'Verduleria Suvelza', '25 de mayo esq San Luis', '3574638982', 'Villa del Rosario', 'Cordoba', '', '8:30hs 13hs 17hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(1361, 'Griselda Crotto', '25 De Mayo y San Jose', '3573451415', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1362, 'Teresa Salavagione', 'Sanavirone 742', '3573406722', 'Villa del Rosario', 'Cordoba', '', '9 a 15 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1363, 'Gisela Crotto', '25 de Mayo esq San Jose', '3573451415', 'Villa del Rosario', 'cordoba', '', '8.30 a 13.30 - 17.30 a 20', 0, '0000-00-00', '0000-00-00'),
(1364, 'Laura Cortez', 'Calle 4 y 47', '3518553390', 'Colonia Caroya', 'Cordoba', '', '9hs a 13hs - 16hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1365, 'Claudia Rocha', 'Catamarca Y Las Heras', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1366, 'Mercedez Ludueña', 'La Rioja 981', '3573430086', 'Villa del Rosario', 'Cordoba', '', '7hs a 13hs 16hs 20hs', 0, '0000-00-00', '0000-00-00'),
(1367, 'Marcela Rodriguez', 'Chacabuco y Madrid', '3572593736', 'Oncativo', 'Cordoba', '', '8 y 30 a 13 y de 16 y 30', 0, '0000-00-00', '0000-00-00'),
(1368, 'Lucas Moyano', 'San Martin 547', '3572593757', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1369, 'Marisa Ochoa (Despensa Puro Sabor)', 'Buenos Aires 1265', '3572448902', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1370, 'Mariela Caudana', 'San Martin 268', '0353 421456', 'Oliva', 'Cordoba', '', '07 a 12  y de 4 .30  a 2', 0, '0000-00-00', '0000-00-00'),
(1371, 'Sergio Ferreyra', 'Jose Juan Paso y Pueyrredon', '3532419300', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1372, 'Silvina Giovani', 'Guemes y Alberdi', '3532437296', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1373, 'Despensa Ani', 'Mariano Moreno 364', '03533510108', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1374, 'Panaderia Lule', 'Chubut e Italia 213', '-', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1375, 'Valeria Despensa La Nona', 'Chubut Esq Cruyert', '03532436573', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1376, 'Cintia', 'Ayacucho 1226 frente al club unión', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1377, 'Verduleria Damian', 'Don bosco 2528', '3525450114', 'Colonia Caroya', 'Cordoba', '', '9hs a 13hs -17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1378, 'Tu Fiambreria', 'Don bosco 1442', '3525403487', 'Colonia Caroya', 'Cordoba', '', '9hs a 13hs a 17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1379, 'Carniceria Norte', 'Calle 93 1081', '3525648725', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1380, 'Amuschategui Nuria', 'Calle 51 norte 371', '3525622528', 'Colonia Caroya', 'Cordoba', '', '8hs a 14hs - 17hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1381, 'Marisol Galean', 'Calle friuli sur 236', '3525456361', 'Colonia Caroya', 'Cordoba', '', '9hs a 13hs - 17hs a 21:30', 0, '0000-00-00', '0000-00-00'),
(1382, 'Panaderia Sivia', 'Colon esq Rivadavia', '3532439024', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1383, 'Cecilia Irigoyen', 'Ferreyra 318', '3532588344', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1384, 'Elisabeth Inamorato (Alma Cositas Lindas)', 'Cabo Arce 274', '3532409088', 'Oliva', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1385, 'Aylen Pereyra (Kiosco Ana)', 'Jujuy 1020', '-', 'Oliva', 'Cordoba', '', '8 a 14 y 17 a 00', 0, '0000-00-00', '0000-00-00'),
(1386, 'Flia Barrera', 'Calle 45 Casa67 (1ra casa pasando el puente)', '3572540714', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1387, 'Lucia Madera', 'Miguel Juarez esq Puerto De Palo', '3525442831', 'Jesus Maria', 'Cordoba', '', '14 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1388, 'Adriana Simosa', 'Virginia Yaniz 535', '-', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1389, 'Despensa La 22', 'Calle 22 sur 346', '3525431911', 'Colonia Caroya', 'Cordoba', '', '9:30 a 14hs - 17hs a 22hs', 0, '0000-00-00', '0000-00-00'),
(1390, 'Despensa La Tita', '25 de mayo 370', '3525301180', 'Colonia Caroya', 'Cordoba', '', 'De 9hs de corrido', 0, '0000-00-00', '0000-00-00'),
(1391, 'Ana Carina', 'Av San Martin 3568', '3525478401', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1392, 'Dulce Locura', 'Pedro patat Sur 670', '3525438235', '', 'Cordoba', '', '8hs a 13:30hs - 15:30 a 2', 0, '0000-00-00', '0000-00-00'),
(1393, 'Marianela Pereyra', 'Senador Inaudi 858', '3512058088', 'Pilar', '', '', '9hs 14hs 17:30 a 22hs', 0, '0000-00-00', '0000-00-00'),
(1394, 'Fernanda Herrera', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1395, 'Andrea Velázquez', 'Lucas Vázquez 266', '3515109593', 'Monte Cristo', 'Cordoba', '', '8.30 a 13.30 y de 17 hs', 0, '0000-00-00', '0000-00-00'),
(1396, 'Maribel Cruz', 'Avellaneda esq Lucas Vázquez s/n', '3572 527641', 'Monte Cristo', 'Cordoba', '', '9 a 14 y de 18 a 21', 0, '0000-00-00', '0000-00-00'),
(1397, 'Erica', 'Alcaraz 5449', '351 6744619', '', 'Cordoba', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1398, 'Ramon Decima', 'Colon 46', '3513659652', '', 'Cordoba', '', '8.30 a 22', 0, '0000-00-00', '0000-00-00'),
(1399, 'Vanesa', 'Mza 1 Lote 8', '3515138038', '', 'Cordoba', '', '8 a 22', 0, '0000-00-00', '0000-00-00'),
(1400, 'Estela', 'Ruta A 88 (Frente YPF)', '3512193523', 'Monte Cristo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1401, 'Cristina Ponce', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1402, 'Ruben Lazarte', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1403, 'Lidia Vanessa Valdez', 'San Juan entre gaucho rivero y belgrano', '3512546627', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1404, 'Susana', 'Alejandro Duma 2052', '3512226054', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1405, 'Lorena', 'Atilio Cataneo 5847', '11 2651-9144', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1406, 'Lorena DelPerchio', 'Arturo m bas 1462', '351 332-9713', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1407, 'Vanesa Lescano', '9 De Julio 1352', '3512118575', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1408, 'Raul', 'Benito Soria 347', '-', 'Cordoba', 'Cordoba', '', '9 a 13 y de 17 a 21', 0, '0000-00-00', '0000-00-00'),
(1409, 'Silvia', 'San cayetano Villa Adela', '351 306-6385', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1410, 'ALEJANDRA', 'Fuencarral esquina misiones', '351 537-5085', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1411, 'Fabiana', 'Blas de peralta 4084', '351 254-1720', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1412, 'Jose Daniel Caricio', '25 de Mayo esq Larrea', '3572675458', 'Oncativo', 'Cordoba', '', '9 a 00 hs', 0, '0000-00-00', '0000-00-00'),
(1413, 'Joel', 'Calle 42 1549', '3525636792', 'Colonia Caroya', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1414, 'Valeria central rapitaxi', 'Bancalari 1655', '351 555-0071', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1415, 'Celina', 'Naciones unidas frente hospital privado', '3541 65-1605', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1416, 'Roxy', '24 de septiembre casi esq Acoyte', '351 305-9827', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1417, 'Natalia', 'Esposos Curie barrio Sarmiento', '351 868-8933', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1418, 'Mario pereyra', 'Jose Hernández esquina justo paez Molina', '3572596107', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1419, 'Natalia Daga (Don Natalio)', 'ING Lucas Vásquez 374', '-', 'Cordoba', 'Cordoba', '', '9 a 13.30 hs17 a 21.30', 0, '0000-00-00', '0000-00-00'),
(1420, 'Fabiana Cuneo', 'Barrio san Roque', '351 347-7079', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1421, 'Sofia Del Río', 'Carlos Tejedor 876', '351 323-7215', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1422, 'LAURA SANCHEZ', 'SATURNINO LASPIUR 2774', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1423, 'PABLO ENCINAS', 'MISIONES 1936', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1424, 'MARIA EUGENIA PARELO', 'VENUS 845', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1425, 'Anabel Perez', 'Gran chaco Esquina sarmiento', '3572 54-9326', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1426, 'Sabrina Carballo', '-', '3572441522', 'Impira', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1427, 'Soledad Moyano', 'Alberto Williams 4506', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1428, 'Liliana Gigena', 'Hammarsajold entre Naciones Unidas y La Padula', '-', 'Cordoba', 'Cordoba', '', '10 a 14 - 8 a 23 Hs', 0, '0000-00-00', '0000-00-00'),
(1429, 'Cristian Sosa', 'Talma 3133', '3512071017', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1430, 'Rodolfo Pereyra', 'Richardson 2211', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1431, 'Nora Grimal', 'Gabriela Mistral 4370', '3518720597', 'Cordoba', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1432, 'Gabriela Dietrich', 'Obispo bustos y Ferreyra 3021', '3515322899', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1433, 'Lucrecia', '9 de julio 338', '-', 'Monte Cristo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1434, 'Jorge Herrera', 'Santos rosales 125', '-', 'Monte Cristo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1435, 'Olga Pereyra', 'Máximo virgolini 1166', '-', 'Cordoba', 'Cordoba', '', '8 a 23', 0, '0000-00-00', '0000-00-00'),
(1436, 'Kiosco Palillo', 'Santa Cruz 280', '351 528-0875', 'Rio Segundo', 'Cordoba', '', '7:30 a 14:00 hs', 0, '0000-00-00', '0000-00-00'),
(1437, 'Karina de Verón', '-', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1438, 'Facundo Manzanelli', 'Ayacucho 2226', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1439, 'Maxikiosco Los Olmos', 'Piamonte 1265', '351 3307813', 'Cordoba', 'Cordoba', '', '8 Hs Corrido', 0, '0000-00-00', '0000-00-00'),
(1440, 'Punto Aromas', 'Rio Negro 4397', '351 3670792', 'Cordoba', 'Cordoba', '', '9.30 a 13...17.30 a 20.30', 0, '0000-00-00', '0000-00-00'),
(1441, 'Almacen Carniceria', 'Manir Fatala esq Rio Negro', '351 6 255810', 'Cordoba', 'Cordoba', '', '9 a 14...17.30 a 22', 0, '0000-00-00', '0000-00-00'),
(1442, 'Judith Pereyra', 'Alejandro Centeno 370', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1443, 'Marcela Diaz.', 'Naciones Unidas 1164', '-', 'Cordoba', 'Cordoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1444, 'Marin Estefanía', 'Mayor 682', '3517515264', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1445, 'Carrizo Teresita Del Valle', 'Canaleja 1591', '35157351596', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1446, 'Biglia Mirta', 'Fuencarral 665', '3513708555', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1447, 'Melania Usini', 'Fuencarral 686', '3512564722', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1448, 'Cantina Vocos (Federico)', 'En el Norte', '3572 54-3182', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1449, 'Federico Gianini', 'Rafael Nuñez esq 25 de Mayo', '3572 58-2320', 'Pilar', 'Cordoba', '', '9 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1450, 'David Santillan', 'Ancona y rio negro', '-', 'Cordoba', 'Cordoba', '', '8.30 a 14', 0, '0000-00-00', '0000-00-00'),
(1451, 'Vignale Carolina Despensa la Plaza', 'Klosterman 1605 esq Coto', '351 5 190670', 'Cordoba', 'Cordoba', '', '10 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1452, 'Minimercado el Puchi', 'San Juan esq Maipu', '3572 55-0027', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1453, 'Arguello Sandra', 'Diaz De La Fuente 1931', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1454, 'Viviana Pereyra', 'Aconcagua 4052', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1455, 'Gramajo Daniela', 'Aconcagua 4112', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1456, 'Sandra Peña', 'Gabriela Mistral 3300', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1457, 'Natalia Dastres.', 'solares 1411', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1458, 'Jose Saire.', 'Solares 1332', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1459, 'Bustamante Susana', 'Publica 1 2554', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1460, 'Garay Araceli.', 'Fortín 4194', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1461, 'Catia Legisamon', 'Fortín 3783', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1462, 'Manrique Silvina', 'Thalma 3202', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1463, 'Nancy Coloma', 'Thalma 2921', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1464, 'Crazy Drinks  Gladys Velez', 'Sixto Alberto Peralta 4135', '351 2059298', 'Cordoba', 'Cordoba', '', '9.30 a 13.30', 0, '0000-00-00', '0000-00-00'),
(1465, 'Fiambreria Cacheuta - Laura Farias', 'Cacheuta 4162', '351 5050367', 'Cordoba', 'Cordoba', '', '9.30 a 13.3018 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1466, 'Colegio Sec. Jose Campelone Cantina Colegio', 'Hugo Juarez 1815', '351 7374266', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1467, 'David Pescara', 'Roque arias 2920 esquina los pinos', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1468, 'Teresa del valle Mansilla', 'Octaviano navarro 4557', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1469, 'Castro José Luis', 'Aviador richason 2114', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1470, 'Yanina', 'La entente 2795', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1471, 'Nelly Diaz', 'San Jerónimo 3361', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1472, 'Walter Contreras', 'Tafi 1115..local 6', '351 2543855', 'Cordoba', 'Cordoba', '', '10 a 15...y 18 a 22', 0, '0000-00-00', '0000-00-00'),
(1473, 'Cadre Lucas', 'República de Siria y Venez sarfield', '3572544208', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1474, 'Lívio', 'Colon 2830', '-', 'Cordoba', 'Cordoba', '', '8 a 14 hs y de 16.30 a 23', 0, '0000-00-00', '0000-00-00'),
(1475, 'Lorena Manzano', 'Tomas Garzon 346', '3572449233', 'Oncativo', 'Cordoba', '', '9hs a 13hs 17hs a 20hs', 0, '0000-00-00', '0000-00-00'),
(1476, 'Matias Ramonda', 'Rivadavia esq Piacenza', '3572585919', 'Oncativo', 'Cordoba', '', '8hs 14hs y 16hs 23hs', 0, '0000-00-00', '0000-00-00'),
(1477, 'Lourdes Vallejos', 'San Jeronimo', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1478, 'Eugenia torres', 'Paso de los andes 2644', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1479, 'Gaston Crhistian', 'Naciones Unidas 1017', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1480, 'Despensa del Valle', 'Rio negro 4250', '351 6270676', 'Cordoba', 'Cordoba', '', '9 a 22hs', 0, '0000-00-00', '0000-00-00'),
(1481, 'Agua de Roca', 'Rio negro 4300 esq.Fatala', '3516777687', 'Cordoba', 'Cordoba', '', '10.30 a 13..18 a 20.30', 0, '0000-00-00', '0000-00-00'),
(1482, 'Filipa Irma Juana', 'Cafayate y treviso 1255(los olmos)', '3514611532', 'Cordoba', 'Cordoba', '', '8.30 a 13.30...17.30 a 21', 0, '0000-00-00', '0000-00-00'),
(1483, 'Melania Garcia', 'San Luis Esq Velez Sarfield', '-', 'Rio Segundo', 'Cordoba', '', '8 a 12 - 18 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1484, 'Lorena Lazarte', 'Fleming 2164', '3512821278', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1485, 'Lucia Choque', 'Fournier 2174', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1486, 'Noelia Righini', 'Thalma 2235', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1487, 'Alejandra De Lorenzo', 'Tirana 4707', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1488, 'Teresa Villalba', 'Petirosi 3295', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1489, 'Gisela Gomez', 'Taboada 611 Local 2', '3516458792', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1490, 'Noelia Guzman', 'Lazaro Langer 508 esq Tenerife', '3513578377', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1491, 'Pablo Faro', 'Fleming 3305', '3515727647', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1492, 'Silvana Bonora', 'Fleming 3595', '3513984614', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1493, 'Alicia Ramacciotti', 'Peteroa 1921', '3513289380', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1494, 'Heredia Silvia', 'Alianza 4309', '153233999', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1495, 'Catalina', 'Aviador kisley 2109', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1496, 'Julio Ponce', 'Pje dela peña 3615', '-', '', '', '', '09 hasta las 22', 0, '0000-00-00', '0000-00-00'),
(1497, 'Silvia Herrera', 'Parga 3386 esq Langer', '3517064454', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1498, 'Raul Mansilla', 'Cacheuta 3809', '3515399692', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1499, 'Roxana Sosa', 'Espora 2397', '3515473811', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1500, 'Carmen Ramírez', 'Lagunilla 2716', '3517016403', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1501, 'María Ángel Arraigada (Despensa Adrián)', 'Champaqui 2519', '3518028482', 'Cordoba', '', '', '9:30 a 14:00 17:00 a 23:0', 0, '0000-00-00', '0000-00-00'),
(1502, 'Paula Cross', 'Champaqui 2335 esqu cumbres negras', '3518012487', 'Cordoba', '', '', '9:00 a 14:00  17:00 a 22:', 0, '0000-00-00', '0000-00-00'),
(1503, 'Ana María', 'Clemencue 1271', '3512866551', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1504, 'Despensa Alberdi', 'Santa rosa 1716', '3513499202', 'Cordoba', 'Cordoba', '', '10:00 a 15:00_ 17:30 a 22', 0, '0000-00-00', '0000-00-00'),
(1505, 'Despensa Mateo', 'La tablada 2046', '3513129626', 'Cordoba', 'Cordoba', '', '07 a 23', 0, '0000-00-00', '0000-00-00'),
(1506, 'Sofia CBA', 'Neuquén 231', '3512409470', 'Cordoba', 'Cordoba', '', '08 a 00', 0, '0000-00-00', '0000-00-00'),
(1507, 'Patricio Agüero', 'Santa rosa 1571', '3515155146', 'Cordoba', 'Cordoba', '', '07 a 23', 0, '0000-00-00', '0000-00-00'),
(1508, 'Rogelio CBA', 'Santa rosa 1465', '3518180827', 'Cordoba', 'Cordoba', '', '09 a 00', 0, '0000-00-00', '0000-00-00'),
(1509, 'Carolina Luján', 'Aconquija 3009', '9 a 23 hs', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1510, 'Pablo Daer', 'Nevado 2764', '156565424', 'Cordoba', 'Cordoba', '', '9 a 14', 0, '0000-00-00', '0000-00-00'),
(1511, 'Pereyra María Victoria', 'Paso de los andes 2644 local 3', '7 a 20 hs', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1512, 'Pérez Laureliana', 'Pampa 1985 esquina presiado el Tucu', '155183138', 'Cordoba', 'Cordoba', '', '9 a 14 , 18 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1513, 'Juárez Sergio', 'Julio roca 701', '3518165886', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1514, 'Mariano Oviedo', 'Julio roca 725', '3512331512', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1515, 'Gladys Pedroza', 'Argandoña 2083', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1516, 'Ancelma Cinco', 'Fatala 1310', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1517, 'Despensa Del Valle', 'Kloosterman esq. Rio Negro', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1518, 'Silvia Quevedo', 'Kloosterman 1240', '-', 'Cordoba', 'Cordoba', '', '9 a 22', 0, '0000-00-00', '0000-00-00'),
(1519, 'Panadería La nona', 'Río negro esq. Piamonte', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1520, 'Marina Botero Forrajeria Las Vias', 'Mateos de Matos Neron y San antonio', '-', 'Cordoba', 'Cordoba', '', '9:30 a 1317 a 20', 0, '0000-00-00', '0000-00-00'),
(1521, 'Almacén San Daniel', 'Lazaro Langer y Tenerife', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1522, 'Carolina Almacén Fantasía', 'Artu Orgaz 241 loc3', '3516533958', 'Cordoba', '', '', 'A partir de las 10:00 de', 0, '0000-00-00', '0000-00-00'),
(1523, 'Carla Peralta', '-', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1524, 'Florecía Reina', 'Misiones', '3572610151', 'Manfredi', 'Cordoba', '', '8 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1525, 'Graciela Espinosa', 'Yapeyú Y Parana', '3572537129', 'Oncativo', 'Cordoba', '', '8:30 a 13hs y 17hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1526, 'Despensa La Plaza', 'Kloosterman esq. Carlos Coto', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1527, 'Comedor Miyagi', 'Ruta 9', '-', 'Manfredi', '', '', '8hs a 17hs', 0, '0000-00-00', '0000-00-00'),
(1528, 'Melisa Gallo', 'Santa Cruz 123 (casa de familia)', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1529, 'Ricardo Bechi', 'Horacio Martínez 3443', '3517620730', 'Cordoba', 'Cordoba', '', '8:00 a 13:30 17:30 a 21:3', 0, '0000-00-00', '0000-00-00'),
(1530, 'Nilos Cajil Mis 3 J', 'Colon 2432', '3517566944', 'Cordoba', 'Cordoba', '', '08:00 a 21:00', 0, '0000-00-00', '0000-00-00'),
(1531, 'Roxana La reserva', 'Colon 2382', '3516330419', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1532, 'Despensa Zary', 'Colón 2120', '3513929320', 'Cordoba', 'Cordoba', '', '08:00 a 14:00 y  17:00 a', 0, '0000-00-00', '0000-00-00'),
(1533, 'Mariano Gordis', 'Santa rosa 2599', '3512714920', 'Cordoba', '', '', '08:00 a 12:00 y 17:00 a 2', 0, '0000-00-00', '0000-00-00'),
(1534, 'Carlos Hernández', 'Santa rosa 2522', '3513332728', 'Cordoba', '', '', '09:30 a 15:00 y 17:30 a 0', 0, '0000-00-00', '0000-00-00'),
(1535, 'José Torres', 'La Rioja 2621', '3512688159', 'Cordoba', '', '', '08:00 a 22:00', 0, '0000-00-00', '0000-00-00'),
(1536, 'Panaderia Emanuel', 'Irigoyen esq Salta', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1537, 'Carolina Arrieta', 'Belgrano 1537', '-', 'Rio Segundo', 'Cordoba', '', '9 a 15 HS', 0, '0000-00-00', '0000-00-00'),
(1538, 'Gabriel Gomez', 'Liniers esq La Rioja', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1539, 'Rosa Salguero', 'Julio Roca 1775', '-', 'Rio Segundo', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(1540, 'Renta Jovert', 'Hipolito Irigoyen 1838', '-', 'Rio Segundo', 'Cba', '', '', 0, '0000-00-00', '0000-00-00'),
(1542, 'Chesta Rita', 'Irigoyen esq Salta', '-', 'Rio Segundo', 'Córdoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1543, 'Livio Despensa Ghandi', 'Av colon 2830', '3513184226', 'Cordoba', 'Cordoba', '', '08:00 a 14 - 16:30 a 22 h', 0, '0000-00-00', '0000-00-00'),
(1544, 'Paola Despensa SB', 'Av colon 3321', '3512740415', 'Cordoba', 'Cordoba', '', '08:00 a 00:00', 0, '0000-00-00', '0000-00-00'),
(1545, 'Natalia Mugas', 'La Rioja 3058', '3515390996', 'Cordoba', 'Cordoba', '', '10:30 a 15:30-18:30 a 23.', 0, '0000-00-00', '0000-00-00'),
(1546, 'Eduardo Ruiz', 'Santa rosa 2900', '3512009623', 'Cordoba', 'Cordoba', '', '09:30 a 14 y 18 a 22', 0, '0000-00-00', '0000-00-00'),
(1547, 'Elizabeth Márquez', 'Humberto primo 2970', '3512067673', 'Cordoba', 'Cordoba', '', '07:30 a 14 y 17:30 a 23', 0, '0000-00-00', '0000-00-00'),
(1548, 'Karen Nieva', 'Caferrata 474', '3517035199', 'Cordoba', 'Cordoba', '', '10:00 a 23:00', 0, '0000-00-00', '0000-00-00'),
(1549, 'Leo Limpielux', 'Av colon 3136', '1127407388', 'Cordoba', 'Cordoba', '', '9.30 a 13.30 hs-17 a 21 h', 0, '0000-00-00', '0000-00-00'),
(1550, 'Rocío Suárez', 'Obispo maldonado 2011', '351 812-6485', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1551, 'Carlos Bazán', 'Petirosi 2700 Esq Antártida', '351255602', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1552, 'Mansilla Gisela', 'Petirosi 2681', '3513831758', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1553, 'Carnero Lucas Drink punto 20', 'Fuerza aérea 4545', '3516718418', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1554, 'Alejandra Anabella Cortez', 'Michelson 7764', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1555, 'Alicia AyA', 'Av gral paz 454', '4244834', 'Cordoba', 'Cordoba', '', '08 a 22', 0, '0000-00-00', '0000-00-00'),
(1556, 'Vanesa Punto A', 'Avellaneda 436', '351 872-9772', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1557, 'Noelia Gaspar', 'Urquiza 265', '3517514793', 'Cordoba', 'Cordoba', '', '09:30 a 19:00', 0, '0000-00-00', '0000-00-00'),
(1558, 'Jerónimo Moyano', 'Humberto primo 515', '3515917263', 'Cordoba', 'Cordoba', '', '06 a 20', 0, '0000-00-00', '0000-00-00'),
(1559, 'Sandra Sueño', 'Humberto primo 397', '3515456610', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1560, 'Gabriela Moyano', 'Santa rosa 789', '3515163296', 'Cordoba', 'Cordoba', '', '09:30 a 20:30', 0, '0000-00-00', '0000-00-00'),
(1561, 'Hugo Mandrilli', 'Naciones unidas 283 panadería', '3516085349', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1562, 'Viviana Sánchez', 'Olayon 1808', '3515070392', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1563, 'Jorge Andres Manzanelli (Ferreteria Zarate)', 'Monseñor Pablo cabrera 5030', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1564, 'Mateo Luna', 'Santa Cruz 261', '3512946581', 'Manfredi', 'Cordoba', '', '10hs 23hs', 0, '0000-00-00', '0000-00-00'),
(1565, 'Leo Gringuello', 'Intendente Ventre 350', '3572523740', 'Oncativo', 'Cordoba', '', '8hs a 13hs y 16hs a 21hs', 0, '0000-00-00', '0000-00-00'),
(1566, 'Josefina Caseres', 'La Rioja 1401 local 4', '3513852410', 'Cordoba', 'Cordoba', '', '06:30 a 13:30 y 16:00 a 2', 0, '0000-00-00', '0000-00-00'),
(1567, 'Katy Family', 'Santa fe 297', '3513507085', 'Cordoba', 'Cordoba', '', '07 a 00', 0, '0000-00-00', '0000-00-00'),
(1568, 'Antonio López', 'Santa Rosa 1895', '351 313-7973', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1569, 'Nahuel González', 'Taboada 745', '-', 'Cordoba', 'Cordoba', '', '9:30 a14 y 17 a 22', 0, '0000-00-00', '0000-00-00'),
(1570, 'Panaderia Acapulco', 'Armada Argentina 98 esq elíseo soaje', '-', 'Cordoba', 'Cordoba', '', '7 a 22', 0, '0000-00-00', '0000-00-00'),
(1571, 'Celeste Reina', 'Capri 3619', '-', 'Cordoba', 'Cordoba', '', '8 a 16', 0, '0000-00-00', '0000-00-00'),
(1572, 'Dietetica Tita', 'Villavicencio 1906', '3584358457', 'Cordoba', 'Cordoba', '', '9:30 a 13:30 17:30 a 21', 0, '0000-00-00', '0000-00-00'),
(1573, 'Carniceria Almacen Smata', 'Manir Fatala 1310', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1574, 'Melina Nieva', 'Máximo Mena 1750', '3517570654', 'Cordoba', 'Cordoba', '', '7:30 a 22hrs', 0, '0000-00-00', '0000-00-00'),
(1575, 'Ramírez Silvia', 'Hugo Juarez 1845', '-', 'Cordoba', 'Cordoba', '', '7 a 22 hrs', 0, '0000-00-00', '0000-00-00'),
(1576, 'Maxi Kiosco Mawe', 'Kloosterman esq gladys vera', '-', 'Cordoba', '', '', '9 a 14 de 18 a 22', 0, '0000-00-00', '0000-00-00'),
(1577, 'James Despensa Pupita', 'Santa rosa 2000', '351 563-2398', 'Cordoba', 'Cordoba', '', '07:00 a 01:00', 0, '0000-00-00', '0000-00-00'),
(1578, 'Rita Palomino', 'Silvestre remonda 225', '3518603890', 'Cordoba', 'Cordoba', '', '09:00 a 13:00', 0, '0000-00-00', '0000-00-00'),
(1579, 'Diego La mano de Dios', 'Santa rosa 2195', '3512379339', 'Cordoba', 'Cordoba', '', '07:30 a 23:00', 0, '0000-00-00', '0000-00-00'),
(1580, 'Pabla Matu.Th', 'Enfermera Clermont 339', '3515397105', 'Cordoba', 'Cordoba', '', '3515397105', 0, '0000-00-00', '0000-00-00'),
(1581, 'Agustín Dehmen', 'Julio Roca 1265', '3516230880', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1582, 'Luana Moreno', 'Thalma 2740', '3512018072', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1583, 'Oriana Orellano', 'Lagunilla 3524', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1584, 'Ana aguilera', 'Clemencue 1271  entre quintuco y sgto Gómez', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1585, 'Pamela Pastor', '-', '-', 'Cordoba', '', '', '', 0, '0000-00-00', '0000-00-00'),
(1586, 'Paulo', 'Arturo Orgaz 459', '351 359-0893', 'Cordoba', '', '', '08:00 a 22:00', 0, '0000-00-00', '0000-00-00'),
(1587, 'Sususa Guillén', 'Santa rosa 1667', '3513239332', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1588, 'Lobo Mirta', 'José Terri 4076', '155286745', 'Cordoba', '', '', '8:30 a 13:30 18:00 a 22:0', 0, '0000-00-00', '0000-00-00'),
(1589, 'Valeria Figueroa', 'Aguirre camara 504', '3515914376', 'Cordoba', 'Cordoba', '', '09:00 a 00:00', 0, '0000-00-00', '0000-00-00'),
(1590, 'Moyano Cristian', 'Fuerza aérea 3441', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1591, 'Carla CBA', 'Lagunilla 3400', '3516677625', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1592, 'Marcos Barraza', 'Figueroa Alcorta 390', '3517517995', 'Cordoba', 'Cordoba', '', '09:00 a 21:00', 0, '0000-00-00', '0000-00-00'),
(1593, 'Sonia Mercadito', 'La Rioja 261', '3513264526', 'Cordoba', 'Cordoba', '', '08:30 a 21:00', 0, '0000-00-00', '0000-00-00'),
(1594, 'Daniel Martínez', 'Colon 874', '351 615-1541', 'Cordoba', 'Cordoba', '', '09:00 a 22:00', 0, '0000-00-00', '0000-00-00'),
(1595, 'Santiago Alcázar', 'Sarmiento 1730', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1596, 'Buiatti Roxana', '24 de septiembre 2430', '351 305-9827', '', 'Cordoba', '', '9 a 13 y de 18 a 21.30', 0, '0000-00-00', '0000-00-00'),
(1597, 'Libreria Tito', 'Hugo Juarez 1851', '3516331782', 'Cordoba', 'Córdoba', '', '9 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1598, 'Gabriela Paez', 'Santa fe 339', '3513507442', 'Cordoba', 'Cordoba', '', '08:00 a 00:00', 0, '0000-00-00', '0000-00-00'),
(1599, 'Soledad Librería Felipe', 'La Rioja 1401 local 3', '351 514-8904', 'Cordoba', 'Cordoba', '', '07:30 a 20:00', 0, '0000-00-00', '0000-00-00'),
(1600, 'Gladys La familia', 'Hualfin 435', '3516480519', 'Cordoba', 'Cordoba', '', '08 a 12:00 - 14 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1601, 'Ezequiel Sudatti', 'Lazcano 1012', '3513045512', 'Cordoba', 'Cordoba', '', '8 a 14 - 17 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1602, 'Priscila Funes', 'Rio Negro 3785', '3515325563', 'Cordoba', 'Cordoba', '', '9.15 a 14.30- 17.30 a 22.', 0, '0000-00-00', '0000-00-00'),
(1603, 'Paola Rodríguez', 'Cacheuta 4210 (local 3) rejas verdes', '156690044', 'Cordoba', 'Cordoba', '', '9:30 a 13:00 5:30 a 8:30', 0, '0000-00-00', '0000-00-00'),
(1604, 'Mariela Bustamante', 'La Rioja 2274', '351 572-5707', 'Cordoba', 'Cordoba', '', '12:30 a 22:00', 0, '0000-00-00', '0000-00-00'),
(1605, 'Pablo Mercadito Dioni', 'Humberto primo 2100', '351 619-8722', 'Cordoba', 'Cordoba', '', '10:00 a 00:00', 0, '0000-00-00', '0000-00-00'),
(1606, 'Carrascoza Lisett', 'Brasil 257', '3572 401260', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1607, 'Lucía Arevalo', 'Av.  Argentina esq Guatemala', '3572 530402', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1608, 'Leandro Rodriguez', 'Alem 284', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1609, 'Turex Mariana', 'Corrientes 660', '3572588634', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1610, 'Yanina CBA', 'Estación pucara shop', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1611, 'Angela Bruno', '-', '-', 'Cordoba', 'Cordoba', '', '-', 0, '0000-00-00', '0000-00-00'),
(1612, 'Gabriel Ruarte', '-', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1613, 'Juan Alessandrini', '-', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1614, 'Graciela Kiosco Tata', 'Chutro 486', '3515335519', 'Cordoba', 'Cordoba', '', '08:00 a 22:00', 0, '0000-00-00', '0000-00-00'),
(1615, 'Diego genovesi Perfumería', 'Santa rosa 1699', '351 650-4655', 'Cordoba', 'Cordoba', '', '9 a 13hs y de 18 a 21hs', 0, '0000-00-00', '0000-00-00'),
(1616, 'Gladys Nuñez', 'Tablada 3155', '3517277563', 'Cordoba', '', '', '09 A15 17 A 22 HS', 0, '0000-00-00', '0000-00-00'),
(1617, 'Oscar Gómes', 'Cayetano Silva e igualdad', '3515294232', 'Cordoba', 'Cordoba', '', '08:30 a 14 y 18 A 22.30', 0, '0000-00-00', '0000-00-00'),
(1618, 'Paola Rodríguez', 'La tablada 3312', '351 367-9237', 'Cordoba', '', '', '09:00 a 23:00', 0, '0000-00-00', '0000-00-00'),
(1619, 'Gustavo CBA', 'Aguirre camara 702', '3516290188', 'Cordoba', 'Cordoba', '', '10:00 a 24:00', 0, '0000-00-00', '0000-00-00'),
(1620, 'Emanuel Avaca', 'Paso de los andes 3046', '3517646724', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1621, 'VERDULERIA LOS RODRÍGUEZ ', 'Santa Rosa 417', '3518091456', 'Cordoba', 'Cordoba', '', '8:30 a 22', 0, '0000-00-00', '0000-00-00'),
(1622, 'Carmen Quiniela', 'Santa rosa 265', '351 329-1729', 'Cordoba', 'Cordoba', '', '08:30 a 14:30 y 14:30 a 8', 0, '0000-00-00', '0000-00-00'),
(1623, 'Pinto Lorena', 'Máximo mena 1735', '3518810088', 'Cordoba', 'Cordoba', '', '8 hasta 23;30', 0, '0000-00-00', '0000-00-00'),
(1624, 'Romina Peralta', 'Gral Paz 550', '-', 'Manfredi', 'Cordoba', '', '9.30 a 12.30 - 17 a 21', 0, '0000-00-00', '0000-00-00'),
(1625, 'Diaz Mariana', 'Av Sabatinni al 1465', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1626, 'Blanca López', 'Horacio martinez Esq prieto casa 8', '3513509765', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1627, 'Anahi Alvarez', 'San Jose 1496', '-', 'Villa del Rosario', 'Cordoba', '', '7:30hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1628, 'Clara Castelli Panadería Migliori', 'Tronador 2030', '3516356716', 'Cordoba', 'Cordoba', '', '7:30 a 13hr y de 16 a 21h', 0, '0000-00-00', '0000-00-00'),
(1629, 'Celeste Reyna Despensa Salvador', 'Capri 3619', '3513944815', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1630, 'Monica Molina', 'Av. Argentina esq Guatemala', '3572581956', 'Rio Segundo', 'Cordoba', '', '9.30 a 12.40 hs', 0, '0000-00-00', '0000-00-00'),
(1631, 'Savala Priscila', 'Roque Arias 2129', '3516575889', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1632, 'Jose Luis El Caraqueño', 'Sucre 380', '1168393032', 'Cordoba', 'Cordoba', '', '8 a 15 - 17 a 00', 0, '0000-00-00', '0000-00-00'),
(1633, 'Carlos masxmenos', 'Avellaneda 316', '351 572-6252', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1634, 'Anahi Peralta', 'Córdoba camino al vado', '3572 618754', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1635, 'La Pepona', 'Santa Fe 916', '3572619230', 'Rio Segundo', 'Cordoba', '', '10 hs a 14 hs', 0, '0000-00-00', '0000-00-00'),
(1636, 'Silvia Hidalgo', 'Espora 2396', '3513047797', 'Cordoba', 'Cordoba', '', '9:30 a 14 y de 17:30 a 22', 0, '0000-00-00', '0000-00-00'),
(1637, 'Marcia Almacén Claudia', 'La rioja 3301', '351 600-0343', 'Cordoba', 'Cordoba', '', '08 a 21', 0, '0000-00-00', '0000-00-00'),
(1638, 'Claudia ludueña', 'Rosales 2741', '351 331-7018', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1639, 'Gladys verdulería', 'La Rioja 619', '351 8181892', 'Cordoba', 'Cordoba', '', '09 a 14 (pedidos)', 0, '0000-00-00', '0000-00-00'),
(1640, 'Guillermo Herrador', 'Avellaneda 443', '3518088671', 'Cordoba', 'Cordoba', '', '08 a 19 hs', 0, '0000-00-00', '0000-00-00'),
(1641, 'Ariel Verdulería Lourdes', 'Santa rosa 1175', '3512320426', 'Cordoba', '', '', '08 a 22:30', 0, '0000-00-00', '0000-00-00'),
(1642, 'Mónica dotavio', 'Huiliche 1108 esq cachauta', '7 a 21 hrs', 'Cordoba', '', '', '3516746323', 0, '0000-00-00', '0000-00-00'),
(1643, 'Julieta Batisoco', 'Virginia yanis 247', '3572581495', 'Manfredi', 'Cordoba', '', '9hs a 1hs 16:30 a 20hs', 0, '0000-00-00', '0000-00-00'),
(1644, 'Liliana Valdez', 'Santa Cruz 181', '3518649166', 'Rio Segundo', 'Cordoba', '', '8 a 14 hs  17hs a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1645, 'Pedrocca Pablo .', 'Luis Pasteur 2753', '3515724061', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1646, 'Cristian CBA', 'Tronador 2395', '-', 'Cordoba', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1647, 'Despensa Julian', 'Av. Argentina 400', '3572441140', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1648, 'Jose Manuel', 'Hipolito Yrigoyen esq Salta', '3572522004', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1649, 'Fabiola Gimenez', 'Cottonaro 369', '3572448552', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1650, 'Nicolas Baudraco', 'Libertad 215', '3572529406', 'Pilar', 'Cordoba', '', '9 a 13 - 17 a 21 hs', 0, '0000-00-00', '0000-00-00'),
(1651, 'Sandra Reynoso', 'Jujuy 1227', '3572406954', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1652, 'Monica Gomez', 'Misiones 1100', '3572523606', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1653, 'Valentino Zuppa', 'Velez Sarfield esq Rivadavia', '3572593094', 'Oncativo', 'Cordoba', '', '8 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1654, 'Lucas Santillan', '9 de Julio 992', '3572541360', 'Pilar', 'Cordoba', '', '7.30 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1655, 'Thiago Gozalez', 'Santa Cruz 505', '3572667786', 'Oncativo', 'Cordoba', '', '8 a 23 hs', 0, '0000-00-00', '0000-00-00'),
(1656, 'Perez María Celeste', 'Santa fe 435', '3573414951', 'Villa del Rosario', 'Cordoba', '', '9hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1657, 'Diaz Juan', 'San Jose 762', '3573499007', 'Villa del Rosario', 'Cordoba', '', '9hs 13hs 16hs a 23hs', 0, '0000-00-00', '0000-00-00'),
(1658, 'Mario Gigena', '9 de Julio sur 198', '3573403695', 'Villa del Rosario', 'Cordoba', '', '8:30hs a 12:30hs a 17:30h', 0, '0000-00-00', '0000-00-00'),
(1659, 'Gabriel Reynoso', '25 de Mayo 1270', '3573711845', 'Villa del Rosario', '', '', '8 a 22 hs', 0, '0000-00-00', '0000-00-00'),
(1660, 'Nora Rolando (Sandwicheria Perikos)', 'San Martin 1070', '3573451057', 'Villa del Rosario', 'Cordoba', '', '9 a 12.30 hs', 0, '0000-00-00', '0000-00-00'),
(1661, 'Camila Parra', 'Salta esq Ranchos', '3518553490', 'Rio Segundo', 'Cordoba', '', '9 a 13 hs', 0, '0000-00-00', '0000-00-00'),
(1662, 'SOL PEDIDOS', 'Pedro Medrano 5025', '3512653100', 'Cordoba', 'Cordoba', '', '24/7', 0, '0000-00-00', '0000-00-00'),
(1663, 'Rebeca Tejeda', 'Obispo Ferreyra 420', '3572543614', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1664, 'Roxana (Panaderia)', 'San Martin 379', '3572 53-8856', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1665, 'Despensa Elisa', 'Tucuman 101', '3516 10-4328', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1666, 'Despensa Laura', 'Salta 89', '-', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1667, 'Cristina Lavadero', '(Atras de la Shell)', '3573411103', 'Villa del Rosario', 'Cordoba', '', '8:30 a 19hs', 0, '0000-00-00', '0000-00-00'),
(1668, 'Lucas Lujan', 'Ruta 9 esq Maipu', '3572531903', 'Pilar', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1669, 'Edgar Aguero (AutoServicio Del Valle)', 'Velez Sarfield 350', '3572594342', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1670, 'Pescaderia', 'Maipu 172', '3572612021', 'Costa Sacate', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00');
INSERT INTO `clientes` (`id`, `nombre`, `Direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `clihab`, `createdAt`, `updatedAt`) VALUES
(1671, 'RUTH AMAYA', 'LAVALLE 1752', '3572570959', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1672, 'Polleria Yanina', 'Salta esq ruta c45', '3572613321', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1673, 'Santa Rita', 'Mendoza 578', '3572442426', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1674, 'Sara Lozada', 'Mendoza 388', '3572 584509', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1675, 'Joel Figueroa', 'Catamarca 506', '3572446164', 'Lozada', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1676, 'Yesica Paredes', '-', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1677, 'Lorena Rossetti', 'Pelegrini esq Independencia', '3532438740', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1678, 'Maria Villalba', 'Colon 364', '3572405714', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1679, 'Polleria Normita (Mercedez Duarte)', 'Sarmiento 973', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1680, 'Mario Buffa (Cantina)', 'Colon 150', '-', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1681, 'Viviana Vanegas', 'Ranchos 1360', '3573404594', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1682, 'Mauro Ferroni', '25 de Mayo esq San Luis', '3573415872', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1683, 'Marisa Ochoa', 'Buenos Aires 1265', '3572448902', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1684, 'Maxikiosko Mechi', 'La rioja 981', '3573503308', 'Villa del Rosario', 'Cordoba', '', '7 a 14 - 16 a 20', 0, '0000-00-00', '0000-00-00'),
(1685, 'Ariel Taporaleti', 'Independencia 485', '3572531416', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1686, 'Shanet Lozada', 'Salta 360', '3517423296', 'Lozada', 'Cordoba', '', '8 a 14', 0, '0000-00-00', '0000-00-00'),
(1687, 'Silvina Fantone', 'Rio Cuarto 1325', '3573413374', 'Villa del Rosario', 'Cordoba', '', '8.30 a 14 - 15 ...', 0, '0000-00-00', '0000-00-00'),
(1688, 'Diego Roman', 'San Luis 1206', '3572548892', 'Rio Segundo', 'Cordoba', '', '10 Hs En Adelante', 0, '0000-00-00', '0000-00-00'),
(1689, 'Alejandro Liendo', 'Frente Mónica Albornoz', '-', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1690, 'Daniela Paredes', 'Malvinas Argentinas 1380', '-', 'Villa del Rosario', 'Cordoba', '', '9 a 20', 0, '0000-00-00', '0000-00-00'),
(1691, 'Franco Britos', 'Chile 58 (Hugo Britos)', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1692, 'Candela Britos', 'Chile 58 (Hugo Britos)', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1693, 'Abel Britos', 'Chile 58 (Hugo Britos)', '-', 'Rio Segundo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1694, 'Claudia Quiroga', 'Zenon Lopez y Tala', '3572505753', 'Rio Segundo', 'Cordoba', '', '9 a 13', 0, '0000-00-00', '0000-00-00'),
(1695, 'Nora Peralta', 'Jamaica S/N entre salvador y guatemala', '3572523445', 'Rio Segundo', 'Cordoba', '', '11 a 21 hrs', 0, '0000-00-00', '0000-00-00'),
(1696, 'Evelin Castillo', 'Sarmiento y Cordoba', '-', 'Rio Segundo', 'Cordoba', '', '10 a 21 hrs', 0, '0000-00-00', '0000-00-00'),
(1697, 'Clidys Casas', 'Jose Hernandez 795', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1698, 'Eduardo Corredera', 'Rio Negro 785', '3572502975', 'Oncativo', 'Cordoba', '', 'De corrido', 0, '0000-00-00', '0000-00-00'),
(1699, 'Ivana Alvarez - Mini Mercado Apu', 'Santa Cruz 261', '3512600047', 'Manfredi', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1700, 'Eduardo El Cortito', '-', '-', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1701, 'Crotto Gisela', '25 de Mayo y San Jose', '3573451415', 'Oncativo', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1702, 'Ivan Reparto', '-', '-', '', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1703, 'Ines Massola', 'Falucho 659', '460925', 'Oncativo', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1704, 'Raul Leguizamon', 'Eva Duarte 1340', '3573463047', 'Villa del Rosario', 'Cordoba', '', 'De Corrido', 0, '0000-00-00', '0000-00-00'),
(1705, 'Ruben Paredez', 'Domingo Peron 1354', '3573451949', 'Villa del Rosario', 'Cordoba', '', '', 0, '0000-00-00', '0000-00-00'),
(1712, 'Giraldo Verduleria', 'Ruta 9 2030', '3572508648', 'Pilar', 'Cordoba', '1', '1', 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_compra` date NOT NULL,
  `id_prov` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `num_fac` int(13) NOT NULL,
  `orden_pago` int(11) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `fecha`, `fecha_compra`, `id_prov`, `monto`, `num_fac`, `orden_pago`, `usuario`, `zona`) VALUES
(1, '2023-01-10', '2023-01-02', 1, 101983, 1745854, NULL, 7, 1),
(2, '2023-01-10', '2023-01-02', 0, 74262, 367066, NULL, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `id_reparto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `efectivo`
--

CREATE TABLE `efectivo` (
  `id` int(11) NOT NULL,
  `id_p_reparto` int(11) NOT NULL,
  `b1000` int(11) NOT NULL,
  `t_b1000` int(11) NOT NULL,
  `b_500` int(11) NOT NULL,
  `t_b500` int(11) NOT NULL,
  `b_200` int(11) NOT NULL,
  `t_b200` int(11) NOT NULL,
  `b_100` int(11) NOT NULL,
  `t_b100` int(11) NOT NULL,
  `b_50` int(11) NOT NULL,
  `t_b50` int(11) NOT NULL,
  `b_20` int(11) NOT NULL,
  `t_b20` int(11) NOT NULL,
  `b_10` int(11) NOT NULL,
  `t_b10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `efectivo`
--

INSERT INTO `efectivo` (`id`, `id_p_reparto`, `b1000`, `t_b1000`, `b_500`, `t_b500`, `b_200`, `t_b200`, `b_100`, `t_b100`, `b_50`, `t_b50`, `b_20`, `t_b20`, `b_10`, `t_b10`) VALUES
(6, 7, 31, 31000, 104, 52000, 51, 10200, 328, 32800, 2, 100, 2, 40, 2, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `monto` int(255) NOT NULL,
  `quien` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_credito`
--

CREATE TABLE `nota_credito` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ip_prov` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `num_nc` int(11) NOT NULL,
  `id_opago` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_debito`
--

CREATE TABLE `nota_debito` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_prov` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `id_opago` int(11) NOT NULL,
  `num_nd` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nvoclientes`
--

CREATE TABLE `nvoclientes` (
  `codigo` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cuit` varchar(50) NOT NULL,
  `clihorario` varchar(50) NOT NULL,
  `vendedor` varchar(50) NOT NULL,
  `codVendedor` int(11) NOT NULL,
  `procesado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nvoclientes`
--

INSERT INTO `nvoclientes` (`codigo`, `nombre`, `direccion`, `telefono`, `localidad`, `provincia`, `cuit`, `clihorario`, `vendedor`, `codVendedor`, `procesado`) VALUES
(1, 'alejandro', 'doroteo robles 3965', '3513549611', 'cordoba', 'cordoba', '20352800784', '8 a 22', '0', 0, 0),
(26, 'Mercedez', 'Corrientes 2131', '1638362', 'Costa sacate', 'Cba', '271527392719', '0 a 23:59', '0', 0, 0),
(27, 'franco', 'pepito', '1238766', 'cba', 'cba', '1238737490', '0 a 23:59', '0', 0, 0),
(28, 'sol', 'medrano 5025', '1248124896', 'cba', 'cba', '123894135', '12 a 12', '0', 0, 0),
(29, 'martin', 'necochea', '3512161101', 'cna', 'cba', '20245555556', '10-18', '0', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_pago`
--

CREATE TABLE `orden_pago` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_prov` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_nc` int(11) NOT NULL,
  `id_nd` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `zona` int(11) NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dirección` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  `tele_contacto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `dirección`, `telefono`, `contacto`, `tele_contacto`) VALUES
(0, 'Beta', 'Juan gorriti 1346', '12334', 'Mariel', '12345'),
(1, 'EJA', 'nose 1234', '123', 'yuliana', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_reparto`
--

CREATE TABLE `p_reparto` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `efectivo` int(11) DEFAULT NULL,
  `transferencia` int(11) DEFAULT NULL,
  `gastos` int(11) DEFAULT NULL,
  `descuentos` int(11) DEFAULT NULL,
  `faltantes` int(11) DEFAULT NULL,
  `cc_total` int(11) DEFAULT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `p_reparto`
--

INSERT INTO `p_reparto` (`id`, `fecha`, `efectivo`, `transferencia`, `gastos`, `descuentos`, `faltantes`, `cc_total`, `zona`) VALUES
(3, '2023-01-05', 1880, NULL, NULL, NULL, NULL, NULL, 1),
(4, '2023-01-06', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, '2023-01-07', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(6, '2023-01-07', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, '2023-01-09', 126160, NULL, NULL, NULL, NULL, 18597, 1),
(8, '2023-01-10', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, '2023-01-11', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(10, '2023-01-12', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, '2023-01-12', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(12, '2023-01-22', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(13, '2023-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, '2023-01-29', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, '2023-01-31', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(16, '2023-02-02', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(17, '2023-02-08', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(18, '2023-02-15', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19, '2023-02-20', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(20, '2023-02-26', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(21, '2023-02-28', NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencia`
--

CREATE TABLE `transferencia` (
  `id_tranf` int(11) NOT NULL,
  `id_pagos` int(11) NOT NULL,
  `id_cc` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `monto` int(11) NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transferencia`
--

INSERT INTO `transferencia` (`id_tranf`, `id_pagos`, `id_cc`, `fecha`, `usuario`, `monto`, `zona`) VALUES
(2, 145, 100, '2023-01-11', 'Franco', 16500, 2),
(3, 154, 107, '2023-01-13', 'Franco', 6384, 2),
(4, 287, 200, '2023-02-14', 'brenda', 7500, 1),
(5, 329, 213, '2023-02-15', 'brenda', 1000, 1),
(6, 408, 259, '2023-02-24', 'ale', 15754, 1),
(7, 432, 271, '2023-02-28', 'ale', 11006, 1),
(8, 441, 276, '2023-02-28', 'franco', 2000, 2),
(9, 512, 324, '2023-03-09', 'ale', 4000, 1),
(10, 568, 366, '2023-03-20', 'ale', 2657, 1),
(11, 575, 372, '2023-03-21', 'Ale', 4000, 1),
(12, 621, 402, '2023-03-29', 'ale', 9000, 1),
(13, 641, 417, '2023-03-31', 'ale', 12000, 1),
(14, 650, 429, '2023-04-05', 'ale', 4000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `codsistema` int(11) NOT NULL,
  `zona` int(11) DEFAULT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `id_cargo`, `codsistema`, `zona`, `createdAt`, `updatedAt`) VALUES
(1, 'Alejandro', 'ale', 'lola123', 2, 2, 1, '0000-00-00', '0000-00-00'),
(2, 'Sol', 'sol', 'lola2709', 1, 0, 3, '0000-00-00', '0000-00-00'),
(3, 'Franco', 'franco', '12345', 2, 4, 2, '0000-00-00', '0000-00-00'),
(4, 'Florencia', 'flor', '12345', 4, 5, 1, '0000-00-00', '0000-00-00'),
(5, 'Brenda', 'brenda', 'lola2709', 2, 0, 1, '0000-00-00', '0000-00-00'),
(6, 'Yesica Paredez', 'yesica', 'lola2709', 4, 0, 2, '0000-00-00', '0000-00-00'),
(7, 'Administrador', 'admin', 'admin-01', 1, 0, 3, '0000-00-00', '0000-00-00'),
(8, 'Maximo', 'maxi', '2205', 2, 0, 1, '0000-00-00', '0000-00-00'),
(9, 'Franco r2', 'franr2', '54321', 2, 0, 1, '0000-00-00', '0000-00-00'),
(10, 'franco onc', 'franonc', '54321', 4, 11, 2, '0000-00-00', '0000-00-00'),
(24, 'Rosalia', 'rosa', '4321', 1, 23, 1, '2023-08-15', '2023-08-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zona` int(11) NOT NULL,
  `zona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id_zona`, `zona`) VALUES
(1, 'Rio Segundo'),
(2, 'Oncativo'),
(3, 'mixta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cc_pagos`
--
ALTER TABLE `cc_pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_cc` (`id_cc`),
  ADD KEY `codcliente` (`codcliente`);

--
-- Indices de la tabla `cc_sva`
--
ALTER TABLE `cc_sva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prov` (`id_prov`),
  ADD KEY `orden_pago` (`orden_pago`,`usuario`,`zona`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `efectivo`
--
ALTER TABLE `efectivo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_p_reparto` (`id_p_reparto`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `nota_credito`
--
ALTER TABLE `nota_credito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_prov` (`ip_prov`,`id_compra`,`usuario`,`zona`),
  ADD KEY `zona` (`zona`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `nota_debito`
--
ALTER TABLE `nota_debito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prov` (`id_prov`,`usuario`,`zona`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `nvoclientes`
--
ALTER TABLE `nvoclientes`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codVendedor` (`codVendedor`);

--
-- Indices de la tabla `orden_pago`
--
ALTER TABLE `orden_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prov` (`id_prov`,`id_compra`,`id_nc`,`id_nd`,`zona`,`usuario`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_nc` (`id_nc`),
  ADD KEY `id_nd` (`id_nd`),
  ADD KEY `zona` (`zona`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_reparto`
--
ALTER TABLE `p_reparto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  ADD PRIMARY KEY (`id_tranf`),
  ADD KEY `id_pagos` (`id_pagos`),
  ADD KEY `id_cc` (`id_cc`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cargo` (`id_cargo`),
  ADD KEY `zona` (`zona`),
  ADD KEY `codsistema` (`codsistema`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cc_pagos`
--
ALTER TABLE `cc_pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT de la tabla `cc_sva`
--
ALTER TABLE `cc_sva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `efectivo`
--
ALTER TABLE `efectivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `nvoclientes`
--
ALTER TABLE `nvoclientes`
  MODIFY `codigo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `p_reparto`
--
ALTER TABLE `p_reparto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  MODIFY `id_tranf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cc_pagos`
--
ALTER TABLE `cc_pagos`
  ADD CONSTRAINT `cc_pagos_ibfk_1` FOREIGN KEY (`id_cc`) REFERENCES `cc_sva` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cc_sva`
--
ALTER TABLE `cc_sva`
  ADD CONSTRAINT `cc_sva_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cc_sva_ibfk_2` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `compras_ibfk_4` FOREIGN KEY (`orden_pago`) REFERENCES `orden_pago` (`id`);

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_ibfk_1` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `nota_credito`
--
ALTER TABLE `nota_credito`
  ADD CONSTRAINT `nota_credito_ibfk_1` FOREIGN KEY (`ip_prov`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `nota_credito_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `nota_credito_ibfk_3` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `nota_debito`
--
ALTER TABLE `nota_debito`
  ADD CONSTRAINT `nota_debito_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `nota_debito_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `nota_debito_ibfk_3` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `nvoclientes`
--
ALTER TABLE `nvoclientes`
  ADD CONSTRAINT `nvoclientes_ibfk_1` FOREIGN KEY (`codVendedor`) REFERENCES `usuarios` (`codsistema`);

--
-- Filtros para la tabla `orden_pago`
--
ALTER TABLE `orden_pago`
  ADD CONSTRAINT `orden_pago_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `orden_pago_ibfk_2` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `orden_pago_ibfk_3` FOREIGN KEY (`id_prov`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `orden_pago_ibfk_5` FOREIGN KEY (`id_nc`) REFERENCES `nota_credito` (`id`),
  ADD CONSTRAINT `orden_pago_ibfk_6` FOREIGN KEY (`id_nd`) REFERENCES `nota_debito` (`id`),
  ADD CONSTRAINT `orden_pago_ibfk_7` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`zona`) REFERENCES `zonas` (`id_zona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
