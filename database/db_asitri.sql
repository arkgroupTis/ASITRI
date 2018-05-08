-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2018 a las 02:05:33
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_asitri`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombreArea` varchar(60) NOT NULL,
  `descripcionArea` text NOT NULL,
  `cod_subarea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `idAsig` int(11) NOT NULL,
  `rol` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idProyecto` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `nombreCarrera` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `nombreCarrera`) VALUES
(1, 'Ing Sistemas'),
(2, 'Ing Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `idDoc` int(11) NOT NULL,
  `ciDoc` varchar(15) NOT NULL,
  `nombreDoc` varchar(60) NOT NULL,
  `apePaternoDoc` varchar(60) NOT NULL,
  `apeMaternoDoc` varchar(45) DEFAULT NULL,
  `emailDoc` varchar(50) NOT NULL,
  `telefonoDoc` decimal(10,0) NOT NULL,
  `tituloDoc` varchar(20) DEFAULT NULL,
  `cargaHoraria` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`idDoc`, `ciDoc`, `nombreDoc`, `apePaternoDoc`, `apeMaternoDoc`, `emailDoc`, `telefonoDoc`, `tituloDoc`, `cargaHoraria`) VALUES
(12, '', 'Samuel Roberto', 'Achá', 'Perez', 'cibo@supernet.com.bo', '70719123', 'Ing.', 'Tiempo Parcial'),
(13, '', 'Luis Roberto', 'Agreda', 'Corrales', 'luisagreda@hotmail.com', '4529557', 'Ing.', 'Tiempo Parcial'),
(14, '', 'Nancy Tatiana', 'Aparicio', 'Yuja', 'aparicio@ucbcba.edu.bo', '0', 'Msc.', 'Tiempo Parcial'),
(15, '', 'Ligia Jacqueline', 'Aranibar', 'La Fuente', 'ligiajacqueline@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(16, '', 'Walter', 'Arispe', 'Santander', 'santander@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(17, '', 'Jose Richard', 'Ayoroa', 'Cardozo', 'richard@correo.com', '0', 'Ing.', 'Tiempo Completo'),
(18, '', 'Pablo Ramon', 'Azero', 'Alcocer', 'pabloazero@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(19, '', 'Maria Leticia', 'Blanco', 'Coca', 'leticia@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(20, '', 'Alex Israel', 'Bustillos', 'Vargas', 'bustillos@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(21, '', 'Boris Marcelo', 'Calancha', 'Navia', 'boris@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Completo'),
(22, '', 'Indira Elva', 'Camacho', 'del Castillo', 'agrofru@gmail.com', '4529433', 'Msc.', 'Tiempo Parcial'),
(23, '', 'Alvaro Hernando', 'Carrasco', 'Calvo', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(24, '', 'Cecilia Beatriz', 'Castro', 'Lazarte', 'castro@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(25, '', 'Raul', 'Catari', 'Rios', 'micorreo@yahoo.com', '4233719', 'Lic.', 'Tiempo Parcial'),
(26, '', 'Maria Benita', 'Cespedes', 'Guizada', 'cespedes@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(27, '', 'Alex Danchgelo', 'Choque', 'Flores', 'choque@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(28, '', 'Francisco', 'Choque', 'Uno', 'uno@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial'),
(29, '', 'Carlos J. Alfredo', 'Cosio', 'Papadopolis', 'null', '4233719', 'Ing.', 'Tiempo Parcial'),
(30, '', 'Walter', 'Cossio', 'Cabrera', 'cossio@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(31, '', 'Vladimir', 'Costas', 'Jáuregui', 'vcostas@cs.umss.edu.bo', '4666037', 'Msc.', 'Tiempo Completo'),
(32, '', 'Grover', 'Cussi', 'Nicolas', 'gcussi@yahoo.com', '0', 'Lic.', 'Tiempo Parcial'),
(33, '', 'Jorge', 'Davalos', 'Brozovic', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(34, '', 'David Alfredo', 'Delgadillo', 'Cossio', 'delgadillo@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(35, '', 'David', 'Escalera', 'Fernandez', 'descalera@cs.umss.edu.bo', '0', 'Lic.', 'Tiempo Parcial'),
(36, '', 'Juan A.', 'Fernandez', 'León', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(37, '', 'David', 'Fernandez', 'Ramos', 'fernandez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(38, '', 'Americo', 'Fiorilo', 'Lozada', 'amefio@gmail.com', '0', 'Msc. Ing.', 'Tiempo Parcial'),
(39, '', 'Juan Marcelo', 'Flores', 'Soliz', 'marcelo@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(40, '', 'Corina Justina', 'Flores', 'Villarroel', 'corina@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(41, '', 'Juan Ruben', 'Garcia', 'Molina', 'garcia@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(42, '', 'Carmen Rosa', 'Garcia', 'Perez', 'carmenrosagarcia@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(43, '', 'Maria Estela', 'Grilo', 'Salvatierra', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(44, '', 'Osvaldo Walter', 'Gutierrez', 'Andrade', 'gutierrez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(45, '', 'Victor', 'Gutierrez', 'Martinez', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(46, '', 'Gonzalo E. Antonio', 'Guzman', 'Orellana', 'guzman@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(47, '', 'Johnny', 'Herrera', 'Acebey', 'herrera@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(48, '', 'Mauricio', 'Hoepfner', 'Reynolds', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(49, '', 'K. Rolando', 'Jaldin', 'Rosales', 'rjaldin@hotmail.com', '0', 'Msc. Lic.', 'Tiempo Completo'),
(50, '', 'Demetrio', 'Juchani', 'Bazualdo', 'juchani@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(51, '', 'Valentin', 'Laime', 'Zapata', 'laime@gmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(52, '', 'Gualberto', 'Leon', 'Romero', 'leon@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(53, '', 'Ruperto', 'León', 'Romero', 'ruperto@cs.umss.edu.bo', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(54, '', 'Tito Anibal', 'Lima', 'Vacaflor', 'tlima@quadraplastsrl.com', '70744138', 'Msc. Ing.', 'Tiempo Parcial'),
(55, '', 'Marcelo Javier', 'Lucano', 'Lucano', 'lucano@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(56, '', 'Mabel Gloria', 'Magariños', 'Villarroel', 'mabelm@fcyt.umss.edu.bo', '4234244', 'Ing.', 'Tiempo Parcial'),
(57, '', 'Roberto Juan', 'Manchego', 'Castellon', 'rmanchego@hotmail.com', '4232189', 'Ing.', 'Tiempo Parcial'),
(58, '', 'Carlos Benito', 'Manzur', 'Soria', 'ca.manzu@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(59, '', 'Amilcar Saul', 'Martinez', 'Maida', 'martinez@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(60, '', 'Julio', 'Medina', 'Gamboa', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(61, '', 'Victor R.', 'Mejia', 'Urquieta', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(62, '', 'Victor Hugo', 'Montaño', 'Quiroga', 'victor@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(63, '', 'Marco Antonio', 'Montecinos', 'Choque', 'markmcbo@gmail.com', '0', 'Msc. Lic.', 'Tiempo Parcial'),
(64, '', 'Yony Richard', 'Montoya', 'Burgos', 'yony@setbol.net', '71725138', 'Msc. Lic.', 'Tiempo Parcial'),
(65, '', 'Jose Gil', 'Omonte', 'Ojalvo', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(66, '', 'Jose Roberto', 'Omonte', 'Ojalvo', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(67, '', 'Jorge Walter', 'Orellana', 'Araoz', 'jw.orellana@umss.edu.bo', '0', 'Msc. Ing.', 'Tiempo Completo'),
(68, '', 'Ronald Edgar', 'Patiño', 'Tito', 'patino@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(69, '', 'Magda Lena', 'Peeters', 'Ilonaa', 'peeters@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(70, '', 'Omar David', 'Perez', 'Fuentes', 'omar_perez_f@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(71, '', 'Alfredo', 'Pericon', 'Balderrama', 'pericon@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(72, '', 'Abdon', 'Quiroz', 'Chavez', 'quiroz@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(73, '', 'Erika Patricia', 'Rodriguez', 'Bilbao', 'akirebilbao@gmail.com', '0', 'Msc. Lic.', 'Tiempo Completo'),
(74, '', 'Juan Antonio', 'Rodriguez', 'Sejas', 'rodriguez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(75, '', 'Ramiro', 'Rojas', 'Zurita', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(76, '', 'Patricia Elizabeth', 'Romero', 'Rodríguez', 'paromeror@gmail.com', '0', 'Msc. Lic.', 'Tiempo Parcial'),
(77, '', 'Rose Mary', 'Salazar', 'Anaya', 'rsalazar@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(78, '', 'Carla', 'Salazar', 'Serrudo', 'csalazar@memi.umss.edu.bo', '4233719', 'Msc. Lic.', 'Tiempo Completo'),
(79, '', 'Ariel Antonio', 'Sarmiento', 'Franco', 'sarmiento@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(80, '', 'Roxana', 'Silva', 'Murillo', 'tersil@supernet.com.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(81, '', 'Jose Antonio', 'Soruco', 'Maita', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(82, '', 'Fidel', 'Taborga', 'Acha', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(83, '', 'Darlong Howard', 'Taylor', 'Terrazas', 'taylor@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(84, '', 'Juan', 'Terrazas', 'Lobo', 'terrazas@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(85, '', 'Rosemary', 'Torrico', 'Bascopé', 'rosemary@cs.umss.edu.bo', '71778384', 'Msc. Lic.', 'Tiempo Parcial'),
(86, '', 'Hernan', 'Ustariz', 'Vargas', 'hustariz@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(87, '', 'Roberto', 'Valenzuela', 'Miranda', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(88, '', 'Marco Antonio', 'Vallejos', 'Camacho', 'vallejos@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(89, '', 'Ademar Marcelo', 'Vargas', 'Antezana', 'vargas@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(90, '', 'Aidée', 'Vargas', 'Colque', 'aideevc@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(91, '', 'Jimmy', 'Villarroel', 'Novillo', 'jimmyvn_@hotmail.com', '0', 'Ing.', 'Tiempo Completo'),
(92, '', 'Henrry Frank', 'Villarroel', 'Tapia', 'hvillarroel@memi.umss.edu.bo', '77931275', 'Lic.', 'Tiempo Completo'),
(93, '', 'Christian', 'Villazon', 'Alcocer', 'villazon@gmial.com', '0', 'Lic.', 'Tiempo Parcial'),
(94, '', 'Oscar A', 'Zabalaga', 'Montano', 'zabalaga@hotmail.com', '0', 'Ing.', 'Tiempo Parcial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `ciEst` varchar(15) NOT NULL,
  `nombreEst` varchar(60) NOT NULL,
  `apellidoEst` varchar(60) NOT NULL,
  `emailEst` varchar(50) NOT NULL,
  `telefono` decimal(10,0) NOT NULL,
  `idProyecto` int(11) DEFAULT NULL,
  `idCarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idEstudiante`, `ciEst`, `nombreEst`, `apellidoEst`, `emailEst`, `telefono`, `idProyecto`, `idCarrera`) VALUES
(6, '546464', 'juan', 'perez', 'juan@gmail.com', '4545454', NULL, 1),
(8, '345353', 'luis miguel', 'martinez', 'asda@bfghfg.com', '6764534', NULL, 1),
(9, '65322421', 'pedro', 'rojas', 'pedrito@gmail.com', '74324631', NULL, 1),
(10, '34524233', 'juancho', 'lopez', 'juanito@gmail.com', '6446345', NULL, 1),
(11, '345232113', 'jorge', 'paredes', 'jorge@gmail.com', '67675545', NULL, 2),
(12, '45634344', 'rene', 'martinez', 'rene@gmail.com', '74327322', NULL, 1),
(13, '2342342', 'norma ', 'rocha', 'norma@gmail.com', '9898988', NULL, 2),
(14, '435353', 'emiliano', 'cardenaz', 'emi@gmail.com', '6565434', NULL, 1),
(15, '345353', 'arturo', 'vidal', 'arturito@gmail.com', '45324564', NULL, 2),
(16, '64556464', 'sandro', 'bargas', 'sandro@gmail.com', '767676676', NULL, 1),
(17, '6565643', 'ariel', 'ramos', 'ariel@gmail.com', '67675455', NULL, 2),
(18, '56464546', 'edgar', 'carballo', 'edgar@gmail.com', '76754543', NULL, 1),
(19, '59145214', 'kenny', 'dalton', 'ke@ya.com', '1541541', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `idModalidad` int(11) NOT NULL,
  `nombreMod` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`idModalidad`, `nombreMod`) VALUES
(1, 'Proyecto de Grado'),
(2, 'Tesis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `idPertenece` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `objetivos` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `fechaFin` date DEFAULT NULL,
  `periodo` varchar(2) NOT NULL,
  `sesionDeConsejo` varchar(45) DEFAULT NULL,
  `idModalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `titulo`, `objetivos`, `descripcion`, `fecha`, `fechaFin`, `periodo`, `sesionDeConsejo`, `idModalidad`) VALUES
(1, 'proyecto X', 'objetivo 1\r\nobjetivo 2', 'descripcion del proyecto', '2018-04-01', '2018-04-30', 'I', '123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_has_area`
--

CREATE TABLE `proyecto_has_area` (
  `idProyecto` int(11) NOT NULL,
  `idArea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renuncia`
--

CREATE TABLE `renuncia` (
  `idRenuncia` int(11) NOT NULL,
  `fechaRenuncia` date NOT NULL,
  `motivosRenuncia` text NOT NULL,
  `idAsig` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `idTiene` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'fercho', 'fercho@gmail.com', '$2y$10$MS0JnvsyzLjRf3ld.X3NB.p.DW4taFLc9ZBZDe1VTg6wBbIHIXtRG', 'o4L4er3VF2qmlbJf9xLr2FXeA5RSJwdNLiVrQJygdwKnvkT0exMDCnQgUL5z', '2018-04-11 00:57:57', '2018-04-11 00:58:34'),
(3, 'luis daniel', 'dandiel_23@hotmail.es', '$2y$10$z08Qq2TMxx8bo66pHpHMSuu14zcjn0riEjyRvbsqpWkfFmJqbLzHe', 'wiJFc7cS40chVrtOnla7UqBUIQVo1yH3GwW9i5j7Arku3GLjRsgWmKN6SzCE', '2018-04-11 07:58:38', '2018-04-27 04:40:24'),
(4, 'kenny', 'kennydaltonc@yahoo.com', '$2y$10$d6R5VQffRs870S2W3Bjhhui.5JCqcHBDyEZlaKeYGcvEH3jDFtgX2', NULL, '2018-05-01 00:36:25', '2018-05-01 00:36:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`),
  ADD KEY `fk_area_area2_idx` (`cod_subarea`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`idAsig`),
  ADD KEY `fk_Asignacion_Proyecto1_idx` (`idProyecto`),
  ADD KEY `fk_Asignacion_Docente1_idx` (`idDoc`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`idDoc`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `fk_Estudiante_Proyecto1_idx` (`idProyecto`),
  ADD KEY `fk_estudiante_carrera1_idx` (`idCarrera`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`idModalidad`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`idPertenece`),
  ADD KEY `fk_Pertenece_Carrera1_idx` (`idCarrera`),
  ADD KEY `fk_Pertenece_Docente1_idx` (`idDoc`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD KEY `fk_proyecto_modalidad1_idx` (`idModalidad`);

--
-- Indices de la tabla `proyecto_has_area`
--
ALTER TABLE `proyecto_has_area`
  ADD PRIMARY KEY (`idProyecto`,`idArea`),
  ADD KEY `fk_proyecto_has_area_area1_idx` (`idArea`),
  ADD KEY `fk_proyecto_has_area_proyecto1_idx` (`idProyecto`);

--
-- Indices de la tabla `renuncia`
--
ALTER TABLE `renuncia`
  ADD PRIMARY KEY (`idRenuncia`),
  ADD KEY `fk_Renuncia_Asignacion1_idx` (`idAsig`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD PRIMARY KEY (`idTiene`),
  ADD KEY `fk_Tiene_Area_idx` (`idArea`),
  ADD KEY `fk_Tiene_Docente1_idx` (`idDoc`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `idAsig` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `idDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `idModalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  MODIFY `idPertenece` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `renuncia`
--
ALTER TABLE `renuncia`
  MODIFY `idRenuncia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiene`
--
ALTER TABLE `tiene`
  MODIFY `idTiene` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `fk_area_area2` FOREIGN KEY (`cod_subarea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD CONSTRAINT `fk_Asignacion_Docente1` FOREIGN KEY (`idDoc`) REFERENCES `docente` (`idDoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Asignacion_Proyecto1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_Estudiante_Proyecto1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `fk_Pertenece_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pertenece_Docente1` FOREIGN KEY (`idDoc`) REFERENCES `docente` (`idDoc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `fk_proyecto_modalidad1` FOREIGN KEY (`idModalidad`) REFERENCES `modalidad` (`idModalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto_has_area`
--
ALTER TABLE `proyecto_has_area`
  ADD CONSTRAINT `fk_proyecto_has_area_area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyecto_has_area_proyecto1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `renuncia`
--
ALTER TABLE `renuncia`
  ADD CONSTRAINT `fk_Renuncia_Asignacion1` FOREIGN KEY (`idAsig`) REFERENCES `asignacion` (`idAsig`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `fk_Tiene_Area` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tiene_Docente1` FOREIGN KEY (`idDoc`) REFERENCES `docente` (`idDoc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
