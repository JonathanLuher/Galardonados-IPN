-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2023 a las 21:22:06
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galardonados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuario`
--

CREATE TABLE `datos_usuario` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `primerAp` varchar(20) DEFAULT NULL,
  `segundoAp` varchar(50) DEFAULT NULL,
  `escuela` int(11) NOT NULL,
  `galardonado` int(11) NOT NULL,
  `incapacidad` varchar(100) DEFAULT NULL,
  `invitados` int(11) DEFAULT NULL,
  `asistencia` bit(1) DEFAULT NULL,
  `auditoria` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_usuario`
--

INSERT INTO `datos_usuario` (`id`, `id_usuario`, `nombre`, `primerAp`, `segundoAp`, `escuela`, `galardonado`, `incapacidad`, `invitados`, `asistencia`, `auditoria`) VALUES
(1, 1, 'Juan', 'Lopez', 'Perez', 1, 1, NULL, NULL, NULL, '2023-01-12 16:58:51'),
(2, 2, 'Jorge', 'Perez', 'Perez', 2, 4, NULL, NULL, NULL, '2023-01-12 16:58:51'),
(3, 3, 'Pedro', 'Lopez', 'Lopez', 5, 6, NULL, NULL, NULL, '2023-01-12 16:58:51'),
(4, 4, 'Ana', 'Perez', 'Perez', 11, 3, NULL, NULL, NULL, '2023-01-12 16:58:51'),
(5, 5, 'Maria', 'Lopez', 'Perez', 7, 2, NULL, NULL, NULL, '2023-01-12 16:58:51'),
(6, 6, 'Ivan', 'Hernandez', 'Perez', 30, 7, NULL, NULL, NULL, '2023-01-12 16:58:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela_cat`
--

CREATE TABLE `escuela_cat` (
  `id_escuela` int(11) NOT NULL,
  `nombre_escuela` varchar(100) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  `tipo_escuela` int(11) DEFAULT NULL,
  `ruta_escudo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escuela_cat`
--

INSERT INTO `escuela_cat` (`id_escuela`, `nombre_escuela`, `sigla`, `tipo_escuela`, `ruta_escudo`) VALUES
(1, 'Centro de Estudios Centíficos y Tecnológicos 1 \"Gonzálo Vázquez Vela\"', 'CECyT 1', 1, 'Cecyt 1.png'),
(2, 'Centro de Estudios Centíficos y Tecnológicos 2 \"Miguel Bernard\"', 'CECyT 2', 1, 'Cecyt 2.png'),
(3, 'Centro de Estudios Centíficos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"', 'CECyT 3', 1, 'Cecyt 3.png'),
(4, 'Centro de Estudios Centíficos y Tecnológicos 4 \"Lázaro Cárdenas\"', 'CECyT 4', 1, 'Cecyt 4.png'),
(5, 'Centro de Estudios Científicos y Tecnológicos 5 “Benito Juárez”', 'CECyT 5', 1, 'Cecyt 5.png'),
(6, 'Centro de Estudios Centíficos y Tecnológicos 6 \"Miguel Othón de Mendizábal\"', 'CECyT 6', 1, 'Cecyt 6.png'),
(7, 'Centro de Estudios Centíficos y Tecnológicos 7 \"Cuauhtémoc\"', 'CECyT 7', 1, 'Cecyt 7.png'),
(8, 'Centro de Estudios Centíficos y Tecnológicos 8 \"Narciso Bassols\"', 'CECyT 8', 1, 'Cecyt 8.png'),
(9, 'Centro de Estudios Centíficos y Tecnológicos 9 \"Juan de Dios Bátiz\"', 'CECyT 9', 1, 'Cecyt 9.png'),
(10, 'Centro de Estudios Centíficos y Tecnológicos 10 \"Carlos Vallejo Márquez\"', 'CECyT 10', 1, 'Cecyt 10.png'),
(11, 'Centro de Estudios Centíficos y Tecnológicos 11 \"Wilfrido Massieu\"', 'CECyT 11', 1, 'Cecyt 11.png'),
(12, 'Centro de Estudios Centíficos y Tecnológicos 12 \"José María Morelos\"', 'CECyT 12', 1, 'Cecyt 12.png'),
(13, 'Centro de Estudios Centíficos y Tecnológicos 13 \"Ricardo Flores Magón\"', 'CECyT 13', 1, 'Cecyt 13.png'),
(14, 'Centro de Estudios Centíficos y Tecnológicos 14 \"Luis Enrique Erro\"', 'CECyT 14', 1, 'Cecyt 14.png'),
(15, 'Centro de Estudios Centíficos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"', 'CECyT 15', 1, 'Cecyt 15.png'),
(16, 'Centro de Estudios Científicos y Tecnológicos 16 “Hidalgo”', 'CECyT 16', 1, 'Cecyt 16.png'),
(17, 'Centro de Estudios Científicos y Tecnológicos 17 “León, Guanajuato”', 'CECyT 17', 1, 'Cecyt 17.png'),
(18, 'Centro de Estudios Científicos y Tecnológicos 18 “Zacatecas”', 'CECyT 18', 1, 'Cecyt 18.png'),
(19, 'Centro de Estudios Tecnológicos (CET) No. 1 “Walter Cross Buchanan”', 'CET1', 1, 'Cet.png'),
(20, 'Centro de Desarrollo de Productos Bióticos (CEPROBI)', 'CEPROBI', 2, 'CEPROBI.png'),
(21, 'Centro de Investigación en Computación (CIC)', 'CIC', 2, 'CIC.png'),
(22, 'Centro de Investigación y Desarrollo de Tecnología Digital (CITEDI)', 'CITEDI', 2, 'CITEDI.png'),
(23, 'Centro Interdisciplinario de Ciencias de la Salud, (CICS) Santo Tomás', 'CICS Santo Tomás', 2, 'CICS.png'),
(24, 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional (CIIDIR) Unidad Mich', 'CIIDIR Michoacan', 2, 'CIIDIR M.png'),
(25, 'Escuela Nacional Ciencias Biológicas (ENCB)', 'ENCB', 2, 'ENCB.png'),
(26, 'Escuela Nacional de Biblioteconomía y Archivonomía (ENBA)', 'ENBA', 2, 'ENBA.png'),
(27, 'Escuela Nacional de Medicina y Homeopatía, (ENMyH)', 'ENMyH', 2, 'ENMyH.png'),
(28, 'Escuela Superior de Comercio y Administración, (ESCA) Santo Tomás', 'ESCA Santo Tomás', 2, 'ESCA STO.png'),
(29, 'Escuela Superior de Comercio y Administración, (ESCA) Unidad Tepepan', 'ESCA Tepepan', 2, 'ESCA T.png'),
(30, 'Escuela Superior de Economía (ESE)', 'ESE', 2, 'ESE.png'),
(31, 'Escuela Superior de Enfermería y Obstetricia (ESEO)', 'ESEO', 2, 'ESEO.png'),
(32, 'Escuela Superior de Física y Matemáticas (ESFM)', 'ESFM', 2, 'ESFM.png'),
(33, 'Escuela Superior de Ingeniería Mecánica y Eléctrica (ESIME) Unidad Azcapotzalco', 'ESIME Azcapotzalco', 2, 'ESIME A.png'),
(34, 'Escuela Superior de Ingeniería Mecánica y Eléctrica (ESIME) Unidad Culhuacán', 'ESIME Culhuacan', 2, 'ESIME C.png'),
(35, 'Escuela Superior de Ingeniería Mecánica y Eléctrica (ESIME) Unidad Ticomán', 'ESIME Ticomán', 2, 'ESIME T.png'),
(36, 'Escuela Superior de Ingeniería Mecánica y Eléctrica (ESIME) Unidad Zacatenco', 'ESIME Zacatenco', 2, 'ESIME Z.png'),
(37, 'Escuela Superior de Ingeniería Química e Industrias Extractivas (ESIQIE)', 'ESIQIE', 2, 'ESIQIE.png'),
(38, 'Escuela Superior de Ingeniería y Arquitectura (ESIA) Unidad Tecamachalco', 'ESIA Tecamachalco', 2, 'ESIA.png'),
(39, 'Escuela Superior de Ingeniería y Arquitectura (ESIA) Unidad Ticomán', 'ESIA Ticomán', 2, 'ESIA TIC.png'),
(40, 'Escuela Superior de Ingeniería y Arquitectura (ESIA) Unidad Zacatenco', 'ESIA Zacatenco', 2, 'ESIA.png'),
(41, 'Unidad Profesional Interdisciplinaria de Biotecnología (UPIBI)', 'UPIBI', 2, 'UPIBI.png'),
(42, 'Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas (UPIICSA)', 'UPIICSA', 2, 'UPIICSA.png'),
(43, 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Guanajuato (UPIIG)', 'UPIIG Guanajuato', 2, 'UPIIG.png'),
(44, 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional (CIIDIR) Unidad Oaxa', 'CIIDIR Oaxaca', 2, 'CIIDIR O.png'),
(45, 'Escuela Superior de Ingeniería Textil (ESIT)', 'ESIT', 2, 'ESIT.png'),
(46, 'Escuela Superior de Cómputo (ESCOM)', 'ESCOM', 2, 'ESCOM.png'),
(47, 'Escuela Superior de Turismo (EST)', 'EST', 2, 'EST.png'),
(48, 'Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas (UPIITA)', 'UPIITA', 2, 'UPIITA.png'),
(49, 'Unidad Profesional Interdisciplinaria de Ingeniería, Campus Zacatecas (UPIIZ)', 'UPIIZ Zacatecas', 2, 'UPIIZ.png'),
(50, 'Centro de Biotecnología Genómica (CBG)', 'CBG', 2, 'CBG.png'),
(51, 'Centro de Innovación y Desarrollo Tecnológico en Cómputo (CIDETEC)', 'CIDETEC', 2, 'CIDETEC.png'),
(52, 'Centro de Investigación e Innovación Tecnológica (CIITEC)', 'CIITEC', 2, 'CIITEC.png'),
(53, 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada (CICATA), Unidad Legaria', 'CICATA Legaria', 2, 'CICATA L.png'),
(54, 'Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada (CICATA), Unidad Querétaro', 'CICATA Querétaro', 2, 'CICATA Q.png'),
(55, 'Centro de Investigaciones Económicas, Administrativas y Sociales (CIECAS)', 'CIECAS', 2, 'CIECAS.png'),
(56, 'Centro Interdisciplinario de Ciencias Marinas (CICIMAR)', 'CICIMAR', 2, 'CICIMAR.png'),
(57, 'Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional (CIIDIR) Unidad Dura', 'CIIDIR Durango', 2, 'CIIDIR D.png'),
(58, 'Centro Nacional de Cálculo', 'CNC', 2, 'CNC.png'),
(59, 'Defensoría de los Derechos Politécnicos', 'DDP', 2, ''),
(60, 'Dirección de Vinculación y Desarrollo Regional', 'DVDR', 2, ''),
(61, 'Dirección de Educación Media Superior', 'DEMS', 2, ''),
(62, 'Dirección de Formación e Innovación Educativa', 'DFIE', 2, ''),
(63, 'Dirección de Prospectiva e Inteligencia Tecnológica, Tecnópoli', 'DPITT', 2, ''),
(64, 'Secretaría de Servicios Educativos', 'SSE', 2, ''),
(65, 'ÁREA CENTRAL', 'areacentral', 3, ''),
(66, 'Coordinación de Imagen Institucional', 'CII', 3, ''),
(67, 'Coordinación Politécnica para la Sustentabilidad', 'CPS', 3, ''),
(68, 'Dirección de Capital Humano', 'DCH', 3, ''),
(69, 'Dirección de Educación Virtual', 'DEV', 3, ''),
(70, 'Secretaría de Investigación y Posgrado', 'Posgrado', 3, ''),
(71, 'Dirección de Actividades Deportivas', 'DAD', 3, ''),
(72, 'Dirección de Bibliotecas y Publicaciones', 'DBP', 3, ''),
(73, 'Dirección de Recursos Materiales e Infraestructura', 'DRMI', 3, ''),
(74, 'Dirección de Servicios Generales', 'DSG', 3, ''),
(75, 'Dirección de Cómputo y Comunicaciones', 'DCC', 3, ''),
(76, 'Secretaría General', 'SG', 3, ''),
(77, 'Secretaría Académica', 'SA', 3, ''),
(78, 'Dirección de Difusión Cultural', 'DDC', 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galardonados_cat`
--

CREATE TABLE `galardonados_cat` (
  `id_galardonado` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `detalle` varchar(1000) DEFAULT NULL,
  `ceremonia` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galardonados_cat`
--

INSERT INTO `galardonados_cat` (`id_galardonado`, `titulo`, `detalle`, `ceremonia`) VALUES
(1, 'DIPLOMAS AL MÉRITO POLITÉCNICO', 'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.\nEN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR', 'La ceremonia se llevará acabo el día 17-01-2023 a las 10:30 am en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, C'),
(2, 'DIPLOMA A LA INVESTIGACIÓNDIPLOMA A LA INVESTIGACI', 'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.\r\n', 'La ceremonia se llevará acabo el día 17-01-2023 a las 11:00 am en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, C'),
(3, 'DIPLOMA A LA CULTURA', 'El Diploma a la Cultura se otorgará a aquellos miembros de la comunidad politécnica que se hubieran distinguido como creadores y/o promotores de obra artística o literaria de calidad que destaque en eventos culturales de relevancia nacional o internacional. Para ser candidato el empleado o estudiante acumulará un mínimo de 600 puntos obtenidos de la valoración\r\n', 'La ceremonia se llevará acabo el día 17-01-2023 a las 12:00 pm en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, C'),
(4, 'PRESEA JUAN DE DIOS BÁTIZ', '\"JUAN DE DIOS BÁTIZ, DISTINGUIDO MEXICANO, NACIDO EN EL ESTADO DE SINALOA, DESARROLLÓ ACTIVIDADES DE CARÁCTER MILITAR, POLÍTICO Y EDUCATIVO, DENTRO DE LAS QUE SE DESTACA, LA DE HABER SIDO EL PRINCIPAL PROMOTOR Y UNO DE LOS FUNDADORES DEL INSTITUTO POLITÉCNICO NACIONAL.\r\nLA PRESEA “JUAN DE DIOS BÁTIZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL ACADÉMICO Y DE APOYO Y ASISTENCIA A LA EDUCACIÓN, QUE HAYA CUMPLIDO TREINTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.\"\r\n', 'La ceremonia se llevará acabo el día 17-01-2023 a las 13:00 pm en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, C'),
(5, 'PRESEA CARLOS VALLEJO MÁRQUEZ ', 'EL MOMENTO CUMBRE DE ESTÁ CEREMONIA HA LLEGADO, LA PRESEA \"CARLOS VALLEJO MÁRQUEZ\", ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL DE DOCENTE QUE HAYA CUMPLIDO CINCUENTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.\r\n', 'La ceremonia se llevará acabo el día 18-01-2023 a las 10:00 am en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, C'),
(6, 'DIPLOMAS A LA EFICIENCIA Y EFICACIA', '\"EL DIPLOMA A LA EFICIENCIA Y EFICACIA SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.\n\nPARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.\"\n', 'La ceremonia se llevará acabo el día 18-01-2023 a las 11:00 am  en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, '),
(7, 'PRESEA \"CARLOS VALLEJO MÁRQUEZ\"', 'LA PRESEA “CARLOS VALLEJO MÁRQUEZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE HAYA CUMPLIDO CINCUENTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.\r\n', 'La ceremonia se llevará acabo el día 18-01-2023 a las 12:00 pm  en el Centro Cultural Jaime Torres Bodet Av. Wilfrido Massieu s/n, Nueva Industrial Vallejo, Gustavo A. Madero, 07738 Ciudad de México, '),
(8, 'No aplica', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoescuela_cat`
--

CREATE TABLE `tipoescuela_cat` (
  `id_tipoescuela` int(11) NOT NULL,
  `nombre_tipoescuela` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoescuela_cat`
--

INSERT INTO `tipoescuela_cat` (`id_tipoescuela`, `nombre_tipoescuela`) VALUES
(1, 'NIVEL MEDIO SUPERIOR'),
(2, 'NIVEL SUPERIOR'),
(3, 'DIRECCIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_rol`, `rol`) VALUES
(1, 'admin'),
(2, 'director'),
(3, 'galardonado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `boleta` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `boleta`, `contraseña`, `tipo_usuario`) VALUES
(1, '2022001001', 'jpl1', 3),
(2, '2022013002', 'jpp2', 3),
(3, '2022026003', 'pll3', 3),
(4, '2022025004', 'app4', 3),
(5, '2022025005', 'mlp5', 2),
(6, '2022044006', 'ihp6', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_usuario`
--
ALTER TABLE `datos_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Datos_usuarios_Escuela_cat_FK` (`escuela`),
  ADD KEY `Datos_usuarios_Galardonados_cat_FK` (`galardonado`),
  ADD KEY `Datos_usuarios_Usuarios_FK` (`id_usuario`);

--
-- Indices de la tabla `escuela_cat`
--
ALTER TABLE `escuela_cat`
  ADD PRIMARY KEY (`id_escuela`),
  ADD KEY `Escuela_cat_Escuela_cat_FK` (`tipo_escuela`);

--
-- Indices de la tabla `galardonados_cat`
--
ALTER TABLE `galardonados_cat`
  ADD PRIMARY KEY (`id_galardonado`);

--
-- Indices de la tabla `tipoescuela_cat`
--
ALTER TABLE `tipoescuela_cat`
  ADD PRIMARY KEY (`id_tipoescuela`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `Usuarios_tipo_usuario_FK` (`tipo_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_usuario`
--
ALTER TABLE `datos_usuario`
  ADD CONSTRAINT `Datos_usuarios_Escuela_cat_FK` FOREIGN KEY (`escuela`) REFERENCES `escuela_cat` (`id_escuela`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Datos_usuarios_Galardonados_cat_FK` FOREIGN KEY (`galardonado`) REFERENCES `galardonados_cat` (`id_galardonado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Datos_usuarios_Usuarios_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `escuela_cat`
--
ALTER TABLE `escuela_cat`
  ADD CONSTRAINT `Escuela_cat_Escuela_cat_FK` FOREIGN KEY (`tipo_escuela`) REFERENCES `tipoescuela_cat` (`id_tipoescuela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `Usuarios_tipo_usuario_FK` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
