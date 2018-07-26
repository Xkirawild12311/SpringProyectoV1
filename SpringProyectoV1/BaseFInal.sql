-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2018 a las 02:26:01
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `springbdf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` char(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(10) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fecNacimiento` date NOT NULL,
  `estado` enum('activo','inactivo') NOT NULL,
  `Padre_idPadre1` char(10) NOT NULL,
  `nivel_idNivel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombre`, `apellido`, `dni`, `sexo`, `fecNacimiento`, `estado`, `Padre_idPadre1`, `nivel_idNivel`) VALUES
('Al001', 'José ', '70895192', 70895192, 'Masculino', '2017-12-11', 'activo', 'Pa022', '1_Grado'),
('Al002', 'Samuel', '78373839', 28373839, 'Masculino', '2017-11-15', 'activo', 'Pa001', '1_Grado'),
('Al003', 'Alexis', '74695812', 14695812, 'Masculino', '2016-07-07', 'activo', 'Pa002', '1_Grado'),
('Al004', 'Juan Junior', 'Pacheco Pinday', 78542145, 'Masculino', '2008-07-10', 'activo', 'Pa003', '1_Grado'),
('Al005', 'Jean', 'Vega', 85962114, 'Masculino', '2018-07-19', 'activo', 'Pa002', '1_Grado'),
('Al006', 'Melany', 'Vargas Palomino', 74695812, 'Femenino', '2018-06-29', 'activo', 'Pa006', '2_Grado'),
('Al007', 'Pili', 'Auris Lujan', 78512365, 'Femenino', '2018-07-05', 'activo', 'Pa005', '2_Grado'),
('Al009', 'Junior', 'Inga', 7421588, 'Masculino', '2012-07-12', 'activo', 'Pa008', '3_Grado'),
('Al010', 'Bryan', 'Vegueta Goku', 742145652, 'Masculino', '2003-07-17', 'activo', 'Pa009', '4_Grado'),
('Al011', 'Mayra', 'Aguado López', 74256312, 'Femenino', '2008-07-15', 'activo', 'Pa005', '4_Grado'),
('Al012', 'JUAN DIEGO', 'ABOLLANEDA MASCA', 75573599, 'Masculino', '2004-07-08', 'activo', 'Pa005', '4_Grado'),
('Al013', 'RIQUE ELVIS', 'ACEVEDO CAMPO', 76982855, 'Masculino', '2117-07-09', 'activo', 'Pa003', '4_Grado'),
('Al014', 'ELVER', 'AGUIRRE RUMI', 74604005, 'Masculino', '2010-07-01', 'activo', 'Pa007', '4_Grado'),
('Al015', 'LUIS', 'ALMIRON CCASANI', 71805309, 'Masculino', '2006-07-13', 'activo', 'Pa005', '4_Grado'),
('Al016', 'DOROTI MAEBA', 'ALVA RIOS', 74309133, 'Femenino', '2008-07-22', 'activo', 'Pa006', '4_Grado'),
('Al017', 'MISHELL ANGIE', 'ALVARO ROJAS', 73607856, 'Femenino', '2010-07-14', 'activo', 'Pa002', '4_Grado'),
('Al018', 'VICTOR ANTONIO', 'CALDERON CUDEÑA', 78452355, 'Masculino', '2001-07-05', 'activo', 'Pa007', '5_Grado'),
('Al019', 'BEETHOVEN JULIAN', 'CALIXTO DE LA CRUZ', 78545558, 'Masculino', '2001-07-11', 'activo', 'Pa008', '5_Grado'),
('Al020', 'ERICK', 'CANDIA VALENZUELA', 78524555, 'Masculino', '2003-07-11', 'activo', 'Pa009', '5_Grado'),
('Al021', 'LUZ CLARA', 'CAPCHA LEIVA', 78452562, 'Femenino', '2000-09-14', 'activo', 'Pa010', '5_Grado'),
('Al022', 'CRUCEÑA', 'CARRANZA CRUZ', 78562144, 'Femenino', '1999-01-12', 'activo', 'Pa011', '5_Grado'),
('Al023', 'LISETH YUNELLY', 'CARRANZA FERNANDEZ', 78812231, 'Femenino', '1994-07-20', 'activo', 'Pa012', '5_Grado'),
('Al024', 'JHONATAN', 'CASAS QUINTO', 78542121, 'Masculino', '1999-12-17', 'activo', 'Pa014', '5_Grado'),
('Al025', 'RUBEN DARIO', 'CASTILLO BUENDIA', 74543690, 'Masculino', '1999-09-28', 'activo', 'Pa015', '5_Grado'),
('Al026', 'SADY EVELIN', 'CASTILLO VILLANUEVA', 73814085, 'Femenino', '1999-07-07', 'activo', 'Pa017', '3_Grado'),
('Al027', 'ALEXANDER RAUL', 'CASTRO RIVERA', 70323054, 'Masculino', '1998-03-07', 'activo', 'Pa018', '3_Grado'),
('Al028', 'ALEXANDER', 'CCAMA CUTIPA ', 74041219, 'Masculino', '2001-03-05', 'activo', 'Pa019', '3_Grado'),
('Al029', 'LUZ DANIA', 'CCONCHO CONDORI', 75429430, 'Femenino', '2000-07-13', 'activo', 'Pa020', '3_Grado'),
('Al030', 'KATHY BELINDA', 'CCOPE JAUCHA', 73654762, 'Femenino', '1994-07-06', 'activo', 'Pa011', '3_Grado'),
('Al031', 'JHEN JHONATAN', 'CENTURION COTRINA', 71098823, 'Masculino', '2001-04-11', 'activo', 'Pa018', '2_Grado'),
('Al032', 'PABLO BENITO', 'CERDA VAEZ', 76000651, 'Masculino', '1997-10-09', 'activo', 'Pa013', '2_Grado'),
('Al033', 'KLEVER YEMEN', 'CHANCASANAMPA RAMOS', 70971915, 'Masculino', '2002-09-18', 'activo', 'Pa011', '2_Grado'),
('Al034', 'PIERO PAUL', 'CHAUPIS ALTEZ', 74914890, 'Masculino', '2005-05-11', 'activo', 'Pa008', '2_Grado'),
('Al035', 'BRYAN ALEXIS', 'CHUMPITAZ MECHAN', 72573326, 'Masculino', '2000-08-16', 'activo', 'Pa012', '1_Grado'),
('Al036', 'ESMILDA', 'CHUQUIMANGO COTRINA', 71599842, 'Femenino', '2001-07-10', 'activo', 'Pa006', '2_Grado'),
('Al037', 'WILMA', 'CURI CHAVEZ', 71881770, 'Femenino', '2010-07-13', 'activo', 'Pa016', '1_Grado'),
('Al038', 'JOHNY DELMER', 'CURO CONDOR', 47495926, 'Masculino', '2010-07-09', 'activo', 'Pa004', '1_Grado'),
('Al039', 'Samuel', 'Ventura ', 70513513, 'Masculino', '1995-07-11', 'activo', 'Pa021', '3_Grado'),
('Al040', 'Tony', 'ID', 70897129, 'Masculino', '2018-07-05', 'activo', 'Pa009', '4_Grado'),
('Al041', 'Emel', 'Prado', 70897129, 'Masculino', '2018-07-05', 'activo', 'Pa017', '5_Grado'),
('Al042', 'José', 'Prado ', 70895192, 'Masculino', '1998-05-20', 'activo', 'Pa012', '1_Grado'),
('Al043', 'Brya ', 'Prado Gomez', 70895124, 'Masculino', '1994-08-09', 'activo', 'Pa021', '5_Grado'),
('Al044', 'Byran ', 'Prado ', 70895192, 'Masculino', '1994-08-09', 'activo', 'Pa001', '1_Grado'),
('Al045', 'Juan', 'Clemer ', 70895125, 'Masculino', '1990-05-02', 'activo', 'Pa001', '1_Grado'),
('Al046', 'Juan', 'Pacheco', 70895192, 'Masculino', '1992-06-10', 'activo', 'Pa004', '4_Grado'),
('Al047', 'ROBERT', 'QUICHUA EVANAN', 28289797, 'Masculino', '2018-07-25', 'activo', 'Pa001', '1_Grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_nivel`
--

CREATE TABLE `alumno_nivel` (
  `alumno_id` char(10) NOT NULL,
  `nivel_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_nivel`
--

INSERT INTO `alumno_nivel` (`alumno_id`, `nivel_id`) VALUES
('Al002', '1_Grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `idAsistencia` int(11) NOT NULL,
  `fechAsistencia` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `alumno_idAlumno` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`idAsistencia`, `fechAsistencia`, `estado`, `alumno_idAlumno`) VALUES
(2, '2018-07-16', 1, 'Al001'),
(3, '2018-07-17', 0, 'Al001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `idNotas` char(10) NOT NULL,
  `fecha` date NOT NULL,
  `nota` int(5) NOT NULL,
  `comentario` varchar(45) NOT NULL,
  `curso_idCurso` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` char(5) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idCargo`, `descripcion`) VALUES
('Admin', ''),
('Auxil', ''),
('Profe', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idCurso` char(10) NOT NULL,
  `asignatura` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idCurso`, `asignatura`) VALUES
('', ''),
('Ciencias', 'Ciencia y Ambiente'),
('Comunicaci', 'Comunicación'),
('Historia', 'Historia'),
('Matematica', 'Matematicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `idMatricula` char(10) NOT NULL,
  `fecMatricula` date NOT NULL,
  `Padre_idPadre` char(10) NOT NULL,
  `alumno_idAlumno` char(10) NOT NULL,
  `nivel_idNivel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`idMatricula`, `fecMatricula`, `Padre_idPadre`, `alumno_idAlumno`, `nivel_idNivel`) VALUES
('Mat001', '2018-07-10', 'Pa001', 'Al001', '1_Grado'),
('Mat002', '2018-07-10', 'Pa001', 'Al002', '1_Grado'),
('Mat003', '2018-01-16', 'Pa003', 'Al004', '1_Grado'),
('Mat004', '2018-07-15', 'Pa002', 'Al003', '1_Grado'),
('Mat0045', '2018-07-10', 'ewq', 'qwe', 'wqe'),
('Mat005', '2018-07-18', 'Pa004', 'Al005', '1_Grado'),
('Mat006', '2018-07-18', 'Pa005', 'Al006', '2_Grado'),
('Mat007', '2018-07-18', 'Pa006', 'Al007', '2_Grado'),
('Mat008', '2018-07-18', 'Pa007', 'Al009', '3_Grado'),
('Mat009', '2018-07-18', 'Pa008', 'Al010', '4_Grado'),
('Mat010', '2018-07-18', 'Pa009', 'Al011', '4_Grado'),
('Mat011', '2018-07-07', 'Pa010', 'Al012', '4_Grado'),
('Mat012', '2018-07-18', 'Pa011', 'Al013', '4_Grado'),
('Mat013', '2018-07-18', 'Pa010', 'Al014', '4_Grado'),
('Mat014', '2018-07-17', 'Pa011', 'Al015', '4_Grado'),
('Mat015', '2018-07-17', 'Pa012', 'Al016', '4_Grado'),
('Mat016', '2018-07-05', 'Pa012', 'Al017', '4_Grado'),
('Mat017', '2018-07-18', 'Pa007', 'Al018', '5_Grado'),
('Mat018', '2018-07-18', 'Pa008', 'Al019', '5_Grado'),
('Mat019', '2018-07-07', 'Pa009', 'Al020', '5_Grado'),
('Mat020', '2018-07-18', 'Pa010', 'Al021', '5_Grado'),
('Mat021', '2018-07-17', 'Pa011', 'Al022', '5_Grado'),
('Mat026', '2018-07-18', 'Pa018', 'Al027', '3_Grado'),
('Mat027', '2018-07-18', 'Pa019', 'Al028', '4_Grado'),
('Mat028', '2018-07-18', 'Pa020', 'Al029', '4_Grado'),
('Mat030', '2018-07-05', 'Pa018', 'Al031', '4_Grado'),
('Mat031', '2018-07-18', 'Pa012', 'Al023', '5_Grado'),
('Mat032', '2018-07-18', 'Pa015', 'Al025', '5_Grado'),
('Mat033', '2018-07-07', 'Pa014', 'Al024', '5_Grado'),
('Mat034', '2018-07-17', 'Pa017', 'Al026', '5_Grado'),
('Mat035', '2018-07-18', 'Pa013', 'Al032', '2_Grado'),
('Mat036', '2018-07-18', 'Pa011', 'Al033', '2_Grado'),
('Mat037', '2018-07-18', 'Pa008', 'Al034', '2_Grado'),
('Mat038', '2018-07-18', 'Pa012', 'Al035', '1_Grado'),
('Mat039', '2018-07-18', 'Pa016', 'Al037', '1_Grado'),
('Mat040', '2018-07-05', 'Pa002', 'Al039', '5_Grado'),
('Mat041', '2018-07-05', 'Pa005', 'Al041', '5_Grado'),
('Mat042', '2018-06-28', 'Pa002', 'Al040', '4_Grado'),
('Mat043', '2018-07-05', 'Pa009', 'Al041', '4_Grado'),
('Mat044', '2018-07-19', 'Pa001', 'Al044', '1_Grado'),
('Mat045', '2018-07-18', 'Pa001', 'Al045', '1_Grado'),
('Mat046', '2018-07-19', 'Pa004', 'Al046', '4_Grado'),
('Mat047', '2018-07-18', 'Pa001', 'Al047', '1_Grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `idNivel` char(10) NOT NULL,
  `seccion` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`idNivel`, `seccion`) VALUES
('1_Grado', 'A'),
('2_Grado', 'A'),
('3_Grado', ''),
('4_Grado', ''),
('5_Grado', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_curso`
--

CREATE TABLE `nivel_curso` (
  `nivel_id` char(10) NOT NULL,
  `curso_id` char(10) NOT NULL,
  `personal_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivel_curso`
--

INSERT INTO `nivel_curso` (`nivel_id`, `curso_id`, `personal_id`) VALUES
('1_Grado', 'Comunicaci', 'Pr001'),
('1_Grado', 'Matematica', 'Pr001'),
('1_Grado', 'Matematica', 'Pr003'),
('2_Grado', 'Ciencias', 'Pr002'),
('2_Grado', 'Matematica', 'Pr008'),
('4_Grado', 'Historia', 'Pr004'),
('4_Grado', 'Matematica', 'Pr007');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre`
--

CREATE TABLE `padre` (
  `idPadre` char(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(10) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fecNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `padre`
--

INSERT INTO `padre` (`idPadre`, `nombre`, `apellido`, `dni`, `sexo`, `correo`, `password`, `fecNacimiento`) VALUES
('Pa001', 'Alfredo', 'Prado', 28289797, 'Masculino', 'pradini100@hotmail.com', 'larp1', '2017-11-08'),
('Pa002', 'Luis', 'Yace Martinez', 74214596, 'Masculino', 'Yace@hotmail.com', 'yacemMartinez', '2018-07-04'),
('Pa003', 'Juan', 'Pacheco Valdez', 28687265, 'Masculino', 'Juan@hotmail.com', 'cindy', '2018-02-15'),
('Pa004', 'Emel', 'Celedonio ', 74249651, 'Masculino', 'Celedonio@hotmail.com', 'mariyuri', '2018-07-12'),
('Pa005', 'José', 'Prado', 20589625, 'Masculino', 'prado_10m@hotmail.com', 'Notneien', '2018-07-03'),
('Pa006', 'Cali', 'Nunta Rengifo', 74142635, 'Femenino', 'Cali@hotmail.com', 'CaliTONY', '2018-07-12'),
('Pa007', 'Alex', 'Irigoin', 74213685, 'Masculino', 'Irigoin@hotmail.com', 'Estrella', '2018-07-05'),
('Pa008', 'Carlos', 'Inga con P', 74215369, 'Masculino', 'Inga@hotmail.com', 'Verdecia', '1988-07-15'),
('Pa009', 'Carlos', 'Inuma', 7485144, 'Masculino', 'Inuma@hotmail.com', 'Inuma', '2010-07-15'),
('Pa010', 'FERNANDO ABEL', 'ANCAJIMA ANCAJIMA', 71155641, 'Masculino', 'ANCAJIMA@hotmail.com', 'ANCAJIMA', '1972-05-08'),
('Pa011', 'AGUSTIN SOSIMO', 'ANCCO CASTILLO', 75642358, 'Masculino', 'ANCCO@hotmail.com', 'AGUSTIN', '1988-08-07'),
('Pa012', 'ROSSMERI', 'ATIQUIPA CHICLLA', 75664284, 'Femenino', 'ATIQUIPA@hotmail.com', 'ATIQUIPA', '1995-07-15'),
('Pa013', 'YOHHAN MANUEL ALEXIS', 'AURIS BELLIDO', 87564675, 'Masculino', 'AURIS@hotmail.com', 'AURIS', '1998-07-27'),
('Pa014', 'MARY YURI', 'BASILIO FLORES', 76985641, 'Femenino', 'BASILIO@hotmail.com', 'BASILIO', '2000-05-21'),
('Pa015', 'EVELIN ROSARIO', 'BELLIDO VELIZ', 89756758, 'Femenino', 'BELLIDO@hotmail.com', 'BELLIDO', '1996-07-10'),
('Pa016', 'JORGE', 'BERNARDO TRUJILLO', 76852854, 'Masculino', 'BERNARDO@hotmail.com', 'BERNARDO', '1999-02-03'),
('Pa017', 'MAYRA ALEJANDRA', 'BRAVO ALARCON', 79416855, 'Femenino', 'BRAVO@hotmail.com', 'BRAVO', '1997-07-06'),
('Pa018', 'DELMAN', 'BUSTINZA PORTILLO', 79556545, 'Masculino', 'BUSTINZA@hotmail.com', 'BUSTINZA', '1996-07-12'),
('Pa019', 'RODNAL', 'CABELLO YACOLCA', 79865545, 'Masculino', 'RODNAL@hotmail.com', 'RODNAL', '2002-07-19'),
('Pa020', 'SOFIA JOSELIN', 'CAJAHUAMAN de prado', 76556545, 'Femenino', 'CAJAHUAMAN@hotmail.com', 'CAJAHUAMAN', '2000-07-13'),
('Pa021', 'Alexis ', 'Auris Bellido', 70895192, 'Masculino', 'Alexis@hotmail.com', 'larp1', '1985-06-25'),
('Pa022', 'Clemer', 'Pacheco', 70895175, 'Masculino', 'Pacheco@hotmail.com', 'Pacheco', '1987-05-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre_nivel`
--

CREATE TABLE `padre_nivel` (
  `Padre_idPadre` char(10) NOT NULL,
  `nivel_idNivel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `padre_nivel`
--

INSERT INTO `padre_nivel` (`Padre_idPadre`, `nivel_idNivel`) VALUES
('Pa001', '1_Grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idPersonal` char(10) NOT NULL,
  `cargoId` char(5) DEFAULT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(10) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fecNacimiento` date NOT NULL,
  `comentarios` varchar(45) NOT NULL,
  `estado` enum('activo','ausente','inactivo') NOT NULL,
  `enabled` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `cargoId`, `nombre`, `apellido`, `dni`, `sexo`, `correo`, `password`, `fecNacimiento`, `comentarios`, `estado`, `enabled`) VALUES
('Ad001', 'Admin', 'José ', 'Prado ', 70895715, 'Masculino', 'prado_20m@hotmail.com', '$2a$10$vDkP4qAYle1H9M2aCuE5J.S5ZI7Ze9/UZA.6W6TszDQXWGzGEre/W', '2018-07-16', 'Ninguno', 'activo', 1),
('Ad002', 'Admin', 'Alexis', 'Auris Bellido', 70895147, 'Masculino', 'Auris@hotmail.com', '$2a$10$IUAxyt5hiJusG/IMEbWd6.aAXa5/CBef/8jT8uIZe5r505QhErP36', '2018-07-09', 'Ninguno', 'activo', 1),
('Au002', 'Auxil', 'Alexis', 'Auris Bellido', 74695812, 'Masculino', 'Vega@hotmail.com', 'Bellido', '2018-07-26', 'sds', 'activo', 1),
('Au003', 'Auxil', 'Carlos', 'Inga', 36254984, 'Masculino', 'Inga@hotmail.com', 'CarlosInga', '2018-07-03', 'Ninguno', 'inactivo', 0),
('Au004', 'Auxil', 'Juan', 'Vega', 70897129, 'Masculino', 'mendoz@hotmail.com', 'VegaJuan', '2015-07-08', 'Ninguno', 'activo', 0),
('Au006', 'Auxil', 'Luis', 'Yace Martinez', 74214569, 'Masculino', 'Luis@hotmail.com', 'axuliar06', '2018-07-05', 'Ninguno', 'activo', 0),
('Au007', 'Auxil', 'JUAN CARLOS', 'CONDORI CAMPOS', 75562036, 'Masculino', 'CONDORI@hotmail.com', 'campos', '1993-05-15', 'Ninguno', 'activo', 0),
('Pr001', 'Profe', 'Cámel', 'Prado', 70895173, 'Masculino', 'camelito100@hotmail.com', 'susy', '2005-10-19', 'Ninguno', 'activo', 0),
('Pr002', 'Profe', 'Estrella', 'Huayta Garcia', 74528556, 'Femenino', 'cambio@gmail.com', 'Ruben', '2018-07-19', 'se dice que ella ya tiene dueño', 'activo', 0),
('Pr003', 'Profe', 'Alfredo', 'Prado', 28289797, 'Masculino', 'pradini2100@hotmail.com', 'contraseñahoy', '1983-06-14', 'Ninguno', 'ausente', 0),
('Pr004', 'Profe', 'Emel', 'Celedonio', 1313131313, 'Masculino', 'Celedonio@hotmail.com', 'Mariyuri', '2018-07-12', 'Ninguno', 'activo', 0),
('Pr005', 'Profe', 'Tony', 'Inuma', 75413244, 'Masculino', 'Inuma@hotmail.com', 'CaliNuntaRengifo', '2018-07-11', 'Ninguno', 'activo', 0),
('Pr006', 'Profe', 'Noelia', 'Vargas Mendoza', 75146352, 'Femenino', 'Noelia@hotmail.com', 'Vargas', '2005-07-07', 'Ninguno', 'activo', 0),
('Pr007', 'Profe', 'Carlos', 'Gutierrez', 74142562, 'Masculino', 'Gutierrez@hotmail.com', 'Gutierrez', '1990-06-13', 'Ninguno', 'activo', 0),
('Pr008', 'Profe', 'Alfredo', 'Celedonio', 78542145, 'Masculino', 'Vega@hotmail.com', '12345', '2018-07-19', 'NINGUNO', 'activo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_curso`
--

CREATE TABLE `personal_curso` (
  `personal_id` char(10) NOT NULL,
  `curso_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal_curso`
--

INSERT INTO `personal_curso` (`personal_id`, `curso_id`) VALUES
('Pr001', 'Comunicaci');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_nivel`
--

CREATE TABLE `personal_nivel` (
  `personal_id` char(10) NOT NULL,
  `nivel_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal_nivel`
--

INSERT INTO `personal_nivel` (`personal_id`, `nivel_id`) VALUES
('Pr001', '1_Grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Administrador del Sistema'),
(2, 'Empleado', 'empleado del sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_personal`
--

CREATE TABLE `rol_personal` (
  `id` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_personal` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol_personal`
--

INSERT INTO `rol_personal` (`id`, `id_rol`, `id_personal`) VALUES
(1, 1, 'Ad001'),
(2, 2, 'Ad001'),
(4, 2, 'Ad002');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`,`nivel_idNivel`),
  ADD UNIQUE KEY `id_UNIQUE` (`idAlumno`),
  ADD KEY `fk_alumno_Padre1_idx` (`Padre_idPadre1`),
  ADD KEY `fk_alumno_nivel1_idx` (`nivel_idNivel`);

--
-- Indices de la tabla `alumno_nivel`
--
ALTER TABLE `alumno_nivel`
  ADD PRIMARY KEY (`alumno_id`,`nivel_id`),
  ADD KEY `fk_alumno_has_nivel_nivel2_idx` (`nivel_id`),
  ADD KEY `fk_alumno_has_nivel_alumno1_idx` (`alumno_id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idAsistencia`,`alumno_idAlumno`),
  ADD KEY `fk_asistencia_alumno1_idx` (`alumno_idAlumno`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`idNotas`,`curso_idCurso`),
  ADD KEY `fk_calificacion_curso1_idx` (`curso_idCurso`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `idCurso_UNIQUE` (`idCurso`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idMatricula`),
  ADD KEY `fk_matricula_nivel1_idx` (`nivel_idNivel`),
  ADD KEY `fk_matricula_Padre1_idx` (`Padre_idPadre`),
  ADD KEY `fk_matricula_alumno1_idx` (`alumno_idAlumno`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`idNivel`);

--
-- Indices de la tabla `nivel_curso`
--
ALTER TABLE `nivel_curso`
  ADD PRIMARY KEY (`nivel_id`,`curso_id`,`personal_id`),
  ADD KEY `fk_nivel_has_curso_curso2_idx` (`curso_id`),
  ADD KEY `fk_nivel_has_curso_nivel2_idx` (`nivel_id`),
  ADD KEY `fk_nivel_curso_personal1_idx` (`personal_id`);

--
-- Indices de la tabla `padre`
--
ALTER TABLE `padre`
  ADD PRIMARY KEY (`idPadre`);

--
-- Indices de la tabla `padre_nivel`
--
ALTER TABLE `padre_nivel`
  ADD PRIMARY KEY (`Padre_idPadre`,`nivel_idNivel`),
  ADD KEY `fk_Padre_has_nivel_nivel1_idx` (`nivel_idNivel`),
  ADD KEY `fk_Padre_has_nivel_Padre1_idx` (`Padre_idPadre`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idPersonal`),
  ADD KEY `fk_personal_cargo1_idx` (`cargoId`);

--
-- Indices de la tabla `personal_curso`
--
ALTER TABLE `personal_curso`
  ADD PRIMARY KEY (`personal_id`,`curso_id`),
  ADD KEY `fk_personal_has_curso_curso2_idx` (`curso_id`),
  ADD KEY `fk_personal_has_curso_personal2_idx` (`personal_id`);

--
-- Indices de la tabla `personal_nivel`
--
ALTER TABLE `personal_nivel`
  ADD PRIMARY KEY (`personal_id`,`nivel_id`),
  ADD KEY `fk_personal_has_nivel_nivel1_idx` (`nivel_id`),
  ADD KEY `fk_personal_has_nivel_personal1_idx` (`personal_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_personal`
--
ALTER TABLE `rol_personal`
  ADD PRIMARY KEY (`id`,`id_rol`,`id_personal`),
  ADD KEY `fk_personal_has_rol_rol1_idx` (`id_rol`),
  ADD KEY `fk_personal_has_rol_personal1_idx` (`id_personal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idAsistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_alumno_Padre1` FOREIGN KEY (`Padre_idPadre1`) REFERENCES `padre` (`idPadre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_nivel1` FOREIGN KEY (`nivel_idNivel`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_nivel`
--
ALTER TABLE `alumno_nivel`
  ADD CONSTRAINT `fk_alumno_has_nivel_alumno1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_nivel_nivel2` FOREIGN KEY (`nivel_id`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `fk_asistencia_alumno1` FOREIGN KEY (`alumno_idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_calificacion_curso1` FOREIGN KEY (`curso_idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_Padre1` FOREIGN KEY (`Padre_idPadre`) REFERENCES `padre` (`idPadre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_matricula_alumno1` FOREIGN KEY (`alumno_idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_matricula_nivel1` FOREIGN KEY (`nivel_idNivel`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nivel_curso`
--
ALTER TABLE `nivel_curso`
  ADD CONSTRAINT `fk_nivel_curso_personal1` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nivel_has_curso_curso2` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nivel_has_curso_nivel2` FOREIGN KEY (`nivel_id`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `padre_nivel`
--
ALTER TABLE `padre_nivel`
  ADD CONSTRAINT `fk_Padre_has_nivel_Padre1` FOREIGN KEY (`Padre_idPadre`) REFERENCES `padre` (`idPadre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Padre_has_nivel_nivel1` FOREIGN KEY (`nivel_idNivel`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `fk_personal_cargo1` FOREIGN KEY (`cargoId`) REFERENCES `cargo` (`idCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personal_curso`
--
ALTER TABLE `personal_curso`
  ADD CONSTRAINT `fk_personal_has_curso_curso2` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personal_has_curso_personal2` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personal_nivel`
--
ALTER TABLE `personal_nivel`
  ADD CONSTRAINT `fk_personal_has_nivel_nivel1` FOREIGN KEY (`nivel_id`) REFERENCES `nivel` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personal_has_nivel_personal1` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rol_personal`
--
ALTER TABLE `rol_personal`
  ADD CONSTRAINT `fk_personal_has_rol_personal1` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personal_has_rol_rol1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
