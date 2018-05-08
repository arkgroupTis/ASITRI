-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2018 a las 05:22:24
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

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `nombreArea`, `descripcionArea`, `cod_subarea`) VALUES
(1, 'Base de Datos', ' ', NULL),
(2, 'Comercio Electrónico', ' ', NULL),
(3, 'Computación Gráfica', ' ', NULL),
(4, 'Evaluación y Auditoria de Sistemas', ' ', NULL),
(5, 'Ingeniería de Producción', ' ', NULL),
(6, 'Ingeniería de Software', ' ', NULL),
(7, 'Inteligencia Artificial', ' ', NULL),
(8, 'Interacción Humano Computador', ' ', NULL),
(9, 'Investigación Operativa', ' ', NULL),
(10, 'Matemática Computacional', ' ', NULL),
(11, 'Programación en Internet', ' ', NULL),
(12, 'Redes y Sistemas Distribuidos', ' ', NULL),
(13, 'Simulación', ' ', NULL),
(14, 'Sistemas de Información', ' ', NULL),
(15, 'Tecnologías de Control', ' ', NULL),
(16, 'Teoría de la Computación', ' ', NULL),
(17, 'Bases de Datos', ' ', 1),
(18, 'Bases de Datos Orientados a Objetos', ' ', 1),
(19, 'Sistemas Multimedios e Hipermedios', ' ', 1),
(20, 'Sintesis de Imagenes', ' ', 3),
(21, 'Animación', ' ', 3),
(22, 'Procesamiento de Imagenes', ' ', 3),
(23, 'Modelamiento Geometrico', ' ', 3),
(24, 'Sistemas CAD', ' ', 3),
(25, 'Dise&ntilde;o de Interfaces', ' ', 3),
(26, 'Realidad Virtual', ' ', 3),
(27, 'Antropometría', ' ', 5),
(28, 'Ergonomía', ' ', 5),
(29, 'Fisiología', ' ', 5),
(30, 'Interfaces Cooperativas', ' ', 5),
(31, 'Interfaces de Usuario', ' ', 5),
(32, 'Psicología Cognitiva', ' ', 5),
(33, 'Arquitectura de Software', ' ', 6),
(34, 'Desarrollo de Sistemas Orientados a Objetos', ' ', 6),
(35, 'Especificación y Dise&ntilde;o de Software', ' ', 6),
(36, 'Gerencia del Proceso de Desenvolvimiento y Mantenimiento de ', ' ', 6),
(37, 'Metodologías de Programación', ' ', 6),
(38, 'Objetos Distribuidos', ' ', 6),
(39, 'Reingeniería', ' ', 6),
(40, 'Sistemas de Información Geográfica', ' ', 6),
(41, 'Algoritmos Genéticos', ' ', 7),
(42, 'Autómatas Celulares', ' ', 7),
(43, 'Lógica Matemática', ' ', 7),
(44, 'Lógicas no Clásicas y Probadores de Teoremas', ' ', 7),
(45, 'Procesamiento de Lenguaje Natural', ' ', 7),
(46, 'Redes Neuronales', ' ', 7),
(47, 'Robótica', ' ', 7),
(48, 'Sistemas Bayesianos', ' ', 7),
(49, 'Sistemas de Programación de Producción', ' ', 7),
(50, 'Logística', ' ', 8),
(51, 'Planeamiento y Control de Producción', ' ', 8),
(52, 'Sistemas de Gestión de Cálidad y Producción', ' ', 8),
(53, 'Contabilidad', ' ', 10),
(54, 'Estadística', ' ', 10),
(55, 'Métodos Númericos', ' ', 10),
(56, 'Proyectos y Análisis de Algoritmos', ' ', 10),
(57, 'Comunicación de Datos: Protocolos y Sistemas', ' ', 12),
(58, 'Procesamiento Paralelo', ' ', 12),
(59, 'Programación Concurrente', ' ', 12),
(60, 'Control y Automatización Industrial', ' ', 15),
(61, 'Microcontroladores', ' ', 15),
(62, 'Sistemas de Tiempo Real', ' ', 15),
(63, 'Algoritmos Geométricos', ' ', 16),
(64, 'Animación de Algoritmos', ' ', 16),
(65, 'Compiladores', ' ', 16),
(66, 'Construcción de Compiladores Orientados a Objeto', ' ', 16),
(67, 'Especificación Formal de Lenguajes de Programación', ' ', 16),
(68, 'Lenguaje Natural', ' ', 16),
(69, 'Métodos Formales de la Ingeniería de Software', ' ', 16),
(70, 'Modelamiento del Proceso de Desenvolvimiento de Software', ' ', 16),
(71, 'Portales Web', ' ', 11),
(72, 'Paradigma Orientado a Objetos', ' ', 16),
(73, 'Bioinformatica', ' ', NULL),
(74, 'Interfaces Cooperativas', ' ', 85),
(75, 'Telecomunicaciones', ' ', NULL),
(76, 'Generacion de Codigo Interfaz', ' ', 8),
(77, 'Vida Artificial', ' ', 7),
(78, 'Ingenieria de Requerimientos', ' ', 6),
(79, 'Ambientes automatizados', ' ', 6),
(80, 'Sistemas Evolutivos', ' ', 7),
(81, 'Base deDatos Temporales', ' ', 1),
(82, 'Base de Datos Distribuidos', ' ', 1),
(83, 'Matematica computacional', ' ', 13),
(84, 'Base de Datos Multidimensional', ' ', 1),
(85, 'Programación Funcional', ' ', NULL),
(86, 'Sistemas Operativos', ' ', NULL),
(87, 'Sistemas Operativos de PC', ' ', 102),
(88, 'Sistemas académicos', ' ', 102),
(89, 'Sistemas transaccionales', ' ', 14),
(90, 'Recuperación de la información', ' ', NULL),
(91, 'Programación para Internet', ' ', 11),
(92, 'Simulación de Sistemas', ' ', 10),
(93, 'Automatización de procesos', ' ', NULL),
(94, 'Bases de Datos Dinámica', ' ', 1),
(95, 'Sistema de Gestión empresarial', ' ', 14),
(96, 'Base de Datos Relacionales', ' ', 1),
(97, 'Sistemas Administrativos', ' ', 14),
(98, 'Métodos numéricos algebraicos', ' ', 10),
(99, 'Ingeniería de Sistemas', ' ', NULL),
(100, 'Ingenieria de la usabilidad', ' ', NULL),
(101, 'Usabilidad', ' ', 117),
(102, 'Trabajos Colaborativos', ' ', 12),
(103, 'Arquitectura de Computadoras', ' ', 15),
(104, 'Evaluación y Auditoria de Sistemas', ' ', 4),
(105, 'Sistema educativo', ' ', 6),
(106, 'Servidores de Audio', ' ', 102),
(107, 'Sistemas Inteligentes', ' ', 7),
(108, 'Interfaz de Usuario', ' ', NULL),
(109, 'Accesibilidad', ' ', 127),
(110, 'Seguridad en Redes', ' ', 12),
(111, 'Trabajo Colaborativo', ' ', 11),
(112, 'Desarrollo e Investigación', ' ', 8),
(113, 'Redes de Optimización', ' ', 9),
(114, 'Sistemas Multiagente', ' ', 7),
(115, 'Comunidades Virtuales', ' ', 11),
(116, 'Tecnología de Información y Comunicación (TIC)', ' ', NULL),
(117, 'Diseño de Sistemas', ' ', 14),
(118, 'Entornos virtuales', ' ', 6),
(119, 'Análisis de Patrones', ' ', 3),
(120, 'Educación Superior en Inf.', ' ', NULL),
(121, 'Epistemología', ' ', 140),
(122, 'Meto. de diseño curricular', ' ', 140),
(123, 'Tecnologías de Desarrollo', ' ', NULL),
(124, 'Procesos de Desarrollo', ' ', 6),
(125, 'Metodología de desarrollo', ' ', 6),
(126, 'Frameworks', ' ', 11),
(127, 'Computación Gráfica', ' ', 3),
(128, 'Seguridad Informática', ' ', NULL),
(129, 'Criptografía Aplicada', ' ', 149),
(130, 'Gestión de Sistemas', ' ', NULL),
(131, 'Accesibilidad Web', ' ', NULL),
(132, 'Motores de Búsqueda', ' ', NULL),
(133, 'Ingeniería de Software Educativo', ' ', NULL),
(134, 'Servicios Web', ' ', 217),
(135, 'Sistemas de Telecomunicaion', ' ', NULL),
(136, 'Sistemas de Telecomunicacion', ' ', NULL),
(137, 'Migracion de contenidos de CMS', ' ', NULL),
(138, 'Sistemas de Informacion Web', ' ', NULL),
(139, 'Planificacion, Control y Gestion', ' ', NULL),
(140, 'Música Artificial', ' ', NULL),
(141, 'Gestión de Transacciones', ' ', NULL),
(142, 'Simulación de Redes', ' ', 12),
(143, 'Visión por Computador', ' ', 7),
(144, 'Ingenieria de tecnologia e informacion (IT)', ' ', NULL),
(145, 'Modelación y simulación', ' ', NULL),
(146, 'Dinámica de sistemas', ' ', NULL),
(147, 'Contend Management Systems (CMS)', ' ', NULL),
(148, 'Sistemas de Telecomunicaciones', ' ', NULL),
(149, 'Sistemas de Información Geográfico', ' ', NULL),
(150, 'Ciencias Juridicas', ' ', NULL),
(151, 'Programación y Aplicaciones Web', ' ', NULL),
(152, 'Estandares Web', ' ', NULL),
(153, 'Tecnologia Web', ' ', NULL),
(154, 'PLANEACIÓN Y CONTROL DE PRODUCCIÓN DE LA MANO DE OBRA DIRECT', ' ', NULL),
(155, 'Redes Multimedia', ' ', NULL),
(156, 'E-learning', ' ', NULL),
(157, 'Didáctica y Multimedia Interactiva', ' ', NULL),
(158, 'business intelligence', ' ', NULL),
(159, 'Dinamica de sistemas', ' ', NULL),
(160, 'Ingenieria de Calidad', ' ', NULL),
(161, 'Ingeniería de Calidad', ' ', NULL),
(162, 'Business Intelligence', ' ', NULL),
(163, 'Domótica', ' ', NULL),
(164, 'Telemetría', ' ', NULL),
(165, 'Base de Datos Relacionales Difusas', ' ', NULL),
(166, 'Seguridad en base de datos', ' ', NULL),
(167, 'Electronica', ' ', NULL),
(168, 'Multimedia Interactivo', ' ', NULL),
(169, 'Seguridad en Aplicaciones Web', ' ', NULL),
(170, 'Administracion de Servidores', ' ', NULL),
(171, 'Diseño Avanzado de Software', ' ', NULL),
(172, 'Interaccion Humano-Computadora', ' ', NULL),
(173, 'Linguistica Computacional', ' ', NULL),
(174, 'sistemas orientados a objetos', ' ', NULL),
(175, 'Interfaces Gráficas de Usuario WEB', ' ', NULL),
(176, 'Gestión y Administración de Información', ' ', NULL),
(177, 'Contabilidad de Costos', ' ', NULL),
(178, 'Estados Financieros', ' ', NULL),
(179, 'Sistemas de informacion Web', ' ', NULL),
(180, 'Arquitectura de la Informacion', ' ', NULL),
(181, 'Seguridad con sistemas informaticos', ' ', NULL),
(182, 'Programacion Funcional Aplicada', ' ', NULL),
(183, 'simulacion', ' ', NULL),
(184, 'Aeronáutica', ' ', NULL),
(185, 'Infografía', ' ', NULL),
(186, 'Redes de Computadoras', ' ', NULL),
(187, 'Programacion y Aplicaciones Web', ' ', NULL),
(188, 'Contenedor CMS', ' ', NULL),
(189, 'Redes Inalambricas', ' ', NULL),
(190, 'Toma de Desiciones Administrativas', ' ', NULL),
(191, 'Reconocimiento de voz', ' ', NULL),
(192, 'Reconocimiento de la voz', ' ', NULL),
(193, 'Desarrollo de Software Inteligente', ' ', NULL),
(194, 'Ambientes automatizados de apoyo para productos de construcc', ' ', NULL),
(195, 'Programacion Movil', ' ', NULL),
(196, 'Seguridad biometrica', ' ', NULL),
(197, 'Software Educativo', ' ', NULL),
(198, 'Seguridad  y Gestion de Redes', ' ', NULL),
(199, 'Programación abajo Nivel', ' ', NULL),
(200, 'taller de programación  a bajo nivel', ' ', NULL),
(201, 'Aplicaciones WEB', ' ', NULL),
(202, 'Servicio WEB', ' ', NULL),
(203, 'Sistema de procesamiento de transacciones', ' ', NULL),
(204, 'Educación Superior en Ingeniería de Sistemas', ' ', NULL),
(205, 'patrones de diseño', ' ', NULL),
(206, 'Informatica', ' ', NULL),
(207, 'Sistema  de Apoyo a la Toma de decisiones', ' ', NULL),
(208, 'Redes de computadoras intranet', ' ', NULL),
(209, 'Aplicacion Web', ' ', NULL),
(210, 'ingenieria de software', ' ', 207),
(211, 'sistema web', ' ', NULL),
(212, 'M-Commerce, M-Payment', ' ', NULL),
(213, 'Sistema de Informacion Administrativo', ' ', NULL),
(214, 'Android', ' ', NULL),
(215, 'Telecomunicaciones', ' ', 291),
(216, 'Sistemas de Gestion Web', ' ', NULL),
(217, 'Programación Web', ' ', NULL),
(218, 'Reconocimiento de Voz', ' ', 7),
(219, 'Redes de computadoras e internet', ' ', NULL),
(220, 'Tecnologia Informatica en Educacion', ' ', NULL),
(221, 'Sistema de Produccion', ' ', NULL),
(222, 'Entornos Virtuales de Aprendizaje', ' ', NULL),
(223, 'Workflow', ' ', NULL),
(224, 'Redes de Comunicacion', ' ', NULL),
(225, 'Desarrollo Web', ' ', 6),
(226, 'VOZ IP', ' ', NULL),
(227, 'Telefonia IP', ' ', NULL),
(228, 'Centrales Telefonicas IP', ' ', NULL),
(229, 'Aseguramiento de la calidad del software', ' ', NULL),
(230, 'Centrales Telefónicas IP', ' ', NULL),
(231, 'programacion web', ' ', NULL),
(232, 'Aseguramiento de Calidad de Software.', ' ', NULL),
(233, 'Aseguramiento de Calidad de Software', ' ', NULL),
(234, 'Tecnología de Información y Comunicación (TIC) en la educaci', ' ', NULL),
(235, 'Diseño de interfaces', ' ', NULL),
(236, 'Seguridad de la Informacion', ' ', NULL),
(237, 'Esteganografia', ' ', NULL),
(238, 'Aseguramiento de la Calidad del Software', ' ', NULL),
(239, 'Computación Científica', ' ', NULL),
(240, 'MODELO DIGITAL DEL TERRENO', ' ', NULL),
(241, 'Programacion Web', ' ', NULL),
(242, 'Programacion Web', ' ', 258),
(243, 'Calidad de Software', ' ', NULL),
(244, 'Dinamica de Sistemas', ' ', NULL),
(245, 'Sistemas Tutoriales', ' ', NULL),
(246, 'Autoevaluación', ' ', NULL),
(247, 'Optimizacion Combinatoria', ' ', NULL),
(248, 'Aseguramiento de la calidad de software', ' ', NULL),
(249, 'Aplicaciones Web', ' ', NULL),
(250, 'Desarrollo de Aplicaciones Web', ' ', 14),
(251, 'Diseño de compiladores', ' ', NULL),
(252, 'Sistemas Colaborativos', ' ', 6),
(253, 'Estrategias Heurísticas para la toma de  decisiones', ' ', NULL),
(254, 'Sistemas Expertos', ' ', NULL),
(255, 'Sistema Experto', ' ', 7),
(256, 'Diseño e Implementación de un Compilador', ' ', NULL),
(257, 'Telefonía Ip', ' ', NULL),
(258, 'telecomunicaciones', ' ', NULL),
(259, 'Control de calidad de software', ' ', NULL),
(260, 'Material Educativo Computarizado (M.E.C.)', ' ', NULL),
(261, 'Monitoreo de Servidores', ' ', NULL),
(262, 'Ambientes automatizados de apoyo', ' ', NULL),
(263, 'Control de Calidad del Software', ' ', NULL),
(264, 'Aseguramiento de la Calidad de Software', ' ', NULL),
(265, 'Sistemas de Aprendizaje', ' ', NULL),
(266, 'Inteligencia Artificial, Base de Datos', ' ', NULL),
(267, 'Redes', ' ', NULL),
(268, 'Redes de Telecomunicaciones', ' ', NULL),
(269, 'Sistemas Operativos', ' ', NULL),
(270, 'Transferencia de Datos Protocolo IP', ' ', NULL),
(271, 'Sistema de Escaneado Optimo', ' ', NULL),
(272, 'Control de Calidad de software', ' ', NULL),
(273, 'Servicio Web', ' ', NULL),
(274, 'CMS', ' ', NULL),
(275, 'Software educativo', ' ', NULL),
(276, 'Procesamiento de datos Meteorológicos', ' ', NULL),
(277, 'Software de Gestión', ' ', NULL),
(278, 'Diseño e implementacion de software', ' ', NULL),
(279, 'Web semántica', ' ', NULL),
(280, 'Redes de Datos', ' ', NULL),
(281, 'Tecnicas de Animacion 3D', ' ', NULL),
(282, 'Calidad de software', ' ', 6),
(283, 'Ambientes automatizados de apoyo para productos de construcc', ' ', NULL),
(284, 'Base de Datos, Web', ' ', NULL),
(285, 'Herramienta SIG', ' ', NULL),
(286, 'Sistemas Integrados de Gestion', ' ', NULL),
(287, 'Sistemas web', ' ', NULL),
(288, 'Control de calidad de Software', ' ', NULL),
(289, 'Sistemas de Información geográfica', ' ', NULL),
(290, 'Sistemas de Gestión', ' ', NULL),
(291, 'Sistemas Colaborativos en la Educación', ' ', NULL),
(292, 'Computación en la nube', ' ', NULL),
(293, 'Telefonía y Comunicaciones', ' ', NULL),
(294, 'Sistema de Reportes', ' ', NULL),
(295, 'Redes Moviles', ' ', NULL),
(296, 'Realidad Aumentada', ' ', NULL),
(297, 'Sistema Web', ' ', NULL),
(298, 'Redes de computadoras en internet', ' ', NULL),
(299, 'Administración de servidores', ' ', NULL),
(300, 'programacion funcional', ' ', NULL),
(301, 'Ingenieria de Produccion', ' ', NULL),
(302, 'Sistemas Web', ' ', NULL),
(303, 'Control de Calidad de Software', ' ', NULL),
(304, 'Sistemas de Soporte a la Administración', ' ', NULL),
(305, 'Sistema de Archivos', ' ', NULL),
(306, 'Programación en la Nube', ' ', NULL),
(307, 'Software para dispositivos móviles', ' ', NULL),
(308, 'Desarrollo web', ' ', 370),
(309, 'Mashups', ' ', NULL),
(310, 'Web Scraping', ' ', NULL),
(311, 'Realidad aumentada', ' ', NULL),
(312, 'Redes de distribucion', ' ', NULL),
(313, 'Aplicacion android', ' ', NULL),
(314, 'Sistema CRM', ' ', NULL),
(315, 'Metodos de Busqueda heuristica o solucion de problemas', ' ', NULL),
(316, 'Sistemas de apoyo a la docencia', ' ', NULL),
(317, 'Accesibilidad audiovisual web', ' ', NULL),
(318, 'Compiladores e interpretadores', ' ', NULL),
(319, 'Analisis y filtrado', ' ', NULL),
(320, 'Interpretes y compiladores', ' ', NULL),
(321, 'Ambientes automatizados de apoyo para construccion de produc', ' ', NULL),
(322, 'Medios de Comunicacion Digitales', ' ', NULL),
(323, 'Sistemas de gestión de calidad de producción.', ' ', NULL),
(324, 'Investigación', ' ', NULL),
(325, 'Hidrología', ' ', NULL),
(326, 'Recuperacion de la Informacion', ' ', NULL),
(327, 'Automatización', ' ', NULL),
(328, 'Redes de telecomunicaiones', ' ', NULL),
(329, 'Punto de Venta', ' ', NULL),
(330, 'Simulacion de Sistemas', ' ', NULL),
(331, 'Diseño de Aerogeneradores', ' ', NULL),
(332, 'Ambientes automatizados de apoyo para productos de construcc', ' ', NULL),
(333, 'Ingeniería de yacimientos', ' ', NULL),
(334, 'Data Science', ' ', NULL),
(335, 'Procesamiento Informacion de Redes Sociales', ' ', 359),
(336, 'Sistema Multimedia', ' ', 10),
(337, 'Sistemas Virtuales', ' ', NULL),
(338, 'Comunicacion de datos, Sistemas de tiempo real, Intranet/Int', ' ', NULL),
(339, 'E-Learning', ' ', NULL),
(340, 'Modelo relacional de base de datos', ' ', NULL),
(341, 'Aplicación Web', ' ', NULL),
(342, 'Protocolos de acceso a directorio', ' ', NULL),
(343, 'Sistema de Informacion Gerencial', ' ', 6),
(344, 'Automatizacion', ' ', NULL),
(345, 'H.C.I', ' ', NULL),
(346, 'Telefonia Movil, M-Payment, Modem Gateway', ' ', NULL),
(347, 'Juegos Didacticos', ' ', NULL),
(348, 'Programacion y Aplicacion web', ' ', NULL),
(349, 'Computacion Paralela', ' ', NULL),
(350, 'Semántica de datos', ' ', NULL),
(351, 'Interacción persona-computador para educación', ' ', NULL),
(352, 'Composicion Algoritmica', ' ', NULL),
(353, 'Servidor OwnCloud', ' ', NULL),
(354, 'Redes de telecomunicaciones', ' ', NULL),
(355, 'Software para dispositivos Moviles', ' ', NULL),
(356, 'Administracion de inventarios', ' ', NULL),
(357, 'Aplicacion movil', ' ', NULL),
(358, 'Tecnologías Web', ' ', NULL),
(359, 'Comunicación en Tiempo Real', ' ', NULL),
(360, 'TICs en la educacion', ' ', NULL),
(361, 'Computacion y Sociedad', ' ', NULL),
(362, 'Ejercitación y Práctica', ' ', NULL),
(363, 'Planificación y Organización Empresarial', ' ', NULL),
(364, 'Gestión Estratégica de Empresas', ' ', NULL),
(365, 'Técnologias de Información Educativa', ' ', NULL),
(366, 'Tecnologías de Información Educativa', ' ', NULL),
(367, 'Taller de Programacion a Bajo Nivel', ' ', NULL),
(368, 'Aplicacion de Sistemas Operativos', ' ', NULL),
(369, 'procesamiento de imagenes digitales', ' ', NULL),
(370, 'Administrador de archivos', ' ', NULL),
(371, 'Sistemas basados en conocimiento', ' ', NULL),
(372, 'Lingüística  Computacional', ' ', NULL),
(373, 'Programación y Algoritmos', ' ', NULL),
(374, 'Sistemas de Telecomunicación', ' ', NULL),
(375, 'Minería de datos', ' ', NULL),
(376, 'Aplicacion Movil', ' ', NULL),
(377, 'Informática de la salud', ' ', NULL),
(378, 'TICs aplicadas a la Educación', ' ', NULL),
(379, 'Programacion Web reactiva', ' ', NULL),
(380, 'Gestion y planificación de empresas', ' ', NULL),
(381, 'Television Digital', ' ', NULL),
(382, 'Modelos de proceso', ' ', NULL),
(383, 'Gestión de empresas', ' ', NULL),
(384, 'Internet', ' ', NULL),
(385, 'Sistemas Distribuidos', ' ', NULL),
(386, 'Desarrollo de Software', ' ', NULL),
(387, 'APIs para interfaz de usuario', ' ', 411),
(388, 'Tecnología de Información y Comunicación (TIC) de la educaci', ' ', NULL),
(389, 'Sistemas de Información Web', ' ', NULL),
(390, 'TICs de la educación', ' ', NULL),
(391, 'Tecnologia de Apoyo a Estadistica', ' ', NULL),
(392, 'Administración y gestión de proyectos', ' ', NULL),
(393, 'Aplicación Móvil', ' ', NULL),
(394, 'modelacion de sistemas', ' ', NULL),
(395, 'e-learning', ' ', NULL),
(396, 'Desarrollo de videojuegos', ' ', NULL),
(397, 'Enrutamiento', ' ', NULL),
(398, 'Lingüística Computacional', ' ', NULL),
(399, 'Diseño', ' ', NULL),
(400, 'Sistemas Control de Procesos', ' ', NULL),
(401, 'Comercio electrónico', ' ', NULL),
(402, 'Aplicacion de GPS', ' ', NULL),
(403, 'aprendizaje por computadora', ' ', NULL),
(404, 'Visión Artificial', ' ', NULL),
(405, 'Aprendizaje automático', ' ', NULL),
(406, 'Laboratorios virtuales basados en WWW.', ' ', NULL),
(407, 'Base de Datos - Ingenieria de Software', ' ', NULL),
(408, 'Automatizacion de Procesos', ' ', NULL),
(409, 'control de procesos', ' ', NULL),
(410, 'Domotica', ' ', NULL),
(411, 'Sistema en tiempo real y control de procesos', ' ', NULL),
(412, 'Ingenieria de control', ' ', NULL),
(413, 'Programación en Ginga-NCL', ' ', NULL),
(414, 'Computación Educativa', ' ', NULL),
(415, 'Telefonía IP', ' ', NULL),
(416, 'sistema de informacion administrativa web', ' ', NULL),
(417, 'Aplicación Intranet', ' ', NULL),
(418, 'Prueba de intrusión', ' ', NULL),
(419, 'Encriptacion de datos', ' ', NULL),
(420, 'Programacion Ginga NCL/Lua', ' ', NULL),
(421, 'CSCW', ' ', NULL),
(422, 'Visualizacion de datos', ' ', NULL),
(423, 'Herramienta y métodos de ingeniería de software', ' ', NULL),
(424, 'Integracion de tecnologias moviles', ' ', NULL),
(425, 'Entornos Virtuales de Aprendizaje', ' ', NULL),
(426, 'Planificación Automática', ' ', NULL),
(427, 'Dinámica de Sistemas', ' ', NULL),
(428, 'Aplicaciones móviles', ' ', NULL),
(429, 'aplicación móvil (app)', ' ', NULL),
(430, 'Programación Móvil, GPS', ' ', NULL),
(431, 'Television Digital Interactiva', ' ', NULL),
(432, 'Procesamiento del lenguaje natural', ' ', NULL),
(433, 'Aprendizaje de máquina', ' ', NULL),
(434, 'Ingenieria Economica', ' ', NULL),
(435, 'Aplicaciones Hibridas', ' ', NULL),
(436, 'Teoría de Grafos', ' ', NULL),
(437, 'Redes aleatorias', ' ', NULL),
(438, 'Diseño de Interfaces - Desarrollo de Sistemas Orientados a O', ' ', NULL),
(439, 'Gestion Administrativa', ' ', NULL),
(440, 'Aplicación de Sistemas Operativos', ' ', NULL),
(441, 'Servicios Telematicos', ' ', NULL),
(442, 'Realidad Mixta', ' ', NULL),
(443, 'Graficacion por Computadora', ' ', NULL),
(444, 'Servicios Web REST', ' ', NULL),
(445, 'Almacén de Eventos', ' ', NULL),
(446, 'Modelación y Optimización', ' ', NULL),
(447, 'Sistema de Información', ' ', NULL),
(448, 'INTELIGENCIA DE NEGOCIOS', ' ', NULL),
(449, 'Sistemas de Informacion', ' ', NULL),
(450, 'Bots', ' ', NULL),
(451, 'Cloud Computing', ' ', NULL),
(452, 'Programacion movil', ' ', NULL),
(453, 'Programación móvil', ' ', NULL),
(454, 'Programación Movil', ' ', NULL),
(455, 'Base de Datos,Aplicación Web y Sistemas de información', ' ', NULL),
(456, 'Análisis de contenido de páginas web.', ' ', NULL),
(457, 'Seguridad Informatica', ' ', NULL),
(458, 'Recuperación de la Información', ' ', NULL),
(459, 'Patrones de diseño', ' ', NULL),
(460, 'Servicio Movil Nativa', ' ', NULL),
(461, 'Data Warehouse y Mineria de Datos', ' ', NULL),
(462, 'Data Mining, Data Science', ' ', NULL),
(463, 'Realidad virtual', ' ', NULL),
(464, 'Realidad mixta', ' ', NULL),
(465, 'sistema de información', ' ', NULL),
(466, 'Programación Móvil', ' ', NULL),
(467, 'Análisis de video', ' ', NULL),
(468, 'Aplicacion web', ' ', NULL),
(469, 'programacion Movil', ' ', NULL),
(470, 'sistema gestion del conocimiento', ' ', NULL),
(471, 'PROGRAMACIÓN MOVIL', ' ', NULL),
(472, 'Aprendizaje en profundidad', ' ', NULL),
(473, 'Algoritmos', ' ', NULL),
(474, 'Optimizacion', ' ', NULL),
(475, 'Aprendizaje automatico', ' ', NULL),
(476, 'Aplicacion WEB', ' ', NULL);

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
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;
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
