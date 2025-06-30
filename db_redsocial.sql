-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2025 a las 19:09:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_redsocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `contenido_comentario` text NOT NULL,
  `activo_comentario` int(11) NOT NULL DEFAULT 1 CHECK (`activo_comentario` in (0,1)),
  `fechacreacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `id_usuario`, `id_post`, `contenido_comentario`, `activo_comentario`, `fechacreacion`) VALUES
(1, 2, 1, '¡Muy buen post!', 1, '2025-06-11'),
(2, 3, 2, 'Me gusta mucho.', 1, '2025-06-12'),
(3, 4, 3, '¡Excelente!', 1, '2025-06-13'),
(4, 5, 4, 'Buen contenido.', 1, '2025-06-14'),
(5, 1, 5, 'Interesante.', 1, '2025-06-15'),
(6, 2, 1, 'Me Gustaria que haya mas monas chinas', 1, '2025-06-11'),
(9, 12, 2, 'Me Gustaria que subieras fotos tuyas', 1, '2025-06-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment_view_all`
--

CREATE TABLE `comment_view_all` (
  `id` int(11) NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `me_gusta_comentarios` int(11) DEFAULT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compartido`
--

CREATE TABLE `compartido` (
  `id_compartido` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `fechacreacion_compartido` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compartido`
--

INSERT INTO `compartido` (`id_compartido`, `id_usuario`, `id_post`, `fechacreacion_compartido`) VALUES
(1, 2, 1, '2025-06-11'),
(2, 3, 2, '2025-06-12'),
(3, 4, 3, '2025-06-13'),
(4, 5, 4, '2025-06-14'),
(5, 1, 5, '2025-06-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iconuser`
--

CREATE TABLE `iconuser` (
  `id_icon_user` int(11) NOT NULL,
  `imagen_iconuser` varchar(255) NOT NULL,
  `activo_iconuser` int(11) NOT NULL DEFAULT 1 CHECK (`activo_iconuser` in (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iconuser`
--

INSERT INTO `iconuser` (`id_icon_user`, `imagen_iconuser`, `activo_iconuser`) VALUES
(1, 'https://i.pinimg.com/736x/76/f1/55/76f155c5d18854db5822f6c9036370d2.jpg', 1),
(2, 'https://i.pinimg.com/originals/a0/3f/bb/a03fbbc4148946bc2f2798d20cff4783.gif', 1),
(3, 'https://i.pinimg.com/474x/0f/da/a3/0fdaa32ffae0004709696d4da078fd78.jpg', 1),
(4, 'https://i.pinimg.com/736x/8b/e9/81/8be981a1c968cd8cc3445dd2bbe16d82.jpg', 1),
(5, 'https://i.pinimg.com/736x/09/7e/00/097e0063bf09c47c1dc721f7e9cc353b.jpg', 1),
(6, 'https://i.pinimg.com/736x/0b/67/bd/0b67bd05376b6faecc649568e2a06c03.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenpost`
--

CREATE TABLE `imagenpost` (
  `id_imagenpost` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `imagen_imagenpost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenpost`
--

INSERT INTO `imagenpost` (`id_imagenpost`, `id_post`, `imagen_imagenpost`) VALUES
(1, 1, 'https://i.pinimg.com/736x/33/a3/9e/33a39e4ab434f52d952d9b358f6e1643.jpg'),
(2, 2, 'https://i.pinimg.com/736x/38/bc/b6/38bcb68b0af4e90433689387935b4df0.jpg'),
(3, 3, 'https://i.pinimg.com/originals/e1/fd/e8/e1fde825b707b40b94d70d9892231ade.gif'),
(4, 4, 'https://i.pinimg.com/736x/e5/ba/55/e5ba5576400ce8be494556f1fbe437a6.jpg'),
(5, 5, 'https://i.pinimg.com/736x/e8/a8/70/e8a8709eb01503cfc024f7de9084015e.jpg'),
(21, 6, 'https://i.pinimg.com/736x/fb/6c/20/fb6c200f1cdc693b641c0ff16a220fc3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta_comentario`
--

CREATE TABLE `megusta_comentario` (
  `id_megusta_comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL,
  `fechacreacion_megusta_comentario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `megusta_comentario`
--

INSERT INTO `megusta_comentario` (`id_megusta_comentario`, `id_usuario`, `id_comentario`, `fechacreacion_megusta_comentario`) VALUES
(1, 1, 1, '2025-06-16'),
(2, 2, 2, '2025-06-17'),
(3, 3, 3, '2025-06-18'),
(4, 4, 4, '2025-06-18'),
(5, 5, 5, '2025-06-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `me_gusta`
--

CREATE TABLE `me_gusta` (
  `id_megusta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `fechacreacion_megusta` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `me_gusta`
--

INSERT INTO `me_gusta` (`id_megusta`, `id_usuario`, `id_post`, `fechacreacion_megusta`) VALUES
(1, 3, 1, '2025-06-12'),
(2, 4, 2, '2025-06-13'),
(3, 5, 3, '2025-06-14'),
(4, 1, 4, '2025-06-15'),
(5, 2, 5, '2025-06-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion_post` text NOT NULL,
  `activo_post` int(11) NOT NULL DEFAULT 1 CHECK (`activo_post` in (0,1)),
  `fechacreacion_post` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id_post`, `id_usuario`, `descripcion_post`, `activo_post`, `fechacreacion_post`) VALUES
(1, 1, 'Publicación de Alice', 1, '2025-06-06'),
(2, 2, 'Publicación de Bob', 1, '2025-06-07'),
(3, 3, 'Publicación de Carla', 1, '2025-06-08'),
(4, 4, 'Publicación de Daniel', 1, '2025-06-09'),
(5, 5, 'Publicación de Elaine', 1, '2025-06-10'),
(6, 12, 'Me gusta mucho Attack of titans', 1, '2025-06-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(35) NOT NULL,
  `id_icon_user` int(11) NOT NULL,
  `edad_usuario` int(11) NOT NULL CHECK (`edad_usuario` > 8),
  `correo_usuario` varchar(50) NOT NULL,
  `contrasena_usuario` varchar(120) NOT NULL,
  `telefono_usuario` varchar(35) NOT NULL,
  `fechanacimiento_usuario` varchar(10) NOT NULL,
  `direccion_usuario` text NOT NULL,
  `activo_usuario` int(11) NOT NULL DEFAULT 1 CHECK (`activo_usuario` in (0,1)),
  `fechacreacion_usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `id_icon_user`, `edad_usuario`, `correo_usuario`, `contrasena_usuario`, `telefono_usuario`, `fechanacimiento_usuario`, `direccion_usuario`, `activo_usuario`, `fechacreacion_usuario`) VALUES
(1, 'alice', 1, 25, 'alice@mail.com', 'password1', '555-0101', '2000-01-15', 'Calle 1, Ciudad A', 1, '2025-06-01'),
(2, 'bob', 2, 30, 'bob@mail.com', 'password2', '555-0202', '1995-07-20', 'Calle 2, Ciudad B', 1, '2025-06-02'),
(3, 'carla', 3, 20, 'carla@mail.com', 'password3', '555-0303', '2005-03-05', 'Calle 3, Ciudad C', 1, '2025-06-03'),
(4, 'daniel', 4, 28, 'daniel@mail.com', 'password4', '555-0404', '1997-11-30', 'Calle 4, Ciudad D', 1, '2025-06-04'),
(5, 'elaine', 5, 22, 'elaine@mail.com', 'password5', '555-0505', '2003-05-25', 'Calle 5, Ciudad E', 1, '2025-06-05'),
(12, 'Olverita', 6, 21, 'Olverita@gmail.com', '123456@Olverita', '555-0101', '2000-01-15', 'Calle 1, Ciudad A', 1, '2025-06-01');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `viewall`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `viewall` (
`id` int(11)
,`post_id` int(11)
,`nombre_usuario` varchar(35)
,`contenido` text
,`fecha` varchar(10)
,`imagen` varchar(255)
,`me_gusta_comentarios` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_post`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_post` (
`id_view_post` int(11)
,`post_imagen` varchar(255)
,`post_fecha_creacion` varchar(10)
,`post_descripcion` text
,`usuario_id` int(11)
,`usuario_nombre` varchar(35)
,`iconuser` varchar(255)
,`likes_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `viewall`
--
DROP TABLE IF EXISTS `viewall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewall`  AS SELECT `com`.`id_comentario` AS `id`, `com`.`id_post` AS `post_id`, `usr`.`nombre_usuario` AS `nombre_usuario`, `com`.`contenido_comentario` AS `contenido`, `com`.`fechacreacion` AS `fecha`, `icon`.`imagen_iconuser` AS `imagen`, (select count(0) from `megusta_comentario` `mc` where `mc`.`id_comentario` = `com`.`id_comentario`) AS `me_gusta_comentarios` FROM ((`comentario` `com` join `usuario` `usr` on(`usr`.`id_usuario` = `com`.`id_usuario`)) join `iconuser` `icon` on(`icon`.`id_icon_user` = `usr`.`id_icon_user`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_post`
--
DROP TABLE IF EXISTS `view_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_post`  AS SELECT `post`.`id_post` AS `id_view_post`, `imgpost`.`imagen_imagenpost` AS `post_imagen`, `post`.`fechacreacion_post` AS `post_fecha_creacion`, `post`.`descripcion_post` AS `post_descripcion`, `usuario`.`id_usuario` AS `usuario_id`, `usuario`.`nombre_usuario` AS `usuario_nombre`, `iconuser`.`imagen_iconuser` AS `iconuser`, (select count(0) from `me_gusta` `mg` where `mg`.`id_post` = `post`.`id_post`) AS `likes_count` FROM (((`imagenpost` `imgpost` join `post` on(`imgpost`.`id_post` = `post`.`id_post`)) join `usuario` on(`post`.`id_usuario` = `usuario`.`id_usuario`)) join `iconuser` on(`usuario`.`id_icon_user` = `iconuser`.`id_icon_user`)) WHERE `post`.`activo_post` = 1 ORDER BY `post`.`id_post` ASC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_post` (`id_post`);

--
-- Indices de la tabla `comment_view_all`
--
ALTER TABLE `comment_view_all`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compartido`
--
ALTER TABLE `compartido`
  ADD PRIMARY KEY (`id_compartido`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_post` (`id_post`);

--
-- Indices de la tabla `iconuser`
--
ALTER TABLE `iconuser`
  ADD PRIMARY KEY (`id_icon_user`);

--
-- Indices de la tabla `imagenpost`
--
ALTER TABLE `imagenpost`
  ADD PRIMARY KEY (`id_imagenpost`),
  ADD KEY `FKj2eee647hyjqjdxsoe9ujwl2w` (`id_post`);

--
-- Indices de la tabla `megusta_comentario`
--
ALTER TABLE `megusta_comentario`
  ADD PRIMARY KEY (`id_megusta_comentario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indices de la tabla `me_gusta`
--
ALTER TABLE `me_gusta`
  ADD PRIMARY KEY (`id_megusta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_post` (`id_post`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `NombreUnicoUser` (`nombre_usuario`),
  ADD UNIQUE KEY `DatosUnicoDatosUser` (`nombre_usuario`,`edad_usuario`,`correo_usuario`,`telefono_usuario`,`fechanacimiento_usuario`),
  ADD KEY `FK_usuario_iconuser` (`id_icon_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `compartido`
--
ALTER TABLE `compartido`
  MODIFY `id_compartido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `iconuser`
--
ALTER TABLE `iconuser`
  MODIFY `id_icon_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `imagenpost`
--
ALTER TABLE `imagenpost`
  MODIFY `id_imagenpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `megusta_comentario`
--
ALTER TABLE `megusta_comentario`
  MODIFY `id_megusta_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `me_gusta`
--
ALTER TABLE `me_gusta`
  MODIFY `id_megusta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Filtros para la tabla `compartido`
--
ALTER TABLE `compartido`
  ADD CONSTRAINT `compartido_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `compartido_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Filtros para la tabla `imagenpost`
--
ALTER TABLE `imagenpost`
  ADD CONSTRAINT `FKj2eee647hyjqjdxsoe9ujwl2w` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Filtros para la tabla `megusta_comentario`
--
ALTER TABLE `megusta_comentario`
  ADD CONSTRAINT `megusta_comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `megusta_comentario_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id_comentario`);

--
-- Filtros para la tabla `me_gusta`
--
ALTER TABLE `me_gusta`
  ADD CONSTRAINT `me_gusta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `me_gusta_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_iconuser` FOREIGN KEY (`id_icon_user`) REFERENCES `iconuser` (`id_icon_user`),
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_icon_user`) REFERENCES `iconuser` (`id_icon_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
