-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2018 a las 15:43:18
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
  `descripcionArea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `nombreArea`, `descripcionArea`) VALUES
(1, 'Accesibilidad', 'No existe una descripcion '),
(2, 'Administracion', 'No existe una descripcion '),
(3, 'Aeronáutica', 'La aeronáutica es la ciencia relacionada con el estudio, diseño, manufactura y técnicas de control de aeronaves. '),
(4, 'Algoritmos', 'Algoritmos pueden realizar calculos, procesamiento de datos y tareas de razonamiento automatizado. '),
(5, 'Almacén de Eventos', 'Del inglés -Event sourcing- involucra el modelado de cambio de estados hechos a una aplicación como una secuencia inmutable o registro de eventos. \r\n\r\nEn lugar modificar el estado de la aplicación directamente, un almacén de eventos almacena el evento que lanzo el cambio de estado en un registro inmutable y modela los cambios de estados como respuestas a los eventos en el registro. '),
(6, 'Ambientes automatizados', 'No existe una descripcion '),
(7, 'Análisis de contenido de páginas web.', 'No existe una descripcion '),
(8, 'Análisis de Patrones', 'No existe una descripcion '),
(9, 'Análisis de video', 'Describe un amplio número de nuevas tecnologías y evoluciones en el campo de la vigilancia con vídeo y la seguridad.\r\nAlgunas aplicaciones del análisis de vídeo son la detección de objetos abandonados en lugares llenos de gente, controlar obras de arte en los museos y detectar vehículos no autorizados que ingresen a determinadas áreas. La detección de matrículas de vehículos, congestión de tránsito,tecnologias mas de reconocimiento facial. '),
(10, 'Analisis y filtrado', 'No existe una descripcion '),
(11, 'Android', 'Android es un sistema operativo orientado a dispositivos móviles basado en una versión modificada del núcleo Linux.Inicialmente fue desarrollado por Android Inc., compañía que fue comprada después por Google, y en la actualidad lo desarrollan los miembros de la Open Handset Alliance (liderada por Google).\r\nLa presentación de la plataforma Android se realizó el 5 de noviembre de 2007 junto con la fundación Open Handset Alliance, un consorcio de 48 compañías de hardware, software y telecomunicaciones comprometidas con la promoción de estándares abiertos para dispositivos móviles.Esta plataforma permite el desarrollo de aplicaciones por terceros a través del SDK, proporcionada por el mismo Google, y mediante el lenguaje de programación Java.Una alternativa es el uso del NDK (Native Development Kit) de Google para emplear el lenguaje de programación C.\r\n\r\nEl código fuente de Android está disponible bajo diversas licencias de software libre y código abierto destacando la versión 2 de la licencia Apache.\r\nCaracteristicas:\r\n    * Framework  de aplicaciones: permite reutilización y reemplazo de componentes.\r\n    * Máquina virtual Dalvik: optimizada para dispositivos móviles.\r\n    * Navegador integrado: basado en el motor de código abierto WebKit.\r\n    * Gráficos optimizados, con una biblioteca de gráficos 2D; gráficos 3D basado en la especificación OpenGL ES 1.0 (aceleración por hardware opcional).\r\n    * SQLite para almacenamiento de datos estructurados.\r\n    * Soporte para medios con formatos comunes de audio, vídeo e imágenes planas (MPEG4, H.264, MP3, OGG, AAC, AMR, JPG, PNG, GIF)\r\n    * Telefonía GSM (dependiente del hardware)\r\n    * Bluetooth, EDGE, 3G, y WiFi (dependiente del hardware)\r\n    * Cámara, GPS, brújula, y acelerómetro (dependiente del hardware)\r\n    * Ambiente rico de desarrollo incluyendo un emulador de dispositivo, herramientas para depurar, perfiles de memoria y rendimiento, y un complemento para el IDE Eclipse.\r\n    * Pantalla táctil\r\n    * Android Market permite que los desarrolladores pongan sus aplicaciones, gratuitas o de pago, en el mercado a través de esta aplicación accesible desde la mayoría de los teléfonos con Android.\r\n '),
(12, 'Animación', 'No existe una descripcion '),
(13, 'Antropometría', 'No existe una descripcion '),
(14, 'APIs para interfaz de usuario', 'No existe una descripcion '),
(15, 'Aplicacion de GPS', 'Aplicación de GPS (Sistema de posicionamiento global) en dispositivos móviles '),
(16, 'Aplicacion de Sistemas Operativos', 'No existe una descripcion '),
(17, 'Aplicación Intranet', 'No existe una descripcion '),
(18, 'Aplicacion Web', 'Sistema de Informacion que esta en la Nube '),
(19, 'Aprendizaje Automatico', 'Aprendizaje supervisado\r\nApredizaje no supervisado\r\nAprendizaje por refuerzo '),
(20, 'Arquitectura de Computadoras', 'No existe una descripcion '),
(21, 'Arquitectura de la Informacion', 'No existe una descripcion '),
(22, 'Arquitectura de Software', 'No existe una descripcion '),
(23, 'Aseguramiento de la Calidad del software', 'Area encargada de validar , verificar y controlar la calidad del producto de software '),
(24, 'Autoevaluación', 'No existe una descripcion '),
(25, 'Autómatas Celulares', 'No existe una descripcion '),
(26, 'Automatización', 'Sistema tecnológico basado en la ingeniería y la informática, que proporciona una optimización de los procesos productivos mediante la regulación automática. '),
(27, 'Base de Datos', 'No existe una descripcion '),
(28, 'Bioinformatica', 'No existe una descripcion '),
(29, 'Bots', 'No existe una descripcion '),
(30, 'Business Intelligence', 'Se denomina inteligencia empresarial o inteligencia de negocios o BI '),
(31, 'Centrales Telefónicas IP', 'En la nueva era de las comunicaciones digitales, las centrales de telefonía han evolucionado, hasta convertirse en potentes maquinas de enrutamiento y gestión de llamadas, capaces de usar telefonía IP. '),
(32, 'Ciencias Juridicas', 'Ciencias Juridicas '),
(33, 'Cloud Computing', 'No existe una descripcion '),
(34, 'Content Management System', 'Content Management System '),
(35, 'Comercio electrónico', 'Comercio electrónico tambien conocido como e-commerce, conciste en la compra y venta de productos o servicios a traves de medios electrónicos tales como internet y otras redes informaticas '),
(36, 'Compiladores', 'No existe una descripcion '),
(37, 'Computación Científica', 'Es el campo de estudio relacionado con la construcción de modelos matemáticos y técnicas numéricas para resolver problemas científicos '),
(38, 'Computación Educativa', 'No existe una descripcion '),
(39, 'Computación Gráfica', 'No existe una descripcion '),
(40, 'Computacion Paralela', 'No existe una descripcion '),
(41, 'Computacion y Sociedad', 'No existe una descripcion '),
(42, 'Comunicacion de datos, Sistemas de tiempo real, Intranet/Int', 'No existe una descripcion '),
(43, 'Comunicación en Tiempo Real', 'Tecnologías web que permiten comunicación en tiempo real. '),
(44, 'Comunidades Virtuales', 'No existe una descripcion '),
(45, 'Construcción de Compiladores Orientados a Objeto', 'No existe una descripcion '),
(46, 'Contabilidad', 'No existe una descripcion '),
(47, 'Control de procesos', 'No existe una descripcion '),
(48, 'Criptografía Aplicada', 'No existe una descripcion '),
(49, 'Computer Supported Coopertive Work', 'Computer Supported Coopertive Work CSCW, Trabajo cooperativo asistido por computadora.\r\nCSCW es un Término utilizado para describir cualquier tecnología que combina recursos de hardware y software para permitir a grupos de personas colaborar y compartir tecnología. '),
(50, 'Data Science', 'No existe una descripcion '),
(51, 'Desarrollo de Software', 'Herramientas y recursos que son utilizados en el proceso de fabricación de software '),
(52, 'Desarrollo Web', 'Desarrollo Web '),
(53, 'Dinamica de sistemas', 'Es una metodología para la construcción de modelos de simulación para sistemas complejos '),
(54, 'Diseño', 'No existe una descripcion '),
(55, 'Domótica', 'Se entiende por domótica al conjunto de sistemas capaces de automatizar una vivienda, aportando servicios de gestión energética, seguridad, bienestar y comunicación '),
(56, 'Educación Superior en Inf.', 'No existe una descripcion '),
(57, 'Electronica', 'No existe una descripcion '),
(58, 'Encriptacion de datos', 'Es el proceso mediante el cual cierta informacion o texto sin formato es cifrado de forma que el resultado sea ilegible a menos que se conozca los datos necesarios para su interpretacion. '),
(59, 'Entornos virtuales', 'No existe una descripcion '),
(60, 'Estadística', 'No existe una descripcion '),
(61, 'Esteganografia', 'Esta tecnica es el arte y ciencia de enviar informacion secreta de tal forma que nadie fuera de quien lo envia y quien lo recibe sabe de su existencia, en contraste con la criptografia, en donde la existencia del mensaje es clara pero esta obscurecido. Por lo general la informacion  enviada de este tipo parece ser simplemente una imagen o foto. La esteganografia logra ocultar informacion en una imagen utilizando el bit menos significativo de cada color en los pixeles. '),
(62, 'Fisiología', 'No existe una descripcion '),
(63, 'Frameworks', 'Uso de frameworks para el desarrollo de aplicaciones '),
(64, 'Gestion Administrativa', 'Gestion de los procesos administrativos '),
(65, 'Hidrología', 'No existe una descripcion '),
(66, 'Informatica', 'No existe una descripcion '),
(67, 'Informática de la salud', 'No existe una descripcion '),
(68, 'Ingenieria de control', 'No existe una descripcion '),
(69, 'Ingenieria de la usabilidad', 'No existe una descripcion '),
(70, 'Ingenieria de Produccion', 'Dentro del area de Sistemas de informacion se trabaja para dar soluciones al area de la ingenieria de produccion '),
(71, 'Ingenieria de Requerimientos', 'No existe una descripcion '),
(72, 'Ingeniería de Sistemas', 'No existe una descripcion '),
(73, 'ingenieria de software', 'No existe una descripcion '),
(74, 'Ingeniería de Software Educativo', 'No existe una descripcion '),
(75, 'Ingenieria de tecnologia e informacion (IT)', 'No existe una descripcion '),
(76, 'Ingeniería de yacimientos', 'La ingeniería de yacimientos es la parte fundamental de la ingeniería de petróleo, aplicando conocimientos científicos, permite  una explotación racional de las acumulaciones de hidrocarburos, para obtener su máxima recuperación al menor costo  '),
(77, 'Ingenieria Economica', 'Area de la matematica financiera muy usado en la toma de decisiones, el manejo de amortizaciones de deudas y manejo de las tasas de interes muy usado en la vida cotidiana.  '),
(78, 'Inteligencia Artificial', 'No existe una descripcion '),
(79, 'Inteligencia de Negocios', 'SE ENTIENDE POR INTELIGENCIA DE NEGOCIOS (BUSINESS INTELLIGENCE) AL CONJUNTO DE METODOLOGIAS , APLICACIONES, PRACTICAS Y CAPACIDADES ENFOCADAS A LA CREACION Y ADMINISTRACION DE LA INFORMACION QUE PERMITE TOMAR MEJORES DECISIONES A LOS USUARIOS DE UN ORGANIZACION.\r\nEN RESUMEN SE PUEDE UTILIZAR DATOS DE AYER Y HOY PARA TOMAR MEJORES DECISIONES MAÑANA. '),
(80, 'Interaccion Humano-Computadora', 'Interaccion Humano-Computadora '),
(81, 'Interfaces de Usuario', 'No existe una descripcion '),
(82, 'Internet', 'No existe una descripcion '),
(83, 'Lingüística  Computacional', 'No existe una descripcion '),
(84, 'Lógica Matemática', 'No existe una descripcion '),
(85, 'Microcontroladores', 'No existe una descripcion '),
(86, 'Minería de datos', 'No existe una descripcion '),
(87, 'Modelación y Optimización', 'No existe una descripcion '),
(88, 'Modelación y simulación', 'No existe una descripcion '),
(89, 'Patrones de diseño', 'Los patrones de diseño de diagramas de clase son soluciones comprobadas a diferentes problemas bajo cierto contexto. '),
(90, 'Programación  de bajo Nivel', 'Uso del lenguaje de segunda generación assembler  '),
(91, 'Programacion Movil', 'Desarrollo de aplicaciones para aparatos como celulares, smartphones, PDAs, PocketPCs y dispositivos con recursos limitados. '),
(92, 'Reconocimiento de Voz', 'No existe una descripcion '),
(93, 'Redes de Computadoras', 'Estudio de los niveles del modelo tpc/ip '),
(94, 'Reingeniería', 'No existe una descripcion '),
(95, 'Seguridad Informatica', 'Es el área relacionada con la informática y la telemática que se enfoca en la protección de la infraestructura computacional y todo lo relacionado con esta y, especialmente, la información contenida en una computadora o circulante a través de las redes de computadoras. '),
(96, 'Servicios Web', 'SW es un conjunto de protocolos y estandares que sirven para intercambiar datos entre aplicaciones. '),
(97, 'Simulación', 'No existe una descripcion '),
(98, 'Sistema de información', 'Un Sistema de Información es un conjunto de componentes que interactúan entre sí, orientado a la recolección, almacenamiento, procesamiento y recuperación de información.\r\nSe estudian las características resultantes de esas interacciones y qué mecanismos se pueden utilizar para el desarrollo y adaptación de estos sistemas de forma que puedan se explotados en las organizaciones con el mayor retorno posible. '),
(99, 'Sistemas Expertos', 'No existe una descripcion '),
(100, 'Telefonia IP', 'La telefonía IP reúne la transmisión de voz y de datos, lo que posibilita la utilización de las redes informáticas para efectuar llamadas telefónicas. Además, ésta tecnología al desarrollar una única red encargada de cursar todo tipo de comunicación, ya sea de voz, datos o video, se denomina red convergente o red multiservicios.La telefonía IP surge como una alternativa a la telefonía tradicional, brindando nuevos servicios al cliente y una serie de beneficios económicos y tecnológicos '),
(101, 'Telemetría', 'La telemetría es una tecnología que permite la medición remota de magnitudes físicas y el posterior envío de la información hacia el operador '),
(102, 'Television Digital', 'No existe una descripcion '),
(103, 'Teoría de Grafos', 'Teoría de Grafos '),
(104, 'Evaluación y Auditoria de Sistemas', 'No existe una descripcion '),
(105, 'Robótica', 'No existe una descripcion '),
(106, 'Servicios Telematicos', 'No existe una descripcion '),
(107, 'Television Digital Interactiva', 'No existe una descripcion '),
(108, 'Telecomunicaciones', 'Se refiere a todo procedimiento que permite a un usuario hacer llegar a uno o varios usuarios determinados (ej. telefonía) o eventuales (ej. radio, televisión), información de cualquier naturaleza (documento escrito, impreso, imagen fija o en movimiento, videos, voz, música, señales visibles, señales audibles, señales de mandos mecánicos, etc.), empleando para dicho procedimiento, cualquier sistema electromagnético para su transmisión y/o recepción (transmisión eléctrica por hilos, radioeléctrica, óptica, o una combinación de estos diversos sistemas) '),
(109, 'Tecnología de Información y Comunicación (TIC) en la educaci', 'Tecnologias de Informacion y Comunicacion (TIC) aplicadas a la educacion. '),
(110, 'Taller de programación  a bajo nivel', 'Se trata de aplicar los conocimientos adquiridos en la programación con assembler, aprovechando al maximo la arquitectura de un computador y el sistema operativo. '),
(111, 'Recuperación de la Información', 'Proceso donde se accede a una información previamente almacenada, mediante herramientas informáticas que permiten establecer ecuaciones de búsqueda específicas. Dicha información ha debido de ser estructura previamente a su almacenamiento. '),
(112, 'Accesibilidad audiovisual web', 'No existe una descripcion '),
(113, 'Accesibilidad Web', 'No existe una descripcion '),
(114, 'Administración de servidores', 'Aplicaciones creadas sobre plataformas de dispositivos móviles para administrar servicios en servidores de producción '),
(115, 'Administración y gestión de proyectos', 'No existe una descripcion '),
(116, 'Administrador de archivos', 'Sistema especializado en la administración de documentación, a partir de la cual se crea un repositorio, el que podrá ser accedido, compartido, eliminado según la necesidad o requerimientos del administrador o usuarios '),
(117, 'Sistemas Administrativos', 'No existe una descripcion '),
(118, 'Sistemas de Programación de Producción', 'No existe una descripcion '),
(119, 'Toma de Desiciones Administrativas', 'No existe una descripcion '),
(120, 'Sistema de Informacion Administrativo', 'No existe una descripcion '),
(121, 'Sistema de Informacion Gerencial', 'No existe una descripcion '),
(122, 'Algoritmos Genéticos', 'No existe una descripcion '),
(123, 'Algoritmos Geométricos', 'No existe una descripcion '),
(124, 'Composicion Algoritmica', 'No existe una descripcion '),
(125, 'Programación y Algoritmos', 'No existe una descripcion '),
(126, 'Proyectos y Análisis de Algoritmos', 'No existe una descripcion '),
(127, 'Ambientes automatizados de apoyo', 'No existe una descripcion '),
(128, 'Ambientes automatizados de apoyo para construccion de produc', 'No existe una descripcion '),
(129, 'Ambientes automatizados de apoyo para productos de construcc', 'No existe una descripcion '),
(130, 'Aplicacion android', 'Desarrollo de aplicaciones para Android '),
(131, 'Aplicacion Movil', 'Aplicacion movil para el manejo de inventarios\r\n '),
(132, 'Animación de Algoritmos', 'No existe una descripcion '),
(133, 'Sistemas de Información Geográfica', 'No existe una descripcion '),
(134, 'Sistemas Operativos', 'No existe una descripcion '),
(135, 'Sistemas Operativos de PC', 'No existe una descripcion '),
(136, 'Aplicaciones Hibridas', 'No existe una descripcion '),
(137, 'Aplicaciones Móviles', 'No existe una descripcion '),
(138, 'Portales Web', 'No existe una descripcion '),
(139, 'Programacion Web', 'Programacion web '),
(140, 'Programacion Web reactiva', 'No existe una descripcion '),
(141, 'Programación y Aplicaciones Web', 'El estudio y programacion de aplicaciones web '),
(142, 'Aprendizaje de Máquina', 'No existe una descripcion '),
(143, 'Aprendizaje en Profundidad', 'No existe una descripcion '),
(144, 'Aprendizaje por Computadora', 'El aprendizaje automático (Machine Learning) es una rama de la inteligencia artificial el cual busca desarrollar técnicas que permitan crear programas capaces de procesar y analizar grandes cantidades de datos para posteriormente agruparlas y consolidarlas en porciones pequeñas de información útil, que permita reconocer y decodificar patrones complejos y predecir tendencias o comportamientos futuros, estos programas deben aprender y mejorar con la experiencia a través el tiempo, refinando sus modelos que son usados para predecir los posibles resultados con el fin de facilitar la toma de decisiones inteligentes basadas en esa información. '),
(145, 'Calidad de software', 'Evaluacion de material multimedia, para obtener la calidad de la aplicación. '),
(146, 'Control de Calidad de Software', 'No existe una descripcion '),
(147, 'Ingenieria de Calidad', 'Referido a control de calidad en productos de software. '),
(148, 'Automatización de Procesos', 'En esta área se tratan los temas de automatización de procesos en todos los campos '),
(149, 'Base de Datos - Ingenieria de Software', 'No existe una descripcion '),
(150, 'Base de Datos Distribuidos', 'No existe una descripcion '),
(151, 'Base de Datos Multidimensional', 'No existe una descripcion '),
(152, 'Base de Datos Relacionales', 'No existe una descripcion '),
(153, 'Base de Datos Relacionales Difusas', 'La Base de Datos Relacionales Difusas, nos ayuda a poder realizar consultas con tipos de datos imprecisa. '),
(154, 'Base de Datos, Web', 'No existe una descripcion '),
(155, 'Base de Datos,Aplicación Web y Sistemas de información', 'No existe una descripcion '),
(156, 'Base deDatos Temporales', 'No existe una descripcion '),
(157, 'Bases de Datos Dinámica', 'Bases de Datos Dinámica '),
(158, 'Bases de Datos Orientados a Objetos', 'No existe una descripcion '),
(159, 'Modelo relacional de base de datos', 'No existe una descripcion '),
(160, 'Computación en la nube', 'No existe una descripcion '),
(161, 'Programación en la Nube', 'No existe una descripcion '),
(162, 'Servidor OwnCloud', 'No existe una descripcion '),
(163, 'Compiladores e interpretadores', 'Sub area de compiladores e interpretadores\r\n\r\n '),
(164, 'Epistemología', 'No existe una descripcion '),
(165, 'Ergonomía', 'No existe una descripcion '),
(166, 'Estrategias Heurísticas para la toma de  decisiones', 'Se comportan como recursos organizativos del proceso de resolución, que contribuyen especialmente a determinar la vía de solución del problema abordado '),
(167, 'Servidores de Audio', 'No existe una descripcion '),
(168, 'Teoría de la Computación', 'No existe una descripcion '),
(169, 'Didáctica y Multimedia Interactiva', 'No existe una descripcion '),
(170, 'Educación Superior en Ingeniería de Sistemas', 'No existe una descripcion '),
(171, 'Ejercitación y Práctica', 'No existe una descripcion '),
(172, 'E-learning', 'El e-learning consiste en la educación y capacitación a través de Internet. Este tipo de enseñanza online permite la interacción del usuario con el material mediante la utilización de diversas herramientas informáticas. '),
(173, 'Material Educativo Computarizado (M.E.C.)', 'No existe una descripcion '),
(174, 'Sistema educativo', 'No existe una descripcion '),
(175, 'sistema gestion del conocimiento', 'No existe una descripcion '),
(176, 'Sistemas académicos', 'El proposito de estos sistemas es la capacitacion de los estudiantes en el uso manejo, construción, modificación y diseño de sistemas operativos '),
(177, 'Sistemas basados en conocimiento', 'No existe una descripcion '),
(178, 'Sistemas de apoyo a la docencia', 'No existe una descripcion '),
(179, 'Sistemas de Aprendizaje', 'No existe una descripcion '),
(180, 'Software Educativo', 'En esta área se engloban todo software orientados a la educación en sus diferentes grados. '),
(181, 'Tecnologia Informatica en Educacion', 'No existe una descripcion '),
(182, 'Técnologias de Información Educativa', 'Sistemas de información dedicada al estudio y apoyo a la educación mediante un sistema de información.  '),
(183, 'TICs aplicadas a la Educación', 'No existe una descripcion '),
(184, 'Infografía', 'Imágenes generadas por ordenador '),
(185, 'Interfaces Gráficas de Usuario WEB', 'Interfaces Gráficas de Usuario WEB '),
(186, 'Laboratorios virtuales basados en WWW.', 'No existe una descripcion '),
(187, 'Modelamiento Geometrico', 'No existe una descripcion '),
(188, 'MODELO DIGITAL DEL TERRENO', 'No existe una descripcion '),
(189, 'Procesamiento de Imagenes', 'No existe una descripcion '),
(190, 'procesamiento de imagenes digitales', 'No existe una descripcion '),
(191, 'Juegos Didacticos', 'No existe una descripcion '),
(192, 'Prueba de intrusión', 'Es una práctica para poner a prueba un sistema informático, red o aplicación web para encontrar vulnerabilidades que un atacante podría explotar. '),
(193, 'Psicología Cognitiva', 'No existe una descripcion '),
(194, 'Tecnologías de Desarrollo', 'No existe una descripcion '),
(195, 'Comunicación de Datos: Protocolos y Sistemas', 'No existe una descripcion '),
(196, 'Contabilidad de Costos', 'No existe una descripcion '),
(197, 'Contend Management Systems (CMS)', 'Sistemas de administración de contenido, archivos, páginas web, blogs,entre otros '),
(198, 'Contenedor CMS', 'Un sistema de gestión de contenidos (content management system, abreviado CMS) es un programa que permite crear una estructura de soporte (framework) para la creación y administración de contenidos, principalmente en páginas web, por parte de los participantes. '),
(199, 'Sistema de procesamiento de transacciones', 'No existe una descripcion '),
(200, 'Control y Automatización Industrial', 'No existe una descripcion '),
(201, 'Sistema de Gestión empresarial', 'No existe una descripcion '),
(202, 'Sistema de Produccion', 'No existe una descripcion '),
(203, 'Sistema de Reportes', 'En la ingenieria de software se necesita gráficas para analizar el trabajo de cada desarrollador, que representados en reportes gráficos son mas entendibles para los administradores de equipos de desarrollo '),
(204, 'Sistemas Control de Procesos', 'No existe una descripcion '),
(205, 'Tecnologías de Control', 'No existe una descripcion '),
(206, 'Data Warehouse y Mineria de Datos', 'No existe una descripcion '),
(207, 'Desarrollo de Aplicaciones Web', 'Desarrollo de Aplicaciones Web '),
(208, 'Desarrollo de Sistemas Orientados a Objetos', 'No existe una descripcion '),
(209, 'Desarrollo de Software Inteligente', 'Aplicación de la Inteligencia Artificial al desarrollo de software '),
(210, 'Desarrollo de videojuegos', 'No existe una descripcion '),
(211, 'Desarrollo e Investigación', 'No existe una descripcion '),
(212, 'Diseño Avanzado de Software', 'Diseño Avanzado de Software '),
(213, 'Diseño de Aerogeneradores', 'No existe una descripcion '),
(214, 'Diseño de compiladores', 'No existe una descripcion '),
(215, 'Diseño de Interfaces - Desarrollo de Sistemas Orientados a O', 'No existe una descripcion '),
(216, 'Diseño de Sistemas', 'No existe una descripcion '),
(217, 'Diseño e implementacion de software', 'No existe una descripcion '),
(218, 'Diseño e Implementación de un Compilador', 'No existe una descripcion '),
(219, 'Entornos Virtuales de Aprendizaje', 'No existe una descripcion '),
(220, 'Sistemas Virtuales', 'No existe una descripcion '),
(221, 'Tecnologia de Apoyo a Estadistica', 'No existe una descripcion '),
(222, 'Gerencia del Proceso de Desenvolvimiento y Mantenimiento de ', 'No existe una descripcion '),
(223, 'Gestión de empresas', 'No existe una descripcion '),
(224, 'Gestión de Sistemas', 'La información que se maneja en una base de datos de una entidad financiera es de vital importancia, para ello se lleva un proceso el cual se desarrollará para verificar como se encuentran los datos, como actuarán ellos tras algún percance que pueda ocurrir y sobre todo la continuidad que puede tener la entidad con estos problemas y como se resolverán para que no ocurran en un futuro y mantenerlos controlados. '),
(225, 'Gestión de Transacciones', 'Se trata el problema de asegurar la bd en un estado consistente aún en casos de acceso concurrente '),
(226, 'Gestión Estratégica de Empresas', 'No existe una descripcion '),
(227, 'Gestión y Administración de Información', 'No existe una descripcion '),
(228, 'Gestion y planificación de empresas', 'No existe una descripcion '),
(229, 'Planificación y Organización Empresarial', 'No existe una descripcion '),
(230, 'Planificacion, Control y Gestion', 'No existe una descripcion '),
(231, 'Sistemas de Gestión', 'No existe una descripcion '),
(232, 'Sistemas de Gestión de Cálidad y Producción', 'No existe una descripcion '),
(233, 'Sistemas de Soporte a la Administración', 'No existe una descripcion '),
(234, 'Sistemas transaccionales', 'Estos sistemas basan su funcionamiento en el tipo de transacciones que realizan '),
(235, 'Software de Gestión', 'No existe una descripcion '),
(236, 'PLANEACIÓN Y CONTROL DE PRODUCCIÓN DE LA MANO DE OBRA DIRECT', 'Controlar la parte productiva del personal de planta '),
(237, 'Planeamiento y Control de Producción', 'No existe una descripcion '),
(238, 'Planificación Automática', 'La planificación automática es una disciplina de la inteligencia artificial que tiene por objeto la producción de planes (es decir, una planificación), típicamente para la ejecución de un robot u otro agente. '),
(239, 'Interpretes y compiladores', 'No existe una descripcion '),
(240, 'Investigación', 'No existe una descripcion '),
(241, 'Investigación Operativa', 'No existe una descripcion '),
(242, 'Sistemas de Tiempo Real', 'No existe una descripcion '),
(243, 'Sistemas Distribuidos', 'No existe una descripcion '),
(244, 'Sistemas Evolutivos', 'No existe una descripcion '),
(245, 'Sistemas Integrados de Gestion', 'No existe una descripcion '),
(246, 'Sistemas Inteligentes', 'No existe una descripcion '),
(247, 'Sistemas Multiagente', 'No existe una descripcion '),
(248, 'Sistemas Multimedios e Hipermedios', 'No existe una descripcion '),
(249, 'Sistemas Tutoriales', 'No existe una descripcion '),
(250, 'Especificación Formal de Lenguajes de Programación', 'No existe una descripcion '),
(251, 'Especificación y Diseño de Software', 'No existe una descripcion '),
(252, 'Metodología de desarrollo', 'Metodologías de desarrollo de software '),
(253, 'Metodologías de Programación', 'No existe una descripcion '),
(254, 'Metodos de Busqueda heuristica o solucion de problemas', 'En computación, dos objetivos fundamentales son encontrar algoritmos con buenos tiempos de ejecución y buenas soluciones, usualmente las óptimas. Una heurística es un algoritmo que abandona uno o ambos objetivos; por ejemplo, normalmente encuentran buenas soluciones, aunque no hay pruebas de que la solución no pueda ser arbitrariamente errónea en algunos casos; o se ejecuta razonablemente rápido, aunque no existe tampoco prueba de que siempre será así. Las heurísticas generalmente son usadas cuando no existe una solución óptima bajo las restricciones dadas (tiempo, espacio, etc.), o cuando no existe del todo.\r\nA menudo, pueden encontrarse instancias concretas del problema donde la heurística producirá resultados muy malos o se ejecutará muy lentamente. Aun así, estas instancias concretas pueden ser ignoradas porque no deberían ocurrir nunca en la práctica por ser de origen teórico. Por tanto, el uso de heurísticas es muy común en el mundo real. '),
(255, 'Métodos Formales de la Ingeniería de Software', 'No existe una descripcion '),
(256, 'Monitoreo de Servidores', 'Herramientas útiles para los administradores de servidores o personal de TI '),
(257, 'Paradigma Orientado a Objetos', 'No existe una descripcion '),
(258, 'sistemas orientados a objetos', 'No existe una descripcion '),
(259, 'Workflow', 'No existe una descripcion '),
(260, 'Interacción persona-computador para educación', 'No existe una descripcion '),
(261, 'Estados Financieros', 'No existe una descripcion '),
(262, 'Música Artificial', 'Creacion de musica a travez de algoritmos que proveen mecanismos de composición '),
(263, 'Realidad Aumentada', 'No existe una descripcion '),
(264, 'Realidad mixta', 'No existe una descripcion '),
(265, 'Realidad Virtual', 'No existe una descripcion '),
(266, 'Redes Neuronales', 'No existe una descripcion '),
(267, 'Sistema en tiempo real y control de procesos', 'No existe una descripcion '),
(268, 'Sistema Experto', 'No existe una descripcion '),
(269, 'Vida Artificial', 'No existe una descripcion '),
(270, 'Visión Artificial', 'No existe una descripcion '),
(271, 'Visión por Computador', 'No existe una descripcion '),
(272, 'Web Scraping', 'Web Scraping es una técnica utilizada por softwares de computadora para extraer información de sitios webs '),
(273, 'M-Commerce, M-Payment', 'Areas en las que se realizan distintas transacciones concretamente de pago y compra de bienes o servicios utilizando como herramineta un dispositivo movil.  '),
(274, 'Generacion de Codigo Interfaz', 'No existe una descripcion '),
(275, 'Interfaces Cooperativas', 'No existe una descripcion '),
(276, 'Metodo de diseño curricular', 'No existe una descripcion '),
(277, 'Visualizacion de datos', 'La visualizacion de datos trata de la creacion de metaforas visuales y el estudio de comunicar la informacion de manera mas clara y efectiva a traves de estas. '),
(278, 'Programación para Internet', 'Todo lo referente a la programación en Internet '),
(279, 'Lenguaje Natural', 'No existe una descripcion '),
(280, 'Procesamiento de Lenguaje Natural', 'No existe una descripcion '),
(281, 'Web semántica', 'No existe una descripcion '),
(282, 'Lógicas no Clásicas y Probadores de Teoremas', 'No existe una descripcion '),
(283, 'Logística', 'No existe una descripcion '),
(284, 'Matemática Computacional', 'No existe una descripcion '),
(285, 'Métodos Númericos', 'No existe una descripcion '),
(286, 'Métodos numéricos algebraicos', 'No existe una descripcion '),
(287, 'Optimizacion', 'Es la seleccion del mejor elemento con respecto a algun criterio de un conjunto de elementos disponibles.\r\n '),
(288, 'Optimizacion Combinatoria', 'No existe una descripcion '),
(289, 'Procesamiento de datos Meteorológicos', 'No existe una descripcion '),
(290, 'Graficacion por Computadora', 'No existe una descripcion '),
(291, 'Herramienta SIG', 'No existe una descripcion '),
(292, 'Herramienta y métodos de ingeniería de software', 'No existe una descripcion '),
(293, 'Multimedia Interactivo', 'No existe una descripcion '),
(294, 'Procesamiento Paralelo', 'No existe una descripcion '),
(295, 'Modelacion de sistemas', 'No existe una descripcion '),
(296, 'Modelamiento del Proceso de Desenvolvimiento de Software', 'No existe una descripcion '),
(297, 'Objetos Distribuidos', 'No existe una descripcion '),
(298, 'Procesamiento Informacion de Redes Sociales', 'No existe una descripcion '),
(299, 'Procesos de Desarrollo', 'Procesos de desarrollo de software '),
(300, 'Tecnicas de Animacion 3D', 'se hace uso de las tecnicas de animacion 3D como ser Keyframe,procedural las cuales permiten generar una animacion en 3D haciendo uso de herramientas de diseño 3D,tambien se puede hacer uso de la tecnica de rotoscopia el cual captura informacion de movimiento mediante sensores de objetos reales pero este requiere de equipos especiales. '),
(301, 'Programación Concurrente', 'No existe una descripcion '),
(302, 'Programación en Ginga-NCL', 'No existe una descripcion '),
(303, 'Programación en Internet', 'No existe una descripcion '),
(304, 'Programación Funcional', 'No existe una descripcion '),
(305, 'Programacion Funcional Aplicada', 'Desarrollo de aplicaciones utilizando lenguajes funcioanles. '),
(306, 'Programacion Ginga NCL/Lua', 'Ginga NCL/Lua herramienta desarrollada por la puc de Rio para el desarrollo de aplicaciones interactivas para Television Digital '),
(307, 'Integracion de tecnologias moviles', 'No existe una descripcion '),
(308, 'Programación Móvil, GPS', 'No existe una descripcion '),
(309, 'Servicio Movil Nativa', 'servicio del dispositivo movil nativa \r\n '),
(310, 'Software para dispositivos Moviles', 'desarrollo de software para dispositivos moviles  usando metodos, tecnicas y teorias de ingeniera de software. '),
(311, 'Telefonia Movil, M-Payment, Modem Gateway', 'No existe una descripcion '),
(312, 'Enrutamiento', 'La función de enrutamiento es una función de la Capa 3 del modelo OSI. El enrutamiento es un esquema de organización jerárquico que permite que se agrupen direcciones individuales. Estas direcciones individuales son tratadas como unidades únicas hasta que se necesita la dirección destino para la entrega final de los datos. El enrutamiento es el proceso de hallar la ruta más eficiente desde un dispositivo a otro. El dispositivo primario que realiza el proceso de enrutamiento es el Router. '),
(313, 'Redes aleatorias', 'Redes aleatorias '),
(314, 'Redes de computadoras e internet', 'Redes de computadoras que se relacionan con internet '),
(315, 'Redes de computadoras intranet', 'No existe una descripcion '),
(316, 'Redes de Comunicacion', 'No existe una descripcion '),
(317, 'Redes de Datos', 'No existe una descripcion '),
(318, 'Redes de distribucion', 'No existe una descripcion '),
(319, 'Redes de Optimización', 'No existe una descripcion '),
(320, 'Redes de Telecomunicaciones', 'No existe una descripcion '),
(321, 'Redes Inalambricas', 'No existe una descripcion '),
(322, 'Redes Moviles', 'Esta subárea se refiere a la interconexion de celulares por medio wifi. '),
(323, 'Redes Multimedia', 'No existe una descripcion '),
(324, 'Redes y Sistemas Distribuidos', 'No existe una descripcion '),
(325, 'Semántica de datos', 'No existe una descripcion '),
(326, 'Simulación de Redes', 'No existe una descripcion '),
(327, 'Seguridad  y Gestion de Redes', 'No existe una descripcion '),
(328, 'Seguridad biometrica', 'Desarrollo de aplicaciones de seguridad utilizando biometria de tecleo '),
(329, 'Seguridad con sistemas informaticos', 'Seguridad domiciliaria y empresarial con sistemas informaticos '),
(330, 'Seguridad de la Informacion', 'Es el area que se encarga de buscar, formas de proteger la informacion de terceras personas, como con la criptografia, esteganografia, marcas de agua, etc. '),
(331, 'Seguridad en Aplicaciones Web', 'Seguridad en Aplicaciones Web '),
(332, 'Seguridad en base de datos', 'Seguridad en base de datos '),
(333, 'Seguridad en Redes', 'No existe una descripcion '),
(334, 'Estandares Web', 'Especifica los estandares formales y otras especificaciones que definen  aspectos de la worl wide we '),
(335, 'Mashups', 'En desarrollo web, un mashup es una página web o aplicación que usa y combina datos, presentaciones y funcionalidad procedentes de una o más fuentes para crear nuevos servicios. El término implica integración fácil y rápida, usando a menudo APIs abiertos y fuentes de datos para producir resultados enriquecidos que no fueron la razón original para la que fueron producidos los datos en crudo originales. '),
(336, 'Servicios Web REST', 'La Transferencia de Estado Representacional (REST - Representational State Transfer) fue ganando amplia adopción en toda la web como una alternativa más simple a SOAP y a los servicios web basados en el Lenguage de Descripción de Servicios Web (Web Services Descripcion Language - WSDL).REST define un set de principios arquitectónicos por los cuales se diseñan servicios web haciendo foco en los recursos del sistema, incluyendo cómo se accede al estado de dichos recursos y cómo se transfieren por HTTP hacia clientes escritos en diversos lenguajes. '),
(337, 'sistema de informacion administrativa web', 'Es un conjunto de elementos orientados al tratamiento y administracion de datos e informacion ,organizados y listos para su uso posterior o un objetivo.\r\nQue formarian parte de algunas de las siguientes partes (personas , actividades, datos. etc), para obtener informacion mas exacta y mas clara al momento de utilizar dicha informacion.\r\nla parte de administrar esta informacion en el area web es que ayude y evite pasos extras al momento de manejo de informacion hace que sea dinamico las busqueadas y otros procedimientos de la misma aplicacion web.\r\n '),
(338, 'Sistema Web', 'Un sistema web es el conjunto de tecnologias de la informacion y las comunicaciones que sirven de soporte a la utilizacion de Internet en el seno de la misma, tanto como herramienta para la obtencion y procesamiento de la informacion en la toma de decisiones como en la interrelacion de la empresa con su mercado y su entorno. '),
(339, 'Sistemas de Gestion Web', 'Toda informacion sera manejada mediante el internet en linea con el apoyo de la herramienta Zend para Php '),
(340, 'Sistemas de Información Web', 'Desarrollo de sistemas web '),
(341, 'Sistemas Web', 'Similar a Desarrollo Web, con caracteristicas dinamicas y estaticas basados en la Web y gestion de Base de Datos. '),
(342, 'Tecnologia Web', 'No existe una descripcion '),
(343, 'Simulación de Sistemas', 'El uso de modelos matemáticos para la simulación de sistemas  '),
(344, 'Telefonía y Comunicaciones', 'No existe una descripcion '),
(345, 'Transferencia de Datos Protocolo IP', 'No existe una descripcion '),
(346, 'VOZ IP', 'En esta area esta relacionanda con las telecomunicaciones el cual utiliza la transmicion de voz sobre ips como tambien tipos de compresion para la voz el cual seran transmitidos '),
(347, 'Medios de Comunicacion Digitales', 'No existe una descripcion '),
(348, 'Sistemas Colaborativos', 'No existe una descripcion '),
(349, 'Sistemas Colaborativos en la Educación', 'No existe una descripcion '),
(350, 'Sistemas de Telecomunicaciones', 'No existe una descripcion ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `idAsig` int(11) NOT NULL,
  `rol` enum('tribunal','tutor') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idProyecto` int(11) NOT NULL,
  `idDoc` int(11) NOT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`idAsig`, `rol`, `idProyecto`, `idDoc`, `estado`) VALUES
(1, 'tutor', 100, 1, 'inactivo'),
(2, 'tutor', 101, 2, 'inactivo'),
(3, 'tutor', 102, 3, 'inactivo'),
(4, 'tutor', 103, 4, 'inactivo'),
(5, 'tutor', 104, 5, 'inactivo'),
(6, 'tutor', 105, 6, 'inactivo'),
(7, 'tutor', 106, 7, 'inactivo'),
(8, 'tutor', 107, 8, 'inactivo'),
(9, 'tutor', 108, 9, 'inactivo'),
(10, 'tutor', 109, 10, 'inactivo'),
(11, 'tutor', 110, 11, 'inactivo'),
(12, 'tutor', 111, 12, 'inactivo'),
(13, 'tutor', 112, 13, 'inactivo'),
(14, 'tribunal', 100, 14, 'inactivo'),
(15, 'tribunal', 101, 15, 'inactivo'),
(16, 'tribunal', 102, 16, 'inactivo'),
(17, 'tribunal', 103, 17, 'inactivo'),
(18, 'tribunal', 104, 18, 'inactivo'),
(19, 'tribunal', 105, 19, 'inactivo'),
(20, 'tribunal', 106, 20, 'inactivo'),
(21, 'tribunal', 107, 21, 'inactivo'),
(22, 'tribunal', 108, 22, 'inactivo'),
(23, 'tribunal', 109, 23, 'inactivo'),
(24, 'tribunal', 110, 24, 'inactivo'),
(25, 'tribunal', 111, 25, 'inactivo'),
(26, 'tribunal', 112, 26, 'inactivo'),
(27, 'tribunal', 100, 27, 'inactivo'),
(28, 'tribunal', 101, 28, 'inactivo'),
(29, 'tribunal', 102, 29, 'inactivo'),
(30, 'tribunal', 103, 30, 'inactivo'),
(31, 'tribunal', 104, 31, 'inactivo'),
(32, 'tribunal', 105, 32, 'inactivo'),
(33, 'tribunal', 106, 33, 'inactivo'),
(34, 'tribunal', 107, 34, 'inactivo'),
(35, 'tribunal', 108, 35, 'inactivo'),
(36, 'tribunal', 109, 36, 'inactivo'),
(37, 'tribunal', 110, 37, 'inactivo'),
(38, 'tribunal', 111, 38, 'inactivo'),
(39, 'tribunal', 112, 39, 'inactivo'),
(40, 'tribunal', 100, 40, 'inactivo'),
(41, 'tribunal', 101, 41, 'inactivo'),
(42, 'tribunal', 102, 42, 'inactivo'),
(43, 'tribunal', 103, 43, 'inactivo'),
(44, 'tribunal', 104, 44, 'inactivo'),
(45, 'tribunal', 105, 45, 'inactivo'),
(46, 'tribunal', 106, 46, 'inactivo'),
(47, 'tribunal', 107, 47, 'inactivo'),
(48, 'tribunal', 108, 48, 'inactivo'),
(49, 'tribunal', 109, 49, 'inactivo'),
(50, 'tribunal', 110, 50, 'inactivo'),
(51, 'tribunal', 111, 51, 'inactivo'),
(52, 'tribunal', 112, 52, 'inactivo');

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
(2, 'Ingenieria de Sistemas');

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
(1, '9847759', 'Samuel Roberto', 'Achá', 'Perez', 'cibo@supernet.com.bo', '70719123', 'Ing.', 'Tiempo Parcial'),
(2, '6847065', 'Luis Roberto', 'Agreda', 'Corrales', 'luisagreda@hotmail.com', '4529557', 'Ing.', 'Tiempo Parcial'),
(3, '6440275', 'Nancy Tatiana', 'Aparicio', 'Yuja', 'aparicio@ucbcba.edu.bo', '0', 'Msc.', 'Tiempo Parcial'),
(4, '3951254', 'Ligia Jacqueline', 'Aranibar', 'La Fuente', 'ligiajacqueline@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(5, '2529092', 'Walter', 'Arispe', 'Santander', 'santander@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(6, '3140716', 'Jose Richard', 'Ayoroa', 'Cardozo', 'richard@correo.com', '0', 'Ing.', 'Tiempo Completo'),
(7, '8313966', 'Pablo Ramon', 'Azero', 'Alcocer', 'pabloazero@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(8, '1194249', 'Maria Leticia', 'Blanco', 'Coca', 'leticia@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(9, '2280051', 'Alex Israel', 'Bustillos', 'Vargas', 'bustillos@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(10, '9167163', 'Boris Marcelo', 'Calancha', 'Navia', 'boris@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Completo'),
(11, '7888805', 'Indira Elva', 'Camacho', 'del Castillo', 'agrofru@gmail.com', '4529433', 'Msc.', 'Tiempo Parcial'),
(12, '7842061', 'Alvaro Hernando', 'Carrasco', 'Calvo', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(13, '5630974', 'Cecilia Beatriz', 'Castro', 'Lazarte', 'castro@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(14, '2625022', 'Raul', 'Catari', 'Rios', 'micorreo@yahoo.com', '4233719', 'Lic.', 'Tiempo Parcial'),
(15, '3839555', 'Maria Benita', 'Cespedes', 'Guizada', 'cespedes@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(16, '2308235', 'Alex Danchgelo', 'Choque', 'Flores', 'choque@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(17, '10911006', 'Francisco', 'Choque', 'Uno', 'uno@hotmail.com', '4233719', 'Lic.', 'Tiempo Parcial'),
(18, '4787363', 'Carlos J. Alfredo', 'Cosio', 'Papadopolis', 'null', '4233719', 'Ing.', 'Tiempo Parcial'),
(19, '2139967', 'Walter', 'Cossio', 'Cabrera', 'cossio@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(20, '1512570', 'Vladimir', 'Costas', 'Jáuregui', 'vcostas@cs.umss.edu.bo', '4666037', 'Msc.', 'Tiempo Completo'),
(21, '10724409', 'Grover', 'Cussi', 'Nicolas', 'gcussi@yahoo.com', '0', 'Lic.', 'Tiempo Parcial'),
(22, '7852807', 'Jorge', 'Davalos', 'Brozovic', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(23, '3019453', 'David Alfredo', 'Delgadillo', 'Cossio', 'delgadillo@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(24, '6368262', 'David', 'Escalera', 'Fernandez', 'descalera@cs.umss.edu.bo', '0', 'Lic.', 'Tiempo Parcial'),
(25, '10633862', 'Juan A.', 'Fernandez', 'León', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(26, '7077422', 'David', 'Fernandez', 'Ramos', 'fernandez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(27, '5586808', 'Americo', 'Fiorilo', 'Lozada', 'amefio@gmail.com', '0', 'Msc. Ing.', 'Tiempo Parcial'),
(28, '7029128', 'Juan Marcelo', 'Flores', 'Soliz', 'marcelo@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(29, '6344058', 'Corina Justina', 'Flores', 'Villarroel', 'corina@memi.umss.edu.bo', '4252439', 'Lic.', 'Tiempo Parcial'),
(30, '7923733', 'Juan Ruben', 'Garcia', 'Molina', 'garcia@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(31, '6820790', 'Carmen Rosa', 'Garcia', 'Perez', 'carmenrosagarcia@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(32, '2458507', 'Maria Estela', 'Grilo', 'Salvatierra', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(33, '10305150', 'Osvaldo Walter', 'Gutierrez', 'Andrade', 'gutierrez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(34, '7027757', 'Victor', 'Gutierrez', 'Martinez', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(35, '6645699', 'Gonzalo E. Antonio', 'Guzman', 'Orellana', 'guzman@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(36, '2834240', 'Johnny', 'Herrera', 'Acebey', 'herrera@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(37, '7433364', 'Mauricio', 'Hoepfner', 'Reynolds', 'null', '4233719', 'Lic.', 'Tiempo Parcial'),
(38, '10581622', 'K. Rolando', 'Jaldin', 'Rosales', 'rjaldin@hotmail.com', '0', 'Msc. Lic.', 'Tiempo Completo'),
(39, '3153926', 'Demetrio', 'Juchani', 'Bazualdo', 'juchani@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(40, '9897413', 'Valentin', 'Laime', 'Zapata', 'laime@gmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(41, '10760149', 'Gualberto', 'Leon', 'Romero', 'leon@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(42, '7800003', 'Ruperto', 'León', 'Romero', 'ruperto@cs.umss.edu.bo', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(43, '7584780', 'Tito Anibal', 'Lima', 'Vacaflor', 'tlima@quadraplastsrl.com', '70744138', 'Msc. Ing.', 'Tiempo Parcial'),
(44, '7739761', 'Marcelo Javier', 'Lucano', 'Lucano', 'lucano@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(45, '5832632', 'Mabel Gloria', 'Magariños', 'Villarroel', 'mabelm@fcyt.umss.edu.bo', '4234244', 'Ing.', 'Tiempo Parcial'),
(46, '4044764', 'Roberto Juan', 'Manchego', 'Castellon', 'rmanchego@hotmail.com', '4232189', 'Ing.', 'Tiempo Parcial'),
(47, '1550739', 'Carlos Benito', 'Manzur', 'Soria', 'ca.manzu@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(48, '6932461', 'Amilcar Saul', 'Martinez', 'Maida', 'martinez@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(49, '8730142', 'Julio', 'Medina', 'Gamboa', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(50, '3788757', 'Victor R.', 'Mejia', 'Urquieta', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(51, '8233649', 'Victor Hugo', 'Montaño', 'Quiroga', 'victor@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(52, '6249794', 'Marco Antonio', 'Montecinos', 'Choque', 'markmcbo@gmail.com', '0', 'Msc. Lic.', 'Tiempo Parcial'),
(53, '3638449', 'Yony Richard', 'Montoya', 'Burgos', 'yony@setbol.net', '71725138', 'Msc. Lic.', 'Tiempo Parcial'),
(54, '2505020', 'Jose Gil', 'Omonte', 'Ojalvo', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(55, '9849400', 'Jose Roberto', 'Omonte', 'Ojalvo', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(56, '9673355', 'Jorge Walter', 'Orellana', 'Araoz', 'jw.orellana@umss.edu.bo', '0', 'Msc. Ing.', 'Tiempo Completo'),
(57, '5840759', 'Ronald Edgar', 'Patiño', 'Tito', 'patino@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(58, '10280104', 'Magda Lena', 'Peeters', 'Ilonaa', 'peeters@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(59, '1198105', 'Omar David', 'Perez', 'Fuentes', 'omar_perez_f@hotmail.com', '4233719', 'Msc. Ing.', 'Tiempo Parcial'),
(60, '5277218', 'Alfredo', 'Pericon', 'Balderrama', 'pericon@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(61, '2850517', 'Abdon', 'Quiroz', 'Chavez', 'quiroz@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(62, '3411435', 'Erika Patricia', 'Rodriguez', 'Bilbao', 'akirebilbao@gmail.com', '0', 'Msc. Lic.', 'Tiempo Completo'),
(63, '5913556', 'Juan Antonio', 'Rodriguez', 'Sejas', 'rodriguez@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(64, '4057956', 'Ramiro', 'Rojas', 'Zurita', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(65, '5849234', 'Patricia Elizabeth', 'Romero', 'Rodríguez', 'paromeror@gmail.com', '0', 'Msc. Lic.', 'Tiempo Parcial'),
(66, '8415723', 'Rose Mary', 'Salazar', 'Anaya', 'rsalazar@umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(67, '3642582', 'Carla', 'Salazar', 'Serrudo', 'csalazar@memi.umss.edu.bo', '4233719', 'Msc. Lic.', 'Tiempo Completo'),
(68, '9576728', 'Ariel Antonio', 'Sarmiento', 'Franco', 'sarmiento@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(69, '2562105', 'Roxana', 'Silva', 'Murillo', 'tersil@supernet.com.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(70, '7269169', 'Jose Antonio', 'Soruco', 'Maita', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(71, '9285659', 'Fidel', 'Taborga', 'Acha', '', '4233719', 'Lic.', 'Tiempo Parcial'),
(72, '10458428', 'Darlong Howard', 'Taylor', 'Terrazas', 'taylor@hotmail.com', '0', 'Lic.', 'Tiempo Parcial'),
(73, '9352248', 'Juan', 'Terrazas', 'Lobo', 'terrazas@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(74, '2237509', 'Rosemary', 'Torrico', 'Bascopé', 'rosemary@cs.umss.edu.bo', '71778384', 'Msc. Lic.', 'Tiempo Parcial'),
(75, '2319496', 'Hernan', 'Ustariz', 'Vargas', 'hustariz@memi.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(76, '9821307', 'Roberto', 'Valenzuela', 'Miranda', '', '4233719', 'Ing.', 'Tiempo Parcial'),
(77, '2235509', 'Marco Antonio', 'Vallejos', 'Camacho', 'vallejos@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(78, '6884543', 'Ademar Marcelo', 'Vargas', 'Antezana', 'vargas@hotmail.com', '0', 'Ing.', 'Tiempo Parcial'),
(79, '9082844', 'Aidée', 'Vargas', 'Colque', 'aideevc@fcyt.umss.edu.bo', '4233719', 'Lic.', 'Tiempo Parcial'),
(80, '1320476', 'Jimmy', 'Villarroel', 'Novillo', 'jimmyvn_@hotmail.com', '0', 'Ing.', 'Tiempo Completo'),
(81, '2268517', 'Henrry Frank', 'Villarroel', 'Tapia', 'hvillarroel@memi.umss.edu.bo', '77931275', 'Lic.', 'Tiempo Completo'),
(82, '1814816', 'Christian', 'Villazon', 'Alcocer', 'villazon@gmial.com', '0', 'Lic.', 'Tiempo Parcial'),
(83, '3948754', 'Oscar A', 'Zabalaga', 'Montano', 'zabalaga@hotmail.com', '0', 'Ing.', 'Tiempo Parcial');

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
(10, '8188630', 'Kevin Marcelo ', 'Lopez Tordoya ', 'kevin_12ra@hotmail.com ', '4589652', 1),
(11, '1027941', 'Juan Daniel ', 'Sanchez Montaño ', 'juandanielsanchez20130@gmail.com ', '4253695', 1),
(12, '5197587', 'Abraham Kadir ', 'Moscoso Delgado ', 'linkwarriorx0@gmail.com ', '72259841', 1),
(13, '1030699', 'Carmen Jimena ', 'Camacho Machaca ', 'jimena1492@gmail.com ', '65214875', 1),
(14, '7512637', 'Ariel ', 'Ricaldez Gonzales ', 'ricaldez.arg@gmail.com ', '75482162', 1),
(15, '7705262', 'Mauricio Antonio ', 'Vargas Luizaga ', 'mauriciovlnemesis@gmail.com ', '74512478', 2),
(16, '8186461', 'Edward Rasmhir ', 'Salinas Chiri ', 'edwsalr.es@gmail.com ', '63254178', 2),
(17, '9108625', 'Jeaneth ', 'Galarza Alcocer ', 'j.galarza2906@gmail.com ', '62589456', 2),
(18, '2668719', 'Ivan Saul ', 'Cartagena Vega ', 'ivancartagenavega@hotmail.com ', '65248541', 1),
(19, '3892031', 'Diego Alexander  ', 'Garcia Cuchallo ', 'qtimpot@gmail.com  ', '75289654', 1),
(20, '4510908', 'Saul ', 'Jaimes Morales ', 'carnival_tauro@hotmail.com ', '4528136', 1),
(21, '1054008', 'Jhosmar ', 'Parra Montaño ', 'nogayo.jpm@gmail.com ', '4525985', 2),
(22, '2764888', 'Pedro Manuel ', 'Aneyba Fernandez Davila ', 'pedro.aneyba@gmail.com ', '4871253', 2);

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
(201, 1, 1),
(202, 2, 2),
(203, 1, 3),
(204, 2, 4),
(205, 2, 5),
(206, 2, 6),
(207, 2, 7),
(208, 1, 8),
(209, 2, 9),
(210, 1, 10),
(211, 2, 11),
(212, 1, 12),
(213, 2, 13),
(214, 2, 14),
(215, 2, 15),
(216, 2, 16),
(217, 1, 17),
(218, 2, 18),
(219, 1, 19),
(220, 2, 20),
(221, 1, 21),
(222, 2, 22),
(223, 2, 23),
(224, 2, 24),
(225, 2, 25),
(226, 2, 26),
(227, 2, 27),
(228, 1, 28),
(229, 2, 29),
(230, 2, 30),
(231, 2, 31),
(232, 1, 32),
(233, 1, 33),
(234, 1, 34),
(235, 1, 35),
(236, 2, 36),
(237, 2, 37),
(238, 1, 38),
(239, 2, 39),
(240, 1, 40),
(241, 2, 41),
(242, 1, 42),
(243, 2, 43),
(244, 2, 44),
(245, 2, 45),
(246, 1, 46),
(247, 2, 47),
(248, 1, 48),
(249, 2, 49),
(250, 2, 50),
(251, 1, 51),
(252, 1, 52),
(253, 1, 53),
(254, 2, 54),
(255, 2, 55),
(256, 2, 56),
(257, 1, 57),
(258, 2, 58),
(259, 1, 59),
(260, 2, 60),
(261, 2, 61),
(262, 1, 62),
(263, 2, 63),
(264, 2, 64),
(265, 2, 65),
(266, 1, 66),
(267, 2, 67),
(268, 2, 68),
(269, 2, 69),
(270, 2, 70),
(271, 2, 71),
(272, 1, 72),
(273, 2, 73),
(274, 2, 74),
(275, 2, 75),
(276, 2, 76),
(277, 1, 77),
(278, 1, 78),
(279, 2, 79),
(280, 1, 80),
(281, 2, 81),
(282, 1, 82),
(283, 1, 83);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `objetivos` text NOT NULL,
  `descripcion` text NOT NULL,
  `fechaIni` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `periodo` varchar(30) NOT NULL,
  `sesionDeConsejo` varchar(45) DEFAULT NULL,
  `idModalidad` int(2) NOT NULL,
  `estadoProyecto` enum('terminado','pendiente','eliminado') NOT NULL,
  `fechaRegistroProy` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `titulo`, `objetivos`, `descripcion`, `fechaIni`, `fechaFin`, `periodo`, `sesionDeConsejo`, `idModalidad`, `estadoProyecto`, `fechaRegistroProy`) VALUES
(100, 'SISTEMA GESTIÓN DEL CONOCIMIENTO PARA EMPRESAS DE DESARROLLO DE SOFTWARE ', 'Facilitar la recopilación y propagación del conocimiento para la capitalización de experiencias y conocimiento interno en una empresa de Desarrollo de Software a través de un sistema gestión del conocimiento. ', 'Por lo general las empresas de cualquier índole buscan: responder al cambio, innovar, mejorar sus productos y la satisfacción del personal; Lo cual conlleva a la necesidad de disponer de un portal corporativo interna que permita la comunicación. ', '2017-05-17', '2017-10-14', '2', 'sesion-021', 2, 'terminado', '2017-05-16'),
(101, 'APLICACIÓN MÓVIL PARA TRAMITES EN COCHABAMBA ', 'Desarrollar una aplicación para dispositivos móviles plataforma Android para la realización de trámites en la ciudad de Cochabamba. ', 'El presente proyecto de grado pretende realizar una aplicación móvil que sirva de guía a toda población de Cochabamba para la realización de trámites de diferentes tipos, otorgando información suficiente sobre los requerimientos que se necesita. ', '2017-06-12', '2018-01-22', '1', 'sesion-041', 2, 'terminado', '2017-06-11'),
(102, 'CAPA DE VISTA PARA EL SISTEMA ERP-BOA ', 'Facilitar el uso para los proveedores mediante una nueva capa de vista para el sistema ERP-BOA ', 'La empresa Boliviana de Aviacion ha desarrollado un sistema con Frameworks PXP para el control de compra, almacenamiento y destino de insumos para la empresa. Sin embargo, este sistema no es intuitivo y resulta difícil de usar para los proveedores. ', '2017-03-23', '2017-10-13', '2', 'sesion-041', 1, 'terminado', '2017-03-22'),
(103, 'LAS REDES NEURONALES CONVOLUCIONALES EN EL ANÁLISIS DE SENTIMIENTOS DE LAS OPINIONES DE ATRACTIVOS TURÍSTICOS DE BOLIVIA ', 'Evaluar el grado de acierto de las redes neuronales convolucionales en la clasificación de opiniones escritas en lenguaje natural. ', 'En esta tesis se pretende comprobar que las RNC dedicadas a análisis de sentimientos obtienen\r\nbuenos resultados. Las RNC son una técnica relativamente nueva en las áreas del procesamiento de lenguaje natural. ', '2017-08-30', '2018-02-11', '1', 'sesion-051', 4, 'terminado', '2017-08-29'),
(104, 'APLICACIÓN DE CONTROL Y SEGUIMIENTO DEL CARNET DE SALUD INFANTIL EN DISPOSITIVOS ANDROID ', 'Desarrollo de una Aplicación de control y seguimiento del Carnet de Salud Infantil en Dispositivos Android. ', 'La aplicación a desarrollar permite el acceso a la información detallada del estado en cual se encuentra el niño/a desde un dispositivo móvil, esto reducirá el riesgo de perdida del Carnet de Salud Infantil el cual es un documento muy valioso. ', '2017-04-05', '2017-11-15', '2', 'sesion-052', 2, 'terminado', '2017-04-04'),
(105, 'SISTEMA PARA ADMINISTRACIÓN DE SERVICIO TÉCNICO Y OPTIMIZACIÓN EN ATENCIÓN AL CLIENTE ', 'Facilitar a las empresas de mantenimiento y reparación de equipos, a través del desarrollo de una plataforma web, donde podrán administrar correctamente los procesos y además brindar la posibilidad de que los clientes accedan al sistema. ', 'Con la llegada de la tecnología a nuestro país, se puede observar tanto las personas y las empresas utilizan aparatos electrónicos y mecánicos con distintas fines ya sea para información y comunicación, trasladarse de un lugar a otro, etc.  ', '2017-01-06', '2017-09-16', '2', 'sesion-063', 2, 'terminado', '2017-01-05'),
(106, 'UN ENFOQUE DE SOLUCIÓN A MODELOS DE DISTRIBUCIÓN SOBRE REDES DINÁMICAS. ', 'Diseñar un método, tal que dado un modelo de un objeto que circula sobre una red con un punto de inicio y un punto de fin, reciba solicitudes en tiempo real que requieran que el objeto llegue a un punto dentro de la red, minimizando el tiempo total. ', 'Dado un objeto que está circulando sobre una red (con un punto de inicio y fin predeterminado) y solicitudes en tiempo real que requieran que este objeto pase por un punto que pertenezca a la red. ', '2018-01-16', '2018-04-06', '1', 'sesion-065', 4, 'terminado', '2018-01-15'),
(107, 'SISTEMA DE CONTABILIDAD WEB PARA PEQUEÑAS Y MEDIANAS EMPRESAS ', 'Implementar un Sistema Web de Gestión Contable para pequeñas y medianas empresas de Bolivia siguiendo las reglas de la normativa nacional. ', 'El problema de las personas al momento de emprender una pequeña o media empresa es\r\nla de administrar contablemente su negocio y para ello necesitan de conocimientos en contabilidad o\r\nprofesionales del área para la elaboración de los Estados Financieros.   ', '2018-02-23', '2018-04-13', '1', 'sesion-082', 2, 'terminado', '2018-02-22'),
(108, 'RECONOCIMIENTO DE PATRONES EN EL MANEJO DE UN CONDUCTOR ', 'Desarrollar un mecanismo de reconocimiento de patrones de conducción mediante el uso de un dispositivo móvil y algoritmos de aprendizaje automático, para alertar de manera oportuna el hallazgo de un patrón anómalo en el manejo de un conductor. ', 'El presente trabajo plantea qué, con la captura de parámetros de manejo de un conductor mediante el uso de un dispositivo móvil, es posible encontrar patrones de conducción que describan diferentes comportamientos de manejo. ', '2018-02-13', '2018-04-23', '1', 'sesion-021', 2, 'terminado', '2018-02-12'),
(109, 'DESARROLLO MÓDULOS SISTEMA DE GESTIÓN Y COMPETENCIA DEPORTIVA COCHABAMBA 2018 ', 'Desarrollar parte de la Herramienta que coadyuve con la organización de los juegos Cocha 2018  ', 'El sistema forma parte del Sistema que coadyuvara en los juegos Cocha 2018 que espera la visita de ms de 4000 atletas. Los módulos están descritos en los objetivos específicos y son un gran aporte a esta institución.  ', '2017-04-19', '2018-01-29', '1', 'sesion-091', 1, 'terminado', '2017-04-18'),
(110, 'PLATAFORMA ONLINE PARA CURSOS MASIVOS Y ABIERTOS. ', 'Desarrollar una plataforma que de soporte MOOC. ', 'La plataforma MOOC es un sistema que soporta cursos online, su finalidad es alojar a cursos del tipo MOOC, estos tipos de portales promueven los cursos abiertos, de participación masiva y sin restricciones. ', '2017-03-23', '2017-10-13', '2', 'sesion-093', 2, 'terminado', '2017-03-22'),
(111, 'RED SOCIAL PARA EL CONTROL DISCIPLINARIO E INFORMATIVO DE ESTUDIANTES DE NIVEL PRIMARIO. ', 'Mejorar el control disciplinario e informativo de los estudiantes mediante una aplicación móvil basada en notificaciones para permitir mayor comunicación entre la unidad educativa, el responsable académico y los padres de familia de los estudiantes. ', 'La aplicación permitirá realizar un control administrativo e informativo sobre el cumplimiento de las normas disciplinarias de los estudiantes en las instituciones educativas, mediante una aplicación móvil que permita mayor comunicación. ', '2017-01-27', '2018-01-17', '1', 'sesion-095', 2, 'terminado', '2017-01-26'),
(112, 'APLICACIÓN MÓVIL PARA EL APOYO DE APRENDIZAJE DE LAS MATEMÁTICAS EN NIÑOS QUE PRESENTAN DISCALCULIA ', 'Desarrollar una Aplicación móvil para la Enseñanza de las Matemáticas en Niños. ', 'La discalculia es un problema psicopedagógico que dificulta el aprendizaje de las matemáticas, el uso de los Smartphone, tablets va en aumento considerablemente. Con este proyecto se pretende apalear este problema en niños discalculicos en edad escola. ', '2017-03-21', '2018-10-12', '2', 'sesion-098', 2, 'terminado', '2017-03-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_estudiante`
--

CREATE TABLE `proyecto_estudiante` (
  `idProyecto` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `estado` enum('activo','inactivo') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto_estudiante`
--

INSERT INTO `proyecto_estudiante` (`idProyecto`, `idEstudiante`, `estado`) VALUES
(100, 10, 'inactivo'),
(101, 11, 'inactivo'),
(102, 12, 'inactivo'),
(103, 13, 'inactivo'),
(104, 14, 'inactivo'),
(105, 15, 'inactivo'),
(106, 16, 'inactivo'),
(107, 17, 'inactivo'),
(108, 18, 'inactivo'),
(109, 19, 'inactivo'),
(110, 20, 'inactivo'),
(111, 21, 'inactivo'),
(112, 22, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_has_area`
--

CREATE TABLE `proyecto_has_area` (
  `idProyecto` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `tipo` enum('area','subarea') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto_has_area`
--

INSERT INTO `proyecto_has_area` (`idProyecto`, `idArea`, `tipo`) VALUES
(100, 1, 'area'),
(100, 156, 'subarea'),
(101, 3, 'area'),
(101, 234, 'subarea'),
(102, 4, 'area'),
(102, 324, 'subarea'),
(103, 89, 'area'),
(103, 301, 'subarea'),
(104, 56, 'area'),
(104, 294, 'subarea'),
(105, 23, 'area'),
(105, 168, 'subarea'),
(106, 65, 'area'),
(107, 15, 'area'),
(108, 48, 'area'),
(109, 12, 'area'),
(110, 23, 'area'),
(111, 56, 'area'),
(112, 18, 'area');

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
(84, 84, 1),
(85, 85, 2),
(86, 86, 3),
(87, 87, 4),
(88, 88, 5),
(89, 89, 6),
(90, 90, 7),
(91, 91, 8),
(92, 92, 9),
(93, 93, 10),
(94, 94, 11),
(95, 95, 12),
(96, 96, 13),
(97, 97, 14),
(98, 98, 15),
(99, 99, 16),
(100, 100, 17),
(101, 101, 18),
(102, 102, 19),
(103, 103, 20),
(104, 104, 21),
(105, 105, 22),
(106, 106, 23),
(107, 107, 24),
(108, 108, 25),
(109, 109, 26),
(110, 110, 27),
(111, 111, 28),
(112, 112, 29),
(113, 113, 30),
(114, 114, 31),
(115, 115, 32),
(116, 116, 33),
(117, 117, 34),
(118, 118, 35),
(119, 119, 36),
(120, 120, 37),
(121, 121, 38),
(122, 122, 39),
(123, 123, 40),
(124, 124, 1),
(125, 125, 2),
(126, 126, 3),
(127, 127, 4),
(128, 128, 5),
(129, 129, 6),
(130, 130, 7),
(131, 131, 8),
(132, 132, 9),
(133, 133, 10),
(134, 134, 11),
(135, 135, 12),
(136, 136, 13),
(137, 137, 14),
(138, 138, 15),
(139, 139, 16),
(140, 140, 17),
(141, 141, 18),
(142, 142, 19),
(143, 143, 20),
(144, 144, 21),
(145, 145, 22),
(146, 146, 23),
(147, 147, 24),
(148, 148, 25),
(149, 149, 26),
(150, 150, 27),
(151, 151, 28),
(152, 152, 29),
(153, 153, 30),
(154, 154, 31),
(155, 155, 32),
(156, 156, 33),
(157, 157, 34),
(158, 158, 35),
(159, 159, 36),
(160, 160, 37),
(161, 161, 38),
(162, 162, 39),
(163, 163, 40),
(164, 164, 1),
(165, 165, 2),
(166, 166, 3),
(167, 167, 4),
(168, 168, 5),
(169, 169, 6),
(170, 170, 7),
(171, 171, 8),
(172, 172, 9),
(173, 173, 10),
(174, 174, 11),
(175, 175, 12),
(176, 176, 13),
(177, 177, 14),
(178, 178, 15),
(179, 179, 16),
(180, 180, 17),
(181, 181, 18),
(182, 182, 19),
(183, 183, 20),
(184, 184, 21),
(185, 185, 22),
(186, 186, 23),
(187, 187, 24),
(188, 188, 25),
(189, 189, 26),
(190, 190, 27),
(191, 191, 28),
(192, 192, 29),
(193, 193, 30),
(194, 194, 31),
(195, 195, 32),
(196, 196, 33),
(197, 197, 34),
(198, 198, 35),
(199, 199, 36),
(200, 200, 37),
(201, 201, 38),
(202, 202, 39),
(203, 203, 40),
(204, 204, 41),
(205, 205, 42),
(206, 206, 43),
(207, 207, 44),
(208, 208, 45),
(209, 209, 46),
(210, 210, 47),
(211, 211, 48),
(212, 212, 49),
(213, 213, 50),
(214, 214, 51),
(215, 215, 52),
(216, 216, 53),
(217, 217, 54),
(218, 218, 55),
(219, 219, 56),
(220, 220, 57),
(221, 221, 58),
(222, 222, 59),
(223, 223, 60),
(224, 224, 61),
(225, 225, 62),
(226, 226, 63),
(227, 227, 64),
(228, 228, 65),
(229, 229, 66),
(230, 230, 67),
(231, 231, 68),
(232, 232, 69),
(233, 233, 70),
(234, 234, 71),
(235, 235, 72),
(236, 236, 73),
(237, 237, 74),
(238, 238, 75),
(239, 239, 76),
(240, 240, 77),
(241, 241, 78),
(242, 242, 79),
(243, 243, 80),
(244, 244, 81),
(245, 245, 82),
(246, 246, 83),
(247, 247, 1),
(248, 248, 2),
(249, 249, 3),
(250, 250, 4),
(251, 251, 5),
(252, 252, 6),
(253, 253, 7),
(254, 254, 8),
(255, 255, 9),
(256, 256, 10),
(257, 257, 11),
(258, 258, 12),
(259, 259, 13),
(260, 260, 14),
(261, 261, 15),
(262, 262, 16),
(263, 263, 17),
(264, 264, 18),
(265, 265, 19),
(266, 266, 20),
(267, 267, 21),
(268, 268, 22),
(269, 269, 23),
(270, 270, 24),
(271, 271, 25),
(272, 272, 26),
(273, 273, 27),
(274, 274, 28),
(275, 275, 29),
(276, 276, 30),
(277, 277, 31),
(278, 278, 32),
(279, 279, 33),
(280, 280, 34),
(281, 281, 35),
(282, 282, 36),
(283, 283, 37),
(284, 284, 38),
(285, 285, 39),
(286, 286, 40),
(287, 287, 41),
(288, 288, 42),
(289, 289, 43),
(290, 290, 44),
(291, 291, 45),
(292, 292, 46),
(293, 293, 47),
(294, 294, 48),
(295, 295, 49),
(296, 296, 50),
(297, 297, 51),
(298, 298, 52),
(299, 299, 53),
(300, 300, 54),
(301, 301, 55),
(302, 302, 56),
(303, 303, 57),
(304, 304, 58),
(305, 305, 59),
(306, 306, 60),
(307, 307, 61),
(308, 308, 62),
(309, 309, 63),
(310, 310, 64),
(311, 311, 65),
(312, 312, 66),
(313, 313, 67),
(314, 314, 1),
(315, 315, 2),
(316, 316, 3),
(317, 317, 4),
(318, 318, 5),
(319, 319, 6),
(320, 320, 7),
(321, 321, 8),
(322, 322, 9),
(323, 323, 10),
(324, 324, 11),
(325, 325, 12),
(326, 326, 13),
(327, 327, 14),
(328, 328, 15),
(329, 329, 16),
(330, 330, 17),
(331, 331, 18),
(332, 332, 19),
(333, 333, 20),
(334, 334, 21),
(335, 335, 22),
(336, 336, 23),
(337, 337, 24),
(338, 338, 25),
(339, 339, 26),
(340, 340, 27),
(341, 341, 28),
(342, 342, 29),
(343, 343, 30),
(344, 344, 31),
(345, 345, 32),
(346, 346, 33),
(347, 347, 34),
(348, 348, 35),
(349, 349, 36),
(350, 350, 37),
(351, 1, 4),
(352, 2, 5),
(353, 3, 6),
(354, 4, 7),
(355, 5, 8),
(356, 6, 9),
(357, 7, 10),
(358, 8, 11),
(359, 9, 12),
(360, 10, 13),
(361, 11, 14),
(362, 12, 15),
(363, 13, 16),
(364, 14, 17),
(365, 15, 18),
(366, 16, 19),
(367, 17, 20),
(368, 18, 21),
(369, 19, 22),
(370, 20, 23),
(371, 21, 24),
(372, 22, 25),
(373, 23, 26),
(374, 24, 27),
(375, 25, 28),
(376, 26, 29),
(377, 27, 30),
(378, 28, 31),
(379, 29, 32),
(380, 30, 33),
(381, 31, 34),
(382, 32, 35),
(383, 33, 36),
(384, 34, 37),
(385, 35, 38),
(386, 36, 39),
(387, 37, 40),
(388, 38, 41),
(389, 39, 42),
(390, 40, 43),
(391, 41, 44),
(392, 42, 45),
(393, 43, 46),
(394, 44, 47),
(395, 45, 48),
(396, 46, 49),
(397, 47, 50),
(398, 48, 51),
(399, 49, 52),
(400, 50, 53),
(401, 51, 54),
(402, 52, 55),
(403, 53, 56),
(404, 54, 57),
(405, 55, 58),
(406, 56, 59),
(407, 57, 60),
(408, 58, 61),
(409, 59, 62),
(410, 60, 63),
(411, 61, 64),
(412, 62, 65),
(413, 63, 66),
(414, 64, 67),
(415, 65, 68),
(416, 66, 69),
(417, 67, 70),
(418, 68, 71),
(419, 69, 72),
(420, 70, 73),
(421, 71, 74),
(422, 72, 75),
(423, 73, 76),
(424, 74, 77),
(425, 75, 78),
(426, 76, 79),
(427, 77, 80),
(428, 78, 81),
(429, 79, 82),
(430, 80, 83),
(431, 81, 1),
(432, 82, 2),
(433, 83, 3),
(434, 84, 4),
(435, 85, 5),
(436, 86, 6),
(437, 87, 7),
(438, 88, 8),
(439, 89, 9),
(440, 90, 10),
(441, 91, 11),
(442, 92, 12),
(443, 93, 13),
(444, 94, 14),
(445, 95, 15),
(446, 96, 16),
(447, 97, 17),
(448, 98, 18),
(449, 99, 19),
(450, 100, 20),
(451, 101, 21),
(452, 102, 22),
(453, 103, 23),
(454, 104, 24),
(455, 105, 25),
(456, 106, 26),
(457, 107, 27),
(458, 108, 28),
(459, 109, 29),
(460, 110, 30),
(461, 111, 31),
(462, 112, 1),
(463, 113, 2),
(464, 114, 3),
(465, 115, 4),
(466, 116, 5),
(467, 117, 6),
(468, 118, 7),
(469, 119, 8),
(470, 120, 9),
(471, 121, 10),
(472, 122, 11),
(473, 123, 12),
(474, 124, 13),
(475, 125, 14),
(476, 126, 15),
(477, 127, 16),
(478, 128, 17),
(479, 129, 18),
(480, 130, 19),
(481, 131, 20),
(482, 132, 21),
(483, 133, 22),
(484, 134, 23),
(485, 135, 24),
(486, 136, 25),
(487, 137, 26),
(488, 138, 1),
(489, 139, 2),
(490, 140, 3),
(491, 141, 4),
(492, 142, 5),
(493, 143, 6),
(494, 144, 7),
(495, 145, 8),
(496, 146, 9),
(497, 147, 10);

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
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `idDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
