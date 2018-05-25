-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2018 a las 02:21:47
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
  `clasificacion` enum('area','subarea') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `nombreArea`, `descripcionArea`, `clasificacion`) VALUES
(1, 'Accesibilidad', 'No existe una descripcion ', 'area'),
(2, 'Administracion', 'No existe una descripcion ', 'area'),
(3, 'Aeronáutica', 'La aeronáutica es la ciencia relacionada con el estudio, diseño, manufactura y técnicas de control de aeronaves. ', 'area'),
(4, 'Algoritmos', 'Algoritmos pueden realizar calculos, procesamiento de datos y tareas de razonamiento automatizado. ', 'area'),
(5, 'Almacén de Eventos', 'Del inglés -Event sourcing- involucra el modelado de cambio de estados hechos a una aplicación como una secuencia inmutable o registro de eventos. \r\n\r\nEn lugar modificar el estado de la aplicación directamente, un almacén de eventos almacena el evento que lanzo el cambio de estado en un registro inmutable y modela los cambios de estados como respuestas a los eventos en el registro. ', 'area'),
(6, 'Ambientes automatizados', 'No existe una descripcion ', 'area'),
(7, 'Análisis de contenido de páginas web.', 'No existe una descripcion ', 'area'),
(8, 'Análisis de Patrones', 'No existe una descripcion ', 'area'),
(9, 'Análisis de video', 'Describe un amplio número de nuevas tecnologías y evoluciones en el campo de la vigilancia con vídeo y la seguridad.\r\nAlgunas aplicaciones del análisis de vídeo son la detección de objetos abandonados en lugares llenos de gente, controlar obras de arte en los museos y detectar vehículos no autorizados que ingresen a determinadas áreas. La detección de matrículas de vehículos, congestión de tránsito,tecnologias mas de reconocimiento facial. ', 'area'),
(10, 'Analisis y filtrado', 'No existe una descripcion ', 'area'),
(11, 'Android', 'Android es un sistema operativo orientado a dispositivos móviles basado en una versión modificada del núcleo Linux.Inicialmente fue desarrollado por Android Inc., compañía que fue comprada después por Google, y en la actualidad lo desarrollan los miembros de la Open Handset Alliance (liderada por Google).\r\nLa presentación de la plataforma Android se realizó el 5 de noviembre de 2007 junto con la fundación Open Handset Alliance, un consorcio de 48 compañías de hardware, software y telecomunicaciones comprometidas con la promoción de estándares abiertos para dispositivos móviles.Esta plataforma permite el desarrollo de aplicaciones por terceros a través del SDK, proporcionada por el mismo Google, y mediante el lenguaje de programación Java.Una alternativa es el uso del NDK (Native Development Kit) de Google para emplear el lenguaje de programación C.\r\n\r\nEl código fuente de Android está disponible bajo diversas licencias de software libre y código abierto destacando la versión 2 de la licencia Apache.\r\nCaracteristicas:\r\n    * Framework  de aplicaciones: permite reutilización y reemplazo de componentes.\r\n    * Máquina virtual Dalvik: optimizada para dispositivos móviles.\r\n    * Navegador integrado: basado en el motor de código abierto WebKit.\r\n    * Gráficos optimizados, con una biblioteca de gráficos 2D; gráficos 3D basado en la especificación OpenGL ES 1.0 (aceleración por hardware opcional).\r\n    * SQLite para almacenamiento de datos estructurados.\r\n    * Soporte para medios con formatos comunes de audio, vídeo e imágenes planas (MPEG4, H.264, MP3, OGG, AAC, AMR, JPG, PNG, GIF)\r\n    * Telefonía GSM (dependiente del hardware)\r\n    * Bluetooth, EDGE, 3G, y WiFi (dependiente del hardware)\r\n    * Cámara, GPS, brújula, y acelerómetro (dependiente del hardware)\r\n    * Ambiente rico de desarrollo incluyendo un emulador de dispositivo, herramientas para depurar, perfiles de memoria y rendimiento, y un complemento para el IDE Eclipse.\r\n    * Pantalla táctil\r\n    * Android Market permite que los desarrolladores pongan sus aplicaciones, gratuitas o de pago, en el mercado a través de esta aplicación accesible desde la mayoría de los teléfonos con Android.\r\n ', 'area'),
(12, 'Animación', 'No existe una descripcion ', 'area'),
(13, 'Antropometría', 'No existe una descripcion ', 'area'),
(14, 'APIs para interfaz de usuario', 'No existe una descripcion ', 'area'),
(15, 'Aplicacion de GPS', 'Aplicación de GPS (Sistema de posicionamiento global) en dispositivos móviles ', 'area'),
(16, 'Aplicacion de Sistemas Operativos', 'No existe una descripcion ', 'area'),
(17, 'Aplicación Intranet', 'No existe una descripcion ', 'area'),
(18, 'Aplicacion Web', 'Sistema de Informacion que esta en la Nube ', 'area'),
(19, 'Aprendizaje Automatico', 'Aprendizaje supervisado\r\nApredizaje no supervisado\r\nAprendizaje por refuerzo ', 'area'),
(20, 'Arquitectura de Computadoras', 'No existe una descripcion ', 'area'),
(21, 'Arquitectura de la Informacion', 'No existe una descripcion ', 'area'),
(22, 'Arquitectura de Software', 'No existe una descripcion ', 'area'),
(23, 'Aseguramiento de la Calidad del software', 'Area encargada de validar , verificar y controlar la calidad del producto de software ', 'area'),
(24, 'Autoevaluación', 'No existe una descripcion ', 'area'),
(25, 'Autómatas Celulares', 'No existe una descripcion ', 'area'),
(26, 'Automatización', 'Sistema tecnológico basado en la ingeniería y la informática, que proporciona una optimización de los procesos productivos mediante la regulación automática. ', 'area'),
(27, 'Base de Datos', 'No existe una descripcion ', 'area'),
(28, 'Bioinformatica', 'No existe una descripcion ', 'area'),
(29, 'Bots', 'No existe una descripcion ', 'area'),
(30, 'Business Intelligence', 'Se denomina inteligencia empresarial o inteligencia de negocios o BI ', 'area'),
(31, 'Centrales Telefónicas IP', 'En la nueva era de las comunicaciones digitales, las centrales de telefonía han evolucionado, hasta convertirse en potentes maquinas de enrutamiento y gestión de llamadas, capaces de usar telefonía IP. ', 'area'),
(32, 'Ciencias Juridicas', 'Ciencias Juridicas ', 'area'),
(33, 'Cloud Computing', 'No existe una descripcion ', 'area'),
(34, 'Content Management System', 'Content Management System ', 'area'),
(35, 'Comercio electrónico', 'Comercio electrónico tambien conocido como e-commerce, conciste en la compra y venta de productos o servicios a traves de medios electrónicos tales como internet y otras redes informaticas ', 'area'),
(36, 'Compiladores', 'No existe una descripcion ', 'area'),
(37, 'Computación Científica', 'Es el campo de estudio relacionado con la construcción de modelos matemáticos y técnicas numéricas para resolver problemas científicos ', 'area'),
(38, 'Computación Educativa', 'No existe una descripcion ', 'area'),
(39, 'Computación Gráfica', 'No existe una descripcion ', 'area'),
(40, 'Computacion Paralela', 'No existe una descripcion ', 'area'),
(41, 'Computacion y Sociedad', 'No existe una descripcion ', 'area'),
(42, 'Comunicacion de datos, Sistemas de tiempo real, Intranet/Int', 'No existe una descripcion ', 'area'),
(43, 'Comunicación en Tiempo Real', 'Tecnologías web que permiten comunicación en tiempo real. ', 'area'),
(44, 'Comunidades Virtuales', 'No existe una descripcion ', 'area'),
(45, 'Construcción de Compiladores Orientados a Objeto', 'No existe una descripcion ', 'area'),
(46, 'Contabilidad', 'No existe una descripcion ', 'area'),
(47, 'Control de procesos', 'No existe una descripcion ', 'area'),
(48, 'Criptografía Aplicada', 'No existe una descripcion ', 'area'),
(49, 'Computer Supported Coopertive Work', 'Computer Supported Coopertive Work CSCW, Trabajo cooperativo asistido por computadora.\r\nCSCW es un Término utilizado para describir cualquier tecnología que combina recursos de hardware y software para permitir a grupos de personas colaborar y compartir tecnología. ', 'area'),
(50, 'Data Science', 'No existe una descripcion ', 'area'),
(51, 'Desarrollo de Software', 'Herramientas y recursos que son utilizados en el proceso de fabricación de software ', 'area'),
(52, 'Desarrollo Web', 'Desarrollo Web ', 'area'),
(53, 'Dinamica de sistemas', 'Es una metodología para la construcción de modelos de simulación para sistemas complejos ', 'area'),
(54, 'Diseño', 'No existe una descripcion ', 'area'),
(55, 'Domótica', 'Se entiende por domótica al conjunto de sistemas capaces de automatizar una vivienda, aportando servicios de gestión energética, seguridad, bienestar y comunicación ', 'area'),
(56, 'Educación Superior en Inf.', 'No existe una descripcion ', 'area'),
(57, 'Electronica', 'No existe una descripcion ', 'area'),
(58, 'Encriptacion de datos', 'Es el proceso mediante el cual cierta informacion o texto sin formato es cifrado de forma que el resultado sea ilegible a menos que se conozca los datos necesarios para su interpretacion. ', 'area'),
(59, 'Entornos virtuales', 'No existe una descripcion ', 'area'),
(60, 'Estadística', 'No existe una descripcion ', 'area'),
(61, 'Esteganografia', 'Esta tecnica es el arte y ciencia de enviar informacion secreta de tal forma que nadie fuera de quien lo envia y quien lo recibe sabe de su existencia, en contraste con la criptografia, en donde la existencia del mensaje es clara pero esta obscurecido. Por lo general la informacion  enviada de este tipo parece ser simplemente una imagen o foto. La esteganografia logra ocultar informacion en una imagen utilizando el bit menos significativo de cada color en los pixeles. ', 'area'),
(62, 'Fisiología', 'No existe una descripcion ', 'area'),
(63, 'Frameworks', 'Uso de frameworks para el desarrollo de aplicaciones ', 'area'),
(64, 'Gestion Administrativa', 'Gestion de los procesos administrativos ', 'area'),
(65, 'Hidrología', 'No existe una descripcion ', 'area'),
(66, 'Informatica', 'No existe una descripcion ', 'area'),
(67, 'Informática de la salud', 'No existe una descripcion ', 'area'),
(68, 'Ingenieria de control', 'No existe una descripcion ', 'area'),
(69, 'Ingenieria de la usabilidad', 'No existe una descripcion ', 'area'),
(70, 'Ingenieria de Produccion', 'Dentro del area de Sistemas de informacion se trabaja para dar soluciones al area de la ingenieria de produccion ', 'area'),
(71, 'Ingenieria de Requerimientos', 'No existe una descripcion ', 'area'),
(72, 'Ingeniería de Sistemas', 'No existe una descripcion ', 'area'),
(73, 'ingenieria de software', 'No existe una descripcion ', 'area'),
(74, 'Ingeniería de Software Educativo', 'No existe una descripcion ', 'area'),
(75, 'Ingenieria de tecnologia e informacion (IT)', 'No existe una descripcion ', 'area'),
(76, 'Ingeniería de yacimientos', 'La ingeniería de yacimientos es la parte fundamental de la ingeniería de petróleo, aplicando conocimientos científicos, permite  una explotación racional de las acumulaciones de hidrocarburos, para obtener su máxima recuperación al menor costo  ', 'area'),
(77, 'Ingenieria Economica', 'Area de la matematica financiera muy usado en la toma de decisiones, el manejo de amortizaciones de deudas y manejo de las tasas de interes muy usado en la vida cotidiana.  ', 'area'),
(78, 'Inteligencia Artificial', 'No existe una descripcion ', 'area'),
(79, 'Inteligencia de Negocios', 'SE ENTIENDE POR INTELIGENCIA DE NEGOCIOS (BUSINESS INTELLIGENCE) AL CONJUNTO DE METODOLOGIAS , APLICACIONES, PRACTICAS Y CAPACIDADES ENFOCADAS A LA CREACION Y ADMINISTRACION DE LA INFORMACION QUE PERMITE TOMAR MEJORES DECISIONES A LOS USUARIOS DE UN ORGANIZACION.\r\nEN RESUMEN SE PUEDE UTILIZAR DATOS DE AYER Y HOY PARA TOMAR MEJORES DECISIONES MAÑANA. ', 'area'),
(80, 'Interaccion Humano-Computadora', 'Interaccion Humano-Computadora ', 'area'),
(81, 'Interfaces de Usuario', 'No existe una descripcion ', 'area'),
(82, 'Internet', 'No existe una descripcion ', 'area'),
(83, 'Lingüística  Computacional', 'No existe una descripcion ', 'area'),
(84, 'Lógica Matemática', 'No existe una descripcion ', 'area'),
(85, 'Microcontroladores', 'No existe una descripcion ', 'area'),
(86, 'Minería de datos', 'No existe una descripcion ', 'area'),
(87, 'Modelación y Optimización', 'No existe una descripcion ', 'area'),
(88, 'Modelación y simulación', 'No existe una descripcion ', 'area'),
(89, 'Patrones de diseño', 'Los patrones de diseño de diagramas de clase son soluciones comprobadas a diferentes problemas bajo cierto contexto. ', 'area'),
(90, 'Programación  de bajo Nivel', 'Uso del lenguaje de segunda generación assembler  ', 'area'),
(91, 'Programacion Movil', 'Desarrollo de aplicaciones para aparatos como celulares, smartphones, PDAs, PocketPCs y dispositivos con recursos limitados. ', 'area'),
(92, 'Reconocimiento de Voz', 'No existe una descripcion ', 'area'),
(93, 'Redes de Computadoras', 'Estudio de los niveles del modelo tpc/ip ', 'area'),
(94, 'Reingeniería', 'No existe una descripcion ', 'area'),
(95, 'Seguridad Informatica', 'Es el área relacionada con la informática y la telemática que se enfoca en la protección de la infraestructura computacional y todo lo relacionado con esta y, especialmente, la información contenida en una computadora o circulante a través de las redes de computadoras. ', 'area'),
(96, 'Servicios Web', 'SW es un conjunto de protocolos y estandares que sirven para intercambiar datos entre aplicaciones. ', 'area'),
(97, 'Simulación', 'No existe una descripcion ', 'area'),
(98, 'Sistema de información', 'Un Sistema de Información es un conjunto de componentes que interactúan entre sí, orientado a la recolección, almacenamiento, procesamiento y recuperación de información.\r\nSe estudian las características resultantes de esas interacciones y qué mecanismos se pueden utilizar para el desarrollo y adaptación de estos sistemas de forma que puedan se explotados en las organizaciones con el mayor retorno posible. ', 'area'),
(99, 'Sistemas Expertos', 'No existe una descripcion ', 'area'),
(100, 'Telefonia IP', 'La telefonía IP reúne la transmisión de voz y de datos, lo que posibilita la utilización de las redes informáticas para efectuar llamadas telefónicas. Además, ésta tecnología al desarrollar una única red encargada de cursar todo tipo de comunicación, ya sea de voz, datos o video, se denomina red convergente o red multiservicios.La telefonía IP surge como una alternativa a la telefonía tradicional, brindando nuevos servicios al cliente y una serie de beneficios económicos y tecnológicos ', 'area'),
(101, 'Telemetría', 'La telemetría es una tecnología que permite la medición remota de magnitudes físicas y el posterior envío de la información hacia el operador ', 'area'),
(102, 'Television Digital', 'No existe una descripcion ', 'area'),
(103, 'Teoría de Grafos', 'Teoría de Grafos ', 'area'),
(104, 'Evaluación y Auditoria de Sistemas', 'No existe una descripcion ', 'area'),
(105, 'Robótica', 'No existe una descripcion ', 'area'),
(106, 'Servicios Telematicos', 'No existe una descripcion ', 'area'),
(107, 'Television Digital Interactiva', 'No existe una descripcion ', 'area'),
(108, 'Telecomunicaciones', 'Se refiere a todo procedimiento que permite a un usuario hacer llegar a uno o varios usuarios determinados (ej. telefonía) o eventuales (ej. radio, televisión), información de cualquier naturaleza (documento escrito, impreso, imagen fija o en movimiento, videos, voz, música, señales visibles, señales audibles, señales de mandos mecánicos, etc.), empleando para dicho procedimiento, cualquier sistema electromagnético para su transmisión y/o recepción (transmisión eléctrica por hilos, radioeléctrica, óptica, o una combinación de estos diversos sistemas) ', 'area'),
(109, 'Tecnología de Información y Comunicación (TIC) en la educaci', 'Tecnologias de Informacion y Comunicacion (TIC) aplicadas a la educacion. ', 'area'),
(110, 'Taller de programación  a bajo nivel', 'Se trata de aplicar los conocimientos adquiridos en la programación con assembler, aprovechando al maximo la arquitectura de un computador y el sistema operativo. ', 'area'),
(111, 'Recuperación de la Información', 'Proceso donde se accede a una información previamente almacenada, mediante herramientas informáticas que permiten establecer ecuaciones de búsqueda específicas. Dicha información ha debido de ser estructura previamente a su almacenamiento. ', 'area'),
(112, 'Accesibilidad audiovisual web', 'No existe una descripcion ', 'subarea'),
(113, 'Accesibilidad Web', 'No existe una descripcion ', 'subarea'),
(114, 'Administración de servidores', 'Aplicaciones creadas sobre plataformas de dispositivos móviles para administrar servicios en servidores de producción ', 'subarea'),
(115, 'Administración y gestión de proyectos', 'No existe una descripcion ', 'subarea'),
(116, 'Administrador de archivos', 'Sistema especializado en la administración de documentación, a partir de la cual se crea un repositorio, el que podrá ser accedido, compartido, eliminado según la necesidad o requerimientos del administrador o usuarios ', 'subarea'),
(117, 'Sistemas Administrativos', 'No existe una descripcion ', 'subarea'),
(118, 'Sistemas de Programación de Producción', 'No existe una descripcion ', 'subarea'),
(119, 'Toma de Desiciones Administrativas', 'No existe una descripcion ', 'subarea'),
(120, 'Sistema de Informacion Administrativo', 'No existe una descripcion ', 'subarea'),
(121, 'Sistema de Informacion Gerencial', 'No existe una descripcion ', 'subarea'),
(122, 'Algoritmos Genéticos', 'No existe una descripcion ', 'subarea'),
(123, 'Algoritmos Geométricos', 'No existe una descripcion ', 'subarea'),
(124, 'Composicion Algoritmica', 'No existe una descripcion ', 'subarea'),
(125, 'Programación y Algoritmos', 'No existe una descripcion ', 'subarea'),
(126, 'Proyectos y Análisis de Algoritmos', 'No existe una descripcion ', 'subarea'),
(127, 'Ambientes automatizados de apoyo', 'No existe una descripcion ', 'subarea'),
(128, 'Ambientes automatizados de apoyo para construccion de produc', 'No existe una descripcion ', 'subarea'),
(129, 'Ambientes automatizados de apoyo para productos de construcc', 'No existe una descripcion ', 'subarea'),
(130, 'Aplicacion android', 'Desarrollo de aplicaciones para Android ', 'subarea'),
(131, 'Aplicacion Movil', 'Aplicacion movil para el manejo de inventarios\r\n ', 'subarea'),
(132, 'Animación de Algoritmos', 'No existe una descripcion ', 'subarea'),
(133, 'Sistemas de Información Geográfica', 'No existe una descripcion ', 'subarea'),
(134, 'Sistemas Operativos', 'No existe una descripcion ', 'subarea'),
(135, 'Sistemas Operativos de PC', 'No existe una descripcion ', 'subarea'),
(136, 'Aplicaciones Hibridas', 'No existe una descripcion ', 'subarea'),
(137, 'Aplicaciones Móviles', 'No existe una descripcion ', 'subarea'),
(138, 'Portales Web', 'No existe una descripcion ', 'subarea'),
(139, 'Programacion Web', 'Programacion web ', 'subarea'),
(140, 'Programacion Web reactiva', 'No existe una descripcion ', 'subarea'),
(141, 'Programación y Aplicaciones Web', 'El estudio y programacion de aplicaciones web ', 'subarea'),
(142, 'Aprendizaje de Máquina', 'No existe una descripcion ', 'subarea'),
(143, 'Aprendizaje en Profundidad', 'No existe una descripcion ', 'subarea'),
(144, 'Aprendizaje por Computadora', 'El aprendizaje automático (Machine Learning) es una rama de la inteligencia artificial el cual busca desarrollar técnicas que permitan crear programas capaces de procesar y analizar grandes cantidades de datos para posteriormente agruparlas y consolidarlas en porciones pequeñas de información útil, que permita reconocer y decodificar patrones complejos y predecir tendencias o comportamientos futuros, estos programas deben aprender y mejorar con la experiencia a través el tiempo, refinando sus modelos que son usados para predecir los posibles resultados con el fin de facilitar la toma de decisiones inteligentes basadas en esa información. ', 'subarea'),
(145, 'Calidad de software', 'Evaluacion de material multimedia, para obtener la calidad de la aplicación. ', 'subarea'),
(146, 'Control de Calidad de Software', 'No existe una descripcion ', 'subarea'),
(147, 'Ingenieria de Calidad', 'Referido a control de calidad en productos de software. ', 'subarea'),
(148, 'Automatización de Procesos', 'En esta área se tratan los temas de automatización de procesos en todos los campos ', 'subarea'),
(149, 'Base de Datos - Ingenieria de Software', 'No existe una descripcion ', 'subarea'),
(150, 'Base de Datos Distribuidos', 'No existe una descripcion ', 'subarea'),
(151, 'Base de Datos Multidimensional', 'No existe una descripcion ', 'subarea'),
(152, 'Base de Datos Relacionales', 'No existe una descripcion ', 'subarea'),
(153, 'Base de Datos Relacionales Difusas', 'La Base de Datos Relacionales Difusas, nos ayuda a poder realizar consultas con tipos de datos imprecisa. ', 'subarea'),
(154, 'Base de Datos, Web', 'No existe una descripcion ', 'subarea'),
(155, 'Base de Datos,Aplicación Web y Sistemas de información', 'No existe una descripcion ', 'subarea'),
(156, 'Base deDatos Temporales', 'No existe una descripcion ', 'subarea'),
(157, 'Bases de Datos Dinámica', 'Bases de Datos Dinámica ', 'subarea'),
(158, 'Bases de Datos Orientados a Objetos', 'No existe una descripcion ', 'subarea'),
(159, 'Modelo relacional de base de datos', 'No existe una descripcion ', 'subarea'),
(160, 'Computación en la nube', 'No existe una descripcion ', 'subarea'),
(161, 'Programación en la Nube', 'No existe una descripcion ', 'subarea'),
(162, 'Servidor OwnCloud', 'No existe una descripcion ', 'subarea'),
(163, 'Compiladores e interpretadores', 'Sub area de compiladores e interpretadores\r\n\r\n ', 'subarea'),
(164, 'Epistemología', 'No existe una descripcion ', 'subarea'),
(165, 'Ergonomía', 'No existe una descripcion ', 'subarea'),
(166, 'Estrategias Heurísticas para la toma de  decisiones', 'Se comportan como recursos organizativos del proceso de resolución, que contribuyen especialmente a determinar la vía de solución del problema abordado ', 'subarea'),
(167, 'Servidores de Audio', 'No existe una descripcion ', 'subarea'),
(168, 'Teoría de la Computación', 'No existe una descripcion ', 'subarea'),
(169, 'Didáctica y Multimedia Interactiva', 'No existe una descripcion ', 'subarea'),
(170, 'Educación Superior en Ingeniería de Sistemas', 'No existe una descripcion ', 'subarea'),
(171, 'Ejercitación y Práctica', 'No existe una descripcion ', 'subarea'),
(172, 'E-learning', 'El e-learning consiste en la educación y capacitación a través de Internet. Este tipo de enseñanza online permite la interacción del usuario con el material mediante la utilización de diversas herramientas informáticas. ', 'subarea'),
(173, 'Material Educativo Computarizado (M.E.C.)', 'No existe una descripcion ', 'subarea'),
(174, 'Sistema educativo', 'No existe una descripcion ', 'subarea'),
(175, 'sistema gestion del conocimiento', 'No existe una descripcion ', 'subarea'),
(176, 'Sistemas académicos', 'El proposito de estos sistemas es la capacitacion de los estudiantes en el uso manejo, construción, modificación y diseño de sistemas operativos ', 'subarea'),
(177, 'Sistemas basados en conocimiento', 'No existe una descripcion ', 'subarea'),
(178, 'Sistemas de apoyo a la docencia', 'No existe una descripcion ', 'subarea'),
(179, 'Sistemas de Aprendizaje', 'No existe una descripcion ', 'subarea'),
(180, 'Software Educativo', 'En esta área se engloban todo software orientados a la educación en sus diferentes grados. ', 'subarea'),
(181, 'Tecnologia Informatica en Educacion', 'No existe una descripcion ', 'subarea'),
(182, 'Técnologias de Información Educativa', 'Sistemas de información dedicada al estudio y apoyo a la educación mediante un sistema de información.  ', 'subarea'),
(183, 'TICs aplicadas a la Educación', 'No existe una descripcion ', 'subarea'),
(184, 'Infografía', 'Imágenes generadas por ordenador ', 'subarea'),
(185, 'Interfaces Gráficas de Usuario WEB', 'Interfaces Gráficas de Usuario WEB ', 'subarea'),
(186, 'Laboratorios virtuales basados en WWW.', 'No existe una descripcion ', 'subarea'),
(187, 'Modelamiento Geometrico', 'No existe una descripcion ', 'subarea'),
(188, 'MODELO DIGITAL DEL TERRENO', 'No existe una descripcion ', 'subarea'),
(189, 'Procesamiento de Imagenes', 'No existe una descripcion ', 'subarea'),
(190, 'procesamiento de imagenes digitales', 'No existe una descripcion ', 'subarea'),
(191, 'Juegos Didacticos', 'No existe una descripcion ', 'subarea'),
(192, 'Prueba de intrusión', 'Es una práctica para poner a prueba un sistema informático, red o aplicación web para encontrar vulnerabilidades que un atacante podría explotar. ', 'subarea'),
(193, 'Psicología Cognitiva', 'No existe una descripcion ', 'subarea'),
(194, 'Tecnologías de Desarrollo', 'No existe una descripcion ', 'subarea'),
(195, 'Comunicación de Datos: Protocolos y Sistemas', 'No existe una descripcion ', 'subarea'),
(196, 'Contabilidad de Costos', 'No existe una descripcion ', 'subarea'),
(197, 'Contend Management Systems (CMS)', 'Sistemas de administración de contenido, archivos, páginas web, blogs,entre otros ', 'subarea'),
(198, 'Contenedor CMS', 'Un sistema de gestión de contenidos (content management system, abreviado CMS) es un programa que permite crear una estructura de soporte (framework) para la creación y administración de contenidos, principalmente en páginas web, por parte de los participantes. ', 'subarea'),
(199, 'Sistema de procesamiento de transacciones', 'No existe una descripcion ', 'subarea'),
(200, 'Control y Automatización Industrial', 'No existe una descripcion ', 'subarea'),
(201, 'Sistema de Gestión empresarial', 'No existe una descripcion ', 'subarea'),
(202, 'Sistema de Produccion', 'No existe una descripcion ', 'subarea'),
(203, 'Sistema de Reportes', 'En la ingenieria de software se necesita gráficas para analizar el trabajo de cada desarrollador, que representados en reportes gráficos son mas entendibles para los administradores de equipos de desarrollo ', 'subarea'),
(204, 'Sistemas Control de Procesos', 'No existe una descripcion ', 'subarea'),
(205, 'Tecnologías de Control', 'No existe una descripcion ', 'subarea'),
(206, 'Data Warehouse y Mineria de Datos', 'No existe una descripcion ', 'subarea'),
(207, 'Desarrollo de Aplicaciones Web', 'Desarrollo de Aplicaciones Web ', 'subarea'),
(208, 'Desarrollo de Sistemas Orientados a Objetos', 'No existe una descripcion ', 'subarea'),
(209, 'Desarrollo de Software Inteligente', 'Aplicación de la Inteligencia Artificial al desarrollo de software ', 'subarea'),
(210, 'Desarrollo de videojuegos', 'No existe una descripcion ', 'subarea'),
(211, 'Desarrollo e Investigación', 'No existe una descripcion ', 'subarea'),
(212, 'Diseño Avanzado de Software', 'Diseño Avanzado de Software ', 'subarea'),
(213, 'Diseño de Aerogeneradores', 'No existe una descripcion ', 'subarea'),
(214, 'Diseño de compiladores', 'No existe una descripcion ', 'subarea'),
(215, 'Diseño de Interfaces - Desarrollo de Sistemas Orientados a O', 'No existe una descripcion ', 'subarea'),
(216, 'Diseño de Sistemas', 'No existe una descripcion ', 'subarea'),
(217, 'Diseño e implementacion de software', 'No existe una descripcion ', 'subarea'),
(218, 'Diseño e Implementación de un Compilador', 'No existe una descripcion ', 'subarea'),
(219, 'Entornos Virtuales de Aprendizaje', 'No existe una descripcion ', 'subarea'),
(220, 'Sistemas Virtuales', 'No existe una descripcion ', 'subarea'),
(221, 'Tecnologia de Apoyo a Estadistica', 'No existe una descripcion ', 'subarea'),
(222, 'Gerencia del Proceso de Desenvolvimiento y Mantenimiento de ', 'No existe una descripcion ', 'subarea'),
(223, 'Gestión de empresas', 'No existe una descripcion ', 'subarea'),
(224, 'Gestión de Sistemas', 'La información que se maneja en una base de datos de una entidad financiera es de vital importancia, para ello se lleva un proceso el cual se desarrollará para verificar como se encuentran los datos, como actuarán ellos tras algún percance que pueda ocurrir y sobre todo la continuidad que puede tener la entidad con estos problemas y como se resolverán para que no ocurran en un futuro y mantenerlos controlados. ', 'subarea'),
(225, 'Gestión de Transacciones', 'Se trata el problema de asegurar la bd en un estado consistente aún en casos de acceso concurrente ', 'subarea'),
(226, 'Gestión Estratégica de Empresas', 'No existe una descripcion ', 'subarea'),
(227, 'Gestión y Administración de Información', 'No existe una descripcion ', 'subarea'),
(228, 'Gestion y planificación de empresas', 'No existe una descripcion ', 'subarea'),
(229, 'Planificación y Organización Empresarial', 'No existe una descripcion ', 'subarea'),
(230, 'Planificacion, Control y Gestion', 'No existe una descripcion ', 'subarea'),
(231, 'Sistemas de Gestión', 'No existe una descripcion ', 'subarea'),
(232, 'Sistemas de Gestión de Cálidad y Producción', 'No existe una descripcion ', 'subarea'),
(233, 'Sistemas de Soporte a la Administración', 'No existe una descripcion ', 'subarea'),
(234, 'Sistemas transaccionales', 'Estos sistemas basan su funcionamiento en el tipo de transacciones que realizan ', 'subarea'),
(235, 'Software de Gestión', 'No existe una descripcion ', 'subarea'),
(236, 'PLANEACIÓN Y CONTROL DE PRODUCCIÓN DE LA MANO DE OBRA DIRECT', 'Controlar la parte productiva del personal de planta ', 'subarea'),
(237, 'Planeamiento y Control de Producción', 'No existe una descripcion ', 'subarea'),
(238, 'Planificación Automática', 'La planificación automática es una disciplina de la inteligencia artificial que tiene por objeto la producción de planes (es decir, una planificación), típicamente para la ejecución de un robot u otro agente. ', 'subarea'),
(239, 'Interpretes y compiladores', 'No existe una descripcion ', 'subarea'),
(240, 'Investigación', 'No existe una descripcion ', 'subarea'),
(241, 'Investigación Operativa', 'No existe una descripcion ', 'subarea'),
(242, 'Sistemas de Tiempo Real', 'No existe una descripcion ', 'subarea'),
(243, 'Sistemas Distribuidos', 'No existe una descripcion ', 'subarea'),
(244, 'Sistemas Evolutivos', 'No existe una descripcion ', 'subarea'),
(245, 'Sistemas Integrados de Gestion', 'No existe una descripcion ', 'subarea'),
(246, 'Sistemas Inteligentes', 'No existe una descripcion ', 'subarea'),
(247, 'Sistemas Multiagente', 'No existe una descripcion ', 'subarea'),
(248, 'Sistemas Multimedios e Hipermedios', 'No existe una descripcion ', 'subarea'),
(249, 'Sistemas Tutoriales', 'No existe una descripcion ', 'subarea'),
(250, 'Especificación Formal de Lenguajes de Programación', 'No existe una descripcion ', 'subarea'),
(251, 'Especificación y Diseño de Software', 'No existe una descripcion ', 'subarea'),
(252, 'Metodología de desarrollo', 'Metodologías de desarrollo de software ', 'subarea'),
(253, 'Metodologías de Programación', 'No existe una descripcion ', 'subarea'),
(254, 'Metodos de Busqueda heuristica o solucion de problemas', 'En computación, dos objetivos fundamentales son encontrar algoritmos con buenos tiempos de ejecución y buenas soluciones, usualmente las óptimas. Una heurística es un algoritmo que abandona uno o ambos objetivos; por ejemplo, normalmente encuentran buenas soluciones, aunque no hay pruebas de que la solución no pueda ser arbitrariamente errónea en algunos casos; o se ejecuta razonablemente rápido, aunque no existe tampoco prueba de que siempre será así. Las heurísticas generalmente son usadas cuando no existe una solución óptima bajo las restricciones dadas (tiempo, espacio, etc.), o cuando no existe del todo.\r\nA menudo, pueden encontrarse instancias concretas del problema donde la heurística producirá resultados muy malos o se ejecutará muy lentamente. Aun así, estas instancias concretas pueden ser ignoradas porque no deberían ocurrir nunca en la práctica por ser de origen teórico. Por tanto, el uso de heurísticas es muy común en el mundo real. ', 'subarea'),
(255, 'Métodos Formales de la Ingeniería de Software', 'No existe una descripcion ', 'subarea'),
(256, 'Monitoreo de Servidores', 'Herramientas útiles para los administradores de servidores o personal de TI ', 'subarea'),
(257, 'Paradigma Orientado a Objetos', 'No existe una descripcion ', 'subarea'),
(258, 'sistemas orientados a objetos', 'No existe una descripcion ', 'subarea'),
(259, 'Workflow', 'No existe una descripcion ', 'subarea'),
(260, 'Interacción persona-computador para educación', 'No existe una descripcion ', 'subarea'),
(261, 'Estados Financieros', 'No existe una descripcion ', 'subarea'),
(262, 'Música Artificial', 'Creacion de musica a travez de algoritmos que proveen mecanismos de composición ', 'subarea'),
(263, 'Realidad Aumentada', 'No existe una descripcion ', 'subarea'),
(264, 'Realidad mixta', 'No existe una descripcion ', 'subarea'),
(265, 'Realidad Virtual', 'No existe una descripcion ', 'subarea'),
(266, 'Redes Neuronales', 'No existe una descripcion ', 'subarea'),
(267, 'Sistema en tiempo real y control de procesos', 'No existe una descripcion ', 'subarea'),
(268, 'Sistema Experto', 'No existe una descripcion ', 'subarea'),
(269, 'Vida Artificial', 'No existe una descripcion ', 'subarea'),
(270, 'Visión Artificial', 'No existe una descripcion ', 'subarea'),
(271, 'Visión por Computador', 'No existe una descripcion ', 'subarea'),
(272, 'Web Scraping', 'Web Scraping es una técnica utilizada por softwares de computadora para extraer información de sitios webs ', 'subarea'),
(273, 'M-Commerce, M-Payment', 'Areas en las que se realizan distintas transacciones concretamente de pago y compra de bienes o servicios utilizando como herramineta un dispositivo movil.  ', 'subarea'),
(274, 'Generacion de Codigo Interfaz', 'No existe una descripcion ', 'subarea'),
(275, 'Interfaces Cooperativas', 'No existe una descripcion ', 'subarea'),
(276, 'Metodo de diseño curricular', 'No existe una descripcion ', 'subarea'),
(277, 'Visualizacion de datos', 'La visualizacion de datos trata de la creacion de metaforas visuales y el estudio de comunicar la informacion de manera mas clara y efectiva a traves de estas. ', 'subarea'),
(278, 'Programación para Internet', 'Todo lo referente a la programación en Internet ', 'subarea'),
(279, 'Lenguaje Natural', 'No existe una descripcion ', 'subarea'),
(280, 'Procesamiento de Lenguaje Natural', 'No existe una descripcion ', 'subarea'),
(281, 'Web semántica', 'No existe una descripcion ', 'subarea'),
(282, 'Lógicas no Clásicas y Probadores de Teoremas', 'No existe una descripcion ', 'subarea'),
(283, 'Logística', 'No existe una descripcion ', 'subarea'),
(284, 'Matemática Computacional', 'No existe una descripcion ', 'subarea'),
(285, 'Métodos Númericos', 'No existe una descripcion ', 'subarea'),
(286, 'Métodos numéricos algebraicos', 'No existe una descripcion ', 'subarea'),
(287, 'Optimizacion', 'Es la seleccion del mejor elemento con respecto a algun criterio de un conjunto de elementos disponibles.\r\n ', 'subarea'),
(288, 'Optimizacion Combinatoria', 'No existe una descripcion ', 'subarea'),
(289, 'Procesamiento de datos Meteorológicos', 'No existe una descripcion ', 'subarea'),
(290, 'Graficacion por Computadora', 'No existe una descripcion ', 'subarea'),
(291, 'Herramienta SIG', 'No existe una descripcion ', 'subarea'),
(292, 'Herramienta y métodos de ingeniería de software', 'No existe una descripcion ', 'subarea'),
(293, 'Multimedia Interactivo', 'No existe una descripcion ', 'subarea'),
(294, 'Procesamiento Paralelo', 'No existe una descripcion ', 'subarea'),
(295, 'Modelacion de sistemas', 'No existe una descripcion ', 'subarea'),
(296, 'Modelamiento del Proceso de Desenvolvimiento de Software', 'No existe una descripcion ', 'subarea'),
(297, 'Objetos Distribuidos', 'No existe una descripcion ', 'subarea'),
(298, 'Procesamiento Informacion de Redes Sociales', 'No existe una descripcion ', 'subarea'),
(299, 'Procesos de Desarrollo', 'Procesos de desarrollo de software ', 'subarea'),
(300, 'Tecnicas de Animacion 3D', 'se hace uso de las tecnicas de animacion 3D como ser Keyframe,procedural las cuales permiten generar una animacion en 3D haciendo uso de herramientas de diseño 3D,tambien se puede hacer uso de la tecnica de rotoscopia el cual captura informacion de movimiento mediante sensores de objetos reales pero este requiere de equipos especiales. ', 'subarea'),
(301, 'Programación Concurrente', 'No existe una descripcion ', 'subarea'),
(302, 'Programación en Ginga-NCL', 'No existe una descripcion ', 'subarea'),
(303, 'Programación en Internet', 'No existe una descripcion ', 'subarea'),
(304, 'Programación Funcional', 'No existe una descripcion ', 'subarea'),
(305, 'Programacion Funcional Aplicada', 'Desarrollo de aplicaciones utilizando lenguajes funcioanles. ', 'subarea'),
(306, 'Programacion Ginga NCL/Lua', 'Ginga NCL/Lua herramienta desarrollada por la puc de Rio para el desarrollo de aplicaciones interactivas para Television Digital ', 'subarea'),
(307, 'Integracion de tecnologias moviles', 'No existe una descripcion ', 'subarea'),
(308, 'Programación Móvil, GPS', 'No existe una descripcion ', 'subarea'),
(309, 'Servicio Movil Nativa', 'servicio del dispositivo movil nativa \r\n ', 'subarea'),
(310, 'Software para dispositivos Moviles', 'desarrollo de software para dispositivos moviles  usando metodos, tecnicas y teorias de ingeniera de software. ', 'subarea'),
(311, 'Telefonia Movil, M-Payment, Modem Gateway', 'No existe una descripcion ', 'subarea'),
(312, 'Enrutamiento', 'La función de enrutamiento es una función de la Capa 3 del modelo OSI. El enrutamiento es un esquema de organización jerárquico que permite que se agrupen direcciones individuales. Estas direcciones individuales son tratadas como unidades únicas hasta que se necesita la dirección destino para la entrega final de los datos. El enrutamiento es el proceso de hallar la ruta más eficiente desde un dispositivo a otro. El dispositivo primario que realiza el proceso de enrutamiento es el Router. ', 'subarea'),
(313, 'Redes aleatorias', 'Redes aleatorias ', 'subarea'),
(314, 'Redes de computadoras e internet', 'Redes de computadoras que se relacionan con internet ', 'subarea'),
(315, 'Redes de computadoras intranet', 'No existe una descripcion ', 'subarea'),
(316, 'Redes de Comunicacion', 'No existe una descripcion ', 'subarea'),
(317, 'Redes de Datos', 'No existe una descripcion ', 'subarea'),
(318, 'Redes de distribucion', 'No existe una descripcion ', 'subarea'),
(319, 'Redes de Optimización', 'No existe una descripcion ', 'subarea'),
(320, 'Redes de Telecomunicaciones', 'No existe una descripcion ', 'subarea'),
(321, 'Redes Inalambricas', 'No existe una descripcion ', 'subarea'),
(322, 'Redes Moviles', 'Esta subárea se refiere a la interconexion de celulares por medio wifi. ', 'subarea'),
(323, 'Redes Multimedia', 'No existe una descripcion ', 'subarea'),
(324, 'Redes y Sistemas Distribuidos', 'No existe una descripcion ', 'subarea'),
(325, 'Semántica de datos', 'No existe una descripcion ', 'subarea'),
(326, 'Simulación de Redes', 'No existe una descripcion ', 'subarea'),
(327, 'Seguridad  y Gestion de Redes', 'No existe una descripcion ', 'subarea'),
(328, 'Seguridad biometrica', 'Desarrollo de aplicaciones de seguridad utilizando biometria de tecleo ', 'subarea'),
(329, 'Seguridad con sistemas informaticos', 'Seguridad domiciliaria y empresarial con sistemas informaticos ', 'subarea'),
(330, 'Seguridad de la Informacion', 'Es el area que se encarga de buscar, formas de proteger la informacion de terceras personas, como con la criptografia, esteganografia, marcas de agua, etc. ', 'subarea'),
(331, 'Seguridad en Aplicaciones Web', 'Seguridad en Aplicaciones Web ', 'subarea'),
(332, 'Seguridad en base de datos', 'Seguridad en base de datos ', 'subarea'),
(333, 'Seguridad en Redes', 'No existe una descripcion ', 'subarea'),
(334, 'Estandares Web', 'Especifica los estandares formales y otras especificaciones que definen  aspectos de la worl wide we ', 'subarea'),
(335, 'Mashups', 'En desarrollo web, un mashup es una página web o aplicación que usa y combina datos, presentaciones y funcionalidad procedentes de una o más fuentes para crear nuevos servicios. El término implica integración fácil y rápida, usando a menudo APIs abiertos y fuentes de datos para producir resultados enriquecidos que no fueron la razón original para la que fueron producidos los datos en crudo originales. ', 'subarea'),
(336, 'Servicios Web REST', 'La Transferencia de Estado Representacional (REST - Representational State Transfer) fue ganando amplia adopción en toda la web como una alternativa más simple a SOAP y a los servicios web basados en el Lenguage de Descripción de Servicios Web (Web Services Descripcion Language - WSDL).REST define un set de principios arquitectónicos por los cuales se diseñan servicios web haciendo foco en los recursos del sistema, incluyendo cómo se accede al estado de dichos recursos y cómo se transfieren por HTTP hacia clientes escritos en diversos lenguajes. ', 'subarea'),
(337, 'sistema de informacion administrativa web', 'Es un conjunto de elementos orientados al tratamiento y administracion de datos e informacion ,organizados y listos para su uso posterior o un objetivo.\r\nQue formarian parte de algunas de las siguientes partes (personas , actividades, datos. etc), para obtener informacion mas exacta y mas clara al momento de utilizar dicha informacion.\r\nla parte de administrar esta informacion en el area web es que ayude y evite pasos extras al momento de manejo de informacion hace que sea dinamico las busqueadas y otros procedimientos de la misma aplicacion web.\r\n ', 'subarea'),
(338, 'Sistema Web', 'Un sistema web es el conjunto de tecnologias de la informacion y las comunicaciones que sirven de soporte a la utilizacion de Internet en el seno de la misma, tanto como herramienta para la obtencion y procesamiento de la informacion en la toma de decisiones como en la interrelacion de la empresa con su mercado y su entorno. ', 'subarea'),
(339, 'Sistemas de Gestion Web', 'Toda informacion sera manejada mediante el internet en linea con el apoyo de la herramienta Zend para Php ', 'subarea'),
(340, 'Sistemas de Información Web', 'Desarrollo de sistemas web ', 'subarea'),
(341, 'Sistemas Web', 'Similar a Desarrollo Web, con caracteristicas dinamicas y estaticas basados en la Web y gestion de Base de Datos. ', 'subarea'),
(342, 'Tecnologia Web', 'No existe una descripcion ', 'subarea'),
(343, 'Simulación de Sistemas', 'El uso de modelos matemáticos para la simulación de sistemas  ', 'subarea'),
(344, 'Telefonía y Comunicaciones', 'No existe una descripcion ', 'subarea'),
(345, 'Transferencia de Datos Protocolo IP', 'No existe una descripcion ', 'subarea'),
(346, 'VOZ IP', 'En esta area esta relacionanda con las telecomunicaciones el cual utiliza la transmicion de voz sobre ips como tambien tipos de compresion para la voz el cual seran transmitidos ', 'subarea'),
(347, 'Medios de Comunicacion Digitales', 'No existe una descripcion ', 'subarea'),
(348, 'Sistemas Colaborativos', 'No existe una descripcion ', 'subarea'),
(349, 'Sistemas Colaborativos en la Educación', 'No existe una descripcion ', 'subarea'),
(350, 'Sistemas de Telecomunicaciones', 'No existe una descripcion ', 'subarea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `idAsig` int(11) NOT NULL,
  `rol` enum('tribunal','tutor') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idProyecto` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL,
  `estado` enum('Activo','Terminado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`idAsig`, `rol`, `idProyecto`, `idDoc`, `estado`) VALUES
(1, 'tutor', 1, 1, 'Terminado'),
(2, 'tutor', 2, 2, 'Terminado'),
(3, 'tutor', 3, 3, 'Terminado'),
(4, 'tutor', 4, 4, 'Terminado'),
(5, 'tutor', 5, 5, 'Terminado'),
(6, 'tutor', 6, 6, 'Terminado'),
(7, 'tutor', 7, 7, 'Terminado'),
(8, 'tutor', 8, 8, 'Terminado'),
(9, 'tutor', 9, 9, 'Terminado'),
(10, 'tutor', 10, 10, 'Terminado'),
(11, 'tutor', 11, 1, 'Terminado'),
(12, 'tutor', 12, 2, 'Activo'),
(13, 'tutor', 13, 3, 'Activo'),
(14, 'tribunal', 1, 4, 'Terminado'),
(15, 'tribunal', 2, 5, 'Terminado'),
(16, 'tribunal', 3, 6, 'Terminado'),
(17, 'tribunal', 4, 7, 'Terminado'),
(18, 'tribunal', 5, 8, 'Terminado'),
(19, 'tribunal', 6, 9, 'Terminado'),
(20, 'tribunal', 7, 10, 'Terminado'),
(21, 'tribunal', 8, 21, 'Terminado'),
(22, 'tribunal', 9, 22, 'Terminado'),
(23, 'tribunal', 10, 23, 'Terminado'),
(24, 'tribunal', 11, 24, 'Terminado'),
(25, 'tribunal', 12, 25, 'Activo'),
(26, 'tribunal', 13, 26, 'Activo'),
(27, 'tribunal', 1, 27, 'Terminado'),
(28, 'tribunal', 2, 28, 'Terminado'),
(29, 'tribunal', 3, 29, 'Terminado'),
(30, 'tribunal', 4, 30, 'Terminado'),
(31, 'tribunal', 5, 31, 'Terminado'),
(32, 'tribunal', 6, 32, 'Terminado'),
(33, 'tribunal', 7, 33, 'Terminado'),
(34, 'tribunal', 8, 34, 'Terminado'),
(35, 'tribunal', 9, 35, 'Terminado'),
(36, 'tribunal', 10, 36, 'Terminado'),
(37, 'tribunal', 11, 37, 'Terminado'),
(38, 'tribunal', 12, 38, 'Activo'),
(39, 'tribunal', 13, 39, 'Activo'),
(40, 'tribunal', 1, 40, 'Terminado'),
(41, 'tribunal', 2, 41, 'Terminado'),
(42, 'tribunal', 3, 80, 'Terminado'),
(43, 'tribunal', 4, 81, 'Terminado'),
(44, 'tribunal', 5, 82, 'Terminado'),
(45, 'tribunal', 6, 83, 'Terminado'),
(46, 'tribunal', 7, 84, 'Terminado'),
(47, 'tribunal', 8, 85, 'Terminado'),
(48, 'tribunal', 9, 86, 'Terminado'),
(49, 'tribunal', 10, 87, 'Terminado'),
(50, 'tribunal', 11, 88, 'Terminado'),
(51, 'tribunal', 12, 89, 'Activo'),
(52, 'tribunal', 13, 90, 'Activo');

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
(1, 'Ingenieria Informatica'),
(2, 'Ingenieria de Sistemas'),
(3, 'Otros');

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
  `cargaHoraria` varchar(40) DEFAULT NULL,
  `tipo` enum('docente','profesional') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`idDoc`, `ciDoc`, `nombreDoc`, `apePaternoDoc`, `apeMaternoDoc`, `emailDoc`, `telefonoDoc`, `tituloDoc`, `cargaHoraria`, `tipo`) VALUES
(1, '9847758', 'Samuel Roberto', 'Achá', 'Perez', 'cibo@supernet.com.bo', '70719123', 'Ing.', 'Tiempo Parcial', 'docente'),
(2, '6847065', 'Luis Roberto', 'Agreda', 'Corrales', 'luisagreda@hotmail.com', '4529557', 'Ing.', 'Tiempo Parcial', 'docente'),
(3, '6440275', 'Nancy Tatiana', 'Aparicio', 'Yuja', 'aparicio@ucbcba.edu.bo', '4252439', 'Msc.', 'Tiempo Parcial', 'docente'),
(4, '3951254', 'Ligia Jacqueline', 'Aranibar', 'La Fuente', 'ligiajacqueline@hotmail.com', '4252439', 'Lic.', 'Tiempo Parcial', 'docente'),
(5, '2529092', 'Walter ', 'Arispe', 'Santander', 'santander@hotmail.com', '4252439', 'Ing.', 'Tiempo Parcial', 'docente'),
(6, '3140716', 'Jose Richard', 'Ayoroa', 'Cardozo', 'richard@correo.com', '4252439', 'Ing.', 'Tiempo Completo', 'docente'),
(7, '8313966', 'Pablo Ramon', 'Azero', 'Alcocer', 'pabloazero@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial', 'docente'),
(8, '1194249', 'Maria Leticia', 'Blanco', 'Coca', 'leticia@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial', 'docente'),
(9, '2280051', 'Alex Israel', 'Bustillos', 'Vargas', 'bustillos@hotmail.com', '4252439', 'Lic.', 'Tiempo Parcial', 'docente'),
(10, '9167163', 'Boris Marcelo', 'Calancha', 'Navia', 'boris@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Completo', 'docente'),
(11, '7888805', 'Indira Elva', 'Camacho', 'del Castillo', 'agrofru@gmail.com', '4529433', 'Msc.', 'Tiempo Parcial', 'docente'),
(12, '7842061', 'Alvaro Hernando', 'Carrasco', 'Calvo', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(13, '5630974', 'Cecilia Beatriz', 'Castro', 'Lazarte', 'castro@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(14, '2625022', 'Raul ', 'Catari', 'Rios', 'micorreo@yahoo.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(15, '3839555', 'Maria Benita', 'Cespedes', 'Guizada', 'cespedes@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(16, '2308235', 'Alex Danchgelo', 'Choque', 'Flores', 'choque@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(17, '10911006', 'Francisco ', 'Choque', 'Uno', ' uno@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(18, '4787363', 'Carlos J. Alfredo', 'Cosio', 'Papadopolis', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(19, '2139967', 'Walter ', 'Cossio', 'Cabrera', ' cossio@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial', 'docente'),
(20, '1512570', 'Vladimir ', 'Costas', 'Jáuregui', 'vcostas@cs.umss.edu.bo', '4666037', 'Msc.', 'Tiempo Completo', 'docente'),
(21, '10724409', 'Grover ', 'Cussi', 'Nicolas', 'gcussi@yahoo.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(22, '7852807', 'Jorge ', 'Davalos', 'Brozovic', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(23, '3019453', 'David Alfredo', 'Delgadillo', 'Cossio', 'delgadillo@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(24, '6368262', 'David ', 'Escalera', 'Fernandez', 'descalera@cs.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(25, '10633862', 'Juan A.', 'Fernandez', 'León', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(26, '7077422', 'David ', 'Fernandez', 'Ramos', 'fernandez@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(27, '5586808', 'Americo ', 'Fiorilo', 'Lozada', 'amefio@gmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial', 'docente'),
(28, '7029128', 'Juan Marcelo', 'Flores', 'Soliz', 'marcelo@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(29, '6344058', 'Corina Justina', 'Flores', 'Villarroel', 'corina@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial', 'docente'),
(30, '7923733', 'Juan Ruben', 'Garcia', 'Molina', 'garcia@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(31, '6820790', 'Carmen Rosa', 'Garcia', 'Perez', 'carmenrosagarcia@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(32, '2458507', 'Maria Estela', 'Grilo', 'Salvatierra', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(33, '10305150', 'Osvaldo Walter', 'Gutierrez', 'Andrade', 'gutierrez@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(34, '7027757', 'Victor ', 'Gutierrez', 'Martinez', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(35, '6645699', 'Gonzalo E. Antonio', 'Guzman', 'Orellana', 'guzman@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(36, '2834240', 'Johnny ', 'Herrera', 'Acebey', 'herrera@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(37, '7433364', 'Mauricio ', 'Hoepfner', 'Reynolds', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(38, '10581622', 'K. Rolando', 'Jaldin', 'Rosales', 'rjaldin@hotmail.com', '4233719', 'Msc. Lic.', 'Tiempo Completo', 'docente'),
(39, '3153926', 'Demetrio ', 'Juchani', 'Bazualdo', 'juchani@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(40, '9897413', 'Valentin ', 'Laime', 'Zapata', 'laime@gmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(41, '10760149', 'Gualberto ', 'Leon', 'Romero', 'leon@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(42, '7800003', 'Ruperto ', 'León', 'Romero', 'ruperto@cs.umss.edu.bo', '4233719', 'Msc. Ing.', 'Tiempo Parcial', 'docente'),
(43, '7584780', 'Tito Anibal', 'Lima', 'Vacaflor', 'tlima@quadraplastsrl.com', '70744138', 'Msc. Ing.', 'Tiempo Parcial', 'docente'),
(44, '7739761', 'Marcelo Javier', 'Lucano', 'Lucano', 'lucano@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(45, '5832632', 'Mabel Gloria', 'Magariños', 'Villarroel', 'mabelm@fcyt.umss.edu.bo', '4234244', 'Ing.', 'Tiempo Parcial', 'docente'),
(46, '4044764', 'Roberto Juan', 'Manchego', 'Castellon', 'rmanchego@hotmail.com', '4232189', 'Ing.', 'Tiempo Parcial', 'docente'),
(47, '1550739', 'Carlos Benito', 'Manzur', 'Soria', 'ca.manzu@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(48, '6932461', 'Amilcar Saul', 'Martinez', 'Maida', 'martinez@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(49, '8730142', 'Julio ', 'Medina', 'Gamboa', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(50, '3788757', 'Victor R.', 'Mejia', 'Urquieta', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(51, '8233649', 'Victor Hugo', 'Montaño', 'Quiroga', 'victor@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(52, '6249794', 'Marco Antonio', 'Montecinos', 'Choque', 'markmcbo@gmail.com', '4233719', 'Msc. Lic.', 'Tiempo Parcial', 'docente'),
(53, '3638449', 'Yony Richard', 'Montoya', 'Burgos', 'yony@setbol.net', '71725138', 'Msc. Lic.', 'Tiempo Parcial', 'docente'),
(54, '2505020', 'Jose Gil', 'Omonte', 'Ojalvo', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(55, '9849400', 'Jose Roberto', 'Omonte', 'Ojalvo', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(56, '9673355', 'Jorge Walter', 'Orellana', 'Araoz', 'jw.orellana@umss.edu.bo', '4233719', 'Msc. Ing.', 'Tiempo Completo', 'docente'),
(57, '5840759', 'Ronald Edgar', 'Patiño', 'Tito', 'patino@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(58, '10280104', 'Magda Lena', 'Peeters', 'Ilonaa', 'peeters@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(59, '1198105', 'Omar David', 'Perez', 'Fuentes', 'omar_perez_f@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial', 'docente'),
(60, '5277218', 'Alfredo ', 'Pericon', 'Balderrama', 'pericon@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(61, '2850517', 'Abdon ', 'Quiroz', 'Chavez', 'quiroz@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(62, '3411435', 'Erika Patricia', 'Rodriguez', 'Bilbao', 'akirebilbao@gmail.com ', '4233719', 'Msc. Lic.', 'Tiempo Completo', 'docente'),
(63, '5913556', 'Juan Antonio', 'Rodriguez', 'Sejas', 'rodriguez@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(64, '4057956', 'Ramiro ', 'Rojas', 'Zurita', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(65, '5849234', 'Patricia Elizabeth', 'Romero', 'Rodríguez', 'paromeror@gmail.com', '4233719', 'Msc. Lic.', 'Tiempo Parcial', 'docente'),
(66, '8415723', 'Rose Mary', 'Salazar', 'Anaya', 'rsalazar@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(67, '3642582', 'Carla ', 'Salazar', 'Serrudo', 'csalazar@memi.umss.edu.bo', '4233719', 'Msc. Lic.', 'Tiempo Completo', 'docente'),
(68, '9576728', 'Ariel Antonio', 'Sarmiento', 'Franco', 'sarmiento@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(69, '2562105', 'Roxana ', 'Silva', 'Murillo', 'tersil@supernet.com.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(70, '7269169', 'Jose Antonio', 'Soruco', 'Maita', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(71, '9285659', 'Fidel ', 'Taborga', 'Acha', 'No Disponible', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(72, '10458428', 'Darlong Howard', 'Taylor', 'Terrazas', 'taylor@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(73, '9352248', 'Juan ', 'Terrazas', 'Lobo', 'terrazas@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(74, '2237509', 'Rosemary ', 'Torrico', 'Bascopé', 'rosemary@cs.umss.edu.bo', '71778384', 'Msc. Lic.', 'Tiempo Parcial', 'docente'),
(75, '2319496', 'Hernan ', 'Ustariz', 'Vargas', 'hustariz@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(76, '9821307', 'Roberto ', 'Valenzuela', 'Miranda', 'No Disponible', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(77, '2235509', 'Marco Antonio', 'Vallejos', 'Camacho', 'vallejos@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(78, '6884543', 'Ademar Marcelo', 'Vargas', 'Antezana', 'vargas@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(79, '9082844', 'Aidée ', 'Vargas', 'Colque', 'aideevc@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(80, '1320476', 'Jimmy ', 'Villarroel', 'Novillo', 'jimmyvn_@hotmail.com', '4233719', 'Ing.', 'Tiempo Completo', 'docente'),
(81, '2268517', 'Henrry Frank', 'Villarroel', 'Tapia', 'hvillarroel@memi.umss.edu.bo', '77931275', 'Lic.', 'Tiempo Completo', 'docente'),
(82, '1814816', 'Christian ', 'Villazon', 'Alcocer', 'villazon@gmial.com', '4233719', 'Lic.', 'Tiempo Parcial', 'docente'),
(83, '3948754', 'Oscar A', 'Zabalaga', 'Montano', 'zabalaga@hotmail.com', '4233719', 'Ing.', 'Tiempo Parcial', 'docente'),
(84, '2235989', 'Marco Antelo', 'Valda', 'Camacho', 'No Disponible', '73829716', 'Ing.', ' ', 'profesional'),
(85, '6854543', 'Carlos Marcelo', 'Perez', 'Antezana', 'No Disponible', '67835322', 'Ing.', ' ', 'profesional'),
(86, '9356844', 'Jacinto', 'Flores', 'Colque', 'No Disponible', '66729102', 'Msc.', ' ', 'profesional'),
(87, '1325476', 'Jimmy Rodrigo', 'Gonzales', 'Novillo', 'No Disponible', '77382932', 'Ing.', ' ', 'profesional'),
(88, '2268657', 'Franklinn', 'Fiorilo', 'Tapia', 'No Disponible', '77382933', 'Phd.', ' ', 'profesional'),
(89, '1814676', 'Christiann Ramiro', 'Quispe', 'Alcocer', 'No Disponible', '73671839', 'Phd.', ' ', 'profesional'),
(90, '3659754', 'Omar Daniel', 'Cardozo', 'Montano', 'No Disponible', '67182943', 'Phd.', ' ', 'profesional');

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
  `idCarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idEstudiante`, `ciEst`, `nombreEst`, `apellidoEst`, `emailEst`, `telefono`, `idCarrera`) VALUES
(1, '8188630', 'Kevin Marcelo ', 'Lopez Tordoya ', 'kevin_12ra@hotmail.com ', '4589652', 1),
(2, '1027941', 'Juan Daniel ', 'Sanchez Montaño ', 'juandanielsanchez20130@gmail.com ', '4253695', 1),
(3, '5197587', 'Abraham Kadir ', 'Moscoso Delgado ', 'linkwarriorx0@gmail.com ', '72259841', 1),
(4, '1030699', 'Carmen Jimena ', 'Camacho Machaca ', 'jimena1492@gmail.com ', '65214875', 1),
(5, '7512637', 'Ariel ', 'Ricaldez Gonzales ', 'ricaldez.arg@gmail.com ', '75482162', 1),
(6, '7705262', 'Mauricio Antonio ', 'Vargas Luizaga ', 'mauriciovlnemesis@gmail.com ', '74512478', 2),
(7, '8186461', 'Edward Rasmhir ', 'Salinas Chiri ', 'edwsalr.es@gmail.com ', '63254178', 2),
(8, '9108625', 'Jeaneth ', 'Galarza Alcocer ', 'j.galarza2906@gmail.com ', '62589456', 2),
(9, '2668719', 'Ivan Saul ', 'Cartagena Vega ', 'ivancartagenavega@hotmail.com ', '65248541', 1),
(10, '3892031', 'Diego Alexander  ', 'Garcia Cuchallo ', 'qtimpot@gmail.com  ', '75289654', 1),
(11, '4510908', 'Saul ', 'Jaimes Morales ', 'carnival_tauro@hotmail.com ', '4528136', 1),
(12, '1054008', 'Jhosmar ', 'Parra Montaño ', 'nogayo.jpm@gmail.com ', '4525985', 2),
(13, '2764888', 'Pedro Manuel ', 'Aneyba Fernandez Davila ', 'pedro.aneyba@gmail.com ', '4871253', 2),
(14, '3865031', 'Alex Fernando ', 'Gutierrez ', 'alexg@gmail.com  ', '75289654', 1),
(15, '4559908', 'Simon Roger ', 'Fernandez Rojas ', 'No Disponible ', '78945214', 1),
(16, '1896008', 'Jhoel ', 'Robles Rojas ', 'No Disponible ', '63521489', 2),
(17, '2564888', 'Camilo  ', 'Andrade Perez ', 'No Disponible ', '69587423', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `idModalidad` int(11) NOT NULL,
  `nombreMod` varchar(45) NOT NULL,
  `descripcionMod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`idModalidad`, `nombreMod`, `descripcionMod`) VALUES
(1, 'Trabajo Dirigido', 'Consiste en trabajos prácticos evaluados y supervisados en instituciones, empresas públicas o privadas, encargadas de proyectar o implementar obras para lo cual y sobre la base de un temario se proyecta, dirige o fiscaliza bajo la dirección de un supervisor o guía de la institución o empresa, también otro campo de acción es el de verificar las soluciones de problemas específicos, demostrando dominio amplio del tema y capacidad para resolver.'),
(2, 'Proyecto de Grado', 'Es el trabajo de investigación, análisis y diseño de objetos de fin social y que cumple con exigencias de metodología cientifica con profundidad similar al de un proyecto de investigación (tesis).'),
(3, 'Adscripción', 'Se establece la Adscripción como la incorporación de estudiantes de la UMSS a la realización de actividades en los ámbitos académico, de investigación, interacción, y/o de gestión universitaria. La Adscripción consiste en la realización de un Trabajo Dirigido y/o una práctica profesional supervisada (internado) dentro de la Universidad Mayor de San Simón, que desarrollado dentro del marco de las disposiciones del presente reglamento, habilita al estudiante a presentar como Proyecto Final.Para las Carreras de Informática y Sistemas, se plantea clasificar esta modalidad en dos:Adscripción a la Catedra,si las actividades a realizar persiguen fines netamente académicos y de investigación enmarcadas en el proceso enseñanza-aprendizaje de las carreras de Informática y Sistemas.Adscripción,si las actividades a realizar no están enmarcadas en el ámbito de la Adscripción a la Cátedra.'),
(4, 'Proyecto de Investigación (Tesis)', 'Es un trabajo de investigación, que cumple con exigencias de metodología científica, a objeto de conocer y dar respuestas a un problema, planteando alternativas aplicables o proponiendo soluciones prácticas y/o teóricas.'),
(5, 'Excelencia', 'No existe descripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `idPertenece` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`idPertenece`, `idCarrera`, `idDoc`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 1, 8),
(9, 2, 9),
(10, 1, 10),
(11, 2, 11),
(12, 1, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 1, 17),
(18, 2, 18),
(19, 1, 19),
(20, 2, 20),
(21, 1, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 1, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 2, 36),
(37, 2, 37),
(38, 1, 38),
(39, 2, 39),
(40, 1, 40),
(41, 2, 41),
(42, 1, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 1, 46),
(47, 2, 47),
(48, 1, 48),
(49, 2, 49),
(50, 2, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 1, 57),
(58, 2, 58),
(59, 1, 59),
(60, 2, 60),
(61, 2, 61),
(62, 1, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 1, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 1, 72),
(73, 2, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 1, 77),
(78, 1, 78),
(79, 2, 79),
(80, 1, 80),
(81, 2, 81),
(82, 1, 82),
(83, 1, 83),
(84, 3, 84),
(85, 3, 85),
(86, 3, 86),
(87, 3, 87),
(88, 3, 88),
(89, 3, 89),
(90, 3, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `objetivos` text NOT NULL,
  `descripcion` text NOT NULL,
  `fechaIni` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `periodo` varchar(30) NOT NULL,
  `sesionDeConsejo` varchar(45) DEFAULT NULL,
  `idModalidad` int(2) NOT NULL,
  `fechaRegistroProy` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `titulo`, `objetivos`, `descripcion`, `fechaIni`, `fechaFin`, `periodo`, `sesionDeConsejo`, `idModalidad`, `fechaRegistroProy`) VALUES
(1, 'SISTEMA GESTIÓN DEL CONOCIMIENTO PARA EMPRESAS DE DESARROLLO DE SOFTWARE ', 'Facilitar la recopilación y propagación del conocimiento para la capitalización de experiencias y conocimiento interno en una empresa de Desarrollo de Software a través de un sistema gestión del conocimiento. ', 'Por lo general las empresas de cualquier índole buscan: responder al cambio, innovar, mejorar sus productos y la satisfacción del personal; Lo cual conlleva a la necesidad de disponer de un portal corporativo interna que permita la comunicación. ', '2017-05-17', '2017-10-14', '2', 'Sesion-021', 2, '2017-05-16'),
(2, 'APLICACIÓN MÓVIL PARA TRAMITES EN COCHABAMBA ', 'Desarrollar una aplicación para dispositivos móviles plataforma Android para la realización de trámites en la ciudad de Cochabamba. ', 'El presente proyecto de grado pretende realizar una aplicación móvil que sirva de guía a toda población de Cochabamba para la realización de trámites de diferentes tipos, otorgando información suficiente sobre los requerimientos que se necesita. ', '2017-06-12', '2018-01-22', '1', 'Sesion-041', 2, '2017-06-11'),
(3, 'CAPA DE VISTA PARA EL SISTEMA ERP-BOA ', 'Facilitar el uso para los proveedores mediante una nueva capa de vista para el sistema ERP-BOA ', 'La empresa Boliviana de Aviacion ha desarrollado un sistema con Frameworks PXP para el control de compra, almacenamiento y destino de insumos para la empresa. Sin embargo, este sistema no es intuitivo y resulta difícil de usar para los proveedores. ', '2017-03-23', '2017-10-13', '2', 'Sesion-041', 1, '2017-03-22'),
(4, 'LAS REDES NEURONALES CONVOLUCIONALES EN EL ANÁLISIS DE SENTIMIENTOS DE LAS OPINIONES DE ATRACTIVOS TURÍSTICOS DE BOLIVIA ', 'Evaluar el grado de acierto de las redes neuronales convolucionales en la clasificación de opiniones escritas en lenguaje natural. ', 'En esta tesis se pretende comprobar que las RNC dedicadas a análisis de sentimientos obtienen\r\nbuenos resultados. Las RNC son una técnica relativamente nueva en las áreas del procesamiento de lenguaje natural. ', '2017-08-30', '2018-02-11', '1', 'Sesion-051', 4, '2017-08-29'),
(5, 'APLICACIÓN DE CONTROL Y SEGUIMIENTO DEL CARNET DE SALUD INFANTIL EN DISPOSITIVOS ANDROID ', 'Desarrollo de una Aplicación de control y seguimiento del Carnet de Salud Infantil en Dispositivos Android. ', 'La aplicación a desarrollar permite el acceso a la información detallada del estado en cual se encuentra el niño/a desde un dispositivo móvil, esto reducirá el riesgo de perdida del Carnet de Salud Infantil el cual es un documento muy valioso. ', '2017-04-05', '2017-11-15', '2', 'Sesion-052', 2, '2017-04-04'),
(6, 'SISTEMA PARA ADMINISTRACIÓN DE SERVICIO TÉCNICO Y OPTIMIZACIÓN EN ATENCIÓN AL CLIENTE ', 'Facilitar a las empresas de mantenimiento y reparación de equipos, a través del desarrollo de una plataforma web, donde podrán administrar correctamente los procesos y además brindar la posibilidad de que los clientes accedan al sistema. ', 'Con la llegada de la tecnología a nuestro país, se puede observar tanto las personas y las empresas utilizan aparatos electrónicos y mecánicos con distintas fines ya sea para información y comunicación, trasladarse de un lugar a otro, etc.  ', '2017-01-06', '2017-09-16', '2', 'Sesion-063', 2, '2017-01-05'),
(7, 'UN ENFOQUE DE SOLUCIÓN A MODELOS DE DISTRIBUCIÓN SOBRE REDES DINÁMICAS. ', 'Diseñar un método, tal que dado un modelo de un objeto que circula sobre una red con un punto de inicio y un punto de fin, reciba solicitudes en tiempo real que requieran que el objeto llegue a un punto dentro de la red, minimizando el tiempo total. ', 'Dado un objeto que está circulando sobre una red (con un punto de inicio y fin predeterminado) y solicitudes en tiempo real que requieran que este objeto pase por un punto que pertenezca a la red. ', '2018-01-16', '2018-04-06', '1', 'Sesion-065', 4, '2018-01-15'),
(8, 'SISTEMA DE CONTABILIDAD WEB PARA PEQUEÑAS Y MEDIANAS EMPRESAS ', 'Implementar un Sistema Web de Gestión Contable para pequeñas y medianas empresas de Bolivia siguiendo las reglas de la normativa nacional. ', 'El problema de las personas al momento de emprender una pequeña o media empresa es\r\nla de administrar contablemente su negocio y para ello necesitan de conocimientos en contabilidad o\r\nprofesionales del área para la elaboración de los Estados Financieros.   ', '2018-02-23', '2018-04-13', '1', 'Sesion-082', 2, '2018-02-22'),
(9, 'RECONOCIMIENTO DE PATRONES EN EL MANEJO DE UN CONDUCTOR ', 'Desarrollar un mecanismo de reconocimiento de patrones de conducción mediante el uso de un dispositivo móvil y algoritmos de aprendizaje automático, para alertar de manera oportuna el hallazgo de un patrón anómalo en el manejo de un conductor. ', 'El presente trabajo plantea qué, con la captura de parámetros de manejo de un conductor mediante el uso de un dispositivo móvil, es posible encontrar patrones de conducción que describan diferentes comportamientos de manejo. ', '2018-02-13', '2018-04-23', '1', 'Sesion-021', 2, '2018-02-12'),
(10, 'DESARROLLO MÓDULOS SISTEMA DE GESTIÓN Y COMPETENCIA DEPORTIVA COCHABAMBA 2018 ', 'Desarrollar parte de la Herramienta que coadyuve con la organización de los juegos Cocha 2018  ', 'El sistema forma parte del Sistema que coadyuvara en los juegos Cocha 2018 que espera la visita de ms de 4000 atletas. Los módulos están descritos en los objetivos específicos y son un gran aporte a esta institución.  ', '2017-04-19', NULL, '1', 'Sesion-091', 1, '2017-04-18'),
(11, 'PLATAFORMA ONLINE PARA CURSOS MASIVOS Y ABIERTOS. ', 'Desarrollar una plataforma que de soporte MOOC. ', 'La plataforma MOOC es un sistema que soporta cursos online, su finalidad es alojar a cursos del tipo MOOC, estos tipos de portales promueven los cursos abiertos, de participación masiva y sin restricciones. ', '2017-03-23', NULL, '2', 'Sesion-093', 2, '2017-03-22'),
(12, 'RED SOCIAL PARA EL CONTROL DISCIPLINARIO E INFORMATIVO DE ESTUDIANTES DE NIVEL PRIMARIO. ', 'Mejorar el control disciplinario e informativo de los estudiantes mediante una aplicación móvil basada en notificaciones para permitir mayor comunicación entre la unidad educativa, el responsable académico y los padres de familia de los estudiantes. ', 'La aplicación permitirá realizar un control administrativo e informativo sobre el cumplimiento de las normas disciplinarias de los estudiantes en las instituciones educativas, mediante una aplicación móvil que permita mayor comunicación. ', '2017-01-27', NULL, '1', 'Sesion-095', 2, '2017-01-26'),
(13, 'APLICACIÓN MÓVIL PARA EL APOYO DE APRENDIZAJE DE LAS MATEMÁTICAS EN NIÑOS QUE PRESENTAN DISCALCULIA ', 'Desarrollar una Aplicación móvil para la Enseñanza de las Matemáticas en Niños. ', 'La discalculia es un problema psicopedagógico que dificulta el aprendizaje de las matemáticas, el uso de los Smartphone, tablets va en aumento considerablemente. Con este proyecto se pretende apalear este problema en niños discalculicos en edad escola. ', '2017-03-21', NULL, '2', 'Sesion-098', 2, '2017-03-20'),
(14, 'APLICACION DE MODELOS MATEMATICOS ', 'Desarrollar una herramienta de desarrollo d emodelos matematicos para la aplciacion a la navegacion aerea ', 'El sistema forma parte del Sistema de gestion de modelos de simulacion  ', NULL, NULL, '1', NULL, 1, NULL),
(15, 'APLICACION DE PLATAFORMAS PARA LA GESTION DE INVENTARIOS ', 'Desarrollar una plataforma que de soporte MOOC. ', 'La plataforma MOOC es un sistema que soporta cursos online, su finalidad es alojar a cursos del tipo MOOC, estos tipos de portales promueven los cursos abiertos, de participación masiva y sin restricciones. ', NULL, NULL, '2', NULL, 2, NULL),
(16, 'APLICACION WEB PARA EL MANEJO DE INFORMACION DE ESTUDIANTES ', 'Mejorar el control disciplinario e informativo de los estudiantes mediante una aplicación móvil basada en notificaciones para permitir mayor comunicación entre la unidad educativa, el responsable académico y los padres de familia de los estudiantes. ', 'La aplicación permitirá realizar un control administrativo e informativo sobre el cumplimiento de las normas disciplinarias de los estudiantes en las instituciones educativas, mediante una aplicación móvil que permita mayor comunicación. ', NULL, NULL, '1', NULL, 2, NULL),
(17, 'APLICACION PARA LA GESTION DE VENTA DE APARATOS ELECTRONICOS ', 'Desarrollar una Aplicación móvil para la gestion de venta de aparatos electronicos ', 'El sistema permitira la gestion de venta de aparatos electronicos para las organizaciones gremiales que comercializan dispositivos eletronicos ', NULL, NULL, '2', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_estudiante`
--

CREATE TABLE `proyecto_estudiante` (
  `idProyecto` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `estado` enum('activo','inactivo','cancelado') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto_estudiante`
--

INSERT INTO `proyecto_estudiante` (`idProyecto`, `idEstudiante`, `estado`) VALUES
(1, 1, 'inactivo'),
(2, 2, 'inactivo'),
(3, 3, 'inactivo'),
(4, 4, 'inactivo'),
(5, 5, 'inactivo'),
(6, 6, 'inactivo'),
(7, 7, 'inactivo'),
(8, 8, 'inactivo'),
(9, 9, 'inactivo'),
(10, 10, 'cancelado'),
(11, 11, 'cancelado'),
(12, 12, 'activo'),
(13, 13, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_has_area`
--

CREATE TABLE `proyecto_has_area` (
  `idProyecto` int(11) NOT NULL,
  `idArea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto_has_area`
--

INSERT INTO `proyecto_has_area` (`idProyecto`, `idArea`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 89),
(5, 56),
(6, 23),
(7, 65),
(8, 15),
(9, 48),
(10, 12),
(10, 150),
(11, 23),
(11, 168),
(12, 56),
(12, 170),
(13, 18),
(13, 300),
(14, 156),
(14, 259),
(15, 234),
(15, 278),
(16, 146),
(16, 324),
(17, 301),
(17, 324);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renuncia`
--

CREATE TABLE `renuncia` (
  `idRenuncia` int(11) NOT NULL,
  `fechaRenuncia` date NOT NULL,
  `DescripcionRenuncia` text NOT NULL,
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

--
-- Volcado de datos para la tabla `tiene`
--

INSERT INTO `tiene` (`idTiene`, `idArea`, `idDoc`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(46, 46, 46),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50),
(51, 51, 51),
(52, 52, 52),
(53, 53, 53),
(54, 54, 54),
(55, 55, 55),
(56, 56, 56),
(57, 57, 57),
(58, 58, 58),
(59, 59, 59),
(60, 60, 60),
(61, 61, 61),
(62, 62, 62),
(63, 63, 63),
(64, 64, 64),
(65, 65, 65),
(66, 66, 66),
(67, 67, 67),
(68, 68, 68),
(69, 69, 69),
(70, 70, 70),
(71, 71, 71),
(72, 72, 72),
(73, 73, 73),
(74, 74, 74),
(75, 75, 75),
(76, 76, 76),
(77, 77, 77),
(78, 78, 78),
(79, 79, 79),
(80, 80, 80),
(81, 81, 81),
(82, 82, 82),
(83, 83, 83),
(84, 84, 84),
(85, 85, 85),
(86, 86, 86),
(87, 87, 87),
(88, 88, 88),
(89, 89, 89),
(90, 90, 90),
(91, 91, 1),
(92, 92, 2),
(93, 93, 3),
(94, 94, 4),
(95, 95, 5),
(96, 96, 6),
(97, 97, 7),
(98, 98, 8),
(99, 99, 9),
(100, 100, 10),
(101, 101, 11),
(102, 102, 12),
(103, 103, 13),
(104, 104, 14),
(105, 105, 15),
(106, 106, 16),
(107, 107, 17),
(108, 108, 18),
(109, 109, 19),
(110, 110, 20),
(111, 1, 21),
(112, 2, 22),
(113, 3, 23),
(114, 4, 24),
(115, 5, 25),
(116, 6, 26),
(117, 7, 27),
(118, 8, 28),
(119, 9, 29),
(120, 10, 30),
(121, 11, 31),
(122, 12, 32),
(123, 13, 33),
(124, 14, 34),
(125, 15, 35),
(126, 16, 36),
(127, 17, 37),
(128, 18, 38),
(129, 19, 39),
(130, 20, 40),
(131, 21, 41),
(132, 22, 42),
(133, 23, 43),
(134, 24, 44),
(135, 25, 45),
(136, 26, 46),
(137, 27, 47),
(138, 28, 48),
(139, 29, 49),
(140, 30, 50),
(141, 31, 51),
(142, 32, 52),
(143, 33, 53),
(144, 34, 54),
(145, 35, 55),
(146, 36, 56),
(147, 37, 57),
(148, 38, 58),
(149, 39, 59),
(150, 40, 60),
(151, 41, 61),
(152, 42, 62),
(153, 43, 63),
(154, 44, 64),
(155, 45, 65),
(156, 46, 66),
(157, 47, 67),
(158, 48, 68),
(159, 49, 69),
(160, 50, 70),
(161, 51, 71),
(162, 52, 72),
(163, 53, 73),
(164, 54, 74),
(165, 55, 75),
(166, 56, 76),
(167, 57, 77),
(168, 58, 78),
(169, 59, 79),
(170, 60, 80),
(171, 61, 81),
(172, 62, 82),
(173, 63, 83),
(174, 64, 84),
(175, 65, 85),
(176, 66, 86),
(177, 67, 87),
(178, 68, 88),
(179, 69, 89),
(180, 70, 90),
(181, 71, 1),
(182, 72, 2),
(183, 73, 3),
(184, 74, 4),
(185, 75, 5),
(186, 76, 6),
(187, 77, 7),
(188, 78, 8),
(189, 79, 9),
(190, 80, 10),
(191, 81, 11),
(192, 82, 12),
(193, 83, 13),
(194, 84, 14),
(195, 85, 15),
(196, 86, 16),
(197, 87, 17),
(198, 88, 18),
(199, 89, 19),
(200, 90, 20),
(201, 91, 21),
(202, 92, 22),
(203, 93, 23),
(204, 94, 24),
(205, 95, 25),
(206, 96, 26),
(207, 97, 27),
(208, 98, 28),
(209, 99, 29),
(210, 100, 30),
(211, 101, 31),
(212, 102, 32),
(213, 103, 33),
(214, 104, 34),
(215, 105, 35),
(216, 106, 36),
(217, 107, 37),
(218, 108, 38),
(219, 109, 39),
(220, 110, 40),
(221, 1, 41),
(222, 2, 42),
(223, 3, 43),
(224, 4, 44),
(225, 5, 45),
(226, 6, 46),
(227, 7, 47),
(228, 8, 48),
(229, 9, 49),
(230, 10, 50),
(231, 11, 51),
(232, 12, 52),
(233, 13, 53),
(234, 14, 54),
(235, 15, 55),
(236, 16, 56),
(237, 17, 57),
(238, 18, 58),
(239, 19, 59),
(240, 20, 60),
(241, 21, 61),
(242, 22, 62),
(243, 23, 63),
(244, 24, 64),
(245, 25, 65),
(246, 26, 66),
(247, 27, 67),
(248, 28, 68),
(249, 29, 69),
(250, 30, 70),
(251, 31, 71),
(252, 32, 72),
(253, 33, 73),
(254, 34, 74),
(255, 35, 75),
(256, 36, 76),
(257, 37, 77),
(258, 38, 78),
(259, 39, 79),
(260, 40, 80),
(261, 41, 81),
(262, 42, 82),
(263, 43, 83),
(264, 44, 84),
(265, 45, 85),
(266, 46, 86),
(267, 47, 87),
(268, 48, 88),
(269, 49, 89),
(270, 50, 90),
(271, 51, 1),
(272, 52, 2),
(273, 53, 3),
(274, 54, 4),
(275, 55, 5),
(276, 56, 6),
(277, 57, 7),
(278, 58, 8),
(279, 59, 9),
(280, 60, 10),
(281, 61, 11),
(282, 62, 12),
(283, 63, 13),
(284, 64, 14),
(285, 65, 15),
(286, 66, 16),
(287, 67, 17),
(288, 68, 18),
(289, 69, 19),
(290, 70, 20),
(291, 71, 21),
(292, 72, 22),
(293, 73, 23),
(294, 74, 24),
(295, 75, 25),
(296, 76, 26),
(297, 77, 27),
(298, 78, 28),
(299, 79, 29),
(300, 80, 30),
(301, 81, 31),
(302, 82, 32),
(303, 83, 33),
(304, 84, 34),
(305, 85, 35),
(306, 86, 36),
(307, 87, 37),
(308, 88, 38),
(309, 89, 39),
(310, 90, 40),
(311, 91, 41),
(312, 92, 42),
(313, 93, 43),
(314, 94, 44),
(315, 95, 45),
(316, 96, 46),
(317, 97, 47),
(318, 98, 48),
(319, 99, 49),
(320, 100, 50),
(321, 101, 51),
(322, 102, 52),
(323, 103, 53),
(324, 104, 54),
(325, 105, 55),
(326, 106, 56),
(327, 107, 57),
(328, 108, 58),
(329, 109, 59),
(330, 110, 60),
(331, 1, 61),
(332, 2, 62),
(333, 3, 63),
(334, 4, 64),
(335, 5, 65),
(336, 6, 66),
(337, 7, 67),
(338, 8, 68),
(339, 9, 69),
(340, 10, 70),
(341, 11, 71),
(342, 12, 72),
(343, 13, 73),
(344, 14, 74),
(345, 15, 75),
(346, 16, 76),
(347, 17, 77),
(348, 18, 78),
(349, 19, 79),
(350, 20, 80),
(351, 21, 81),
(352, 22, 82),
(353, 23, 83),
(354, 24, 84),
(355, 25, 85),
(356, 26, 86),
(357, 27, 87),
(358, 28, 88),
(359, 29, 89),
(360, 30, 90),
(361, 31, 1),
(362, 32, 2),
(363, 33, 3),
(364, 34, 4),
(365, 35, 5),
(366, 36, 6),
(367, 37, 7),
(368, 38, 8),
(369, 39, 9),
(370, 40, 10),
(371, 41, 11),
(372, 42, 12),
(373, 43, 13),
(374, 44, 14),
(375, 45, 15),
(376, 46, 16),
(377, 47, 17),
(378, 48, 18),
(379, 49, 19),
(380, 50, 20),
(381, 51, 21),
(382, 52, 22),
(383, 53, 23),
(384, 54, 24),
(385, 55, 25),
(386, 56, 26),
(387, 57, 27),
(388, 58, 28),
(389, 59, 29),
(390, 60, 30),
(391, 61, 31),
(392, 62, 32),
(393, 63, 33),
(394, 64, 34),
(395, 65, 35),
(396, 66, 36),
(397, 67, 37),
(398, 68, 38),
(399, 69, 39),
(400, 70, 40),
(401, 71, 41),
(402, 72, 42),
(403, 73, 43),
(404, 74, 44),
(405, 75, 45),
(406, 76, 46),
(407, 77, 47),
(408, 78, 48),
(409, 79, 49),
(410, 80, 50),
(411, 81, 51),
(412, 82, 52),
(413, 83, 53),
(414, 84, 54),
(415, 85, 55),
(416, 86, 56),
(417, 87, 57),
(418, 88, 58),
(419, 89, 59),
(420, 90, 60),
(421, 91, 61),
(422, 92, 62),
(423, 93, 63),
(424, 94, 64),
(425, 95, 65),
(426, 96, 66),
(427, 97, 67),
(428, 98, 68),
(429, 99, 69),
(430, 100, 70),
(431, 101, 71),
(432, 102, 72),
(433, 103, 73),
(434, 104, 74),
(435, 105, 75),
(436, 106, 76),
(437, 107, 77),
(438, 108, 78),
(439, 109, 79),
(440, 110, 80);

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
(6, 'luis', 'ketchsoul@gmail.com', '$2y$10$PK3sq8tq31992YhwtT4i5u3kr6UEgViygZrW/pZJpnVo.ydrmmjjq', NULL, '2018-05-23 17:34:20', '2018-05-23 17:34:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

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
-- Indices de la tabla `proyecto_estudiante`
--
ALTER TABLE `proyecto_estudiante`
  ADD KEY `fk_proyecto_estudiante_proyecto1_idx` (`idProyecto`),
  ADD KEY `fk_proyecto_estudiante_estudiante1_idx` (`idEstudiante`);

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
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;
--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `idAsig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `idDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `idModalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  MODIFY `idPertenece` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `renuncia`
--
ALTER TABLE `renuncia`
  MODIFY `idRenuncia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiene`
--
ALTER TABLE `tiene`
  MODIFY `idTiene` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

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
-- Filtros para la tabla `proyecto_estudiante`
--
ALTER TABLE `proyecto_estudiante`
  ADD CONSTRAINT `fk_proyecto_estudiante_estudiante1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyecto_estudiante_proyecto1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
