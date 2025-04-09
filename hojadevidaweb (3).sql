-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2024 a las 23:21:08
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hojadevidaweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `tipo_doc` enum('CC','CE','PAS') NOT NULL,
  `numero_doc` varchar(120) NOT NULL,
  `nombre` varchar(160) NOT NULL,
  `primer_apellido` varchar(160) NOT NULL,
  `segundo_apellido` varchar(160) DEFAULT 'N/A',
  `sexo` enum('Masculino','Femenino') NOT NULL,
  `esColombiano` enum('Colombiano','Extranjero') NOT NULL,
  `nacionalidad` varchar(120) NOT NULL,
  `tieneLibreta` enum('Si','No') NOT NULL,
  `numero_libreta` varchar(120) DEFAULT NULL,
  `dm` varchar(120) DEFAULT 'N/A',
  `fecha_nac` date NOT NULL,
  `pais_nac` varchar(150) NOT NULL,
  `depto_nac` varchar(150) NOT NULL,
  `municipio_nac` varchar(150) NOT NULL,
  `pais_res` varchar(150) NOT NULL,
  `depto_res` varchar(150) NOT NULL,
  `municipio_res` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datos_personales`
--

INSERT INTO `datos_personales` (`tipo_doc`, `numero_doc`, `nombre`, `primer_apellido`, `segundo_apellido`, `sexo`, `esColombiano`, `nacionalidad`, `tieneLibreta`, `numero_libreta`, `dm`, `fecha_nac`, `pais_nac`, `depto_nac`, `municipio_nac`, `pais_res`, `depto_res`, `municipio_res`, `telefono`, `correo`) VALUES
('CC', '1126584958', 'osorio', 'diego', 'andres ', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-16', 'Chile', 'La Guajira', 'Anorí', 'Chile', 'La Guajira', 'Arboletes', 'a', 'diegoandresosorio8@gmail.com'),
('CC', '12345678910', 'a', 'a', 'a', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-28', 'Ecuador', 'La Guajira', 'Arboletes', 'Colombia', 'Amazonas', 'Anzá', 'a', 'diegoandresosorio8@gmail.com'),
('CC', '123456789101', 'a', 'a', 'a', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-28', 'Ecuador', 'La Guajira', 'Arboletes', 'Colombia', 'Amazonas', 'Anzá', 'a', 'diegoandresosorio8@gmail.com'),
('CC', '123456789102', 'a', 'a', 'a', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-28', 'Ecuador', 'La Guajira', 'Arboletes', 'Colombia', 'Amazonas', 'Anzá', 'a', 'diegoandresosorio8@gmail.com'),
('CC', '1234567891021', 'a', 'a', 'a', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-28', 'Ecuador', 'La Guajira', 'Arboletes', 'Colombia', 'Amazonas', 'Anzá', 'a', 'diegoandresosorio8@gmail.com'),
('CC', '1234567891022', 'a', 'a', 'a', 'Femenino', 'Colombiano', 'Peru', 'No', NULL, '', '2024-11-28', 'Ecuador', 'La Guajira', 'Arboletes', 'Colombia', 'Amazonas', 'Anzá', 'a', 'diegoandresosorio8@gmail.com'),
('CE', '13242324', 'c', 'a', 'b', 'Masculino', 'Colombiano', 'Peru', 'No', NULL, '', '2022-12-31', 'Peru', 'Amazonas', 'Andes', 'Peru', 'Amazonas', 'Leticia', '1', 'd@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion_basica`
--

CREATE TABLE `educacion_basica` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `grado_basico` int DEFAULT '0',
  `titulo_obtenido` varchar(320) DEFAULT 'N/A',
  `mes_grado` varchar(25) DEFAULT 'N/A',
  `anio_grado` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `educacion_basica`
--

INSERT INTO `educacion_basica` (`id`, `numero_doc`, `grado_basico`, `titulo_obtenido`, `mes_grado`, `anio_grado`) VALUES
(1, '13242324', 9, 'a', 'Septiembre', 21),
(3, '1126584958', 11, 'tonto', 'Enero', 2),
(4, '12345678910', 11, 'q', 'Febrero', 20),
(5, '123456789101', 11, 'q', 'Febrero', 20),
(6, '123456789102', 11, 'q', 'Febrero', 20),
(7, '1234567891022', 11, 'q', 'Febrero', 20),
(8, '1234567891021', 11, 'q', 'Febrero', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion_superior`
--

CREATE TABLE `educacion_superior` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `modalidad` enum('N/A','Tecnico','Tecnologico','Universitario','Especializacion','Maestria','Doctorado') DEFAULT 'N/A',
  `semestres` int DEFAULT '0',
  `esGraduado` enum('N/A','Si','No') DEFAULT 'N/A',
  `nombre_titulo` varchar(350) DEFAULT 'N/A',
  `mes_grado` varchar(25) DEFAULT 'N/A',
  `anio_grado` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `educacion_superior`
--

INSERT INTO `educacion_superior` (`id`, `numero_doc`, `modalidad`, `semestres`, `esGraduado`, `nombre_titulo`, `mes_grado`, `anio_grado`) VALUES
(1, '13242324', 'Tecnico', 1, 'Si', 'a', 'Enero', 202),
(2, '13242324', 'Tecnico', 1, 'Si', 'b', 'Enero', 2),
(4, '1126584958', 'Tecnico', 1, 'Si', 'aa', 'Enero', 2024),
(5, '12345678910', 'Tecnologico', 11, 'Si', 'a', 'Noviembre', 2),
(6, '123456789101', 'Tecnologico', 11, 'Si', 'a', 'Noviembre', 2),
(7, '123456789102', 'Tecnologico', 11, 'Si', 'a', 'Noviembre', 2),
(8, '1234567891022', 'Tecnologico', 11, 'Si', 'a', 'Noviembre', 2),
(9, '1234567891021', 'Tecnologico', 11, 'Si', 'a', 'Noviembre', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleo_actual`
--

CREATE TABLE `empleo_actual` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `empresa` varchar(350) DEFAULT 'N/A',
  `caracter` enum('N/A','Publica','Privada') DEFAULT 'N/A',
  `pais` varchar(170) DEFAULT 'N/A',
  `departamento` varchar(170) DEFAULT 'N/A',
  `municipio` varchar(170) DEFAULT 'N/A',
  `correo_entidad` varchar(170) DEFAULT 'N/A',
  `telefono_entidad` varchar(40) DEFAULT 'N/A',
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `cargo` varchar(170) DEFAULT 'N/A',
  `dependencia` varchar(170) DEFAULT 'N/A',
  `direccion` varchar(350) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleo_actual`
--

INSERT INTO `empleo_actual` (`id`, `numero_doc`, `empresa`, `caracter`, `pais`, `departamento`, `municipio`, `correo_entidad`, `telefono_entidad`, `fecha_ingreso`, `fecha_retiro`, `cargo`, `dependencia`, `direccion`) VALUES
(1, '13242324', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', '1', '2025-12-31', '2026-12-31', 'a', 'pan', 'a'),
(3, '1126584958', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Andes', 'a', 'a', '2024-10-30', '2024-11-20', 'a', 'a', 'a'),
(4, '12345678910', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-11-21', '2024-11-27', 'a', 'a', 'a'),
(5, '123456789101', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-11-21', '2024-11-27', 'a', 'a', 'a'),
(6, '123456789102', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-11-21', '2024-11-27', 'a', 'a', 'a'),
(7, '1234567891022', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-11-21', '2024-11-27', 'a', 'a', 'a'),
(8, '1234567891021', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-11-21', '2024-11-27', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleo_anterior`
--

CREATE TABLE `empleo_anterior` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `empresa` varchar(350) DEFAULT 'N/A',
  `caracter` enum('N/A','Publica','Privada') DEFAULT 'N/A',
  `pais` varchar(170) DEFAULT 'N/A',
  `departamento` varchar(170) DEFAULT 'N/A',
  `municipio` varchar(170) DEFAULT 'N/A',
  `correo_entidad` varchar(170) DEFAULT 'N/A',
  `telefono_entidad` varchar(40) DEFAULT 'N/A',
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `cargo` varchar(170) DEFAULT 'N/A',
  `dependencia` varchar(170) DEFAULT 'N/A',
  `direccion` varchar(350) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleo_anterior`
--

INSERT INTO `empleo_anterior` (`id`, `numero_doc`, `empresa`, `caracter`, `pais`, `departamento`, `municipio`, `correo_entidad`, `telefono_entidad`, `fecha_ingreso`, `fecha_retiro`, `cargo`, `dependencia`, `direccion`) VALUES
(2, '1126584958', 'b', 'Publica', 'South Georgia', 'Bolívar', 'Barbosa', 'a', 'b', '2024-10-30', '2024-11-16', 'b', 'b', 'b'),
(3, '12345678910', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-12-31', '2025-12-31', 'a', 'a', 'a'),
(4, '123456789101', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-12-31', '2025-12-31', 'a', 'a', 'a'),
(5, '123456789102', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-12-31', '2025-12-31', 'a', 'a', 'a'),
(6, '1234567891022', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-12-31', '2025-12-31', 'a', 'a', 'a'),
(7, '1234567891021', 'a', 'Publica', 'South Georgia', 'Amazonas', 'Leticia', 'a', 'a', '2024-12-31', '2025-12-31', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `habla` enum('N/A','Regular','Bien','Muy_bien') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N/A',
  `lee` enum('N/A','Regular','Bien','Muy_bien') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N/A',
  `escribe` enum('N/A','Regular','Bien','Muy_bien') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `numero_doc`, `idioma`, `habla`, `lee`, `escribe`) VALUES
(1, '13242324', 'español', 'Muy_bien', 'Muy_bien', 'Muy_bien'),
(3, '1126584958', 'español', 'Muy_bien', 'Regular', 'Regular'),
(4, '12345678910', 'a', 'Bien', 'Muy_bien', 'Regular'),
(5, '123456789101', 'a', 'Bien', 'Muy_bien', 'Regular'),
(6, '123456789102', 'a', 'Bien', 'Muy_bien', 'Regular'),
(7, '1234567891022', 'a', 'Bien', 'Muy_bien', 'Regular'),
(8, '1234567891021', 'a', 'Bien', 'Muy_bien', 'Regular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_total`
--

CREATE TABLE `tiempo_total` (
  `id` int NOT NULL,
  `numero_doc` varchar(120) DEFAULT NULL,
  `publico_anios` int DEFAULT '0',
  `publico_meses` int DEFAULT '0',
  `privado_anios` int DEFAULT '0',
  `privado_meses` int DEFAULT '0',
  `independiente_anios` int DEFAULT '0',
  `independiente_meses` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tiempo_total`
--

INSERT INTO `tiempo_total` (`id`, `numero_doc`, `publico_anios`, `publico_meses`, `privado_anios`, `privado_meses`, `independiente_anios`, `independiente_meses`) VALUES
(2, '1126584958', 2, 2, 2, 2, 2, 2),
(3, '12345678910', 2, 2, 2, 2, 2, 2),
(4, '123456789101', 2, 2, 2, 2, 2, 2),
(5, '123456789102', 2, 2, 2, 2, 2, 2),
(6, '1234567891022', 2, 2, 2, 2, 2, 2),
(7, '1234567891021', 2, 2, 2, 2, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`numero_doc`);

--
-- Indices de la tabla `educacion_basica`
--
ALTER TABLE `educacion_basica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_basica` (`numero_doc`);

--
-- Indices de la tabla `educacion_superior`
--
ALTER TABLE `educacion_superior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_superior` (`numero_doc`);

--
-- Indices de la tabla `empleo_actual`
--
ALTER TABLE `empleo_actual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_empleo` (`numero_doc`);

--
-- Indices de la tabla `empleo_anterior`
--
ALTER TABLE `empleo_anterior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_anterior` (`numero_doc`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_idioma` (`numero_doc`);

--
-- Indices de la tabla `tiempo_total`
--
ALTER TABLE `tiempo_total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numero_doc_total` (`numero_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educacion_basica`
--
ALTER TABLE `educacion_basica`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `educacion_superior`
--
ALTER TABLE `educacion_superior`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleo_actual`
--
ALTER TABLE `empleo_actual`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleo_anterior`
--
ALTER TABLE `empleo_anterior`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tiempo_total`
--
ALTER TABLE `tiempo_total`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion_basica`
--
ALTER TABLE `educacion_basica`
  ADD CONSTRAINT `fk_numero_doc_basica` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);

--
-- Filtros para la tabla `educacion_superior`
--
ALTER TABLE `educacion_superior`
  ADD CONSTRAINT `fk_numero_doc_superior` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);

--
-- Filtros para la tabla `empleo_actual`
--
ALTER TABLE `empleo_actual`
  ADD CONSTRAINT `fk_numero_doc_empleo` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);

--
-- Filtros para la tabla `empleo_anterior`
--
ALTER TABLE `empleo_anterior`
  ADD CONSTRAINT `fk_numero_doc_anterior` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);

--
-- Filtros para la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD CONSTRAINT `fk_numero_doc_idioma` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);

--
-- Filtros para la tabla `tiempo_total`
--
ALTER TABLE `tiempo_total`
  ADD CONSTRAINT `fk_numero_doc_total` FOREIGN KEY (`numero_doc`) REFERENCES `datos_personales` (`numero_doc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
