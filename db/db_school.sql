-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2023 a las 23:21:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administratives`
--

CREATE TABLE `administratives` (
  `user` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surnames` varchar(60) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `level_studies` varchar(30) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `observations` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `administratives`
--

INSERT INTO `administratives` (`user`, `name`, `surnames`, `date_of_birth`, `gender`, `curp`, `rfc`, `phone`, `address`, `level_studies`, `occupation`, `observations`, `created_at`, `updated_at`) VALUES
('admin', 'Alex', 'Fernandez Sanchez', '1997-04-05', 'hombre', 'CABD970405HCSRRG03', 'CABD9704052K5', '9614044227', 'Av. Aquiles Serdán 915, Bienestar Social, 29077, Tuxtla Gutiérrez, Chiapas.', 'Ingenieria', 'Programador', '', '2021-12-05 18:33:37', '2022-04-03 06:06:33'),
('chimal-0daed', 'Raymundo', 'Chimal Torres', '1973-11-21', 'hombre', 'asdkjaq3399', 'asdhgada272', '88282810', '', '', 'Docente', NULL, '2023-11-22 00:41:54', '2023-11-22 00:41:54'),
('editor', 'Jesús Antonio', 'Olvera Gálvez', '1989-10-14', 'hombre', 'OGJA891014HCSRRG02', 'OGJA8910142V9', '9614044227', '9 Av. Sur. Ote #2167', 'Maestria', 'Recursos Humanos', '', '2020-12-01 18:33:52', '2021-12-07 22:07:34'),
('evercf33', 'Everardo', 'Contreras Flores', '2001-11-21', 'hombre', 'eveaksa1230', 'eveaksdh22', '', 'Col. Amistad #823 , calle: Los amigos , entre calle los rechazados y los enamorados.', 'Ingenieria', 'Gestion Empresarial', NULL, '2023-11-18 15:14:00', '2023-11-18 15:14:00'),
('keniaq405', 'Kenia Fernanda', 'Quiroz Eguia', '1985-03-16', 'mujer', 'MMGO160385MCSRRG01', 'MMGO160385MCS', '9613459810', 'Av. Tulipanes #132, Bienestar Social, Tuxtla Gutiérrez, Chiapas', 'Ingenieria', 'Gestion Empresarial', '', '2021-12-04 02:13:36', '2022-02-05 23:24:23'),
('luiscarlost21', 'Luis Carlos', 'Garcia Garcia', '2001-11-09', 'hombre', 'ashda23kj32kja', 'akdjhasda21', '883392293', 'Calle Ejido #34 , col. Fundadores , H. Matamoros , Tamaulipas', 'Ingenieria', 'Gestion Empresarial', NULL, '2023-11-13 03:01:08', '2023-11-13 03:01:08'),
('sofiagc4e9', 'Sofia', 'Gonzalez Castillo', '1997-09-16', 'mujer', 'PMRO970916MCSLLS09', 'PMRO970916MCS', '9654392021', 'Calle: Conocido, #133 , Col. Praderas, H.Matamoros, Tamaulipas', 'Ingenieria', 'Gestion Empresarial', '', '2021-08-27 03:41:36', '2022-02-03 07:52:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `id_attendance` varchar(50) NOT NULL,
  `id_group` varchar(20) NOT NULL,
  `school_period` varchar(20) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject` varchar(400) NOT NULL,
  `user_teacher` varchar(50) NOT NULL,
  `registered` date NOT NULL,
  `update_registered` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`id_attendance`, `id_group`, `school_period`, `semester`, `subject`, `user_teacher`, `registered`, `update_registered`) VALUES
('xfs980s', 'ADMIN_1205', '2021-1', 1, 'CAL_DIF_01', 'teacher_e94ac', '2021-03-09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance_details`
--

CREATE TABLE `attendance_details` (
  `id_attendance` varchar(50) NOT NULL,
  `id_group` varchar(20) NOT NULL,
  `school_period` varchar(20) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject` varchar(400) NOT NULL,
  `user_teacher` varchar(50) NOT NULL,
  `registered` date NOT NULL,
  `update_registered` date DEFAULT NULL,
  `user_student` varchar(50) NOT NULL,
  `attend` int(1) NOT NULL DEFAULT 0,
  `tardiness` int(1) NOT NULL DEFAULT 0,
  `absent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `careers`
--

CREATE TABLE `careers` (
  `career` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `careers`
--

INSERT INTO `careers` (`career`, `name`, `description`) VALUES
('IE', 'Ingenieria Electronica', '\r\nLa ingeniería electrónica es una disciplina de la ingeniería que se ocupa de estudiar y aplicar principios y técnicas de la electrónica para el diseño y mantenimiento de sistemas electrónicos. Estos sistemas incluyen dispositivos y circuitos electrónicos, así como sistemas de control y comunicación que utilizan la electricidad como medio principal.'),
('IEM', 'Ingeniería Mecatrónica', 'En esta Ingeniería se combinan diversas disciplinas como la mecánica, electrónica, computación, y control. Las (os) ingenieros mecatrónicos diseñan, integran y desarrollan diversos productos, mecanismos, equipos, maquinaria y sistemas integrales de automatización, así como la elaboración de análisis y consultorías técnicas en procesos relacionados con las áreas de aplicación de la ingeniería mecatrónica, todo esto con la ayuda de herramientas de hardware y software de vanguardia. En la Politécnica de Chiapas contamos con una formación integral, humana, práctica, teórica, empresarial, que permite a nuestras (os) ingenieros desarrollar e implementar tecnología para ofrecer soluciones que contribuyan a mejorar la calidad de vida de las personas así como optimizar los recursos de las empresas. Para ello, contamos con laboratorios equipados, académicos reconocidos y un programa educativo reconocido por una institución de calidad, CACEI.'),
('IGE', 'Ingeniería en Gestion Empresarial', 'En esta ingenieria es una disciplina que combina principios de ingeniería, negocios y ciencias sociales para optimizar los procesos y la eficiencia dentro de las organizaciones.'),
('II', 'Ingeniería Industrial', '\r\nLa ingeniería industrial es una disciplina que se enfoca en el diseño, mejora e implementación de sistemas integrados que involucran personas, recursos, información, energía y materiales. Su objetivo principal es optimizar el rendimiento global de sistemas y procesos complejos.'),
('IQ', 'Ingenieria Quimica', 'La ingeniería química es una rama de la ingeniería que se ocupa de la aplicación de principios y técnicas químicas para resolver problemas técnicos o desarrollar procesos para la producción de materiales y energía. Los ingenieros químicos combinan conocimientos de química, física, matemáticas, biología y economía para diseñar, desarrollar, fabricar y gestionar procesos y productos en diversas industrias.'),
('ISC', 'Ingeniería en Sistemas Computacionales', 'Es la aplicación práctica del conocimiento científico y humanístico al diseño y construcción de programas de computadora, diseñando soluciones de software innovadoras y acordes con el entorno social y empresarial, mediante herramientas, técnicas, tecnologías de usabilidad, base de datos, redes, teleproceso y lenguajes de programación. En Politécnica de Chiapas formamos ingenieros profesionales especializados en el desarrollo de software; capaces de crear, innovar y aplicar la tecnología para ofrecer soluciones en las áreas de la comunicación digital, automatización, negocios, sistemas computacionales, educación, transportes, diversión y entretenimiento.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id_group` varchar(20) NOT NULL,
  `school_period` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subjects` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_students`
--

CREATE TABLE `groups_students` (
  `id_group` varchar(20) NOT NULL,
  `school_period` varchar(20) NOT NULL,
  `user_student` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`job_id`, `name`, `address`, `name_contact`) VALUES
(1, 'Littelfuse', 'Calle: poniente 4 y norte 7 , ciudad industrial', 'Karina carrizales'),
(2, 'Robertshaw', ' Av. Gral. Lauro Villar 900, Treviño Zapata', 'Daniel zuniga'),
(3, 'Ohmite victoreen de mexico', 'Pte. 2 23A, Cd Industrial', 'Sergio Ramos'),
(4, 'KIE Intalaciones electromecanicas', 'Pedro Coronado 17, Lucero', 'Pedro Guzman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_periods`
--

CREATE TABLE `school_periods` (
  `school_period` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` int(1) NOT NULL,
  `current` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `school_periods`
--

INSERT INTO `school_periods` (`school_period`, `name`, `start_date`, `end_date`, `active`, `current`, `created_at`, `updated_at`) VALUES
('2021-3', 'Septiembre - Diciembre 2021', '2021-08-30', '2021-12-14', 1, 0, '2021-12-04 00:59:21', '2022-03-13 04:02:16'),
('2023-1', 'Agosto - Diciembre 2023', '2023-08-06', '2023-12-09', 1, 0, '2021-12-04 00:57:04', '2022-02-04 06:15:56'),
('2023-2', 'Agosto - Diciembre 2022', '2023-08-27', '2023-12-08', 1, 0, '2022-04-03 05:30:20', '2022-04-03 06:10:09'),
('2023-4', 'Agosto - Diciembre 2023', '2023-08-15', '2023-12-31', 1, 0, '2021-10-08 20:38:04', '2022-02-04 06:14:40'),
('2023-5', 'Agosto - Diciembre 2023', '2023-08-08', '2023-12-26', 1, 1, '2022-01-05 05:37:49', '2022-03-13 03:27:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `user` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surnames` varchar(60) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `career` varchar(20) NOT NULL,
  `documentation` int(1) NOT NULL,
  `admission_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`user`, `name`, `surnames`, `date_of_birth`, `gender`, `curp`, `rfc`, `phone`, `address`, `career`, `documentation`, `admission_date`, `created_at`, `updated_at`, `image`) VALUES
('stdt8ef8ba', 'Kenia Fernanda', 'Quiroz Eguia', '2001-11-14', 'mujer', 'CSJJSSIKJSKLSKOSKJ', 'JNDKJHJDLKJSL', '9651251012', 'Palo alto #33 calle: granada', 'IGE', 0, '2021-10-08', '2022-04-03 17:52:52', NULL, 'keniaq405.jpeg'),
('student_0beb9', 'Sofia', 'Gonzalez Castillo', '2001-01-10', 'mujer', 'PIJA0SKKS000022236', 'CONOCIDO', '2737283838', 'Tecnologico #99 calle plan de ayutla', 'IGE', 1, '2021-08-02', '2022-04-03 17:53:02', NULL, 'sofiagc4e9.jpeg'),
('student_28e64', 'Luis Carlos', 'Garcia Garcia', '2001-08-17', 'hombre', 'L02LSLSJLJKJ89994P', 'ASJAL13223', '9828782828', 'Amistad #823 calle: pluton', 'IGE', 0, '2021-08-02', '2022-04-03 17:53:06', NULL, 'luiscarlost21.jpeg'),
('student_f0404', 'Everardo', 'Contreras Flores', '2001-03-19', 'hombre', 'KKSKK99991P9199191', 'kkasdad22', '272878328', 'Padrino #231 calle: Marte', 'IEM', 1, '2021-08-02', '2022-04-03 17:53:11', NULL, 'evercf33.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `subject` varchar(20) NOT NULL,
  `career` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `description` text DEFAULT NULL,
  `user_teachers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`subject`, `career`, `name`, `semester`, `description`, `user_teachers`) VALUES
('CALDIF01', 'MATBASICAS', 'Calculo Diferencial', 9, 'Calculo jsjsjs', 'teacher_e9418,tchr37db23,teacher_e9408,'),
('CALINT', 'IDS', 'Calculo Integral', 1, '', ',teacher_e9443,tchra80e12,teacher_617af,'),
('DESARROLLO', 'MATBASICAS', 'Software', 3, 'jsjsjsj lalalas', 'teacher_e9408,'),
('EDU_FISC01QR', 'MATBASICAS', 'Educación física', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque venenatis lectus at rhoncus faucibus. Etiam sit amet nulla eu tortor luctus semper. Donec egestas leo nisl, at ornare ex tempus id. Nullam at euismod arcu, vitae bibendum risus. Vivamus cursus elit at diam mattis pretium. Maecenas non condimentum justo, et tempor tortor. Nam at mi commodo, euismod enim non, malesuada felis. Proin quis elementum justo. In posuere, nunc vel ultrices sagittis, velit purus viverra augue, posuere scelerisque dolor magna vel nisl. Aliquam in commodo ligula, at mattis ligula. Curabitur et arcu metus. Mauris neque arcu, volutpat quis volutpat a, bibendum ac magna. Duis pellentesque viverra quam eget euismod.\r\n\r\nPhasellus tincidunt posuere faucibus. Sed imperdiet metus ullamcorper enim consequat tempor. Quisque nec lectus facilisis, gravida nisl sit amet, egestas nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae turpis massa. Aenean gravida commodo ante a maximus. Sed eget mi ac ante hendrerit molestie. Vivamus feugiat purus sit amet lobortis tempor. Quisque neque libero, ultrices non ex id, venenatis convallis lorem. Suspendisse malesuada erat vel ornare interdum. In hac habitasse platea dictumst.', ',teacher_e9408,'),
('INGBAS01', 'IDS', 'Ingles Básico', 1, 'El idioma inglés (English language o English, pronunciado /ˈɪŋɡlɪʃ/) es una lengua germánica occidental que surgió en los reinos anglosajones de Inglaterra y se extendió hasta el Norte en lo que se convertiría en el sudeste de Escocia, bajo la influencia del Reino de Northumbria.', ',teacher_617af,tchra80e12,teacher_e9443,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `user` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surnames` varchar(60) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `level_studies` varchar(30) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `career` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`user`, `name`, `surnames`, `date_of_birth`, `gender`, `curp`, `rfc`, `phone`, `address`, `level_studies`, `specialty`, `career`, `created_at`, `updated_at`, `image`) VALUES
('tchr-0daed', 'Juan', 'Guillermo Rodriguez', '1982-04-20', 'hombre', 'UJJJJJJJJJJJJJJJJJ', 'JJJJJJJJJJJJJ', '2222222222', 'Av Lauro villar #33 ', 'Ingenieria', 'j', 'IGE', '2022-04-03 17:35:39', NULL, 'm1.jpeg'),
('tchra80e12', 'Raymundo', 'Chimal Torres', '1975-02-08', 'hombre', 'ATME980215KMN32221', 'ATME980215KMN', '9991020394', 'Av. Siempre Viva #55', 'Licenciatura', 'Negocios', 'IGE', '2022-02-02 00:47:13', '2022-02-07 12:45:38', 'm2.jpeg'),
('teacher_5c1ca', 'Guadalupe', 'Lopez', '1986-02-02', 'hombre', 'KSK92992292KSA0000', 'CCCCCCONOCIDO', '9716278838', 'CONOCIDO/ ', 'Ingenieria', 'Negocios', 'IGE', '2022-02-06 20:37:47', '2022-02-06 20:34:37', 'm3.jpeg'),
('teacher_617af', 'Rigoberto', 'Nanguluru Conde', '2022-02-18', 'hombre', 'CLLLS9202JS8KS90SS', 'CCCCCCONOCIDO', '9881877732', 'CONOCIDO', 'Doctorado', 'Maestría en Computación', 'IDS,MATBASICAS', '2022-02-06 20:37:53', '2022-04-03 05:57:35', 'user.png'),
('teacher_e9408', 'Juanita de la Cruz', 'Nepomuceno', '2022-02-08', 'mujer', 'KSKKS020020219100S', 'JJJJJCONOCIDO', '9672282646', 'CONOCIDO', 'Maestria', 'Enseñanza del Español', 'INGBIO,MATBASICAS', '2022-02-06 20:37:59', '2022-02-06 20:38:44', 'user.png'),
('teacher_e9423', 'Carlos Alberto', 'Marín Roblero', '1987-04-15', 'hombre', 'KSKKS020020219100S', 'KKKKKCONOCIDO', '9613334538', 'CONOCIDO', 'Ingenieria', 'Automatas', 'IDS,IEM,INGBIO,INGPLRA,MATBASICAS,MTABIOTEC', '2022-02-06 20:38:03', '2022-04-03 06:16:28', 'user.png'),
('teacher_e9443', 'Jaime', 'Ponce Torres', '2022-02-08', 'hombre', 'KSKKS020020219100S', 'XAXX010101000', '9653649801', 'CONOCIDO', 'Ingenieria', 'Máquinas', 'INGBIO,MATBASICAS', '2022-02-06 20:38:07', '2022-04-03 06:16:36', 'user.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user` varchar(50) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `pass` varchar(50) NOT NULL,
  `permissions` varchar(20) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `image_updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user`, `email`, `pass`, `permissions`, `image`, `image_updated_at`, `created_at`, `updated_at`) VALUES
('admin', 'l19260901@matamoros.tecnm.mx', 'root', 'admin', 'admin967.png', '2023-11-12 01:40:50', '2021-12-05 18:27:39', '2022-04-03 06:10:34'),
('chimal-0daed', 'raymundochimaltorres@gmail.com', 'tchr1', 'editor', 'user.png', NULL, '2022-04-03 17:35:39', NULL),
('editor', 'editor@gmail.com', 'editor', 'editor', 'user.png', NULL, '2021-05-01 00:00:00', NULL),
('evercf33', 'EverardoContFlor33@gmail.com', '1234567', 'admin', 'evercf33.jpeg', '2023-11-18 15:01:51', '2023-11-18 15:01:51', '2023-11-18 15:01:51'),
('keniaq405', 'KeniaQuiroz12@gmail.com', 'pssword', 'admin', 'keniaq405.jpeg', NULL, '2021-12-04 02:13:36', '2022-03-13 02:59:59'),
('luiscarlost21', 'LuisCarlost21@gmail.com', 'passwo', 'editor', 'luiscarlost21.jpeg', '2023-11-13 03:04:25', '2023-11-13 03:04:25', '2023-11-13 03:04:25'),
('sofiagc4e9', 'sofiagonzalezcasti170@gmail.com', 'sofiagc4e9', 'admin', 'sofiagc4e9.jpeg', NULL, '2021-08-27 03:41:36', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administratives`
--
ALTER TABLE `administratives`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id_attendance`);

--
-- Indices de la tabla `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD KEY `FK_attendance_details_attendance` (`id_attendance`);

--
-- Indices de la tabla `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`career`);

--
-- Indices de la tabla `school_periods`
--
ALTER TABLE `school_periods`
  ADD PRIMARY KEY (`school_period`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
