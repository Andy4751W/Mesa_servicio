-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-09-2026 a las 08:49:39
-- Versión del servidor: 10.11.18-MariaDB-cll-lve
-- Versión de PHP: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mds_GC2026`
--

DELIMITER $$
--
-- Procedimientos
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id_catalogo` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `orden` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id_catalogo`, `id_pais_operacion`, `nombre`, `descripcion`, `imagen`, `estado`, `orden`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'Administración', '02', 'private/catalogos/catalogo_8a58ac3200d89e4e.webp', 'activo', 6, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(2, 1, 'Contabilidad', 'Servicios contables, tributarios y financieros.', 'private/catalogos/catalogo_0dca899b03a21eda.webp', 'activo', 7, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(3, 1, 'Jurídica', 'Consultas y solicitudes jurídicas.', 'private/catalogos/catalogo_45544a4c84551242.webp', 'activo', 2, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(4, 1, 'Seguridad Integral', 'Servicios de seguridad y gestión de riesgos.', 'private/catalogos/catalogo_c4d6a6a1760cefa8.webp', 'activo', 3, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(5, 1, 'Talento Humano', 'Servicios relacionados con los colaboradores.', 'private/catalogos/catalogo_49c39e66e0222376.webp', 'activo', 4, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(6, 1, 'TICs', 'Soporte tecnológico y sistemas de información.', 'private/catalogos/catalogo_d348101c00768e34.webp', 'activo', 1, '2026-07-31 09:00:22', '2026-09-01 16:09:42'),
(7, 2, 'TICs', '', 'private/catalogos/catalogo_e1c91e52c28b77aa.webp', 'activo', 1, '2026-08-12 15:56:05', '2026-08-13 14:09:04'),
(8, 2, 'Seguridad Integral', '', 'private/catalogos/catalogo_3162f1ce86a8391d.webp', 'activo', 2, '2026-08-12 16:00:04', '2026-08-27 15:24:28'),
(9, 2, 'Talento Humano', '1.0', 'private/catalogos/catalogo_c682c579053b84f8.webp', 'activo', 9999, '2026-08-24 12:25:04', '2026-08-24 17:25:04'),
(11, 1, 'Calidad y Planeación estratégica', '02', 'private/catalogos/catalogo_ec83e78d2776355f.webp', 'activo', 5, '2026-08-26 08:06:37', '2026-09-01 16:09:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_conversacion_estado`
--

CREATE TABLE `chat_conversacion_estado` (
  `id_ticket` int(11) NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `entregado_hasta` datetime DEFAULT NULL,
  `leido_hasta` datetime DEFAULT NULL,
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_conversacion_estado`
--

INSERT INTO `chat_conversacion_estado` (`id_ticket`, `id_ticket_etapa`, `id_usuario`, `entregado_hasta`, `leido_hasta`, `actualizado_en`) VALUES
(1, 1, 2, '2026-08-31 09:04:50', '2026-08-31 09:04:50', '2026-08-31 19:31:13'),
(1, 1, 9, '2026-08-28 12:58:09', '2026-08-28 12:58:09', '2026-08-31 14:04:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_usuario_presencia`
--

CREATE TABLE `chat_usuario_presencia` (
  `id_usuario` int(11) NOT NULL,
  `en_linea` tinyint(1) NOT NULL DEFAULT 0,
  `inicio_sesion_en` datetime DEFAULT NULL,
  `ultima_actividad_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_usuario_presencia`
--

INSERT INTO `chat_usuario_presencia` (`id_usuario`, `en_linea`, `inicio_sesion_en`, `ultima_actividad_en`) VALUES
(1, 1, '2026-09-02 10:47:35', '2026-09-02 10:47:37'),
(2, 0, '2026-09-02 08:39:47', '2026-09-02 08:40:15'),
(4, 0, '2026-08-31 09:18:36', '2026-08-31 09:19:00'),
(9, 0, '2026-09-02 08:19:30', '2026-09-02 08:20:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuraciones_servicio`
--

CREATE TABLE `configuraciones_servicio` (
  `id_opcion` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `tipo` enum('pais','departamento','ciudad','prioridad','urgencia','nivel','impacto','estado','clasificacion') NOT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `color` char(7) NOT NULL DEFAULT '#0f6fec',
  `estado_registro` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `orden` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuraciones_servicio`
--

INSERT INTO `configuraciones_servicio` (`id_opcion`, `id_pais_operacion`, `tipo`, `id_padre`, `nombre`, `descripcion`, `color`, `estado_registro`, `orden`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'pais', NULL, 'Colombia', 'País de operación.', '#7c3aed', 'activo', 1, '2026-07-31 09:00:22', '2026-08-05 21:45:35'),
(2, 1, 'ciudad', 9, 'Bogotá', 'Ciudad principal de operación.', '#8b5cf6', 'activo', 1, '2026-07-31 09:00:22', '2026-08-06 15:34:34'),
(9, 1, 'departamento', 1, 'cundinamarca', 'n', '#0f6fec', 'activo', 1, '2026-07-31 09:00:22', '2026-08-06 15:34:34'),
(10, 1, 'prioridad', NULL, 'Baja', 'Prioridad de impacto reducido.', '#22c55e', 'activo', 1, '2026-07-31 09:00:22', '2026-08-21 19:23:40'),
(11, 1, 'prioridad', NULL, 'Media', 'Prioridad de atención regular.', '#eab308', 'activo', 2, '2026-07-31 09:00:22', '2026-08-21 19:23:36'),
(12, 1, 'prioridad', NULL, 'Alta', 'Prioridad que requiere pronta atención.', '#f97316', 'activo', 3, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(13, 1, 'prioridad', NULL, 'Crítica', 'Prioridad con afectación crítica.', '#dc2626', 'activo', 4, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(14, 1, 'urgencia', NULL, 'Baja', 'Puede atenderse dentro del tiempo normal.', '#22c55e', 'activo', 1, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(15, 1, 'urgencia', NULL, 'Moderada', 'Requiere atención regular.', '#eab308', 'activo', 2, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(16, 1, 'urgencia', NULL, 'Alta', 'Requiere atención prioritaria.', '#f97316', 'activo', 3, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(17, 1, 'urgencia', NULL, 'Urgente', 'Requiere atención inmediata.', '#dc2626', 'activo', 4, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(18, 1, 'nivel', NULL, 'Nivel 1', 'Atención básica o primer nivel.', '#22c55e', 'activo', 1, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(19, 1, 'nivel', NULL, 'Nivel 2', 'Atención especializada o segundo nivel.', '#3b82f6', 'activo', 2, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(20, 1, 'nivel', NULL, 'Nivel 3', 'Atención avanzada o tercer nivel.', '#8b5cf6', 'activo', 3, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(21, 1, 'impacto', NULL, 'Usuario', 'Afecta a un usuario individual.', '#22c55e', 'activo', 1, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(22, 1, 'impacto', NULL, 'Área', 'Afecta a un área o equipo de trabajo.', '#3b82f6', 'activo', 2, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(23, 1, 'impacto', NULL, 'Empresa', 'Afecta a una empresa o filial.', '#f97316', 'activo', 3, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(24, 1, 'impacto', NULL, 'Negocio', 'Afecta la continuidad del negocio.', '#dc2626', 'activo', 4, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(27, 1, 'estado', NULL, 'En espera', 'Pendiente de información o validación.', '#ca8a04', 'activo', 3, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(28, 1, 'estado', NULL, 'Resuelta', 'Solicitud solucionada.', '#64748b', 'activo', 4, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(29, 1, 'estado', NULL, 'Cerrada', 'Solicitud finalizada y cerrada.', '#475569', 'activo', 5, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(30, 1, 'estado', NULL, 'Cancelada', 'Solicitud cancelada.', '#dc2626', 'activo', 6, '2026-07-31 09:00:22', '2026-08-05 13:50:04'),
(31, 1, 'pais', NULL, 'Alemania', '', '#ff0033', 'activo', 3, '2026-07-31 09:12:18', '2026-08-05 13:50:04'),
(32, 1, 'ciudad', NULL, 'Berlín', '', '#ff0000', 'activo', 3, '2026-07-31 09:12:52', '2026-08-06 15:34:34'),
(34, 2, 'pais', NULL, 'peru', '', '#ff0000', 'activo', 1, '2026-08-12 12:50:24', '2026-08-12 17:50:24'),
(35, 2, 'departamento', 34, 'departamento de lima', '', '#6d28d9', 'activo', 1, '2026-08-12 12:51:36', '2026-08-12 17:51:36'),
(36, 2, 'ciudad', 35, 'lima', '', '#8b5cf6', 'activo', 1, '2026-08-12 12:51:46', '2026-08-12 17:51:46'),
(37, 2, 'urgencia', NULL, 'baja', '', '#e11d48', 'activo', 1, '2026-08-12 15:57:12', '2026-08-12 20:57:12'),
(38, 2, 'nivel', NULL, 'bajo', '', '#0f6fec', 'activo', 1, '2026-08-12 15:57:21', '2026-08-12 20:57:21'),
(39, 2, 'impacto', NULL, 'bajo', '', '#0e9f9a', 'activo', 1, '2026-08-12 15:57:30', '2026-08-12 20:57:30'),
(40, 2, 'estado', NULL, 'abierto', '', '#d97706', 'activo', 1, '2026-08-12 15:57:39', '2026-08-12 20:57:39'),
(41, 2, 'prioridad', NULL, 'bajo', '', '#db2777', 'activo', 1, '2026-08-12 15:57:59', '2026-08-12 20:57:59'),
(42, 1, '', NULL, 'Requerimiento', '', '#2563eb', 'activo', 1, '2026-08-24 15:14:32', '2026-08-24 20:14:32'),
(43, 1, 'clasificacion', NULL, 'Requerimiento', 'Solicitud de un servicio, recurso o gestión.', '#00eeff', 'activo', 1, '2026-08-24 15:21:20', '2026-08-31 19:23:03'),
(44, 2, 'clasificacion', NULL, 'Requerimiento', 'Solicitud de un servicio, recurso o gestión.', '#2563eb', 'activo', 1, '2026-08-24 15:21:20', '2026-08-24 20:21:20'),
(46, 1, 'clasificacion', NULL, 'Incidente', 'Interrupción, falla o comportamiento no esperado.', '#dc2626', 'activo', 2, '2026-08-24 15:21:20', '2026-08-24 20:21:20'),
(47, 2, 'clasificacion', NULL, 'Incidente', 'Interrupción, falla o comportamiento no esperado.', '#dc2626', 'activo', 2, '2026-08-24 15:21:20', '2026-08-24 20:21:20'),
(49, 1, 'clasificacion', NULL, 'problema', '', '#2563eb', 'activo', 3, '2026-08-24 15:21:57', '2026-08-24 20:21:57'),
(52, 1, 'departamento', 1, 'Antioquia', '', '#6d28d9', 'activo', 2, '2026-08-28 14:38:06', '2026-08-28 19:38:06'),
(53, 1, 'ciudad', 52, 'Medellin', '', '#8b5cf6', 'activo', 4, '2026-08-28 14:38:18', '2026-08-28 19:38:18'),
(54, 1, 'departamento', 1, 'Amazonas', '', '#6d28d9', 'activo', 3, '2026-08-31 09:21:55', '2026-08-31 14:21:55'),
(55, 1, 'departamento', 1, 'Arauca', '', '#6d28d9', 'activo', 4, '2026-08-31 09:22:07', '2026-08-31 14:22:07'),
(56, 1, 'departamento', 1, 'Boyacá', '', '#6d28d9', 'activo', 5, '2026-08-31 09:22:19', '2026-08-31 14:22:19'),
(57, 1, 'departamento', 1, 'Atlántico', '', '#6d28d9', 'activo', 6, '2026-08-31 09:22:38', '2026-08-31 14:22:38'),
(58, 1, 'departamento', 1, 'Caldas', '', '#6d28d9', 'activo', 7, '2026-08-31 09:22:54', '2026-08-31 14:22:54'),
(59, 1, 'departamento', 1, 'Caquetá', '', '#6d28d9', 'activo', 8, '2026-08-31 09:23:10', '2026-08-31 14:23:10'),
(60, 1, 'departamento', 1, 'Casanare', '', '#6d28d9', 'activo', 9, '2026-08-31 09:23:22', '2026-08-31 14:23:22'),
(61, 1, 'departamento', 1, 'Cauca', '', '#6d28d9', 'activo', 10, '2026-08-31 09:23:32', '2026-08-31 14:23:32'),
(62, 1, 'departamento', 1, 'Chocó', '', '#6d28d9', 'activo', 11, '2026-08-31 09:23:44', '2026-08-31 14:23:44'),
(63, 1, 'departamento', 1, 'Córdoba', '', '#6d28d9', 'activo', 12, '2026-08-31 09:24:01', '2026-08-31 14:24:01'),
(64, 1, 'departamento', 1, 'Guainia', '', '#6d28d9', 'activo', 13, '2026-08-31 09:26:04', '2026-08-31 14:26:04'),
(65, 1, 'departamento', 1, 'Guaviare', '', '#6d28d9', 'activo', 14, '2026-08-31 09:26:14', '2026-08-31 14:26:14'),
(66, 1, 'departamento', 1, 'Huila', '', '#6d28d9', 'activo', 15, '2026-08-31 09:26:23', '2026-08-31 14:26:23'),
(67, 1, 'departamento', 1, 'La Guajira', '', '#6d28d9', 'activo', 16, '2026-08-31 09:26:37', '2026-08-31 14:26:37'),
(68, 1, 'departamento', 1, 'Magdalena', '', '#6d28d9', 'activo', 17, '2026-08-31 09:29:25', '2026-08-31 14:29:25'),
(69, 1, 'departamento', 1, 'Meta', '', '#6d28d9', 'activo', 18, '2026-08-31 09:29:33', '2026-08-31 14:29:33'),
(70, 1, 'departamento', 1, 'Nariño', '', '#6d28d9', 'activo', 19, '2026-08-31 09:31:11', '2026-08-31 14:31:11'),
(71, 1, 'departamento', 1, 'Norte de Santander', '', '#6d28d9', 'activo', 20, '2026-08-31 09:31:38', '2026-08-31 14:31:38'),
(72, 1, 'departamento', 1, 'Putumayo', '', '#6d28d9', 'activo', 21, '2026-08-31 09:31:52', '2026-08-31 14:31:52'),
(73, 1, 'departamento', 1, 'Quindio', '', '#6d28d9', 'activo', 22, '2026-08-31 09:32:06', '2026-08-31 14:32:06'),
(74, 1, 'departamento', 1, 'Risaralda', '', '#6d28d9', 'activo', 23, '2026-08-31 09:32:17', '2026-08-31 14:32:17'),
(75, 1, 'departamento', 1, 'Santander', '', '#6d28d9', 'activo', 24, '2026-08-31 09:32:26', '2026-08-31 14:32:26'),
(76, 1, 'departamento', 1, 'Sucre', '', '#6d28d9', 'activo', 25, '2026-08-31 09:32:37', '2026-08-31 14:32:37'),
(77, 1, 'departamento', 1, 'Tolima', '', '#6d28d9', 'activo', 26, '2026-08-31 09:32:44', '2026-08-31 14:32:44'),
(78, 1, 'departamento', 1, 'Valle del Cauca', '', '#6d28d9', 'activo', 27, '2026-08-31 09:32:58', '2026-08-31 14:32:58'),
(79, 1, 'departamento', 1, 'Vaupés', '', '#6d28d9', 'activo', 28, '2026-08-31 09:33:06', '2026-08-31 14:33:06'),
(80, 1, 'departamento', 1, 'Bolivar', '', '#6d28d9', 'activo', 29, '2026-08-31 09:33:15', '2026-08-31 14:33:15'),
(81, 1, 'departamento', 1, 'Vichada', '', '#6d28d9', 'activo', 30, '2026-08-31 09:33:23', '2026-08-31 14:33:23'),
(82, 1, 'departamento', 1, 'Cesar', '', '#6d28d9', 'activo', 31, '2026-08-31 09:33:33', '2026-08-31 14:33:33'),
(83, 1, 'departamento', 1, 'San Andrés y Providencia', '', '#6d28d9', 'activo', 32, '2026-08-31 09:33:52', '2026-08-31 14:33:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feriados`
--

CREATE TABLE `feriados` (
  `id_feriado` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(160) NOT NULL,
  `tipo` enum('dia_completo','rango_horario') NOT NULL DEFAULT 'dia_completo',
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `id_creado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `feriados`
--

INSERT INTO `feriados` (`id_feriado`, `id_pais_operacion`, `nombre`, `tipo`, `fecha_inicio`, `fecha_fin`, `descripcion`, `estado`, `id_creado_por`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'festivo', 'dia_completo', '2026-08-06 00:00:00', '2026-08-07 00:00:00', '', 'activo', 1, '2026-08-05 12:58:10', '2026-08-05 17:58:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_acciones`
--

CREATE TABLE `historial_acciones` (
  `id_historial` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `accion` varchar(160) NOT NULL,
  `detalle` text DEFAULT NULL,
  `fecha_accion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_emisor` int(11) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificacion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED DEFAULT NULL,
  `titulo` varchar(180) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `leida` tinyint(1) NOT NULL DEFAULT 0,
  `creada_en` datetime NOT NULL DEFAULT current_timestamp(),
  `leida_en` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id_notificacion`, `id_usuario`, `id_ticket`, `id_ticket_etapa`, `titulo`, `mensaje`, `leida`, `creada_en`, `leida_en`) VALUES
(1, 2, 1, 1, 'Nuevo ticket asignado', 'El Caso 1, etapa 1, está disponible para su gestión.', 1, '2026-08-28 09:21:25', '2026-08-28 12:42:07'),
(2, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 09:38:35', '2026-08-28 09:39:11'),
(3, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 09:39:14', '2026-08-28 09:39:14'),
(4, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:42:17', '2026-08-28 12:43:18'),
(5, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:43:21', '2026-08-28 12:48:25'),
(6, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:43:22', '2026-08-28 12:48:25'),
(7, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:47:22', '2026-08-28 12:48:25'),
(8, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:48:01', '2026-08-28 12:48:25'),
(9, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:48:27', '2026-08-28 12:57:15'),
(10, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:48:28', '2026-08-28 12:57:15'),
(11, 2, 1, 3, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1 del Caso 1.', 1, '2026-08-28 12:51:10', '2026-08-28 12:51:10'),
(12, 9, 1, 3, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1 para Talento Humano / Novedades de nómina.', 1, '2026-08-28 12:51:10', '2026-08-28 12:57:48'),
(13, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:54:57', '2026-08-28 12:57:15'),
(14, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:54:59', '2026-08-28 12:57:15'),
(15, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:56:32', '2026-08-28 12:57:15'),
(16, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:57:17', '2026-08-28 12:58:07'),
(17, 9, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-28 12:58:09', '2026-08-31 09:04:47'),
(18, 2, 1, 1, 'Nuevo mensaje en Caso 1 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 1 · etapa 1.', 1, '2026-08-31 09:04:50', '2026-08-31 14:31:13'),
(19, 2, 2, 4, 'Nuevo ticket asignado', 'El Caso 2, etapa 1, está disponible para su gestión.', 1, '2026-08-31 09:05:33', '2026-08-31 09:06:04'),
(20, 9, 2, 4, 'Atención lista para revisión', 'El gestor asignado marcó Caso 2 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-08-31 09:09:07', '2026-08-31 09:09:40'),
(21, 2, 2, 4, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 2 · etapa 1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-08-31 09:09:50', '2026-08-31 14:31:10'),
(22, 4, 2, 5, 'Caso habilitado para su área', 'El caso anterior del ticket #2 terminó. Ya puede atenderlo.', 1, '2026-08-31 09:09:50', '2026-08-31 09:13:06'),
(23, 9, 2, 5, 'Atención lista para revisión', 'El gestor asignado marcó Caso 2 · etapa 2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-08-31 09:13:22', '2026-08-31 09:13:37'),
(24, 4, 2, 5, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 2 · etapa 2. Gestión: 5/5; tiempo: 5/5.', 0, '2026-08-31 09:14:09', NULL),
(25, 9, 2, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #2 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-08-31 09:14:09', '2026-08-31 09:14:11'),
(26, 2, 1, 3, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-08-31 09:16:04', '2026-08-31 09:16:04'),
(27, 2, 1, 1, 'Caso padre reanudado', 'Todos los hijos del ticket #1 finalizaron. Su SLA volvió a correr.', 1, '2026-08-31 09:16:42', '2026-08-31 09:16:42'),
(28, 9, 1, 1, 'Atención lista para revisión', 'El gestor asignado marcó Caso 1 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-08-31 09:17:14', '2026-08-31 09:17:47'),
(29, 2, 1, 1, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 1 · etapa 1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-08-31 09:17:56', '2026-08-31 14:31:14'),
(30, 4, 1, 2, 'Caso habilitado para su área', 'El caso anterior del ticket #1 terminó. Ya puede atenderlo.', 1, '2026-08-31 09:17:56', '2026-08-31 09:18:41'),
(31, 9, 1, 2, 'Atención lista para revisión', 'El gestor asignado marcó Caso 1 · etapa 2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-08-31 09:18:53', '2026-08-31 09:19:06'),
(32, 4, 1, 2, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 1 · etapa 2. Gestión: 5/5; tiempo: 5/5.', 0, '2026-08-31 09:19:17', NULL),
(33, 9, 1, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #1 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-08-31 09:19:17', '2026-08-31 09:19:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises_operacion`
--

CREATE TABLE `paises_operacion` (
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `codigo` char(2) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `zona_horaria` varchar(80) NOT NULL,
  `color_primario` char(7) NOT NULL,
  `color_secundario` char(7) NOT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `orden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises_operacion`
--

INSERT INTO `paises_operacion` (`id_pais_operacion`, `codigo`, `nombre`, `zona_horaria`, `color_primario`, `color_secundario`, `estado`, `orden`, `creado_en`) VALUES
(1, 'CO', 'Conectar', 'America/Bogota', '#0f6fec', '#facc15', 'activo', 1, '2026-08-05 08:50:04'),
(2, 'PE', 'Telecomunicaciones', 'America/Lima', '#c81e3a', '#ffffff', 'activo', 2, '2026-08-05 08:50:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id_proceso` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(160) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_por` int(11) DEFAULT NULL,
  `actualizado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id_proceso`, `id_pais_operacion`, `nombre`, `descripcion`, `estado`, `creado_por`, `actualizado_por`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'Ingreso', 'Ingreso', 'activo', 1, 1, '2026-08-03 09:39:57', '2026-08-05 13:50:04'),
(2, 1, 'asignacion de computador', 'diligenciado', 'activo', 1, 1, '2026-08-03 11:52:26', '2026-08-05 13:50:04'),
(3, 1, 'Jurídica · Revisión de contratos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:30:34', '2026-08-05 13:50:04'),
(4, 1, 'Contabilidad · Declaración de impuestos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:30:34', '2026-08-05 13:50:04'),
(5, 1, 'Adquisiciones · Solicitud de compra', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:30:34', '2026-08-05 13:50:04'),
(6, 1, 'Seguridad Integral · Reporte de incidente de seguridad', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:30:34', '2026-08-05 13:50:04'),
(7, 1, 'TICs · asignacion de computador', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:30:34', '2026-08-05 13:50:04'),
(8, 1, 'Talento Humano · Ingreso', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-03 12:37:50', '2026-08-21 19:38:20'),
(9, 1, 'TICs · Inconvenientes tecnologicos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-05 14:29:07', '2026-08-25 16:22:37'),
(10, 1, 'TICs · Recepción de equipos y entrega de otro', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-05 14:31:20', '2026-08-05 19:31:20'),
(11, 2, 'TICs · reparacion de computador', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-12 15:59:21', '2026-08-12 20:59:21'),
(12, 2, 'Seguridad Integral · Incidente de seguridad', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-12 16:02:23', '2026-08-12 21:02:23'),
(13, 1, 'Administración · Cotización de los recursos operativos.', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-25 11:48:51', '2026-08-25 16:48:51'),
(14, 1, 'Administración · 0', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-25 16:00:35', '2026-08-25 21:00:35'),
(15, 1, 'Administración · Cotización de los recursos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-25 16:00:35', '2026-08-25 21:00:35'),
(16, 1, 'Administración · 0 · S17', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 08:22:05', '2026-08-26 13:22:05'),
(17, 1, 'Administración · Adecuaciones y/o remodelaciones Locaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(18, 1, 'Administración · Adquisición de Pólizas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(19, 1, 'Administración · Adquisición, Traslado y/o Reubicación de Servicios Seguridad Electrónica', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(20, 1, 'Administración · Alquiler Locaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(21, 1, 'Administración · Asignación, Cancelación de Usuarios y Contraseñas del Sistema de Monitoreo y Alarma', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(22, 1, 'Administración · Contratista y/o gestor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(23, 1, 'Administración · Correspondencia y Paquetes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(24, 1, 'Administración · Cotización Adecuaciones y/o remodelaciones Locaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(25, 1, 'Administración · Cotización de Logística y eventos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(26, 1, 'Administración · Cotización de Pólizas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(27, 1, 'Administración · Cotización de Servicios de Seguridad Electrónica', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(28, 1, 'Administración · Cotización Equipamiento de locación y/u oficina', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(29, 1, 'Administración · Cotización Locaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(30, 1, 'Administración · Cotización Personal de Imagen (personal de servicios generales)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(31, 1, 'Administración · Cotización Personal de Seguridad Física', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(32, 1, 'Administración · Creación de proveedor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(33, 1, 'Administración · Disposición final de Materiales y Herramientas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(34, 1, 'Administración · Documentos soporte para Reclamación de Siniestro', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(35, 1, 'Administración · Dotación Corporativa', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(36, 1, 'Administración · Dotación Operativa', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(37, 1, 'Administración · Elementos de Papelería y Aseo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(38, 1, 'Administración · Equipamiento de locación y/u oficina', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(39, 1, 'Administración · Estado de Cuenta de Arrendamiento de Parqueaderos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(40, 1, 'Administración · Facturación Arrendamientos Parqueaderos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(41, 1, 'Administración · Facturación de Líneas- alquileres', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(42, 1, 'Administración · Facturación de Transportadores', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(43, 1, 'Administración · Facturación Parque Automotor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(44, 1, 'Administración · Finalización de Pólizas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(45, 1, 'Administración · Gestión Documental (Archivo Inactivo)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(46, 1, 'Administración · Logística y eventos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(47, 1, 'Administración · Mantenimiento de Maquinaria y equipos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(48, 1, 'Administración · Mantenimiento de Sistemas de Seguridad Electrónica Correctivos / Emergencias', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(49, 1, 'Administración · Mantenimientos Locativos - Correctivos / Emergencia', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(50, 1, 'Administración · Personal de Imagen (personal de servicios generales)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(51, 1, 'Administración · Personal de Seguridad Física', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(52, 1, 'Administración · Producto No conforme', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(53, 1, 'Administración · Recurso Caja Menor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(54, 1, 'Administración · Recursos Administrativos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(55, 1, 'Administración · Recursos Mobiliarios', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(56, 1, 'Administración · Recursos Operativos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(57, 1, 'Administración · Renovación de Pólizas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(58, 1, 'Administración · Reporte de Siniestros', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(59, 1, 'Calidad y Planeación estratégica · Acompañamiento en diligenciamiento de matriz de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(60, 1, 'Calidad y Planeación estratégica · Acompañamiento en gestión documental (creación o control de cambios y/o procedimientos)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(61, 1, 'Calidad y Planeación estratégica · Acompañamiento para plan de trabajo por iniciativas de la planeación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(62, 1, 'Calidad y Planeación estratégica · Auditoría a procesos en gestión SIG', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(63, 1, 'Calidad y Planeación estratégica · Capacitación en gestión de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(64, 1, 'Calidad y Planeación estratégica · Capacitación en gestión documental', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(65, 1, 'Calidad y Planeación estratégica · Codificación y publicación de documentos en WebCom', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(66, 1, 'Calidad y Planeación estratégica · Gestión de no conformidades de auditoría externa e interna', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(67, 1, 'Calidad y Planeación estratégica · Seguimiento a controles establecidos de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(68, 1, 'Calidad y Planeación estratégica · Solicitud de información del consolidado de planeación estratégica', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(69, 2, 'Talento Humano · prueba talento humano', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-01 09:18:50', '2026-09-01 14:18:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_etapas`
--

CREATE TABLE `proceso_etapas` (
  `id_proceso_etapa` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_gestor` int(11) DEFAULT NULL,
  `id_sla` int(11) DEFAULT NULL,
  `orden` int(10) UNSIGNED NOT NULL,
  `nombre_etapa` varchar(160) DEFAULT NULL,
  `instrucciones` varchar(1000) DEFAULT NULL,
  `requiere_comentario_cierre` tinyint(1) NOT NULL DEFAULT 0,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proceso_etapas`
--

INSERT INTO `proceso_etapas` (`id_proceso_etapa`, `id_proceso`, `id_servicio`, `id_gestor`, `id_sla`, `orden`, `nombre_etapa`, `instrucciones`, `requiere_comentario_cierre`, `estado`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 7, 2, 4, 2, 'Asignacion de computador', NULL, 0, 'activo', '2026-08-03 09:44:10', '2026-08-03 21:51:44'),
(2, 1, 5, 2, 4, 1, 'Ingreso', NULL, 0, 'activo', '2026-08-03 09:51:45', '2026-08-03 21:51:44'),
(3, 2, 6, 2, 2, 1, 'diligenciado', NULL, 0, 'activo', '2026-08-03 11:53:12', '2026-08-03 21:51:44'),
(4, 2, 7, 2, 4, 2, 'Asignacion de computador', NULL, 0, 'activo', '2026-08-03 11:53:39', '2026-08-03 21:51:44'),
(5, 3, 3, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(6, 4, 2, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(7, 5, 1, 2, 2, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(8, 6, 4, 2, 2, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(9, 7, 7, 2, 4, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(10, 3, 7, 2, 4, 2, 'Asignacion de computador', 'asignar computador', 0, 'activo', '2026-08-03 12:32:51', '2026-08-03 21:51:44'),
(11, 6, 5, 2, 4, 2, 'estado del colaborador', NULL, 0, 'activo', '2026-08-03 12:33:50', '2026-08-03 21:51:44'),
(12, 8, 8, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:37:50', '2026-08-03 21:51:44'),
(13, 8, 7, 2, 4, 4, 'Asignacion de computador', NULL, 0, 'activo', '2026-08-03 12:38:13', '2026-08-03 21:51:44'),
(14, 8, 5, 2, 4, 3, 'Certificacion bancaria', NULL, 0, 'activo', '2026-08-03 12:38:49', '2026-08-03 21:51:44'),
(15, 8, 3, 2, 3, 2, 'contratación', NULL, 0, 'activo', '2026-08-03 12:39:13', '2026-08-03 21:51:44'),
(16, 9, 9, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-05 14:29:07', '2026-08-05 19:29:07'),
(17, 9, 6, NULL, NULL, 2, 'Validacion de equipo', NULL, 0, 'activo', '2026-08-05 14:29:50', '2026-08-05 19:29:50'),
(18, 10, 10, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-05 14:31:20', '2026-08-05 19:31:20'),
(19, 9, 7, NULL, NULL, 3, 'Recepcion de computador', NULL, 0, 'activo', '2026-08-05 14:31:42', '2026-08-05 19:31:42'),
(20, 11, 11, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-12 15:59:21', '2026-08-12 20:59:21'),
(21, 12, 12, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-12 16:02:23', '2026-08-12 21:02:23'),
(22, 11, 12, NULL, NULL, 2, NULL, NULL, 0, 'activo', '2026-08-12 16:02:52', '2026-08-12 21:02:52'),
(23, 7, 5, NULL, NULL, 2, NULL, NULL, 0, 'activo', '2026-08-25 07:53:21', '2026-08-25 12:53:21'),
(24, 13, 14, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-25 11:48:51', '2026-08-25 16:48:51'),
(25, 14, 16, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-25 16:00:35', '2026-08-25 21:00:35'),
(26, 15, 15, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-25 16:00:35', '2026-08-25 21:00:35'),
(27, 16, 17, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 08:22:05', '2026-08-26 13:22:05'),
(28, 17, 37, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(29, 18, 48, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(30, 19, 53, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(31, 20, 36, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(32, 21, 55, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(33, 22, 31, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(34, 23, 39, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(35, 24, 43, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(36, 25, 46, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(37, 26, 47, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(38, 27, 56, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(39, 28, 45, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(40, 29, 42, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(41, 30, 44, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(42, 31, 57, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(43, 32, 25, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(44, 33, 28, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(45, 34, 60, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(46, 35, 23, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(47, 36, 22, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(48, 37, 33, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(49, 38, 35, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(50, 39, 59, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(51, 40, 58, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(52, 41, 29, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(53, 42, 27, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(54, 43, 26, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(55, 44, 50, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(56, 45, 41, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(57, 46, 40, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(58, 47, 24, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(59, 48, 52, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(60, 49, 32, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(61, 50, 38, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:54', '2026-08-26 16:19:54'),
(62, 51, 54, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(63, 52, 30, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(64, 53, 34, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(65, 54, 19, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(66, 55, 20, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(67, 56, 21, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(68, 57, 49, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(69, 58, 51, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-26 11:19:55', '2026-08-26 16:19:55'),
(70, 59, 65, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(71, 60, 62, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(72, 61, 71, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(73, 62, 67, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(74, 63, 64, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(75, 64, 61, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(76, 65, 63, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(77, 66, 68, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(78, 67, 66, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(79, 68, 70, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(80, 69, 13, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-01 09:18:50', '2026-09-01 14:18:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_etapa_checklist`
--

CREATE TABLE `proceso_etapa_checklist` (
  `id_checklist` int(11) NOT NULL,
  `id_proceso_etapa` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `obligatorio` tinyint(1) NOT NULL DEFAULT 1,
  `requiere_evidencia` tinyint(1) NOT NULL DEFAULT 0,
  `orden` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proceso_etapa_checklist`
--

INSERT INTO `proceso_etapa_checklist` (`id_checklist`, `id_proceso_etapa`, `nombre`, `descripcion`, `obligatorio`, `requiere_evidencia`, `orden`, `estado`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'Documentos diligenciados', NULL, 1, 0, 1, 'activo', '2026-08-03 09:50:13', '2026-08-03 14:50:13'),
(2, 2, 'Documentos diligenciados', NULL, 1, 0, 1, 'activo', '2026-08-03 09:52:03', '2026-08-03 14:52:03'),
(3, 16, 'Documentos diligenciados', NULL, 1, 0, 1, 'activo', '2026-08-05 15:33:04', '2026-08-05 20:33:04'),
(4, 16, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 'activo', '2026-08-05 15:34:13', '2026-08-05 20:34:13'),
(5, 5, '¿Se valido identidad?', NULL, 1, 0, 1, 'activo', '2026-08-06 12:07:35', '2026-08-06 17:07:35'),
(7, 17, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 1, 'activo', '2026-08-12 10:53:19', '2026-08-12 15:53:19'),
(8, 12, '¿Documentos diligenciados?', NULL, 1, 0, 1, 'activo', '2026-08-12 11:18:15', '2026-08-12 16:18:15'),
(9, 20, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 1, 'activo', '2026-08-12 15:59:43', '2026-08-12 20:59:43'),
(10, 22, '¿Documentos diligenciados?', NULL, 1, 0, 1, 'activo', '2026-08-12 16:03:04', '2026-08-12 21:03:04'),
(11, 6, 'Documentos diligenciados', NULL, 1, 0, 1, 'activo', '2026-08-24 16:57:28', '2026-08-24 21:57:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperaciones_password`
--

CREATE TABLE `recuperaciones_password` (
  `id_recuperacion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo_hash` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `intentos` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `solicitado_ip_hash` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `expira_en` datetime NOT NULL,
  `usado_en` datetime DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recuperaciones_password`
--

INSERT INTO `recuperaciones_password` (`id_recuperacion`, `id_usuario`, `codigo_hash`, `intentos`, `solicitado_ip_hash`, `expira_en`, `usado_en`, `creado_en`) VALUES
(6, 4, '06a8f528c8a128aeb969fb4c3aa52904d9b79896305468335a9fbb4cc587646a', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-28 12:34:39', '2026-08-28 12:24:39', '2026-08-28 12:24:39'),
(7, 4, 'e3e61284aaa2f24e89fa20d451ac5e107255db5e31377b7d9c261be48f884474', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-28 12:44:00', '2026-08-28 12:34:00', '2026-08-28 12:34:00'),
(8, 4, '02396bc3b66798a7145ee3ba337d25c61a7808d380d7c7c270d89f0f7457778f', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-28 12:48:32', NULL, '2026-08-28 12:38:32'),
(9, 2, '35e2e5975d1265559f2cb1363948526219d384b5c523df680ce6ef22b2c0d14e', 0, 'fcf6fba76c5b1a145e0c0baed6f2ab60fdee0c1df21c19c2215acbfd7dcfa93a', '2026-08-28 21:48:11', '2026-08-31 09:01:28', '2026-08-28 21:38:11'),
(10, 2, '2e2af73d966da1a904c8633cc338c7bdc7b5dc1c81f1604693ec3647f9d8593b', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-31 09:11:28', '2026-08-31 11:11:20', '2026-08-31 09:01:28'),
(11, 2, '217b1788c4fefb75feccca859a869aa5f71f12a8cff53ad50e63f77f87ff9677', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-31 11:21:20', NULL, '2026-08-31 11:11:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`, `descripcion`, `estado`, `creado_en`) VALUES
(1, 'Administrador', 'Administración completa de la Mesa de Servicio.', 'activo', '2026-07-31 09:00:22'),
(2, 'Gestor', 'Atención y gestión de los tickets asignados.', 'activo', '2026-07-31 09:00:22'),
(3, 'Solicitante', 'Creación y seguimiento de solicitudes.', 'activo', '2026-07-31 09:00:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_intentos_login`
--

CREATE TABLE `seguridad_intentos_login` (
  `clave` char(64) NOT NULL,
  `intentos` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ultimo_intento` datetime NOT NULL DEFAULT current_timestamp(),
  `bloqueado_hasta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seguridad_intentos_login`
--

INSERT INTO `seguridad_intentos_login` (`clave`, `intentos`, `ultimo_intento`, `bloqueado_hasta`) VALUES
('04b250cd8d59a1eefcabc4ff0a8a5da2867058eb8b5729cb7a0989d8598adc5e', 1, '2026-08-19 07:39:19', NULL),
('0d2133a48d57cc9c2974ae47590b7dc0b47fc69f555e050b4b55df01e7b88d7c', 1, '2026-08-21 11:19:11', NULL),
('17dec779f9551d0fa950a87b7e8aa6c20c00cc72b721f0314c4e8c22fd0e3f0e', 1, '2026-08-21 12:02:46', NULL),
('289496a0a5ef44375cfd09dea810e2fdfbc10258a07b244766a21d3b2be58973', 1, '2026-08-12 16:20:29', NULL),
('4122d68665b821697cb55b0a8b07a436fd8eb3fb18fca19a38bb151b82137b93', 1, '2026-08-21 12:41:26', NULL),
('49acaa3b87fc32d801fc302c79ea88cfb084e788a9c165eaf4d587b0107617ee', 1, '2026-08-31 09:10:26', NULL),
('7fec2e1663715cc67851c00a2f0e2146d17d41523d211a40bdc2264d956d7e4c', 1, '2026-08-31 09:11:22', NULL),
('877e81f31325e9014fbbfe60c1ad7722e03bab38c47149640f70a50e305e658c', 1, '2026-08-12 16:06:16', NULL),
('b94edceade70d83214a30d9839bc23ed9752673e972d90e843ebccc1ccf6392d', 2, '2026-08-21 15:01:45', NULL),
('ce8ee4b118c04d130a3fa4abea2acf7be5b15c27cebe019ada8f2dd39e41484e', 1, '2026-08-12 15:11:10', NULL),
('cebe38659d8b267c22a7a196233c4ababe152a46df6b9481ae98b5ffe358040e', 1, '2026-08-28 08:18:38', NULL),
('d443c181866163143d3e4d739e9fee36bc0de5e0f3e58804686750e51b7e4c79', 1, '2026-08-20 07:41:57', NULL),
('e141f6e9cd5118635192a74352cb4bca4ca1fb1d6e675e811fd50ebd9eae5e65', 1, '2026-08-31 09:11:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `id_catalogo` int(11) NOT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `id_sla` int(11) NOT NULL,
  `id_gestor` int(11) DEFAULT NULL,
  `nombre` varchar(160) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_solicitud` varchar(120) NOT NULL DEFAULT 'Requerimiento',
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `id_pais` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_prioridad` int(11) DEFAULT NULL,
  `prioridad_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `id_urgencia` int(11) DEFAULT NULL,
  `urgencia_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `id_nivel` int(11) DEFAULT NULL,
  `id_impacto` int(11) DEFAULT NULL,
  `impacto_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `id_estado` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `proceso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `id_pais_operacion`, `id_catalogo`, `id_proceso`, `id_sla`, `id_gestor`, `nombre`, `descripcion`, `tipo_solicitud`, `estado`, `id_pais`, `id_ciudad`, `id_departamento`, `id_prioridad`, `prioridad_valor`, `id_urgencia`, `urgencia_valor`, `id_nivel`, `id_impacto`, `impacto_valor`, `id_estado`, `creado_en`, `actualizado_en`, `proceso`) VALUES
(1, 1, 1, NULL, 10, 2, 'Cotización de los recursos administrativos.', 'Definición:\r\nGestión y elaboración de cotizaciones relacionadas con servicios y recursos administrativos, incluyendo mantenimientos, arreglos locativos, alquileres de equipos (impresoras, computadores, entre otros) y líneas telefónicas.\r\n\r\nSolicitud:\r\n\"Para una cotización mas eficiente por favor adjuntar y diligenciar el formato de cotización COL-SIG-ADM-FOR-3 F y la siguiente información:\r\nDescribir detalladamente el tipo de materiales o herramientas,  sí aplica algún presupuesto, ficha técnica e imagen y ciudad de entrega\"\r\n\r\nSLA 8 Días.', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-07-31 09:00:22', '2026-08-26 20:16:37', 'Adquisiciones'),
(2, 1, 2, NULL, 5, 4, 'Declaración de impuestos', 'Gestión tributaria y declaración de impuestos.', 'Requerimiento', 'activo', 1, 2, 9, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-07-31 09:00:22', '2026-08-27 17:23:08', 'Infraestructura'),
(3, 1, 3, NULL, 3, 2, 'Revisión de contratos', 'Revisión y análisis de documentos contractuales.', 'Requerimiento', 'activo', 1, 2, 9, 13, 3, 15, 2, 18, 22, 2, NULL, '2026-07-31 09:00:22', '2026-08-25 20:45:53', NULL),
(4, 1, 4, NULL, 2, 2, 'Reporte de incidente de seguridad', 'Atención de novedades de seguridad integral.', 'problema', 'activo', 1, 2, 9, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-07-31 09:00:22', '2026-08-27 15:05:09', 'Adquisiciones'),
(5, 1, 5, NULL, 4, 2, 'Novedades de nómina', 'Gestión de novedades relacionadas con nómina.', 'Requerimiento', 'activo', 1, 2, 9, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-07-31 09:00:22', '2026-08-25 20:45:53', NULL),
(6, 1, 6, NULL, 2, 2, 'Soporte técnico general', 'Atención de incidentes y requerimientos de TICs.', 'Incidente', 'activo', 1, 2, 9, 12, 4, 16, 3, 18, 22, 2, NULL, '2026-07-31 09:00:22', '2026-08-25 20:45:53', NULL),
(7, 1, 6, NULL, 4, 4, 'asignacion de computador', 'na', 'Requerimiento', 'activo', 1, 2, 9, 11, 1, 14, 1, 18, 21, 1, NULL, '2026-08-03 09:41:53', '2026-08-25 20:45:53', NULL),
(8, 1, 5, NULL, 3, 2, 'Ingreso', 'Ingreso del colaborador a la empresa', 'Requerimiento', 'activo', 1, 2, 9, 11, 4, 15, 2, 18, 23, 3, NULL, '2026-08-03 12:37:47', '2026-08-25 20:45:53', NULL),
(9, 1, 6, NULL, 4, 4, 'Inconvenientes tecnologicos', 'Cuando el equipo no prende, no inicia o no puede usarlo', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-05 14:29:05', '2026-08-25 20:45:53', NULL),
(10, 1, 6, NULL, 1, 4, 'Recepción de equipos y entrega de otro', 'Cuando el equipo falla y no hay solucion se valida la causa y se le entrega uno nuevo', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-05 14:31:18', '2026-08-25 20:45:53', NULL),
(11, 2, 7, NULL, 6, 7, 'reparacion de computador', 'reparar computador', 'Incidente', 'activo', 34, 36, 35, 41, 1, 37, 1, 38, 39, 1, 40, '2026-08-12 15:58:40', '2026-08-25 19:35:00', NULL),
(12, 2, 8, NULL, 6, 7, 'Incidente de seguridad', 'cuando presencia algún incidente de seguridad', 'Incidente', 'activo', 34, 36, 35, 41, 1, 37, 1, 38, 39, 1, 40, '2026-08-12 16:00:56', '2026-08-25 19:35:00', NULL),
(13, 2, 9, NULL, 6, NULL, 'prueba talento humano', 'prueba', 'Requerimiento', 'activo', 34, 36, 35, 41, 1, 37, 1, 38, 39, 1, 40, '2026-08-24 12:28:41', '2026-08-25 19:35:00', NULL),
(14, 1, 1, NULL, 10, 2, 'Cotización de los recursos operativos.', 'Definición:\r\nGestión y elaboración de cotizaciones para la adquisición o alquiler de materiales, herramientas, equipos de alto valor y demás recursos necesarios para la operación.\r\n\r\nSolicitud:\r\n\"Para una cotización mas eficiente por favor adjuntar y diligenciar el formato de cotización COL-SIG-ADM-FOR-3 F y la siguiente información:\r\nDescribir detalladamente el tipo de materiales o herramientas, sí aplica algún presupuesto, ficha técnica e imagen y ciudad de entrega\"\r\n\r\nSLA 8 Días', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-25 11:38:51', '2026-08-26 20:21:15', 'Adquisiciones'),
(15, 1, 1, NULL, 9, 2, 'Alquiler de equipos de alto costo.', 'Descripción:\r\nGestión y generación de órdenes de compra para el alquiler de equipos especializados y de alto valor, como empalmadoras, OTDRs, carros canasta, grúas, entre otros.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ y la siguiente información:\r\nDescribir detalladamente el tipo de servicio que requiere, sí aplica algún presupuesto, ficha técnica y  cotización con correo de aprobación en pdf por parte del gerente del proyecto y  acta de implementación \"\r\n\r\nSLA 12 Días', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-25 12:20:56', '2026-08-26 20:21:32', 'Adquisiciones'),
(16, 1, 1, NULL, 7, 2, 'Servicios administrativos', 'Descripción:\r\nServicio enfocado en la adquisición y coordinación de recursos administrativos esenciales, incluyendo aseo, vigilancia, mensajería, fumigación, capacitaciones, exámenes médicos y alquiler de equipos informáticos, entre otros.\r\n\r\nsolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ y la siguiente información:\r\nDescribir detalladamente el tipo de servicio que requiere, sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-25 15:40:23', '2026-08-26 20:21:52', 'Adquisiciones'),
(17, 1, 1, NULL, 8, 2, 'Compra de maquinaria y equipos', 'Descripción:\r\nServicio de adquisición y gestión de compra de maquinaria y equipos técnicos de apoyo operativo, tales como OTDRs, empalmadoras, escaleras y plantas eléctricas, entre otros.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ y la siguiente información:\r\nDescribir detalladamente el tipo de maquinaria y equipo , sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA 60 días', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 08:07:22', '2026-08-26 20:22:33', 'Adquisiciones'),
(19, 1, 1, NULL, 10, 2, 'Recursos Administrativos', 'Descripción:\r\nAdquisición y gestión de insumos administrativos, incluyendo papelería, artículos de cafetería, elementos de aseo y demás materiales de apoyo para el funcionamiento operativo.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ y la siguiente información:\r\nDescribir detalladamente la compra administrativa , sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA 8 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 08:45:31', '2026-08-26 20:22:50', 'Adquisiciones'),
(20, 1, 1, NULL, 1, 2, 'Recursos Mobiliarios', 'Descripción:\r\nAdquisición de mobiliario y materiales para adecuación de espacios, incluyendo perreras, encerramientos, sillas, escritorios, mesas y otros elementos necesarios para el entorno laboral.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor adjuntar el formato de cotización COL-SIG-ADM-FOR-3 o RQ y la siguiente información:\r\nDescribir detalladamente el tipo de recurso inmobiliario sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA 15 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 08:48:00', '2026-08-26 20:25:15', 'Adquisiciones'),
(21, 1, 1, NULL, 1, 2, 'Recursos Operativos', 'Descripción:\r\nAdquisición de materiales, herramientas y demás recursos necesarios para el desarrollo de las diferentes actividades.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ  y la siguiente información:\r\nDescribir detalladamente el tipo de  materiales o herramientas,  sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto y acta de PMO sí es implementación \"', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 08:50:43', '2026-08-26 20:26:17', 'Adquisiciones'),
(22, 1, 1, NULL, 3, 2, 'Dotación Operativa', 'Descripción:\r\nAdquisición de elementos de dotación destinados al personal operativo, incluyendo reposición por cambio, mantenimiento de stock e implementación de nuevos recursos.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar el formato de cotización COL-SIG-ADM-FOR-3 y/o RQ  y la siguiente información:\r\nDescribir detalladamente el tipo de  dotación que requiere,  sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto y acta de PMO sí  una implementación \"\r\n\r\nSLA 20 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 08:52:11', '2026-08-26 20:26:49', 'Adquisiciones'),
(23, 1, 1, NULL, 8, 2, 'Dotación Corporativa', 'Descripción:\r\nPlaneación y asignación trimestral de dotación corporativa al personal.\r\n\r\nSolicitud:\r\nPara una optima atención de sus solicitudes, por favor  adjuntar base previamente validada con cada proyecto con correo de aprobación del gerente por operación\r\n\r\nSLA 60 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 08:58:47', '2026-08-26 20:28:37', 'Adquisiciones'),
(24, 1, 1, NULL, 7, 2, 'Mantenimiento de Maquinaria y equipos', 'Descripción:\r\nMantenimiento, calibración, arreglos  de empalmadoras, escaleras, OTDRs entre otros\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar el formato de cotización o RQ  y la siguiente información:\r\nDescribir detalladamente el tipo de mantenimiento que se  requiere,  sí aplica algún presupuesto, ficha técnica Y  cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA 10 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:00:12', '2026-08-26 20:29:00', 'Adquisiciones'),
(25, 1, 1, NULL, 10, 2, 'Creación de proveedor', 'Descripción:\r\nSolicitud de creación de proveedor de servicios, materiales y herramientas entre otros. \r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar: \r\n• Rut\r\n• Cámara de comercio\r\n• CC del representante legal\r\n• Certificación bancaria\r\n• Certificado Composición accionaria\r\n• Licencias y Acreditaciones a que haya lugar\r\n• Formulario adjunto diligenciado en su totalidad y firmado. Formato PDF\r\n• Formato de no contratación de menores de edad y aplicación de buenas prácticas de responsabilidad social empresarial; firmado.\r\n• Llenar el siguiente formulario para el reporte de conflicto de intereses y adjuntar pantallazos (Se debe diligenciar el formulario con el NIT de la empresa y la CC del representante legal) ;\r\n• https://forms.office.com/r/nW5NwgUi3Rb  \"\r\n\r\nSLA 8 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-08-26 09:01:35', '2026-08-26 20:29:16', 'Adquisiciones'),
(26, 1, 1, NULL, 4, 2, 'Facturación Parque Automotor', 'Descripción:\r\nFacturas y cuentas de cobro de: lavado de vehículo, combustible, mantenimiento, peajes entre otros \r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar: \r\nExcel con distribución teniendo en cuenta que los valores son antes de IVA , factura, Rut y cuenta bancaría sí aplica \r\nTener en cuenta que se entrega a contabilidad las facturas el día martes de cada semana. \"\r\n\r\nSLA 5 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:08:35', '2026-08-26 20:29:37', 'Adquisiciones'),
(27, 1, 1, NULL, 4, 2, 'Facturación de Transportadores', 'Descripción:\r\nCuenta de cobro de alquiler de vehículo\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar: \r\nExcel con distribución teniendo en cuenta que los valores son antes de IVA , factura, Rut y cuenta bancaría sí aplica \r\nTener en cuenta que se entrega a contabilidad las facturas el día martes de cada semana. \"\r\n\r\nSLA 5 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:09:51', '2026-08-26 20:29:50', 'Adquisiciones'),
(28, 1, 1, NULL, 7, 10, 'Disposición final de Materiales y Herramientas', 'Descripción:\r\nDar de baja a materiales, dotaciones, epps, escaleras, elementos tecnológicos a nivel nacional \r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar: \r\nActa relacionando que materiales o herramientas se van a pasar a disposición final, en el acta es indispensable que esta descripción del material y herramienta, cantidades, ciudades y dirección de recogida. \"\r\n\r\nSLA 10 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:12:15', '2026-08-26 21:12:32', 'Disposición final de Materiales y Herramientas'),
(29, 1, 1, NULL, 4, 2, 'Facturación de Líneas- alquileres', 'Descripción:\r\nFacturas de líneas telefónicas y alquileres\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar: \r\nExcel con distribución teniendo en cuenta que los valores son antes de IVA , factura, Rut y cuenta bancaría sí aplica \r\nTener en cuenta que se entrega a contabilidad las facturas el día martes de cada semana. \"\r\n\r\nSLA 5 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:14:38', '2026-08-26 20:16:02', 'Adquisiciones'),
(30, 1, 1, NULL, 10, 2, 'Producto No conforme', 'Descripción:\r\nPermite registrar una queja formal relacionada con la calidad o garantía de un producto o servicio recibido. El caso será evaluado y escalado con el proveedor correspondiente para su gestión y resolución.\r\n\r\nSolicitud:\r\n\"Para una optima atención de sus solicitudes, por favor  adjuntar:\r\nFotos del producto o video, \r\nExplicación especifica del producto no conforme con fecha. \"\r\n\r\nSLA 8 Días', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:17:29', '2026-08-26 20:30:11', 'Adquisiciones'),
(31, 1, 1, NULL, 3, 11, 'Contratista y/o gestor', 'Descripción:\r\nValidación y consecución de un aliado para la tercerización de mano de obra. \r\n\r\nSolicitud:\r\n\"Adjuntar la siguiente documentación\r\n- Acta de la PMO \r\n- Listado de precios a ofertar al contratista\r\n- Alcance especifico del contrato.\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\"\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:18:44', '2026-08-26 21:13:03', 'Aliados'),
(32, 1, 1, NULL, 4, 4, 'Mantenimientos Locativos - Correctivos / Emergencia', 'Descripción:\r\nSolicitud de mantenimientos locativos correctivos, estos pueden ser: muebles, enseres, sistemas sanitarios(fuga), cerramientos, jaulas, iluminación, cerraduras, candados.\r\n\r\nSolicitud:\r\nAdjuntar imagen donde se evidencie el estado actual de su requerimiento. Dirigirse a la pestaña campos extras y llenar la solicitud. \r\n\r\nSLA 5 días', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:21:36', '2026-08-26 20:53:51', 'Infraestructura'),
(33, 1, 1, NULL, 9, 4, 'Elementos de Papelería y Aseo', 'Descripción:\r\nEste requerimiento se debe realizar los 20 de cada mes con el fin de abastecer el proceso y/o proyecto durante un mes. \r\n\r\nSolicitud:\r\nLos 15 de cada mes se realiza el envió del archivo con los precios actualizados vía correo, con el fin de que el analista encargado realice el pedido, adjuntar archivo con las cantidades y valores,  correo con la aprobación del jefe de proyecto y/o proceso, este debe aprobar el valor de la compra, en caso de que se tenga disponible, no se realiza la compra. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 12 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:22:43', '2026-08-26 21:11:54', 'Infraestructura'),
(34, 1, 1, NULL, 2, 4, 'Recurso Caja Menor', 'Descripción:\r\nSolicitud de dinero para pagos prioritarios autorizados por jefe transversal del proceso, por ejemplo alquiler de montacarga, envíos contra entrega, envíos correo certificado y transportes internos. \r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 1 día', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:23:41', '2026-08-26 21:12:12', 'Infraestructura'),
(35, 1, 1, NULL, 3, 4, 'Equipamiento de locación y/u oficina', 'Descripción:\r\nSolicitud de mobiliario que se requiera para el desarrollo de una operación ejemplo: puestos de trabajo (superficies de escritorio, sillas giratorias, silla interlocutora, bases pedestales, archivadores de piso, archivadores de pared, pupitres, tableros, televisores, mesas y sillas plásticas) \r\n\r\nSolicitud:\r\nEn caso de implementación adjuntar acta de inicio de proyecto, cotización seleccionada y correo con el aprobado del gerente y presupuesto asignado, en caso de que se el proyecto realice cambios adjuntar acta de control de cambios, correo con el aprobado del gerente y presupuesto asignado. En caso de que se tenga disponible, no se realiza la compra. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:25:07', '2026-08-26 21:12:04', 'Infraestructura'),
(36, 1, 1, NULL, 3, 4, 'Alquiler Locaciones', 'Descripción\r\nAlquiler de inmuebles que se requiera para el desarrollo de una operación. \r\n\r\nSolicitud:\r\nAdjuntar acta de inicio del proyecto y correo del aprobado del gerente y presupuesto asignado. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 09:25:57', '2026-08-26 21:11:41', 'Infraestructura'),
(37, 1, 1, NULL, 5, 13, 'Adecuaciones y/o remodelaciones Locaciones', 'Descripción:\r\nAdecuación y/o remodelación de un inmueble que se requiera para el desarrollo de una operación (nuevos espacios de oficinas, áreas de almacenamiento, cerramientos, jaulas, estanterías, baños existentes e iluminación)  \r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 30 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:27:26', '2026-08-26 21:12:45', 'Disposición final de Contratista y/o gestor y Herramientas'),
(38, 1, 1, NULL, 10, 4, 'Personal de Imagen (personal de servicios generales)', 'Descripción:\r\nSolicitud de personal de mantenimiento, limpieza y orden (auxiliar de mantenimiento y/o operaria) con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). Por favor describa su solicitud\r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 8 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:28:55', '2026-08-26 21:11:31', 'Infraestructura'),
(39, 1, 1, NULL, 11, 4, 'Correspondencia y Paquetes', 'Descripción:\r\nEsta solicitud es para envió de correspondencia y paquetes (sobres y cajas) a nivel nacional. \r\n\r\nSolicitud:\r\nAdjuntar imagen de lo que se va a enviar. Dirigirse a la pestaña campos extras y llenar la solicitud. Nota: si el caso se crea antes del medio día el envio se realia el mismo día. Si el caso se crea despues del medio día el envio se realiza al día siguiente.\r\n\r\nSLA 2 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:29:41', '2026-08-26 21:11:01', 'Infraestructura'),
(40, 1, 1, NULL, 4, 2, 'Logística y eventos', 'Descripción:\r\nSolicitud  de mobiliario que se requiera para inventarios y/o reuniones de clientes (refrigerios, mesas, sillas plásticas, tableros, TV, etc.). \r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:32:09', '2026-08-26 20:30:34', 'Adquisiciones'),
(41, 1, 1, NULL, 4, 4, 'Gestión Documental (Archivo Inactivo)', 'Descripción:\r\nSolicitud de espacio o retiro de archivo inactivo. \r\n\r\nSolicitud:\r\nSi es para espacio (entregar acta de lo que contiene cada caja) y si es para retiro de documentos o cajas (indicar número de caja). Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:33:01', '2026-08-26 21:11:23', 'Infraestructura'),
(42, 1, 1, NULL, 7, 2, 'Cotización Locaciones', 'Descripción:\r\nGestión y elaboración de cotizaciones para la adquisición o alquiler de inmuebles requeridos en el desarrollo de operaciones o proyectos de la organización.\r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:34:08', '2026-08-26 20:34:37', 'Adquisiciones'),
(43, 1, 1, NULL, 7, 4, 'Cotización Adecuaciones y/o remodelaciones Locaciones', 'Descripción:\r\nCotización de adecuación y/o remodelación de los inmuebles que se requieran para el desarrollo de una operación (nuevos espacios de oficinas, áreas de almacenamiento, cerramientos, jaulas, estanterías, baños existentes e iluminación)  \r\n\r\nSolicitud:\r\nAdjuntar propuesta de la adecuación y/o remodelación que se requiere para el inmueble. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:35:10', '2026-08-26 21:09:49', 'Infraestructura'),
(44, 1, 1, NULL, 7, 4, 'Cotización Personal de Imagen (personal de servicios generales)', 'Descripción:\r\nCotización de personal de mantenimiento, limpieza y orden (auxiliar de mantenimiento y/u operario) con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). Por favor describa su solicitud\r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:35:53', '2026-08-26 21:09:38', 'Infraestructura'),
(45, 1, 1, NULL, 7, 4, 'Cotización Equipamiento de locación y/u oficina', 'Descripción:\r\nCotización de mobiliario que se requiera para el desarrollo de una operación, ejemplo: puestos de trabajo (superficies de escritorio, sillas giratorias, silla interlocutora, bases pedestales, archivadores de piso, archivadores de pared, pupitres, tableros, televisores, mesas y sillas plásticas) \r\n\r\nSolución:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:41:42', '2026-08-26 21:09:18', 'Infraestructura'),
(46, 1, 1, NULL, 4, 4, 'Cotización de Logística y eventos', 'Descripción:\r\nCotización de mobiliario que se requiera para inventarios y/o reuniones de clientes (refrigerios, mesas, sillas plásticas, tableros, TV, etc.). \r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:43:03', '2026-08-26 21:09:05', 'Infraestructura'),
(47, 1, 1, NULL, 7, 4, 'Cotización de Pólizas', 'Descripción:\r\nCotización de pólizas que se requiera para el desarrollo de un proyecto (RFP,  nuevos contratos y ordenes de compra derivadas de un contrato marco), ejemplo: seriedad de la oferta, cumplimiento, calidad de la obra, prestaciones sociales, responsabilidad civil, todo riesgo, etc.\r\n\r\nSolicitud:\r\nAdjuntar documentos para realizar el respectivo proceso (RFP,  nuevos contratos y ordenes de compra derivadas de un contrato marco). Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:43:57', '2026-08-26 21:08:54', 'Infraestructura'),
(48, 1, 1, NULL, 3, 4, 'Adquisición de Pólizas', 'Descripción:\r\nSolicitud para la adquisición de pólizas que se requieran para el desarrollo de un proyecto (RFP,  nuevos contratos y ordenes de compra derivadas de un contrato marco), ejemplo: seriedad de la oferta, cumplimiento, calidad de la obra, prestaciones sociales, responsabilidad civil, todo riesgo,transporte,manejo global, etc.\r\n\r\nSolicitud:\r\nAdjuntar documentos firmados por la partes (RFP,  nuevos contratos y ordenes de compra derivadas de un contrato marco) ejemplo (seriedad de la oferta, cumplimiento, calidad de la obra, prestaciones sociales, responsabilidad civil, todo riesgo, transporte, manejo global, etc.). y correo de aprobación por parte del área jurídica de la compañía. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:44:48', '2026-08-26 20:53:27', 'Infraestructura'),
(49, 1, 1, NULL, 7, 4, 'Renovación de Pólizas', 'Descripción:\r\nSolicitud para la renovación de pólizas de contratos existentes, otrosí,  con ajustes al contrato inicial de cada cliente. \r\n\r\nSolicitud:\r\n\"Adjuntar documentos firmados por las partes (contrato, otrosí y/o ordenes de compra derivadas de un contrato marco) y aprobación por parte del área jurídica de la compañía. \r\nDirigirse a la pestaña campos extras y llenar la solicitud. Nota: Diligenciar la informacion como registran los documentos.\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:45:48', '2026-08-26 20:53:12', 'Infraestructura'),
(50, 1, 1, NULL, 7, 4, 'Finalización de Pólizas', 'Descripción:\r\nSolicitud para la finalización de pólizas existentes, ejemplo: seriedad de la oferta, cumplimiento, calidad de la obra, prestaciones sociales, responsabilidad civil, todo riesgo, etc.\r\n\r\nSolicitud:\r\n\"Adjuntar acta de finalización de contrato y aprobación por parte del área jurídica.\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 09:46:42', '2026-08-26 20:53:01', 'Infraestructura'),
(51, 1, 1, NULL, 3, 4, 'Reporte de Siniestros', 'Descripción:\r\n\"Solicitud para reportar todo siniestro indicando las circunstancias de tiempo, modo y lugar en las cuales se presentó el evento.\"\r\n\r\nSolicitud:\r\n\"Adjuntar\r\n  * Carta indicando las circunstancias de tiempo, modo y lugar en las cuales se presentó el evento \r\n * Evidencias fotográficas \r\n* Denuncia de Fiscalía   \r\n* Acta de asignación del equipo \r\n* Contrato laboral del funcionario. \r\nNota: Dirigirse a la pestaña Campos extras y llenar la solicitud.\"\r\n\r\nSLA 20 días', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:48:12', '2026-08-26 20:52:51', 'Infraestructura'),
(52, 1, 1, NULL, 12, 4, 'Mantenimiento de Sistemas de Seguridad Electrónica Correctivos / Emergencias', 'Descripción:\r\nSolicitud de mantenimientos de sistemas de seguridad electrónica estos pueden ser: sistema de circuito de alarmas, CCTV (circuito cerrado de televisión) o alarma contra incendios. \r\n\r\nSolicitud:\r\nAdjuntar imagen donde se evidencie el estado actual de su requerimiento. Dirigirse a la pestaña campos extras y llenar la solicitud. \r\n\r\nSLA 6 días', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 09:49:15', '2026-08-26 20:52:40', 'Infraestructura'),
(53, 1, 1, NULL, 3, 4, 'Adquisición, Traslado y/o Reubicación de Servicios Seguridad Electrónica', 'Descripción:\r\nSolicitud de servicios de seguridad electrónica para las locaciones ejemplo:  monitoreo y alarma, CCTV (circuito cerrado de televisión) o sistema contra incendios. \r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 09:51:24', '2026-08-26 20:52:30', 'Infraestructura'),
(54, 1, 1, NULL, 3, 4, 'Personal de Seguridad Física', 'Descripción:\r\nSolicitud de personal de seguridad física, para la protección de las locaciones de manera fija, acompañamientos a las móviles y servicios adicionales) con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). \r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:52:27', '2026-08-26 20:52:10', 'Infraestructura'),
(55, 1, 1, NULL, 4, 4, 'Asignación, Cancelación de Usuarios y Contraseñas del Sistema de Monitoreo y Alarma', 'Descripción:\r\nSolicitud de asignación, cancelación de usuarios y contraseñas de sistemas de seguridad electrónica como lo es el sistema de circuito de alarmas para aperturas y cierre de locaciones. \r\n\r\nSolicitud:\r\nAdjuntar correo de aprobación del gerente del proyecto. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:53:24', '2026-08-26 20:51:58', 'Infraestructura'),
(56, 1, 1, NULL, 7, 4, 'Cotización de Servicios de Seguridad Electrónica', 'Descripción:\r\nCotización de servicios de seguridad electrónica para las locaciones ejemplo:  monitoreo y alarma, CCTV (circuito cerrado de televisión) o sistema contra incendios. \r\n\r\nSolicitud:\r\n\"Adjuntar la siguiente información:\r\nDiseño de la ubicación de las área de la locación ejemplo almacén logística, puestos de trabajo etc. \r\n\r\nDirigirse a la pestaña Campos extras y llenar la solicitud.\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:54:57', '2026-08-27 17:42:28', 'Infraestructura'),
(57, 1, 1, NULL, 1, 4, 'Cotización Personal de Seguridad Física', 'Descripción:\r\nCotización de personal de seguridad física, para la protección de las locaciones de manera fija, acompañamientos a las móviles y servicios adicionales con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). \r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 15 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:55:46', '2026-08-26 20:51:37', 'Infraestructura'),
(58, 1, 1, NULL, 13, 4, 'Facturación Arrendamientos Parqueaderos', 'Descripción:\r\n\"Esta solicitud es para la entrega de facturas y/o cuentas de cobro correspondientes a los servicios de parqueadero prestados a nivel nacional, las cuales deben ser tramitadas para su respectivo pago.\r\nPara realizar este proceso, es indispensable adjuntar la distribución de los costos, con el fin de asignarlos correctamente a los proyectos correspondientes en el sistema INFOR. Posteriormente, los documentos serán entregadas al proceso de Contabilidad para su gestión final.\"\r\n\r\nSolicitud:\r\n\"* Adjuntar la siguiente documentación:\r\n* Facturas electrónicas y/o cuentas de cobro en PDF\r\n* Formato de Excel con la distribución por cliente y/o proyecto\"\r\n\r\nSLA 4 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:57:16', '2026-08-26 20:51:27', 'Infraestructura'),
(59, 1, 1, NULL, 7, 4, 'Estado de Cuenta de Arrendamiento de Parqueaderos', 'Descripción:\r\n\"Esta solicitud tiene como finalidad consultar el estado de cuenta del arrendamiento de parqueaderos, específicamente los pagos pendientes a proveedores.\r\nPara gestionar correctamente la solicitud, es indispensable adjuntar la siguiente información:\r\n\r\nDatos del proveedor (nombre, NIT y datos de contacto).\r\n\r\nMeses correspondientes a los pagos pendientes. Por favor describa su solicitud:\"\r\n\r\nSolución:\r\n\"Facturas electrónicas y/o cuentas de cobro en PDF\r\nFormato de Excel con datos del proveedor (nombre, NIT y datos de contacto), meses correspondientes a los pagos pendientes\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:59:19', '2026-08-26 20:51:16', 'Infraestructura'),
(60, 1, 1, NULL, 3, 4, 'Documentos soporte para Reclamación de Siniestro', 'Descripción:\r\n\"Solicitud para continuar con el reporte del siniestro adjuntando la documentación.\"\r\n\r\nSolicitud:\r\n\"Adjuntar\r\n  * Cotización  de los elementos de iguales o similares caracteristicas\r\n * Certificacion expedida por el contador\r\n* Copia de la Tarjeta profesional del contador \r\n* Documento soporte que soporte la propiedad\r\n\r\nNota: Dirigirse a la pestaña Campos extras y llenar la solicitud.\"\r\n\r\nSLA 20 días', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 10:00:37', '2026-08-26 20:51:04', 'Infraestructura'),
(61, 1, 11, NULL, 4, 14, 'Capacitación en gestión documental', 'Descripción:\r\nBrindar formación al personal en los lineamientos, estructura y control de la documentación del Sistema Integrado de Gestión.\r\n\r\nSolicitud:\r\nDiligencie los campos extra e indique la cantidad de personas a capacitar y las fechas propuestas.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', 1, 2, 9, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 12:40:20', '2026-08-26 21:14:19', 'Calidad'),
(62, 1, 11, NULL, 4, 14, 'Acompañamiento en gestión documental (creación o control de cambios y/o procedimientos)', 'Descripción:\r\nAcompañamiento en la creación, actualización o modificación de documentos del SIG garantizando su conformidad con los lineamientos establecidos.\r\n\r\nSolicitud:\r\nDiligencie los campos extra e indique tipo de documento y necesidad específica.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:41:14', '2026-08-26 21:14:07', 'Calidad'),
(63, 1, 11, NULL, 10, 14, 'Codificación y publicación de documentos en WebCom', 'Descripción:\r\nAsignación de código oficial y publicación controlada de documentos aprobados en la plataforma WebCom.\r\n\r\nSolicitud:\r\nDiligencie los campos extra, incluya el documento aprobado en el servicio 11.1.3 y Adjunte el formato anexo diligenciado.\r\n\r\nSLA 8 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:42:11', '2026-08-26 21:14:13', 'Calidad'),
(64, 1, 11, NULL, 4, 14, 'Capacitación en gestión de riesgos', 'Descripción:\r\nFormación sobre metodología institucional de identificación, valoración y tratamiento de riesgos.\r\n\r\nSolicitud:\r\nDiligencie los campos extra indicando tema, grupo objetivo y fecha propuesta.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:43:13', '2026-08-26 21:14:27', 'Calidad'),
(65, 1, 11, NULL, 4, 14, 'Acompañamiento en diligenciamiento de matriz de riesgos', 'Descripción:\r\nAsesoría para identificar riesgos, valorarlos y definir planes de tratamiento de acuerdo con la metodología del SIG.\r\n\r\nSolicitud:\r\nDiligencie los campos extra y adjunte la matriz o formato correspondiente.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:44:11', '2026-08-26 21:14:42', 'Calidad'),
(66, 1, 11, NULL, 4, 14, 'Seguimiento a controles establecidos de riesgos', 'Descripción:\r\nVerificación del cumplimiento y eficacia de los controles definidos en las matrices de riesgos de cada proceso.\r\n\r\nSolicitud:\r\nDiligencie los campos extra indicando controles a revisar y periodo de seguimiento.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:45:26', '2026-08-26 21:14:33', 'Calidad'),
(67, 1, 11, NULL, 7, 14, 'Auditoría a procesos en gestión SIG', 'Descripción:\r\nEjecución de auditorías internas del Sistema Integrado de Gestión con base en la programación o solicitud especial.\r\n\r\nSolicitud:\r\nDiligencie los campos extra con el proceso y motivo de auditoría.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:46:20', '2026-08-26 21:13:59', 'Calidad'),
(68, 1, 11, NULL, 4, 14, 'Gestión de no conformidades de auditoría externa e interna', 'Descripción:\r\nAcompañamiento en la definición y seguimiento de acciones correctivas derivadas de auditorías internas o externas.\r\n\r\nSolicitud:\r\nDiligencie los campos extra y adjunte la no conformidad o hallazgo.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 12:47:12', '2026-08-26 21:13:51', 'Calidad'),
(70, 1, 11, NULL, 11, 15, 'Solicitud de información del consolidado de planeación estratégica', 'Descripción:\r\nFacilitar el acceso a la información consolidada del seguimiento a objetivos, indicadores, proyectos o iniciativas definidas en la planeación estratégica institucional.\r\n\r\nSolicitud:\r\nIndique responsable de la solicitud y correo electrónico.\r\n\r\nSLA 2 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 12:50:08', '2026-08-26 21:13:39', 'Planeación Estrategica'),
(71, 1, 11, NULL, 7, 15, 'Acompañamiento para plan de trabajo por iniciativas de la planeación', 'Descripción:\r\nBrindar apoyo en la definición, estructuración y seguimiento de planes de trabajo asociados a las iniciativas de la planeación estratégica, garantizando su alineación con los objetivos institucionales.\r\n\r\nSolicitud:\r\nIndique responsable del pilar de la Planeación Estratégica\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 12:51:49', '2026-08-26 21:13:33', 'Planeación Estrategica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sla`
--

CREATE TABLE `sla` (
  `id_sla` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `tiempo_respuesta` int(10) UNSIGNED NOT NULL,
  `unidad` enum('minutos','horas','dias') NOT NULL DEFAULT 'dias',
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sla`
--

INSERT INTO `sla` (`id_sla`, `id_pais_operacion`, `nombre`, `tiempo_respuesta`, `unidad`, `estado`, `creado_en`, `actualizado_en`) VALUES
(1, 1, 'SLA 15 días', 15, 'dias', 'activo', '2026-07-31 09:00:22', '2026-08-26 13:49:19'),
(2, 1, 'SLA 1 Días', 1, 'dias', 'activo', '2026-07-31 09:00:22', '2026-08-26 14:24:03'),
(3, 1, 'SLA 20 días', 20, 'dias', 'activo', '2026-07-31 09:00:22', '2026-08-26 13:56:32'),
(4, 1, 'SLA 5 días', 5, 'dias', 'activo', '2026-07-31 12:21:27', '2026-08-26 14:10:12'),
(5, 1, 'SLA 30 días', 30, 'dias', 'activo', '2026-08-03 12:02:54', '2026-08-26 13:57:00'),
(6, 2, '20 días', 20, 'dias', 'activo', '2026-08-12 15:56:40', '2026-08-12 20:56:40'),
(7, 1, 'SLA 10 Días', 10, 'dias', 'activo', '2026-08-25 16:16:32', '2026-08-25 21:16:32'),
(8, 1, 'SLA 60 días', 60, 'dias', 'activo', '2026-08-25 16:16:45', '2026-08-25 21:16:45'),
(9, 1, 'SLA 12 Días', 12, 'dias', 'activo', '2026-08-25 16:17:23', '2026-08-25 21:17:23'),
(10, 1, 'SLA 8 Días', 8, 'dias', 'activo', '2026-08-25 16:17:34', '2026-08-25 21:17:34'),
(11, 1, 'SLA 2 Días', 2, 'dias', 'activo', '2026-08-26 09:30:05', '2026-08-26 14:30:05'),
(12, 1, 'SLA 6 Días', 6, 'dias', 'activo', '2026-08-26 09:49:40', '2026-08-26 14:49:40'),
(13, 1, 'SLA 4 Días', 4, 'dias', 'activo', '2026-08-26 09:58:12', '2026-08-26 14:58:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_actividades`
--

CREATE TABLE `solicitud_actividades` (
  `id_actividad` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `titulo` varchar(160) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_programada` datetime DEFAULT NULL,
  `estado` enum('pendiente','en_proceso','completada','cancelada') NOT NULL DEFAULT 'pendiente',
  `id_responsable` int(11) DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `completado_en` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_adjuntos`
--

CREATE TABLE `solicitud_adjuntos` (
  `id_adjunto` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre_original` varchar(255) NOT NULL,
  `nombre_guardado` varchar(255) NOT NULL,
  `ruta` varchar(500) NOT NULL,
  `tipo_mime` varchar(120) NOT NULL,
  `tamano` int(10) UNSIGNED NOT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_adjuntos`
--

INSERT INTO `solicitud_adjuntos` (`id_adjunto`, `id_ticket`, `id_ticket_etapa`, `id_usuario`, `nombre_original`, `nombre_guardado`, `ruta`, `tipo_mime`, `tamano`, `creado_en`) VALUES
(1, 2, 4, 9, 'hd hoy.xlsx', 'flujo_2_e6e2c06a880ab92471f7b0be.xlsx', 'private/solicitudes/flujo_2_e6e2c06a880ab92471f7b0be.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 520337, '2026-08-31 09:05:33');

--
-- Disparadores `solicitud_adjuntos`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_adjunto_insert` AFTER INSERT ON `solicitud_adjuntos` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_calificaciones`
--

CREATE TABLE `solicitud_calificaciones` (
  `id_calificacion` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_solicitante` int(11) DEFAULT NULL,
  `id_gestor` int(11) DEFAULT NULL,
  `calificacion` tinyint(3) UNSIGNED NOT NULL,
  `calificacion_area` tinyint(3) UNSIGNED DEFAULT NULL,
  `calificacion_tiempo` tinyint(3) UNSIGNED DEFAULT NULL,
  `tipo_calificacion` enum('encuesta_servicio','evaluacion_derivacion','evaluacion_caso','historica') NOT NULL DEFAULT 'historica',
  `comentario` varchar(1000) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_calificaciones`
--

INSERT INTO `solicitud_calificaciones` (`id_calificacion`, `id_ticket`, `id_ticket_etapa`, `id_solicitante`, `id_gestor`, `calificacion`, `calificacion_area`, `calificacion_tiempo`, `tipo_calificacion`, `comentario`, `creado_en`) VALUES
(1, 2, 4, 9, 2, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-08-31 09:09:50'),
(2, 2, 5, 9, 4, 5, 5, 5, 'evaluacion_caso', 'prueba', '2026-08-31 09:14:09'),
(3, 1, 3, 2, 2, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-08-31 09:16:42'),
(4, 1, 1, 9, 2, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-08-31 09:17:56'),
(5, 1, 2, 9, 4, 5, 5, 5, 'evaluacion_caso', 'prueba', '2026-08-31 09:19:17');

--
-- Disparadores `solicitud_calificaciones`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_calificacion_insert` AFTER INSERT ON `solicitud_calificaciones` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_comunicaciones`
--

CREATE TABLE `solicitud_comunicaciones` (
  `id_comunicacion` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_emisor` int(11) DEFAULT NULL,
  `tipo` enum('publica','interna') NOT NULL DEFAULT 'publica',
  `mensaje` text NOT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_comunicaciones`
--

INSERT INTO `solicitud_comunicaciones` (`id_comunicacion`, `id_ticket`, `id_ticket_etapa`, `id_emisor`, `tipo`, `mensaje`, `creado_en`) VALUES
(1, 1, 1, 9, 'publica', 'hol', '2026-08-28 09:38:35'),
(2, 1, 1, 2, 'publica', 'hola', '2026-08-28 09:39:14'),
(3, 1, 1, 2, 'publica', 'hola', '2026-08-28 12:42:17'),
(4, 1, 1, 9, 'publica', '0000', '2026-08-28 12:43:21'),
(5, 1, 1, 9, 'publica', '00000', '2026-08-28 12:43:22'),
(6, 1, 1, 9, 'publica', 'fbdfbd', '2026-08-28 12:47:22'),
(7, 1, 1, 9, 'publica', 'vbsdfvs', '2026-08-28 12:48:01'),
(8, 1, 1, 2, 'publica', 'bfdbfdfb', '2026-08-28 12:48:27'),
(9, 1, 1, 2, 'publica', 'dbdfbdf', '2026-08-28 12:48:28'),
(10, 1, 1, 2, 'publica', 'dbdfbdfb', '2026-08-28 12:54:57'),
(11, 1, 1, 2, 'publica', 'bdfbdf', '2026-08-28 12:54:59'),
(12, 1, 1, 2, 'publica', '2026', '2026-08-28 12:56:32'),
(13, 1, 1, 9, 'publica', '0232', '2026-08-28 12:57:17'),
(14, 1, 1, 2, 'publica', '51561', '2026-08-28 12:58:09'),
(15, 1, 1, 9, 'publica', '5161', '2026-08-31 09:04:50');

--
-- Disparadores `solicitud_comunicaciones`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_comunicacion_insert` AFTER INSERT ON `solicitud_comunicaciones` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_historial`
--

CREATE TABLE `solicitud_historial` (
  `id_historial` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `detalle` text DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_historial`
--

INSERT INTO `solicitud_historial` (`id_historial`, `id_ticket`, `id_ticket_etapa`, `id_usuario`, `accion`, `detalle`, `creado_en`) VALUES
(1, 1, 1, 9, 'Caso principal abierto', 'Se creó el Caso 1 y se activó la etapa 1 para TICs / Soporte técnico general. Asunto: prueba. Solicitud: 0', '2026-08-28 09:21:25'),
(2, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 09:38:35'),
(3, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 09:39:14'),
(4, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:42:17'),
(5, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:43:21'),
(6, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:43:22'),
(7, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:47:22'),
(8, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:48:01'),
(9, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:48:27'),
(10, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:48:28'),
(11, 1, 3, 2, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1 desde etapa 1 del Caso 1. Destino: Talento Humano / Novedades de nómina. Motivo: 0', '2026-08-28 12:51:10'),
(12, 1, 1, 2, 'Derivación creada', 'El caso 1 pausó su SLA y creó 1 caso(s) hijo(s): 1.1 (Talento Humano / Novedades de nómina).', '2026-08-28 12:51:10'),
(13, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:54:57'),
(14, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:54:59'),
(15, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:56:32'),
(16, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:57:17'),
(17, 1, 1, 2, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-28 12:58:09'),
(18, 1, 1, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 1 · etapa 1.', '2026-08-31 09:04:50'),
(19, 2, 4, 9, 'Caso principal abierto', 'Se creó el Caso 2 y se activó la etapa 1 para Talento Humano / Novedades de nómina. Asunto: prueba. Solicitud: prueba', '2026-08-31 09:05:33'),
(20, 2, 4, 2, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-08-31 09:06:09'),
(21, 2, 4, 2, 'Atención marcada como lista', 'El gestor asignado marcó Caso 2 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-07 17:00:00. Solución: prueba. Observación: prueba.', '2026-08-31 09:09:07'),
(22, 2, 4, 9, 'Atención cerrada', 'Se cerró Caso 2 · etapa 1. Talento Humano / Novedades de nómina finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-08-31 09:09:50'),
(23, 2, 5, 9, 'Caso heredado habilitado', 'Se habilitó TICs / asignacion de computador.', '2026-08-31 09:09:50'),
(24, 2, 5, 4, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-08-31 09:13:12'),
(25, 2, 5, 4, 'Atención marcada como lista', 'El gestor asignado marcó Caso 2 · etapa 2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-07 17:00:00. Solución: Asignado. Observación: prueba.', '2026-08-31 09:13:22'),
(26, 2, 5, 9, 'Atención cerrada', 'Se cerró Caso 2 · etapa 2. TICs / asignacion de computador finalizó su atención dentro del SLA. Solución: Asignado. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-08-31 09:14:09'),
(27, 2, 5, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-08-31 09:14:09'),
(28, 1, 3, 2, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-08-31 09:15:53'),
(29, 1, 3, 2, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1 como listo para revisión. El indicador SLA quedó cortado en 76 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-04 17:00:00. Solución: prueba. Observación: prueba.', '2026-08-31 09:16:04'),
(30, 1, 3, 2, 'Atención cerrada', 'Se cerró Ticket 1.1. Talento Humano / Novedades de nómina finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-08-31 09:16:42'),
(31, 1, 1, 2, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Soporte técnico general con 540 minuto(s) hábil(es) restantes.', '2026-08-31 09:16:42'),
(32, 1, 1, 2, 'Atención marcada como lista', 'El gestor asignado marcó Caso 1 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-01 17:00:00. Solución: Reinicio computador. Observación: prueba.', '2026-08-31 09:17:14'),
(33, 1, 1, 9, 'Atención cerrada', 'Se cerró Caso 1 · etapa 1. TICs / Soporte técnico general finalizó su atención dentro del SLA. Solución: Reinicio computador. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-08-31 09:17:56'),
(34, 1, 2, 9, 'Caso heredado habilitado', 'Se habilitó TICs / asignacion de computador.', '2026-08-31 09:17:56'),
(35, 1, 2, 4, 'Atención marcada como lista', 'El gestor asignado marcó Caso 1 · etapa 2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-07 17:00:00. Solución: Asignado. Observación: prueba.', '2026-08-31 09:18:53'),
(36, 1, 2, 9, 'Atención cerrada', 'Se cerró Caso 1 · etapa 2. TICs / asignacion de computador finalizó su atención dentro del SLA. Solución: Asignado. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-08-31 09:19:17'),
(37, 1, 2, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-08-31 09:19:17');

--
-- Disparadores `solicitud_historial`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_historial_insert` AFTER INSERT ON `solicitud_historial` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_resoluciones`
--

CREATE TABLE `solicitud_resoluciones` (
  `id_ticket` int(11) NOT NULL,
  `resolucion` text NOT NULL,
  `causa_raiz` text DEFAULT NULL,
  `id_resuelto_por` int(11) DEFAULT NULL,
  `resuelto_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_vinculos`
--

CREATE TABLE `solicitud_vinculos` (
  `id_vinculo` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_ticket_vinculado` int(11) NOT NULL,
  `tipo_vinculo` varchar(50) NOT NULL DEFAULT 'relacionada',
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soluciones_servicio`
--

CREATE TABLE `soluciones_servicio` (
  `id_solucion` int(10) UNSIGNED NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(180) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `orden` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `creado_por` int(11) DEFAULT NULL,
  `actualizado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `soluciones_servicio`
--

INSERT INTO `soluciones_servicio` (`id_solucion`, `id_servicio`, `nombre`, `descripcion`, `estado`, `orden`, `creado_por`, `actualizado_por`, `creado_en`, `actualizado_en`) VALUES
(1, 6, 'Reinicio computador', 'se reinicio el computador', 'activo', 1, 1, 1, '2026-08-04 10:24:02', '2026-08-04 15:24:02'),
(2, 3, 'Contrato firmado', 'Contrato firmado con exito', 'activo', 1, 1, 1, '2026-08-04 11:35:52', '2026-08-04 16:35:52'),
(3, 2, 'Impuestos liquidados', 'Se liquidaron los impuestos sin novedad', 'activo', 1, 1, 1, '2026-08-04 11:36:32', '2026-08-04 16:36:32'),
(4, 1, 'Compra de computador', 'La compra fue satisfactoria', 'activo', 1, 1, 1, '2026-08-04 11:39:48', '2026-08-04 16:39:48'),
(5, 7, 'Asignado', 'Computador asignado', 'activo', 1, 1, 1, '2026-08-04 11:41:56', '2026-08-04 16:41:56'),
(6, 9, 'no hubo solucion remota', 'no hubo solucion remota tocó ver el computador en fisico', 'activo', 1, 1, 1, '2026-08-05 15:23:35', '2026-08-05 20:23:35'),
(7, 8, 'Exitoso', 'Cuando se logra el ingreso de la persona sin novedades.', 'activo', 1, 1, 1, '2026-08-12 11:07:49', '2026-08-12 16:07:49'),
(8, 11, 'Exitosa', 'Reparación exitosa', 'activo', 1, 1, 1, '2026-08-12 15:59:05', '2026-08-12 20:59:05'),
(9, 12, 'Resuelto', 'Cuando se soluciono el incidente sin novedad', 'activo', 1, 1, 1, '2026-08-12 16:02:13', '2026-08-12 21:02:13'),
(10, 1, 'prueba', 'prueba', 'activo', 2, 1, 1, '2026-08-19 16:09:43', '2026-08-19 21:09:43'),
(11, 4, 'exitoso', 'exitoso', 'activo', 1, 1, 1, '2026-08-24 09:57:46', '2026-08-24 14:57:46'),
(12, 5, 'prueba', 'prueba', 'activo', 1, 1, 1, '2026-08-27 12:31:31', '2026-08-27 17:31:31'),
(13, 48, 'exitosa', 'exitosa', 'activo', 1, 1, 1, '2026-08-27 12:38:01', '2026-08-27 17:38:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `titulo` varchar(180) NOT NULL,
  `descripcion` text NOT NULL,
  `tipo_solicitud` varchar(120) NOT NULL DEFAULT 'Requerimiento',
  `estado` varchar(30) NOT NULL DEFAULT 'abierto',
  `urgencia` varchar(20) NOT NULL DEFAULT 'moderada',
  `urgencia_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `impacto` varchar(30) DEFAULT NULL,
  `impacto_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `prioridad` varchar(40) NOT NULL DEFAULT 'Moderado',
  `prioridad_valor` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `id_usuario` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `estado_flujo` varchar(30) NOT NULL DEFAULT 'sin_flujo',
  `id_etapa_actual` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_finalizacion` datetime DEFAULT NULL,
  `esperando_solicitante_desde` datetime DEFAULT NULL,
  `cierre_tipo` varchar(20) DEFAULT NULL,
  `motivo_cierre` varchar(255) DEFAULT NULL,
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `id_pais_operacion`, `titulo`, `descripcion`, `tipo_solicitud`, `estado`, `urgencia`, `urgencia_valor`, `impacto`, `impacto_valor`, `prioridad`, `prioridad_valor`, `id_usuario`, `id_tecnico`, `id_servicio`, `id_proceso`, `estado_flujo`, `id_etapa_actual`, `fecha_creacion`, `fecha_finalizacion`, `esperando_solicitante_desde`, `cierre_tipo`, `motivo_cierre`, `actualizado_en`) VALUES
(1, 1, 'prueba', '0', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 4, 7, 2, 'cerrado', NULL, '2026-08-28 09:21:25', '2026-08-31 09:19:17', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-08-31 14:19:17'),
(2, 1, 'prueba', 'prueba', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 4, 7, 1, 'cerrado', NULL, '2026-08-31 09:05:33', '2026-08-31 09:14:09', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-08-31 14:14:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_etapas`
--

CREATE TABLE `ticket_etapas` (
  `id_ticket_etapa` bigint(20) UNSIGNED NOT NULL,
  `id_ticket_etapa_padre` bigint(20) UNSIGNED DEFAULT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_proceso_etapa` int(11) DEFAULT NULL,
  `nivel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `orden` int(10) UNSIGNED NOT NULL,
  `id_catalogo` int(11) DEFAULT NULL,
  `catalogo_nombre` varchar(120) NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `servicio_nombre` varchar(160) NOT NULL,
  `id_gestor` int(11) DEFAULT NULL,
  `gestor_nombre` varchar(160) NOT NULL,
  `id_sla` int(11) DEFAULT NULL,
  `sla_nombre` varchar(120) NOT NULL,
  `sla_tiempo` int(10) UNSIGNED NOT NULL,
  `sla_unidad` enum('minutos','horas','dias') NOT NULL,
  `sla_minutos_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sla_minutos_consumidos` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `estado` enum('bloqueada','pendiente','en_proceso','en_espera_solicitante','pausada','listo_cierre','completada','cancelada') NOT NULL DEFAULT 'bloqueada',
  `fecha_activacion` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `fecha_ultima_reanudacion` datetime DEFAULT NULL,
  `fecha_pausa` datetime DEFAULT NULL,
  `fecha_marcado_listo` datetime DEFAULT NULL,
  `minutos_hasta_listo` int(10) UNSIGNED DEFAULT NULL,
  `resultado_sla_listo` enum('dentro_sla','fuera_sla') DEFAULT NULL,
  `marcado_listo_por` int(11) DEFAULT NULL,
  `fecha_ultima_reapertura` datetime DEFAULT NULL,
  `cantidad_reaperturas` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cantidad_pausas` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fecha_finalizacion` datetime DEFAULT NULL,
  `minutos_atencion` int(10) UNSIGNED DEFAULT NULL,
  `resultado_sla` enum('sin_iniciar','dentro_sla','fuera_sla') NOT NULL DEFAULT 'sin_iniciar',
  `id_solucion` int(10) UNSIGNED DEFAULT NULL,
  `solucion_nombre` varchar(180) DEFAULT NULL,
  `comentario_cierre` varchar(2000) DEFAULT NULL,
  `solicita_cierre_definitivo` tinyint(1) NOT NULL DEFAULT 0,
  `motivo_derivacion` varchar(2000) DEFAULT NULL,
  `completado_por` int(11) DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ticket_etapas`
--

INSERT INTO `ticket_etapas` (`id_ticket_etapa`, `id_ticket_etapa_padre`, `id_ticket`, `id_proceso_etapa`, `nivel`, `orden`, `id_catalogo`, `catalogo_nombre`, `id_servicio`, `servicio_nombre`, `id_gestor`, `gestor_nombre`, `id_sla`, `sla_nombre`, `sla_tiempo`, `sla_unidad`, `sla_minutos_total`, `sla_minutos_consumidos`, `estado`, `fecha_activacion`, `fecha_vencimiento`, `fecha_ultima_reanudacion`, `fecha_pausa`, `fecha_marcado_listo`, `minutos_hasta_listo`, `resultado_sla_listo`, `marcado_listo_por`, `fecha_ultima_reapertura`, `cantidad_reaperturas`, `cantidad_pausas`, `fecha_finalizacion`, `minutos_atencion`, `resultado_sla`, `id_solucion`, `solucion_nombre`, `comentario_cierre`, `solicita_cierre_definitivo`, `motivo_derivacion`, `completado_por`, `creado_por`, `creado_en`, `actualizado_en`) VALUES
(1, NULL, 1, 3, 0, 1, 6, 'TICs', 6, 'Soporte técnico general', 2, 'Julio', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-08-28 09:21:25', '2026-09-01 17:00:00', NULL, NULL, '2026-08-31 09:17:14', 0, 'dentro_sla', 2, NULL, 0, 1, '2026-08-31 09:17:56', 0, 'dentro_sla', 1, 'Reinicio computador', 'prueba', 0, NULL, 9, 9, '2026-08-28 09:21:25', '2026-08-31 14:17:56'),
(2, NULL, 1, 4, 0, 2, 6, 'TICs', 7, 'asignacion de computador', 4, 'Luisa', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-08-31 09:17:56', '2026-09-07 17:00:00', NULL, NULL, '2026-08-31 09:18:53', 0, 'dentro_sla', 4, NULL, 0, 0, '2026-08-31 09:19:17', 0, 'dentro_sla', 5, 'Asignado', 'prueba', 0, NULL, 9, 9, '2026-08-28 09:21:25', '2026-08-31 14:19:17'),
(3, 1, 1, 2, 1, 3, 5, 'Talento Humano', 5, 'Novedades de nómina', 2, 'Julio', 4, 'SLA 5 días', 5, 'dias', 2700, 76, 'completada', '2026-08-28 12:51:10', '2026-09-04 17:00:00', NULL, NULL, '2026-08-31 09:16:04', 76, 'dentro_sla', 2, NULL, 0, 0, '2026-08-31 09:16:42', 76, 'dentro_sla', 12, 'prueba', 'prueba', 0, '0', 2, 2, '2026-08-28 12:51:10', '2026-08-31 14:16:42'),
(4, NULL, 2, 2, 0, 1, 5, 'Talento Humano', 5, 'Novedades de nómina', 2, 'Julio', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-08-31 09:05:33', '2026-09-07 17:00:00', NULL, NULL, '2026-08-31 09:09:07', 0, 'dentro_sla', 2, NULL, 0, 0, '2026-08-31 09:09:50', 0, 'dentro_sla', 12, 'prueba', 'prueba', 0, NULL, 9, 9, '2026-08-31 09:05:33', '2026-08-31 14:09:50'),
(5, NULL, 2, 1, 0, 2, 6, 'TICs', 7, 'asignacion de computador', 4, 'Luisa', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-08-31 09:09:50', '2026-09-07 17:00:00', NULL, NULL, '2026-08-31 09:13:22', 0, 'dentro_sla', 4, NULL, 0, 0, '2026-08-31 09:14:09', 0, 'dentro_sla', 5, 'Asignado', 'prueba', 0, NULL, 9, 9, '2026-08-31 09:05:33', '2026-08-31 14:14:09');

--
-- Disparadores `ticket_etapas`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_etapa_insert` AFTER INSERT ON `ticket_etapas` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_actividad_etapa_update` AFTER UPDATE ON `ticket_etapas` FOR EACH ROW BEGIN
    UPDATE tickets SET actualizado_en = NOW() WHERE id_ticket = NEW.id_ticket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_etapa_checklist`
--

CREATE TABLE `ticket_etapa_checklist` (
  `id_ticket_checklist` bigint(20) UNSIGNED NOT NULL,
  `id_ticket_etapa` bigint(20) UNSIGNED NOT NULL,
  `id_checklist_plantilla` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `obligatorio` tinyint(1) NOT NULL DEFAULT 1,
  `requiere_evidencia` tinyint(1) NOT NULL DEFAULT 0,
  `orden` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `completado` tinyint(1) NOT NULL DEFAULT 0,
  `observacion` varchar(1000) DEFAULT NULL,
  `evidencia_ruta` varchar(500) DEFAULT NULL,
  `completado_por` int(11) DEFAULT NULL,
  `completado_en` datetime DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ticket_etapa_checklist`
--

INSERT INTO `ticket_etapa_checklist` (`id_ticket_checklist`, `id_ticket_etapa`, `id_checklist_plantilla`, `nombre`, `descripcion`, `obligatorio`, `requiere_evidencia`, `orden`, `completado`, `observacion`, `evidencia_ruta`, `completado_por`, `completado_en`, `creado_en`, `actualizado_en`) VALUES
(1, 3, 2, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 2, '2026-08-31 09:15:53', '2026-08-28 12:51:10', '2026-08-31 14:15:53'),
(2, 4, 2, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 2, '2026-08-31 09:06:09', '2026-08-31 09:05:33', '2026-08-31 14:06:09'),
(3, 5, 1, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 4, '2026-08-31 09:13:12', '2026-08-31 09:05:33', '2026-08-31 14:13:12');

--
-- Disparadores `ticket_etapa_checklist`
--
DELIMITER $$
CREATE TRIGGER `trg_actividad_checklist_insert` AFTER INSERT ON `ticket_etapa_checklist` FOR EACH ROW BEGIN
    UPDATE tickets AS t
    INNER JOIN ticket_etapas AS te ON te.id_ticket = t.id_ticket
    SET t.actualizado_en = NOW()
    WHERE te.id_ticket_etapa = NEW.id_ticket_etapa;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_actividad_checklist_update` AFTER UPDATE ON `ticket_etapa_checklist` FOR EACH ROW BEGIN
    UPDATE tickets AS t
    INNER JOIN ticket_etapas AS te ON te.id_ticket = t.id_ticket
    SET t.actualizado_en = NOW()
    WHERE te.id_ticket_etapa = NEW.id_ticket_etapa;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_notificaciones_email_preferencias`
--

CREATE TABLE `ticket_notificaciones_email_preferencias` (
  `id_preferencia` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `habilitada` tinyint(1) NOT NULL DEFAULT 1,
  `creada_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizada_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_notificaciones_email_preferencias`
--

INSERT INTO `ticket_notificaciones_email_preferencias` (`id_preferencia`, `id_ticket`, `id_usuario`, `habilitada`, `creada_en`, `actualizada_en`) VALUES
(1, 1, 9, 0, '2026-08-28 12:57:53', '2026-08-28 17:57:53'),
(2, 1, 2, 1, '2026-08-31 09:16:57', '2026-08-31 14:17:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `nombre` varchar(160) NOT NULL,
  `proceso` varchar(120) NOT NULL,
  `cu1` varchar(120) NOT NULL,
  `cu3` varchar(120) NOT NULL,
  `email` varchar(190) NOT NULL,
  `descripcion_cu1` varchar(500) NOT NULL,
  `ciudad` varchar(120) NOT NULL,
  `empresa` varchar(160) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `sesion_activa_hash` char(64) DEFAULT NULL COMMENT 'Huella SHA-256 de la única sesión vigente',
  `sesion_activa_en` datetime DEFAULT NULL COMMENT 'Fecha de inicio de la sesión vigente',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `nombre`, `proceso`, `cu1`, `cu3`, `email`, `descripcion_cu1`, `ciudad`, `empresa`, `password`, `id_rol`, `id_pais_operacion`, `id_pais`, `id_departamento`, `id_ciudad`, `estado`, `sesion_activa_hash`, `sesion_activa_en`, `creado_en`, `actualizado_en`) VALUES
(1, 'ADMIN001', 'Administrador', 'Administración', 'N/A', 'N/A', 'admin@gmail.com', 'Cuenta administradora inicial del sistema.', 'No aplica', 'Conectar TV', '$2y$10$f.3F2LkJXmXsjG5liWUSBeZitvj8TuxpMIj2zahqdwbdk5hy49NCe', 1, NULL, NULL, NULL, NULL, 'activo', 'e8f91836e017baf2aa7f80d0c761051ca3876fc4229411cd56e19b09c20e8942', '2026-09-02 10:47:35', '2026-07-31 09:00:22', '2026-09-02 15:47:35'),
(2, '101010', 'Julio', 'Adquisiciones', 'IGAM', 'HNAL', 'jhonnytorrez999@gmail.com', '.', 'Bogotá', 'millenium', '$2y$10$F8W20yxKzWWiTrA87yaPWOWrwyOKs1rgT1fVZUa1xkU0iyUBGTv4u', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-07-31 09:01:38', '2026-09-02 13:40:15'),
(4, '202001', 'Luisa', 'Infraestructura', 'IGAM', 'HNAL', 'jhonnytorr@gmail.com', '0', 'Bogotá', 'millenium', '$2y$10$wsYV31LKg.AikWnlB2/Lk.xdpmGApV41fYkUANv2hb3H4gedAygmy', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-07-31 09:03:10', '2026-09-02 14:22:37'),
(7, '1010', 'Gestor2020', '0', '0', '0', 'jhonnytorrez@gmail.com', '0', 'lima', '0', '$2y$10$KxaTqZXsz1258F3ImiySZel205sFWWsYXEEeqxf/0qheV4Y92PJRy', 2, 2, 34, 35, 36, 'activo', NULL, NULL, '2026-08-05 08:55:32', '2026-08-18 20:32:22'),
(8, '10101010', 'Jhonny', '0', '0', '0', 'jhonnytorre@gmail.com', '0', 'lima', '0', '$2y$10$3mJ3CrvjsN3xKH9Tg4Ovy.xbo/orbiSxUpi8U/R6XNLhYmPBrxdb6', 3, 2, 34, 35, 36, 'activo', NULL, NULL, '2026-08-05 08:56:53', '2026-08-18 20:32:33'),
(9, '00', 'solicitante', '0', '0', '0', 'ortizjuliana906@gmail.com', '0', 'Bogotá', '0', '$2y$10$GhX5mTSDapJgtEn0KIZ0/uZAEHeOvdV4kAC3dLQRbHN/XJJqCW3.K', 3, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-05 14:40:16', '2026-09-02 13:20:27'),
(10, '000', 'Jose', 'Disposición final de Materiales y Herramientas', '0', '0', 'disposicion@conectar.com', '0', 'Bogotá', '0', '$2y$10$rc376o0dQ.X7iohMUABbuucMduoDKJXvOPwjrQvDMxE.9z/JnYXQm', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:41:04', '2026-08-26 20:49:28'),
(11, '0', 'Cristian', 'Aliados', '0', '0', 'aliados@conectar.com', '0', 'Bogotá', '0', '$2y$10$Wz6UU8vUNT.7PMiTkB24KeKd997b4CeJ9YUPANMVGPa5ypxfOORQO', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:43:00', '2026-09-02 14:49:59'),
(13, '010152132', 'Hernesto', 'Disposición final de Contratista y/o gestor y Herramientas', '0', '0', 'contratista01@conectar.com', '0', 'Bogotá', '0', '$2y$10$5w6la7TPcIYfnUunauin4Of8IoIYyNm5.aRRCkHLEMWjI3Vqcwo96', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:46:19', '2026-08-26 20:49:13'),
(14, '13213213', 'Veronica', 'Calidad', '0', '0', 'calidad@conectar.com', '0', 'Bogotá', '0', '$2y$10$dyiSryKc4isXATEnZIPHtO6.HET9wz5fu1FPCO8Z4W8abhav1iVQW', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 12:38:53', '2026-08-26 20:48:59'),
(15, '1231325165', 'Eduardo', 'Planeación Estrategica', '0', '0', 'planeacion@conectar.com', '0', 'Bogotá', '0', '$2y$10$zfxbcI60rB4SRyv7/rvyCeny6wGBuCwqi1AdyfJ9MXJkZJKxmR5Wi', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 12:50:46', '2026-08-26 20:50:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_preferencias_interfaz`
--

CREATE TABLE `usuario_preferencias_interfaz` (
  `id_usuario` int(11) NOT NULL,
  `tema` varchar(40) NOT NULL DEFAULT 'corporativo',
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_preferencias_interfaz`
--

INSERT INTO `usuario_preferencias_interfaz` (`id_usuario`, `tema`, `actualizado_en`) VALUES
(1, 'corporativo', '2026-09-02 13:10:35'),
(2, 'corporativo', '2026-09-01 14:44:22'),
(4, 'rojo_negro', '2026-08-25 13:27:54'),
(7, 'negro_blanco', '2026-08-24 15:38:44'),
(9, 'corporativo', '2026-09-01 14:22:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id_catalogo`),
  ADD UNIQUE KEY `uq_catalogos_pais_nombre` (`id_pais_operacion`,`nombre`),
  ADD KEY `idx_catalogos_estado_orden` (`estado`,`orden`,`nombre`),
  ADD KEY `idx_catalogos_pais_estado_orden` (`id_pais_operacion`,`estado`,`orden`);

--
-- Indices de la tabla `chat_conversacion_estado`
--
ALTER TABLE `chat_conversacion_estado`
  ADD PRIMARY KEY (`id_ticket`,`id_ticket_etapa`,`id_usuario`),
  ADD KEY `idx_chat_estado_usuario` (`id_usuario`,`actualizado_en`),
  ADD KEY `idx_chat_estado_etapa` (`id_ticket_etapa`);

--
-- Indices de la tabla `chat_usuario_presencia`
--
ALTER TABLE `chat_usuario_presencia`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `idx_chat_presencia_actividad` (`ultima_actividad_en`);

--
-- Indices de la tabla `configuraciones_servicio`
--
ALTER TABLE `configuraciones_servicio`
  ADD PRIMARY KEY (`id_opcion`),
  ADD UNIQUE KEY `uq_configuracion_pais_tipo_nombre` (`id_pais_operacion`,`tipo`,`nombre`),
  ADD KEY `idx_configuracion_tipo_estado` (`tipo`,`estado_registro`,`orden`,`nombre`),
  ADD KEY `idx_configuracion_padre` (`id_padre`),
  ADD KEY `idx_configuracion_pais_tipo_estado` (`id_pais_operacion`,`tipo`,`estado_registro`,`orden`);

--
-- Indices de la tabla `feriados`
--
ALTER TABLE `feriados`
  ADD PRIMARY KEY (`id_feriado`),
  ADD KEY `idx_feriados_estado_rango` (`estado`,`fecha_inicio`,`fecha_fin`),
  ADD KEY `idx_feriados_creado_por` (`id_creado_por`),
  ADD KEY `idx_feriados_pais_estado_fecha` (`id_pais_operacion`,`estado`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `historial_acciones`
--
ALTER TABLE `historial_acciones`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `idx_historial_acciones_ticket` (`id_ticket`,`fecha_accion`),
  ADD KEY `idx_historial_acciones_usuario` (`id_usuario`),
  ADD KEY `idx_historial_acciones_usuario_fecha` (`id_usuario`,`fecha_accion`,`id_historial`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `idx_mensajes_ticket_fecha` (`id_ticket`,`fecha_envio`),
  ADD KEY `idx_mensajes_emisor` (`id_emisor`),
  ADD KEY `idx_chat_caso` (`id_ticket`,`fecha_envio`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificacion`),
  ADD KEY `idx_notificaciones_usuario` (`id_usuario`,`leida`,`creada_en`),
  ADD KEY `fk_notificaciones_ticket` (`id_ticket`),
  ADD KEY `fk_notificaciones_etapa` (`id_ticket_etapa`),
  ADD KEY `idx_notificaciones_usuario_fecha` (`id_usuario`,`creada_en`,`id_notificacion`);

--
-- Indices de la tabla `paises_operacion`
--
ALTER TABLE `paises_operacion`
  ADD PRIMARY KEY (`id_pais_operacion`),
  ADD UNIQUE KEY `uq_paises_operacion_codigo` (`codigo`),
  ADD UNIQUE KEY `uq_paises_operacion_nombre` (`nombre`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id_proceso`),
  ADD UNIQUE KEY `uq_procesos_pais_nombre` (`id_pais_operacion`,`nombre`),
  ADD KEY `idx_procesos_estado` (`estado`),
  ADD KEY `fk_procesos_creador` (`creado_por`),
  ADD KEY `fk_procesos_actualizador` (`actualizado_por`),
  ADD KEY `idx_procesos_pais_estado` (`id_pais_operacion`,`estado`,`nombre`);

--
-- Indices de la tabla `proceso_etapas`
--
ALTER TABLE `proceso_etapas`
  ADD PRIMARY KEY (`id_proceso_etapa`),
  ADD UNIQUE KEY `uq_proceso_orden` (`id_proceso`,`orden`),
  ADD KEY `idx_proceso_etapas_servicio` (`id_servicio`),
  ADD KEY `idx_proceso_etapas_gestor_sla` (`id_gestor`,`id_sla`),
  ADD KEY `idx_proceso_etapas_sla` (`id_sla`);

--
-- Indices de la tabla `proceso_etapa_checklist`
--
ALTER TABLE `proceso_etapa_checklist`
  ADD PRIMARY KEY (`id_checklist`),
  ADD KEY `idx_checklist_etapa` (`id_proceso_etapa`,`estado`,`orden`);

--
-- Indices de la tabla `recuperaciones_password`
--
ALTER TABLE `recuperaciones_password`
  ADD PRIMARY KEY (`id_recuperacion`),
  ADD KEY `idx_recuperacion_usuario_activa` (`id_usuario`,`usado_en`,`expira_en`),
  ADD KEY `idx_recuperacion_ip_fecha` (`solicitado_ip_hash`,`creado_en`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `uq_roles_nombre` (`nombre_rol`);

--
-- Indices de la tabla `seguridad_intentos_login`
--
ALTER TABLE `seguridad_intentos_login`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `idx_seguridad_bloqueo` (`bloqueado_hasta`),
  ADD KEY `idx_seguridad_ultimo_intento` (`ultimo_intento`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`),
  ADD UNIQUE KEY `uq_servicio_catalogo_nombre` (`id_catalogo`,`nombre`),
  ADD KEY `idx_servicios_catalogo_estado` (`id_catalogo`,`estado`,`nombre`),
  ADD KEY `idx_servicios_sla` (`id_sla`),
  ADD KEY `idx_servicios_pais` (`id_pais`),
  ADD KEY `idx_servicios_ciudad` (`id_ciudad`),
  ADD KEY `idx_servicios_departamento` (`id_departamento`),
  ADD KEY `idx_servicios_prioridad` (`id_prioridad`),
  ADD KEY `idx_servicios_urgencia` (`id_urgencia`),
  ADD KEY `idx_servicios_nivel` (`id_nivel`),
  ADD KEY `idx_servicios_impacto` (`id_impacto`),
  ADD KEY `idx_servicios_estado_opcion` (`id_estado`),
  ADD KEY `idx_servicios_gestor` (`id_gestor`),
  ADD KEY `idx_servicios_pais_estado_catalogo` (`id_pais_operacion`,`estado`,`id_catalogo`),
  ADD KEY `idx_servicios_tipo_solicitud` (`tipo_solicitud`);

--
-- Indices de la tabla `sla`
--
ALTER TABLE `sla`
  ADD PRIMARY KEY (`id_sla`),
  ADD UNIQUE KEY `uq_sla_pais_nombre` (`id_pais_operacion`,`nombre`),
  ADD KEY `idx_sla_estado_tiempo` (`estado`,`tiempo_respuesta`,`nombre`),
  ADD KEY `idx_sla_pais_estado` (`id_pais_operacion`,`estado`,`nombre`);

--
-- Indices de la tabla `solicitud_actividades`
--
ALTER TABLE `solicitud_actividades`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `idx_actividades_ticket` (`id_ticket`,`estado`,`fecha_programada`),
  ADD KEY `idx_actividades_responsable` (`id_responsable`),
  ADD KEY `idx_actividades_creador` (`creado_por`);

--
-- Indices de la tabla `solicitud_adjuntos`
--
ALTER TABLE `solicitud_adjuntos`
  ADD PRIMARY KEY (`id_adjunto`),
  ADD KEY `idx_adjuntos_ticket` (`id_ticket`,`creado_en`),
  ADD KEY `idx_adjuntos_usuario` (`id_usuario`),
  ADD KEY `idx_adjuntos_etapa` (`id_ticket_etapa`),
  ADD KEY `idx_adjuntos_ticket_etapa` (`id_ticket`,`id_ticket_etapa`,`id_adjunto`);

--
-- Indices de la tabla `solicitud_calificaciones`
--
ALTER TABLE `solicitud_calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD UNIQUE KEY `uq_calificacion_etapa` (`id_ticket`,`id_ticket_etapa`),
  ADD KEY `idx_calificacion_gestor` (`id_gestor`,`creado_en`),
  ADD KEY `idx_calificacion_solicitante` (`id_solicitante`),
  ADD KEY `idx_calificaciones_etapa` (`id_ticket_etapa`),
  ADD KEY `idx_calificaciones_ticket_fk` (`id_ticket`),
  ADD KEY `idx_calificaciones_tipo_fecha` (`tipo_calificacion`,`creado_en`),
  ADD KEY `idx_calificacion_ticket_fecha` (`id_ticket`,`creado_en`,`id_calificacion`);

--
-- Indices de la tabla `solicitud_comunicaciones`
--
ALTER TABLE `solicitud_comunicaciones`
  ADD PRIMARY KEY (`id_comunicacion`),
  ADD KEY `idx_comunicaciones_ticket_tipo` (`id_ticket`,`tipo`,`creado_en`),
  ADD KEY `idx_comunicaciones_emisor` (`id_emisor`),
  ADD KEY `idx_comunicaciones_etapa` (`id_ticket_etapa`),
  ADD KEY `idx_comunicaciones_etapa_tipo_fecha` (`id_ticket_etapa`,`tipo`,`creado_en`,`id_comunicacion`),
  ADD KEY `idx_comunicaciones_ticket_tipo_fecha` (`id_ticket`,`tipo`,`creado_en`,`id_comunicacion`);

--
-- Indices de la tabla `solicitud_historial`
--
ALTER TABLE `solicitud_historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `idx_historial_ticket` (`id_ticket`,`creado_en`),
  ADD KEY `idx_historial_usuario` (`id_usuario`),
  ADD KEY `idx_historial_caso_fecha` (`id_ticket`,`id_ticket_etapa`,`creado_en`),
  ADD KEY `fk_historial_ticket_etapa` (`id_ticket_etapa`),
  ADD KEY `idx_historial_usuario_fecha` (`id_usuario`,`creado_en`,`id_historial`);

--
-- Indices de la tabla `solicitud_resoluciones`
--
ALTER TABLE `solicitud_resoluciones`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `idx_resolucion_usuario` (`id_resuelto_por`);

--
-- Indices de la tabla `solicitud_vinculos`
--
ALTER TABLE `solicitud_vinculos`
  ADD PRIMARY KEY (`id_vinculo`),
  ADD UNIQUE KEY `uq_solicitud_vinculo` (`id_ticket`,`id_ticket_vinculado`),
  ADD KEY `idx_vinculo_ticket_relacionado` (`id_ticket_vinculado`),
  ADD KEY `idx_vinculo_creador` (`creado_por`);

--
-- Indices de la tabla `soluciones_servicio`
--
ALTER TABLE `soluciones_servicio`
  ADD PRIMARY KEY (`id_solucion`),
  ADD KEY `idx_soluciones_servicio_estado` (`id_servicio`,`estado`,`orden`),
  ADD KEY `idx_soluciones_creado_por` (`creado_por`),
  ADD KEY `idx_soluciones_actualizado_por` (`actualizado_por`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `idx_tickets_solicitante_estado` (`id_usuario`,`estado`,`fecha_creacion`),
  ADD KEY `idx_tickets_tecnico_estado` (`id_tecnico`,`estado`,`fecha_creacion`),
  ADD KEY `idx_tickets_servicio` (`id_servicio`),
  ADD KEY `idx_tickets_espera` (`estado`,`esperando_solicitante_desde`),
  ADD KEY `idx_tickets_proceso` (`id_proceso`),
  ADD KEY `idx_tickets_estado_flujo` (`estado_flujo`),
  ADD KEY `idx_tickets_etapa_actual` (`id_etapa_actual`),
  ADD KEY `idx_tickets_pais_estado_fecha` (`id_pais_operacion`,`estado_flujo`,`fecha_creacion`),
  ADD KEY `idx_tickets_tipo_solicitud` (`tipo_solicitud`),
  ADD KEY `idx_tickets_pais_actualizado_id` (`id_pais_operacion`,`actualizado_en`,`id_ticket`),
  ADD KEY `idx_tickets_pais_usuario_actualizado` (`id_pais_operacion`,`id_usuario`,`actualizado_en`,`id_ticket`),
  ADD KEY `idx_tickets_pais_tecnico_actualizado` (`id_pais_operacion`,`id_tecnico`,`actualizado_en`,`id_ticket`),
  ADD KEY `idx_tickets_pais_flujo_actualizado` (`id_pais_operacion`,`estado_flujo`,`actualizado_en`,`id_ticket`),
  ADD KEY `idx_tickets_pais_proceso` (`id_pais_operacion`,`id_proceso`,`id_ticket`);

--
-- Indices de la tabla `ticket_etapas`
--
ALTER TABLE `ticket_etapas`
  ADD PRIMARY KEY (`id_ticket_etapa`),
  ADD UNIQUE KEY `uq_ticket_etapa_orden` (`id_ticket`,`orden`),
  ADD KEY `idx_ticket_etapas_gestor` (`id_gestor`,`estado`),
  ADD KEY `idx_ticket_etapas_ticket_estado` (`id_ticket`,`estado`),
  ADD KEY `idx_ticket_etapas_plantilla` (`id_proceso_etapa`),
  ADD KEY `fk_ticket_etapas_catalogo` (`id_catalogo`),
  ADD KEY `fk_ticket_etapas_servicio` (`id_servicio`),
  ADD KEY `fk_ticket_etapas_sla` (`id_sla`),
  ADD KEY `fk_ticket_etapas_completado` (`completado_por`),
  ADD KEY `idx_ticket_etapas_padre` (`id_ticket_etapa_padre`,`estado`),
  ADD KEY `idx_ticket_etapas_creador` (`creado_por`),
  ADD KEY `idx_ticket_etapas_activas` (`id_ticket`,`estado`,`id_gestor`),
  ADD KEY `idx_ticket_etapas_solucion` (`id_solucion`,`id_servicio`,`estado`),
  ADD KEY `idx_ticket_etapas_aprobacion` (`estado`,`creado_por`,`id_gestor`,`fecha_marcado_listo`),
  ADD KEY `idx_te_ticket_padre_estado_orden` (`id_ticket`,`id_ticket_etapa_padre`,`estado`,`orden`,`id_ticket_etapa`),
  ADD KEY `idx_te_gestor_estado_actualizado` (`id_gestor`,`estado`,`actualizado_en`,`id_ticket`),
  ADD KEY `idx_te_creador_padre_ticket` (`creado_por`,`id_ticket_etapa_padre`,`id_ticket`);

--
-- Indices de la tabla `ticket_etapa_checklist`
--
ALTER TABLE `ticket_etapa_checklist`
  ADD PRIMARY KEY (`id_ticket_checklist`),
  ADD KEY `idx_ticket_checklist_etapa` (`id_ticket_etapa`,`orden`),
  ADD KEY `fk_ticket_checklist_plantilla` (`id_checklist_plantilla`),
  ADD KEY `fk_ticket_checklist_usuario` (`completado_por`);

--
-- Indices de la tabla `ticket_notificaciones_email_preferencias`
--
ALTER TABLE `ticket_notificaciones_email_preferencias`
  ADD PRIMARY KEY (`id_preferencia`),
  ADD UNIQUE KEY `uq_preferencia_ticket_usuario` (`id_ticket`,`id_usuario`),
  ADD KEY `idx_preferencia_usuario` (`id_usuario`,`habilitada`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `uq_usuarios_cedula` (`cedula`),
  ADD UNIQUE KEY `uq_usuarios_email` (`email`),
  ADD KEY `idx_usuarios_rol_estado` (`id_rol`,`estado`,`nombre`),
  ADD KEY `idx_usuarios_pais_rol_estado` (`id_pais_operacion`,`id_rol`,`estado`),
  ADD KEY `idx_usuarios_pais` (`id_pais`),
  ADD KEY `idx_usuarios_departamento` (`id_departamento`),
  ADD KEY `idx_usuarios_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `usuario_preferencias_interfaz`
--
ALTER TABLE `usuario_preferencias_interfaz`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `configuraciones_servicio`
--
ALTER TABLE `configuraciones_servicio`
  MODIFY `id_opcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `feriados`
--
ALTER TABLE `feriados`
  MODIFY `id_feriado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_acciones`
--
ALTER TABLE `historial_acciones`
  MODIFY `id_historial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensaje` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `proceso_etapas`
--
ALTER TABLE `proceso_etapas`
  MODIFY `id_proceso_etapa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `proceso_etapa_checklist`
--
ALTER TABLE `proceso_etapa_checklist`
  MODIFY `id_checklist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `recuperaciones_password`
--
ALTER TABLE `recuperaciones_password`
  MODIFY `id_recuperacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `sla`
--
ALTER TABLE `sla`
  MODIFY `id_sla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `solicitud_actividades`
--
ALTER TABLE `solicitud_actividades`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_adjuntos`
--
ALTER TABLE `solicitud_adjuntos`
  MODIFY `id_adjunto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `solicitud_calificaciones`
--
ALTER TABLE `solicitud_calificaciones`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud_comunicaciones`
--
ALTER TABLE `solicitud_comunicaciones`
  MODIFY `id_comunicacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `solicitud_historial`
--
ALTER TABLE `solicitud_historial`
  MODIFY `id_historial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `solicitud_vinculos`
--
ALTER TABLE `solicitud_vinculos`
  MODIFY `id_vinculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soluciones_servicio`
--
ALTER TABLE `soluciones_servicio`
  MODIFY `id_solucion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ticket_etapas`
--
ALTER TABLE `ticket_etapas`
  MODIFY `id_ticket_etapa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ticket_etapa_checklist`
--
ALTER TABLE `ticket_etapa_checklist`
  MODIFY `id_ticket_checklist` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ticket_notificaciones_email_preferencias`
--
ALTER TABLE `ticket_notificaciones_email_preferencias`
  MODIFY `id_preferencia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD CONSTRAINT `fk_catalogos_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `chat_conversacion_estado`
--
ALTER TABLE `chat_conversacion_estado`
  ADD CONSTRAINT `fk_chat_estado_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chat_estado_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chat_estado_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `chat_usuario_presencia`
--
ALTER TABLE `chat_usuario_presencia`
  ADD CONSTRAINT `fk_chat_presencia_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `configuraciones_servicio`
--
ALTER TABLE `configuraciones_servicio`
  ADD CONSTRAINT `fk_configuracion_padre` FOREIGN KEY (`id_padre`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_configuracion_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `feriados`
--
ALTER TABLE `feriados`
  ADD CONSTRAINT `fk_feriados_creado_por` FOREIGN KEY (`id_creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_feriados_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_acciones`
--
ALTER TABLE `historial_acciones`
  ADD CONSTRAINT `fk_historial_acciones_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_historial_acciones_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_mensajes_emisor` FOREIGN KEY (`id_emisor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mensajes_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `fk_notificaciones_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notificaciones_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notificaciones_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD CONSTRAINT `fk_procesos_actualizador` FOREIGN KEY (`actualizado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procesos_creador` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procesos_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `proceso_etapas`
--
ALTER TABLE `proceso_etapas`
  ADD CONSTRAINT `fk_proceso_etapas_gestor` FOREIGN KEY (`id_gestor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proceso_etapas_proceso` FOREIGN KEY (`id_proceso`) REFERENCES `procesos` (`id_proceso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proceso_etapas_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proceso_etapas_sla` FOREIGN KEY (`id_sla`) REFERENCES `sla` (`id_sla`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `proceso_etapa_checklist`
--
ALTER TABLE `proceso_etapa_checklist`
  ADD CONSTRAINT `fk_checklist_etapa` FOREIGN KEY (`id_proceso_etapa`) REFERENCES `proceso_etapas` (`id_proceso_etapa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recuperaciones_password`
--
ALTER TABLE `recuperaciones_password`
  ADD CONSTRAINT `fk_recuperacion_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_servicios_catalogo` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogos` (`id_catalogo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_estado_opcion` FOREIGN KEY (`id_estado`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_gestor` FOREIGN KEY (`id_gestor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_impacto` FOREIGN KEY (`id_impacto`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_nivel` FOREIGN KEY (`id_nivel`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_pais` FOREIGN KEY (`id_pais`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_prioridad` FOREIGN KEY (`id_prioridad`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_sla` FOREIGN KEY (`id_sla`) REFERENCES `sla` (`id_sla`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servicios_urgencia` FOREIGN KEY (`id_urgencia`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `sla`
--
ALTER TABLE `sla`
  ADD CONSTRAINT `fk_sla_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_actividades`
--
ALTER TABLE `solicitud_actividades`
  ADD CONSTRAINT `fk_solicitud_actividad_creador` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_actividad_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_actividad_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_adjuntos`
--
ALTER TABLE `solicitud_adjuntos`
  ADD CONSTRAINT `fk_adjuntos_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_adjunto_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_adjunto_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_calificaciones`
--
ALTER TABLE `solicitud_calificaciones`
  ADD CONSTRAINT `fk_calificacion_gestor` FOREIGN KEY (`id_gestor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_solicitante` FOREIGN KEY (`id_solicitante`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificaciones_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_comunicaciones`
--
ALTER TABLE `solicitud_comunicaciones`
  ADD CONSTRAINT `fk_comunicaciones_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_comunicacion_emisor` FOREIGN KEY (`id_emisor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_comunicacion_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_historial`
--
ALTER TABLE `solicitud_historial`
  ADD CONSTRAINT `fk_historial_ticket_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_historial_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_historial_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_resoluciones`
--
ALTER TABLE `solicitud_resoluciones`
  ADD CONSTRAINT `fk_solicitud_resolucion_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_resolucion_usuario` FOREIGN KEY (`id_resuelto_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_vinculos`
--
ALTER TABLE `solicitud_vinculos`
  ADD CONSTRAINT `fk_solicitud_vinculo_creador` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_vinculo_destino` FOREIGN KEY (`id_ticket_vinculado`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_vinculo_origen` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `soluciones_servicio`
--
ALTER TABLE `soluciones_servicio`
  ADD CONSTRAINT `fk_soluciones_actualizado_por` FOREIGN KEY (`actualizado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_soluciones_creado_por` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_soluciones_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_tickets_etapa_actual` FOREIGN KEY (`id_etapa_actual`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_proceso` FOREIGN KEY (`id_proceso`) REFERENCES `procesos` (`id_proceso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_solicitante` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_tecnico` FOREIGN KEY (`id_tecnico`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket_etapas`
--
ALTER TABLE `ticket_etapas`
  ADD CONSTRAINT `fk_ticket_etapas_catalogo` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogos` (`id_catalogo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_completado` FOREIGN KEY (`completado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_creador` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_gestor` FOREIGN KEY (`id_gestor`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_padre` FOREIGN KEY (`id_ticket_etapa_padre`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_plantilla` FOREIGN KEY (`id_proceso_etapa`) REFERENCES `proceso_etapas` (`id_proceso_etapa`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_sla` FOREIGN KEY (`id_sla`) REFERENCES `sla` (`id_sla`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_etapas_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket_etapa_checklist`
--
ALTER TABLE `ticket_etapa_checklist`
  ADD CONSTRAINT `fk_ticket_checklist_etapa` FOREIGN KEY (`id_ticket_etapa`) REFERENCES `ticket_etapas` (`id_ticket_etapa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_checklist_plantilla` FOREIGN KEY (`id_checklist_plantilla`) REFERENCES `proceso_etapa_checklist` (`id_checklist`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_checklist_usuario` FOREIGN KEY (`completado_por`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket_notificaciones_email_preferencias`
--
ALTER TABLE `ticket_notificaciones_email_preferencias`
  ADD CONSTRAINT `fk_preferencia_email_ticket` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_preferencia_email_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarios_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarios_pais` FOREIGN KEY (`id_pais`) REFERENCES `configuraciones_servicio` (`id_opcion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarios_pais_operacion` FOREIGN KEY (`id_pais_operacion`) REFERENCES `paises_operacion` (`id_pais_operacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarios_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_preferencias_interfaz`
--
ALTER TABLE `usuario_preferencias_interfaz`
  ADD CONSTRAINT `fk_preferencia_interfaz_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
