-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2018 a las 23:27:28
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `cargaHoraria` tinyint(1) DEFAULT NULL,
  `codigoDoc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(18, '56464546', 'edgar', 'carballo', 'edgar@gmail.com', '76754543', NULL, 1);

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
(3, 'luis daniel', 'dandiel_23@hotmail.es', '$2y$10$z08Qq2TMxx8bo66pHpHMSuu14zcjn0riEjyRvbsqpWkfFmJqbLzHe', 'wiJFc7cS40chVrtOnla7UqBUIQVo1yH3GwW9i5j7Arku3GLjRsgWmKN6SzCE', '2018-04-11 07:58:38', '2018-04-27 04:40:24');

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
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
