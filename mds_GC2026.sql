-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-09-2026 a las 14:58:09
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
-- Estructura de tabla para la tabla `auditoria_sesiones`
--

CREATE TABLE `auditoria_sesiones` (
  `id_auditoria` bigint(20) UNSIGNED NOT NULL,
  `id_sesion` bigint(20) UNSIGNED DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfil_gestor` int(10) UNSIGNED DEFAULT NULL,
  `modulo` varchar(120) NOT NULL,
  `accion` varchar(160) NOT NULL,
  `detalle` text NOT NULL,
  `direccion_ip` varchar(45) NOT NULL,
  `estado_http` smallint(5) UNSIGNED NOT NULL DEFAULT 200,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auditoria_sesiones`
--

INSERT INTO `auditoria_sesiones` (`id_auditoria`, `id_sesion`, `id_usuario`, `id_perfil_gestor`, `modulo`, `accion`, `detalle`, `direccion_ip`, `estado_http`, `fecha_hora`) VALUES
(1, 6, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 4 · nombre: Travel · descripcion: Travel', '201.244.156.67', 302, '2026-09-02 16:34:04'),
(2, 6, 1, NULL, 'Áreas', 'Crear', 'nombre: Controller · descripcion: Controller', '201.244.156.67', 302, '2026-09-02 16:34:43'),
(3, 6, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 4 · nombre: Travel · descripcion: Travel', '201.244.156.67', 302, '2026-09-02 16:39:06'),
(4, 6, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 12 · nombre: Controller · descripcion: Controller', '201.244.156.67', 302, '2026-09-02 16:40:16'),
(5, 7, 1, NULL, 'Áreas', 'Crear', 'nombre: Control Interno · descripcion: 05', '201.244.156.67', 302, '2026-09-02 16:47:07'),
(6, 7, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 13 · nombre: Control Interno · descripcion: 05', '201.244.156.67', 302, '2026-09-02 16:50:23'),
(7, 7, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-02 16:50:32'),
(8, 7, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-02 16:50:33'),
(9, 11, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 11 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-03 07:57:05'),
(10, 11, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 11 · estado: activo', '201.244.156.67', 303, '2026-09-03 07:57:06'),
(11, 11, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-03 07:57:18'),
(12, 11, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-03 07:57:19'),
(13, 11, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-03 07:57:23'),
(14, 11, 1, NULL, 'Áreas', 'Crear', 'nombre: Cadena de Abastecimiento · descripcion: 05', '201.244.156.67', 302, '2026-09-03 08:00:16'),
(15, 11, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 14 · nombre: Cadena de Abastecimiento · descripcion: 05', '201.244.156.67', 302, '2026-09-03 08:01:06'),
(16, 11, 1, NULL, 'Áreas', 'Crear', 'nombre: Tesoreria · descripcion: 06', '201.244.156.67', 302, '2026-09-03 08:02:08'),
(17, 11, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 15 · nombre: Tesoreria · descripcion: 06', '201.244.156.67', 302, '2026-09-03 08:03:51'),
(18, 12, 1, NULL, 'Usuarios', 'Crear', 'cedula: 0 · nombre: Logística · proceso: Logística · cu1: 0 · cu3: 0 · email: logistica@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 08:06:40'),
(19, 12, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 03516513200', '201.244.156.67', 200, '2026-09-03 08:06:59'),
(20, 12, 1, NULL, 'Usuarios', 'Crear', 'cedula: 03516513200 · nombre: Logistica · proceso: Logistica · cu1: 0 · cu3: 0 · email: logistica@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 08:07:24'),
(21, 12, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 51651512', '201.244.156.67', 200, '2026-09-03 08:07:46'),
(22, 12, 1, NULL, 'Usuarios', 'Crear', 'cedula: 51651512 · nombre: Herramientas y Recursos Propios · proceso: Herramientas y Recursos Propios · cu1: 0 · cu3: 0 · email: HerramientasyRecursosPropios@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 08:08:21'),
(23, 12, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 10571120', '201.244.156.67', 200, '2026-09-03 08:08:47'),
(24, 12, 1, NULL, 'Usuarios', 'Crear', 'cedula: 10571120 · nombre: Cadena de Abastecimiento - Movilidad · proceso: Cadena de Abastecimiento - Movilidad · cu1: 0 · cu3: 0 · email: CadenadeAbastecimiento-Movilidad@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 08:09:19'),
(25, 12, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material Prioritario · descripcion: Descripción: Solicitud de materiales esporádicos y o (no planificados por baja rotación) relacionando código, descripción, cantidad; Para qué cliente y qué carp · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:11:52'),
(26, 12, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material Mensual · descripcion: Descripción: Solicitud de materiales planificados para el mes de ejecución con el análisis del presupuesto asignado. Solicitud: Adjuntar RQ y autorización del g · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:13:16'),
(27, 12, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material Mensual · descripcion: Descripción: Solicitud de materiales planificados para el mes de ejecución con el análisis del presupuesto asignado. Solicitud: Adjuntar RQ y autorización del g · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:14:21'),
(28, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 72 · nombre: 0Pedido de Material Prioritario · descripcion: Descripción: Solicitud de materiales esporádicos y o (no planificados por baja rotación) relacionando código, descripción, cantidad; Para qué cliente y qué carp · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 08:21:29'),
(29, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 72 · nombre: Pedido de Material Prioritario · descripcion: Descripción: Solicitud de materiales esporádicos y o (no planificados por baja rotación) relacionando código, descripción, cantidad; Para qué cliente y qué carp · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 08:22:07'),
(30, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material Mensual · descripcion: Descripción: Solicitud de materiales planificados para el mes de ejecución con el análisis del presupuesto asignado. Solicitud: Adjuntar RQ y autorización del g · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:26:47'),
(31, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material por Implementación · descripcion: Descripción: Solicitud de materiales planificados para implementaciones por cliente y reportar cantidad de técnicos, código, referencia y cantidad de materiales · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:28:08'),
(32, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Movimiento de técnico · descripcion: Descripción: Informe de movimiento de técnico; de carpeta, de cliente, vacaciones o retiro de la compañía para realizar su conciliación Solicitud: Enviar cedula · tipo_solicitud: Incidente · id_sla: 4 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:29:06'),
(33, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Apertura de bodega los Domingos · descripcion: Descripción: Apertura de bodega y personal para atender la operación el día domingo, informando capacidades. Solicitud: Informar que bodega, cuantas móviles lab · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:33:28'),
(34, 13, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 3 Días · tiempo_respuesta: 3 · unidad: dias', '201.244.156.67', 302, '2026-09-03 08:33:47'),
(35, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 78 · nombre: Apertura de bodega los Domingos · descripcion: Descripción: Apertura de bodega y personal para atender la operación el día domingo, informando capacidades. Solicitud: Informar que bodega, cuantas móviles lab · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 08:34:16'),
(36, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Pedido de Material para arreglos Locativos · descripcion: Descripción: Solicitud de materiales para las adecuaciones de las bodegas y áreas administrativas del grupo Conectar Solicitud: Informar la necesidad de referen · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:39:23'),
(37, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambio Mensual de Herramientas y Dotación · descripcion: Descripción: Cambios solicitados por cada proyecto para su soporte operativo (daños, perdidas) Solicitud: Adjuntar Autorización de la Gerencia del proyecto y fo · tipo_solicitud: Requerimiento · id_sla: 1 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:40:49'),
(38, 13, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 17 días · tiempo_respuesta: 17 · unidad: dias', '201.244.156.67', 302, '2026-09-03 08:41:11'),
(39, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 80 · nombre: Cambio Mensual de Herramientas y Dotación · descripcion: Descripción: Cambios solicitados por cada proyecto para su soporte operativo (daños, perdidas) Solicitud: Adjuntar Autorización de la Gerencia del proyecto y fo · tipo_solicitud: Requerimiento · id_sla: 15 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 08:41:45'),
(40, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Préstamo de Herramientas, Y Epps Soporte Administrativo · descripcion: Descripción: Asignación en préstamo de herramientas y epps para soporte de arreglos locativos en las bodegas. Solicitud: Se solicita descripción especifica del  · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Logistica · id_gestor: 17 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 08:44:21'),
(41, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 81 · nombre: Préstamo de Herramientas, Y Epps Soporte Administrativo · descripcion: Descripción: Asignación en préstamo de herramientas y epps para soporte de arreglos locativos en las bodegas. Solicitud: Se solicita descripción especifica del  · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 08:45:30'),
(42, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 80 · nombre: Cambio Mensual de Herramientas y Dotación · descripcion: Descripción: Cambios solicitados por cada proyecto para su soporte operativo (daños, perdidas) Solicitud: Adjuntar Autorización de la Gerencia del proyecto y fo · tipo_solicitud: Requerimiento · id_sla: 15 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 08:45:43'),
(43, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Asignación Celular Corporativo-Administrativo · descripcion: Descripción: Solicitud de equipos de comunicación para un área especifica en función de sus actividades contratadas. Solicitud: Adjuntar autorización de la gere · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:46:43'),
(44, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Requerimiento de Dotación y EPPS · descripcion: Descripción: Solicitud inicial de EPPS desde el área de talento humano por ingresos nuevos Solicitud: Adjuntar formato RQ actualizado, relación de tallaje, proy · tipo_solicitud: Requerimiento · id_sla: 15 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:50:12'),
(45, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Herramientas por Implementación (Móviles Nuevas) · descripcion: Descripción: Solicitud de herramientas o recursos necesarios para la implementación y puesta en marcha de nuevas móviles. Solicitud: Adjuntar RQ actualizada, au · tipo_solicitud: Requerimiento · id_sla: 15 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:51:45'),
(46, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambios de Equipos EPPS y Dotación · descripcion: Descripción: Requerimiento direccionado a situaciones extra, ocurridas en la operación durante el mes de tramite de sus cambios de herramientas Solicitud: Adjun · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:52:51'),
(47, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Stock Consumibles, Dotación, Botas y EPPS · descripcion: Descripción: Solicitud desde cada almacén de herramientas para stock mensual. Solicitud: Adjuntar autorización de la gerencia del proyecto y formato RQ actualiz · tipo_solicitud: Requerimiento · id_sla: 15 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 08:53:54'),
(48, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Líneas Nuevas (Móviles Nuevas) · descripcion: Descripción: Requerimiento Inicial para implementación de proyecto Solicitud: Adjuntar RQ actualizada, autorización de la gerencia del proyecto y acta kick off  · tipo_solicitud: Requerimiento · id_sla: 13 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:56:38'),
(49, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Reposición por Hurto y Perdida · descripcion: Descripción: Solicitud para reposición de chip por perdida o hurto Solicitud: Se solicita información del personal responsable de la línea y el descuento firmad · tipo_solicitud: Incidente · id_sla: 2 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 08:59:10'),
(50, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Mantenimiento Maquinaria equipos de medición · descripcion: Descripción: Servicio de mantenimiento, calibración, arreglos de empalmadoras, escaleras, OTDRs entre otros Solicitud: \"Para una óptima atención de sus solicitu · tipo_solicitud: Requerimiento · id_sla: 9 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:00:48'),
(51, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Solicitud prioritaria herramientas operativas · descripcion: Descripción: Requerimiento direccionado a situaciones ocurridas en la operación durante el mes de trámite por faltantes de herramientas Solicitud: Adjuntar auto · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 3 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:01:41'),
(52, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Correspondencia y Paquetes · descripcion: Descripción: Servicio relacionado con la recepción y despacho de paquetes, cajas a diferentes zonas del país. Solicitud: Por favor diligenciar los campos extras · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 3 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:02:34'),
(53, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambios de Herramienta · descripcion: Descripción: Requerimiento direccionado a situaciones extra, ocurridas en la operación durante el mes de tramite de sus cambios de herramientas Solicitud: Adjun · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Herramientas y Recursos Propios · id_gestor: 18 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:03:42'),
(54, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Vehículo por Implementación de 1 a 10 · descripcion: Descripción: Solicitud de vehículos nuevos o por ampliación de capacidades para los distintos proyectos de Conectar. Solicitud: Se debe adjuntar formato R.Q. AD · tipo_solicitud: Requerimiento · id_sla: 1 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:05:40'),
(55, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Vehículo por Implementación de 10 en adelante. · descripcion: Descripción: Solicitud de vehículos nuevos o por ampliación de capacidades para los distintos proyectos de Conectar. Solicitud: Se debe adjuntar formato R.Q. AD · tipo_solicitud: Requerimiento · id_sla: 5 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:08:24'),
(56, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Inspección vehículo por Implementación a gestores y subcontratistas · descripcion: Descripción: Solicitud de inspección del vehículo para avalar su estado técnico y documental. Solicitud: Recuerde que previo a la inspección vehicular por parte · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:09:20'),
(57, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambio de vehículo por configuración de la móvil o zona de trabajo de 1 a 5 · descripcion: Descripción: Solicitud para realizar cambio de vehículos por modificaciones en las distintas operaciones, ampliaciones o disminuciones de personal técnico en la · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:10:04'),
(58, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambio de vehículo por configuración de la móvil o zona de trabajo de 6 a 20 · descripcion: Descripción: Solicitud para realizar cambio de vehículos por modificaciones en las distintas operaciones, ampliaciones o disminuciones de personal técnico en la · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:10:56'),
(59, 13, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 21 días · tiempo_respuesta: 21 · unidad: dias', '201.244.156.67', 302, '2026-09-03 09:11:13'),
(60, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 14 · id_servicio: 97 · nombre: Cambio de vehículo por configuración de la móvil o zona de trabajo de 6 a 20 · descripcion: Descripción: Solicitud para realizar cambio de vehículos por modificaciones en las distintas operaciones, ampliaciones o disminuciones de personal técnico en la · tipo_solicitud: Requerimiento · id_sla: 16 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:11:39'),
(61, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Requerimiento Chip de combustible Bogotá · descripcion: Descripción: Solicitud de chip de abastecimiento de combustibles a nivel nacional. Solicitud: Esta solicitud solo aplica para vehículos o activos de la compañía · tipo_solicitud: Incidente · id_sla: 2 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:12:35'),
(62, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Requerimiento chip de peajes · descripcion: Descripción: Asignación de chip o lectores Fly Pass para el tránsito libre de los vehículos al servicio de la compañía por los diferentes peajes a nivel naciona · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:13:50'),
(63, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Reporte de choques simples y graves · descripcion: Descripción: Reporte de incidentes y/o accidentes de tránsito. Solicitud: Adjuntar registro fotográfico del entorno del evento vial donde ocurrió el incidente y · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:15:23'),
(64, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Prueba de conducción para vehículo 4 ruedas · descripcion: Descripción: Proceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía. Solicitud: Adjuntar información del conductor a evaluar · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:16:21'),
(65, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Revisión o inspección de motos · descripcion: Descripción: Proceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía. Solicitud: Para el registro, control y programación de  · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:17:21'),
(66, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Reposición de botiquín o elementos vencidos o faltantes · descripcion: Descripción: Proceso para la reposición de botiquines de primeros auxilios y/o reposición de elementos. Solicitud: Para el registro y control de la reposición d · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:18:35'),
(67, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Reposición kit de herramientas · descripcion: Descripción: Reposición de elementos del Kit de Carreteras Solicitud: Recuerde que para el debido registro y control de la reposición del botiquín de los vehícu · tipo_solicitud: Requerimiento · id_sla: 1 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:20:47'),
(68, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Usuario GPS · descripcion: Descripción: Solicitud para el acceso al monitoreo satelital de vehículos (GPS). Solicitud: Se debe justificar el alcance requerido en las plataformas de monito · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:22:10'),
(69, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Traslado, fletes y acarreos Contemplados en el contrato con el cliente · descripcion: Descripción: Solicitud de Traslados, Fletes y acarreos, contemplados y no contemplados en el contrato con los clientes. Solicitud: Para una oportuna y satisfact · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:23:09'),
(70, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Validación y aprobación para cambio de cargo para conductor · descripcion: Descripción: Validaciones y avales del proceso de movilidad referentes a cambios de cargo de personal conductor de la compañía. Solicitud: Adjuntar la licencia  · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:23:49'),
(71, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Logos de imagen corporativa de clientes para vehículos · descripcion: Descripción: Solicitud de impresión e instalación de logos corporativos o del cliente en vehículos cuatro ruedas. Solicitud: Adjuntar datos relevantes a los log · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:24:38'),
(72, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Desmonte de vehículos · descripcion: Descripción: Entrega y/o devolución de vehículos al proceso de movilidad. Previa revisión decláusula # 14 del contrato de vehículos dispuesto por la compañía, d · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:25:46'),
(73, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Traslado de vehículos (Niñera-Grúa) · descripcion: Descripción: Solicitud de vehículos de manera no tripulada. Solicitud: Adjuntar autorización del gerente del proyecto.y realizar la descripción de la solicitud  · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 09:32:24'),
(74, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Requerimiento Chip de combustible otras ciudades · descripcion: Descripción: Solicitud de chip de abastecimiento de combustibles a nivel nacional. Solicitud: Esta solicitud solo aplica para vehículos o activos de la compañía · tipo_solicitud: Incidente · id_sla: 7 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:33:06'),
(75, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 14 · nombre: Cambio de motocicleta · descripcion: Descripción: Proceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía. Solicitud: El personal técnico que devengue el pago de  · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:34:00'),
(76, 13, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 2065161651', '201.244.156.67', 200, '2026-09-03 09:34:52'),
(77, 13, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 145454065165', '201.244.156.67', 200, '2026-09-03 09:36:08'),
(78, 13, 1, NULL, 'Usuarios', 'Crear', 'cedula: 145454065165 · nombre: Contabilidad · proceso: Contabilidad · cu1: 0 · cu3: 0 · email: Contabilidad@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 09:36:32'),
(79, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 2 · id_servicio: 2 · nombre: Estados Financieros · descripcion: Descripción: Son los estados financieros de la compañía a un corte determinado, semestral o trimestral. Solicitud: Describir cual será el uso de esta informació · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 09:37:48'),
(80, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Capacitación en Ecuación · descripcion: Descripción: Solicitud de capacitación al personal nuevo de la herramienta de la Ecuación Solicitud: La solicitud solo podrá ser realizada por:Lego, gerente, Ca · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:43:49'),
(81, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Corrección y Aclaración de Ecuación · descripcion: Descripción: Aclaración por temas de gastos de la Ecuación. Solicitud: La solicitud debe venir validada por el proceso responsable y con el archivo de correcion · tipo_solicitud: Incidente · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:44:57'),
(82, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Rembolso de Caja menor · descripcion: Descripción: Solicitud de reembolso de caja menor una vez este consumido el porcentaje de cupo según la política. Solicitud: Formato de legalizacion de caja men · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:45:53'),
(83, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Aumento de Caja Menor · descripcion: Descripción: Solicitud de aumento de Caja Menor. Solicitud: 1.Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Int · tipo_solicitud: Incidente · id_sla: 4 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:46:54'),
(84, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Disminución de Caja Menor · descripcion: Descripción: Disminución de Caja Menor. Solicitud: 2. Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Interno y G · tipo_solicitud: Requerimiento · id_sla: 13 · proceso: Cadena de Abastecimiento - Movilidad · id_gestor: 19 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:47:55'),
(85, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Cierre de Caja Menor · descripcion: Descripción: Solicitud de cierre de Caja Menor. Solicitud: Formato cierre de caja menor, firmado y Arqueo de la caja menor; debidamente diligenciados. Consignac · tipo_solicitud: Incidente · id_sla: 10 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:49:40'),
(86, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 2 · id_servicio: 117 · nombre: Disminución de Caja Menor · descripcion: Descripción: Disminución de Caja Menor. Solicitud: 2. Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Interno y G · tipo_solicitud: Requerimiento · id_sla: 13 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 09:50:04'),
(87, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 2 · id_servicio: 116 · nombre: Aumento de Caja Menor · descripcion: Descripción: Solicitud de aumento de Caja Menor. Solicitud: 1.Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Int · tipo_solicitud: Incidente · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:50:17'),
(88, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 2 · id_servicio: 115 · nombre: Rembolso de Caja menor · descripcion: Descripción: Solicitud de reembolso de caja menor una vez este consumido el porcentaje de cupo según la política. Solicitud: Formato de legalizacion de caja men · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:50:26'),
(89, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 2 · id_servicio: 114 · nombre: Corrección y Aclaración de Ecuación · descripcion: Descripción: Aclaración por temas de gastos de la Ecuación. Solicitud: La solicitud debe venir validada por el proceso responsable y con el archivo de correcion · tipo_solicitud: Incidente · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:50:36'),
(90, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Cambio de Custodio · descripcion: Descripción: Solicitud de cambio de Custodio. Solicitud: Formato de cambio de custodio, cierre de caja 1 y 2. SLA 3 Días. · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 09:51:42'),
(91, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: RUT Actualizado · descripcion: Descripción: El RUT no superior a 30 Días de Expedición Solicitud: Describir cual será el uso de esta información. Nota: Controller, Jurídica, Adquisidores y Te · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:53:01'),
(92, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 2 · nombre: Impuestos Pagados · descripcion: Descripción: Impuestos presentados según la necesidad del cliente Solicitud: Describir cual será el uso de esta información. Nota: Controller y Tesorería. SLA 5 · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:54:12'),
(93, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 3 · id_servicio: 3 · nombre: Consultorio Jurídico · descripcion: Descripción: Registro de solicitudes relacionadas con la elaboración de conceptos y asesorías jurídicas (no incluye revisión de documentos), solicitadas por cua · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Aliados · id_gestor: 11 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:56:19'),
(94, 13, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 56151581651052', '201.244.156.67', 200, '2026-09-03 09:56:28'),
(95, 13, 1, NULL, 'Usuarios', 'Crear', 'cedula: 56151581651052 · nombre: Jurídica · proceso: Jurídica · cu1: 0 · cu3: 0 · email: Juridica@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 09:57:09'),
(96, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 3 · id_servicio: 3 · nombre: Consultorio Jurídico · descripcion: Descripción: Registro de solicitudes relacionadas con la elaboración de conceptos y asesorías jurídicas (no incluye revisión de documentos), solicitadas por cua · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-03 09:57:58'),
(97, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Creación De Documentos y Biblioteca de Minutas · descripcion: Descripción: Registro y gestión de solicitudes para la elaboración de documentos de carácter general y todos los de contenido jurídico, según las necesidades de · tipo_solicitud: Requerimiento · id_sla: 13 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 09:58:51'),
(98, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Demandas Tutelas y PQR · descripcion: Descripción: Espacio destinado al registro, control y organización de demandas, tutelas y/o PQR recibidas por la compañía, con el fin de realizar su adecuada ge · tipo_solicitud: Incidente · id_sla: 1 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:00:33'),
(99, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Gestión Corporativa y de Familia · descripcion: Descripción: Proceso mediante el cual se canalizan y gestionan las solicitudes relacionadas con la administración corporativa y empresarial de las personas jurí · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Contabilidad · id_gestor: 20 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:03:11'),
(100, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Procesos Disciplinarios TH · descripcion: Descripción: Ser vicio diseñado para garantizar el debido proceso disciplinario de los trabajadores. Antes de aplicarse una sanción disciplinaria, el empleador  · tipo_solicitud: Incidente · id_sla: 7 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:04:12'),
(101, 13, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 3 · id_servicio: 124 · nombre: Gestión Corporativa y de Familia · descripcion: Descripción: Proceso mediante el cual se canalizan y gestionan las solicitudes relacionadas con la administración corporativa y empresarial de las personas jurí · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:04:32'),
(102, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Solicitud de casos a la Temporal · descripcion: Descripción: En este módulo se deben registrar todas las solicitudes cuando se requiera subir caso a la temporal (CONTACTAMOS) respecto a terminaciones de contr · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:05:22'),
(103, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Solicitudes Retiro De Personal · descripcion: Descripción: Gestion de solicitudes para retiro de personal adscrito al grupo Conectar, una vez agotados los medios de comunicación con el trabajador. Aplica pa · tipo_solicitud: Incidente · id_sla: 14 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:06:35'),
(104, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Revisión y aprobación de documentos · descripcion: Descripción: A través de este servicio se gestionan los documentos que requieren revisión y aprobación por parte del área jurídica, previo a la firma del repres · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:07:29'),
(105, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Revisión y aprobación casos SAGRILAFT con debida diligencia · descripcion: Descripción: Revisión de casos con novedades en el reporte SARLAFT de debida diligencia, generando el concepto correspondiente con su aprobación o no aprobación · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:08:27'),
(106, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Revisión y autorización de reingresos o contratación de casos especiales · descripcion: Descripción: Proceso de revisión y autorización de casos de reingreso de personas naturales que buscan vincularse nuevamente a la compañía, así como los proceso · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:09:27'),
(107, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Firma de documentos aprobados · descripcion: Descripción: Gestion de firmas de documentos anteriormente aprobados y revisados por el área jurídica para posterior firma de quien se solicite. Solicitud: Tene · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:10:14'),
(108, 13, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 3 · nombre: Solicitud de información contratos comerciales · descripcion: Descripción: Solicitud de información asociada a contratos comerciales, archivos en Excel o documentación de respaldo requerida para su análisis o seguimiento.  · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Jurídica · id_gestor: 21 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:10:55'),
(109, 13, 1, NULL, 'Flujos', 'Eliminar etapa', 'id_proceso: 8 · id_proceso_etapa: 15', '201.244.156.67', 302, '2026-09-03 10:12:25'),
(110, 13, 1, NULL, 'Flujos', 'Eliminar etapa', 'id_proceso: 8 · id_proceso_etapa: 14', '201.244.156.67', 302, '2026-09-03 10:12:28'),
(111, 13, 1, NULL, 'Flujos', 'Eliminar etapa', 'id_proceso: 8 · id_proceso_etapa: 13', '201.244.156.67', 302, '2026-09-03 10:12:30'),
(112, 13, 1, NULL, 'Flujos', 'Eliminar etapa', 'id_proceso: 1 · id_proceso_etapa: 1', '201.244.156.67', 302, '2026-09-03 10:12:38'),
(113, 13, 1, NULL, 'Flujos', 'Eliminar etapa', 'id_proceso: 6 · id_proceso_etapa: 11', '201.244.156.67', 302, '2026-09-03 10:12:46'),
(114, 15, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 16541651321651', '201.244.156.67', 200, '2026-09-03 10:35:58'),
(115, 15, 1, NULL, 'Usuarios', 'Crear', 'cedula: 16541651321651 · nombre: Atracción de Talentos · proceso: Atracción de Talentos · cu1: 0 · cu3: 0 · email: Atracciondetalentos@conectartv.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 10:36:59'),
(116, 14, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 5 · id_servicio: 8 · nombre: Solicitud de personal (cargos operativos) Reemplazo · descripcion: Descripción: Permite gestionar la solicitud de personal operativo para reemplazar colaboradores que han dejado su cargo, garantizando la continuidad operativa y · tipo_solicitud: Requerimiento · id_sla: 9 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:39:05'),
(117, 14, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 5 · id_servicio: 5 · nombre: Solicitud de personal (cargos operativos) Implementación · descripcion: Descripción: Permite gestionar la solicitud de personal operativo requerido para nuevos proyectos o procesos de implementación, asegurando la asignación oportun · tipo_solicitud: Requerimiento · id_sla: 16 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:40:46'),
(118, 14, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 11 Días · tiempo_respuesta: 11 · unidad: dias', '201.244.156.67', 302, '2026-09-03 10:41:06'),
(119, 14, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 23 Días · tiempo_respuesta: 23 · unidad: dias', '201.244.156.67', 302, '2026-09-03 10:41:24'),
(120, 14, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 5 · id_servicio: 8 · nombre: Solicitud de personal (cargos operativos) Reemplazo · descripcion: Descripción: Permite gestionar la solicitud de personal operativo para reemplazar colaboradores que han dejado su cargo, garantizando la continuidad operativa y · tipo_solicitud: Requerimiento · id_sla: 18 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:42:00'),
(121, 14, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 5 · id_servicio: 8 · nombre: Solicitud de personal (cargos operativos) Reemplazo · descripcion: Descripción: Permite gestionar la solicitud de personal operativo para reemplazar colaboradores que han dejado su cargo, garantizando la continuidad operativa y · tipo_solicitud: Requerimiento · id_sla: 17 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:42:18'),
(122, 14, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 5 · id_servicio: 5 · nombre: Solicitud de personal (cargos operativos) Implementación · descripcion: Descripción: Permite gestionar la solicitud de personal operativo requerido para nuevos proyectos o procesos de implementación, asegurando la asignación oportun · tipo_solicitud: Requerimiento · id_sla: 18 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-03 10:42:48'),
(123, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Solicitud de personal (cargos administrativos reemplazos y cargos nuevos) · descripcion: Descripción: Permite gestionar la solicitud de personal para cargos administrativos, por creación de un nuevo cargo, garantizando que el proceso de vinculación  · tipo_solicitud: Requerimiento · id_sla: 1 · proceso: Atracción de Talentos · id_gestor: 22 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 10:46:19'),
(124, 14, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 165165165165165', '201.244.156.67', 200, '2026-09-03 10:47:22'),
(125, 14, 1, NULL, 'Usuarios', 'Crear', 'cedula: 165165165165165 · nombre: HeadCount · proceso: HeadCount · cu1: 0 · cu3: 0 · email: Headcount@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 10:47:43'),
(126, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Cambio de cargo · descripcion: Descripción: Servicio destinado a gestionar los cambios de cargo del personal activo, incluyendo ascensos, promociones o movimientos internos. Solicitud: \"Indic · tipo_solicitud: Incidente · id_sla: 11 · proceso: HeadCount · id_gestor: 23 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:49:44'),
(127, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Cambio de Proyecto · descripcion: Descripción: Servicio destinado a gestionar traslados de personal activo entre diferentes proyectos o movimientos internos en la compañía. Solicitud: \"Indicar l · tipo_solicitud: Incidente · id_sla: 11 · proceso: HeadCount · id_gestor: 23 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:51:05'),
(128, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Cambio de código de unidad (CU1 y CU3) · descripcion: Descripción: Servicio destinado a gestionar los cambios de códigos de unidad, generados por traslados de ciudad, reasignación de proyectos o ajustes en los proc · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: HeadCount · id_gestor: 23 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:52:12'),
(129, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Retiro de Cesantias · descripcion: Descripción: Gestión de solicitudes para la autorización de retiro de cesantías del personal activo, ya sea para estudios superiores del trabajador o de sus fam · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: HeadCount · id_gestor: 23 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:53:49'),
(130, 14, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 5165165165165', '201.244.156.67', 200, '2026-09-03 10:54:12');
INSERT INTO `auditoria_sesiones` (`id_auditoria`, `id_sesion`, `id_usuario`, `id_perfil_gestor`, `modulo`, `accion`, `detalle`, `direccion_ip`, `estado_http`, `fecha_hora`) VALUES
(131, 14, 1, NULL, 'Usuarios', 'Crear', 'cedula: 5165165165165 · nombre: Diseño · proceso: Diseño · cu1: 0 · cu3: 0 · email: Diseno@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 10:54:54'),
(132, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación Post · descripcion: Descripción: Es una entrada o artículo publicado en un blog, foro, red social o cualquier plataforma en línea. Puede ser un texto, una imagen o una combinación  · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:56:35'),
(133, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Catálogo de servicios plantilla · descripcion: Descripcion: Se realiza una plantilla que ayuda a diagramar con facilidad una idea ya sea, una lista o un inventario que detallen todos los servicios que una or · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 10:59:11'),
(134, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación o modificación de Boletín · descripcion: Descripción: Un boletín es un documento oficial que contiene información importante(eventos, visitas, noticias, etc.) como disposiciones o reglamentos. Solicitu · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:02:50'),
(135, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación de Videos · descripcion: Descripción: Creación y edición de contenido audiovisual llamativo tanto para externos (clientes) o internos (empleados) Solicitud: Adjuntar información en form · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:04:06'),
(136, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación Infografías · descripcion: Descripción: Es una representación visual de información. Utiliza una combinación de imágenes, gráficos, diagramas y texto para explicar conceptos complejos de  · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:07:35'),
(137, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación Banners · descripcion: Descripción: Es un formato de publicidad en internet que consiste en una imagen o texto que se muestra en un sitio web. Su objetivo principal es captar la atenc · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:08:22'),
(138, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación Volantes · descripcion: Descripción: Es una pieza impresa de pequeño formato, generalmente rectangular, que se utiliza con fines publicitarios. Solicitud: Adjuntar información en forma · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:09:12'),
(139, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Toma de fotografias para Catalogo o Portafolio · descripcion: Descripción: Servicio que permite gestionar la toma de fotografía para catálogos, ideal para destacar productos con imágenes nítidas, bien iluminadas y de alta  · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:10:02'),
(140, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creación de Catalogo o Portafolio · descripcion: Descripción: \"Es una herramienta visual y/o digital que presenta una selección de productos, servicios o trabajos realizados, con el objetivo de mostrar lo mejo · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:11:31'),
(141, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Actualización de catálogo o Portafolio · descripcion: Descripción: Es una lista o inventario que detalla todos los servicios que una organización ofrece a sus clientes, ya sean internos (empleados) o externos (clie · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Diseño · id_gestor: 24 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:12:16'),
(142, 14, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 454165465132165', '201.244.156.67', 200, '2026-09-03 11:12:37'),
(143, 14, 1, NULL, 'Usuarios', 'Crear', 'cedula: 454165465132165 · nombre: Formación · proceso: Formación · cu1: 0 · cu3: 0 · email: Formacion@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 11:13:01'),
(144, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Solicitud de PMC (plan de mejoramiento continuo) · descripcion: Descripción: Actividad Enfocada a la actualización de procedimientos, divulgación de información, configuración y/o manejo de equipos y/o aplicativos y/o proces · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:16:13'),
(145, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Actualización de Manuales o procedimientos técnicos del cliente. · descripcion: Descripción: \"Servicio orientado a la actualización de manuales, procedimientos técnicos y documentación del cliente, incluyendo modificaciones a los procesos a · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:17:26'),
(146, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Procesos de certificación · descripcion: Descripción: Corresponde al acompañamiento y apoyo en procesos de certificación interna o externa, solicitados por el cliente o líder de proceso, para asegurar  · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:18:15'),
(147, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Seguimiento de productividad · descripcion: Descripción: Servicio orientado al seguimiento y evaluación de la productividad del personal técnico, mediante mesas de trabajo y análisis de desempeño, con el  · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:19:06'),
(148, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Creacion de manuales · descripcion: Descripción: Servicio orientado a la creación de manuales y documentación procedimental, de acuerdo con los requisitos establecidos por el cliente o los proceso · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:20:25'),
(149, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Diagnostico de equipos · descripcion: Descripción: Proceso para diagnosticar y verificar el correcto funcionamiento de equipos de medición de red GPON y de instalación de servicios FTTH Solicitud: P · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 11:21:46'),
(150, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Mantenimiento de equipos · descripcion: Descripción: El proceso para realizar el mantenimiento y ajuste mecánico y correcto funcionamiento de equipos de medición de red GPON y de instalación de servic · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 11:22:54'),
(151, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Capacitación de habilidades blandas · descripcion: Descripción: Gestionar y brindar capacitaciones o cursos cortos certificados en habilidades blandas, alineados con las necesidades de los procesos y enfocados e · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:23:54'),
(152, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Capacitacion de habilidades ofimaticas · descripcion: Descripción: Gestionar y brindar capacitaciones o cursos cortos certificados en herramientas y procesos ofimáticos, adaptados a las necesidades específicas de c · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:25:24'),
(153, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Capacitación de aplicativos de clientes · descripcion: Descripción: Brindar capacitación sobre aplicativos desarrollados o actualizados por nuestros clientes, facilitando su adopción por parte del personal operativo · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:26:34'),
(154, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Acompañamientos a terreno · descripcion: Descripción: Realizar acompañamientos en terreno para garantizar el cumplimiento de los procedimientos establecidos por el cliente y asegurar la calidad de los  · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:28:19'),
(155, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Competencias complementarias · descripcion: Descripción: En alianza con entidades educativas y diferentes convenios, gestionamos y brindamos capacitaciones y cursos cortos certificados, orientados a forta · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Formación · id_gestor: 25 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 11:29:29'),
(156, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Pruebas de conocimiento · descripcion: Descripción: \"Garantizar la contratación de personal técnico idóneo para la actividad que va a ser contratado para ello realizamos entrevistas a todos los candi · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Formación · id_gestor: 25 · urgencia_valor: 3 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:30:58'),
(157, 14, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 5216516513200521', '201.244.156.67', 200, '2026-09-03 11:32:55'),
(158, 14, 1, NULL, 'Usuarios', 'Crear', 'cedula: 5216516513200521 · nombre: Talento Humano · proceso: Talento Humano · cu1: 0 · cu3: 0 · email: talentohumano@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 11:33:30'),
(159, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Perfil para cargo existente · descripcion: Descripción: Servicio orientado a la entrega y consulta de perfiles de cargos vigentes dentro de la organización, con la finalidad de validar funciones, respons · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Talento Humano · id_gestor: 26 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:37:03'),
(160, 14, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Perfil para cargos nuevos Tácticos y Operativos · descripcion: Descripción: Servicio orientado a la entrega de perfiles de cargos nuevos, tácticos y operativos dentro de la organización, con la finalidad de validar funcione · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Talento Humano · id_gestor: 26 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:40:46'),
(161, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 5 · nombre: Perfil para cargo nuevo Estratégico · descripcion: Descripción: Servicio orientado a la entrega de perfiles de cargos nuevos estratégicos dentro de la organización, con la finalidad de validar funciones, respons · tipo_solicitud: Requerimiento · id_sla: 1 · proceso: Talento Humano · id_gestor: 26 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 11:54:17'),
(162, 16, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 5156165165', '201.244.156.67', 200, '2026-09-03 11:57:43'),
(163, 16, 1, NULL, 'Usuarios', 'Crear', 'cedula: 5156165165 · nombre: Tesorería · proceso: Tesorería · cu1: 0 · cu3: 0 · email: Tesoreria@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 11:58:05'),
(164, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Solicitud de Anticipos · descripcion: Descripcion: Proceso para todos los pagos que se deban realizar en la adquisición de forma rápida en sitios donde no se tengan proveedores inscritos por parte d · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 11:59:47'),
(165, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Creación cajas menores · descripcion: Descripción: \"La caja menor, es un fondo que se crea en las empresas para dar manejo a los gastos menores. Definir que son gastos menores, y sé asigna a una per · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 12:01:53'),
(166, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Solicitud soportes de pago · descripcion: Descripción: Solicitud de información acerca de estado de procesamiento de pagos Solicitud: Indicar la descripción del tercero (Nit, Razón social). confirmación · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 12:02:44'),
(167, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Solicitud estado de cuenta por pagar · descripcion: Descripción: Información acerca de un estado de cuenta proveedor o acreedor Solicitud: Indicar la descripción del tercero (Nit, Razón social). confirmación de l · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 12:06:02'),
(168, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Solicitud estados cartera · descripcion: Descripción: Solicitud de información acerca de estado del cliente en cartera Solicitud: Indicar la descripción del tercero (Nit, Razón social). confirmación de · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 12:08:40'),
(169, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Creación llave Maestra People Pass · descripcion: Descripción: Tarjeta con chips que se carga con un valor monetario definido en el cual la persona custodia puede designar los recursos entre otras tarjetas, com · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 12:09:51'),
(170, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Recarga Llave Maestra · descripcion: Descripción: Recarga llave maestra por consumo en gastos operativos autorizados sobre el fondo Solicitud: Informe relación de consumo (legalización) en gastos c · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 12:11:18'),
(171, 16, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 15 · nombre: Solicitud certificados de cámara de comercio y Certificaciones Bancarias · descripcion: Descripción: Solicitud renovación de certificados de cámara de comercio y Certificaciones Bancarias Solicitud: Nit de la compañía a solicitar y Entidad financie · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: Tesorería · id_gestor: 27 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 12:12:07'),
(172, 17, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 32132132032032032', '201.244.156.67', 200, '2026-09-03 14:11:02'),
(173, 17, 1, NULL, 'Usuarios', 'Crear', 'cedula: 32132132032032032 · nombre: TICs · proceso: TICs · cu1: 0 · cu3: 0 · email: TICs@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 14:11:28'),
(174, 17, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 6 · nombre: Gestión de Usuarios Correo Corporativo · descripcion: Descripción: Creación o modificación de usuarios de correos electrónicos corporativos. Solicitud: Gestión de usuarios correo corporativo. Para modificación no s · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 14:13:10'),
(175, 17, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 7 · nombre: Gestión de Usuarios Uniclass · descripcion: Descripción: Creación o modificación de usuarios en la plataforma Uniclass. Solicitud: Gestión de usuarios Uniclass solicitado directamente por el jefe del proc · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 14:19:24'),
(176, 17, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 9 · nombre: Gestión de Usuarios INFOR · descripcion: Descripción: Creación o modificación de usuarios en la plataforma INFOR. Solicitud: Gestión de usuarios INFOR tramitado por personal del proceso solicitante. SL · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 14:20:39'),
(177, 17, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 10 · nombre: Gestión de Usuarios SICI · descripcion: Descripción: Creación o modificación de usuarios en la plataforma SICI. Solicitud: Gestión de usuarios SICI SLA 1 Días. · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 14:32:02'),
(178, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Gestión de accesos SICI · descripcion: Descripción: Gestión de los accesos internos en la plataforma SICI (Acceso a Bodegas, Departamentos, Centros, ETC) Solicitante: Gestión de accesos SICI SLA 1 Dí · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:33:53'),
(179, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Solicitud de Creación o modificaciones a Desarrollos · descripcion: Descripción: Creación o modificación de desarrollos, plantillas, formatos y demas recursos virtuales diseñados para el uso de la compañía. Solicitud: Solicitud  · tipo_solicitud: Requerimiento · id_sla: 5 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 14:34:45'),
(180, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR · descripcion: Descripción: Gestión de los accesos internos en la plataforma INFOR (Creación y gestión de requerimientos). Solicitud: Solicitud especial en accesos para la pla · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:37:22'),
(181, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Instalación de software · descripcion: Descripción: Programas básicos al momento de realizar la asignación de un equipo de cómputo Solicitud: Instalación de software SLA 1 Días. · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:42:38'),
(182, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Instalación de VPN CONECTAR · descripcion: Descripción: Instalación de VPN del servidor Zentyal para el ingreso a aplicativos d.e clientes Solicitud: Instalación de VPN CONECTAR SLA 1 Días. · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:43:27'),
(183, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Asistencia de Impresora · descripcion: Descripción: Instalación de impresora por red a algún equipo o por cable. Solicitud: Asistencia de Impresora SLA 1 Días. · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:44:29'),
(184, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Adecuación de Red · descripcion: Descripción: Adecuaciones de puntos cableados. Solicitud: Correo aprobado del jefe del proceso de la adecuación de red SLA 10 Días. · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 14:47:22'),
(185, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Falla de Impresora · descripcion: Descripción: Falla de impresora por red a algún equipo o por cable. Solicitud: Reporte de la falla de la impresora SLA 4 Días. · tipo_solicitud: Incidente · id_sla: 13 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 14:48:17'),
(186, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Solicitud Equipos de Cómputo · descripcion: Descripción: Solicitud de equipos al proveedor para la asignación Solicitud: Solicitud equipos de cómputo adjuntar correo de autorización del gerente del proyec · tipo_solicitud: Requerimiento · id_sla: 13 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:49:58'),
(187, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Solicitud de periféricos · descripcion: Descripción: Solicitud de periféricos como teclado y mouse Solicitud: Solicitud de periféricos adjuntar correo de autorización del gerente del proyecto. Nota: S · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:50:58'),
(188, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Creación de usuario Milldesk · descripcion: Descripción: Creación de usuario para el ingreso a plataforma de Milldesk Solicitud: Creación de usuario Milldesk SLA 1 Días. · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:51:47'),
(189, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Falla de Equipos · descripcion: Descripción: Verificación de equipo por bajo rendimiento o daños Solicitud: Adjuntar imagen de la falla o el daño del equipo. SLA 2 Días. · tipo_solicitud: Incidente · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:52:36'),
(190, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Copia de seguridad · descripcion: Descripción: Solicitud para realizar copias de seguridad por cambio de equipo o personal que se retiró. Solicitud: Copia de seguridad SLA 2 Días. · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 2', '201.244.156.67', 302, '2026-09-03 14:53:51'),
(191, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Solicitud de servicio de internet · descripcion: Descripción: Solicitud de un nuevo servicio de internet para una bodega. Solicitud: Adjuntar correo de la solicitud de servicio de internet aprobado por Jefe de · tipo_solicitud: Requerimiento · id_sla: 7 · proceso: TICs · id_gestor: 28 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 14:54:41'),
(192, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Falla de servicio de internet · descripcion: Descripción: Se registra falla de servicio de internet de una bodega. Solicitud: Indicar el proyecto afectado, adjuntar en el correo ciudad, dirección y número  · tipo_solicitud: Incidente · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 14:56:19'),
(193, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Creación de usuario para ingreso a plataforma de Claro · descripcion: Descripción: Solicitud para escalar aprobación de creación de usuario para el ingreso a plataformas de Claro. Solicitud: Creación de usuario para ingreso a plat · tipo_solicitud: Requerimiento · id_sla: 16 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 14:57:06'),
(194, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Préstamo de equipos de cómputo · descripcion: Descripción: Solicitud para el préstamo de un equipo de cómputo, siempre y cuando, se encuentren disponible. Solicitud: Adjuntar autorización del jefe de proces · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:58:25'),
(195, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Mantenimiento de Equipos de Cómputo · descripcion: Descripción: Solicitud para mantenimiento preventivo a algún equipo que se asigne al personal de un proceso Solicitud: Mantenimiento de equipos de cómputo SLA 1 · tipo_solicitud: Requerimiento · id_sla: 2 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 14:59:09'),
(196, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Ingreso de equipos al proyecto BYOD · descripcion: Descripción: Equipos de cómputo personales que el trabajador alquila a la empresa para sus labores diarias, CONECTAR TV. Se realiza un pago dependiendo las cara · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:00:05'),
(197, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Reporte de incidente de seguridad de la información · descripcion: Descripción: Canal seguro para la recepción de reportes, clasificándolos y priorizándolos según su gravedad. Un equipo especializado se encarga de la investigac · tipo_solicitud: Incidente · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-03 15:00:49'),
(198, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Solicitud de acceso al repositorio de Cloud (nube) · descripcion: Descripción: Canal para solicitar acceso al repositorio del CONECTAR TV (Cloud), el usuario debe especificar el sistema de información al que desea acceder. Est · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:01:28'),
(199, 17, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 6 · nombre: Gestión de Desarrollo y Evolución de Aplicaciones · descripcion: Descripción: ervicio orientado al diseño, desarrollo, implementación y mejora continua de soluciones de software que soportan los procesos operativos, administr · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: TICs · id_gestor: 28 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:02:17'),
(200, 19, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1541651651651', '201.244.156.67', 200, '2026-09-03 15:11:37'),
(201, 19, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1541651651651 · nombre: Travel · proceso: Travel · cu1: 0 · cu3: 0 · email: Travel@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-03 15:12:06'),
(202, 19, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 4 · id_servicio: 4 · nombre: Compra de Tiquetes · descripcion: Descripción: Por este medio se canalizan las solicitudes para la gestión y adquisición de tiquetes de transporte aéreo requeridos por el personal que deba reali · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-03 15:13:10'),
(203, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel ATP · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:18:59'),
(204, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel Azteca · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:19:44'),
(205, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel Claro R3 · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:21:16'),
(206, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel Claro SMU · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:22:15'),
(207, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel ETB · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:26:31'),
(208, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel FLM Andina People Pass · descripcion: Descripción: La solicitud de viáticos es el proceso mediante el cual un empleado formaliza la petición de fondos necesarios para cubrir gastos de viaje y repres · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:27:32'),
(209, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel FLM Centro People Pass · descripcion: Descripción: La solicitud de viáticos es el proceso mediante el cual un empleado formaliza la petición de fondos necesarios para cubrir gastos de viaje y repres · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:31:48'),
(210, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel FLM Sur People Pass · descripcion: Descripción: La solicitud de viáticos es el proceso mediante el cual un empleado formaliza la petición de fondos necesarios para cubrir gastos de viaje y repres · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:32:27'),
(211, 19, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 4 · nombre: Travel Gerencia · descripcion: Descripción: Por este medio se tramitan las solicitudes de viáticos requeridos para el desplazamiento de personal en cumplimiento de funciones laborales. El pro · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: Travel · id_gestor: 29 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-03 15:33:33'),
(212, 21, 1, NULL, 'Áreas', 'Eliminar', 'id_catalogo: 4', '201.244.156.67', 302, '2026-09-03 15:39:45'),
(213, 21, 1, NULL, 'Áreas', 'Eliminar', 'id_catalogo: 4', '201.244.156.67', 302, '2026-09-03 15:40:15'),
(214, 23, 1, NULL, 'Áreas', 'Eliminar', 'id_catalogo: 4', '201.244.156.67', 302, '2026-09-03 15:48:39'),
(215, 22, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: grafito_dorado', '201.244.156.67', 303, '2026-09-03 15:58:57'),
(216, 22, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-03 15:59:14'),
(217, 22, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-03 15:59:22'),
(218, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-03 16:28:57'),
(219, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-03 16:28:58'),
(220, 27, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-03 16:29:40'),
(221, 27, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-03 16:29:42'),
(222, 27, 1, NULL, 'Configuraciones', 'Eliminar', 'id_opcion: 19', '201.244.156.67', 302, '2026-09-03 16:29:56'),
(223, 27, 1, NULL, 'papelera', 'Restaurar', 'id_papelera: 1', '201.244.156.67', 303, '2026-09-03 16:30:01'),
(224, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-03 16:36:34'),
(225, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-03 16:36:35'),
(226, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-03 16:41:57'),
(227, 27, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-03 16:41:59'),
(228, 27, 1, NULL, 'SLA', 'Eliminar', 'id_sla: 2', '201.244.156.67', 302, '2026-09-03 16:45:39'),
(229, 27, 1, NULL, 'papelera', 'Restaurar', 'id_papelera: 2', '201.244.156.67', 303, '2026-09-03 16:45:43'),
(230, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:06:29'),
(231, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:06:30'),
(232, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:06:32'),
(233, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:06:34'),
(234, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:06:35'),
(235, 30, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:06:36'),
(236, 30, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 6 · id_servicio: 193 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 200, '2026-09-04 08:06:51'),
(237, 30, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 6 · id_servicio: 193 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 08:06:52'),
(238, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 08:21:09'),
(239, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-04 08:21:11'),
(240, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 60 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 200, '2026-09-04 08:21:24'),
(241, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 60 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 08:21:25'),
(242, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 13 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 08:21:29'),
(243, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 13 · estado: activo', '201.244.156.67', 303, '2026-09-04 08:21:30'),
(244, 31, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:21:38'),
(245, 31, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:21:39'),
(246, 31, 1, NULL, 'SLA', 'Cambiar estado', 'id_sla: 2 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:21:52'),
(247, 31, 1, NULL, 'SLA', 'Cambiar estado', 'id_sla: 2 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:21:52'),
(248, 31, 1, NULL, 'Festivos', 'Cambiar estado', 'id_feriado: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:21:55'),
(249, 31, 1, NULL, 'Festivos', 'Cambiar estado', 'id_feriado: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:21:56'),
(250, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:21:59'),
(251, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:22:01'),
(252, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 18 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:22:03'),
(253, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 18 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:22:03'),
(254, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 08:22:36'),
(255, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-04 08:22:37'),
(256, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 08:22:59'),
(257, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-04 08:23:00'),
(258, 31, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 08:24:51'),
(259, 31, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:25:17'),
(260, 31, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:25:27'),
(261, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 5 · id_servicio: 163 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 200, '2026-09-04 08:25:38'),
(262, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 5 · id_servicio: 163 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 08:25:49'),
(263, 31, 1, NULL, 'SLA', 'Cambiar estado', 'id_sla: 2 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:26:29'),
(264, 31, 1, NULL, 'SLA', 'Cambiar estado', 'id_sla: 2 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:26:39'),
(265, 31, 1, NULL, 'Festivos', 'Cambiar estado', 'id_feriado: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:26:41'),
(266, 31, 1, NULL, 'Festivos', 'Cambiar estado', 'id_feriado: 1 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:26:49'),
(267, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:26:52'),
(268, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 43 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:27:01'),
(269, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 18 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:27:02'),
(270, 31, 1, NULL, 'Configuraciones', 'Estado', 'id_opcion: 18 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-04 08:27:13'),
(271, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:28:29'),
(272, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: activo', '201.244.156.67', 302, '2026-09-04 08:28:30'),
(273, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:28:31'),
(274, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: activo', '201.244.156.67', 302, '2026-09-04 08:28:32'),
(275, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:28:37'),
(276, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: activo', '201.244.156.67', 302, '2026-09-04 08:28:46'),
(277, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 5 · id_servicio: 163 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 200, '2026-09-04 08:34:25'),
(278, 31, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 5 · id_servicio: 163 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 08:34:26'),
(279, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 60 · estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 08:44:19'),
(280, 31, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 60 · estado: activo', '201.244.156.67', 302, '2026-09-04 08:44:20'),
(281, 32, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 08:55:37'),
(282, 32, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-04 08:55:52'),
(283, 32, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 09:01:00'),
(284, 32, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 60 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 302, '2026-09-04 09:01:48'),
(285, 32, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 60 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 09:01:54'),
(286, 32, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: vino_coral', '201.244.156.67', 303, '2026-09-04 09:02:00'),
(287, 32, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 54 · cambiar_estado_servicio: 1 · nuevo_estado: inhabilitado', '201.244.156.67', 200, '2026-09-04 09:02:03'),
(288, 32, 1, NULL, 'Servicios', 'Modificación en Servicios', 'id_catalogo: 1 · id_servicio: 54 · cambiar_estado_servicio: 1 · nuevo_estado: activo', '201.244.156.67', 200, '2026-09-04 09:02:04'),
(289, 33, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 09:09:00'),
(290, 33, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 09:09:05'),
(291, 34, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 09:15:11'),
(292, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 09:51:43'),
(293, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 112846', '201.244.156.67', 200, '2026-09-04 09:53:13'),
(294, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 11284674', '201.244.156.67', 200, '2026-09-04 09:53:15'),
(295, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1128467465', '201.244.156.67', 200, '2026-09-04 09:53:16'),
(296, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 112846746', '201.244.156.67', 200, '2026-09-04 09:53:43'),
(297, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 109863', '201.244.156.67', 200, '2026-09-04 09:54:29'),
(298, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 10986375', '201.244.156.67', 200, '2026-09-04 09:54:30'),
(299, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1098637513', '201.244.156.67', 200, '2026-09-04 09:54:31'),
(300, 35, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 109863751', '201.244.156.67', 200, '2026-09-04 09:54:34'),
(301, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 09:56:19'),
(302, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 09:56:24'),
(303, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 10:00:04'),
(304, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: azul_rosado', '201.244.156.67', 303, '2026-09-04 10:00:18'),
(305, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-04 10:00:23'),
(306, 35, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 10:00:28'),
(307, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 10:29:47'),
(308, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: azul_rosado', '201.244.156.67', 303, '2026-09-04 10:29:53'),
(309, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: vino_coral', '201.244.156.67', 303, '2026-09-04 10:29:58'),
(310, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 10:30:07'),
(311, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 10:30:52'),
(312, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 10:33:04'),
(313, 37, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-04 10:33:21'),
(314, 37, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 19 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 10:44:32'),
(315, 37, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 19 · estado: activo', '201.244.156.67', 303, '2026-09-04 10:44:32'),
(316, 39, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 11 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 11:10:18'),
(317, 39, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 11 · estado: activo', '201.244.156.67', 303, '2026-09-04 11:10:19'),
(318, 39, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-04 11:10:45'),
(319, 39, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 109876', '201.244.156.67', 200, '2026-09-04 11:18:10'),
(320, 39, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1098760258', '201.244.156.67', 200, '2026-09-04 11:18:12'),
(321, 39, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-04 11:18:23');
INSERT INTO `auditoria_sesiones` (`id_auditoria`, `id_sesion`, `id_usuario`, `id_perfil_gestor`, `modulo`, `accion`, `detalle`, `direccion_ip`, `estado_http`, `fecha_hora`) VALUES
(322, 39, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1098760258', '201.244.156.67', 200, '2026-09-04 11:18:26'),
(323, 39, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-04 11:18:46'),
(324, 39, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-04 11:18:48'),
(325, 39, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 22 · estado: activo', '201.244.156.67', 303, '2026-09-04 11:18:50'),
(326, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1098760258', '201.244.156.67', 200, '2026-09-04 11:31:26'),
(327, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1098760258', '201.244.156.67', 200, '2026-09-04 11:34:34'),
(328, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1016083143', '201.244.156.67', 200, '2026-09-04 12:08:49'),
(329, 42, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1016083143 · id_rol: 1', '201.244.156.67', 303, '2026-09-04 12:09:15'),
(330, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1016083143', '201.244.156.67', 200, '2026-09-04 12:09:21'),
(331, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 10143', '201.244.156.67', 200, '2026-09-04 12:11:02'),
(332, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 102878', '201.244.156.67', 200, '2026-09-04 12:11:07'),
(333, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 10287846', '201.244.156.67', 200, '2026-09-04 12:11:11'),
(334, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1028784695', '201.244.156.67', 200, '2026-09-04 12:11:11'),
(335, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 102878469', '201.244.156.67', 200, '2026-09-04 12:11:11'),
(336, 42, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1028784695 · id_rol: 3', '201.244.156.67', 303, '2026-09-04 12:11:56'),
(337, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1028784695', '201.244.156.67', 200, '2026-09-04 12:13:45'),
(338, 42, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1028784695 · id_rol: 3', '201.244.156.67', 303, '2026-09-04 12:14:18'),
(339, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1028784695', '201.244.156.67', 200, '2026-09-04 12:16:05'),
(340, 42, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1028784695 · id_rol: 3', '201.244.156.67', 303, '2026-09-04 12:16:28'),
(341, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1010101', '201.244.156.67', 200, '2026-09-04 12:16:49'),
(342, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 101010', '201.244.156.67', 200, '2026-09-04 12:16:50'),
(343, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-04 12:16:53'),
(344, 40, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1006874469 · id_rol: 3', '201.244.156.67', 303, '2026-09-04 12:17:45'),
(345, 42, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1028784695', '201.244.156.67', 200, '2026-09-04 12:18:19'),
(346, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-04 12:18:25'),
(347, 42, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1028784695 · id_rol: 3', '201.244.156.67', 303, '2026-09-04 12:18:31'),
(348, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874465', '201.244.156.67', 200, '2026-09-04 12:19:26'),
(349, 40, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-04 12:19:27'),
(350, 40, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1006874469 · nombre: TORRES ZUMAQUE JHONNY MANUEL · proceso: TECNOLOGIAS-INFRA · cu1: WITN · cu3: TTTR · email: jhonnytorrez999@gmail.com · empresa: CT · pais: Colombia · departamento: Cundinamarca · ciudad: Bogota', '201.244.156.67', 303, '2026-09-04 12:19:40'),
(351, 43, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: Conectar1', '201.244.156.67', 200, '2026-09-04 12:19:41'),
(352, 43, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1028784695', '201.244.156.67', 200, '2026-09-04 12:19:49'),
(353, 43, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1028784695 · nombre: BOHORQUEZ MOLINA JOSE LUIS · proceso: TECNOLOGIAS-INFRA · cu1: WITN · cu3: TTTR · email: josehkluis335@gmail.com · empresa: CT · pais: Colombia · departamento: Cundinamarca · ciudad: Bogota', '201.244.156.67', 303, '2026-09-04 12:20:00'),
(354, 43, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1016083143', '201.244.156.67', 200, '2026-09-04 12:20:15'),
(355, 43, 1, NULL, 'Usuarios', 'Crear', 'cedula: 1016083143 · nombre: CUY GOMEZ JEISSON SMITH · proceso: CONTROLLER-DBM · cu1: BDTN · cu3: LTTR · email: jeissonskary@gmail.com · empresa: CT · pais: Colombia · departamento: Cundinamarca · ciudad: Bogota', '201.244.156.67', 303, '2026-09-04 12:20:33'),
(356, 43, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 32 · cedula: 1016083143 · nombre: CUY GOMEZ JEISSON SMITH · proceso: CONTROLLER-DBM · cu1: BDTN · cu3: LTTR · descripcion_cu1: CONTROLLER-DBM-TRANSVERSAL-NACIONAL · correo: jeisson.cuy@grupoconectar.co · empresa: CT · rol: 1', '201.244.156.67', 302, '2026-09-04 12:21:04'),
(357, 43, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 93380714', '201.244.156.67', 200, '2026-09-04 12:21:55'),
(358, 43, 1, NULL, 'Usuarios', 'Crear', 'cedula: 93380714 · nombre: PRADA YOSA JAVIER · proceso: INGENIERIA-GENERAL · cu1: IGLW · cu3: CNSM · email: javier.prada7521@gmail.com · empresa: CT · pais: Colombia · departamento: Valle del Cauca · ciudad: Ibague', '201.244.156.67', 303, '2026-09-04 12:22:05'),
(359, 43, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 33 · cedula: 93380714 · nombre: PRADA YOSA JAVIER · proceso: INGENIERIA-GENERAL · cu1: IGLW · cu3: CNSM · descripcion_cu1: INGENIERIA-GENERAL-REG TOLCA-IBAGUE · correo: javier.prada7521@gmail.com · empresa: CT · rol: 2', '201.244.156.67', 302, '2026-09-04 12:22:35'),
(360, 63, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-07 07:58:49'),
(361, 63, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-07 07:58:51'),
(362, 63, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-07 07:58:52'),
(363, 63, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: inhabilitado', '201.244.156.67', 302, '2026-09-07 07:59:18'),
(364, 63, 1, NULL, 'Flujos', 'Cambiar estado flujo', 'id_proceso: 59 · estado: activo', '201.244.156.67', 302, '2026-09-07 07:59:19'),
(365, 73, 2, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-07 08:40:31'),
(366, 73, 2, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-07 08:40:53'),
(367, 75, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 32 · estado: inhabilitado', '201.244.156.67', 303, '2026-09-07 09:09:42'),
(368, 79, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-07 10:46:37'),
(369, 79, 1, NULL, 'SLA', 'Eliminar', 'id_sla: 2', '201.244.156.67', 302, '2026-09-07 10:47:18'),
(370, 79, 1, NULL, 'papelera', 'Restaurar', 'id_papelera: 3', '201.244.156.67', 303, '2026-09-07 10:47:21'),
(371, 79, 1, NULL, 'Áreas', 'Eliminar', 'id_catalogo: 12', '201.244.156.67', 302, '2026-09-07 10:47:54'),
(372, 79, 1, NULL, 'papelera', 'Restaurar', 'id_papelera: 4', '201.244.156.67', 303, '2026-09-07 10:47:57'),
(373, 79, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 51651651521651', '201.244.156.67', 200, '2026-09-07 10:48:34'),
(374, 79, 1, NULL, 'Usuarios', 'Crear', 'cedula: 51651651521651 · nombre: PMO · proceso: PMO · cu1: 0 · cu3: 0 · email: PMO@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 10:49:13'),
(375, 80, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 516584165132165', '201.244.156.67', 200, '2026-09-07 10:55:31'),
(376, 80, 1, NULL, 'Usuarios', 'Crear', 'cedula: 516584165132165 · nombre: PMO · proceso: PMO · cu1: 0 · cu3: 0 · email: PMO@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 10:55:52'),
(377, 80, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Crear nuevo modelo Económico · descripcion: Definición: Solicitud para la elaboración de un modelo que reúne el análisis económico, financiero, operativo y de rentabilidad de un proyecto que se realiza en · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 10:57:02'),
(378, 80, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Realizar Plan de Calidad de un nuevo proyecto · descripcion: Descripción: Solicitud para generar el acta formal que reúne la información global de un proyecto para su aprobación e información (No incluye aprobaciones de g · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-07 10:58:04'),
(379, 80, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Solicitar un control de cambios al modelo económico · descripcion: Descripción: Control de cambios a los proyectos que se encuentran en operación y requieren algún cambio (Personal, tipos y cantidad de móviles, cambios en los c · tipo_solicitud: Incidente · id_sla: 12 · proceso: PMO · id_gestor: 34 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 10:59:10'),
(380, 81, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 12 · id_servicio: 203 · nombre: Crear nuevo modelo Económico · descripcion: Definición: Solicitud para la elaboración de un modelo que reúne el análisis económico, financiero, operativo y de rentabilidad de un proyecto que se realiza en · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 3', '201.244.156.67', 200, '2026-09-07 11:12:11'),
(381, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Realizar Plan de Calidad de un nuevo proyecto · descripcion: Descripción: Solicitud para generar el acta formal que reúne la información global de un proyecto para su aprobación e información (No incluye aprobaciones de g · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-07 11:12:59'),
(382, 81, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 12 · id_servicio: 206 · nombre: Realizar Plan de Calidad de un nuevo proyecto · descripcion: Descripción: Solicitud para generar el acta formal que reúne la información global de un proyecto para su aprobación e información (No incluye aprobaciones de g · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-07 11:17:04'),
(383, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Solicitar un control de cambios al modelo económico · descripcion: Descripción: Control de cambios a los proyectos que se encuentran en operación y requieren algún cambio (Personal, tipos y cantidad de móviles, cambios en los c · tipo_solicitud: Incidente · id_sla: 12 · proceso: PMO · id_gestor: 34 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:17:55'),
(384, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Solicitar modelo operativo · descripcion: Descripción: Construcción de un capítulo del modelo económico que indica ingresos, costos y rentabilidad, pero no incluye datos de flujo de caja (TIR) (No inclu · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: PMO · id_gestor: 34 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:19:04'),
(385, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Crear PDA o cronograma de implementación, operación o desmonte · descripcion: Descripción: Plan de acción o cronograma mediante Project que lleva el control de las implementaciones y desmontes (No incluye aprobaciones de gerencias) Solici · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: PMO · id_gestor: 34 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:19:54'),
(386, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Realizar licitación nuevo cliente o implementación · descripcion: Descripción: Gestión de los requisitos y documentación necesaria (anexos económicos, propuestas técnicas, documentación etc.) para la participación en una licit · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: PMO · id_gestor: 34 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:20:38'),
(387, 81, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Diligenciar o presentar evaluaciones, documentos y plataformas de los clientes · descripcion: Descripción: \"Proceso para el debido diligenciamiento de documentos o evaluaciones necesarias para consultores, auditorias, clientes y sus respetivas plataforma · tipo_solicitud: Requerimiento · id_sla: 12 · proceso: PMO · id_gestor: 34 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:21:28'),
(388, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Solicitar acompañamiento o análisis para requerimiento interno · descripcion: Descripción: Proceso de acompañamiento de apoyo de acuerdo a solicitudes realizadas por jefaturas o gerencia para el cambio o implementación de un nuevo parámet · tipo_solicitud: Requerimiento · id_sla: 4 · proceso: PMO · id_gestor: 34 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:22:48'),
(389, 82, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 6541651521651', '201.244.156.67', 200, '2026-09-07 11:23:13'),
(390, 82, 1, NULL, 'Usuarios', 'Crear', 'cedula: 6541651521651 · nombre: Controller · proceso: Controller · cu1: 0 · cu3: 0 · email: Controller@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 11:23:40'),
(391, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Levantamiento de requisitos para la elaboración de software · descripcion: Descripción: Levantamiento de información y requisitos para el desarrollo de nuevos programas y/o aplicaciones Solicitud: Adjuntar acta de inicio del proyecto d · tipo_solicitud: Requerimiento · id_sla: 14 · proceso: Controller · id_gestor: 35 · urgencia_valor: 1 · impacto_valor: 1', '201.244.156.67', 302, '2026-09-07 11:24:35'),
(392, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Desarrollo de software · descripcion: Descripción: Desarrollo de software para la compañía Solicitud: Entrega de documentación definida en el servicio 10.1.9 SLA 20 Días · tipo_solicitud: Requerimiento · id_sla: 3 · proceso: Controller · id_gestor: 35 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:25:36'),
(393, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Actualización de Software · descripcion: Descripción: Escalabilidad y modificación de desarrollos entregados de software Solicitud: Formato de control de cambios. SLA 5 Días. · tipo_solicitud: Incidente · id_sla: 4 · proceso: Controller · id_gestor: 35 · urgencia_valor: 2 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:26:30'),
(394, 82, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 4516514651541', '201.244.156.67', 200, '2026-09-07 11:28:11'),
(395, 82, 1, NULL, 'Usuarios', 'Crear', 'cedula: 4516514651541 · nombre: DBM · proceso: DBM · cu1: 0 · cu3: 0 · email: DBM@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 11:28:38'),
(396, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Solicitud de mantenimiento Power BI · descripcion: Descripción: Mantenimiento, corrección y reparación de los informes Solicitud: Solicitud de mantenimiento Power BI SLA 2 Días. · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: DBM · id_gestor: 36 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:29:55'),
(397, 82, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Levantamiento de requisitos para la elaboración de informes (Excel o Power BI) · descripcion: Descripción: Levantamiento de información y requisitos para el desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI) Solicit · tipo_solicitud: Requerimiento · id_sla: 11 · proceso: DBM · id_gestor: 36 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 11:30:42'),
(398, 82, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 108530', '201.244.156.67', 200, '2026-09-07 11:30:52'),
(399, 82, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1085301123', '201.244.156.67', 200, '2026-09-07 11:30:54'),
(400, 83, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874', '201.244.156.67', 200, '2026-09-07 11:41:28'),
(401, 83, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-07 11:41:29'),
(402, 84, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1085301123', '201.244.156.67', 200, '2026-09-07 11:46:47'),
(403, 85, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-07 12:08:37'),
(404, 85, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-07 12:11:06'),
(405, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Desarrollo de informes (Excel o Power BI) · descripcion: Descripción: Creación y desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI) Solicitud: Adjuntar el acta de levantamiento d · tipo_solicitud: Requerimiento · id_sla: 10 · proceso: DBM · id_gestor: 36 · urgencia_valor: 1 · impacto_valor: 3', '201.244.156.67', 302, '2026-09-07 12:16:34'),
(406, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Desarrollo de informes (Excel o Power BI) · descripcion: Descripción: Creación y desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI) Solicitud: Adjuntar el acta de levantamiento d · tipo_solicitud: Requerimiento · id_sla: 12 · id_gestor: 36 · urgencia_valor: 1 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:27:15'),
(407, 85, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 7 Días · tiempo_respuesta: 7 · unidad: dias', '201.244.156.67', 302, '2026-09-07 12:27:32'),
(408, 85, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 12 · id_servicio: 218 · nombre: Desarrollo de informes (Excel o Power BI) · descripcion: Descripción: Creación y desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI) Solicitud: Adjuntar el acta de levantamiento d · tipo_solicitud: Requerimiento · id_sla: 19 · proceso: DBM · id_gestor: 36 · urgencia_valor: 1', '201.244.156.67', 200, '2026-09-07 12:27:54'),
(409, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Creación o activación de codigos de unidad · descripcion: Descripción: Elaboración o activación de códigos de unidad de acuerdo a la incorporación de clientes nuevos al grupo empresarial. Solicitud: Indicar cliente, lí · tipo_solicitud: Requerimiento · id_sla: 2 · id_gestor: 36 · urgencia_valor: 3 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:29:02'),
(410, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 12 · nombre: Capacitación de códigos de unidad InfoHub · descripcion: Descripción: Capacitación de la estructura alfanumérica generada para la clasificación de los recursos de la compañía Solicitud: Indicar disponibilidad de agend · tipo_solicitud: Requerimiento · id_sla: 11 · id_gestor: 36 · urgencia_valor: 2 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:30:02'),
(411, 85, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 5165101285', '201.244.156.67', 200, '2026-09-07 12:31:39'),
(412, 85, 1, NULL, 'Usuarios', 'Crear', 'cedula: 5165101285 · nombre: Control Interno · proceso: Control Interno · cu1: 0 · cu3: 0 · email: Controlinterno@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 12:32:19'),
(413, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Acompañamiento para el cierre de cajas menores o llaves maestras · descripcion: Descripción: Por este medio se gestiona el acompañamiento para el cierre de cajas menores o llaves maestras, cajas operativas; mediante la realización del arque · tipo_solicitud: Requerimiento · id_sla: 4 · id_gestor: 37 · urgencia_valor: 2 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:34:32'),
(414, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Acompañamiento para el cambio de custodio de cajas menores, llaves maestras y/o cajas operativas. · descripcion: Descripción: Por este medio se gestiona el acompañamiento para el cambio de custodio, realizar arqueo de caja menor, llave maestra o caja operativa,Incluye la i · tipo_solicitud: Requerimiento · id_sla: 4 · id_gestor: 37 · urgencia_valor: 2 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:35:45'),
(415, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Solicitud de inventario por el cambio de responsable en bodegas y/o almacén · descripcion: Descripción: Por este medio se gestiona la realización de inventarios durante el proceso de entrega y cambio de responsable en bodegas y/o almacenes de Conectar · tipo_solicitud: Requerimiento · id_sla: 10 · id_gestor: 37 · urgencia_valor: 2 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:36:51'),
(416, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Solicitud de bajas de equipos,herramientas, material, dotación, muebles y enseres. · descripcion: Descripción: Por este medio se gestiona la verificación y trámite de bajas de equipos, herramientas, materiales, dotación, muebles y enseres. Incluye la revisió · tipo_solicitud: Requerimiento · id_sla: 4 · id_gestor: 37 · urgencia_valor: 2 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:38:04'),
(417, 85, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 51651521052136.', '201.244.156.67', 200, '2026-09-07 12:38:35'),
(418, 85, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 51651521052136', '201.244.156.67', 200, '2026-09-07 12:38:36'),
(419, 85, 1, NULL, 'Usuarios', 'Crear', 'cedula: 51651521052136 · nombre: Seguridad · proceso: Seguridad · cu1: 0 · cu3: 0 · email: Seguridad@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 12:38:56'),
(420, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Poligrafías · descripcion: Descripción: Solicitud de servicio de poligrafías ejemplos (vinculación de nuevos funcionarios, cambios de cargos internos e investigaciones. Por favor describa · tipo_solicitud: Requerimiento · id_sla: 10 · id_gestor: 37 · urgencia_valor: 3 · impacto_valor: 2 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:39:56'),
(421, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Investigaciones · descripcion: Descripción: Servicio de investigación ejemplos (hurtos, perdidas). Solicitud: \" Diligenciar informe de novedad, tener en cuenta el procedimiento de reporte de  · tipo_solicitud: Requerimiento · id_sla: 10 · id_gestor: 38 · urgencia_valor: 3 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:41:03'),
(422, 85, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: Facturación', '201.244.156.67', 200, '2026-09-07 12:41:25'),
(423, 85, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 5165152165', '201.244.156.67', 200, '2026-09-07 12:41:27'),
(424, 85, 1, NULL, 'Usuarios', 'Crear', 'cedula: 5165152165 · nombre: Facturación · proceso: 0 · cu1: 0 · cu3: 0 · email: Facturacion@conectar.com · empresa: 0 · pais: 0 · departamento: 0 · ciudad: 0', '201.244.156.67', 303, '2026-09-07 12:42:09'),
(425, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Ajustes de producción de los diferentes clientes · descripcion: Descripción: Proceso mediante el cual los clientes incrementan o reducen el valor reportado de la producción ejecutada Solicitud: El gerente del proyecto debe i · tipo_solicitud: Incidente · id_sla: 14 · id_gestor: 39 · urgencia_valor: 3 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:43:27'),
(426, 85, 1, NULL, 'Servicios', 'Modificación en Servicios', 'nuevo_servicio: 1 · id_catalogo: 13 · nombre: Reporte producción y facturación aliados · descripcion: Descripción: Proceso mediante el cual el proceso de aliados solicita información de produción y facturación correspondiente a terceros. Solicitud: Deben indicar · tipo_solicitud: Requerimiento · id_sla: 10 · id_gestor: 39 · urgencia_valor: 3 · impacto_valor: 3 · id_nivel: 18', '201.244.156.67', 302, '2026-09-07 12:44:11'),
(427, 85, 1, NULL, 'SLA', 'Crear', 'nombre: SLA 9 Días · tiempo_respuesta: 9 · unidad: dias', '201.244.156.67', 302, '2026-09-07 12:50:01'),
(428, 85, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 13 · id_servicio: 229 · nombre: Reporte producción y facturación aliados · descripcion: Descripción: Proceso mediante el cual el proceso de aliados solicita información de produción y facturación correspondiente a terceros. Solicitud: Deben indicar · tipo_solicitud: Requerimiento · id_sla: 20 · id_gestor: 39 · urgencia_valor: 3 · impacto_valor: 3', '201.244.156.67', 200, '2026-09-07 12:50:26'),
(429, 86, 1, NULL, 'Soluciones', 'Crear', 'id_servicio: 48 · nombre: prueba · descripcion: prueba · orden: 0', '201.244.156.67', 302, '2026-09-07 14:11:13'),
(430, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:11:31'),
(431, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:11:34'),
(432, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:11:39'),
(433, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:11:40'),
(434, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:12:28'),
(435, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:15:34'),
(436, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:15:39'),
(437, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:15:40'),
(438, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:15:53'),
(439, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:16:10'),
(440, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:16:11'),
(441, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:16:20'),
(442, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:18:24'),
(443, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:33'),
(444, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:34'),
(445, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:35'),
(446, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:36'),
(447, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:37'),
(448, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:37'),
(449, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:37'),
(450, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:38'),
(451, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:38'),
(452, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 302, '2026-09-07 14:22:39'),
(453, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 200, '2026-09-07 14:25:01'),
(454, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 200, '2026-09-07 14:25:02'),
(455, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 200, '2026-09-07 14:25:04'),
(456, 86, 1, NULL, 'Soluciones', 'Eliminar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 200, '2026-09-07 14:25:05'),
(457, 86, 1, NULL, 'Soluciones', 'Reactivar', 'id_solucion: 14 · id_servicio: 48', '201.244.156.67', 200, '2026-09-07 14:25:06'),
(458, 86, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-07 14:27:28'),
(459, 89, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-08 07:46:48'),
(460, 93, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 32 · cedula: 1016083143 · nombre: CUY GOMEZ JEISSON SMITH · proceso: CONTROLLER-DBM · cu1: BDTN · cu3: LTTR · descripcion_cu1: CONTROLLER-DBM-TRANSVERSAL-NACIONAL · correo: jeisson.cuy@grupoconectar.co · empresa: CT · rol: 1', '201.244.156.67', 302, '2026-09-08 08:54:57'),
(461, 94, 1, NULL, 'Usuarios', 'Estado', 'id_usuario: 32 · estado: activo', '201.244.156.67', 303, '2026-09-08 08:55:47'),
(462, 94, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 32 · cedula: 1016083143 · nombre: CUY GOMEZ JEISSON SMITH · proceso: CONTROLLER-DBM · cu1: BDTN · cu3: LTTR · descripcion_cu1: CONTROLLER-DBM-TRANSVERSAL-NACIONAL · correo: jeisson.cuy@grupoconectar.co · empresa: CT · rol: 2', '201.244.156.67', 302, '2026-09-08 08:56:51'),
(463, 107, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 183 · nombre: Falla de Equipos · descripcion: Descripción: Verificación de equipo por bajo rendimiento o daños Solicitud: Adjuntar imagen de la falla o el daño del equipo. SLA 2 Días. · tipo_solicitud: Incidente · id_sla: 11 · proceso: TICs · id_gestor: 32 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-08 11:07:12'),
(464, 109, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 179 · nombre: Falla de Impresora · descripcion: Descripción: Falla de impresora por red a algún equipo o por cable. Solicitud: Reporte de la falla de la impresora SLA 4 Días. · tipo_solicitud: Incidente · id_sla: 13 · proceso: TICs · id_gestor: 32 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-08 11:10:31'),
(465, 123, 32, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 5 · id_ticket_etapa_padre: 8 · derivaciones: 1 elemento(s)', '201.244.156.67', 303, '2026-09-08 12:31:46'),
(466, 134, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 2 · cedula: 101010 · nombre: Julio · proceso: Adquisiciones · cu1: IGAM · cu3: HNAL · descripcion_cu1: . · correo: jhonnytorrez999@gmail.com · empresa: millenium · rol: 2', '201.244.156.67', 302, '2026-09-10 12:31:48'),
(467, 139, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-14 10:55:46'),
(468, 141, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1130621643', '201.244.156.67', 200, '2026-09-15 09:07:52'),
(469, 142, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-15 09:25:29'),
(470, 142, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-15 09:25:34'),
(471, 145, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-15 11:08:14'),
(472, 145, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-15 11:08:59'),
(473, 145, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-15 11:18:04'),
(474, 149, 28, NULL, 'Flujos de tickets', 'Guardar checklist', 'id_ticket: 7 · id_ticket_etapa: 11 · completado: 2 elemento(s) · observacion: 2 elemento(s)', '201.244.156.67', 303, '2026-09-15 11:30:14'),
(475, 149, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 7 · id_ticket_etapa: 11 · id_solucion: 6 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-15 11:30:30'),
(476, 153, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 8 · id_ticket_etapa_padre: 14 · derivaciones: 1 elemento(s)', '201.244.156.67', 303, '2026-09-15 11:37:54'),
(477, 156, 1, NULL, 'Soluciones', 'Crear', 'id_servicio: 17 · nombre: Compra de equipo · descripcion: Adquisición de equipo con proveedor., · orden: 0', '201.244.156.67', 302, '2026-09-15 11:42:59'),
(478, 155, 2, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 8 · id_ticket_etapa: 15 · id_solucion: 15 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-15 11:43:12'),
(479, 157, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 8 · id_ticket_etapa: 15 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-15 11:44:47'),
(480, 156, 1, NULL, 'Soluciones', 'Crear', 'id_servicio: 180 · nombre: entrega de equipo de computo · descripcion: entrega de equipo de computo disponibles de tecnologias · orden: 0', '201.244.156.67', 302, '2026-09-15 11:46:13'),
(481, 157, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 8 · id_ticket_etapa: 14 · id_solucion: 16 · comentario_cierre: solicite el computador a compras y cuando me lo entregaron lo entregue', '201.244.156.67', 303, '2026-09-15 11:46:48'),
(482, 159, 1, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-15 11:48:10'),
(483, 162, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 08:15:22'),
(484, 162, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 08:15:26'),
(485, 162, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 08:15:29'),
(486, 162, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 08:15:32'),
(487, 166, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 15 · nombre: Tesoreria · descripcion: 06', '201.244.156.67', 302, '2026-09-16 08:21:29'),
(488, 167, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '191.156.149.148', 303, '2026-09-16 08:50:33'),
(489, 167, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '191.156.149.148', 303, '2026-09-16 08:50:45'),
(490, 167, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 08:54:24'),
(491, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 1 · nombre: Administración · descripcion: 02', '201.244.156.67', 302, '2026-09-16 08:55:15'),
(492, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 2 · nombre: Contabilidad · descripcion: Servicios contables, tributarios y financieros.', '201.244.156.67', 302, '2026-09-16 08:56:32'),
(493, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 13 · nombre: Control Interno · descripcion: 05', '201.244.156.67', 302, '2026-09-16 08:57:10'),
(494, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 12 · nombre: Controller · descripcion: Controller', '201.244.156.67', 302, '2026-09-16 08:58:22'),
(495, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 3 · nombre: Jurídica · descripcion: Consultas y solicitudes jurídicas.', '201.244.156.67', 302, '2026-09-16 08:58:44'),
(496, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 5 · nombre: Talento Humano · descripcion: Servicios relacionados con los colaboradores.', '201.244.156.67', 302, '2026-09-16 08:59:22'),
(497, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 6 · nombre: TICs · descripcion: Soporte tecnológico y sistemas de información.', '201.244.156.67', 302, '2026-09-16 08:59:50'),
(498, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 14 · nombre: Cadena de Abastecimiento · descripcion: 05', '201.244.156.67', 302, '2026-09-16 09:00:29'),
(499, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 11 · nombre: Calidad y Planeación estratégica · descripcion: 02', '201.244.156.67', 302, '2026-09-16 09:01:05'),
(500, 167, 1, NULL, 'Áreas', 'Editar', 'id_catalogo: 15 · nombre: Tesoreria · descripcion: 06', '201.244.156.67', 302, '2026-09-16 09:01:40'),
(501, 168, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 09:17:38'),
(502, 172, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-16 09:59:31'),
(503, 172, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-16 09:59:38'),
(504, 173, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-16 10:27:56'),
(505, 173, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-16 10:31:42'),
(506, 173, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-16 10:31:52'),
(507, 174, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-16 10:47:13'),
(508, 174, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: verde', '201.244.156.67', 303, '2026-09-16 10:47:22'),
(509, 174, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-16 10:47:27'),
(510, 175, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 4 · id_ticket_etapa: 7 · id_solucion: nueva · nueva_solucion_nombre: Prueba · nueva_solucion_descripcion: Prueba · comentario_cierre: Nada en especifico', '201.244.156.67', 303, '2026-09-16 10:52:43'),
(511, 176, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 3 · id_ticket_etapa: 6 · nueva_solucion_nombre: Prueba · nueva_solucion_descripcion: prueba', '191.156.149.148', 200, '2026-09-16 11:15:37'),
(512, 180, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '191.156.149.148', 303, '2026-09-16 11:55:44'),
(513, 180, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.149.148', 303, '2026-09-16 11:55:50'),
(514, 180, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '191.156.149.148', 303, '2026-09-16 11:57:23'),
(515, 180, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '191.156.149.148', 303, '2026-09-16 11:57:27'),
(516, 180, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.149.148', 303, '2026-09-16 11:58:44'),
(517, 181, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '191.156.149.148', 303, '2026-09-16 12:07:03'),
(518, 181, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.149.148', 303, '2026-09-16 12:07:09'),
(519, 181, 28, NULL, 'Flujos de tickets', 'Configurar notificaciones', 'id_ticket: 3 · id_ticket_etapa: 6 · habilitada: 0', '191.156.149.148', 303, '2026-09-16 12:12:19'),
(520, 181, 28, NULL, 'Flujos de tickets', 'Configurar notificaciones', 'id_ticket: 3 · id_ticket_etapa: 6 · habilitada: 1', '191.156.149.148', 303, '2026-09-16 12:12:23'),
(521, 182, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.149.148', 303, '2026-09-16 12:17:40'),
(522, 182, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '191.156.149.148', 303, '2026-09-16 12:21:10'),
(523, 182, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: verde', '191.156.149.148', 303, '2026-09-16 12:21:18'),
(524, 182, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.149.148', 303, '2026-09-16 12:21:34'),
(525, 189, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 14:33:24'),
(526, 189, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 14:33:34'),
(527, 189, 1, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-16 14:33:42'),
(528, 191, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 14:42:04'),
(529, 191, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 14:42:07'),
(530, 191, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 14:42:09'),
(531, 191, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 14:42:11'),
(532, 191, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 14:42:13'),
(533, 206, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-16 16:18:02'),
(534, 222, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 39 · cedula: 5165152165 · nombre: Facturación · proceso: Facturación · cu1: 0 · cu3: 0 · descripcion_cu1: 0 · correo: facturacion@conectar.com · empresa: 0 · rol: 2', '201.244.156.67', 302, '2026-09-17 08:12:45'),
(535, 224, 9, NULL, 'Mensajes', 'Send', 'id_ticket: 13 · mensaje: PRUEBA QA 01 - Segundo mensaje enviado desde el módulo general de Mensajes.', '104.28.208.178', 200, '2026-09-17 08:26:10'),
(536, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:07'),
(537, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:09'),
(538, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:10'),
(539, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:11'),
(540, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:12'),
(541, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:22:13'),
(542, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:23:52'),
(543, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:23:53'),
(544, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:05'),
(545, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:05'),
(546, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:06'),
(547, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:07'),
(548, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:08'),
(549, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:24:08'),
(550, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:26:51'),
(551, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:26:53'),
(552, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:26:54'),
(553, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:26:55'),
(554, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:12'),
(555, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:14'),
(556, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:14'),
(557, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:15'),
(558, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:16'),
(559, 238, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:27:17'),
(560, 237, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:28:05'),
(561, 239, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:33:22'),
(562, 239, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:33:23'),
(563, 239, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:33:24'),
(564, 239, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:33:25'),
(565, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:53'),
(566, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:55'),
(567, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:55'),
(568, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:56'),
(569, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:57'),
(570, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:58'),
(571, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:58'),
(572, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:34:59'),
(573, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:35:00'),
(574, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:35:02'),
(575, 240, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '191.156.182.216', 200, '2026-09-17 11:35:03'),
(576, 244, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 15 · nuevo_estado: inhabilitado', '191.156.182.216', 302, '2026-09-17 12:25:42'),
(577, 244, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 15 · nuevo_estado: activo', '191.156.182.216', 302, '2026-09-17 12:25:44'),
(578, 244, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 15 · nuevo_estado: inhabilitado', '191.156.182.216', 302, '2026-09-17 12:25:45'),
(579, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:56:49'),
(580, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:56:50');
INSERT INTO `auditoria_sesiones` (`id_auditoria`, `id_sesion`, `id_usuario`, `id_perfil_gestor`, `modulo`, `accion`, `detalle`, `direccion_ip`, `estado_http`, `fecha_hora`) VALUES
(581, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:56:52'),
(582, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:57:01'),
(583, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:57:02'),
(584, 257, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 15:57:04'),
(585, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:30'),
(586, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:32'),
(587, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:36'),
(588, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:38'),
(589, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:38'),
(590, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:39'),
(591, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:40'),
(592, 256, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:10:41'),
(593, 258, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:26:27'),
(594, 258, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '191.156.182.216', 200, '2026-09-17 16:26:28'),
(595, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:47'),
(596, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:48'),
(597, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:49'),
(598, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:50'),
(599, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:51'),
(600, 259, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 9 elemento(s)', '201.244.156.67', 200, '2026-09-17 16:43:53'),
(601, 289, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 16 · id_ticket_etapa_padre: 24 · derivaciones: 1 elemento(s)', '201.244.156.67', 303, '2026-09-18 08:59:54'),
(602, 290, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 16 · id_ticket_etapa_padre: 25 · derivaciones: 20 elemento(s)', '201.244.156.67', 303, '2026-09-18 09:20:57'),
(603, 293, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 26 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-18 09:23:11'),
(604, 293, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-18 09:23:17'),
(605, 293, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 26 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-18 09:23:26'),
(606, 295, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '191.156.116.21', 303, '2026-09-18 09:57:16'),
(607, 297, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-18 10:29:34'),
(608, 297, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: 000', '201.244.156.67', 303, '2026-09-18 10:29:56'),
(609, 297, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: 00000', '201.244.156.67', 303, '2026-09-18 10:30:26'),
(610, 298, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-18 10:46:28'),
(611, 299, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: jj', '201.244.156.67', 303, '2026-09-18 11:07:21'),
(612, 300, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-18 11:15:44'),
(613, 300, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 26 · id_solucion: 19 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-18 11:18:31'),
(614, 300, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 27 · nueva_solucion_nombre: PRUEBA · nueva_solucion_descripcion: PRUEBA', '201.244.156.67', 200, '2026-09-18 11:21:30'),
(615, 300, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 27 · id_solucion: 20 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-18 11:21:36'),
(616, 320, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 27 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba funcional autorizada QA-TICS-20260918-BF817C', '191.156.118.172', 303, '2026-09-18 13:01:57'),
(617, 324, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 45 · id_solucion: 0 · nueva_solucion_nombre: QA validacion QA-TICS-20260918-BF817C · nueva_solucion_descripcion: Solucion de prueba autorizada para verificar derivaciones TICs. · comentario_cierre: Prueba funcional autorizada QA-TICS-20260918-BF817C: gestion verificada.', '191.156.118.172', 303, '2026-09-18 13:02:53'),
(618, 326, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 45 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba funcional autorizada QA-TICS-20260918-BF817C', '191.156.118.172', 303, '2026-09-18 13:04:20'),
(619, 304, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 44 · nueva_solucion_nombre: pruyeba · nueva_solucion_descripcion: ´prueba', '191.156.118.172', 200, '2026-09-18 13:06:45'),
(620, 304, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 44 · id_solucion: 22 · comentario_cierre: prueba', '191.156.118.172', 303, '2026-09-18 13:06:51'),
(621, 304, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 43 · id_solucion: 16 · comentario_cierre: prueba', '191.156.118.172', 303, '2026-09-18 13:16:51'),
(622, 304, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 44 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '191.156.118.172', 303, '2026-09-18 13:26:03'),
(623, 304, 28, NULL, 'Flujos de tickets', 'Reabrir derivacion', 'id_ticket: 16 · id_ticket_etapa: 43 · motivo_reapertura: prueba', '191.156.118.172', 303, '2026-09-18 13:26:15'),
(624, 304, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '191.156.118.172', 303, '2026-09-18 13:28:38'),
(625, 304, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 43 · id_solucion: 16 · comentario_cierre: 00', '191.156.118.172', 303, '2026-09-18 13:31:23'),
(626, 304, 28, NULL, 'Flujos de tickets', 'Reabrir derivacion', 'id_ticket: 16 · id_ticket_etapa: 43 · motivo_reapertura: 0', '191.156.118.172', 303, '2026-09-18 13:31:29'),
(627, 304, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 43 · id_solucion: 16 · comentario_cierre: 0', '191.156.118.172', 303, '2026-09-18 13:32:20'),
(628, 304, 28, NULL, 'Flujos de tickets', 'Reabrir derivacion', 'id_ticket: 16 · id_ticket_etapa: 43 · motivo_reapertura: 0', '191.156.118.172', 303, '2026-09-18 13:32:27'),
(629, 304, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 42 · nueva_solucion_nombre: 0 · nueva_solucion_descripcion: 0', '191.156.118.172', 200, '2026-09-18 13:34:28'),
(630, 304, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 42 · id_solucion: 23 · comentario_cierre: 0', '191.156.118.172', 303, '2026-09-18 13:34:31'),
(631, 304, 28, NULL, 'Flujos de tickets', 'Reabrir derivacion', 'id_ticket: 16 · id_ticket_etapa: 42 · motivo_reapertura: 0', '191.156.118.172', 303, '2026-09-18 13:34:35'),
(632, 329, 28, NULL, 'Flujos de tickets', 'Configurar notificaciones', 'id_ticket: 16 · id_ticket_etapa: 28 · habilitada: 0', '191.156.118.172', 303, '2026-09-18 14:02:26'),
(633, 329, 28, NULL, 'Flujos de tickets', 'Configurar notificaciones', 'id_ticket: 16 · id_ticket_etapa: 28 · habilitada: 1', '191.156.118.172', 303, '2026-09-18 14:02:28'),
(634, 332, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-21 08:01:10'),
(635, 333, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: vino_coral', '201.244.156.67', 303, '2026-09-21 08:01:30'),
(636, 333, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-21 08:01:36'),
(637, 336, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 10 · id_ticket_etapa_padre: 18 · derivaciones: 20 elemento(s)', '201.244.156.67', 303, '2026-09-21 08:09:53'),
(638, 336, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 10 · id_ticket_etapa_padre: 18 · derivaciones: 5 elemento(s)', '201.244.156.67', 303, '2026-09-21 08:10:35'),
(639, 337, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 183 · nombre: Falla de Equipos · descripcion: Descripción: Verificación de equipo por bajo rendimiento o daños Solicitud: Adjuntar imagen de la falla o el daño del equipo. SLA 2 Días. · tipo_solicitud: Incidente · id_sla: 11 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-21 08:14:50'),
(640, 337, 1, NULL, 'Servicios', 'Editar servicio', 'editar_servicio: 1 · id_catalogo: 6 · id_servicio: 179 · nombre: Falla de Impresora · descripcion: Descripción: Falla de impresora por red a algún equipo o por cable. Solicitud: Reporte de la falla de la impresora SLA 4 Días. · tipo_solicitud: Incidente · id_sla: 13 · proceso: TICs · id_gestor: 28 · urgencia_valor: 2', '201.244.156.67', 200, '2026-09-21 08:15:05'),
(641, 338, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 10 · id_ticket_etapa_padre: 46 · derivaciones: 20 elemento(s)', '201.244.156.67', 303, '2026-09-21 08:18:09'),
(642, 338, 28, NULL, 'Flujos de tickets', 'Crear caso hijo', 'id_ticket: 10 · id_ticket_etapa_padre: 85 · derivaciones: 20 elemento(s)', '201.244.156.67', 303, '2026-09-21 08:20:37'),
(643, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 105 · id_solucion: 22 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:22:05'),
(644, 338, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 105 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:22:16'),
(645, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 104 · id_solucion: 16 · comentario_cierre: preuba', '201.244.156.67', 303, '2026-09-21 08:22:35'),
(646, 338, 28, NULL, 'Flujos de tickets', 'Reabrir derivacion', 'id_ticket: 10 · id_ticket_etapa: 104 · motivo_reapertura: prueba', '201.244.156.67', 303, '2026-09-21 08:22:41'),
(647, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 104 · id_solucion: 16 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:22:53'),
(648, 338, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 104 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:23:04'),
(649, 338, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 103 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:24:08'),
(650, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 103 · id_solucion: 24 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:24:13'),
(651, 338, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 103 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:24:22'),
(652, 338, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 102 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:24:51'),
(653, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 102 · id_solucion: 25 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:24:58'),
(654, 338, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 102 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:25:11'),
(655, 338, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 101 · id_solucion: 21 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:25:41'),
(656, 338, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 101 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:25:51'),
(657, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 100 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:30:38'),
(658, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 100 · id_solucion: 26 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:30:43'),
(659, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 100 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:31:15'),
(660, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 43 · id_solucion: 16 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:32:08'),
(661, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 43 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:32:16'),
(662, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 28 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:37:31'),
(663, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 28 · id_solucion: 27 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:37:35'),
(664, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 28 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:37:46'),
(665, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 42 · id_solucion: 23 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:39:42'),
(666, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 42 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 08:39:50'),
(667, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 29 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:40:23'),
(668, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 29 · id_solucion: 28 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:40:27'),
(669, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 29 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:41:00'),
(670, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 30 · id_solucion: 24 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:41:26'),
(671, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 30 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:42:01'),
(672, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 41 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:43:37'),
(673, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 41 · id_solucion: 29 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:43:41'),
(674, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 41 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:43:50'),
(675, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 99 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:44:48'),
(676, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 99 · id_solucion: 30 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:44:51'),
(677, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 99 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:44:58'),
(678, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 98 · id_solucion: 23 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:45:17'),
(679, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 98 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:45:24'),
(680, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 66 · id_solucion: 16 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:45:43'),
(681, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 66 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:45:50'),
(682, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 65 · id_solucion: 21 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:46:11'),
(683, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 65 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:46:18'),
(684, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 67 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:46:47'),
(685, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 67 · id_solucion: 31 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:46:49'),
(686, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 67 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:46:56'),
(687, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 68 · id_solucion: 22 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:47:19'),
(688, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 68 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:47:25'),
(689, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 69 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:47:54'),
(690, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 69 · id_solucion: 32 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:47:57'),
(691, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 69 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:48:05'),
(692, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 47 · id_solucion: 16 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:48:33'),
(693, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 47 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:48:40'),
(694, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 70 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:49:01'),
(695, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 70 · id_solucion: 33 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:49:04'),
(696, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 70 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:49:11'),
(697, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 48 · id_solucion: 18 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:49:25'),
(698, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 71 · nueva_solucion_nombre: prueba · nueva_solucion_descripcion: Prueba', '201.244.156.67', 200, '2026-09-21 08:49:46'),
(699, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 71 · id_solucion: 34 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:49:49'),
(700, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 71 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 08:49:55'),
(701, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 64 · id_solucion: 25 · comentario_cierre: ´Pruebaa', '201.244.156.67', 303, '2026-09-21 08:50:20'),
(702, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 64 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Pfrueba', '201.244.156.67', 303, '2026-09-21 08:50:28'),
(703, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 63 · id_solucion: 26 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:50:52'),
(704, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 63 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 08:50:59'),
(705, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 40 · nueva_solucion_nombre: Prueba · nueva_solucion_descripcion: Prueba', '201.244.156.67', 200, '2026-09-21 08:51:20'),
(706, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 40 · id_solucion: 35 · comentario_cierre: Pureba', '201.244.156.67', 303, '2026-09-21 08:51:27'),
(707, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 40 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 08:51:32'),
(708, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 48 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:51:52'),
(709, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 62 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: Prueba', '201.244.156.67', 200, '2026-09-21 08:52:43'),
(710, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 62 · id_solucion: 36 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:52:45'),
(711, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 62 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:52:53'),
(712, 340, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 10 · id_ticket_etapa: 61 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 08:53:17'),
(713, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 61 · id_solucion: 37 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:53:20'),
(714, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 61 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:53:29'),
(715, 340, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 60 · id_solucion: 30 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:54:41'),
(716, 340, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 60 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 08:54:48'),
(717, 340, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 11 · id_ticket_etapa: 19 · id_solucion: 29 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 08:55:41'),
(718, 342, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 12 · id_ticket_etapa: 20 · id_solucion: 37 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:57:49'),
(719, 342, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 13 · id_ticket_etapa: 21 · id_solucion: 35 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:58:07'),
(720, 342, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 3 · id_ticket_etapa: 6 · id_solucion: 18 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:58:21'),
(721, 342, 28, NULL, 'Flujos de tickets', 'Solicitar cierre definitivo', 'id_ticket: 14 · id_ticket_etapa: 22 · id_solucion: 24 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 08:58:36'),
(722, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 6 · id_ticket_etapa: 10 · id_solucion: 17 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:12:49'),
(723, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 5 · id_ticket_etapa: 9 · id_solucion: 19 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:13:06'),
(724, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 39 · id_solucion: 36 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:13:34'),
(725, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 39 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 09:13:42'),
(726, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 72 · id_solucion: 1 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:13:55'),
(727, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 72 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Pruevba', '201.244.156.67', 303, '2026-09-21 09:14:02'),
(728, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 38 · id_solucion: 5 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:14:20'),
(729, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 38 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 09:14:30'),
(730, 345, 28, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 16 · id_ticket_etapa: 37 · nueva_solucion_nombre: prueba0 · nueva_solucion_descripcion: prueba', '201.244.156.67', 200, '2026-09-21 09:14:55'),
(731, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 37 · id_solucion: 38 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:14:58'),
(732, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 37 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:15:06'),
(733, 345, 28, NULL, 'Flujos de tickets', 'Guardar checklist', 'id_ticket: 16 · id_ticket_etapa: 36 · completado: 2 elemento(s) · observacion: 2 elemento(s)', '201.244.156.67', 303, '2026-09-21 09:15:31'),
(734, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 36 · id_solucion: 6 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:15:37'),
(735, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 36 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-21 09:15:43'),
(736, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 35 · id_solucion: 1 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:16:16'),
(737, 345, 28, NULL, 'Flujos de tickets', 'Guardar checklist', 'id_ticket: 10 · id_ticket_etapa: 73 · completado: 2 elemento(s) · observacion: 2 elemento(s)', '201.244.156.67', 303, '2026-09-21 09:16:26'),
(738, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 73 · id_solucion: 6 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:16:31'),
(739, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 73 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:16:37'),
(740, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 35 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:16:58'),
(741, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 34 · id_solucion: 34 · comentario_cierre: pruebas', '201.244.156.67', 303, '2026-09-21 09:17:48'),
(742, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 34 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:17:56'),
(743, 345, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 33 · id_solucion: 32 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:18:17'),
(744, 345, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 33 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:18:24'),
(745, 346, 1, NULL, 'Usuarios', 'Modificación en Usuarios', 'id_usuario: 32 · cedula: 1016083143 · nombre: CUY GOMEZ JEISSON SMITH · proceso: CONTROLLER-DBM · cu1: BDTN · cu3: LTTR · descripcion_cu1: CONTROLLER-DBM-TRANSVERSAL-NACIONAL · correo: jeisson.cuy@grupoconectar.co · empresa: CT · rol: 2', '201.244.156.67', 302, '2026-09-21 09:19:07'),
(746, 347, 32, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 32 · id_solucion: 18 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:19:30'),
(747, 347, 32, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 31 · id_solucion: 17 · comentario_cierre: Prueba', '201.244.156.67', 303, '2026-09-21 09:19:43'),
(748, 348, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 31 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:20:41'),
(749, 348, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 32 · calificacion_area: 4 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:20:50'),
(750, 348, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 25 · id_solucion: 31 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:21:13'),
(751, 348, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 16 · id_ticket_etapa: 25 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:21:20'),
(752, 348, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 16 · id_ticket_etapa: 24 · id_solucion: 24 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:21:34'),
(753, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 74 · id_solucion: 38 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-21 09:22:51'),
(754, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 74 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:22:58'),
(755, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 59 · id_solucion: 23 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:23:41'),
(756, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 59 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:23:49'),
(757, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 75 · id_solucion: 5 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:24:01'),
(758, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 75 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: PRUEB', '201.244.156.67', 303, '2026-09-21 09:24:21'),
(759, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 58 · id_solucion: 29 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:25:03'),
(760, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 58 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:25:09'),
(761, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 77 · id_solucion: 35 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-21 09:27:07'),
(762, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 77 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:27:15'),
(763, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 78 · id_solucion: 29 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:27:28'),
(764, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 78 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:27:34'),
(765, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 76 · id_solucion: 36 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:27:49'),
(766, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 76 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:27:55'),
(767, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 79 · id_solucion: 21 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:28:06'),
(768, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 79 · calificacion_area: 4 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:28:12'),
(769, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 80 · id_solucion: 23 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:28:24'),
(770, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 80 · calificacion_area: 4 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:28:32'),
(771, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 81 · id_solucion: 30 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:28:46'),
(772, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 81 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:28:59'),
(773, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 57 · id_solucion: 35 · comentario_cierre: oprueba', '201.244.156.67', 303, '2026-09-21 09:29:30'),
(774, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 57 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:29:35'),
(775, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 56 · id_solucion: 5 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:29:48'),
(776, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 56 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:29:53'),
(777, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 82 · id_solucion: 18 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:30:11'),
(778, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 82 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:30:18'),
(779, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 83 · id_solucion: 26 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:30:33'),
(780, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 83 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-21 09:30:39'),
(781, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 84 · id_solucion: 25 · comentario_cierre: prueba', '201.244.156.67', 303, '2026-09-21 09:30:53'),
(782, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 84 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:31:00'),
(783, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 55 · id_solucion: 38 · comentario_cierre: pruebA', '201.244.156.67', 303, '2026-09-21 09:31:27'),
(784, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 55 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: PRUEVBA', '201.244.156.67', 303, '2026-09-21 09:31:33'),
(785, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 86 · id_solucion: 17 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:31:48'),
(786, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 86 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: PRUBEA', '201.244.156.67', 303, '2026-09-21 09:31:54'),
(787, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 97 · id_solucion: 29 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:32:06'),
(788, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 97 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:32:14'),
(789, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 87 · id_solucion: 18 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:32:25'),
(790, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 87 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:32:30'),
(791, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 88 · id_solucion: 32 · comentario_cierre: PRUEBAS', '201.244.156.67', 303, '2026-09-21 09:32:44'),
(792, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 88 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:32:49'),
(793, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 96 · id_solucion: 35 · comentario_cierre: PRUEBAS', '201.244.156.67', 303, '2026-09-21 09:33:13'),
(794, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 96 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:33:17'),
(795, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 95 · id_solucion: 36 · comentario_cierre: PRUEBAS', '201.244.156.67', 303, '2026-09-21 09:33:31'),
(796, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 95 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:33:37'),
(797, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 94 · id_solucion: 5 · comentario_cierre: PRUEBAS', '201.244.156.67', 303, '2026-09-21 09:33:52'),
(798, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 94 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:33:56'),
(799, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 89 · id_solucion: 33 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:34:10'),
(800, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 89 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:34:16'),
(801, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 54 · id_solucion: 27 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:37:15'),
(802, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 54 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:37:21'),
(803, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 93 · id_solucion: 38 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:37:37'),
(804, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 93 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:37:43'),
(805, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 90 · id_solucion: 34 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:37:59'),
(806, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 90 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:38:04'),
(807, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 91 · id_solucion: 1 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:38:19'),
(808, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 91 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:38:24'),
(809, 350, 28, NULL, 'Flujos de tickets', 'Guardar checklist', 'id_ticket: 10 · id_ticket_etapa: 92 · completado: 2 elemento(s) · observacion: 2 elemento(s)', '201.244.156.67', 303, '2026-09-21 09:38:51'),
(810, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 92 · id_solucion: 6 · comentario_cierre: pRUEBA', '201.244.156.67', 303, '2026-09-21 09:39:04'),
(811, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 92 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:39:11'),
(812, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 49 · id_solucion: 22 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:39:31'),
(813, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 49 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:39:37'),
(814, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 50 · id_solucion: 31 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:40:12'),
(815, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 50 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:40:17'),
(816, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 85 · id_solucion: 37 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:40:29'),
(817, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 85 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:40:34'),
(818, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 52 · id_solucion: 20 · comentario_cierre: PRUEVBA', '201.244.156.67', 303, '2026-09-21 09:40:51'),
(819, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 52 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:40:57'),
(820, 350, 28, NULL, 'Flujos de tickets', 'Guardar checklist', 'id_ticket: 10 · id_ticket_etapa: 53 · completado: 2 elemento(s) · observacion: 2 elemento(s)', '201.244.156.67', 303, '2026-09-21 09:41:10'),
(821, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 53 · id_solucion: 6 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:41:16'),
(822, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 53 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:41:21'),
(823, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 51 · id_solucion: 24 · comentario_cierre: PRUEBA', '201.244.156.67', 303, '2026-09-21 09:41:35'),
(824, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 51 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:41:43'),
(825, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 46 · id_solucion: 17 · comentario_cierre: pRUEBA', '201.244.156.67', 303, '2026-09-21 09:41:57'),
(826, 350, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 10 · id_ticket_etapa: 46 · calificacion_area: 5 · calificacion_tiempo: 5', '201.244.156.67', 303, '2026-09-21 09:42:03'),
(827, 350, 28, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 10 · id_ticket_etapa: 18 · id_solucion: 32 · comentario_cierre: ´pRUEBA', '201.244.156.67', 303, '2026-09-21 09:42:23'),
(828, 353, 1, NULL, 'Áreas', 'Cambiar estado', 'id_catalogo: 15 · nuevo_estado: activo', '201.244.156.67', 302, '2026-09-21 09:49:04'),
(829, 362, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-21 10:53:03'),
(830, 364, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-21 11:15:07'),
(831, 364, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: negro_blanco', '201.244.156.67', 303, '2026-09-21 11:15:11'),
(832, 364, 9, NULL, 'apariencia', 'Cambiar tema', 'tema: corporativo', '201.244.156.67', 303, '2026-09-21 11:15:18'),
(833, 375, 20, NULL, 'Flujos de tickets', 'Crear solucion rapida', 'id_ticket: 15 · id_ticket_etapa: 23 · nueva_solucion_nombre: Prueba · nueva_solucion_descripcion: Prueba', '201.244.156.67', 200, '2026-09-21 16:41:40');
INSERT INTO `auditoria_sesiones` (`id_auditoria`, `id_sesion`, `id_usuario`, `id_perfil_gestor`, `modulo`, `accion`, `detalle`, `direccion_ip`, `estado_http`, `fecha_hora`) VALUES
(834, 375, 20, NULL, 'Soluciones', 'Crear', 'id_servicio: 116 · nombre: Prueba · descripcion: Prueba · orden: 2', '201.244.156.67', 302, '2026-09-21 16:59:30'),
(835, 382, 28, NULL, 'apariencia', 'Cambiar tema', 'tema: rojo_negro', '201.244.156.67', 303, '2026-09-22 07:42:49'),
(836, 391, 28, NULL, 'perfil', 'Actualizar foto', 'Sin campos descriptivos disponibles.', '201.244.156.67', 303, '2026-09-22 09:10:02'),
(837, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:01'),
(838, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:03'),
(839, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:04'),
(840, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:05'),
(841, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:05'),
(842, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:06'),
(843, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:06'),
(844, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:07'),
(845, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:08'),
(846, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:08'),
(847, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:09'),
(848, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:09'),
(849, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:10'),
(850, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:11'),
(851, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:12'),
(852, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:12'),
(853, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:13'),
(854, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:13'),
(855, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:14'),
(856, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:14'),
(857, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:14'),
(858, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:15'),
(859, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:17'),
(860, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:17'),
(861, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:18'),
(862, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:19'),
(863, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:19'),
(864, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:20'),
(865, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:21'),
(866, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:22'),
(867, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:22'),
(868, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:23'),
(869, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:24'),
(870, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:24'),
(871, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:24'),
(872, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:25'),
(873, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:25'),
(874, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:26'),
(875, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:27'),
(876, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:27'),
(877, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:27'),
(878, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:28'),
(879, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:28'),
(880, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:28'),
(881, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:29'),
(882, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:29'),
(883, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:29'),
(884, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:30'),
(885, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:30'),
(886, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:31'),
(887, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:31'),
(888, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:31'),
(889, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:32'),
(890, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:32'),
(891, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:33'),
(892, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:33'),
(893, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:34'),
(894, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:34'),
(895, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:34'),
(896, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:34'),
(897, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:35'),
(898, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:36'),
(899, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:36'),
(900, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:37'),
(901, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:37'),
(902, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:37'),
(903, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:38'),
(904, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:38'),
(905, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:38'),
(906, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:39'),
(907, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:40'),
(908, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:42'),
(909, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:43'),
(910, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:44'),
(911, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:45'),
(912, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:46'),
(913, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:49'),
(914, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:50'),
(915, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:56:54'),
(916, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:57:02'),
(917, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:57:04'),
(918, 397, 1, NULL, 'Áreas', 'Guardar orden catalogos', 'guardar_orden_catalogos: 1 · orden: 10 elemento(s)', '201.244.156.67', 200, '2026-09-22 09:57:07'),
(919, 409, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-22 11:20:36'),
(920, 409, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 86065425', '201.244.156.67', 200, '2026-09-22 11:20:46'),
(921, 409, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-22 11:20:53'),
(922, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1006874469', '201.244.156.67', 200, '2026-09-22 11:52:02'),
(923, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-22 11:52:40'),
(924, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1014296060', '201.244.156.67', 200, '2026-09-22 11:53:46'),
(925, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-22 11:53:55'),
(926, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 100778268', '201.244.156.67', 200, '2026-09-22 11:54:03'),
(927, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-22 11:54:05'),
(928, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 100778268', '201.244.156.67', 200, '2026-09-22 11:54:08'),
(929, 410, 1, NULL, 'Usuarios', 'Buscar personal', 'cedula: 1007782685', '201.244.156.67', 200, '2026-09-22 11:54:10'),
(930, 431, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 5 · id_ticket_etapa: 9 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: Prueba', '201.244.156.67', 303, '2026-09-22 16:36:02'),
(931, 431, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 5 · id_ticket_etapa: 9 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: pRUEBA', '201.244.156.67', 303, '2026-09-22 16:36:17'),
(932, 431, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 5 · id_ticket_etapa: 9 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: prueba', '201.244.156.67', 303, '2026-09-22 16:36:49'),
(933, 433, 28, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 5 · id_ticket_etapa: 9 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: 0', '201.244.156.67', 303, '2026-09-22 16:44:01'),
(934, 435, 32, NULL, 'Flujos de tickets', 'Cerrar caso', 'id_ticket: 5 · id_ticket_etapa: 9 · calificacion_area: 5 · calificacion_tiempo: 5 · comentario_calificacion: 0', '201.244.156.67', 303, '2026-09-22 16:45:37'),
(935, 435, 32, NULL, 'Flujos de tickets', 'Marcar listo', 'id_ticket: 5 · id_ticket_etapa: 8 · id_solucion: 17 · comentario_cierre: 0', '201.244.156.67', 303, '2026-09-22 16:45:48');

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
(1, 1, 'Administración', '02', 'graph:01GZGR3EO7GR4TI6GVHFC3DVGC5GLGXURY', 'activo', 10, '2026-07-31 09:00:22', '2026-09-22 14:56:49'),
(2, 1, 'Contabilidad', 'Servicios contables, tributarios y financieros.', 'graph:01GZGR3EJDZ6KWHEHLEJBILYK5RBIAPRDB', 'activo', 5, '2026-07-31 09:00:22', '2026-09-22 14:57:04'),
(3, 1, 'Jurídica', 'Consultas y solicitudes jurídicas.', 'graph:01GZGR3EOSSG4DTUOHNJAK52EA64TL7Y6R', 'activo', 3, '2026-07-31 09:00:22', '2026-09-22 14:57:04'),
(5, 1, 'Talento Humano', 'Servicios relacionados con los colaboradores.', 'graph:01GZGR3EOQX4DMMZ2VYVBIW5FYHTHZRT4E', 'activo', 4, '2026-07-31 09:00:22', '2026-09-22 14:57:04'),
(6, 1, 'TICs', 'Soporte tecnológico y sistemas de información.', 'graph:01GZGR3EOZUZ5G3XJYNBCKRT6V6VF62VXF', 'activo', 1, '2026-07-31 09:00:22', '2026-09-22 14:56:50'),
(7, 2, 'TICs', '', 'private/catalogos/catalogo_e1c91e52c28b77aa.webp', 'activo', 1, '2026-08-12 15:56:05', '2026-08-13 14:09:04'),
(8, 2, 'Seguridad Integral', '', 'private/catalogos/catalogo_3162f1ce86a8391d.webp', 'activo', 2, '2026-08-12 16:00:04', '2026-08-27 15:24:28'),
(9, 2, 'Talento Humano', '1.0', 'private/catalogos/catalogo_c682c579053b84f8.webp', 'activo', 9999, '2026-08-24 12:25:04', '2026-08-24 17:25:04'),
(11, 1, 'Calidad y Planeación estratégica', '02', 'graph:01GZGR3EPNGELT42KKNVDLP4DNSMOKBBG7', 'activo', 6, '2026-08-26 08:06:37', '2026-09-22 14:57:02'),
(12, 1, 'Controller', 'Controller', 'graph:01GZGR3EP4EN6ZXJQOMBGL3S7WBB2JMOM4', 'activo', 7, '2026-09-02 16:34:43', '2026-09-22 14:56:54'),
(13, 1, 'Control Interno', '05', 'graph:01GZGR3EPCEXR3AMXW5BCZFWJXS6L4MZGR', 'activo', 8, '2026-09-02 16:47:07', '2026-09-22 14:57:07'),
(14, 1, 'Cadena de Abastecimiento', '05', 'graph:01GZGR3ENR5VZHWPM4URCJSOTPD3CQATMR', 'activo', 9, '2026-09-03 08:00:16', '2026-09-22 14:57:07'),
(15, 1, 'Tesoreria', '06', 'graph:01GZGR3EPOCEQEPCYQFZA3O3PGR7UHLHBL', 'activo', 2, '2026-09-03 08:02:08', '2026-09-22 14:56:54');

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
(1, 1, 9, '2026-08-28 12:58:09', '2026-08-28 12:58:09', '2026-08-31 14:04:47'),
(3, 6, 28, '2026-09-04 14:23:52', '2026-09-04 14:23:52', '2026-09-15 16:26:01'),
(4, 7, 28, '2026-09-08 07:53:07', '2026-09-08 07:53:07', '2026-09-15 16:26:05'),
(13, 21, 28, '2026-09-17 08:26:10', '2026-09-17 08:26:10', '2026-09-18 19:01:19');

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
(1, 0, '2026-09-22 16:53:25', '2026-09-22 16:54:37'),
(2, 0, '2026-09-22 16:26:01', '2026-09-22 16:26:22'),
(4, 0, '2026-08-31 09:18:36', '2026-08-31 09:19:00'),
(9, 0, '2026-09-22 16:12:41', '2026-09-22 16:16:53'),
(20, 0, '2026-09-21 16:38:54', '2026-09-21 17:04:04'),
(22, 1, '2026-09-16 18:53:29', '2026-09-16 18:56:52'),
(28, 1, '2026-09-22 16:55:04', '2026-09-22 16:56:40'),
(31, 0, '2026-09-08 13:49:04', '2026-09-08 13:51:09'),
(32, 0, '2026-09-22 16:54:43', '2026-09-22 16:55:00');

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
(18, 1, 'nivel', NULL, 'Nivel 1', 'Atención básica o primer nivel.', '#22c55e', 'activo', 1, '2026-07-31 09:00:22', '2026-09-04 13:27:13'),
(19, 1, 'nivel', NULL, 'Nivel 2', 'Atención especializada o segundo nivel.', '#3b82f6', 'activo', 2, '2026-07-31 09:00:22', '2026-09-03 21:30:01'),
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
(43, 1, 'clasificacion', NULL, 'Requerimiento', 'Solicitud de un servicio, recurso o gestión.', '#00eeff', 'activo', 1, '2026-08-24 15:21:20', '2026-09-04 13:27:01'),
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
(1, 1, 'festivo', 'dia_completo', '2026-08-06 00:00:00', '2026-08-07 00:00:00', '', 'activo', 1, '2026-08-05 12:58:10', '2026-09-04 13:26:49');

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
(33, 9, 1, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #1 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-08-31 09:19:17', '2026-08-31 09:19:18'),
(34, 28, 3, 6, 'Nuevo ticket asignado', 'El Caso 3, etapa 1, está disponible para su gestión.', 1, '2026-09-04 14:23:19', '2026-09-15 11:25:56'),
(35, 28, 3, 6, 'Nuevo mensaje en Caso 3 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 3 · etapa 1.', 1, '2026-09-04 14:23:44', '2026-09-15 11:26:01'),
(36, 28, 3, 6, 'Nuevo mensaje en Caso 3 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 3 · etapa 1.', 1, '2026-09-04 14:23:47', '2026-09-15 11:26:01'),
(37, 28, 3, 6, 'Nuevo mensaje en Caso 3 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 3 · etapa 1.', 1, '2026-09-04 14:23:52', '2026-09-15 11:26:01'),
(38, 28, 4, 7, 'Nuevo ticket asignado', 'El Caso 4, etapa 1, está disponible para su gestión.', 1, '2026-09-08 07:50:58', '2026-09-15 11:26:03'),
(39, 28, 4, 7, 'Nuevo mensaje en Caso 4 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 4 · etapa 1.', 1, '2026-09-08 07:53:07', '2026-09-15 11:26:05'),
(40, 32, 5, 8, 'Nuevo ticket asignado', 'El Caso 5, etapa 1, está disponible para su gestión.', 1, '2026-09-08 11:25:14', '2026-09-08 11:25:44'),
(41, 28, 5, 9, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1 del Caso 5.', 1, '2026-09-08 12:31:46', '2026-09-21 09:12:55'),
(42, 31, 5, 9, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1 para TICs / Creación de usuario para ingreso a plataforma de Claro.', 0, '2026-09-08 12:31:46', NULL),
(43, 32, 5, 9, 'Caso reasignado por el administrador', 'Ahora tiene asignada la derivación del caso 5.', 1, '2026-09-08 12:32:14', '2026-09-08 12:32:33'),
(44, 32, 6, 10, 'Nuevo ticket asignado', 'El Caso 6, etapa 1, está disponible para su gestión.', 1, '2026-09-08 13:50:15', '2026-09-08 15:18:06'),
(45, 28, 7, 11, 'Nuevo ticket asignado', 'El Caso 7, etapa 1, está disponible para su gestión.', 1, '2026-09-15 11:24:26', '2026-09-15 11:26:09'),
(46, 9, 7, 11, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 7 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 1, '2026-09-15 11:30:30', '2026-09-15 11:31:04'),
(47, 28, 7, 11, 'Cierre definitivo aprobado', 'El solicitante aprobó el cierre definitivo del ticket #7 por resolución en primer contacto.', 1, '2026-09-15 11:32:19', '2026-09-15 11:32:48'),
(48, 28, 8, 14, 'Nuevo ticket asignado', 'El Caso 8, etapa 1, está disponible para su gestión.', 1, '2026-09-15 11:34:28', '2026-09-15 11:36:13'),
(49, 2, 8, 15, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1 del Caso 8.', 1, '2026-09-15 11:37:54', '2026-09-15 11:39:01'),
(50, 9, 8, 15, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1 para Administración / Compra de maquinaria y equipos.', 1, '2026-09-15 11:37:54', '2026-09-15 11:47:05'),
(51, 28, 8, 15, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-15 11:43:12', '2026-09-15 11:44:04'),
(52, 2, 8, 15, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Ticket 1.1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-09-15 11:44:47', '2026-09-22 16:26:08'),
(53, 28, 8, 14, 'Caso padre reanudado', 'Todos los hijos del ticket #8 finalizaron. Su SLA volvió a correr.', 1, '2026-09-15 11:44:47', '2026-09-15 11:44:48'),
(54, 9, 8, 14, 'Atención lista para revisión', 'El gestor asignado marcó Caso 8 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-15 11:46:48', '2026-09-15 11:47:05'),
(55, 28, 8, 14, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 8 · etapa 1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-09-15 11:47:20', '2026-09-18 13:36:11'),
(56, 9, 8, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #8 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-09-15 11:47:20', '2026-09-15 11:47:21'),
(57, 21, 9, 16, 'Nuevo ticket asignado', 'El Caso 9, etapa 1, está disponible para su gestión.', 0, '2026-09-16 08:19:25', NULL),
(58, 31, 4, 7, 'Atención lista para revisión', 'El gestor asignado marcó Caso 4 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 0, '2026-09-16 10:52:43', NULL),
(59, 28, 10, 18, 'Nuevo ticket asignado', 'El Caso 10, etapa 1, está disponible para su gestión.', 1, '2026-09-16 15:38:35', '2026-09-21 08:07:35'),
(60, 28, 11, 19, 'Nuevo ticket asignado', 'El Caso 11, etapa 1, está disponible para su gestión.', 1, '2026-09-16 15:38:58', '2026-09-16 16:18:19'),
(61, 28, 12, 20, 'Nuevo ticket asignado', 'El Caso 12, etapa 1, está disponible para su gestión.', 1, '2026-09-16 16:37:01', '2026-09-21 08:57:40'),
(62, 28, 13, 21, 'Nuevo ticket asignado', 'El Caso 13, etapa 1, está disponible para su gestión.', 1, '2026-09-17 08:23:31', '2026-09-17 08:27:53'),
(63, 28, 13, 21, 'Nuevo mensaje en Caso 13 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 13 · etapa 1.', 1, '2026-09-17 08:24:40', '2026-09-18 14:01:19'),
(64, 28, 14, 22, 'Nuevo ticket asignado', 'El Caso 14, etapa 1, está disponible para su gestión.', 1, '2026-09-17 08:25:05', '2026-09-17 15:32:51'),
(65, 20, 15, 23, 'Nuevo ticket asignado', 'El Caso 15, etapa 1, está disponible para su gestión.', 1, '2026-09-17 08:25:18', '2026-09-21 16:39:00'),
(66, 28, 13, 21, 'Nuevo mensaje en Caso 13 · etapa 1', 'Recibió un mensaje en el chat privado de Caso 13 · etapa 1.', 1, '2026-09-17 08:26:10', '2026-09-18 14:01:19'),
(67, 28, 16, 24, 'Nuevo ticket asignado', 'El Caso 16, etapa 1, está disponible para su gestión.', 1, '2026-09-18 08:58:15', '2026-09-18 08:58:16'),
(68, 28, 16, 25, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1 del Caso 16.', 1, '2026-09-18 08:59:54', '2026-09-18 08:59:54'),
(69, 9, 16, 25, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1 para TICs / Adecuación de Red.', 1, '2026-09-18 08:59:54', '2026-09-21 08:00:59'),
(70, 28, 16, 26, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.1 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(71, 9, 16, 26, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.1 para TICs / Creación de usuario para ingreso a plataforma de Claro.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(72, 28, 16, 27, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.2 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(73, 9, 16, 27, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.2 para TICs / Asistencia de Impresora.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(74, 28, 16, 28, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.3 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(75, 9, 16, 28, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.3 para TICs / Copia de seguridad.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(76, 28, 16, 29, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.4 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(77, 9, 16, 29, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.4 para TICs / Creación de usuario Milldesk.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(78, 28, 16, 30, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.5 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(79, 9, 16, 30, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.5 para TICs / Falla  de servicio de internet.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(80, 32, 16, 31, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.6 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-21 09:19:20'),
(81, 9, 16, 31, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.6 para TICs / Falla de Equipos.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(82, 32, 16, 32, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.7 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-21 09:19:20'),
(83, 9, 16, 32, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.7 para TICs / Falla de Impresora.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(84, 28, 16, 33, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.8 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(85, 9, 16, 33, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.8 para TICs / Gestión de accesos SICI.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(86, 28, 16, 34, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.9 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(87, 9, 16, 34, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.9 para TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(88, 28, 16, 35, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.10 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(89, 9, 16, 35, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.10 para TICs / Gestión de Usuarios Correo Corporativo.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(90, 28, 16, 36, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.11 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(91, 9, 16, 36, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.11 para TICs / Gestión de Usuarios INFOR.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(92, 28, 16, 37, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.12 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(93, 9, 16, 37, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.12 para TICs / Gestión de Usuarios SICI.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(94, 28, 16, 38, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.13 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(95, 9, 16, 38, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.13 para TICs / Gestión de Usuarios Uniclass.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(96, 28, 16, 39, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.14 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(97, 9, 16, 39, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.14 para TICs / Ingreso de equipos al proyecto BYOD.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(98, 28, 16, 40, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.15 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(99, 9, 16, 40, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.15 para TICs / Instalación de software.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(100, 28, 16, 41, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.16 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(101, 9, 16, 41, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.16 para TICs / Instalación de VPN CONECTAR.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(102, 28, 16, 42, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.17 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(103, 9, 16, 42, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.17 para TICs / Mantenimiento de Equipos de Cómputo.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(104, 28, 16, 43, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.18 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(105, 9, 16, 43, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.18 para TICs / Solicitud Equipos de Cómputo.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(106, 28, 16, 44, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.19 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(107, 9, 16, 44, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.19 para TICs / Solicitud de servicio de internet.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(108, 28, 16, 45, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20 del Caso 16.', 1, '2026-09-18 09:20:57', '2026-09-18 09:20:59'),
(109, 9, 16, 45, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20 para TICs / Solicitud de Creación o modificaciones a Desarrollos.', 1, '2026-09-18 09:20:57', '2026-09-21 08:00:59'),
(110, 28, 16, 26, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 09:23:17', '2026-09-18 09:23:17'),
(111, 28, 16, 27, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(112, 28, 16, 28, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(113, 28, 16, 29, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(114, 28, 16, 30, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(115, 32, 16, 31, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-21 09:19:20'),
(116, 32, 16, 32, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-21 09:19:20'),
(117, 28, 16, 33, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(118, 28, 16, 34, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(119, 28, 16, 35, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(120, 28, 16, 36, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(121, 28, 16, 37, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(122, 28, 16, 38, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(123, 28, 16, 39, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(124, 28, 16, 40, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(125, 28, 16, 41, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(126, 28, 16, 42, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(127, 28, 16, 43, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(128, 28, 16, 44, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(129, 28, 16, 45, 'Ticket derivado habilitado', 'La derivación del ticket #16 ya está disponible para atenderse en paralelo.', 1, '2026-09-18 09:23:26', '2026-09-18 09:23:26'),
(130, 28, 16, 27, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 11:21:36', '2026-09-18 11:21:36'),
(131, 28, 16, 45, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:02:53', '2026-09-18 13:02:53'),
(132, 28, 16, 44, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.19 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:06:51', '2026-09-18 13:06:51'),
(133, 28, 16, 43, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:16:51', '2026-09-18 13:16:52'),
(134, 28, 16, 43, 'Atención reabierta', 'El creador reabrió . Debe continuar la gestión y el SLA volvió a correr.', 1, '2026-09-18 13:26:15', '2026-09-18 13:26:16'),
(135, 28, 16, 43, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:31:23', '2026-09-18 13:31:23'),
(136, 28, 16, 43, 'Atención reabierta', 'El creador reabrió . Debe continuar la gestión y el SLA volvió a correr.', 1, '2026-09-18 13:31:29', '2026-09-18 13:31:30'),
(137, 28, 16, 43, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:32:20', '2026-09-18 13:32:20'),
(138, 28, 16, 43, 'Derivación reabierta', 'TICs reabrió Ticket 1.1.18. Motivo: 0', 1, '2026-09-18 13:32:27', '2026-09-18 13:32:28'),
(139, 28, 16, 42, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.17 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-18 13:34:31', '2026-09-18 13:34:31'),
(140, 28, 16, 42, 'Derivación reabierta', 'TICs reabrió Ticket 1.1.17. Motivo: 0', 1, '2026-09-18 13:34:35', '2026-09-18 13:34:36'),
(141, 32, 10, 46, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1 del Caso 10.', 0, '2026-09-21 08:09:53', NULL),
(142, 9, 10, 46, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1 para TICs / Falla de Equipos.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(143, 28, 10, 47, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.2 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(144, 9, 10, 47, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.2 para TICs / Solicitud Equipos de Cómputo.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(145, 32, 10, 48, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.3 del Caso 10.', 0, '2026-09-21 08:09:53', NULL),
(146, 9, 10, 48, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.3 para TICs / Falla de Impresora.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(147, 28, 10, 49, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.4 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(148, 9, 10, 49, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.4 para TICs / Solicitud de servicio de internet.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(149, 28, 10, 50, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.5 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(150, 9, 10, 50, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.5 para TICs / Adecuación de Red.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(151, 28, 10, 51, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.6 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(152, 9, 10, 51, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.6 para TICs / Falla  de servicio de internet.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(153, 28, 10, 52, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.7 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(154, 9, 10, 52, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.7 para TICs / Asistencia de Impresora.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(155, 28, 10, 53, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.8 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(156, 9, 10, 53, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.8 para TICs / Gestión de Usuarios INFOR.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(157, 28, 10, 54, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.9 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(158, 9, 10, 54, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.9 para TICs / Copia de seguridad.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(159, 28, 10, 55, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.10 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(160, 9, 10, 55, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.10 para TICs / Gestión de Usuarios SICI.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(161, 28, 10, 56, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.11 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(162, 9, 10, 56, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.11 para TICs / Gestión de Usuarios Uniclass.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(163, 28, 10, 57, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.12 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(164, 9, 10, 57, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.12 para TICs / Instalación de software.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(165, 28, 10, 58, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.13 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(166, 9, 10, 58, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.13 para TICs / Instalación de VPN CONECTAR.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(167, 28, 10, 59, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.14 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(168, 9, 10, 59, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.14 para TICs / Mantenimiento de Equipos de Cómputo.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(169, 28, 10, 60, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.15 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(170, 9, 10, 60, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.15 para TICs / Préstamo de equipos de cómputo.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(171, 28, 10, 61, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.16 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(172, 9, 10, 61, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.16 para TICs / Reporte de incidente de seguridad de la información.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(173, 28, 10, 62, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.17 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(174, 9, 10, 62, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.17 para TICs / Ingreso de equipos al proyecto BYOD.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(175, 28, 10, 63, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.18 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(176, 9, 10, 63, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.18 para TICs / Solicitud de acceso al repositorio de Cloud (nube).', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(177, 28, 10, 64, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.19 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(178, 9, 10, 64, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.19 para TICs / Solicitud de periféricos.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(179, 28, 10, 65, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.20 del Caso 10.', 1, '2026-09-21 08:09:53', '2026-09-21 08:09:53'),
(180, 9, 10, 65, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.20 para TICs / Solicitud de Creación o modificaciones a Desarrollos.', 1, '2026-09-21 08:09:53', '2026-09-21 08:29:35'),
(181, 28, 10, 46, 'Caso reasignado por el administrador', 'Ahora tiene asignada la derivación del caso 10.', 1, '2026-09-21 08:15:27', '2026-09-21 08:15:54'),
(182, 28, 10, 48, 'Caso reasignado por el administrador', 'Ahora tiene asignada la derivación del caso 10.', 1, '2026-09-21 08:15:37', '2026-09-21 08:15:54'),
(183, 28, 10, 66, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.1 del Caso 10.', 1, '2026-09-21 08:18:08', '2026-09-21 08:18:09'),
(184, 9, 10, 66, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.1 para TICs / Solicitud Equipos de Cómputo.', 1, '2026-09-21 08:18:08', '2026-09-21 08:29:35'),
(185, 28, 10, 67, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.2 del Caso 10.', 1, '2026-09-21 08:18:08', '2026-09-21 08:18:09'),
(186, 9, 10, 67, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.2 para TICs / Adecuación de Red.', 1, '2026-09-21 08:18:08', '2026-09-21 08:29:35'),
(187, 28, 10, 68, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.3 del Caso 10.', 1, '2026-09-21 08:18:08', '2026-09-21 08:18:09'),
(188, 9, 10, 68, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.3 para TICs / Solicitud de servicio de internet.', 1, '2026-09-21 08:18:08', '2026-09-21 08:29:35'),
(189, 28, 10, 69, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.4 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(190, 9, 10, 69, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.4 para TICs / Gestión de accesos SICI.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(191, 28, 10, 70, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.5 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(192, 9, 10, 70, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.5 para TICs / Gestión de Desarrollo y Evolución de Aplicaciones.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(193, 28, 10, 71, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.6 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(194, 9, 10, 71, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.6 para TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(195, 28, 10, 72, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.7 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(196, 9, 10, 72, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.7 para TICs / Gestión de Usuarios Correo Corporativo.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(197, 28, 10, 73, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.8 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(198, 9, 10, 73, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.8 para TICs / Gestión de Usuarios INFOR.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(199, 28, 10, 74, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.9 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(200, 9, 10, 74, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.9 para TICs / Gestión de Usuarios SICI.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(201, 28, 10, 75, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.10 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(202, 9, 10, 75, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.10 para TICs / Gestión de Usuarios Uniclass.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(203, 28, 10, 76, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.11 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(204, 9, 10, 76, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.11 para TICs / Ingreso de equipos al proyecto BYOD.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(205, 28, 10, 77, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.12 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(206, 9, 10, 77, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.12 para TICs / Instalación de software.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(207, 28, 10, 78, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.13 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(208, 9, 10, 78, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.13 para TICs / Instalación de VPN CONECTAR.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(209, 28, 10, 79, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.14 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(210, 9, 10, 79, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.14 para TICs / Solicitud de Creación o modificaciones a Desarrollos.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(211, 28, 10, 80, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.15 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(212, 9, 10, 80, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.15 para TICs / Mantenimiento de Equipos de Cómputo.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(213, 28, 10, 81, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.16 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(214, 9, 10, 81, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.16 para TICs / Préstamo de equipos de cómputo.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(215, 28, 10, 82, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.17 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(216, 9, 10, 82, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.17 para TICs / Falla de Impresora.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(217, 28, 10, 83, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.18 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(218, 9, 10, 83, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.18 para TICs / Solicitud de acceso al repositorio de Cloud (nube).', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(219, 28, 10, 84, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.19 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(220, 9, 10, 84, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.19 para TICs / Solicitud de periféricos.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(221, 28, 10, 85, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20 del Caso 10.', 1, '2026-09-21 08:18:09', '2026-09-21 08:18:09'),
(222, 9, 10, 85, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20 para TICs / Reporte de incidente de seguridad de la información.', 1, '2026-09-21 08:18:09', '2026-09-21 08:29:35'),
(223, 28, 10, 86, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.1 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(224, 9, 10, 86, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.1 para TICs / Falla de Equipos.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(225, 28, 10, 87, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.2 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(226, 9, 10, 87, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.2 para TICs / Falla de Impresora.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(227, 28, 10, 88, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.3 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(228, 9, 10, 88, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.3 para TICs / Gestión de accesos SICI.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(229, 28, 10, 89, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.4 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(230, 9, 10, 89, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.4 para TICs / Gestión de Desarrollo y Evolución de Aplicaciones.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(231, 28, 10, 90, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.5 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(232, 9, 10, 90, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.5 para TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(233, 28, 10, 91, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.6 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(234, 9, 10, 91, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.6 para TICs / Gestión de Usuarios Correo Corporativo.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(235, 28, 10, 92, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.7 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(236, 9, 10, 92, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.7 para TICs / Gestión de Usuarios INFOR.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(237, 28, 10, 93, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.8 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(238, 9, 10, 93, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.8 para TICs / Gestión de Usuarios SICI.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(239, 28, 10, 94, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.9 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(240, 9, 10, 94, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.9 para TICs / Gestión de Usuarios Uniclass.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(241, 28, 10, 95, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.10 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(242, 9, 10, 95, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.10 para TICs / Ingreso de equipos al proyecto BYOD.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(243, 28, 10, 96, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.11 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(244, 9, 10, 96, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.11 para TICs / Instalación de software.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(245, 28, 10, 97, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.12 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(246, 9, 10, 97, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.12 para TICs / Instalación de VPN CONECTAR.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(247, 28, 10, 98, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.13 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(248, 9, 10, 98, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.13 para TICs / Mantenimiento de Equipos de Cómputo.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(249, 28, 10, 99, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.14 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(250, 9, 10, 99, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.14 para TICs / Préstamo de equipos de cómputo.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(251, 28, 10, 100, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.15 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(252, 9, 10, 100, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.15 para TICs / Solicitud de acceso al repositorio de Cloud (nube).', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(253, 28, 10, 101, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.16 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(254, 9, 10, 101, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.16 para TICs / Solicitud de Creación o modificaciones a Desarrollos.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(255, 28, 10, 102, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.17 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(256, 9, 10, 102, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.17 para TICs / Solicitud de periféricos.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(257, 28, 10, 103, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.18 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(258, 9, 10, 103, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.18 para TICs / Falla  de servicio de internet.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(259, 28, 10, 104, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.19 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(260, 9, 10, 104, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.19 para TICs / Solicitud Equipos de Cómputo.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(261, 28, 10, 105, 'Nuevo ticket derivado asignado', 'Se derivó a su área el Ticket 1.1.20.20 del Caso 10.', 1, '2026-09-21 08:20:37', '2026-09-21 08:20:38'),
(262, 9, 10, 105, 'Nueva dependencia en su ticket', 'Se creó el Ticket derivado 1.1.20.20 para TICs / Solicitud de servicio de internet.', 1, '2026-09-21 08:20:37', '2026-09-21 08:29:35'),
(263, 28, 10, 105, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.20 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:22:05', '2026-09-21 08:22:06'),
(264, 28, 10, 104, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.19 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:22:35', '2026-09-21 08:22:36'),
(265, 28, 10, 104, 'Derivación reabierta', 'TICs reabrió Ticket 1.1.20.19. Motivo: prueba', 1, '2026-09-21 08:22:41', '2026-09-21 08:22:41'),
(266, 28, 10, 104, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.19 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:22:53', '2026-09-21 08:22:54'),
(267, 28, 10, 103, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:24:13', '2026-09-21 08:24:13'),
(268, 28, 10, 102, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.17 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:24:58', '2026-09-21 08:24:58'),
(269, 28, 10, 101, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.16 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:25:41', '2026-09-21 08:25:41'),
(270, 28, 10, 100, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.15 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:30:43', '2026-09-21 08:30:43'),
(271, 28, 16, 43, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:32:08', '2026-09-21 08:32:08'),
(272, 28, 16, 28, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.3 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:37:35', '2026-09-21 08:37:35'),
(273, 28, 16, 42, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.17 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:39:42', '2026-09-21 08:39:42'),
(274, 28, 16, 29, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.4 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:40:27', '2026-09-21 08:40:27'),
(275, 28, 16, 30, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.5 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:41:26', '2026-09-21 08:41:26'),
(276, 28, 16, 41, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.16 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:43:41', '2026-09-21 08:43:41'),
(277, 28, 10, 99, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.14 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:44:51', '2026-09-21 08:44:52'),
(278, 28, 10, 98, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.13 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:45:17', '2026-09-21 08:45:17'),
(279, 28, 10, 66, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:45:43', '2026-09-21 08:45:43'),
(280, 28, 10, 65, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.20 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:46:11', '2026-09-21 08:46:11'),
(281, 28, 10, 67, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:46:49', '2026-09-21 08:46:50'),
(282, 28, 10, 68, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.3 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:47:19', '2026-09-21 08:47:19'),
(283, 28, 10, 69, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.4 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:47:57', '2026-09-21 08:47:57'),
(284, 28, 10, 47, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:48:33', '2026-09-21 08:48:33'),
(285, 28, 10, 70, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.5 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:49:04', '2026-09-21 08:49:05'),
(286, 28, 10, 48, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.3 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:49:25', '2026-09-21 08:49:25'),
(287, 28, 10, 71, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.6 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:49:49', '2026-09-21 08:49:49'),
(288, 28, 10, 64, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.19 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:50:20', '2026-09-21 08:50:21'),
(289, 28, 10, 63, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:50:52', '2026-09-21 08:50:52'),
(290, 28, 16, 40, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.15 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:51:27', '2026-09-21 08:51:27'),
(291, 28, 10, 62, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.17 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:52:45', '2026-09-21 08:52:46');
INSERT INTO `notificaciones` (`id_notificacion`, `id_usuario`, `id_ticket`, `id_ticket_etapa`, `titulo`, `mensaje`, `leida`, `creada_en`, `leida_en`) VALUES
(292, 28, 10, 61, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.16 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:53:20', '2026-09-21 08:53:21'),
(293, 28, 10, 60, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.15 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 08:54:41', '2026-09-21 08:54:42'),
(294, 9, 11, 19, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 11 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 1, '2026-09-21 08:55:41', '2026-09-21 08:56:19'),
(295, 28, 11, 19, 'Cierre definitivo aprobado', 'El solicitante aprobó el cierre definitivo del ticket #11 por resolución en primer contacto.', 1, '2026-09-21 08:56:27', '2026-09-21 08:57:35'),
(296, 9, 12, 20, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 12 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 1, '2026-09-21 08:57:49', '2026-09-21 08:59:51'),
(297, 9, 13, 21, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 13 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 1, '2026-09-21 08:58:07', '2026-09-21 08:59:37'),
(298, 31, 3, 6, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 3 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 0, '2026-09-21 08:58:21', NULL),
(299, 9, 14, 22, 'Solicitud de cierre definitivo', 'El gestor resolvió Caso 14 · etapa 1 en primer contacto y solicita cerrar definitivamente el ticket sin continuar el flujo. Revise la solución y apruebe o reabra.', 1, '2026-09-21 08:58:36', '2026-09-21 08:59:26'),
(300, 28, 14, 22, 'Cierre definitivo aprobado', 'El solicitante aprobó el cierre definitivo del ticket #14 por resolución en primer contacto.', 1, '2026-09-21 08:59:32', '2026-09-21 12:38:54'),
(301, 28, 13, 21, 'Cierre definitivo aprobado', 'El solicitante aprobó el cierre definitivo del ticket #13 por resolución en primer contacto.', 1, '2026-09-21 08:59:44', '2026-09-21 12:38:00'),
(302, 28, 12, 20, 'Cierre definitivo aprobado', 'El solicitante aprobó el cierre definitivo del ticket #12 por resolución en primer contacto.', 1, '2026-09-21 08:59:59', '2026-09-21 12:38:16'),
(303, 28, 5, 9, 'Caso reasignado por el administrador', 'Ahora tiene asignada la derivación del caso 5.', 1, '2026-09-21 09:03:28', '2026-09-21 09:12:55'),
(304, 28, 5, 8, 'Caso reasignado por el administrador', 'Ahora tiene asignada la etapa del caso 5.', 1, '2026-09-21 09:03:37', '2026-09-21 09:12:55'),
(305, 28, 6, 10, 'Caso reasignado por el administrador', 'Ahora tiene asignada la etapa del caso 6.', 1, '2026-09-21 09:09:24', '2026-09-21 09:12:39'),
(306, 31, 6, 10, 'Atención lista para revisión', 'El gestor asignado marcó Caso 6 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 0, '2026-09-21 09:12:49', NULL),
(307, 32, 5, 9, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:13:06', '2026-09-22 16:45:30'),
(308, 28, 16, 39, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.14 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:13:34', '2026-09-21 09:13:35'),
(309, 28, 10, 72, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.7 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:13:55', '2026-09-21 09:13:55'),
(310, 28, 16, 38, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.13 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:14:20', '2026-09-21 09:14:21'),
(311, 28, 16, 37, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.12 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:14:58', '2026-09-21 09:14:59'),
(312, 28, 16, 36, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.11 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:15:37', '2026-09-21 09:15:37'),
(313, 28, 16, 35, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.10 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:16:16', '2026-09-21 09:16:16'),
(314, 28, 10, 73, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.8 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:16:31', '2026-09-21 09:16:31'),
(315, 28, 16, 34, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.9 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:17:48', '2026-09-21 09:17:48'),
(316, 28, 16, 33, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.8 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:18:17', '2026-09-21 09:18:17'),
(317, 28, 16, 32, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.7 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:19:30', '2026-09-21 09:20:35'),
(318, 28, 16, 31, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.6 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:19:43', '2026-09-21 09:20:35'),
(319, 32, 16, 31, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Ticket 1.1.6. Gestión: 5/5; tiempo: 5/5.', 0, '2026-09-21 09:20:41', NULL),
(320, 32, 16, 32, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Ticket 1.1.7. Gestión: 4/5; tiempo: 5/5.', 0, '2026-09-21 09:20:50', NULL),
(321, 28, 16, 25, 'Caso padre reanudado', 'Todos los hijos del ticket #16 finalizaron. Su SLA volvió a correr.', 1, '2026-09-21 09:20:50', '2026-09-21 09:20:51'),
(322, 28, 16, 25, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:21:13', '2026-09-21 09:21:13'),
(323, 28, 16, 24, 'Caso padre reanudado', 'Todos los hijos del ticket #16 finalizaron. Su SLA volvió a correr.', 1, '2026-09-21 09:21:20', '2026-09-21 09:21:20'),
(324, 9, 16, 24, 'Atención lista para revisión', 'El gestor asignado marcó Caso 16 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:21:34', '2026-09-21 09:21:51'),
(325, 28, 16, 24, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 16 · etapa 1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-09-21 09:22:07', '2026-09-21 12:37:54'),
(326, 9, 16, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #16 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-09-21 09:22:07', '2026-09-21 09:22:09'),
(327, 28, 10, 74, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.9 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:22:51', '2026-09-21 09:22:52'),
(328, 28, 10, 59, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.14 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:23:41', '2026-09-21 09:23:42'),
(329, 28, 10, 75, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.10 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:24:01', '2026-09-21 09:24:02'),
(330, 28, 10, 58, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.13 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:25:03', '2026-09-21 09:25:04'),
(331, 28, 10, 77, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.12 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:27:07', '2026-09-21 09:27:08'),
(332, 28, 10, 78, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.13 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:27:28', '2026-09-21 09:27:29'),
(333, 28, 10, 76, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.11 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:27:49', '2026-09-21 09:27:49'),
(334, 28, 10, 79, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.14 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:28:06', '2026-09-21 09:28:06'),
(335, 28, 10, 80, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.15 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:28:24', '2026-09-21 09:28:24'),
(336, 28, 10, 81, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.16 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:28:46', '2026-09-21 09:28:47'),
(337, 28, 10, 57, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.12 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:29:30', '2026-09-21 09:29:30'),
(338, 28, 10, 56, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.11 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:29:48', '2026-09-21 09:29:48'),
(339, 28, 10, 82, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.17 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:30:11', '2026-09-21 09:30:12'),
(340, 28, 10, 83, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.18 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:30:33', '2026-09-21 09:30:33'),
(341, 28, 10, 84, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.19 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:30:53', '2026-09-21 09:30:53'),
(342, 28, 10, 55, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.10 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:31:27', '2026-09-21 09:31:28'),
(343, 28, 10, 86, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:31:48', '2026-09-21 09:31:49'),
(344, 28, 10, 97, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.12 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:32:06', '2026-09-21 09:32:07'),
(345, 28, 10, 87, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.2 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:32:25', '2026-09-21 09:32:26'),
(346, 28, 10, 88, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.3 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:32:44', '2026-09-21 09:32:44'),
(347, 28, 10, 96, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.11 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:33:13', '2026-09-21 09:33:13'),
(348, 28, 10, 95, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.10 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:33:31', '2026-09-21 09:33:32'),
(349, 28, 10, 94, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.9 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:33:52', '2026-09-21 09:33:52'),
(350, 28, 10, 89, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.4 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:34:10', '2026-09-21 09:34:10'),
(351, 28, 10, 54, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.9 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:37:15', '2026-09-21 09:37:15'),
(352, 28, 10, 93, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.8 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:37:37', '2026-09-21 09:37:37'),
(353, 28, 10, 90, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.5 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:37:59', '2026-09-21 09:38:00'),
(354, 28, 10, 91, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.6 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:38:19', '2026-09-21 09:38:19'),
(355, 28, 10, 92, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20.7 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:39:04', '2026-09-21 09:39:04'),
(356, 28, 10, 85, 'Caso padre reanudado', 'Todos los hijos del ticket #10 finalizaron. Su SLA volvió a correr.', 1, '2026-09-21 09:39:11', '2026-09-21 09:39:12'),
(357, 28, 10, 49, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.4 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:39:31', '2026-09-21 09:39:32'),
(358, 28, 10, 50, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.5 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:40:12', '2026-09-21 09:40:12'),
(359, 28, 10, 85, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1.20 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:40:29', '2026-09-21 09:40:30'),
(360, 28, 10, 46, 'Caso padre reanudado', 'Todos los hijos del ticket #10 finalizaron. Su SLA volvió a correr.', 1, '2026-09-21 09:40:34', '2026-09-21 09:40:34'),
(361, 28, 10, 52, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.7 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:40:51', '2026-09-21 09:40:51'),
(362, 28, 10, 53, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.8 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:41:16', '2026-09-21 09:41:16'),
(363, 28, 10, 51, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.6 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:41:35', '2026-09-21 09:41:36'),
(364, 28, 10, 46, 'Atención lista para revisión', 'El gestor asignado marcó Ticket 1.1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:41:57', '2026-09-21 09:41:58'),
(365, 28, 10, 18, 'Caso padre reanudado', 'Todos los hijos del ticket #10 finalizaron. Su SLA volvió a correr.', 1, '2026-09-21 09:42:03', '2026-09-21 09:42:04'),
(366, 9, 10, 18, 'Atención lista para revisión', 'El gestor asignado marcó Caso 10 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 1, '2026-09-21 09:42:23', '2026-09-21 09:42:44'),
(367, 28, 10, 18, 'Atención aprobada y cerrada', 'El creador aprobó y calificó Caso 10 · etapa 1. Gestión: 5/5; tiempo: 5/5.', 1, '2026-09-21 09:42:56', '2026-09-21 12:37:49'),
(368, 9, 10, NULL, 'Ticket cerrado definitivamente', 'Todos los casos del ticket #10 fueron aprobados y calificados. El ticket quedó cerrado.', 1, '2026-09-21 09:42:56', '2026-09-21 09:42:57'),
(369, 32, 5, 8, 'Caso reasignado por el administrador', 'Ahora tiene asignada la etapa del caso 5.', 1, '2026-09-22 16:45:02', '2026-09-22 16:45:30'),
(370, 32, 5, 9, 'Caso reasignado por el administrador', 'Ahora tiene asignada la derivación del caso 5.', 1, '2026-09-22 16:45:15', '2026-09-22 16:45:30'),
(371, 32, 5, 8, 'Caso padre reanudado', 'Todos los hijos del ticket #5 finalizaron. Su SLA volvió a correr.', 1, '2026-09-22 16:45:37', '2026-09-22 16:45:37'),
(372, 31, 5, 8, 'Atención lista para revisión', 'El gestor asignado marcó Caso 5 · etapa 1 como listo. Revise la solución y cierre o reabra la atención.', 0, '2026-09-22 16:45:48', NULL);

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
-- Estructura de tabla para la tabla `papelera`
--

CREATE TABLE `papelera` (
  `id_papelera` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `id_registro` bigint(20) UNSIGNED NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `datos` longtext NOT NULL,
  `eliminado_por` int(11) DEFAULT NULL,
  `eliminado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles_gestor`
--

CREATE TABLE `perfiles_gestor` (
  `id_perfil_gestor` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `pin_hash` varchar(255) NOT NULL,
  `es_propietario` tinyint(1) NOT NULL DEFAULT 0,
  `estado` enum('activo','inhabilitado') NOT NULL DEFAULT 'activo',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `perfiles_gestor`
--

INSERT INTO `perfiles_gestor` (`id_perfil_gestor`, `id_usuario`, `nombre`, `pin_hash`, `es_propietario`, `estado`, `creado_en`, `actualizado_en`) VALUES
(1, 2, 'Jhonny', '$2y$10$QV.RQVeWy/ihNe4Bld1KWewzKejM25shbyEHE7hC2ltMxeA3wFuoO', 1, 'activo', '2026-09-04 12:52:23', '2026-09-04 12:52:23');

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
(59, 1, 'Calidad y Planeación estratégica · Acompañamiento en diligenciamiento de matriz de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-09-07 12:59:19'),
(60, 1, 'Calidad y Planeación estratégica · Acompañamiento en gestión documental (creación o control de cambios y/o procedimientos)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-09-04 13:44:20'),
(61, 1, 'Calidad y Planeación estratégica · Acompañamiento para plan de trabajo por iniciativas de la planeación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(62, 1, 'Calidad y Planeación estratégica · Auditoría a procesos en gestión SIG', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(63, 1, 'Calidad y Planeación estratégica · Capacitación en gestión de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(64, 1, 'Calidad y Planeación estratégica · Capacitación en gestión documental', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(65, 1, 'Calidad y Planeación estratégica · Codificación y publicación de documentos en WebCom', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(66, 1, 'Calidad y Planeación estratégica · Gestión de no conformidades de auditoría externa e interna', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(67, 1, 'Calidad y Planeación estratégica · Seguimiento a controles establecidos de riesgos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(68, 1, 'Calidad y Planeación estratégica · Solicitud de información del consolidado de planeación estratégica', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-08-27 07:56:35', '2026-08-27 12:56:35'),
(69, 2, 'Talento Humano · prueba talento humano', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-01 09:18:50', '2026-09-01 14:18:50'),
(70, 1, 'Cadena de Abastecimiento · Apertura de bodega los Domingos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(71, 1, 'Cadena de Abastecimiento · Movimiento de técnico', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(72, 1, 'Cadena de Abastecimiento · Pedido de Material Mensual', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(73, 1, 'Cadena de Abastecimiento · Pedido de Material por Implementación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(74, 1, 'Cadena de Abastecimiento · Pedido de Material Prioritario', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(75, 1, 'Cadena de Abastecimiento · Cambio Mensual de Herramientas y Dotación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:40:56', '2026-09-03 13:40:56'),
(76, 1, 'Cadena de Abastecimiento · Pedido de Material para arreglos Locativos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 08:40:56', '2026-09-03 13:40:56'),
(77, 1, 'Cadena de Abastecimiento · Asignación Celular Corporativo-Administrativo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(78, 1, 'Cadena de Abastecimiento · Cambio de vehículo por configuración de la móvil o zona de trabajo de 1 a 5', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(79, 1, 'Cadena de Abastecimiento · Cambio de vehículo por configuración de la móvil o zona de trabajo de 6 a 20', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(80, 1, 'Cadena de Abastecimiento · Cambios de Equipos EPPS y Dotación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(81, 1, 'Cadena de Abastecimiento · Cambios de Herramienta', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(82, 1, 'Cadena de Abastecimiento · Correspondencia y Paquetes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(83, 1, 'Cadena de Abastecimiento · Herramientas por Implementación (Móviles Nuevas)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(84, 1, 'Cadena de Abastecimiento · Inspección vehículo por Implementación a gestores y subcontratistas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(85, 1, 'Cadena de Abastecimiento · Líneas Nuevas (Móviles Nuevas)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(86, 1, 'Cadena de Abastecimiento · Mantenimiento Maquinaria equipos de medición', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(87, 1, 'Cadena de Abastecimiento · Préstamo de Herramientas, Y Epps Soporte Administrativo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(88, 1, 'Cadena de Abastecimiento · Reposición por Hurto y Perdida', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(89, 1, 'Cadena de Abastecimiento · Requerimiento de Dotación y EPPS', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(90, 1, 'Cadena de Abastecimiento · Solicitud prioritaria herramientas operativas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(91, 1, 'Cadena de Abastecimiento · Stock Consumibles, Dotación, Botas y EPPS', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(92, 1, 'Cadena de Abastecimiento · Vehículo por Implementación de 1 a 10', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(93, 1, 'Cadena de Abastecimiento · Vehículo por Implementación de 10 en adelante.', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(94, 1, 'Cadena de Abastecimiento · Cambio de motocicleta', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(95, 1, 'Cadena de Abastecimiento · Desmonte de vehículos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(96, 1, 'Cadena de Abastecimiento · Logos de imagen corporativa de clientes para vehículos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(97, 1, 'Cadena de Abastecimiento · Prueba de conducción para vehículo 4 ruedas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(98, 1, 'Cadena de Abastecimiento · Reporte de choques simples y graves', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(99, 1, 'Cadena de Abastecimiento · Reposición de botiquín o elementos vencidos o faltantes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(100, 1, 'Cadena de Abastecimiento · Reposición kit de herramientas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(101, 1, 'Cadena de Abastecimiento · Requerimiento Chip de combustible Bogotá', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(102, 1, 'Cadena de Abastecimiento · Requerimiento Chip de combustible otras ciudades', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(103, 1, 'Cadena de Abastecimiento · Requerimiento chip de peajes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(104, 1, 'Cadena de Abastecimiento · Revisión o inspección de motos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(105, 1, 'Cadena de Abastecimiento · Traslado de vehículos (Niñera-Grúa)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(106, 1, 'Cadena de Abastecimiento · Traslado, fletes y acarreos Contemplados en el contrato con el cliente', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(107, 1, 'Cadena de Abastecimiento · Usuario GPS', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(108, 1, 'Cadena de Abastecimiento · Validación y aprobación para cambio de cargo para conductor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(109, 1, 'Contabilidad · Aumento de Caja Menor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(110, 1, 'Contabilidad · Capacitación en Ecuación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(111, 1, 'Contabilidad · Cierre de Caja Menor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(112, 1, 'Contabilidad · Corrección y Aclaración de Ecuación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(113, 1, 'Contabilidad · Disminución de Caja Menor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(114, 1, 'Contabilidad · Rembolso de Caja menor', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(115, 1, 'Contabilidad · Cambio de Custodio', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(116, 1, 'Contabilidad · Impuestos Pagados', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(117, 1, 'Contabilidad · RUT Actualizado', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(118, 1, 'Jurídica · Creación De Documentos y Biblioteca de Minutas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(119, 1, 'Jurídica · Demandas Tutelas y PQR', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(120, 1, 'Jurídica · Firma de documentos aprobados', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(121, 1, 'Jurídica · Gestión Corporativa y de Familia', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(122, 1, 'Jurídica · Procesos Disciplinarios TH', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(123, 1, 'Jurídica · Revisión y aprobación casos SAGRILAFT con debida diligencia', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(124, 1, 'Jurídica · Revisión y aprobación de documentos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(125, 1, 'Jurídica · Revisión y autorización de reingresos o contratación de casos especiales', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(126, 1, 'Jurídica · Solicitud de casos a la Temporal', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(127, 1, 'Jurídica · Solicitud de información contratos comerciales', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(128, 1, 'Jurídica · Solicitudes Retiro De Personal', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(129, 1, 'Talento Humano · Cambio de cargo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(130, 1, 'Talento Humano · Cambio de código de unidad (CU1 y CU3)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(131, 1, 'Talento Humano · Cambio de Proyecto', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(132, 1, 'Talento Humano · Retiro de Cesantias', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(133, 1, 'Talento Humano · Solicitud de personal (cargos administrativos reemplazos y cargos nuevos)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(134, 1, 'Talento Humano · Actualización de catálogo o Portafolio', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(135, 1, 'Talento Humano · Catálogo de servicios plantilla', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(136, 1, 'Talento Humano · Creación Banners', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(137, 1, 'Talento Humano · Creación de Catalogo o Portafolio', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(138, 1, 'Talento Humano · Creación de Videos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(139, 1, 'Talento Humano · Creación Infografías', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(140, 1, 'Talento Humano · Creación o modificación de Boletín', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(141, 1, 'Talento Humano · Creación Post', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(142, 1, 'Talento Humano · Creación Volantes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(143, 1, 'Talento Humano · Toma de fotografias para Catalogo o Portafolio', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(144, 1, 'Talento Humano · Actualización de Manuales o procedimientos técnicos del cliente.', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:17:27', '2026-09-03 16:17:27'),
(145, 1, 'Talento Humano · Solicitud de PMC (plan de mejoramiento continuo)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:17:27', '2026-09-03 16:17:27'),
(146, 1, 'Talento Humano · Acompañamientos a terreno', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(147, 1, 'Talento Humano · Capacitación de aplicativos de clientes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(148, 1, 'Talento Humano · Capacitación de habilidades blandas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(149, 1, 'Talento Humano · Capacitacion de habilidades ofimaticas', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(150, 1, 'Talento Humano · Competencias complementarias', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(151, 1, 'Talento Humano · Creacion de manuales', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(152, 1, 'Talento Humano · Diagnostico de equipos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(153, 1, 'Talento Humano · Mantenimiento de equipos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(154, 1, 'Talento Humano · Procesos de certificación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(155, 1, 'Talento Humano · Pruebas de conocimiento', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(156, 1, 'Talento Humano · Seguimiento de productividad', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(157, 1, 'Talento Humano · Perfil para cargo existente', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(158, 1, 'Talento Humano · Perfil para cargo nuevo Estratégico', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(159, 1, 'Talento Humano · Perfil para cargos nuevos Tácticos y Operativos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(160, 1, 'Tesoreria · Solicitud de Anticipos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 11:59:58', '2026-09-03 16:59:58'),
(161, 1, 'Tesoreria · Creación cajas menores', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(162, 1, 'Tesoreria · Creación llave Maestra People Pass', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(163, 1, 'Tesoreria · Recarga Llave Maestra', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(164, 1, 'Tesoreria · Solicitud certificados de cámara de comercio y Certificaciones Bancarias', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(165, 1, 'Tesoreria · Solicitud estado de cuenta por pagar', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(166, 1, 'Tesoreria · Solicitud estados cartera', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(167, 1, 'Tesoreria · Solicitud soportes de pago', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(168, 1, 'TICs · Adecuación de Red', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(169, 1, 'TICs · Asistencia de Impresora', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(170, 1, 'TICs · Copia de seguridad', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(171, 1, 'TICs · Creación de usuario Milldesk', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(172, 1, 'TICs · Creación de usuario para ingreso a plataforma de Claro', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(173, 1, 'TICs · Falla  de servicio de internet', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(174, 1, 'TICs · Falla de Equipos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(175, 1, 'TICs · Falla de Impresora', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(176, 1, 'TICs · Gestión de accesos SICI', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(177, 1, 'TICs · Gestión de Desarrollo y Evolución de Aplicaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(178, 1, 'TICs · Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(179, 1, 'TICs · Ingreso de equipos al proyecto BYOD', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(180, 1, 'TICs · Instalación de software', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(181, 1, 'TICs · Instalación de VPN CONECTAR', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(182, 1, 'TICs · Mantenimiento de Equipos de Cómputo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(183, 1, 'TICs · Préstamo de equipos de cómputo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(184, 1, 'TICs · Reporte de incidente de seguridad de la información', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(185, 1, 'TICs · Solicitud de acceso al repositorio de Cloud (nube)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(186, 1, 'TICs · Solicitud de Creación o modificaciones a Desarrollos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(187, 1, 'TICs · Solicitud de periféricos', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(188, 1, 'TICs · Solicitud de servicio de internet', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(189, 1, 'TICs · Solicitud Equipos de Cómputo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(190, 1, 'Travel · Travel ATP', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:22:24', '2026-09-03 20:22:24'),
(191, 1, 'Travel · Travel Azteca', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:22:24', '2026-09-03 20:22:24'),
(192, 1, 'Travel · Travel Claro R3', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:22:24', '2026-09-03 20:22:24'),
(193, 1, 'Travel · Travel Claro SMU', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:22:24', '2026-09-03 20:22:24'),
(194, 1, 'Travel · Travel ETB', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:40:10', '2026-09-03 20:40:10'),
(195, 1, 'Travel · Travel FLM Andina People Pass', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:40:10', '2026-09-03 20:40:10'),
(196, 1, 'Travel · Travel FLM Centro People Pass', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:40:10', '2026-09-03 20:40:10'),
(197, 1, 'Travel · Travel FLM Sur People Pass', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:40:10', '2026-09-03 20:40:10'),
(198, 1, 'Travel · Travel Gerencia', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-03 15:40:10', '2026-09-03 20:40:10'),
(199, 1, 'Controller · Actualización de Software', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(200, 1, 'Controller · Crear nuevo modelo Económico', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(201, 1, 'Controller · Crear PDA o cronograma de implementación, operación o desmonte', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(202, 1, 'Controller · Desarrollo de software', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(203, 1, 'Controller · Diligenciar o presentar evaluaciones, documentos y plataformas de los clientes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(204, 1, 'Controller · Levantamiento de requisitos para la elaboración de informes (Excel o Power BI)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(205, 1, 'Controller · Levantamiento de requisitos para la elaboración de software', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(206, 1, 'Controller · Realizar licitación nuevo cliente o implementación', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(207, 1, 'Controller · Realizar Plan de Calidad de un nuevo proyecto', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(208, 1, 'Controller · Solicitar acompañamiento o análisis para requerimiento interno', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(209, 1, 'Controller · Solicitar modelo operativo', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(210, 1, 'Controller · Solicitar un control de cambios al modelo económico', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(211, 1, 'Controller · Solicitud de mantenimiento Power BI', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(212, 1, 'Control Interno · Acompañamiento para el cambio de custodio de cajas menores, llaves maestras y/o cajas operativas.', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(213, 1, 'Control Interno · Acompañamiento para el cierre de cajas menores o llaves maestras', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(214, 1, 'Control Interno · Ajustes de producción de los diferentes clientes', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(215, 1, 'Control Interno · Investigaciones', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(216, 1, 'Control Interno · Poligrafías', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(217, 1, 'Control Interno · Reporte producción y facturación aliados', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(218, 1, 'Control Interno · Solicitud de bajas de equipos,herramientas, material, dotación, muebles y enseres.', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(219, 1, 'Control Interno · Solicitud de inventario por el cambio de responsable en bodegas y/o almacén', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(220, 1, 'Controller · Capacitación de códigos de unidad InfoHub', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(221, 1, 'Controller · Creación o activación de codigos de unidad', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(222, 1, 'Controller · Desarrollo de informes (Excel o Power BI)', 'Flujo sincronizado automáticamente con el servicio.', 'activo', 1, 1, '2026-09-07 14:01:09', '2026-09-07 19:01:09');

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
(2, 1, 5, 2, 4, 1, 'Ingreso', NULL, 0, 'activo', '2026-08-03 09:51:45', '2026-08-03 21:51:44'),
(3, 2, 6, 2, 2, 1, 'diligenciado', NULL, 0, 'activo', '2026-08-03 11:53:12', '2026-08-03 21:51:44'),
(4, 2, 7, 2, 4, 2, 'Asignacion de computador', NULL, 0, 'activo', '2026-08-03 11:53:39', '2026-08-03 21:51:44'),
(5, 3, 3, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(6, 4, 2, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(7, 5, 1, 2, 2, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(9, 7, 7, 2, 4, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:30:34', '2026-08-03 21:51:44'),
(10, 3, 7, 2, 4, 2, 'Asignacion de computador', 'asignar computador', 0, 'activo', '2026-08-03 12:32:51', '2026-08-03 21:51:44'),
(12, 8, 8, 2, 3, 1, NULL, NULL, 0, 'activo', '2026-08-03 12:37:50', '2026-08-03 21:51:44'),
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
(80, 69, 13, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-01 09:18:50', '2026-09-01 14:18:50'),
(81, 70, 78, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(82, 71, 77, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(83, 72, 75, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(84, 73, 76, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(85, 74, 72, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:33:31', '2026-09-03 13:33:31'),
(86, 75, 80, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:40:56', '2026-09-03 13:40:56'),
(87, 76, 79, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 08:40:56', '2026-09-03 13:40:56'),
(88, 77, 82, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(89, 78, 96, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(90, 79, 97, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(91, 80, 85, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(92, 81, 92, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(93, 82, 91, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(94, 83, 84, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(95, 84, 95, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(96, 85, 87, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(97, 86, 89, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(98, 87, 81, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(99, 88, 88, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(100, 89, 83, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(101, 90, 90, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(102, 91, 86, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(103, 92, 93, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(104, 93, 94, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:10:59', '2026-09-03 14:10:59'),
(105, 94, 112, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(106, 95, 109, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(107, 96, 108, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(108, 97, 101, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(109, 98, 100, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(110, 99, 103, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(111, 100, 104, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(112, 101, 98, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(113, 102, 111, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(114, 103, 99, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(115, 104, 102, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(116, 105, 110, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(117, 106, 106, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(118, 107, 105, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(119, 108, 107, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:35:14', '2026-09-03 14:35:14'),
(120, 109, 116, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(121, 110, 113, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(122, 111, 118, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(123, 112, 114, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(124, 113, 117, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(125, 114, 115, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:49:41', '2026-09-03 14:49:41'),
(126, 115, 119, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(127, 116, 121, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(128, 117, 120, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 09:57:10', '2026-09-03 14:57:10'),
(129, 118, 122, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(130, 119, 123, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(131, 120, 131, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(132, 121, 124, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(133, 122, 125, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(134, 123, 129, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(135, 124, 128, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(136, 125, 130, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(137, 126, 126, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(138, 127, 132, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(139, 128, 127, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:11:27', '2026-09-03 15:11:27'),
(140, 129, 134, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(141, 130, 136, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(142, 131, 135, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(143, 132, 137, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(144, 133, 133, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 10:54:57', '2026-09-03 15:54:57'),
(145, 134, 147, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(146, 135, 139, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(147, 136, 143, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(148, 137, 146, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(149, 138, 141, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(150, 139, 142, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(151, 140, 140, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(152, 141, 138, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(153, 142, 144, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(154, 143, 145, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:13:04', '2026-09-03 16:13:04'),
(155, 144, 149, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:17:27', '2026-09-03 16:17:27'),
(156, 145, 148, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:17:27', '2026-09-03 16:17:27'),
(157, 146, 158, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(158, 147, 157, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(159, 148, 155, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(160, 149, 156, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(161, 150, 159, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(162, 151, 152, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(163, 152, 153, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(164, 153, 154, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(165, 154, 150, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(166, 155, 160, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(167, 156, 151, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:33:32', '2026-09-03 16:33:32'),
(168, 157, 161, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(169, 158, 163, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(170, 159, 162, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:57:01', '2026-09-03 16:57:01'),
(171, 160, 164, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 11:59:58', '2026-09-03 16:59:58'),
(172, 161, 165, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(173, 162, 169, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(174, 163, 170, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(175, 164, 171, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(176, 165, 167, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(177, 166, 168, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(178, 167, 166, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 14:10:20', '2026-09-03 19:10:20'),
(179, 168, 178, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(180, 169, 177, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(181, 170, 184, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(182, 171, 182, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(183, 172, 187, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(184, 173, 186, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(185, 174, 183, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(186, 175, 179, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(187, 176, 172, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(188, 177, 193, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(189, 178, 174, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(190, 179, 190, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(191, 180, 175, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(192, 181, 176, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(193, 182, 189, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(194, 183, 188, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(195, 184, 191, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(196, 185, 192, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(197, 186, 173, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(198, 187, 181, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(199, 188, 185, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(200, 189, 180, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-03 15:11:17', '2026-09-03 20:11:17'),
(210, 199, 215, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(211, 200, 203, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(212, 201, 209, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(213, 202, 214, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(214, 203, 211, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(215, 204, 217, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(216, 205, 213, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(217, 206, 210, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(218, 207, 206, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(219, 208, 212, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(220, 209, 208, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(221, 210, 207, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(222, 211, 216, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 12:03:46', '2026-09-07 17:03:46'),
(223, 212, 223, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(224, 213, 222, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(225, 214, 228, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(226, 215, 227, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(227, 216, 226, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(228, 217, 229, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(229, 218, 225, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(230, 219, 224, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(231, 220, 221, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(232, 221, 220, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09'),
(233, 222, 218, NULL, NULL, 1, NULL, NULL, 0, 'activo', '2026-09-07 14:01:09', '2026-09-07 19:01:09');

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
(11, 2, '217b1788c4fefb75feccca859a869aa5f71f12a8cff53ad50e63f77f87ff9677', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-08-31 11:21:20', '2026-09-02 12:13:19', '2026-08-31 11:11:20'),
(12, 2, '4889f18d2337cf39d98fdf2ab8a9f8adf95add3c1f5f19da142819a91c27810a', 0, 'b636665fc3f93948ca61e37858464187af9f63edc268e3ea264248994b2cae84', '2026-09-02 12:23:19', NULL, '2026-09-02 12:13:19');

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
('0b7233d45c98d40b9aa87652f4469b06cb73308d030565dcb5c1c327524c8b80', 1, '2026-09-08 07:56:20', NULL),
('0d2133a48d57cc9c2974ae47590b7dc0b47fc69f555e050b4b55df01e7b88d7c', 1, '2026-08-21 11:19:11', NULL),
('17dec779f9551d0fa950a87b7e8aa6c20c00cc72b721f0314c4e8c22fd0e3f0e', 1, '2026-08-21 12:02:46', NULL),
('289496a0a5ef44375cfd09dea810e2fdfbc10258a07b244766a21d3b2be58973', 1, '2026-08-12 16:20:29', NULL),
('4122d68665b821697cb55b0a8b07a436fd8eb3fb18fca19a38bb151b82137b93', 1, '2026-08-21 12:41:26', NULL),
('49acaa3b87fc32d801fc302c79ea88cfb084e788a9c165eaf4d587b0107617ee', 4, '2026-09-07 08:01:09', NULL),
('68d9df5f422ee66e0e8c398f63e82426b6e46a96480c38179e2db126d63df4b0', 1, '2026-09-21 20:20:41', NULL),
('75ef026f21a529137fd26b3aa6d733f97de6c225822e6d9eff70b275c06e2f93', 1, '2026-09-18 08:40:12', NULL),
('7fec2e1663715cc67851c00a2f0e2146d17d41523d211a40bdc2264d956d7e4c', 1, '2026-08-31 09:11:22', NULL),
('877e81f31325e9014fbbfe60c1ad7722e03bab38c47149640f70a50e305e658c', 1, '2026-08-12 16:06:16', NULL),
('ac7bd31438350641e0a1b66a8ae770ef730cda515c2b6c94337635619a2f6b27', 1, '2026-09-18 08:40:10', NULL),
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
(2, 1, 2, NULL, 4, 20, 'Estados Financieros', 'Descripción:\r\nSon los estados financieros de la compañía a un corte determinado, semestral o trimestral.\r\n\r\nSolicitud:\r\nDescribir cual será el uso de esta información.  Nota: Controller, Juridica, Adquisiones y Tesoreria.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', 1, 2, 9, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-07-31 09:00:22', '2026-09-03 14:37:48', 'Contabilidad'),
(3, 1, 3, NULL, 14, 21, 'Consultorio Jurídico', 'Descripción:\r\nRegistro de solicitudes relacionadas con la elaboración de conceptos y asesorías jurídicas (no incluye revisión de documentos), solicitadas por cualquier miembro de la compañía.\r\n\r\nSolicitud:\r\nPara garantizar la correcta gestión de su solicitud, le solicitamos describir detalladamente la inquietud y las preguntas clave que requiere sean respondidas.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-07-31 09:00:22', '2026-09-03 14:57:58', 'Jurídica'),
(5, 1, 5, NULL, 18, 22, 'Solicitud de personal (cargos operativos) Implementación', 'Descripción:\r\nPermite gestionar la solicitud de personal operativo requerido para nuevos proyectos o procesos de implementación, asegurando la asignación oportuna de recursos humanos según las necesidades operativas\r\n\r\nSolicitud:\r\nDiligenciar los campos extras, adjuntar el formato RQ,  aprobación del gerente de la Razon Social, Gerente UEN, Gerente Trasnversal y control de cambios por parte de la PMO. Observación: Indicar la negociacion que se ha realizado con el cliente\r\n\r\nSLA 23 días.', 'Requerimiento', 'activo', 1, 2, 9, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-07-31 09:00:22', '2026-09-03 15:42:48', 'Atracción de Talentos'),
(6, 1, 6, NULL, 11, 28, 'Gestión de Usuarios Correo Corporativo', 'Descripción:\r\nCreación o modificación de usuarios de correos electrónicos corporativos. \r\n\r\nSolicitud:\r\nGestión de usuarios correo corporativo. Para modificación no se necesita autorización . Para Creación se debe adjuntar correo de aprobación del Gerente del proyecto.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-07-31 09:00:22', '2026-09-03 19:13:10', 'TICs'),
(7, 1, 6, NULL, 2, 28, 'Gestión de Usuarios Uniclass', 'Descripción:\r\nCreación o modificación de usuarios en la plataforma Uniclass. \r\n\r\nSolicitud:\r\nGestión de usuarios Uniclass solicitado directamente por el jefe del proceso de Talento Humano\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-03 09:41:53', '2026-09-03 19:19:24', 'TICs'),
(8, 1, 5, NULL, 17, 22, 'Solicitud de personal (cargos operativos) Reemplazo', 'Descripción:\r\nPermite gestionar la solicitud de personal operativo para reemplazar colaboradores que han dejado su cargo, garantizando la continuidad operativa y el cumplimiento de los procesos establecidos para la validación y aprobación de la vacante.\r\n\r\nSolicitud:\r\nDiligenciar los campos extras y adjuntar el formato RQ acompañado de la renuncia o documento de terminación para validar la vacante\r\n\r\nSLA 11 Días.', 'Requerimiento', 'activo', 1, 2, 9, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-03 12:37:47', '2026-09-03 15:42:18', 'Atracción de Talentos'),
(9, 1, 6, NULL, 2, 28, 'Gestión de Usuarios INFOR', 'Descripción:\r\nCreación o modificación de usuarios en la plataforma INFOR. \r\n\r\nSolicitud:\r\nGestión de usuarios INFOR tramitado por personal del proceso solicitante.\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-05 14:29:05', '2026-09-03 19:20:39', 'TICs'),
(10, 1, 6, NULL, 2, 28, 'Gestión de Usuarios SICI', 'Descripción:\r\nCreación o modificación de usuarios en la plataforma SICI. \r\n\r\nSolicitud:\r\nGestión de usuarios SICI\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', 1, 2, 9, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-05 14:31:18', '2026-09-03 19:32:02', 'TICs'),
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
(54, 1, 1, NULL, 3, 4, 'Personal de Seguridad Física', 'Descripción:\r\nSolicitud de personal de seguridad física, para la protección de las locaciones de manera fija, acompañamientos a las móviles y servicios adicionales) con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). \r\n\r\nSolicitud:\r\nAdjuntar cotización seleccionada, correo con el aprobado del gerente y presupuesto asignado, Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 20 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:52:27', '2026-09-04 14:02:04', 'Infraestructura'),
(55, 1, 1, NULL, 4, 4, 'Asignación, Cancelación de Usuarios y Contraseñas del Sistema de Monitoreo y Alarma', 'Descripción:\r\nSolicitud de asignación, cancelación de usuarios y contraseñas de sistemas de seguridad electrónica como lo es el sistema de circuito de alarmas para aperturas y cierre de locaciones. \r\n\r\nSolicitud:\r\nAdjuntar correo de aprobación del gerente del proyecto. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 09:53:24', '2026-08-26 20:51:58', 'Infraestructura'),
(56, 1, 1, NULL, 7, 4, 'Cotización de Servicios de Seguridad Electrónica', 'Descripción:\r\nCotización de servicios de seguridad electrónica para las locaciones ejemplo:  monitoreo y alarma, CCTV (circuito cerrado de televisión) o sistema contra incendios. \r\n\r\nSolicitud:\r\n\"Adjuntar la siguiente información:\r\nDiseño de la ubicación de las área de la locación ejemplo almacén logística, puestos de trabajo etc. \r\n\r\nDirigirse a la pestaña Campos extras y llenar la solicitud.\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:54:57', '2026-08-27 17:42:28', 'Infraestructura'),
(57, 1, 1, NULL, 1, 4, 'Cotización Personal de Seguridad Física', 'Descripción:\r\nCotización de personal de seguridad física, para la protección de las locaciones de manera fija, acompañamientos a las móviles y servicios adicionales con el fin de garantizar el funcionamiento de la infraestructura (bodega, local, entre otros). \r\n\r\nSolicitud:\r\nDirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 15 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 09:55:46', '2026-08-26 20:51:37', 'Infraestructura'),
(58, 1, 1, NULL, 13, 4, 'Facturación Arrendamientos Parqueaderos', 'Descripción:\r\n\"Esta solicitud es para la entrega de facturas y/o cuentas de cobro correspondientes a los servicios de parqueadero prestados a nivel nacional, las cuales deben ser tramitadas para su respectivo pago.\r\nPara realizar este proceso, es indispensable adjuntar la distribución de los costos, con el fin de asignarlos correctamente a los proyectos correspondientes en el sistema INFOR. Posteriormente, los documentos serán entregadas al proceso de Contabilidad para su gestión final.\"\r\n\r\nSolicitud:\r\n\"* Adjuntar la siguiente documentación:\r\n* Facturas electrónicas y/o cuentas de cobro en PDF\r\n* Formato de Excel con la distribución por cliente y/o proyecto\"\r\n\r\nSLA 4 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 09:57:16', '2026-08-26 20:51:27', 'Infraestructura'),
(59, 1, 1, NULL, 7, 4, 'Estado de Cuenta de Arrendamiento de Parqueaderos', 'Descripción:\r\n\"Esta solicitud tiene como finalidad consultar el estado de cuenta del arrendamiento de parqueaderos, específicamente los pagos pendientes a proveedores.\r\nPara gestionar correctamente la solicitud, es indispensable adjuntar la siguiente información:\r\n\r\nDatos del proveedor (nombre, NIT y datos de contacto).\r\n\r\nMeses correspondientes a los pagos pendientes. Por favor describa su solicitud:\"\r\n\r\nSolución:\r\n\"Facturas electrónicas y/o cuentas de cobro en PDF\r\nFormato de Excel con datos del proveedor (nombre, NIT y datos de contacto), meses correspondientes a los pagos pendientes\"\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-08-26 09:59:19', '2026-08-26 20:51:16', 'Infraestructura'),
(60, 1, 1, NULL, 3, 4, 'Documentos soporte para Reclamación de Siniestro', 'Descripción:\r\n\"Solicitud para continuar con el reporte del siniestro adjuntando la documentación.\"\r\n\r\nSolicitud:\r\n\"Adjuntar\r\n  * Cotización  de los elementos de iguales o similares caracteristicas\r\n * Certificacion expedida por el contador\r\n* Copia de la Tarjeta profesional del contador \r\n* Documento soporte que soporte la propiedad\r\n\r\nNota: Dirigirse a la pestaña Campos extras y llenar la solicitud.\"\r\n\r\nSLA 20 días', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-08-26 10:00:37', '2026-09-04 14:01:54', 'Infraestructura'),
(61, 1, 11, NULL, 4, 14, 'Capacitación en gestión documental', 'Descripción:\r\nBrindar formación al personal en los lineamientos, estructura y control de la documentación del Sistema Integrado de Gestión.\r\n\r\nSolicitud:\r\nDiligencie los campos extra e indique la cantidad de personas a capacitar y las fechas propuestas.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', 1, 2, 9, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-08-26 12:40:20', '2026-08-26 21:14:19', 'Calidad'),
(62, 1, 11, NULL, 4, 14, 'Acompañamiento en gestión documental (creación o control de cambios y/o procedimientos)', 'Descripción:\r\nAcompañamiento en la creación, actualización o modificación de documentos del SIG garantizando su conformidad con los lineamientos establecidos.\r\n\r\nSolicitud:\r\nDiligencie los campos extra e indique tipo de documento y necesidad específica.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:41:14', '2026-08-26 21:14:07', 'Calidad'),
(63, 1, 11, NULL, 10, 14, 'Codificación y publicación de documentos en WebCom', 'Descripción:\r\nAsignación de código oficial y publicación controlada de documentos aprobados en la plataforma WebCom.\r\n\r\nSolicitud:\r\nDiligencie los campos extra, incluya el documento aprobado en el servicio 11.1.3 y Adjunte el formato anexo diligenciado.\r\n\r\nSLA 8 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:42:11', '2026-08-26 21:14:13', 'Calidad'),
(64, 1, 11, NULL, 4, 14, 'Capacitación en gestión de riesgos', 'Descripción:\r\nFormación sobre metodología institucional de identificación, valoración y tratamiento de riesgos.\r\n\r\nSolicitud:\r\nDiligencie los campos extra indicando tema, grupo objetivo y fecha propuesta.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:43:13', '2026-08-26 21:14:27', 'Calidad'),
(65, 1, 11, NULL, 4, 14, 'Acompañamiento en diligenciamiento de matriz de riesgos', 'Descripción:\r\nAsesoría para identificar riesgos, valorarlos y definir planes de tratamiento de acuerdo con la metodología del SIG.\r\n\r\nSolicitud:\r\nDiligencie los campos extra y adjunte la matriz o formato correspondiente.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:44:11', '2026-08-26 21:14:42', 'Calidad'),
(66, 1, 11, NULL, 4, 14, 'Seguimiento a controles establecidos de riesgos', 'Descripción:\r\nVerificación del cumplimiento y eficacia de los controles definidos en las matrices de riesgos de cada proceso.\r\n\r\nSolicitud:\r\nDiligencie los campos extra indicando controles a revisar y periodo de seguimiento.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', 1, 2, 9, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:45:26', '2026-08-26 21:14:33', 'Calidad'),
(67, 1, 11, NULL, 7, 14, 'Auditoría a procesos en gestión SIG', 'Descripción:\r\nEjecución de auditorías internas del Sistema Integrado de Gestión con base en la programación o solicitud especial.\r\n\r\nSolicitud:\r\nDiligencie los campos extra con el proceso y motivo de auditoría.\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-08-26 12:46:20', '2026-08-26 21:13:59', 'Calidad'),
(68, 1, 11, NULL, 4, 14, 'Gestión de no conformidades de auditoría externa e interna', 'Descripción:\r\nAcompañamiento en la definición y seguimiento de acciones correctivas derivadas de auditorías internas o externas.\r\n\r\nSolicitud:\r\nDiligencie los campos extra y adjunte la no conformidad o hallazgo.\r\n\r\nSLA 5 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 12:47:12', '2026-08-26 21:13:51', 'Calidad'),
(70, 1, 11, NULL, 11, 15, 'Solicitud de información del consolidado de planeación estratégica', 'Descripción:\r\nFacilitar el acceso a la información consolidada del seguimiento a objetivos, indicadores, proyectos o iniciativas definidas en la planeación estratégica institucional.\r\n\r\nSolicitud:\r\nIndique responsable de la solicitud y correo electrónico.\r\n\r\nSLA 2 días', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-08-26 12:50:08', '2026-08-26 21:13:39', 'Planeación Estrategica'),
(71, 1, 11, NULL, 7, 15, 'Acompañamiento para plan de trabajo por iniciativas de la planeación', 'Descripción:\r\nBrindar apoyo en la definición, estructuración y seguimiento de planes de trabajo asociados a las iniciativas de la planeación estratégica, garantizando su alineación con los objetivos institucionales.\r\n\r\nSolicitud:\r\nIndique responsable del pilar de la Planeación Estratégica\r\n\r\nSLA 10 días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-08-26 12:51:49', '2026-08-26 21:13:33', 'Planeación Estrategica'),
(72, 1, 14, NULL, 4, 17, 'Pedido de Material Prioritario', 'Descripción:\r\nSolicitud de materiales esporádicos y o  (no planificados por baja rotación) relacionando código, descripción, cantidad; Para qué cliente y qué carpeta. \r\n\r\nSolicitud: \r\nAdjuntar RQ. Registro fotografico, ficha tecnica y autorización del gerente del proyecto.\r\n\r\nSLA 5 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, NULL, '2026-09-03 08:11:52', '2026-09-03 13:22:07', 'Logistica'),
(75, 1, 14, NULL, 3, 17, 'Pedido de Material Mensual', 'Descripción:\r\nSolicitud de materiales planificados para el mes de ejecución con el análisis del presupuesto asignado. \r\n\r\nSolicitud:\r\nAdjuntar RQ y autorización del gerente del proyecto.\r\n\r\nSLA 20 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 08:26:47', '2026-09-03 13:26:47', 'Logistica'),
(76, 1, 14, NULL, 3, 17, 'Pedido de Material por Implementación', 'Descripción:\r\nSolicitud de materiales planificados para implementaciones por cliente y reportar cantidad de técnicos, código, referencia y cantidad de materiales.\r\n\r\nSolicitud:\r\nAdjuntar Modelo Autorizado por PMO, RQ y autorización gerente de proyecto\r\n\r\nSLA 20 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, NULL, '2026-09-03 08:28:08', '2026-09-03 13:28:08', 'Logistica'),
(77, 1, 14, NULL, 4, 17, 'Movimiento de técnico', 'Descripción:\r\nInforme de movimiento de técnico; de carpeta, de cliente, vacaciones o retiro de la compañía para realizar su conciliación \r\n\r\nSolicitud:\r\nEnviar cedula y nombre del técnico\r\n\r\nSLA 5 días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, NULL, '2026-09-03 08:29:06', '2026-09-03 13:29:06', 'Logistica'),
(78, 1, 14, NULL, 14, 17, 'Apertura de bodega los Domingos', 'Descripción:\r\nApertura de bodega y personal para atender la operación el día domingo, informando capacidades.\r\n\r\nSolicitud:\r\nInformar que bodega, cuantas móviles laboran y cuanto personal logístico es necesario para la operación \r\n\r\nSLA 3 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 08:33:28', '2026-09-03 13:34:16', 'Logistica'),
(79, 1, 14, NULL, 11, 17, 'Pedido de Material para arreglos Locativos', 'Descripción:\r\nSolicitud de materiales para las adecuaciones de las bodegas y áreas administrativas del grupo Conectar\r\n\r\nSolicitud:\r\nInformar la necesidad de referencias relacionando código, descripción, cantidad, proceso (área) y para que se requiere (adjuntar Excel)\r\n\r\nSLA 2 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 08:39:23', '2026-09-03 13:39:23', 'Logistica'),
(80, 1, 14, NULL, 15, 18, 'Cambio Mensual de Herramientas y Dotación', 'Descripción:\r\nCambios solicitados por cada proyecto para su soporte operativo (daños, perdidas)\r\n\r\nSolicitud:\r\nAdjuntar Autorización de la Gerencia del proyecto y formato RQ actualizado.\r\n\r\nSLA 17 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 08:40:49', '2026-09-03 13:45:43', 'Herramientas y Recursos Propios'),
(81, 1, 14, NULL, 11, 18, 'Préstamo de Herramientas, Y Epps Soporte Administrativo', 'Descripción:\r\nAsignación en préstamo de herramientas y epps para soporte de arreglos locativos en las bodegas.\r\n\r\nSolicitud:\r\nSe solicita descripción especifica del elemento, nombre de persona autorizada para retiro. Adjuntar el correo de aprobación del jefe del proceso.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 08:44:21', '2026-09-03 13:45:30', 'Herramientas y Recursos Propios'),
(82, 1, 14, NULL, 4, 18, 'Asignación Celular Corporativo-Administrativo', 'Descripción:\r\nSolicitud de equipos de comunicación para un área especifica en función de sus actividades contratadas.\r\n\r\nSolicitud:\r\nAdjuntar autorización de la gerencia del área y especificaciones del equipos celular en el formato de RQ y Adjuntar el modelo de la PMO\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 08:46:43', '2026-09-03 13:46:43', 'Herramientas y Recursos Propios'),
(83, 1, 14, NULL, 15, 18, 'Requerimiento de Dotación y EPPS', 'Descripción:\r\nSolicitud  inicial de EPPS desde el área de talento humano por ingresos nuevos\r\n\r\nSolicitud:\r\nAdjuntar formato RQ actualizado, relación de tallaje, proyecto y ciudad. Autorización del gerente de proyecto.\r\n\r\nSLA 17 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 08:50:12', '2026-09-03 13:50:12', 'Herramientas y Recursos Propios'),
(84, 1, 14, NULL, 15, 18, 'Herramientas por Implementación (Móviles Nuevas)', 'Descripción:\r\nSolicitud de herramientas o recursos necesarios para la implementación y puesta en marcha de nuevas móviles.\r\n\r\nSolicitud:\r\nAdjuntar RQ actualizada, autorización de la gerencia del proyecto y acta kick off implementación.\r\n\r\nSLA 17 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 08:51:45', '2026-09-03 13:51:45', 'Herramientas y Recursos Propios'),
(85, 1, 14, NULL, 4, 18, 'Cambios de Equipos EPPS y Dotación', 'Descripción:\r\nRequerimiento direccionado a situaciones extra, ocurridas en la operación durante el mes de tramite de sus cambios de herramientas\r\n\r\nSolicitud:\r\nAdjuntar autorización de la gerencia del proyecto y formato RQ actualizado.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 08:52:51', '2026-09-03 13:52:51', 'Herramientas y Recursos Propios'),
(86, 1, 14, NULL, 15, 18, 'Stock Consumibles, Dotación, Botas y EPPS', 'Descripción:\r\nSolicitud desde cada almacén de herramientas para stock mensual.\r\n\r\nSolicitud:\r\nAdjuntar autorización de la gerencia del proyecto y formato RQ actualizado.\r\n\r\nSLA 17 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 08:53:54', '2026-09-03 13:53:54', 'Herramientas y Recursos Propios'),
(87, 1, 14, NULL, 13, 18, 'Líneas Nuevas (Móviles Nuevas)', 'Descripción:\r\nRequerimiento Inicial para implementación de proyecto\r\n\r\nSolicitud:\r\nAdjuntar RQ actualizada, autorización de la gerencia del proyecto y acta kick off implementación aprobada por la Gerencias generales.\r\n\r\nSLA 4 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 08:56:38', '2026-09-03 13:56:38', 'Herramientas y Recursos Propios'),
(88, 1, 14, NULL, 2, 18, 'Reposición por Hurto y Perdida', 'Descripción:\r\nSolicitud para reposición de chip por perdida o hurto\r\n\r\nSolicitud:\r\nSe solicita información del personal responsable de la línea y el descuento firmado por el valor del chip\r\n\r\nSLA 1 Día.', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 08:59:10', '2026-09-03 13:59:10', 'Herramientas y Recursos Propios'),
(89, 1, 14, NULL, 9, 18, 'Mantenimiento Maquinaria equipos de medición', 'Descripción:\r\nServicio de mantenimiento, calibración, arreglos de empalmadoras, escaleras, OTDRs entre otros\r\n\r\nSolicitud:\r\n\"Para una óptima atención de sus solicitudes, por favor adjuntar el formato de cotización o RQ y la siguiente información:\r\nDescribir detalladamente el tipo de mantenimiento que se requiere, sí aplica algún presupuesto, ficha técnica Y cotización con correo de aprobación en pdf por parte del gerente del proyecto \"\r\n\r\nSLA 12 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 09:00:48', '2026-09-03 14:00:48', 'Herramientas y Recursos Propios'),
(90, 1, 14, NULL, 4, 18, 'Solicitud prioritaria herramientas operativas', 'Descripción:\r\nRequerimiento direccionado a situaciones ocurridas en la operación durante el mes de trámite por faltantes de herramientas\r\n\r\nSolicitud:\r\nAdjuntar autorización de la gerencia del proyecto y formato RQ actualizado.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, NULL, '2026-09-03 09:01:41', '2026-09-03 14:01:41', 'Herramientas y Recursos Propios'),
(91, 1, 14, NULL, 11, 18, 'Correspondencia y Paquetes', 'Descripción:\r\nServicio relacionado con la recepción y despacho de paquetes, cajas a diferentes zonas del país.\r\n\r\nSolicitud:\r\nPor favor diligenciar los campos extras\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, NULL, '2026-09-03 09:02:34', '2026-09-03 14:02:34', 'Herramientas y Recursos Propios');
INSERT INTO `servicios` (`id_servicio`, `id_pais_operacion`, `id_catalogo`, `id_proceso`, `id_sla`, `id_gestor`, `nombre`, `descripcion`, `tipo_solicitud`, `estado`, `id_pais`, `id_ciudad`, `id_departamento`, `id_prioridad`, `prioridad_valor`, `id_urgencia`, `urgencia_valor`, `id_nivel`, `id_impacto`, `impacto_valor`, `id_estado`, `creado_en`, `actualizado_en`, `proceso`) VALUES
(92, 1, 14, NULL, 4, 18, 'Cambios de Herramienta', 'Descripción:\r\nRequerimiento direccionado a situaciones extra, ocurridas en la operación durante el mes de tramite de sus cambios de herramientas\r\n\r\nSolicitud:\r\nAdjuntar autorización de la gerencia del proyecto y formato RQ actualizado.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 09:03:42', '2026-09-03 14:03:42', 'Herramientas y Recursos Propios'),
(93, 1, 14, NULL, 1, 19, 'Vehículo por Implementación de 1 a 10', 'Descripción:\r\nSolicitud de vehículos nuevos o por ampliación de capacidades para los distintos proyectos de Conectar.\r\n\r\nSolicitud:\r\nSe debe adjuntar formato R.Q. ADM-FO-033, correo aprobación de gerente del proyecto, acta de conformación y kick off-nueva implementación.\r\n\r\nSLA 15 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 09:05:40', '2026-09-03 14:05:40', 'Cadena de Abastecimiento - Movilidad'),
(94, 1, 14, NULL, 5, 19, 'Vehículo por Implementación de 10 en adelante.', 'Descripción:\r\nSolicitud de vehículos nuevos o por ampliación de capacidades para los distintos proyectos de Conectar.\r\n\r\nSolicitud:\r\nSe debe adjuntar formato R.Q. ADM-FO-033, correo aprobación de gerente del proyecto, acta de conformación y kick off-nueva implementación.\r\n\r\nSLA 30 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 09:08:24', '2026-09-03 14:08:24', 'Cadena de Abastecimiento - Movilidad'),
(95, 1, 14, NULL, 11, 19, 'Inspección vehículo por Implementación a gestores y subcontratistas', 'Descripción:\r\nSolicitud de inspección del vehículo para avalar su estado técnico y documental.\r\n\r\nSolicitud:\r\nRecuerde que previo a la inspección vehicular por parte del proceso de movilidad debe adjuntar los documentos del vehículo y proveedor basado en el formato ADM-PAR-FOR-009.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:09:20', '2026-09-03 14:09:20', 'Cadena de Abastecimiento - Movilidad'),
(96, 1, 14, NULL, 7, 19, 'Cambio de vehículo por configuración de la móvil o zona de trabajo de 1 a 5', 'Descripción:\r\nSolicitud para realizar cambio de vehículos por modificaciones en las distintas operaciones, ampliaciones o disminuciones de personal técnico en las móviles, requerimiento de otra tipología de vehículo al actual implementado\r\n\r\nSolicitud:\r\nAdjuntar R.Q. ADM-FO-033, el Correo con descripción y  causa del cambio, para que el área de movilidad tenga las especificaciones técnicas del vehículo a implementar.\r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:10:04', '2026-09-03 14:10:04', 'Cadena de Abastecimiento - Movilidad'),
(97, 1, 14, NULL, 16, 19, 'Cambio de vehículo por configuración de la móvil o zona de trabajo de 6 a 20', 'Descripción:\r\nSolicitud para realizar cambio de vehículos por modificaciones en las distintas operaciones, ampliaciones o disminuciones de personal técnico en las móviles, requerimiento de otra tipología de vehículo al actual implementado\r\n\r\nSolicitud:\r\nAdjuntar R.Q. ADM-FO-033, el Correo con descripción y  causa del cambio, para que el área de movilidad tenga las especificaciones técnicas del vehículo a implementar.\r\n\r\nSLA 21 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:10:56', '2026-09-03 14:11:39', 'Cadena de Abastecimiento - Movilidad'),
(98, 1, 14, NULL, 2, 19, 'Requerimiento Chip de combustible Bogotá', 'Descripción:\r\nSolicitud de chip de abastecimiento de combustibles a nivel nacional.\r\n\r\nSolicitud:\r\nEsta solicitud solo aplica para vehículos o activos de la compañía, se debe especificar: placa del vehículo o placa técnica corporativa de la herramienta, tipo de combustible, datos de destinatario (Nombre, apellido, cédula, celular), dirección y ciudad de entrega.\r\n\r\nSLA 1 Día.', 'Incidente', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:12:35', '2026-09-03 14:12:35', 'Cadena de Abastecimiento - Movilidad'),
(99, 1, 14, NULL, 7, 19, 'Requerimiento chip de peajes', 'Descripción:\r\nAsignación de chip o lectores Fly Pass para el tránsito libre de los vehículos al servicio de la compañía por los diferentes peajes a nivel nacional\r\n\r\nSolicitud:\r\nAdjuntar placas de vehículos y centros de costos.\r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:13:50', '2026-09-03 14:13:50', 'Cadena de Abastecimiento - Movilidad'),
(100, 1, 14, NULL, 2, 19, 'Reporte de choques simples y graves', 'Descripción:\r\nReporte de incidentes y/o accidentes de tránsito.\r\n\r\nSolicitud:\r\nAdjuntar registro fotográfico del entorno del evento vial donde ocurrió el incidente y/o accidente (Ubicación de vehículos en vía, daños de vehículos involucrados, señalización de la vía, etc.) el número del radicado del siniestro ante la aseguradora, descripción de los hechos por parte del conductor y datos del abogado que brinda la asistencia en el momento del siniestro.\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 09:15:23', '2026-09-03 14:15:23', 'Cadena de Abastecimiento - Movilidad'),
(101, 1, 14, NULL, 14, 19, 'Prueba de conducción para vehículo 4 ruedas', 'Descripción:\r\nProceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía.\r\n\r\nSolicitud:\r\nAdjuntar información del conductor a evaluar y una breve justificación del porqué esta validación. Correo con la justificación del porqué de la prueba \r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:16:21', '2026-09-03 14:16:21', 'Cadena de Abastecimiento - Movilidad'),
(102, 1, 14, NULL, 14, 19, 'Revisión o inspección de motos', 'Descripción:\r\nProceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía.\r\n\r\nSolicitud:\r\nPara el registro, control y programación de las revisiones de motocicletas debe tener en cuenta: Correo electrónico adjuntando documentación de los vehículos a inspeccionar.(Cédula. Licencia de conducción, licencia de tránsito del vehículo soat, tecno mecánica y poder autenticado en caso de que el vehículo no este a nombre del colaborador). En caso de comparendos, (adjuntar acuerdo de pago)\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 09:17:21', '2026-09-03 14:17:21', 'Cadena de Abastecimiento - Movilidad'),
(103, 1, 14, NULL, 11, 19, 'Reposición de botiquín o elementos vencidos o faltantes', 'Descripción:\r\nProceso para la reposición de botiquines de primeros auxilios y/o reposición de elementos.\r\n\r\nSolicitud:\r\nPara el registro y control de la reposición del botiquín de los vehículos se debe adjuntar: Placa del vehículo, datos del conductor (nombres, apellidos, cédula y teléfono).Adicionalmente se debe adjuntar evidencia fotográfica geo referenciada con fechas de vencimiento de elementos y descripción de los faltantes.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 09:18:35', '2026-09-03 14:18:35', 'Cadena de Abastecimiento - Movilidad'),
(104, 1, 14, NULL, 1, 19, 'Reposición kit de herramientas', 'Descripción:\r\nReposición de elementos del Kit de Carreteras\r\n\r\nSolicitud:\r\nRecuerde que para el debido registro y control de la reposición del botiquín de los vehículos se debe adjuntar: Placa del vehículo, datos del conductor (nombres, apellidos, cédula y teléfono).Adicionalmente se debe adjuntar evidencia fotográfica geo referenciada con fechas de vencimiento de elementos y descripción de los faltantes.\r\n\r\nSLA 15 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 09:20:47', '2026-09-03 14:20:47', 'Cadena de Abastecimiento - Movilidad'),
(105, 1, 14, NULL, 11, 19, 'Usuario GPS', 'Descripción:\r\nSolicitud para el acceso al monitoreo satelital de vehículos (GPS).\r\n\r\nSolicitud:\r\nSe debe justificar el alcance requerido en las plataformas de monitoreo satelital; Adicionalmente, adjuntar datos de creación de usuario: datos de dependencia o proyecto, correo corporativo, usuario, nombre completo y número celular de usuario.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 09:22:10', '2026-09-03 14:22:10', 'Cadena de Abastecimiento - Movilidad'),
(106, 1, 14, NULL, 11, 19, 'Traslado, fletes y acarreos Contemplados en el contrato con el cliente', 'Descripción:\r\nSolicitud de Traslados, Fletes y acarreos, contemplados y no contemplados en el contrato con los clientes.\r\n\r\nSolicitud:\r\nPara una oportuna y satisfactoria respuesta debe adjuntar datos de la solicitud como: tipo de carga, volumen y peso aproximado, dirección de la ciudad de origen y destino, datos de envío remitente y destinatario (Nombres completos, cédulas, teléfonos, correos electrónicos.), proyectos y centros de costos que radican la solicitud. si no está contemplado, adjuntar autorización del gerente del proyecto y la distribución del gasto.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 09:23:09', '2026-09-03 14:23:09', 'Cadena de Abastecimiento - Movilidad'),
(107, 1, 14, NULL, 2, 19, 'Validación y aprobación para cambio de cargo para conductor', 'Descripción:\r\nValidaciones y avales del proceso de movilidad referentes a cambios de cargo de personal conductor de la compañía.\r\n\r\nSolicitud:\r\nAdjuntar la licencia de conducción de la persona por las dos caras; el candidato debe cumplir con la categoría A2 para motocicleta y C1,C2 o C3 para vehículos cuatro ruedas, adicionalmente no debe tener comparendos y/o multas de tránsito. \r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 09:23:49', '2026-09-03 14:23:49', 'Cadena de Abastecimiento - Movilidad'),
(108, 1, 14, NULL, 4, 19, 'Logos de imagen corporativa de clientes para vehículos', 'Descripción:\r\nSolicitud de impresión e instalación de logos corporativos o del cliente en vehículos cuatro ruedas.\r\n\r\nSolicitud:\r\nAdjuntar datos relevantes a los logos solicitados: modelo y/o diseño, medidas, tipo de material, placas de vehículos a instalar, entre otras características importantes explicitas en el contrato, que se deban tener en cuenta.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:24:38', '2026-09-03 14:24:38', 'Cadena de Abastecimiento - Movilidad'),
(109, 1, 14, NULL, 4, 19, 'Desmonte de vehículos', 'Descripción:\r\nEntrega y/o devolución de vehículos al proceso de movilidad. Previa revisión decláusula # 14 del contrato de vehículos dispuesto por la compañía, donde se especifica el pago de 5 días al proveedor del vehículo, valor proporcional al valor canon pactado en el momento de la entrega del vehículo al proceso de movilidad.\r\n\r\nSolicitud:\r\nAdjuntar cronograma de desmonte, presupuesto y especificar dirección y ciudad de entrega.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 16, 3, 18, 21, 1, NULL, '2026-09-03 09:25:46', '2026-09-03 14:25:46', 'Cadena de Abastecimiento - Movilidad'),
(110, 1, 14, NULL, 4, 19, 'Traslado de vehículos (Niñera-Grúa)', 'Descripción:\r\nSolicitud de vehículos de manera no tripulada.\r\n\r\nSolicitud:\r\nAdjuntar autorización del gerente del proyecto.y realizar la descripción de la solicitud adjuntando tipología de vehículos, características, dimensiones y placas de vehículos a trasladar.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 09:32:24', '2026-09-03 14:32:24', 'Cadena de Abastecimiento - Movilidad'),
(111, 1, 14, NULL, 7, 19, 'Requerimiento Chip de combustible otras ciudades', 'Descripción:\r\nSolicitud de chip de abastecimiento de combustibles a nivel nacional.\r\n\r\nSolicitud:\r\nEsta solicitud solo aplica para vehículos o activos de la compañía, se debe especificar: placa del vehículo o placa técnica corporativa de la herramienta, tipo de combustible, datos de destinatario (Nombre, apellido, cédula, celular), dirección y ciudad de entrega.\r\n\r\nSLA 10 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:33:06', '2026-09-03 14:33:06', 'Cadena de Abastecimiento - Movilidad'),
(112, 1, 14, NULL, 14, 19, 'Cambio de motocicleta', 'Descripción:\r\nProceso para evaluar las aptitudes de conducción de conductores al servicio de la compañía.\r\n\r\nSolicitud:\r\nEl personal técnico que devengue el pago de rodamiento y cuente con perfil técnico operativo debe reportar el cambio de su motocicleta al jefe directo, este a su debe crear el caso por la mesa de servicio; adjuntando la documentación como soat, RTM, check list de la moto y licencia de conducción para que el proceso de movilidad generar el aval y notifique a talento humano para generar el cambio del contrato en la documentación de la contratación del personal.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 09:34:00', '2026-09-03 14:34:00', 'Cadena de Abastecimiento - Movilidad'),
(113, 1, 2, NULL, 4, 20, 'Capacitación en Ecuación', 'Descripción:\r\nSolicitud de capacitación al personal nuevo de la herramienta de la Ecuación\r\n\r\nSolicitud:\r\nLa solicitud solo podrá ser realizada por:Lego, gerente, Calidad y Control interno. Tener disponibilidad de una hora. Pendiente el video. Para anexar que las personas pueden verlo antes.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:43:49', '2026-09-03 14:43:49', 'Contabilidad'),
(114, 1, 2, NULL, 4, 20, 'Corrección y Aclaración de Ecuación', 'Descripción:\r\nAclaración por temas de gastos de la Ecuación.\r\n\r\nSolicitud:\r\nLa solicitud debe venir validada por el proceso responsable y con el archivo de correciones; en caso de que el proceso sea contabilidad no se necesita archivo.\r\n\r\nSLA 5 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:44:57', '2026-09-03 14:50:36', 'Contabilidad'),
(115, 1, 2, NULL, 4, 20, 'Rembolso de Caja menor', 'Descripción:\r\nSolicitud de reembolso de caja menor una vez este consumido el porcentaje de cupo según la política.\r\n\r\nSolicitud:\r\nFormato de legalizacion de caja menor debidamente diligenciado con el pdF y los soportes. Y con la foto de la guia de envio \r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:45:53', '2026-09-03 14:50:26', 'Contabilidad'),
(116, 1, 2, NULL, 4, 20, 'Aumento de Caja Menor', 'Descripción:\r\nSolicitud de aumento de Caja Menor.\r\n\r\nSolicitud:\r\n1.Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Interno y Gerente del proceso).  \r\n\r\nSLA 5 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:46:54', '2026-09-03 14:50:17', 'Contabilidad'),
(117, 1, 2, NULL, 13, 20, 'Disminución de Caja Menor', 'Descripción:\r\nDisminución de Caja Menor.\r\n\r\nSolicitud:\r\n2. Formato de modificación de monto cajas menores debidamente diligenciado y firmado por (Control Interno y Gerente del proceso).  \r\n\r\nSLA 4 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:47:55', '2026-09-03 14:50:04', 'Contabilidad'),
(118, 1, 2, NULL, 10, 20, 'Cierre de Caja Menor', 'Descripción:\r\nSolicitud de cierre de Caja Menor.\r\n\r\nSolicitud:\r\nFormato cierre de caja menor, firmado y Arqueo de la caja menor; debidamente diligenciados. Consignación del dinero en efectivo, Foto del saldo de la tarjeta y legalización de la caja. Entrega de la tarjeta fisica.\r\n\r\nSLA 7 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:49:40', '2026-09-03 14:49:40', 'Contabilidad'),
(119, 1, 2, NULL, 14, 20, 'Cambio de Custodio', 'Descripción:\r\nSolicitud de cambio de Custodio.\r\n\r\nSolicitud:\r\nFormato de cambio de custodio, cierre de caja 1 y 2.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 09:51:42', '2026-09-03 14:51:42', 'Contabilidad'),
(120, 1, 2, NULL, 14, 20, 'RUT Actualizado', 'Descripción:\r\nEl RUT no superior a 30 Días de Expedición\r\n \r\nSolicitud:\r\nDescribir cual será el uso de esta información.  Nota: Controller, Jurídica, Adquisidores y Tesorería.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:53:01', '2026-09-03 14:53:01', 'Contabilidad'),
(121, 1, 2, NULL, 4, 20, 'Impuestos Pagados', 'Descripción:\r\nImpuestos presentados según la necesidad del cliente\r\n\r\nSolicitud:\r\nDescribir cual será el uso de esta información.  Nota: Controller y Tesorería.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 09:54:12', '2026-09-03 14:54:12', 'Contabilidad'),
(122, 1, 3, NULL, 13, 21, 'Creación De Documentos y Biblioteca de Minutas', 'Descripción:\r\nRegistro y gestión de solicitudes para la elaboración de documentos de carácter general y todos los de contenido jurídico, según las necesidades de la compañía o del solicitante.\r\n\r\nSolicitud:\r\nA fin de tramitar correctamente su solicitud, agradecemos indicar de manera detallada el documento que requiere elaborar. En caso de tratarse de un mutuo acuerdo, deberá adjuntar el preaviso del trabajador.\r\n\r\nSLA 4 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 09:58:51', '2026-09-03 14:58:51', 'Jurídica'),
(123, 1, 3, NULL, 1, 21, 'Demandas Tutelas y PQR', 'Descripción:\r\nEspacio destinado al registro, control y organización de demandas, tutelas y/o PQR recibidas por la compañía, con el fin de realizar su adecuada gestión y seguimiento.\r\n\r\nSolicitud:\r\nPara gestionar su solicitud, por favor adjunte el documento de demanda, tutela o derecho de petición, a fin de dar respuesta dentro de los términos establecidos.\r\n\r\nSLA 15 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 10:00:33', '2026-09-03 15:00:33', 'Jurídica'),
(124, 1, 3, NULL, 14, 21, 'Gestión Corporativa y de Familia', 'Descripción:\r\nProceso mediante el cual se canalizan y gestionan las solicitudes relacionadas con la administración corporativa y empresarial de las personas jurídicas que conforman el Grupo Conectar, garantizando el cumplimiento de los lineamientos y necesidades institucionales.\r\n\r\nSolicitud:\r\nPara continuar con su solicitud, necesitamos que adjunte  en el caso de solicitar un acta de asamblea, las condiciones con las cuales se va a realizar dicha acta junto a la imagen que justifique lo anterior mencionado.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 10:03:11', '2026-09-03 15:04:32', 'Jurídica'),
(125, 1, 3, NULL, 7, 21, 'Procesos Disciplinarios TH', 'Descripción:\r\nSer vicio diseñado para garantizar el debido proceso disciplinario de los trabajadores. Antes de aplicarse una sanción disciplinaria, el empleador debe escuchar al trabajador inculpado de manera directa, conforme al artículo 115 del Código Sustantivo del Trabajo (C.S.T.) y los parámetros establecidos en la Sentencia C-593 de 2014.\r\n\r\nSolicitud:\r\nA fin de tramitar correctamente su solicitud, debe adjuntar todas las pruebas y/o soportes que justifiquen la falta por la que se subió el proceso disciplinario, rellenando todos los campos extras que se encuentran en el caso. \r\n\r\nSLA 10 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 10:04:12', '2026-09-03 15:04:12', 'Jurídica'),
(126, 1, 3, NULL, 10, 21, 'Solicitud de casos a la Temporal', 'Descripción:\r\nEn este módulo se deben registrar todas las solicitudes cuando se requiera subir caso a la temporal (CONTACTAMOS) respecto a terminaciones de contrato al personal o procesos disciplinarios, con el fin de dar gestión a todos los trabajadores contratados por parte de ellos. \r\n\r\nSolicitud:\r\nCon el fin de dar cumplimiento a la solicitud, se debe adjuntar lo siguiente. *Para retiro de personal: Adjuntar base de Solicitud de Retiro (de no tenerla, solicitar al proceso jurídico). *Para proceso disciplinario o llamado de atención: Adjuntar FURD - Formato Único de Reporte Disciplinario (de no tenerlo, solicitar al proceso jurídico), todas las pruebas de la falta que cometió el trabajador; de no tener, se cerrará el caso desde el proceso jurídico. \r\n\r\nSLA 8 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 10:05:22', '2026-09-03 15:05:22', 'Jurídica'),
(127, 1, 3, NULL, 14, 21, 'Solicitudes Retiro De Personal', 'Descripción:\r\nGestion de solicitudes para retiro de personal adscrito al grupo Conectar, una vez agotados los medios de comunicación con el trabajador. Aplica para casos de retiro por preaviso efectivo, justa causa o abandono de cargo.\r\n\r\nSolicitud:\r\nCon el fin de asegurar el trámite correspondiente y teniendo en cuenta el tipo de terminacón que se va a realizar se de seguir los siguientes adjuntos: INASISTENCIAS INJUSTIFICADAS; soportes de dichas inasistencias junto a las comunicaciones que se han intentado con el trabajador, PREAVISO EFECTIVO; preaviso firmado por el trabajador, OBRA LABOR FINALIZADA; Soporte de que efectivamente la obra será finalizada o la labor que esta ejecutando, SIN JUSTA CAUSA; aprobado por gerencia respecto a indemnización, JUSTAS CAUSAS; trazabilidad de los procesos disciplinarios ya realizados y GO de la jefe jurídica, FORMALIZACIÓN MUTUO ACUERDO; mutuo acuerdo firmado, APRENDIZAJE; si es por mutuo acuerdo documento emitido por la universidad. \r\n\r\nSLA 3 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 10:06:35', '2026-09-03 15:06:35', 'Jurídica'),
(128, 1, 3, NULL, 14, 21, 'Revisión y aprobación de documentos', 'Descripción:\r\nA través de este servicio se gestionan los documentos que requieren revisión y aprobación por parte del área jurídica, previo a la firma del representante legal, garantizando el cumplimiento de los lineamientos legales y corporativos.\r\n\r\nSolicitud:\r\nPara atender su solicitud conforme al procedimiento, se debe subir obligatoriamente el documento en word que debe ser revisado con el fin de dejar constancia de los cambios y sugerencias a realizar\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 10:07:29', '2026-09-03 15:07:29', 'Jurídica'),
(129, 1, 3, NULL, 11, 21, 'Revisión y aprobación casos SAGRILAFT con debida diligencia', 'Descripción:\r\nRevisión de casos con novedades en el reporte SARLAFT de debida diligencia, generando el concepto correspondiente con su aprobación o no aprobación para la vinculación con el grupo empresarial. \r\n\r\nSolicitudes:\r\nPara proceder con la gestión de su solicitud se debe adjuntar documento SARLAFT gestionado por el proceso de Talento Humano. \r\n\r\nSLA 2 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 10:08:27', '2026-09-03 15:08:27', 'Jurídica'),
(130, 1, 3, NULL, 11, 21, 'Revisión y autorización de reingresos o contratación de casos especiales', 'Descripción:\r\nProceso de revisión y autorización de casos de reingreso de personas naturales que buscan vincularse nuevamente a la compañía, así como los procesos de contratación que presentan observaciones o condiciones especiales.\r\n\r\nSolicitud:\r\nEspecificar nombre, cedula y motivo de terminación de contrato del trabajador con el fin de verificar información en las bases de datos internas. \r\n\r\nSLA 2 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 10:09:27', '2026-09-03 15:09:27', 'Jurídica'),
(131, 1, 3, NULL, 14, 21, 'Firma de documentos aprobados', 'Descripción:\r\nGestion de firmas de documentos anteriormente aprobados y revisados por el área jurídica para posterior firma de quien se solicite.\r\n\r\nSolicitud:\r\nTener presente que anteriormente se debió subir un caso por el servicio \"4.1.7 Revisión y aprobación de documentos\" para proceder con las firmas (indicar el número del caso) y se debe adjuntar de manera obligatoria el documento aprobado.\r\n\r\nSLA 3 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 10:10:14', '2026-09-03 15:10:14', 'Jurídica'),
(132, 1, 3, NULL, 11, 21, 'Solicitud de información contratos comerciales', 'Descripción:\r\nSolicitud de información asociada a contratos comerciales, archivos en Excel o documentación de respaldo requerida para su análisis o seguimiento.\r\n\r\nSolicitud:\r\nSe debe especificar cuál es la información necesaria del contrato, junto al nombre de la razón social y el NIT. De ser necesario la carpeta o algún documento dejarlo por escrito.\r\n\r\nSLA 2 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 10:10:55', '2026-09-03 15:10:55', 'Jurídica'),
(133, 1, 5, NULL, 1, 22, 'Solicitud de personal (cargos administrativos reemplazos y cargos nuevos)', 'Descripción:\r\nPermite gestionar la solicitud de personal para cargos administrativos, por creación de un nuevo cargo, garantizando que el proceso de vinculación se realice conforme a las políticas internas y las necesidades del proceso que lo solicita.\r\n\r\nSolicitud:\r\n\"Diligenciar los campos extras, adjuntar el formato de RQ. También se debe adjuntar aprobación Gerente de la Razón Social y Aprobación del Gerente Sergio Rey. \"\r\n\r\nSLA 15 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 10:46:19', '2026-09-03 15:46:19', 'Atracción de Talentos'),
(134, 1, 5, NULL, 11, 23, 'Cambio de cargo', 'Descripción:\r\nServicio destinado a gestionar los cambios de cargo del personal activo, incluyendo ascensos, promociones o movimientos internos.\r\n\r\nSolicitud:\r\n\"Indicar la descripción del cambio que se va a realizar con número de cédula y nombre completo del trabajador. Adjuntar aprobaciones del jefe inmediato y  de seguridad y salud en el trabajo.\r\nSi es un cambio de moviles o motos, se debe de tener la autorización por parte de PARQUEAUTOMOTOR, con RQ correspondiente.    NOTA: Si no se encuentra el adjunto de lo mencionado anteriormente, no se realizará el cambio pertinente y se cerrará el caso sin ejecución.\"\r\n\r\nSLA  2 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 10:49:44', '2026-09-03 15:49:44', 'HeadCount'),
(135, 1, 5, NULL, 11, 23, 'Cambio de Proyecto', 'Descripción:\r\nServicio destinado a gestionar traslados de personal activo entre diferentes proyectos o movimientos internos en la compañía.\r\n\r\nSolicitud:\r\n\"Indicar la descripción del cambio que se va a realizar con número de cédula y nombre completo del trabajador. Adjuntar aprobaciones del jefe quien suministra el personal, de quien recibe este, y  de seguridad y salud en el trabajo.  Además adjuntar el correo con las aprobaciones.\r\nSi es un cambio a conductor o con moto, se debe de tener la autorización por parte de PARQUEAUTOMOTOR, con RQ correspondiente. \"\r\n\r\nSLA  2 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 10:51:05', '2026-09-03 15:51:05', 'HeadCount'),
(136, 1, 5, NULL, 11, 23, 'Cambio de código de unidad (CU1 y CU3)', 'Descripción:\r\nServicio destinado a gestionar los cambios de códigos de unidad, generados por traslados de ciudad, reasignación de proyectos o ajustes en los procesos internos.\r\n\r\nSolicitud:\r\nIndicar la descripción del cambio que se va a realizar(Código de unidad actual y a que Código pasará) con número de cédula y nombre del trabajador, adjuntar las aprobaciones del jefe del proyecto NOTA: si no se encuentra el adjunto de lo mencionado anteriormente, no se realizará el cambio pertinente y se cerrará el caso sin ejecución. \r\n\r\nSLA  2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 10:52:12', '2026-09-03 15:52:12', 'HeadCount'),
(137, 1, 5, NULL, 14, 23, 'Retiro de Cesantias', 'Descripción:\r\nGestión de solicitudes para la autorización de retiro de cesantías del personal activo, ya sea para estudios superiores del trabajador o de sus familiares, realización de mejoras locativas o adquisición de vivienda.\r\n\r\nSolicitud:\r\nPara dar curso a su solicitud, se debe definir el motivo por el que solicita el retiro de cesantías, de ser 1. COMPRA DE VIVIENDA: promesa de compraventa, documento de tradición y libertad, petición de retiro, cesantías 2. EDUCACIÓN (Solo para estudios superiores): para cónyuge; acta de matrimonio o extra juicio, para sus hijos; registro civil. Tanto para el colaborador y los mencionados anteriormente; Acta de matrícula de la universidad, carta de petición por la suma y motivo del retiro. \r\n\r\nSLA  3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 10:53:49', '2026-09-03 15:53:49', 'HeadCount'),
(138, 1, 5, NULL, 11, 24, 'Creación Post', 'Descripción:\r\nEs una entrada o artículo publicado en un blog, foro, red social o cualquier plataforma en línea. Puede ser un texto, una imagen o una combinación de ellos.\r\n\r\nSolicitudes:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 10:56:35', '2026-09-03 15:56:35', 'Diseño'),
(139, 1, 5, NULL, 11, 24, 'Catálogo de servicios plantilla', 'Descripcion:\r\nSe realiza una plantilla que ayuda a diagramar con facilidad una idea ya sea, una lista o un inventario que detallen todos los servicios que una organización ofrece a sus clientes, ya sean internos (empleados) o externos (clientes finales)\r\n\r\nSolicitudes:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 10:59:11', '2026-09-03 15:59:11', 'Diseño'),
(140, 1, 5, NULL, 12, 24, 'Creación o modificación de Boletín', 'Descripción:\r\nUn boletín es un documento oficial que contiene información importante(eventos, visitas, noticias, etc.) como disposiciones o reglamentos.\r\n\r\nSolicitud:\r\nUn boletín es un documento oficial que contiene información importante(eventos, visitas, noticias, etc.) como disposiciones o reglamentos.\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 6 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:02:50', '2026-09-03 16:02:50', 'Diseño'),
(141, 1, 5, NULL, 11, 24, 'Creación de Videos', 'Descripción:\r\nCreación y edición de contenido audiovisual llamativo tanto para externos (clientes) o internos (empleados)\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) referentes, imágenes, Informar detalle del requerimiento en los campos Extras.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:04:06', '2026-09-03 16:04:06', 'Diseño'),
(142, 1, 5, NULL, 11, 24, 'Creación Infografías', 'Descripción:\r\nEs una representación visual de información. Utiliza una combinación de imágenes, gráficos, diagramas y texto para explicar conceptos complejos de manera sencilla y atractiva. Es como contar una historia con imágenes, haciendo que la información sea más fácil de entender y recordar.\r\n\r\nSolicitudes:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:07:35', '2026-09-03 16:07:35', 'Diseño'),
(143, 1, 5, NULL, 11, 24, 'Creación Banners', 'Descripción:\r\nEs un formato de publicidad en internet que consiste en una imagen o texto que se muestra en un sitio web. Su objetivo principal es captar la atención del usuario y dirigirlo a otro sitio web o página.\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:08:22', '2026-09-03 16:08:22', 'Diseño'),
(144, 1, 5, NULL, 11, 24, 'Creación Volantes', 'Descripción:\r\nEs una pieza impresa de pequeño formato, generalmente rectangular, que se utiliza con fines publicitarios.\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:09:12', '2026-09-03 16:09:12', 'Diseño'),
(145, 1, 5, NULL, 14, 24, 'Toma de fotografias para Catalogo o Portafolio', 'Descripción:\r\nServicio que permite gestionar la toma de fotografía para catálogos, ideal para destacar productos con imágenes nítidas, bien iluminadas y de alta calidad.\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel) descripción y cantidad de productos a fotografiar\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:10:02', '2026-09-03 16:10:02', 'Diseño'),
(146, 1, 5, NULL, 12, 24, 'Creación de Catalogo o Portafolio', 'Descripción:\r\n\"Es una herramienta visual y/o digital que presenta una selección de productos, servicios o trabajos realizados, con el objetivo de mostrar lo mejor de una marca.  \r\n\r\nCatálogo: Suele enfocarse en productos o servicios disponibles para la venta.\r\n \r\nPortafolio: Está más orientado a mostrar trabajos anteriores o proyectos realizados. \"\r\n\r\nSolicitud:\r\nAdjuntar información en formato (Word, pdf, PowerPoint y Excel ) esta información debe ser detallada y cada producto debe estar clasificado indicando el servicio que se va a dar a conocer. Adjuntar las fotografías que debe llevar (previamente solicitadas a diseño si aplica)\r\n\r\nSLA 6 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:11:31', '2026-09-03 16:11:31', 'Diseño'),
(147, 1, 5, NULL, 14, 24, 'Actualización de catálogo o Portafolio', 'Descripción:\r\nEs una lista o inventario que detalla todos los servicios que una organización ofrece a sus clientes, ya sean internos (empleados) o externos (clientes finales).            \r\n\r\nSolicitud:\r\nInformación en formato (Word, pdf, PowerPoint  y Excel ) y referentes, imágenes o una idea base de lo que se quiere realizar.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:12:16', '2026-09-03 16:12:16', 'Diseño'),
(148, 1, 5, NULL, 7, 25, 'Solicitud de PMC (plan de mejoramiento continuo)', 'Descripción:\r\nActividad Enfocada a la actualización de procedimientos, divulgación de información, configuración y/o manejo de equipos y/o aplicativos y/o procesos.\r\n\r\nSolicitud:\r\nPara la solicitud de PMC (plan de mejoramiento continuo) agradecemos diligenciar los campos extras y adjuntar el formato de solicitud acompañado del material audiovisual o la solicitud de apoyo para la creación y edición del mismo.\r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 11:16:13', '2026-09-03 16:16:13', 'Formación'),
(149, 1, 5, NULL, 7, 25, 'Actualización de Manuales o procedimientos técnicos del cliente.', 'Descripción:\r\n\"Servicio orientado a la actualización de manuales, procedimientos técnicos y documentación del cliente, incluyendo modificaciones a los procesos actualmente ejecutados por la operación. \r\n.\"\r\n\r\nSolicitud:\r\nAdjuntar el anexo del procedimiento a crear, infografía base o tipo de material\r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:17:26', '2026-09-03 16:17:26', 'Formación'),
(150, 1, 5, NULL, 7, 25, 'Procesos de certificación', 'Descripción:\r\nCorresponde al acompañamiento y apoyo en procesos de certificación interna o externa, solicitados por el cliente o líder de proceso, para asegurar el cumplimiento y validación de los conocimientos del personal técnico en terreno.\r\n\r\nSolicitud:\r\nSe debe organizar una mesa de trabajo para establecer los lineamientos con el fin de determinar los tiempos y requisitos del cliente, \r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:18:15', '2026-09-03 16:18:15', 'Formación'),
(151, 1, 5, NULL, 4, 25, 'Seguimiento de productividad', 'Descripción:\r\nServicio orientado al seguimiento y evaluación de la productividad del personal técnico, mediante mesas de trabajo y análisis de desempeño, con el fin de identificar oportunidades de mejora y realizar seguimiento a la efectividad del personal a través de planes de trabajo definidos.\r\n\r\nSolicitud:\r\nSe debe organizar una mesa de trabajo, para evaluar los indicadores de cumplimiento del personal tecnico, y establecer los lineamientos con el fin de determinar los tiempos y requisitos del cliente, agradecemos diligenciar los campos extras y adjuntar acta de la mesa de trabajo.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:19:06', '2026-09-03 16:19:06', 'Formación'),
(152, 1, 5, NULL, 7, 25, 'Creacion de manuales', 'Descripción:\r\nServicio orientado a la creación de manuales y documentación procedimental, de acuerdo con los requisitos establecidos por el cliente o los procesos internos del Grupo Conectar, con el fin de facilitar la difusión y comprensión de la información al personal, asegurando la continuidad y productividad de la operación.\r\n\r\nSolicitud:\r\nPara la creación de manuales propios del cliente o modificaciones a los procesos actuales ejecutados por la operación, se requiere capacitación por parte del cliente o el anexo del procedimiento a crear tipo de material\r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 11:20:25', '2026-09-03 16:20:25', 'Formación'),
(153, 1, 5, NULL, 11, 25, 'Diagnostico de equipos', 'Descripción:\r\nProceso para diagnosticar y verificar el correcto funcionamiento de equipos de medición de red GPON y de instalación de servicios FTTH\r\n\r\nSolicitud:\r\nPara el diagnostico de equipos agradecemos diligenciar los campos extras y adjuntar el formato de diagnóstico, donde encontrara las características y tipo de equipo a diagnosticar\r\n\r\nSLA  2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 11:21:46', '2026-09-03 16:21:46', 'Formación'),
(154, 1, 5, NULL, 4, 25, 'Mantenimiento de equipos', 'Descripción:\r\nEl proceso para realizar el mantenimiento y ajuste mecánico y correcto funcionamiento de equipos de medición de red GPON y de instalación de servicios FTTH, así mismo de reparar algunos componentes\r\n\r\nSolicitud:\r\nPara el mantenimiento de equipos agradecemos diligenciar los campos extras y adjuntar la ficha técnica de diagnostico\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 11:22:54', '2026-09-03 16:22:54', 'Formación'),
(155, 1, 5, NULL, 7, 25, 'Capacitación de habilidades blandas', 'Descripción:\r\nGestionar y brindar capacitaciones o cursos cortos certificados  en habilidades blandas, alineados con las necesidades de los procesos y enfocados en fortalecer las competencias del personal.\r\n\r\nSolicitud:\r\npara la capacitacion previamente se debe revisar el portafolio de en habilidades blandas se requiere base del personal a inscribir y tema de intereses, donde se gestionara y socializara los cursos que mas se ajusten a la solicitud. \r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:23:54', '2026-09-03 16:23:54', 'Formación'),
(156, 1, 5, NULL, 7, 25, 'Capacitacion de habilidades ofimaticas', 'Descripción:\r\nGestionar y brindar capacitaciones o cursos cortos certificados en herramientas y procesos ofimáticos, adaptados a las necesidades específicas de cada organización.\r\n\r\nSolicitud:\r\npara la capacitación previamente se debe revisar el portafolio de ofimática se requiere base del personal a inscribir y tema de intereses, donde se gestionará y socializará los cursos que más se ajusten a la solicitud \r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:25:24', '2026-09-03 16:25:24', 'Formación'),
(157, 1, 5, NULL, 7, 25, 'Capacitación de aplicativos de clientes', 'Descripción:\r\nBrindar capacitación sobre aplicativos desarrollados o actualizados por nuestros clientes, facilitando su adopción por parte del personal operativo y administrativo para asegurar la continuidad y eficiencia de los procesos.\r\n\r\nSolicitud:\r\nPara garantizar el proceso se requiere realizar mesa de trabajo con el cleinte para validar los lineamientos del aplicativo o anexo del manejo del mismo\r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:26:34', '2026-09-03 16:26:34', 'Formación'),
(158, 1, 5, NULL, 4, 25, 'Acompañamientos a terreno', 'Descripción:\r\nRealizar acompañamientos en terreno para garantizar el cumplimiento de los procedimientos establecidos por el cliente y asegurar la calidad de los trabajos ejecutados.\r\n\r\nSolicitud:\r\nAdjuntar el formato de solicitud de la necesidad de la operación\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 11:28:19', '2026-09-03 16:28:19', 'Formación'),
(159, 1, 5, NULL, 7, 25, 'Competencias complementarias', 'Descripción:\r\nEn alianza con entidades educativas y diferentes convenios, gestionamos y brindamos capacitaciones y cursos cortos certificados, orientados a fortalecer competencias alineadas con las necesidades de los procesos.\r\n\r\nSolicitud:\r\nAdjuntar base del personal a inscribir y tema de intereses, que podrán ser validados en el catálogo de servicios donde se gestionara y socializara los cursos que más se ajusten a la solicitud \r\n\r\nSLA 10 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 11:29:29', '2026-09-03 16:29:29', 'Formación'),
(160, 1, 5, NULL, 11, 25, 'Pruebas de conocimiento', 'Descripción:\r\n\"Garantizar la contratación de personal técnico idóneo para la actividad que va a ser contratado para ello realizamos entrevistas a todos los candidatos que desean vincularse a la operación de grupo conectar\"\r\n\r\nSolicitud:\r\nAdjuntar base de datos del personal a cargo y cliente para el cual se requiere la prueba de conocimientos \r\n\r\nSLA  2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 16, 3, 18, 21, 1, NULL, '2026-09-03 11:30:58', '2026-09-03 16:30:58', 'Formación'),
(161, 1, 5, NULL, 11, 26, 'Perfil para cargo existente', 'Descripción:\r\nServicio orientado a la entrega y consulta de perfiles de cargos vigentes dentro de la organización, con la finalidad de validar funciones, responsabilidades y requisitos asociados al puesto.\r\n\r\nSolicitud:\r\nPara solicitar un perfil de cargo existente, se debe  indicar el nombre del cargo requerido, área solicitante y motivo de la solicitud. La atención estará sujeta a validación por el área de Talento Humano.\r\n\r\nSLA  2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 11:37:03', '2026-09-03 16:37:03', 'Talento Humano'),
(162, 1, 5, NULL, 7, 26, 'Perfil para cargos nuevos Tácticos y Operativos', 'Descripción:\r\nServicio orientado a la entrega de perfiles de cargos nuevos, tácticos y operativos dentro de la organización, con la finalidad de validar funciones, responsabilidades y requisitos asociados al puesto.\r\n\r\nSolicitud:\r\nPara solicitar un perfil de cargo nuevo, se debe  indicar el nombre del cargo requerido, área solicitante y motivo de la solicitud. La atención estará sujeta a validación por el área de Talento Humano.\r\n\r\nSLA  10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 11:40:46', '2026-09-03 16:40:46', 'Talento Humano'),
(163, 1, 5, NULL, 1, 26, 'Perfil para cargo nuevo Estratégico', 'Descripción:\r\nServicio orientado a la entrega de perfiles de cargos nuevos estratégicos dentro de la organización, con la finalidad de validar funciones, responsabilidades y requisitos asociados al puesto.\r\n\r\nSolicitud:\r\nPara solicitar un perfil de cargo nuevo, se debe  indicar el nombre del cargo requerido, área solicitante y motivo de la solicitud. La atención estará sujeta a validación por el área de Talento Humano.\r\n\r\nSLA  15 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 11:54:17', '2026-09-04 13:34:26', 'Talento Humano'),
(164, 1, 15, NULL, 14, 27, 'Solicitud de Anticipos', 'Descripcion:\r\nProceso para todos los pagos que se deban realizar en la adquisición de forma rápida en sitios donde no se tengan proveedores inscritos por parte de Conectar TV.\r\n\r\nSolicitud:\r\nAdjuntar Formato de Anticipo Firmado por el Gerente del proyecto y el correo con el aprobado. Nota: Si el valor es mayor del Salario mínimo legal vigente debe estar autorizado por el Gerente Integral.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 11:59:47', '2026-09-03 16:59:47', 'Tesorería'),
(165, 1, 15, NULL, 4, 27, 'Creación cajas menores', 'Descripción:\r\n\"La caja menor, es un fondo que se crea en las empresas para dar\r\nmanejo a los gastos menores. Definir que son gastos menores, y sé asigna a una persona como responsable de su manejo.\"\r\n\r\nSolicitud:\r\nAdjuntar Acta de aprobación de la Caja menor Firmada por Gerente Integral de la compañía mediante un correo donde se deberá copiar a los encargados del proceso financiero, Control Interno y demás interesados (Custodio y jefe directo del custodio)\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 12:01:53', '2026-09-03 17:01:53', 'Tesorería'),
(166, 1, 15, NULL, 14, 27, 'Solicitud soportes de pago', 'Descripción:\r\nSolicitud de información acerca de estado de procesamiento de pagos \r\n\r\nSolicitud:\r\nIndicar la descripción del tercero (Nit, Razón social). confirmación de las facturas que necesita con fecha.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, NULL, '2026-09-03 12:02:44', '2026-09-03 17:02:44', 'Tesorería'),
(167, 1, 15, NULL, 4, 27, 'Solicitud estado de cuenta por pagar', 'Descripción:\r\nInformación acerca de un estado de cuenta proveedor o acreedor \r\n\r\nSolicitud:\r\nIndicar la descripción del tercero (Nit, Razón social). confirmación de las facturas que necesita con fecha.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 12:06:02', '2026-09-03 17:06:02', 'Tesorería'),
(168, 1, 15, NULL, 14, 27, 'Solicitud estados cartera', 'Descripción:\r\nSolicitud de información acerca de estado del cliente en cartera \r\n\r\nSolicitud:\r\nIndicar la descripción del tercero (Nit, Razón social). confirmación de las facturas que necesita con fecha.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 12:08:40', '2026-09-03 17:08:40', 'Tesorería'),
(169, 1, 15, NULL, 7, 27, 'Creación llave Maestra People Pass', 'Descripción:\r\nTarjeta con chips que se carga con un valor monetario definido en el cual la persona custodia puede designar los recursos entre otras tarjetas, como control de gastos \r\n\r\nSolicitud:\r\nAdjuntar Formato Firmado por el Gerente y el correo con el aprobado Adquisiciones.\r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 12:09:51', '2026-09-03 17:09:51', 'Tesorería'),
(170, 1, 15, NULL, 14, 27, 'Recarga Llave Maestra', 'Descripción:\r\nRecarga llave maestra por consumo en gastos operativos autorizados sobre el fondo \r\n\r\nSolicitud:\r\nInforme relación de consumo (legalización) en gastos con detalle aprobado por gerente UEN y aprobación de Adquisiciones.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 12:11:18', '2026-09-03 17:11:18', 'Tesorería');
INSERT INTO `servicios` (`id_servicio`, `id_pais_operacion`, `id_catalogo`, `id_proceso`, `id_sla`, `id_gestor`, `nombre`, `descripcion`, `tipo_solicitud`, `estado`, `id_pais`, `id_ciudad`, `id_departamento`, `id_prioridad`, `prioridad_valor`, `id_urgencia`, `urgencia_valor`, `id_nivel`, `id_impacto`, `impacto_valor`, `id_estado`, `creado_en`, `actualizado_en`, `proceso`) VALUES
(171, 1, 15, NULL, 11, 27, 'Solicitud certificados de cámara de comercio y Certificaciones Bancarias', 'Descripción:\r\nSolicitud renovación de certificados de cámara de comercio y Certificaciones Bancarias\r\n\r\nSolicitud:\r\nNit de la compañía a solicitar y Entidad financiera\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 12:12:07', '2026-09-03 17:12:07', 'Tesorería'),
(172, 1, 6, NULL, 2, 28, 'Gestión de accesos SICI', 'Descripción:\r\nGestión de los accesos internos en la plataforma SICI (Acceso a Bodegas, Departamentos, Centros, ETC)\r\n\r\nSolicitante:\r\nGestión de accesos SICI\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:33:53', '2026-09-03 19:33:53', 'TICs'),
(173, 1, 6, NULL, 5, 28, 'Solicitud de Creación o modificaciones a Desarrollos', 'Descripción:\r\nCreación o modificación de desarrollos, plantillas, formatos y demas recursos virtuales diseñados para el uso de la compañía.  \r\n\r\nSolicitud:\r\nSolicitud de creación o modificaciones a desarrollos\r\n\r\nSLA 30 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 14, 1, 18, 22, 2, NULL, '2026-09-03 14:34:45', '2026-09-03 19:34:45', 'TICs'),
(174, 1, 6, NULL, 11, 28, 'Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR', 'Descripción:\r\nGestión de los accesos internos en la plataforma INFOR (Creación y gestión de requerimientos).\r\n\r\nSolicitud:\r\nSolicitud especial en accesos para la plataforma adjuntando correo del coordinador o jefe inmediato del proceso.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:37:22', '2026-09-03 19:37:22', 'TICs'),
(175, 1, 6, NULL, 2, 28, 'Instalación de software', 'Descripción:\r\nProgramas básicos al momento de realizar la asignación de un equipo de cómputo\r\n\r\nSolicitud:\r\nInstalación de software\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:42:38', '2026-09-03 19:42:38', 'TICs'),
(176, 1, 6, NULL, 2, 28, 'Instalación de VPN CONECTAR', 'Descripción:\r\nInstalación de VPN del servidor Zentyal para el ingreso a aplicativos d.e clientes\r\n\r\nSolicitud:\r\nInstalación de VPN CONECTAR\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:43:27', '2026-09-03 19:43:27', 'TICs'),
(177, 1, 6, NULL, 2, 28, 'Asistencia de Impresora', 'Descripción:\r\nInstalación de impresora por red a algún equipo o por cable.\r\n\r\nSolicitud:\r\nAsistencia de Impresora\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:44:29', '2026-09-03 19:44:29', 'TICs'),
(178, 1, 6, NULL, 7, 28, 'Adecuación de Red', 'Descripción:\r\nAdecuaciones de puntos cableados.\r\n\r\nSolicitud:\r\nCorreo aprobado del jefe del proceso de la adecuación de red \r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 14:47:22', '2026-09-03 19:47:22', 'TICs'),
(179, 1, 6, NULL, 13, 28, 'Falla de Impresora', 'Descripción:\r\nFalla de impresora por red a algún equipo o por cable.\r\n\r\nSolicitud:\r\nReporte de la falla de la impresora\r\n\r\nSLA 4 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 14:48:17', '2026-09-21 13:15:05', 'TICs'),
(180, 1, 6, NULL, 13, 28, 'Solicitud Equipos de Cómputo', 'Descripción:\r\nSolicitud de equipos al proveedor para la asignación\r\n\r\nSolicitud:\r\nSolicitud equipos de cómputo adjuntar correo de autorización del gerente del proyecto.\r\n\r\nSLA 4 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 14:49:58', '2026-09-03 19:49:58', 'TICs'),
(181, 1, 6, NULL, 7, 28, 'Solicitud de periféricos', 'Descripción:\r\nSolicitud de periféricos como teclado y mouse\r\n\r\nSolicitud:\r\nSolicitud de periféricos adjuntar correo de autorización del gerente del proyecto. Nota: Si el proceso tiene dispositivos en stock se puede entregar sin autorización del gerente. \r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:50:58', '2026-09-03 19:50:58', 'TICs'),
(182, 1, 6, NULL, 2, 28, 'Creación de usuario Milldesk', 'Descripción:\r\nCreación de usuario para el ingreso a plataforma de Milldesk\r\n\r\nSolicitud:\r\nCreación de usuario Milldesk\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 14:51:47', '2026-09-03 19:51:47', 'TICs'),
(183, 1, 6, NULL, 11, 28, 'Falla de Equipos', 'Descripción:\r\nVerificación de equipo por bajo rendimiento o daños\r\n\r\nSolicitud:\r\nAdjuntar imagen de la falla o el daño del equipo.\r\n\r\nSLA 2 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 14:52:36', '2026-09-21 13:14:50', 'TICs'),
(184, 1, 6, NULL, 11, 28, 'Copia de seguridad', 'Descripción:\r\nSolicitud para realizar copias de seguridad por cambio de equipo o personal que se retiró.\r\n\r\nSolicitud:\r\nCopia de seguridad \r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 15, 2, 18, 22, 2, NULL, '2026-09-03 14:53:51', '2026-09-03 19:53:51', 'TICs'),
(185, 1, 6, NULL, 7, 28, 'Solicitud de servicio de internet', 'Descripción:\r\nSolicitud de un nuevo servicio de internet para una bodega.\r\n\r\nSolicitud:\r\nAdjuntar correo de la solicitud de servicio de internet aprobado por Jefe del Administración\r\n\r\nSLA 10 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 14:54:41', '2026-09-03 19:54:41', 'TICs'),
(186, 1, 6, NULL, 2, 28, 'Falla  de servicio de internet', 'Descripción:\r\nSe registra falla de servicio de internet de una bodega.\r\n\r\nSolicitud:\r\nIndicar el proyecto afectado, adjuntar en el correo ciudad, dirección y número de cuenta del servicio de internet.\r\n\r\nSLA 1 Días.', 'Incidente', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 14:56:19', '2026-09-03 19:56:19', 'TICs'),
(187, 1, 6, NULL, 16, 28, 'Creación de usuario para ingreso a plataforma de Claro', 'Descripción:\r\nSolicitud para escalar aprobación de creación de usuario para el ingreso a plataformas de Claro.\r\n\r\nSolicitud:\r\nCreación de usuario para ingreso a plataforma de Claro\r\n\r\nSLA 21 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, NULL, '2026-09-03 14:57:06', '2026-09-03 19:57:06', 'TICs'),
(188, 1, 6, NULL, 2, 28, 'Préstamo de equipos de cómputo', 'Descripción:\r\nSolicitud para el préstamo de un equipo de cómputo, siempre y cuando, se encuentren disponible.\r\n\r\nSolicitud:\r\nAdjuntar autorización del jefe de proceso de la solicitud del préstamo de equipos de cómputo\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 14:58:25', '2026-09-03 19:58:25', 'TICs'),
(189, 1, 6, NULL, 2, 28, 'Mantenimiento de Equipos de Cómputo', 'Descripción:\r\nSolicitud para mantenimiento preventivo a algún equipo que se asigne al personal de un proceso\r\n\r\nSolicitud:\r\nMantenimiento de equipos de cómputo\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 11, 2, 15, 2, 18, 21, 1, NULL, '2026-09-03 14:59:09', '2026-09-03 19:59:09', 'TICs'),
(190, 1, 6, NULL, 11, 28, 'Ingreso de equipos al proyecto BYOD', 'Descripción:\r\nEquipos de cómputo personales que el trabajador alquila a la empresa para sus labores diarias, CONECTAR TV. Se realiza un pago dependiendo las características. Nota: El valor máximo es de $ 80.000\r\n\r\nSolicitud:\r\nAdjuntar correo del Gerente del proyecto. \r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 15:00:05', '2026-09-03 20:00:05', 'TICs'),
(191, 1, 6, NULL, 11, 28, 'Reporte de incidente de seguridad de la información', 'Descripción:\r\nCanal seguro para la recepción de reportes, clasificándolos y priorizándolos según su gravedad. Un equipo especializado se encarga de la investigación y resolución, manteniendo al solicitante informado sobre el progreso y las medidas tomadas para resolver y prevenir futuros incidentes.\r\n\r\nSolicitud:\r\nReporte de incidente de seguridad de la información\r\n\r\nSLA 2 Días.', 'Incidente', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-03 15:00:49', '2026-09-03 20:00:49', 'TICs'),
(192, 1, 6, NULL, 11, 28, 'Solicitud de acceso al repositorio de Cloud (nube)', 'Descripción:\r\nCanal para solicitar acceso al repositorio del CONECTAR TV (Cloud), el usuario debe especificar el sistema de información al que desea acceder. Esta solicitud pasa por un proceso de verificación y aprobación para asegurar que cumple con las políticas de seguridad de la organización. Una vez aprobada, el equipo técnico configura el acceso requerido, implementando las medidas de seguridad necesarias. El proceso concluye con la notificación al solicitante, indicando que su acceso está listo para ser utilizado.\r\n\r\nSolicitud:\r\nAdjuntar correo con autorización del jefe inmediato del proceso.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 15:01:28', '2026-09-03 20:01:28', 'TICs'),
(193, 1, 6, NULL, 4, 28, 'Gestión de Desarrollo y Evolución de Aplicaciones', 'Descripción:\r\nervicio orientado al diseño, desarrollo, implementación y mejora continua de soluciones de software que soportan los procesos operativos, administrativos y estratégicos de la organización. Incluye la gestión de requerimientos, análisis funcional, desarrollo técnico, pruebas, despliegue y mantenimiento de aplicaciones, garantizando calidad, trazabilidad y alineación\r\n\r\nSolicitud:\r\nPermite a los usuarios solicitar el desarrollo de nuevas aplicaciones, funcionalidades, automatizaciones o mejoras sobre sistemas existentes. La solicitud será evaluada técnica y funcionalmente para su priorización, diseño e implementación, de acuerdo con los lineamientos de arquitectura y desarrollo de la organización.\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, NULL, '2026-09-03 15:02:17', '2026-09-04 13:06:52', 'TICs'),
(203, 1, 12, NULL, 10, 34, 'Crear nuevo modelo Económico', 'Definición:\r\nSolicitud para la elaboración de un modelo que reúne el análisis económico, financiero, operativo y de rentabilidad de un proyecto que se realiza en conjunto con el solicitante (No incluye aprobaciones de gerencias)\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 8 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, NULL, '2026-09-07 10:57:02', '2026-09-07 16:12:11', 'PMO'),
(206, 1, 12, NULL, 10, 34, 'Realizar Plan de Calidad de un nuevo proyecto', 'Descripción:\r\nSolicitud para generar el acta formal que reúne la información global de un proyecto para su aprobación e información (No incluye aprobaciones de gerencias)\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 8 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, 27, '2026-09-07 11:12:59', '2026-09-07 16:17:04', 'PMO'),
(207, 1, 12, NULL, 12, 34, 'Solicitar un control de cambios al modelo económico', 'Descripción:\r\nControl de cambios a los proyectos que se encuentran en operación y requieren algún cambio (Personal, tipos y cantidad de móviles, cambios en los costos e ingresos, entre otros) (No incluye aprobaciones de gerencias)\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 6 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 11:17:55', '2026-09-07 16:17:55', 'PMO'),
(208, 1, 12, NULL, 14, 34, 'Solicitar modelo operativo', 'Descripción:\r\nConstrucción de un capítulo del modelo económico que indica ingresos, costos y rentabilidad, pero no incluye datos de flujo de caja (TIR) (No incluye aprobaciones de gerencias)\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 11:19:04', '2026-09-07 16:19:04', 'PMO'),
(209, 1, 12, NULL, 4, 34, 'Crear PDA o cronograma de implementación, operación o desmonte', 'Descripción:\r\nPlan de acción o cronograma mediante Project que lleva el control de las implementaciones y desmontes (No incluye aprobaciones de gerencias)\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 11:19:54', '2026-09-07 16:19:54', 'PMO'),
(210, 1, 12, NULL, 10, 34, 'Realizar licitación nuevo cliente o implementación', 'Descripción:\r\nGestión de los requisitos y documentación necesaria (anexos económicos, propuestas técnicas, documentación etc.) para la participación en una licitación de un nuevo cliente o la implementación de un nuevo proyecto.\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 8 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, 27, '2026-09-07 11:20:38', '2026-09-07 16:20:38', 'PMO'),
(211, 1, 12, NULL, 12, 34, 'Diligenciar o presentar evaluaciones, documentos y plataformas de los clientes', 'Descripción:\r\n\"Proceso para el debido diligenciamiento de documentos o evaluaciones necesarias para consultores, auditorias, clientes y sus respetivas plataformas\"\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 6 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, 27, '2026-09-07 11:21:28', '2026-09-07 16:21:28', 'PMO'),
(212, 1, 12, NULL, 4, 34, 'Solicitar acompañamiento o análisis para requerimiento interno', 'Descripción:\r\nProceso de acompañamiento de apoyo de acuerdo a solicitudes realizadas por jefaturas o gerencia para el cambio o implementación de un nuevo parámetro administrativo u operativo\r\n\r\nSolicitud:\r\n\"Se deben diligenciar los campos extras.\r\nCompartir documentos enviados por el cliente o soportes del mismo.\"\r\n\r\nSLA 5 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 11:22:48', '2026-09-07 16:22:48', 'PMO'),
(213, 1, 12, NULL, 14, 35, 'Levantamiento de requisitos para la elaboración de software', 'Descripción:\r\nLevantamiento de información y requisitos para el desarrollo de nuevos programas y/o aplicaciones\r\n\r\nSolicitud:\r\nAdjuntar acta de inicio del proyecto debidamente diligenciada y firmada por el  solicitante y jefe inmediato, e indicar disponibilidad de agenda que debe ser dentro de los tres días siguientes de apertura de este servicio.\r\n\r\nSLA 3 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 10, 1, 14, 1, 18, 21, 1, 27, '2026-09-07 11:24:35', '2026-09-07 16:24:35', 'Controller'),
(214, 1, 12, NULL, 3, 35, 'Desarrollo de software', 'Descripción:\r\nDesarrollo de software para la compañía\r\n\r\nSolicitud:\r\nEntrega de documentación definida en el servicio 10.1.9\r\n\r\nSLA 20 Días', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, 27, '2026-09-07 11:25:36', '2026-09-07 16:25:36', 'Controller'),
(215, 1, 12, NULL, 4, 35, 'Actualización de Software', 'Descripción:\r\nEscalabilidad y modificación de desarrollos entregados de software\r\n\r\nSolicitud:\r\nFormato de control de cambios. \r\n\r\nSLA 5 Días.', 'Incidente', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 11:26:30', '2026-09-07 16:26:30', 'Controller'),
(216, 1, 12, NULL, 11, 36, 'Solicitud de mantenimiento Power BI', 'Descripción:\r\nMantenimiento, corrección y reparación de los informes \r\n\r\nSolicitud:\r\nSolicitud de mantenimiento Power BI\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 11:29:55', '2026-09-07 16:29:55', 'DBM'),
(217, 1, 12, NULL, 11, 36, 'Levantamiento de requisitos para la elaboración de informes (Excel o Power BI)', 'Descripción:\r\nLevantamiento de información y requisitos para el desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI)\r\n\r\nSolicitud:\r\nTener la base de datos para la reunión, e indicar disponibilidad de agenda que debe ser dentro de los dos dias siguientes de apertura de este servicio.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 11:30:42', '2026-09-07 16:30:42', 'DBM'),
(218, 1, 12, NULL, 19, 36, 'Desarrollo de informes (Excel o Power BI)', 'Descripción:\r\nCreación y desarrollo de informes para la compañía en las diferentes aplicaciones (Excel o Power BI)\r\n\r\nSolicitud:\r\nAdjuntar el acta de levantamiento de necesidades generada en el servicio 10.3.2\r\n\r\nSLA 7 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 12, 3, 14, 1, 18, 23, 3, 27, '2026-09-07 12:16:34', '2026-09-07 17:27:54', 'DBM'),
(220, 1, 12, NULL, 2, 36, 'Creación o activación de codigos de unidad', 'Descripción:\r\nElaboración o activación de códigos de unidad de acuerdo a la incorporación de clientes nuevos al grupo empresarial.\r\n\r\nSolicitud:\r\nIndicar cliente, línea de negocio, ciudad de facturación, tipo de trabajo en los campos extras.\r\n\r\nSLA 1 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 12:29:02', '2026-09-07 17:29:02', ''),
(221, 1, 12, NULL, 11, 36, 'Capacitación de códigos de unidad InfoHub', 'Descripción:\r\nCapacitación de la estructura alfanumérica generada para la clasificación de los recursos de la compañía\r\n\r\nSolicitud:\r\nIndicar disponibilidad de agenda que debe ser dentro de los dos días siguientes de apertura de este servicio.\r\n\r\nSLA 2 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 12:30:02', '2026-09-07 17:30:02', ''),
(222, 1, 13, NULL, 4, 37, 'Acompañamiento para el cierre de cajas menores o llaves maestras', 'Descripción:\r\nPor este medio se gestiona el acompañamiento para el cierre de cajas menores o llaves maestras, cajas operativas; mediante la realización del arqueo correspondiente, seguimiento a la tarjeta PeoplePass y revisión del acta de cierre. Así mismo, se elabora el informe de hallazgos para su trámite ante los procesos correspondientes.\r\n\r\nSolicitud:\r\n\"Para recibir un acompañamiento efectivo en el cierre de cajas menores,  llaves maestras o cajas operativas, relacione la siguiente información:\r\n\r\n1. Proyecto al que pertence el fondo: \r\n2. Ciudad:\r\n3. Monto:\r\n4. Jefe del custodio/Responsable de caja menor: \r\n5. Fecha tentativa para reunión de cierre:\"\r\n\r\nSLA 5 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 12:34:32', '2026-09-07 17:34:32', ''),
(223, 1, 13, NULL, 4, 37, 'Acompañamiento para el cambio de custodio de cajas menores, llaves maestras y/o cajas operativas.', 'Descripción:\r\nPor este medio se gestiona el acompañamiento para el cambio de custodio, realizar arqueo de caja menor, llave maestra o caja operativa,Incluye la identificación del nuevo custodio, la realización del arqueo correspondiente, revisión y firma del acta, así como la elaboración del informe de hallazgos para su trámite ante los procesos competentes. Se verifica además que el custodio haya recibido la capacitación correspondiente y cuente con el visto bueno del jefe del proyecto al que pertenece la caja menor, la llave maestra o la caja operativa.\r\n\r\nSolicitud:\r\n\"Para recibir un acompañamiento efectivo en el cambio de custodio de cajas menores o llaves maestras, relacione la siguiente información:\r\n\r\n1. Proyecto al que pertence el fondo: \r\n2. Ciudad:\r\n3. Monto:\r\n4. Jefe del custodio/Responsable de caja menor: \r\n5. Fecha tentativa para reunión cambio de custodio:\"\r\n\r\nSLA 5 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 12:35:45', '2026-09-07 17:35:45', ''),
(224, 1, 13, NULL, 10, 37, 'Solicitud de inventario por el cambio de responsable en bodegas y/o almacén', 'Descripción:\r\nPor este medio se gestiona la realización de inventarios durante el proceso de entrega y cambio de responsable en bodegas y/o almacenes de Conectar, garantizando la verificación y registro adecuado de los elementos a cargo.\r\n\r\nSolicitud:\r\n\"Para realizar una labor efectiva en la entrega y cambio de responsable en bodegas y/o almacenes, relacione la siguiente información:\r\n\r\n1. Fecha requerida para la ejecución del inventario: \r\n2. Proyecto:  \r\n3. Ciudad:\r\n4. responsable actual:\r\n5. Nuevo responsable: \r\n6. jefe o líder del proyecto:\"\r\n\r\nSLA 8 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 12:36:51', '2026-09-07 17:36:51', ''),
(225, 1, 13, NULL, 4, 37, 'Solicitud de bajas de equipos,herramientas, material, dotación, muebles y enseres.', 'Descripción:\r\nPor este medio se gestiona la verificación y trámite de bajas de equipos, herramientas, materiales, dotación, muebles y enseres. Incluye la revisión del inventario, validación del acta y autorización para proceder con la baja o retenerla, según corresponda. En los casos que incluyan elementos de protección personal (EPP), se requiere la aprobación del área de Seguridad y Salud en el Trabajo (SST).\r\n\r\nSolicitud:\r\n\" e indicar disponibilidad de agenda que debe ser dentro de los dos dias siguientes de apertura de este servicio.\r\n\r\nPara realizar una labor efectiva en la solicitud de bajas, relacione la siguiente información:\r\n\r\n1. Fecha requerida para la ejecución de la baja: \r\n2. Bodega:  \r\n3. Ciudad:\r\n4. Proceso Solicitante\r\n5. Responsable\r\n6. Jefe o líder de la bodega o almacén:\r\n7. Adjuntar el acta de baja \"\r\n\r\nSLA 5 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 15, 2, 18, 23, 3, 27, '2026-09-07 12:38:04', '2026-09-07 17:38:04', ''),
(226, 1, 13, NULL, 10, 37, 'Poligrafías', 'Descripción:\r\nSolicitud de servicio de poligrafías ejemplos (vinculación de nuevos funcionarios, cambios de cargos internos e investigaciones. Por favor describa su solicitud:\r\n\r\nSolicitud:\r\nAdjuntar correo de aprobación del gerente del proyecto. Dirigirse a la pestaña campos extras y llenar la solicitud.\r\n\r\nSLA 8 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, 13, 4, 16, 3, 18, 22, 2, 27, '2026-09-07 12:39:56', '2026-09-07 17:39:56', ''),
(227, 1, 13, NULL, 10, 38, 'Investigaciones', 'Descripción:\r\nServicio de investigación ejemplos (hurtos, perdidas).\r\n\r\nSolicitud:\r\n\" Diligenciar informe de novedad, tener en cuenta el procedimiento de reporte de novedades y enviarlo al correo.\"\r\n\r\nSLA 8 días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 12:41:03', '2026-09-07 17:41:03', ''),
(228, 1, 13, NULL, 14, 39, 'Ajustes de producción de los diferentes clientes', 'Descripción:\r\nProceso mediante el cual los clientes incrementan o reducen el valor reportado de la producción ejecutada\r\n\r\nSolicitud:\r\nEl gerente del proyecto debe indicar el detalle por tipo de trabajo, ciudad y valor a incrementar o disminuir, adicionar la justificación de dicho ajuste y realizar el acta según corresponda el caso.\r\n\r\nSLA 3 Días.', 'Incidente', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 12:43:27', '2026-09-07 17:43:27', ''),
(229, 1, 13, NULL, 20, 39, 'Reporte producción y facturación aliados', 'Descripción:\r\nProceso mediante el cual el proceso de aliados solicita información de produción y facturación correspondiente a terceros.\r\n\r\nSolicitud:\r\nDeben indicar el cliente el tipo del proyecto y el mes\r\n\r\nSLA 9 Días.', 'Requerimiento', 'activo', NULL, NULL, NULL, NULL, 5, 16, 3, 18, 23, 3, 27, '2026-09-07 12:44:11', '2026-09-07 17:50:26', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones_usuario`
--

CREATE TABLE `sesiones_usuario` (
  `id_sesion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfil_gestor` int(10) UNSIGNED DEFAULT NULL,
  `token_hash` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `php_session_id` varchar(128) DEFAULT NULL,
  `direccion_ip` varchar(45) NOT NULL,
  `agente_usuario` varchar(500) NOT NULL,
  `tipo_dispositivo` varchar(30) NOT NULL,
  `sistema_operativo` varchar(80) NOT NULL,
  `navegador` varchar(120) NOT NULL,
  `inicio_en` datetime NOT NULL DEFAULT current_timestamp(),
  `ultima_actividad_en` datetime NOT NULL DEFAULT current_timestamp(),
  `cerrada_en` datetime DEFAULT NULL,
  `motivo_cierre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sesiones_usuario`
--

INSERT INTO `sesiones_usuario` (`id_sesion`, `id_usuario`, `id_perfil_gestor`, `token_hash`, `php_session_id`, `direccion_ip`, `agente_usuario`, `tipo_dispositivo`, `sistema_operativo`, `navegador`, `inicio_en`, `ultima_actividad_en`, `cerrada_en`, `motivo_cierre`) VALUES
(1, 1, NULL, '28b3710b4c4aaab019520736e73dcfaa801d11abf01d4635a5cf1e5df0be2eaa', 'cde93ce6d32111cc1fefd5949700375a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-02 15:55:50', '2026-09-02 16:03:19', '2026-09-02 16:13:09', 'inactividad'),
(2, 1, NULL, '1845ae853b6b9bd27b79b86e6b302e0fe698bbb8eedef198198112afe6b75b18', '8b2f2daa0ca75c5b0a2ae8ff64521bac', '191.156.52.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'Celular', 'Android', 'Chrome 152.0.0.0', '2026-09-02 15:56:56', '2026-09-02 16:00:32', NULL, NULL),
(3, 1, NULL, '243922b08bed49a3f2bcdb40ddf370241676bf1f62ec3fb844b7e2de0f259f84', '9511d5a73fe4894b089d08feadb01248', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-02 16:13:11', '2026-09-02 16:21:15', '2026-09-02 16:21:28', 'inactividad'),
(4, 1, NULL, 'c2fa0f30d2cb57fcadd323ff766b6fdbbd9ca9dc24ad7d32912ffb36a812789d', 'b42503e309d7319506411cd79ea67459', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-02 16:25:13', '2026-09-02 16:31:37', '2026-09-02 16:31:43', 'cerrada'),
(5, 1, NULL, '4fadfd0d570f50ad7cbf95fc78442a1825679fe130115fc2cf320c1ea59692a3', 'b8676f6dc1c37b2ec63f2540d8acabf9', '191.156.49.53', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'Celular', 'Android', 'Chrome 152.0.0.0', '2026-09-02 16:25:48', '2026-09-02 16:26:38', NULL, NULL),
(6, 1, NULL, '2436a1a0aba36c9a0bfeee77fbac562ed982979be3e02046d271825ecb0ec958', 'd63116a72da5c47ec461e563abe215b8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-02 16:32:46', '2026-09-02 16:44:17', '2026-09-02 16:45:52', 'inactividad'),
(7, 1, NULL, '1ec9e5e95ecf1324c940c4824b50f9a19737281017bb26e18f57d58a271df4c2', '6a18593e2e64464d2f3d175a6ed96334', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-02 16:45:55', '2026-09-02 16:59:16', NULL, NULL),
(8, 1, NULL, '83f8d2bb17b3b117f665dcc4358aae9c0ef6954320b67e82150e3f7e467fea24', 'b2e52a3269acdc0816f22c80a2b51930', '190.24.186.171', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'Celular', 'Android', 'Chrome 152.0.0.0', '2026-09-02 21:32:01', '2026-09-02 21:35:56', '2026-09-02 21:36:01', 'sesion_expirada'),
(9, 1, NULL, 'b8b6eadf1db99bafc4098e189d622cbed80cf095627335b4cde269fd614f4843', '9572640e51cf5414316a957e1f31238d', '190.24.186.171', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Linux', 'Chrome 152.0.0.0', '2026-09-02 21:36:05', '2026-09-02 21:37:24', NULL, NULL),
(10, 1, NULL, 'ce9e7b61add2b821a44164a52b7ed70140e957356d3df4de4bfa434f575e763d', '109af323ffefbac1a81ec836412acfc6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 07:38:12', '2026-09-03 07:39:54', '2026-09-03 07:49:16', 'inactividad'),
(11, 1, NULL, '53ab50935ac6603f1a8e62042a682c12ac7e34a78cec657ec9d1ced1e06ccd95', 'fd7b1eb40e3b9c69dfd90f95bbce10c2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 07:49:26', '2026-09-03 08:04:29', NULL, NULL),
(12, 1, NULL, '5963ec0ef6096b6879dcd6a131f820a0a68170f212c4e84b3ff2950d7c4a922f', 'bd1cdf392b65e99e5ebf2084b07e088f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 08:04:32', '2026-09-03 08:17:11', '2026-09-03 08:20:46', 'inactividad'),
(13, 1, NULL, 'b329566ecd364b8cf0019a0e002abd7bfabb884fe2bf4a344e6f77e8a18dcf35', 'cb28a0a5031ac510f29ecde2b1ce743c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 08:20:49', '2026-09-03 10:23:29', '2026-09-03 10:23:44', 'inactividad'),
(14, 1, NULL, '92cb176b8417f18dc5f647f06adf4d4b8b1bf264237f3171033264a948276dd1', '95ffe3ce5a12464e379714a9adc5393c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 10:33:35', '2026-09-03 11:45:17', '2026-09-03 11:45:35', 'inactividad'),
(15, 1, NULL, 'e031d6f81dddb447400104bde8c9cf431e15daa076dbadd1d14fe4c917377047', 'c1f43b5873074d4aa71809f1810ad586', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 10:35:41', '2026-09-03 10:42:01', '2026-09-03 10:47:05', 'inactividad'),
(16, 1, NULL, '07d1738e71c151bdf0e8d2bbec6d867c70627beff4fa4250caa983bfec9076cd', '023a28d1b3929bfe961accc563b3f065', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 11:52:51', '2026-09-03 12:26:15', NULL, NULL),
(17, 1, NULL, '77613d222c6475c7fb395a7c51b60699e363c8cda9db9e2b12fd6ac07b466eb4', '259dc674b4eed0091a546c10886752ec', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 14:07:32', '2026-09-03 15:02:39', NULL, NULL),
(18, 1, NULL, '8fc87101fbec7644d1b7c7c59465dc79dffe95e7e99696282e7325551c16ffbf', '1d27161a8fca9c56f523f118908717d0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 15:02:52', '2026-09-03 15:03:52', '2026-09-03 15:03:52', 'cerrada'),
(19, 1, NULL, '419d735f73a29db2d6567731204a2b1f36aa4e73588992e5d28a9dda12b52a65', 'ee5819f2e8d31bf3eea7c27de46407d3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 15:03:55', '2026-09-03 15:38:28', NULL, NULL),
(20, 1, NULL, '968343c5f31a3d9f2f267b890a5b7097220a4b4f4e40bb1b92dda3f6d79e5322', '4031f6ad8ebba16e5338b148c996bd5c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-03 15:20:30', '2026-09-03 15:34:05', '2026-09-03 15:34:08', 'inactividad'),
(21, 1, NULL, 'fb416c7e1d4d8b79a36e287cb244f73a3f9719d4ac70e6dc62128e88572d10b7', '33b75fe1de1613b8dd7fa34138f7ef79', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 15:38:30', '2026-09-03 15:45:16', '2026-09-03 15:45:36', 'inactividad'),
(22, 1, NULL, 'd781f7478871bbe6818ff4e7134ed9331d82a9bb9ae228b36b42fe6c8efac267', '32e6d1db73dcead70b922c64d44547a8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-03 15:40:04', '2026-09-03 16:00:32', '2026-09-03 16:00:32', 'cerrada'),
(23, 1, NULL, '3d6e128d283eaeedc654214d47f23130a5b5aa2f8dd9f8756960fd49b7695a05', '73e149d452c26748dc23809a2ff736ee', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 15:48:19', '2026-09-03 15:53:40', '2026-09-03 15:53:49', 'inactividad'),
(24, 9, NULL, '6a2d81357801cf3e417d61bee0fb5e6d2d003dcbedfde1203ec93f73516b1500', '6d2dd12b02a81bba8af7881fa649851e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-03 16:00:40', '2026-09-03 16:08:18', '2026-09-03 16:08:32', 'inactividad'),
(25, 1, NULL, 'dc5e9aadced9f5cc2a0cacb4318798f0d7dd99dc46919d69428a36cb23b18aa1', 'e2f78bde78517986be9dd8bb73585e57', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 16:01:29', '2026-09-03 16:12:45', '2026-09-03 16:28:40', 'inactividad'),
(26, 1, NULL, '83b31170bda2e010a15e6d69f9599c0e7c498b78eaee93065fb6125ff600df4a', 'cba18aaa5a0e4bde6cd078ab05fc4014', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-03 16:11:20', '2026-09-03 16:17:05', '2026-09-03 16:17:32', 'inactividad'),
(27, 1, NULL, 'dc8fe93d4baef242b2ad933793dc0cf9b787a5f8e95d0c56cf58ef6ee6ed11e3', 'edd7552914fb48c9d936c7661b607a98', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-03 16:28:43', '2026-09-03 17:01:53', NULL, NULL),
(28, 1, NULL, '6306cf7542492c3215d87223df1f6ea344a9533a1ab372c519dbce9107425d46', '5a682c123c720baba9dd0cbcdc46c246', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 07:37:39', '2026-09-04 07:47:09', '2026-09-04 07:47:11', 'inactividad'),
(29, 1, NULL, '9c922742c99ce0307cffea128ff2cc52ccc8637bbdaadc4361cc37e5f80c4917', 'd3ad4f122c7fc56740b478b2085f765f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 07:49:40', '2026-09-04 07:56:06', '2026-09-04 07:56:07', 'inactividad'),
(30, 1, NULL, '9d0a0c5353895dc9fe382e09de34b0015916dc33ca968e68f7f2782b304acc33', 'd64ed4e257fceea71665602d98dde34d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 07:57:36', '2026-09-04 08:11:18', '2026-09-04 08:20:58', 'inactividad'),
(31, 1, NULL, '94058a3b820faa767a90ad1e37ea180df4348c0988abedaf49fcd4fabb84d84f', '196b002fdcd8bdf9af4271831859f307', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 08:21:01', '2026-09-04 08:49:13', '2026-09-04 08:54:49', 'inactividad'),
(32, 1, NULL, 'dac967b867ea74925e2ca11f61b5884d566670a3a63082d793efee9f1fb9f5c3', 'c95a2626451d3184b0dda0b17285379d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 08:54:56', '2026-09-04 09:05:03', '2026-09-04 09:08:20', 'inactividad'),
(33, 1, NULL, '5125942e0bfa76e3d1dfb5bbaf32872be185f42047d5eef9488e064689a59685', 'f3d197826718559c71d175b860911855', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 09:08:23', '2026-09-04 09:14:07', '2026-09-04 09:14:23', 'inactividad'),
(34, 1, NULL, 'a86a86f15c47f8983f26c18539d331d4a33ab3ac3f7491f2c53914903116af0c', 'f20f6dc9a818152a48f24a250a89e87c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 09:15:04', '2026-09-04 09:20:13', '2026-09-04 09:20:29', 'inactividad'),
(35, 1, NULL, '4448630b819b58c8e39c1771d4eed59c40231be032b7d4615ab679155483f423', '83ba748edde7dee9cc7ad5ab62b567fd', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 09:48:44', '2026-09-04 10:05:26', '2026-09-04 10:05:45', 'inactividad'),
(36, 1, NULL, 'bca9773952b2fdfe93703c66ffc846eb888d331f5575bc18022da5e3982ff118', '9776834d9f011995cb3933972450f347', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 10:22:43', '2026-09-04 10:27:45', '2026-09-04 10:28:12', 'inactividad'),
(37, 1, NULL, '595c8f7919bd029eeef0e8b5513dbd3fb09ccd00839aaa0ae61c16f2367ed4ba', '337a4802e973a0a2968c31b0970b74dc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 10:29:37', '2026-09-04 10:50:23', '2026-09-04 10:50:36', 'inactividad'),
(38, 1, NULL, '708abf9e5470bc0a2ae870e6c420d9042960b89e2a8c97bb31da8c5c92fe6811', '53ce7adf4eb0ba97b880e7704bd866d5', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 10:51:50', '2026-09-04 11:00:53', '2026-09-04 11:06:25', 'inactividad'),
(39, 1, NULL, '6ac14be6f41521492b3fb8c02b4ca26c32f103b7e1e04637f39dd143f08e8246', 'ea158ffd4c10a0ae67f87b04c4652466', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 11:06:40', '2026-09-04 11:24:27', '2026-09-04 11:24:32', 'inactividad'),
(40, 1, NULL, '72f8ede431df28e0f1eab2cfb49046a0e6f3f69393eb7b276b8d116690473108', '68b54af8867533cf8de8e4270ad736ae', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 11:31:13', '2026-09-04 12:27:13', '2026-09-04 12:27:29', 'inactividad'),
(41, 1, NULL, 'd73bba30883066a6805af22c14d95b6ea32f0b4f726b276806e1595b35ffdbca', 'fd7cb857a2439715fa20cef1c5c1f90c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 12:05:49', '2026-09-04 12:06:21', NULL, NULL),
(42, 1, NULL, '80bdf4db4cbf3c3ecf93641bbb161a37fd917d6cdbd7e1142c414380fa559865', '3baa32f8a9cab95e437e467f75af0fb5', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 12:08:12', '2026-09-04 12:19:26', '2026-09-04 12:19:28', 'cerrada'),
(43, 1, NULL, '9514451e9ea49dcee372bc7ff324aa3faaf767b3372b0e1cd95c36d9c528a35d', 'f73db6c6115185eaf80f6e2a4bb3bec0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 12:19:31', '2026-09-04 12:27:45', '2026-09-04 12:27:52', 'inactividad'),
(44, 1, NULL, '673553ca983bfb0a5669bfac4eff45c642bb284dd7dedb5b5c406b948572fbbf', '30d89a0f817a5c1ca6ce246c6545f0d5', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 12:28:45', '2026-09-04 12:28:55', '2026-09-04 12:29:15', 'cerrada'),
(45, 31, NULL, '6522b65dc46577874b544a4b4f60a16e6b305ca1c7887bb82230a9eee891aa86', '5583c1bdeaf393d6b5fe770a544c00e4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 12:29:27', '2026-09-04 12:29:29', '2026-09-04 13:52:47', 'reemplazada'),
(46, 2, 1, '9724c035f3889db1304af1f39fff950c86743430637f983c62580e71749fb35c', 'b7f0eafd66c1991e508e5f294ac8223c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 12:52:30', '2026-09-04 12:54:29', NULL, NULL),
(47, 2, 1, 'fd5b54f8544e4edab128cb88c26a2481f893cb8346acb51c931017954ded735c', 'e4b8dc9aa34a509375a7fe3ff3476f8c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 12:55:10', '2026-09-04 12:58:55', '2026-09-04 12:58:56', 'cerrada'),
(48, 2, 1, '40446f4c8a45c6743cdb3361634a6f10d19ab65ba18c56335fe88b96fbcc0f55', 'ca4e85c85d1356f59859325dd6af66ad', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 12:59:06', '2026-09-04 12:59:06', NULL, NULL),
(49, 2, 1, '3866989d8e32b620c4d6a9780b40be535ec4ba9ad10fe3f3766852237a7ddf51', '0e0f5b411dbc611805dde95e9a41488d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 12:59:26', '2026-09-04 12:59:26', NULL, NULL),
(50, 31, NULL, '1229b9e003f1e774a6378bb0fd93c6d305be3bde15f503dee9d262221176588f', 'a8e4654b66be333cd09ca597ad4ef38c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 13:52:47', '2026-09-04 13:58:52', '2026-09-04 14:05:45', 'inactividad'),
(51, 1, NULL, 'e3990a123896f7b2e55771a8f24b22556740504835c587037e79eeedba75cd8b', 'bfae5eef40e3fe24eef190b7ce172ea1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 14:10:02', '2026-09-04 14:15:13', '2026-09-04 14:15:23', 'inactividad'),
(52, 1, NULL, '876dfa47659b880f39853f8f1d3f64d9576cb6a7b3b087ca40ddb7f634a88b8a', '673507283ae1de76e56e98c56fcabad7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 14:18:58', '2026-09-04 14:19:03', '2026-09-04 14:19:04', 'cerrada'),
(53, 2, NULL, '2dc5aec833adb990155a8e31bb7ac395e808cd381480452af8893f7b485eb24e', '68914db6e60ac362626be07aa21afeb5', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 14:19:07', '2026-09-04 14:29:15', '2026-09-04 14:29:15', 'cerrada'),
(54, 31, NULL, '607d2e03ca1d6bd5e15a52ca21c49cbe6cefc5d52ea3da540c3fb787738054ff', '3ca17e31f0321b00d43f2ec248c01497', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-04 14:21:38', '2026-09-04 14:29:22', '2026-09-04 14:30:15', 'inactividad'),
(55, 9, NULL, '8e8c589a1bb25760c29a7752e818adc105f64ff122e3ee9f5293d1d6f7833e4b', '505d327cbcf3e91f8dc6279326e11468', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 14:29:19', '2026-09-04 14:34:24', '2026-09-04 14:40:08', 'inactividad'),
(56, 1, NULL, '203cf51d13ce42fc9acf470ed4d5ee48c8e9c740651d52dd2851c6c83577f1e8', 'cfbfee890cc273c85f1f1f0dbd5d5306', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:56:10', '2026-09-04 14:56:39', '2026-09-04 14:56:52', 'sesion_expirada'),
(57, 2, NULL, '37d921ec0fb912a8e40dc3a67365883ea6c00bca77b59cbc250731b820351b7e', 'd10b706bdb0bec7784beb1a9f7b53100', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:56:11', '2026-09-04 14:58:09', '2026-09-04 14:58:27', 'cerrada'),
(58, 9, NULL, '849e60e5e9af8838e8a6c1255468346237ad154f42b070bdbb1e30b430fd6642', '38f94835c49e7cd8289afc0615034f89', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:56:11', '2026-09-04 14:57:59', '2026-09-04 14:58:12', 'reemplazada'),
(59, 1, NULL, 'd387c2046318ed23e26e670d080bc5f271e8029141e8db92cf0639912ece8579', '7167d348cfa4f8d52505ededbdcccc12', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:57:40', '2026-09-04 14:57:40', '2026-09-04 14:57:40', 'sesion_expirada'),
(60, 2, NULL, '904463f21e042d724a8c651a24d0994aef9441a78e2d36028efc6adf9bbeb510', 'adf2c6a758eafda10755a8a320d9791a', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:58:09', '2026-09-04 14:58:11', '2026-09-04 14:58:28', 'cerrada'),
(61, 9, NULL, 'ffe43135b027d5d0c8c0063c885feb477430061e2b1d0700710b5f62af821825', 'fe3ba1e98dfd8d1bf7fe9245972f65d6', '201.244.156.67', 'MesaRemoteTest/1.0', 'Computador', 'No identificado', 'No identificado', '2026-09-04 14:58:12', '2026-09-04 14:58:13', '2026-09-04 14:58:29', 'cerrada'),
(62, 1, NULL, '635ced3c82df4bd9e4353b07789aa0ecb5dad8250c4a8f4e1045809d197ba721', '109deadffedcbc43162f9f09bbaa3f26', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-04 14:59:59', '2026-09-04 15:01:25', NULL, NULL),
(63, 1, NULL, 'b9139c75ab26d9b48b25e8263647c3af5295f2d1189d669e52702269d762df77', 'd0504e2e0cc1512d4a6baf5b70fd055f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 07:57:08', '2026-09-07 07:59:55', '2026-09-07 07:59:56', 'cerrada'),
(64, 1, NULL, 'aae7a9861c0815529e9a746f2dd31d53a0780d2ce46872b25d73aa2f5c6de699', '19cf5636e3f85151bc3c23e279938e23', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:01:18', '2026-09-07 08:02:21', '2026-09-07 08:02:22', 'cerrada'),
(65, 22, NULL, '635911d5c5cbf24ba0521dffa3be07faca1a511a84dbb66861ae98c712bfa964', '9b357c83f513529eb23e4e695cec0df6', '201.244.156.67', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Linux', 'Chrome 152.0.0.0', '2026-09-07 08:02:17', '2026-09-07 08:05:22', '2026-09-07 08:05:24', 'sesion_expirada'),
(66, 22, NULL, 'f24f8889663cad73f2712ab306130a76edaccb7a55b72e1fdebd56f4c383476d', 'f712f39fd96a8e9aef4f141f8516e8b8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:02:31', '2026-09-07 08:06:11', '2026-09-07 08:06:11', 'cerrada'),
(67, 22, NULL, '45154db27f16956b7bd54569648046c5b6c4643549651733dac437f9aca551cf', 'd6c1f3c9f54b23f181c274a7f1350f34', '191.156.119.169', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'Celular', 'Android', 'Chrome 152.0.0.0', '2026-09-07 08:05:28', '2026-09-07 08:06:29', NULL, NULL),
(68, 9, NULL, 'dc6d69db486094b3b054e8b8d399781cebfc242b50b11f1c8f7bf555e395dfcc', '8f21821e293ac5b6a48ede3e38b2a3cf', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:06:20', '2026-09-07 08:16:46', '2026-09-07 08:16:47', 'cerrada'),
(69, 2, NULL, '78c730d66f05e94d62538ce4bb443fcb4929bf8e235f355267489041fe3a7629', 'aaa629a4a377b7bb9ed2704faf00bdf6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:16:51', '2026-09-07 08:21:38', '2026-09-07 08:24:28', 'inactividad'),
(70, 2, NULL, '35b3ea93251120bd0c2246e3ef1fda0a9ec7316223d6cad84723018cdcd9ed06', '1e41ec32d320e1ab45be8e15b57592e9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:24:33', '2026-09-07 08:24:46', '2026-09-07 08:24:46', 'cerrada'),
(71, 9, NULL, 'cfd7651bbc7683a27f525d6e03571358ec7841574be6e16e0f5cf800878b5292', '0ac797193bfdcd0f9bc5f76817bd0429', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:24:50', '2026-09-07 08:30:59', '2026-09-07 08:31:24', 'inactividad'),
(72, 9, NULL, 'f2323cc4cd9ea4611bb10b272cde101df854d1c918a80baa12a67a3dc10853c3', 'b3d37ea54ab6593dc28780708cc8eec3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:36:42', '2026-09-07 08:36:46', '2026-09-07 08:36:47', 'cerrada'),
(73, 2, NULL, '567eb6a7635fb7efa8571414b3648d3407ec8378e97bc9a2a33869b566f8b2e9', '0aade8ce07f9d4e665f441b0afdd6f35', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:36:50', '2026-09-07 08:48:02', '2026-09-07 08:48:24', 'inactividad'),
(74, 2, NULL, 'dbc59bf364a3eb6931ded9a86d5623171a9e6917cbdde278d1720b70b24a4e67', '51a4798efc06916cba4552aa54ef11cf', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 08:51:06', '2026-09-07 09:07:05', '2026-09-07 09:07:05', 'cerrada'),
(75, 1, NULL, '2ed3912de776c7dd61f52c166fcf8a1df0062fe61d067e8b3f497e51e7998355', '190a54c8c937be8dfa72b2ba878c6a23', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 09:07:10', '2026-09-07 09:21:48', '2026-09-07 09:29:03', 'inactividad'),
(76, 1, NULL, '9a1aba8d80fc7fa7e0ae018d0897ac57670897e4626c967d7cc4cf1f6de22221', 'bb5014698924ceda3d00feb2a20cf091', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 09:29:05', '2026-09-07 09:43:39', '2026-09-07 09:43:41', 'inactividad'),
(77, 1, NULL, '0cea216524b5dcbc5ce534fa1dc3c30f26f914f8bb745a434fd35277fa02ca0a', '52e6ba3860a4c7f5c2550832e1b6696a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 09:43:44', '2026-09-07 09:53:48', '2026-09-07 09:54:10', 'inactividad'),
(78, 1, NULL, '3616fefdeeade2845482729c83d749c6e1ab0b896dbae4cce416d753efec9aeb', 'e03e2d36f1591c6b671a830a76d4009d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 09:57:24', '2026-09-07 10:06:28', NULL, NULL),
(79, 1, NULL, '6fde1a2df0ead8a76fa9ccf0eba8d6b63e5979e5cfd3f458847d64ff626184ac', '3e884d88f7bd1a6cd4182f82d389a75f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 10:37:26', '2026-09-07 10:51:29', '2026-09-07 10:51:55', 'inactividad'),
(80, 1, NULL, '4ea9269b9ebdd6e8e8ece808af427ff369f4f434ed0039d83c49945f903e8fd0', '4f9a40a50885ef771b32e268c43f581d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 10:55:12', '2026-09-07 11:00:19', '2026-09-07 11:00:31', 'inactividad'),
(81, 1, NULL, '9cf1a23dc04da67473e7c7583f6360169e8deef081cb0d66ef19e9db1c276c10', '2f5a60e0c6f216136163170d36715ad1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 11:11:25', '2026-09-07 11:21:46', '2026-09-07 11:21:57', 'inactividad'),
(82, 1, NULL, 'b0f5c7cecda6778bcb92f178e5f0372a4c27d07bf359c4e4919bf2e839c4a1e3', '55c1c551b95f945dbe21fababae67bc2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 11:22:01', '2026-09-07 11:32:02', '2026-09-07 11:32:24', 'inactividad'),
(83, 1, NULL, '0415c95a3679cffda020b7943996be2b16ff6dd91ae30a886b063aac94c28e0e', '20a66a7d110669e70a4b036c7849c380', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 11:41:15', '2026-09-07 11:46:17', '2026-09-07 11:46:34', 'inactividad'),
(84, 1, NULL, 'c08de2211159e2753416c8e403087304840c9226cc10427591fce7143de92da2', '9f872c47292f2aa5757e35a8a8327a49', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 11:46:38', '2026-09-07 11:51:40', '2026-09-07 11:52:24', 'inactividad'),
(85, 1, NULL, 'b831a7291ed76375e1a268b5eacc47d18fdb13f7f74570842cfe54967b19f8a3', 'e02cfa77c22f8155bb5f4bab0b3e66bc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 11:58:18', '2026-09-07 12:50:34', '2026-09-07 12:50:48', 'cerrada'),
(86, 1, NULL, '6deaf45f67fbd49978b10fd0c6286bd7a1b370e72daf55870bf6140666858291', '5bfcaa9358d5d70eb1b0a7e3cc943007', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 14:00:45', '2026-09-07 14:44:44', '2026-09-07 14:44:46', 'cerrada'),
(87, 2, NULL, '1581a726ff330e77658749d0d3b04c153638257d64ed934860b824c9e6fc54c1', '434061e866d4b36778e3cf621980f107', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 14:44:50', '2026-09-07 14:46:58', '2026-09-07 14:47:00', 'cerrada'),
(88, 9, NULL, 'cc95f41f73c0ab66d302f323d69280fe14ba7d23fb9c49e54526076b8c6cded8', '03c8e02a5d645bbb0bc7c90ccafe35d8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-07 14:47:03', '2026-09-07 14:48:34', '2026-09-07 14:48:34', 'cerrada'),
(89, 1, NULL, '8fd855aa47d9bc1a51e05293756992f5b531ab3ff05e5ea69cba303d7ea44cd2', '33ebb9c48c07fd440aefb45cb18130d3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 07:45:53', '2026-09-08 07:51:54', '2026-09-08 07:52:32', 'inactividad'),
(90, 31, NULL, 'cd00898371d56640c8087651ac8d1ec31aedc4d31550403f381381bc87adaa52', 'ce93528b8d013a9f9f78448711b40148', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 07:47:12', '2026-09-08 07:56:03', '2026-09-08 07:56:03', 'pestana_cerrada'),
(91, 31, NULL, '207dda84379b7296462cbb7c13616d4ff1abaf9fb688b831981327279ea2bf34', '0e5f7d79f1a11ae3f3d74533c72f924a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 07:56:25', '2026-09-08 07:58:19', '2026-09-08 07:58:27', 'reemplazada'),
(92, 31, NULL, 'dda98cd3a7fac6cc73cab1426f2617fd18a9085aba2d6da83b40db24f9260ebd', '901cdfa9a11a8f3bafe536f9eb8c1a90', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 07:58:28', '2026-09-08 07:58:43', '2026-09-08 10:50:36', 'reemplazada'),
(93, 1, NULL, 'dda70fafcdabeb5a56dcb6b08dee47b08631f778fe227b5f4acb723c7a0e731b', '0372c74c2e427526024d15656bf8d4b0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 08:54:25', '2026-09-08 08:54:57', '2026-09-08 08:55:03', 'cerrada'),
(94, 1, NULL, '4a85f78ea4df8a2af359d674ae534fbd112a0042e3089bd0d437e99a3d30f4fc', '0aa8f6ca4616e9b04951a19b61ba4266', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 08:55:32', '2026-09-08 08:56:51', '2026-09-08 08:56:58', 'cerrada'),
(95, 32, NULL, '2e625f8428893a8d3a67e6160e34582c6c4a5d00311e52f90ded63d8419d2f67', 'f2bcc0c76cc523055261033dc03c397d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 08:57:07', '2026-09-08 08:59:46', '2026-09-08 08:59:51', 'cerrada'),
(96, 1, NULL, '228f01583bf9e0b2370e87d74d9d91b47a6dcc2374ae1c3f31d80b59e18eda36', 'e22cb09abe8c3a7a06ba695667b7ccc8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 08:59:55', '2026-09-08 09:04:57', '2026-09-08 09:05:15', 'inactividad'),
(97, 1, NULL, 'ff506de0b2299a6ce3506842c40686224e7c09541beb0dbb346e1b87f4e1a3e6', '9b3fd158a49335cfb15f1fc170bfac6f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 10:49:13', '2026-09-08 10:49:16', '2026-09-08 10:49:16', 'cerrada'),
(98, 1, NULL, '138c49cd4c1419307fa69d1aa9bece66434658e2eb8ac7e5e95858dd7f05f684', '24671f7a31cea1bb6243732a1dda5698', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 10:49:17', '2026-09-08 10:50:21', '2026-09-08 10:50:32', 'cerrada'),
(99, 31, NULL, '702b427a61e7769b369302af9ff2dcb6987b18c8683fee6cfbf5412d2872f21b', 'b9a9ddd42d2e0d52e3fb03fbc1ad38a2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 10:50:36', '2026-09-08 10:52:25', '2026-09-08 10:52:26', 'cerrada'),
(100, 32, NULL, 'cdd4cfdc184c1d0e64734e9b3e3f15fef5c0724c163b2bacdd986c26e8276ff7', '21478c46a237cade0ced7bea804ac653', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 10:52:42', '2026-09-08 10:53:34', '2026-09-08 10:53:35', 'cerrada'),
(101, 1, NULL, '099d83672148e0c69618384e479c000d21ad113f3f4885e352e5ba08bd1f53da', 'c1ed9fe85a85f84f4ac13ca645a9b74b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 10:53:42', '2026-09-08 10:59:54', '2026-09-08 11:00:06', 'cerrada'),
(102, 31, NULL, 'b528f99552784ca719dadee7818bc397a9e702013ececb2af2a8ecfe90baf320', 'ed277da8f65a74d14e7d50d7dde8b94b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:00:11', '2026-09-08 11:00:12', '2026-09-08 11:00:13', 'pestana_cerrada'),
(103, 31, NULL, '3241496ed9e9365d2c3293f6e624ba59b1feba71a27e927cdf08892a44569810', '92402f92cd0e3cb7dcbdcf3904586d6b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:00:18', '2026-09-08 11:01:59', '2026-09-08 11:04:13', 'reemplazada'),
(104, 1, NULL, 'd3aa94cc39a46ad5b4c99365911c021a2e0e6ca8124d3179a72a4e017f742b17', 'a5bb82206db3e4c9ceb1c156df161253', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:02:05', '2026-09-08 11:03:03', '2026-09-08 11:03:05', 'cerrada'),
(105, 32, NULL, '1ac8c731bdb77ef62ad5379508d66f8209dd27446cad2bc0bced55950b4c1b67', '7cb3172c8ef479fe1d575d725fc612ce', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:03:22', '2026-09-08 11:03:52', '2026-09-08 11:03:58', 'cerrada'),
(106, 31, NULL, 'e34276aa87b32ae83c967b7d348add3b9d0e02b4d94d3982d68c93e142adca07', '97cf6ce8876d3d7104a96faada4794fc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:04:13', '2026-09-08 11:04:28', '2026-09-08 11:04:30', 'cerrada'),
(107, 1, NULL, '9b1944b71d7ebdaefdd77da62b7e4ec97468462eb972fdd990764e2949485419', '1132eb32f42e1f8e3c3967bc721d8312', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:04:38', '2026-09-08 11:08:09', '2026-09-08 11:08:21', 'cerrada'),
(108, 32, NULL, 'f3a931f1b5846fa8bf5574c49b57ab7e95014f2bdad15094d7307a4761c7ae1f', '85a15f9f3eae684f6fee30119a9a57d6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:08:29', '2026-09-08 11:08:44', '2026-09-08 11:08:45', 'cerrada'),
(109, 1, NULL, 'c3dec665d4e66c7eab55f18425eeae292c98911a60837828c5e3b94b09f0fe83', '1cbde7f0661419752ed7c1fea31bbf60', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:08:50', '2026-09-08 11:10:51', '2026-09-08 11:10:56', 'cerrada'),
(110, 32, NULL, 'e651f8cc6fc3ce44dd5ec5b1c5a57a225fb2b0b1bb93570f5ba74c7dc398f192', 'f63479d8630fbdfe6c4124a33bc9be7b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:11:05', '2026-09-08 11:11:14', '2026-09-08 11:11:17', 'cerrada'),
(111, 1, NULL, 'f1b0a5f71f74a0f4668a4138b2c2e56ae3e450863ed59f8c079b58142273ef57', '79de6d348af867b8483ca73384ce90bc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:11:20', '2026-09-08 11:11:29', '2026-09-08 11:11:48', 'cerrada'),
(112, 32, NULL, '60afeac1e337d22cf81a3a324acc539524c0ed52f42aa0de02affb38a780a6f3', '3d0a46e8d2e9c158704f52fe6388eda3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:24:19', '2026-09-08 11:24:24', '2026-09-08 11:24:27', 'cerrada'),
(113, 31, NULL, 'c75cb2a7cbb7e6f2713a033456e15d66e5968914f9eb36d4604d5435c73dac2a', '5ed53cb5a1523ec022d64c16efcec6e6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:24:32', '2026-09-08 11:25:20', '2026-09-08 11:25:21', 'cerrada'),
(114, 32, NULL, 'c5a6634e16b1e657f77126bd7fb885e36147ccbeb6103f0fedf14e83db59bd94', '8a15aef6e00a554f76682b9dcbbcc903', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 11:25:34', '2026-09-08 11:52:59', '2026-09-08 11:53:32', 'inactividad'),
(115, 1, NULL, '7c6eb385b691ff4130de78a10538107086bf8840b92930104438ad621538adb8', '800f51b5950a3647570873489d29dded', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 11:59:59', '2026-09-08 12:00:42', '2026-09-08 12:00:43', 'cerrada'),
(116, 32, NULL, '83ed77cb58672775d5408d14c7a7f6112d16569eb0c589ba52fc99a7c794dc6b', '7068be8a9abe8451d331a846d3e446df', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:00:50', '2026-09-08 12:04:22', '2026-09-08 12:09:50', 'inactividad'),
(117, 32, NULL, 'c23ce9632c1f96353eb7427ce38f6ffee500ed78d5a0c3665884a424bd3947ca', 'b09874717d09c89900cad6f06684fb72', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 12:07:13', '2026-09-08 12:08:44', '2026-09-08 12:08:46', 'cerrada'),
(118, 31, NULL, '9d4bb1a29b5a04a07f0152acc63e606f112728766059cbfa0b7bfc506c19b7b0', '996ba315357efc09dc4369ce30a89949', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 12:08:49', '2026-09-08 12:09:27', '2026-09-08 12:09:27', 'cerrada'),
(119, 1, NULL, 'de65bec285d7ad81ad0e16d787806b131c77d08905c4d3e26a84050e13416bce', '6b5b8a849b01df4d388307f54398d96a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 12:09:30', '2026-09-08 12:16:31', '2026-09-08 12:16:43', 'inactividad'),
(120, 32, NULL, '206c50698257e9ff286dedf8a929bafbbe3c512020a477ff0dc9cc65d8ca2c86', '02983e6ecc2ae887ccc787126f0bb4a3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:10:01', '2026-09-08 12:12:14', '2026-09-08 12:12:15', 'cerrada'),
(121, 1, NULL, 'cb8aec83df0ff3822edff489d60c6702da09043ec90d5879f717a8cc74dbbc69', 'e447a9153a0a77e0aae180e37b3cebe7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:12:20', '2026-09-08 12:15:21', '2026-09-08 12:30:28', 'inactividad'),
(122, 1, NULL, 'af3bdf34e80d2e1ecb5f842da87f58ef5050b182c89088cb12a0db1f758e0a23', 'cdda043cf486a25feb7a044cb6b292af', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:30:30', '2026-09-08 12:31:01', '2026-09-08 12:31:22', 'cerrada'),
(123, 32, NULL, 'e2514ad588cda681ebe8ae6112bec13acc62559717ee3e72fb8ab29eaeedd5f5', 'd6f744b36c251e2aef43482085c477ab', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:31:29', '2026-09-08 12:31:48', '2026-09-08 12:31:50', 'cerrada'),
(124, 1, NULL, '78cb5614b5ea5851cca4df8873faf010324be8ea4c9419c919ad21bd32b5b48c', 'f30e90bd725714ccb2c5d2ec5d44681f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:31:53', '2026-09-08 12:32:24', '2026-09-08 12:32:26', 'cerrada'),
(125, 32, NULL, '6fbbf41ed0d10da7ff1a74f1cf6e36f205f912f45d9baf0eaa8b0aff293542aa', 'ca3aaf1d0c37564edfbfd637f98fb87f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 12:32:29', '2026-09-08 12:36:01', NULL, NULL),
(126, 31, NULL, '1ef0e7e347eb714b7f0b1df4bd49141ae1bfc7126eb3471b706a0d97b12bd5e7', '891d3cf71f721c247b4632933ad27ead', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 13:48:18', '2026-09-08 13:48:31', '2026-09-08 13:48:32', 'cerrada'),
(127, 31, NULL, 'aae3fc761685362935d1819834a514b318bfbffe84a97640315ec6931dde09ea', '6775d45acf937ccba4772e4e821dc9ef', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 13:49:04', '2026-09-08 13:51:08', '2026-09-08 13:51:09', 'cerrada'),
(128, 1, NULL, 'fc9980b60be99ffe2197cac5800e7ee2c08e4e035432d5660e9367e151e1a907', 'f1f1051ac87a2a9fd7e966ee321ff1ca', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-08 13:51:14', '2026-09-08 13:54:15', NULL, NULL),
(129, 32, NULL, 'ec60a7c168c34f3251bdb4fd92999b5615d265c928059e49489aef46840a320f', 'e48e76b4a09885a2c96d8e672ed0af91', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-08 15:17:48', '2026-09-08 15:22:20', NULL, NULL);
INSERT INTO `sesiones_usuario` (`id_sesion`, `id_usuario`, `id_perfil_gestor`, `token_hash`, `php_session_id`, `direccion_ip`, `agente_usuario`, `tipo_dispositivo`, `sistema_operativo`, `navegador`, `inicio_en`, `ultima_actividad_en`, `cerrada_en`, `motivo_cierre`) VALUES
(130, 1, NULL, '953cfcbaddf570dfab83a24c720b48094a02cf408697b1e4bed76264cae3de2b', '7fa861360e9bf0354d9955032ff846f3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-09 09:19:18', '2026-09-09 09:24:49', '2026-09-09 09:24:51', 'inactividad'),
(131, 1, NULL, 'b268226cf41e5c2af47c1760780e3342406f1d2963e0f506d9d6e8a50c21b1ec', '104e2c89a6eb19d77763b4f494766e1d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-09 15:38:39', '2026-09-09 15:38:39', NULL, NULL),
(132, 1, NULL, 'e9425461ebab6c06b9823362a3dd978dac5dac6fba6599ab5ee6c6c6cc30d4a9', 'b2adf1348db6df89050b2c60b014de64', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-10 12:15:47', '2026-09-10 12:20:48', '2026-09-10 12:21:05', 'inactividad'),
(133, 1, NULL, '04fe4dcb8d42c0636b1ee1d4d6a1684aa172529b6ad23d780fd891b6c00812a1', 'fcbe23e0c49d3dc6271b82ad7dd03f86', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-10 12:28:24', '2026-09-10 12:30:55', '2026-09-10 12:31:08', 'cerrada'),
(134, 1, NULL, '3931cb51e8e68aea58f4d7d04edc8b5c9dd44b0ea5a6007452a3498576bc63cb', 'ab66bbede0c3b8d25614315a6c09ab8d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-10 12:31:27', '2026-09-10 12:31:48', '2026-09-10 12:31:51', 'cerrada'),
(135, 2, NULL, '4fe7bba1a9bd374142c359693f6138e7400a28f2582e65e9bf5be4afebe80221', 'be1148c84c930fed747f0e894c5f44a4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-10 12:31:59', '2026-09-10 12:32:41', '2026-09-10 12:32:41', 'cerrada'),
(136, 1, NULL, '2c17e2a6e12f3ddd1c7fbaa2496c040e67612893a9efa906bd638cf481a69a5b', 'fd924460a447c76cc8a9a2c0e79ee8ca', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-10 16:04:25', '2026-09-10 16:10:26', '2026-09-10 16:11:15', 'inactividad'),
(137, 1, NULL, '4715c431bfe5c944403083c1e1f4c5cedbad23a51d79fdcc785ecdd6caa304bd', '44d13e134fd8b6ed38e8346f77f33578', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-11 08:30:57', '2026-09-11 08:35:58', '2026-09-11 08:37:15', 'inactividad'),
(138, 1, NULL, '1b6a5bf39a53be9cb7d319387b0af5c109349ce37b32558c699de7ddabb16f7a', 'f99080cb63e5ea1cb9fa5ca497d45ec8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 152.0.0.0', '2026-09-11 11:14:02', '2026-09-11 11:19:03', '2026-09-11 11:19:22', 'inactividad'),
(139, 1, NULL, '07c615823fbc5c65ccf9be5e785e38ab995fb4ca21dd82835df409fd162b8f3c', '1fc225c0cf98269137df49c7b745905d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-14 10:55:32', '2026-09-14 11:00:33', '2026-09-14 11:01:02', 'inactividad'),
(140, 1, NULL, 'e94d11587fae1c89b3f2d735b42d765b2309f09da3aaf452861ba81e57978f69', '2cc968c43f160069ca161d4e95c8b043', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-14 11:57:55', '2026-09-14 11:57:56', NULL, NULL),
(141, 1, NULL, 'a84e904d810136939876d5c87511d94a7efed2360094e8ec289497e7d2ebd8d4', '064be6dd7b6561348dd54c5588fd2467', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 09:07:22', '2026-09-15 09:20:18', '2026-09-15 09:21:18', 'inactividad'),
(142, 1, NULL, '59852808cc94265bb7b9fd81089d6bd1996ff3f4bc9dd70d12c6c48e2d9ecb79', 'a7c618e854357138ce74a0ab1df23e32', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 09:24:14', '2026-09-15 09:26:02', '2026-09-15 09:26:03', 'cerrada'),
(143, 1, NULL, 'd28e5e78fa6f1f3efc65f0e93b6baac2df039de19bf2fafbb49a034ab8940b32', 'a0363589f032299eb529d85f965f4120', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 09:26:12', '2026-09-15 09:27:22', '2026-09-15 09:27:28', 'cerrada'),
(144, 22, NULL, 'd835340577d859258651126df21b08236a51b1b9f37187a77903143d00294186', '5ee5dcc5905f390eb750be3bd0066621', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 09:27:37', '2026-09-15 09:35:09', '2026-09-15 09:36:18', 'inactividad'),
(145, 1, NULL, '241c6092d71f479dd0c16a820ba66fd71a943bb7d125bc7ff1e3f05bc074658a', '790b836697d26b7bb9d830cb440ddbc0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:03:59', '2026-09-15 11:19:00', '2026-09-15 11:19:14', 'cerrada'),
(146, 1, NULL, '67edc924c1ea97e1b881db6ce09f6aa214c52e2e9445b5c734da3f2b71f28410', '9908b9f22b5a7e04d09100a23af6e1e3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:19:22', '2026-09-15 11:19:34', '2026-09-15 11:19:41', 'cerrada'),
(147, 9, NULL, '97198f652ff4d14a5224fbbd9704cebf80cb75688513d010b626f1625b222659', 'c97c50221673e6ee0262c25907b164c8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:19:45', '2026-09-15 11:25:17', '2026-09-15 11:25:17', 'cerrada'),
(148, 1, NULL, '42465726085b16ceffc18e06878ab9f7874ac6507b8b3c73754309f121275c97', 'bf4ca605275548c3911d8af0de528c1a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:25:20', '2026-09-15 11:25:23', '2026-09-15 11:25:34', 'cerrada'),
(149, 28, NULL, '63174aed82f138c6c10d8928c6f7813bc2be97388893e791c1fe5f0182f4cdbd', '238ffa3cd23bf7adbef197691ca219e0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:25:37', '2026-09-15 11:30:41', '2026-09-15 11:30:43', 'cerrada'),
(150, 9, NULL, '8a8f370f5e8adf6df9ac3d724955b77d96c8b49eeb76918aab796b8ad579e13b', '9dec65144297683ca76c515e814cfb2e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:30:49', '2026-09-15 11:32:35', '2026-09-15 11:32:36', 'cerrada'),
(151, 28, NULL, 'e06ba15700a80f9fec9ce2e0f2a68e21a1d40af940608b710d76bd4fe1f834cc', 'a3013cd5f0adca2461101df790680f75', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:32:43', '2026-09-15 11:33:09', '2026-09-15 11:33:11', 'cerrada'),
(152, 9, NULL, 'b786d71a8291521cdcfeda31c309e8722140c1c15b551c70f5e35ed11c0fcff5', 'e6b67648ab38cf0bbb32d9d50cde82ed', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:33:20', '2026-09-15 11:34:38', '2026-09-15 11:34:39', 'cerrada'),
(153, 28, NULL, 'fd0bcff00162e7efd98da653d3e7ae2b906e81307e2810bdc77e5da36f749a28', 'e472063400e40374784f9c67922abc88', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:34:49', '2026-09-15 11:38:35', '2026-09-15 11:38:36', 'cerrada'),
(154, 1, NULL, 'e0f9f89378c008b9fd6c10084fc04eeacf29b2b728cc3a3fbe68258d55ba6146', 'e99877b2c9c0b1b6ad5ad7b31939635e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:38:39', '2026-09-15 11:38:42', '2026-09-15 11:38:51', 'cerrada'),
(155, 2, NULL, 'a226af90373a18fe03ad7933950655f80a6c4bb942fbbf15c257af875a209bf5', '0b4c0da93c1bb5a2db173063f6bf1ad1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:38:54', '2026-09-15 11:43:43', '2026-09-15 11:43:43', 'cerrada'),
(156, 1, NULL, '8360dab04541956fe06b036d50650659feb21d9c8af5d1b49c6de360fcea052a', '8465e64a30f5a504e409d7006a7f9d78', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:42:25', '2026-09-15 11:51:26', '2026-09-15 11:51:29', 'inactividad'),
(157, 28, NULL, '87010d1a9f7203877c58865eeab93cec0d6ecb119cf58ee991cff87a431a33cd', '57844e2be6e2e9126c2b8581717a7b59', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:43:47', '2026-09-15 11:46:52', '2026-09-15 11:46:53', 'cerrada'),
(158, 9, NULL, 'ae906d99b97bb2e33cfb1894ca39f56ce8de7f7e99d281f4c8d1f53e2ee74b26', 'e0a8e81157e17d4d691b516ad8cfde90', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:46:58', '2026-09-15 11:47:51', '2026-09-15 11:47:51', 'cerrada'),
(159, 1, NULL, '38a64c6f1462a298d525ee48ab90a624850953a1386c812938a8ce950bb0f581', '465ceb8342b97b34f79396b8b4eca9f2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 11:47:54', '2026-09-15 12:03:56', '2026-09-15 12:04:11', 'inactividad'),
(160, 1, NULL, 'd99e97a4e9e0fbca967b1c18bbc1c9aa84bb99a9e5173bf69f6eeaeb53a41439', '8de860eb7c976c3a6c1a8e32d8ddfea7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 14:28:00', '2026-09-15 14:33:10', '2026-09-15 14:34:18', 'inactividad'),
(161, 1, NULL, '5e6794446eadd59f85fa71772d1ef9175ffe9bb871a4ce70e5ff28fe5857eefc', '036f621787eb42ee7f8bef925e50f5c6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-15 16:16:10', '2026-09-15 16:21:11', '2026-09-15 16:21:27', 'inactividad'),
(162, 1, NULL, '99f0a69627b5ba7800eba26c4f6af342089e31629249c737bc135d58222e1906', 'f6f5044729b74e04defb8dfd7ff18943', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:14:59', '2026-09-16 08:17:30', '2026-09-16 08:17:58', 'cerrada'),
(163, 28, NULL, '8c62eefdbad5040de29a1591637e6a5f8ac85936dc268083b48022da8cdf9011', 'fdad1d4c8f5e9d188d3f9b87af66d51f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:18:04', '2026-09-16 08:18:06', '2026-09-16 08:18:08', 'cerrada'),
(164, 28, NULL, '8bf68f594b0355aa12fa750a6d3b635f7c285b43f394ed5352adcb38ee059967', 'd6186d7df2623a97980b2cc2fc246b62', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:18:10', '2026-09-16 08:18:21', '2026-09-16 08:18:24', 'cerrada'),
(165, 9, NULL, '0e4a77a03f7672319db99b65df6a9a88d40566067101f489f21cd1a8ce6d1aae', 'dac0a050fd3f7b6509836f87caa25070', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:18:35', '2026-09-16 08:19:56', '2026-09-16 08:19:57', 'cerrada'),
(166, 1, NULL, 'db36e01f35f6b233a1fc6a079bedbf30e29f699492d94cd26cf2d067f37ec115', '9eb88800de38cccc694e454263a05e52', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:20:00', '2026-09-16 08:26:31', '2026-09-16 08:26:45', 'inactividad'),
(167, 1, NULL, 'a806e53bd62719f3f1ac69a5f1fa6c6cec1264d93df5706d5266834a349c9432', '33bb748b5a40c1037150ad64e77317ac', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 08:50:17', '2026-09-16 09:10:34', '2026-09-16 09:10:41', 'inactividad'),
(168, 1, NULL, '7031bd0cbff615ff99b11f732c3245e78865a15a905d0776bde25b0ff2461b85', '538715d433afcaca3aad240450fc5006', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 09:17:25', '2026-09-16 09:24:00', '2026-09-16 09:24:27', 'inactividad'),
(169, 1, NULL, '255072bf50a0c5e0d7bd8f920b7140407d7976f8163459512ffdaeacb4ea58bc', 'eaed305407cda6588962ea538245b5a3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 09:24:48', '2026-09-16 09:26:46', '2026-09-16 09:27:13', 'cerrada'),
(170, 9, NULL, '36f2d28952f63ae585ebc9c3e9996c278c6c13ce512c70de55385ca7c5c6603b', 'c19aaacee4084180458d46a0e186958e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 09:27:23', '2026-09-16 09:33:24', '2026-09-16 09:34:12', 'inactividad'),
(171, 9, NULL, '312b72623680d0272dc9b9fecf5a17a6cd7430f3cf26da3d6213f2b9a593b05a', 'f27386e16edcde1e4ed189ba9c75b4db', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 09:34:18', '2026-09-16 09:46:50', '2026-09-16 09:47:24', 'inactividad'),
(172, 9, NULL, '6576bd3f183d2c4c2105b4f06a8984e147260f8cf35531eaa9a8123ff77daf15', '9dec0fd5f00efc4bff6f26b151b24e01', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 09:50:32', '2026-09-16 10:06:19', '2026-09-16 10:07:24', 'inactividad'),
(173, 9, NULL, 'ba6e8deb321fb7c9ba356e7fd6ce2e63ea0549ead7504f018d8f17b52a4db386', '67dd0fd51b7dce63097edffbd4dd5188', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 10:23:21', '2026-09-16 10:38:33', '2026-09-16 10:39:24', 'inactividad'),
(174, 9, NULL, '0854d47345441bd862b7e7376fd5294d5c7f8c180a0912b3a00ac8ec431901f8', '0f2552ef207017cb5b3ed249745a1ffc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 10:46:44', '2026-09-16 10:50:37', '2026-09-16 10:50:38', 'cerrada'),
(175, 28, NULL, 'c7d4c4a98112d5ae5573a1ba163a1f0e1215815a435813e8b8775e6030377619', '679feec9bff13a8add58738151d6f58d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 10:50:41', '2026-09-16 11:06:09', '2026-09-16 11:07:24', 'inactividad'),
(176, 28, NULL, 'f7f06ac0d223c211877971b90cb5c52d06e1796ec83e74986910d94f75fff892', '7989fbb1c8b7d4411871b1506a373780', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 11:15:05', '2026-09-16 11:22:07', '2026-09-16 11:23:24', 'inactividad'),
(177, 28, NULL, '1e3abd7642b7264b608debe3948507084727e7f15651c6a2139e351d286a612b', '9729f855599885b95de5f80f140782fe', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 11:23:31', '2026-09-16 11:32:11', '2026-09-16 11:33:24', 'inactividad'),
(178, 28, NULL, 'f6d98612c9f6045048c0ea43c6de36865977d75ad53309ef8f7cacb2d96da2d0', '5e97f6ae0b096f867117c0b6eb990959', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 11:35:25', '2026-09-16 11:42:56', '2026-09-16 11:43:24', 'inactividad'),
(179, 28, NULL, 'b44794209b4c05295b1d7e882d7dd4254c5c300b0d14bd2fa560c1c1231a6295', 'b294ddad5f4e1d8aa13eec60a64734a7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 11:46:11', '2026-09-16 11:52:43', '2026-09-16 11:53:24', 'inactividad'),
(180, 28, NULL, 'f2c850da8ae071f214fe3bd9df2b32cc201953223b685ae67e28d0bc64567a32', '617482569dff0f3766983e0f83827236', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 11:55:28', '2026-09-16 12:03:30', '2026-09-16 12:04:24', 'inactividad'),
(181, 28, NULL, '8edf5533bb6c82e1643841e27586224bedc52d5b9c185eaa7a53e215fb397329', 'c9e71784ec379a67102bcdbe0539ccf7', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 12:06:50', '2026-09-16 12:17:22', '2026-09-16 12:17:24', 'cerrada'),
(182, 9, NULL, '7a7bf180f1ac34fe0b5bec885b2b09c9cb95f372d3072fed67a89eb10a56c0cc', '3f8f44acec7d992963d4c8b19352424f', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 12:17:28', '2026-09-16 12:24:47', '2026-09-16 12:24:47', 'cerrada'),
(183, 28, NULL, 'c5f92cf1e430e30b1f895250e3b414e7bc084029b17220d2787544ad8a2af2e9', '0a16afd1f95070aa28722558592a2fbd', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 12:24:50', '2026-09-16 12:39:24', '2026-09-16 12:40:24', 'inactividad'),
(184, 28, NULL, 'a249b21d425f2de19edd4122f79c544d3bf8f4779225ad0281f30adb9acfb74e', 'e7f43fe6ab79349639adc3801ecc7b5f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 12:41:17', '2026-09-16 12:47:18', '2026-09-16 12:48:24', 'inactividad'),
(185, 28, NULL, '4e61482862c72e19d3cb1429ded9c1f449e4e51af210848946ef38f568ce9e11', 'a1b7c5ac855756e48a6412cf1c0f71c0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 12:49:04', '2026-09-16 13:07:00', '2026-09-16 13:08:24', 'inactividad'),
(186, 28, NULL, '5033d73733eaa9865a099077f4d40646790c56b3a538f34562307d6fca077d01', '9185cffdc8c94dd708e11a69d4376954', '191.156.149.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 13:08:28', '2026-09-16 13:09:33', NULL, NULL),
(187, 28, NULL, 'e3e64e9614b68b1282f4a64ff3ca0f935e2d3df939fc4c262013c33ae17e32f5', '1af8f0a567caf98fd0348b80a9920cd6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:11:56', '2026-09-16 14:26:58', NULL, NULL),
(188, 28, NULL, '71966834e7f38089c43b8a12acfe73fc20f85a13b0ae4d424ac0cfefd25dd05b', '2384760ebfe73c557f4193fc1417d430', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:28:58', '2026-09-16 14:29:32', '2026-09-16 14:29:32', 'cerrada'),
(189, 1, NULL, '1acdc963f7023441a8f0a55ea4a8f285a9685814fc5d6e16b82d2c69f568d4f8', '6f8c65a49f24b0d5eeb8548ab6109b4a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:29:37', '2026-09-16 14:35:02', '2026-09-16 14:35:03', 'cerrada'),
(190, 9, NULL, 'a90dd325cfbe8ed20be1d00508b33b8f8143c408d8b869985efdd647bbf5b897', '83a54a09a6949b6e550c552cefa65b9b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:35:11', '2026-09-16 14:41:28', '2026-09-16 14:41:28', 'cerrada'),
(191, 1, NULL, 'a868e72a60bfcc79c76f8661775a9e3314be076c09ac4efdad4bcc0d8e738385', 'f2a29db1355465c7eb26a67bc04dbb49', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:41:31', '2026-09-16 14:44:09', '2026-09-16 14:44:14', 'cerrada'),
(192, 28, NULL, '3fbf82bb58d776794d6a388558792e6b4fea1d6e6aa11ae4d63ba5758685e694', 'ce81a041573c72affbe289f492b8709f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:44:17', '2026-09-16 14:50:50', '2026-09-16 14:51:17', 'inactividad'),
(193, 28, NULL, 'c1858f1418efd8d41cf2245f3023327a0558d05f27fbd3ea924ebc92491627d0', '0afa5ad1a719395a7fa193bdf9660169', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:51:21', '2026-09-16 14:51:37', '2026-09-16 14:51:38', 'cerrada'),
(194, 9, NULL, 'de0c5d0a6c440bdbb3c490fe750d78344ab9da719c88072a85c30e4e74934c7d', '6252d0e25cb662160f2fb9d6d683d319', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 14:51:47', '2026-09-16 15:00:49', '2026-09-16 15:00:50', 'cerrada'),
(195, 9, NULL, 'dc00ae68434e2039428934cab14d173049dcb16ee0788ad2d6163ce95d09d918', '74708ce7fd9afad5d7133b925e62070b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:00:55', '2026-09-16 15:01:32', '2026-09-16 15:01:33', 'cerrada'),
(196, 28, NULL, '20f76bde84932c89a4fec7f3869a9bb033f53ff798b94f2cad7b222a423a2108', 'e7735b2f4738da043df268bb75995836', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:01:35', '2026-09-16 15:02:47', '2026-09-16 15:02:48', 'cerrada'),
(197, 9, NULL, '1ae939a8c0dffe1b1691d57e72c15250c96bbf473d080d90c2b334da142ac458', '8647821e35adb4f4dfa272b3213d602a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:02:56', '2026-09-16 15:07:00', '2026-09-16 15:07:01', 'cerrada'),
(198, 28, NULL, '1be2493ec0d5bd1ff6ab4a4fa06fdd517dbbf778dc6869ed9f195c04084738ed', 'e439a37d3b7138def895925ad6c21330', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:07:05', '2026-09-16 15:07:18', '2026-09-16 15:07:20', 'cerrada'),
(199, 9, NULL, '9870b1c65b2efd0ad6cdbda2dc5f7271d97cf64497257c63b42c92774c41a99a', 'c1b5962007849f2e426f51efdd94de59', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:07:27', '2026-09-16 15:08:49', '2026-09-16 15:08:50', 'cerrada'),
(200, 1, NULL, '99dabfc7a98bf30fc3c9e490ddbb74ac015d60e8559b9c016bebcf351f702a94', 'd434645488c938b7b26a06c27bba509e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:08:53', '2026-09-16 15:13:54', '2026-09-16 15:14:12', 'inactividad'),
(201, 1, NULL, 'ce2f4956729f6fded2443a8ad740cbe863441dbaff2371a7ead357c71d342ea2', 'b0d24e0ae9c9cb98c59eef8f395d866d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:16:57', '2026-09-16 15:23:30', '2026-09-16 15:23:59', 'inactividad'),
(202, 1, NULL, '336cacd01be5ccff31845b7a144128fc0329b4ec932b9205f5a844c53a3ba9fd', 'd10e38389f0e151f51b5b2c0c1c524ae', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:26:32', '2026-09-16 15:35:29', '2026-09-16 15:35:45', 'inactividad'),
(203, 1, NULL, '034d1e3840f5b7e77829b0cd066b28913b401a503b7251e906d85f3f0da2b810', 'db100d7ed9a12ff9e73f93ac1f95e5c9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:36:32', '2026-09-16 15:37:39', '2026-09-16 15:37:51', 'cerrada'),
(204, 9, NULL, 'f42b1186df10103b47f70cb6a0aa9702a6ba68729c6a0092e6ab36d616189c91', '61f31bb1db53731e6305c9d5f83f017e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:38:03', '2026-09-16 15:38:59', '2026-09-16 15:39:01', 'cerrada'),
(205, 1, NULL, '6aafb18f527ac28e76aba2bed4a39469fd8c216debbf74edc44b89f82220007a', '1c4a261fa0714a2f81836603c6cfd860', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 15:39:04', '2026-09-16 15:46:05', '2026-09-16 15:46:20', 'inactividad'),
(206, 1, NULL, 'fdc17861d6e2dc1e93dfb875005ff55aaff0471d2d49ebdd9fe297184ef825fe', 'fd14587f3d5e54c4e251ce443290543d', '191.156.232.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:17:27', '2026-09-16 16:18:04', '2026-09-16 16:18:06', 'cerrada'),
(207, 28, NULL, 'b614b4ace87287e9dcfb2c1f1924f7718e75ecf972c8f59761d99a04c5ebdd34', 'a8b8e8f753cde82671f3b7f4ea099a02', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:18:11', '2026-09-16 16:19:00', '2026-09-16 16:19:01', 'cerrada'),
(208, 1, NULL, '9a5f8a06a9488b5f1974d3af12a02ee32bc5ddae574b8b681bd34b629cb16c5e', '5a1d063a54104756a1dddf4310d65c5b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:19:03', '2026-09-16 16:33:57', '2026-09-16 16:33:57', 'cerrada'),
(209, 1, NULL, 'dd275b52c76026bab532d115d605e455ff5173b94994712210476643d01453dd', '65ef812dd01792fdaee3f21f34dc7b3e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:34:06', '2026-09-16 16:35:30', '2026-09-16 16:35:32', 'cerrada'),
(210, 1, NULL, 'eed38fb2dc924eefafca4263a58fff68f1111cf96db3d64c5ad8c947648df5e4', '026eb722062884c4ee79e149b0f141db', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:35:34', '2026-09-16 16:35:45', '2026-09-16 16:35:47', 'cerrada'),
(211, 1, NULL, '32fa7498dc8bf0ae97c35e180053e0f4172dcb6e9f8d9f9e94f22432f03a27f4', '084208742c74a75a1c86a55e948675ee', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:35:49', '2026-09-16 16:36:30', '2026-09-16 16:36:41', 'cerrada'),
(212, 9, NULL, '1e61dcf5bc6d1250be90a83bfbdf6bc2a8215e3d5798eb5338f6b034b4476afc', '641a415be122eb5eace29a4dbca6f823', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:36:47', '2026-09-16 16:37:05', '2026-09-16 16:37:06', 'cerrada'),
(213, 1, NULL, '6401576b6483fc628bdf826a838d0f6f23a8955d0f84599791e8c2dbee382dd6', '3b80d4bd6c2d767eabf19c42dd86de58', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:37:08', '2026-09-16 16:42:39', '2026-09-16 16:43:10', 'inactividad'),
(214, 1, NULL, 'fc18908293b2ff3f3b408d09c4594a0599c5fb460691f608ff3efca7267bd704', 'e66f6e3ead4ede74073726de392386b1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 16:51:19', '2026-09-16 16:56:20', '2026-09-16 16:56:42', 'inactividad'),
(215, 1, NULL, '635cf17bd8ef35dac7afc9de2fe5039a37027ec15ba715ef84dbab9ef573bd8e', 'd78ecd0267b803981b0a14977359342f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-16 17:00:14', '2026-09-16 17:06:29', '2026-09-16 17:06:45', 'inactividad'),
(216, 1, NULL, '7b9244c4661c8eca490c071cfda84fa54a767b1e31464fe866ece8201083b60b', 'cbfaaf4b6272adba683f088b382c0b77', '186.29.47.191', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'Celular', 'Android', 'Chrome 152.0.0.0', '2026-09-16 18:47:02', '2026-09-16 18:47:15', '2026-09-16 18:47:18', 'sesion_expirada'),
(217, 1, NULL, '6c164bf6e7ca61cfa3f486483eeec7fdff1c6448b532312262bfcd7ad086683f', '223663ed2727aa60982c6b50c3ef1574', '186.29.47.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Linux', 'Chrome 152.0.0.0', '2026-09-16 18:47:24', '2026-09-16 18:51:38', '2026-09-16 18:52:02', 'cerrada'),
(218, 9, NULL, '0c4d2c55a3512228c3a0e5024d6de00bc48a5cde5728a26fba872554bc92b313', 'b32ec929c2efb1eb97f54c27867f8e3b', '186.29.47.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Linux', 'Chrome 152.0.0.0', '2026-09-16 18:52:18', '2026-09-16 18:53:19', '2026-09-16 18:53:19', 'cerrada'),
(219, 22, NULL, 'de547faa07e91cb982762380d9488e4f4e4d8a2a679c0b765d684cd377994d0e', '39ec5cb2a6b41483ba733074555865d4', '186.29.47.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Linux', 'Chrome 152.0.0.0', '2026-09-16 18:53:29', '2026-09-16 18:56:52', NULL, NULL),
(220, 1, NULL, '73fde7018f3f602d413052c6ae300bce049411540555b90e57030222789345a3', 'c841f84f5c7b13d884f340d8823b84cd', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 07:48:42', '2026-09-17 07:53:43', '2026-09-17 07:54:23', 'inactividad'),
(221, 1, NULL, '9a45a94b2f61cbb38dd1a7306dad9d24ada0bb828b85a11d1e4b31594fb5c2b4', 'f2c369a2b3de593a38fb3160487ffb91', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 07:56:00', '2026-09-17 08:04:31', '2026-09-17 08:04:44', 'inactividad'),
(222, 1, NULL, '27ad0294108bb11de135c87cbd581de8ffbe5c8cc1caa041477412b5211a0729', '27ed225fcaca1030e0d3ac616505bd03', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 08:11:32', '2026-09-17 08:18:03', '2026-09-17 08:18:13', 'inactividad'),
(223, 1, NULL, '54782698ba7a0baa9406eb2db7ac72129344c2de5adef59659032e927200258c', '7c407f80c7a9552ffd80378d620257bb', '104.28.208.178', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'Computador', 'macOS', 'Chrome 151.0.0.0', '2026-09-17 08:18:58', '2026-09-17 08:20:59', '2026-09-17 08:21:16', 'cerrada'),
(224, 9, NULL, 'ddeb973c0e4fcde304ab9cdd68e7369a285ca3f069af22cb19e06b3590d24fef', '74a7a46aa7f9e2e3b56db93291fbafbf', '104.28.208.178', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'Computador', 'macOS', 'Chrome 151.0.0.0', '2026-09-17 08:21:57', '2026-09-17 08:26:30', '2026-09-17 08:26:30', 'cerrada'),
(225, 28, NULL, 'f92120a3e3d3c587c627942c6df47a86119cd0ea416923cfacb24d1edc3df358', '73285611823774457783ae623f9fe749', '104.28.208.178', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'Computador', 'macOS', 'Chrome 151.0.0.0', '2026-09-17 08:27:08', '2026-09-17 08:28:34', NULL, NULL),
(226, 1, NULL, '81b99e519eee01d76725ff1f0a14ab848610ce07e8d2dc837e62ee6dd987e78f', 'c9d74d263e2e9d3579d1d1ff63249b80', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 09:58:23', '2026-09-17 10:06:50', '2026-09-17 10:07:23', 'inactividad'),
(227, 1, NULL, '56acd73ed6de993fef6b6b01d0a2aa7333f36fe701a60f0ad390c9c80fa4bca7', '641e33d68f0a8350af8c0e0253ac26c3', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 09:59:29', '2026-09-17 09:59:36', '2026-09-17 09:59:38', 'cerrada'),
(228, 28, NULL, '76af756eca7533280e56ef1c54318cea8d087cef2c8a51c6d80fcaf49ebd901a', 'ebd83d228122939d255498586f0d5faa', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 09:59:41', '2026-09-17 10:00:02', NULL, NULL),
(229, 1, NULL, 'ab52a0ee666c8ac036aa3232b05d80b1386c3ed96216eb58e92419b3d33d62f9', '5ea9539d7882ac7e0a4d4dd21fb98132', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:00:13', '2026-09-17 10:00:47', '2026-09-17 10:00:49', 'cerrada'),
(230, 1, NULL, '66973f7f982e40cc19ee614462d62e6232566ae95be4bee229ae9e9ea8bfcc2b', 'f619dde155b532e5f4c563a21a99c437', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:00:55', '2026-09-17 10:00:57', '2026-09-17 10:00:57', 'cerrada'),
(231, 9, NULL, '3e939435f36b5b5722f80fc1cb9461dcf36c11744c1ff0698575c0b55b0c8c01', 'f391997e6dac2c7b0e0536241348e144', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:01:09', '2026-09-17 10:06:10', '2026-09-17 10:07:23', 'inactividad'),
(232, 28, NULL, 'e7dcdd0303c32e3d87a4efc093a8dd1778104a96a36eb3a05ac2a77617e27eb3', '754a2d3156431a5976a1c42d518ce2d0', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:13:10', '2026-09-17 10:13:49', '2026-09-17 10:13:49', 'cerrada'),
(233, 1, NULL, '656c2ddebe60a9d94c2201a7d0f463bc235e1912fa6276fa05d621f6e4ac7249', '2c2ccce3dc4d483e8a3495571b528f76', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:13:52', '2026-09-17 10:19:34', '2026-09-17 10:40:30', 'inactividad'),
(234, 1, NULL, '1bcbfbf67fc6b267ea5fca3e8b85d1dea23ef7b4e6cc3e79c20a9a1ee9921584', '5f38d52ca5838cbb293145f12246d049', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 10:40:33', '2026-09-17 10:53:27', '2026-09-17 10:53:45', 'inactividad'),
(235, 1, NULL, 'bade18ecf51106699425baa9b844a468e30977d172e87479f73bb804e15d0cf6', '43bb96d76100d4c4e894925dc79972e0', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:02:55', '2026-09-17 11:23:27', NULL, NULL),
(236, 1, NULL, '88ec46856d9295921440c099490263d46a3ce917b28a3322d997be8ce19cdc65', '39ad7d0a1c03f0cba786e30f55418f83', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:20:30', '2026-09-17 11:21:18', NULL, NULL),
(237, 1, NULL, '5a4abe6f19740e089a61590d6d521a6cd6a7bfcf9677c5f5f1a13f6c0d75f209', 'cf8211873443e8a52fdad4b83748b29a', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-17 11:21:41', '2026-09-17 11:29:23', NULL, NULL),
(238, 1, NULL, '5cb0ea31ae64a09c04e561883c7961435cc629e881838166e5569c1d093fcfcb', '6b5e3fe3cbdc5b1db965f7a9f7516364', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:23:44', '2026-09-17 11:29:14', NULL, NULL),
(239, 1, NULL, '520eb718789145a14127e82b5e1e5b5e737312e0835c735eee0c36a04592ed03', '74f1d4c54442f30f5a8eca1bbd7f0487', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:33:04', '2026-09-17 11:40:49', '2026-09-17 11:41:06', 'inactividad'),
(240, 1, NULL, 'c7fc7a93ace98aa7d04b676c99cb7dd394b76776c2c34e7036950b311214c673', '1ac9d2c911c9362aa9dac57e7221207e', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-17 11:34:13', '2026-09-17 11:35:04', '2026-09-17 11:35:05', 'cerrada'),
(241, 1, NULL, '5673269ba6a21c549a6ed9fbb9684551beb5e5e91c69fcbb9bedae6d5bb75956', 'c72db77522cf16e800b14568524af5cb', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:46:33', '2026-09-17 11:51:34', '2026-09-17 11:51:54', 'inactividad'),
(242, 1, NULL, '7e54fe4f61494cafa3d22005a7a8e7a08d8f0c064b7cb5799e9e2c55f3714f73', 'b95af69ed3d542d2227a3fd6957a4b3b', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:54:06', '2026-09-17 11:55:30', '2026-09-17 11:55:31', 'cerrada'),
(243, 1, NULL, '390cf3195200c36afb22517be69f7a5e903a1d81538eb36d5bd9908f47de7d24', '0f343d266350972008ac39449819c8d0', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 11:55:38', '2026-09-17 12:18:10', '2026-09-17 12:18:20', 'inactividad'),
(244, 1, NULL, '7d044d05c47a94dfd3667faf56951cd46578f298038b74097dde530268361891', '7ad7ba000ab9763f82e9bc4a87970294', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 12:21:12', '2026-09-17 12:32:18', '2026-09-17 12:32:54', 'inactividad'),
(245, 1, NULL, '9a1752f471f08ab4536c81cf6ad33727b259402e314a3905a368180563990160', '98b3e9e9292e52c646470b7dcf760381', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 12:40:35', '2026-09-17 12:49:12', '2026-09-17 12:49:54', 'inactividad'),
(246, 1, NULL, '74874ed02bf83b5d78fd75ffe2197a6e2e5e91de4d09cee53730c73b73e5fba1', 'bc323fe6e7e6d59514aaf042cc319410', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 12:59:18', '2026-09-17 12:59:18', NULL, NULL),
(247, 1, NULL, '3946b06c63deb4778360c349b6780885fc3886aa6c5cbc248a5202ed9e28b331', '09d3986653901c65394b056ac23c0d73', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 13:11:43', '2026-09-17 13:11:43', NULL, NULL),
(248, 1, NULL, 'a5601ca4d1a04911037c15ee2d3fd975552a8438c9a40952befb6d8002c23be8', 'a153b6b9172649bad04af44f4130d6d0', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 13:12:35', '2026-09-17 13:12:35', NULL, NULL),
(249, 1, NULL, '2830a542f9f2dc1f7a210db9377d60c01d9691148ece7b9e7a136b0b495b7045', '52aaa349172a6134afc5820447d93de1', '104.28.208.178', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'Computador', 'macOS', 'Chrome 151.0.0.0', '2026-09-17 13:14:30', '2026-09-17 13:14:30', NULL, NULL),
(250, 1, NULL, 'b62dd02935190085125d4cd9c2a7290a8d8ad450260e2755b8e0fa981c37c256', 'bff2cc0c678c04681eca0d8bf4397798', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:18:33', '2026-09-17 15:28:26', '2026-09-17 15:28:52', 'inactividad'),
(251, 1, NULL, '85ad6ba37869bc9077b658c162f1b8423f048ca91554e76bb32a485c4db9ba42', 'e927de5a3ad898262581348074b42c2f', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:28:54', '2026-09-17 15:32:32', '2026-09-17 15:32:33', 'cerrada'),
(252, 28, NULL, '96ce97980a35eda500b17510a08a740ee145224a082adc379941cd9b850ee0ea', '5820b92992b4c27e136427dba4bbf7d7', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:32:36', '2026-09-17 15:33:11', '2026-09-17 15:33:11', 'cerrada'),
(253, 28, NULL, 'bd157084a5bf80cae0e58ab4608e809efa48310bb4763a95f6381c9e2eedadf1', '28cf8849952ad16c4fdfff50376fa0ef', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:33:42', '2026-09-17 15:33:43', '2026-09-17 15:33:44', 'cerrada'),
(254, 1, NULL, '7f71a2973a772d34cc1060355f317c4b6184f411385718af91b49a24ec500d30', 'a247248775ba72f580a1da0f8b745162', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:33:47', '2026-09-17 15:39:18', '2026-09-17 15:39:39', 'inactividad');
INSERT INTO `sesiones_usuario` (`id_sesion`, `id_usuario`, `id_perfil_gestor`, `token_hash`, `php_session_id`, `direccion_ip`, `agente_usuario`, `tipo_dispositivo`, `sistema_operativo`, `navegador`, `inicio_en`, `ultima_actividad_en`, `cerrada_en`, `motivo_cierre`) VALUES
(255, 1, NULL, '02c25e330ea9e81481278d89b9a3d0336626fa9b1dbcb4a9c7bfeda8dcd44ecd', '27cd4ed756521a308dc65c81fec7837a', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:39:48', '2026-09-17 15:55:51', NULL, NULL),
(256, 1, NULL, 'fd4a55b26fd2478b6bae2716d77030d3bf85bbf8daa6ee737329908ac7e1ce36', '85cde4d6a269b417fc7c09b8fde27480', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 15:55:53', '2026-09-17 16:13:12', '2026-09-17 16:13:12', 'cerrada'),
(257, 1, NULL, '72fd435005648be02cb3246bcf78f66b83f34a3c7b64b626197917b786679ee3', '555e0e35b9364b17848dd75792f83787', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 148.0.7778.280', '2026-09-17 15:56:42', '2026-09-17 15:57:12', NULL, NULL),
(258, 1, NULL, '64fbc92c9d93097dbd500236c7400f7109f78bfdaf5d5c87f620243587d9567e', 'b4e3788b2e46e4996d8c0732fc63b168', '191.156.182.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 16:13:14', '2026-09-17 16:35:37', '2026-09-17 16:35:53', 'inactividad'),
(259, 1, NULL, '23983a372718915ae94cc2b6b44fa2c1cbaf9cf7a01af911fd17cacecbab6c16', 'ff1939ac1e6a7f01e7b7245398616ba9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-17 16:43:40', '2026-09-17 16:49:11', '2026-09-17 16:49:15', 'inactividad'),
(260, 1, NULL, '477853b674453058dfcf51cbf76c05a1fb65c68741a21f10c4bdb3caa3e5bec0', '1e6fe819dfd77cc21cf2af3de1923d77', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 07:45:16', '2026-09-18 08:08:33', '2026-09-18 08:08:33', 'cerrada'),
(261, 1, NULL, 'c8b6b3092f7e893d15fd2428ea382c7e529a29737b798af63bc1a50601b6c006', 'b5c87947c78a20e352345bd46d4562eb', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:08:35', '2026-09-18 08:15:37', '2026-09-18 08:15:48', 'inactividad'),
(262, 1, NULL, 'fa575baa6f0616c441454e52416a11f3d2799072c9fead7d5f8e71b8b0359bc9', '62cd7883b2f8510097cdeb8bc59f2acc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:18:18', '2026-09-18 08:20:58', '2026-09-18 08:20:59', 'cerrada'),
(263, 1, NULL, '23b5034ef177dc617bd34fd5331b6e851298e36cf8aecf39c3a2dc2a12c83092', '62aa10b73b1b3c56c59ffe03a2627dfa', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:21:01', '2026-09-18 08:23:23', '2026-09-18 08:23:24', 'cerrada'),
(264, 28, NULL, '95494e34008f23a021db79ce4198c1658dc6068571607886b520bb25ebad7544', '9e899f13dca5922717779b17f532e7d4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:23:29', '2026-09-18 08:27:03', '2026-09-18 08:27:03', 'cerrada'),
(265, 28, NULL, 'd668f02d520e8881065a0c4b163080d1db4bf6008e2c7c495979d61bed289c4d', '5d09e087691efccdffee4153ea00712c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:27:05', '2026-09-18 08:27:34', '2026-09-18 08:27:35', 'cerrada'),
(266, 9, NULL, 'd508d04ba23cefa3cf71c6074574dd11e63ded075ef22750ac1f7bed4ce27a06', '633d063d72698d911595ba5eb3371664', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:27:54', '2026-09-18 08:28:31', '2026-09-18 08:28:31', 'cerrada'),
(267, 1, NULL, 'd7060b1381fabe3df2630c275d2887305005ef8691184b755479351c8dae38b7', '7ed27330cc304161e717e58adf46447b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:28:34', '2026-09-18 08:33:34', '2026-09-18 08:33:35', 'cerrada'),
(268, 28, NULL, '63fffef24c7572ea7d3c284efb17f4e95aa883379ee569345d0a3af9ea8779a7', 'a257aae04ce23bd91b3081501fb4bfb8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:33:38', '2026-09-18 08:39:59', '2026-09-18 08:40:13', 'inactividad'),
(269, 1, NULL, 'b5e6db9934b232bb54c2fd59e565b70bff1f9c7a89675d084c34dd6f6aa97ee0', 'bcf458067333b1d72aa5ba67a834dbdf', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-18 08:38:19', '2026-09-18 08:38:20', NULL, NULL),
(270, 1, NULL, '14d65bc8eb3e34e0d8680efacb3711246b26819c36597d524811d67cee4b90ba', '8d9a48b166eb4a1a3352640c77371c08', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-18 08:39:06', '2026-09-18 08:39:07', NULL, NULL),
(271, 1, NULL, '63c5b47dd7d0648aba8ba9033bc40ed26fda8a176140e57beea30ccd4879ea04', 'ff4a32a6967a769c9ddbafc534282034', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/152.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 152.0.0.0', '2026-09-18 08:39:55', '2026-09-18 08:39:57', NULL, NULL),
(272, 1, NULL, '1585331b1820685228e5119ed66c217dc97798545bbd1022c18a970cd1154e7c', 'b9e6a48abdfa7fa9867efee70c00bc90', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:40:51', '2026-09-18 08:50:37', '2026-09-18 08:50:37', 'cerrada'),
(273, 28, NULL, '334db2ffc7680a41d9eff9fce90a50c61adff15442baa51515e30fe2ab3ffd93', 'e14b01eeda5d3cd264b58371a88aab6a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:50:40', '2026-09-18 08:50:46', '2026-09-18 08:50:47', 'cerrada'),
(274, 1, NULL, '99efe292cecb6be9f38909015c032b3619dbc36412e3f87e05a7c5eb659a57e0', 'fb37bf3763e8b190bb9acf13e4ed5938', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:50:49', '2026-09-18 08:57:20', '2026-09-18 08:57:34', 'inactividad'),
(275, 9, NULL, 'a8ab60f0a1bd85ebf4d4b340f962ba671a8b17168c7b667523843bad7b4ac16d', 'c9e8a2f62045423fc47306ff0585d03e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:55:34', '2026-09-18 08:55:34', '2026-09-18 08:55:45', 'reemplazada'),
(276, 9, NULL, '051a100e47cc78ea22f3fd40c6fc2a33b5c520e9924ad8e1e12988892ab6771c', '8a4a5414bb764df500ef60846bb1e85d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:55:45', '2026-09-18 08:55:45', '2026-09-18 08:56:37', 'reemplazada'),
(277, 28, NULL, '79f9aefd22b18f705a536c953e086dc1b8221025d8e5e68dac26b916cbb7becd', 'e36316958751de9679a6ce4bb0cce55b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:55:52', '2026-09-18 08:55:52', NULL, NULL),
(278, 9, NULL, '343633685d6876643f2ddecb42001c6838aadcba2c079f8b9087d71d4116ceed', '56257279e41cad8fc812a6267b1d57dc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:56:37', '2026-09-18 08:56:37', '2026-09-18 08:56:51', 'reemplazada'),
(279, 9, NULL, '815fcf9870fcac5f0df143739615329c9d3b9ae0022940ea986366fcd73d9fe1', 'd4672f43cd7439c8fd2a21079d3a6071', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:56:51', '2026-09-18 08:56:51', '2026-09-18 08:57:07', 'reemplazada'),
(280, 9, NULL, 'bcfdf809f1de1b61416ee970ac1cc3b01b448505b7069b9d0de3064e21d51ebd', '93530d102fcb1518231a44390a2289b1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:57:07', '2026-09-18 08:57:07', '2026-09-18 08:58:13', 'reemplazada'),
(281, 9, NULL, 'ec4e82b5d1cf068694da33d5794b80988fe02ead34e62fa6f599ab671c9c5f97', '7dca4008faa758072c339cbbc55246df', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:58:13', '2026-09-18 08:58:16', '2026-09-18 08:58:30', 'reemplazada'),
(282, 28, NULL, 'd129bb87d7605624222aa7b2485f0bc1c242ebff82590537a2ac9779f61f4454', '9c1346b46b548af81ed3ae7394d2e408', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:58:14', '2026-09-18 08:58:16', NULL, NULL),
(283, 9, NULL, 'e3e0ba9a469e14503b2e093b6f84ef5ca3a923c1193d4ef3fe3b44eac6240e10', '231abd84173d116b6ef904d35eaf3b84', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:58:30', '2026-09-18 08:58:30', '2026-09-18 08:59:23', 'reemplazada'),
(284, 28, NULL, '31d790e0c49e25b7244c1bb73d0230ed5b78fb7b8c7048911e26429f6113f206', '5d4f58629504dab4e9d13d5a8ace4209', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:58:31', '2026-09-18 08:58:31', NULL, NULL),
(285, 9, NULL, '98a215f23468f54d469bc2ebe1cff871ce3bc9a48637b7657e3417a5e0609e5a', '8b46c56cffe98a67eef7662706301ce7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:59:23', '2026-09-18 08:59:23', '2026-09-18 08:59:52', 'reemplazada'),
(286, 28, NULL, 'ebb027533235408defbb1d1ba7df8ea9bbf8f0c041dc564d1adfa9e1a6ef1c48', 'eebf5c3a824fa0f90c3511d326f24b0e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:59:24', '2026-09-18 08:59:24', NULL, NULL),
(287, 1, NULL, 'a17c766f32e62f5587bc9bc8f089fc6e2312dcbb2f9834fb05f298695d8ec58f', '99c0ffe41c002b1bdb5c0cd74341ee24', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 08:59:37', '2026-09-18 09:00:17', '2026-09-18 09:00:19', 'cerrada'),
(288, 9, NULL, '6d5378419d2a41e0b8d7a6d4a55926669ff8c83b6f8a74df538cbe4fffb17a96', '927b54ce8b25dda665b3a10c8f59ff61', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:59:52', '2026-09-18 08:59:52', '2026-09-18 12:56:52', 'reemplazada'),
(289, 28, NULL, '220f65252b14244c73ee1e88545df926770e58c2c5e09e2de64f19304a03577c', '1cd2fd133fe58427c2057f37d1e813d1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 08:59:53', '2026-09-18 08:59:54', NULL, NULL),
(290, 28, NULL, '8a229e8ea55e592a11313a940b8a7b8e51a28bd0e7334ca07b321611004e6e5e', '6c93837c4d1fce25bec3e5c4646d3a10', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:00:24', '2026-09-18 09:21:14', '2026-09-18 09:21:16', 'cerrada'),
(291, 1, NULL, '9cd4fcd4b2fbd6d763617e3f81c0058494bc5f94645819a657fd02abaa05cdd2', '7d5954658897c077d5386304f6982562', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:21:19', '2026-09-18 09:21:50', '2026-09-18 09:21:50', 'cerrada'),
(292, 1, NULL, '1facbd787be503f0704cb3cadc2b8e98938fbb84268cec34cd92b82a5ad58ac3', '95a2941fbdc4741bb9f9f59fae407fbe', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:21:52', '2026-09-18 09:22:01', '2026-09-18 09:22:03', 'cerrada'),
(293, 28, NULL, 'b42cd1e8dd6ace7251a33ba0ab8dd3016ef23f614ca660f4248e7329d2d4d4ae', '14bc287bd1287f7c8725ba2586ec2af8', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:22:05', '2026-09-18 09:34:06', '2026-09-18 09:34:53', 'inactividad'),
(294, 28, NULL, '3578b0482e9aab7c17a11f5058ee5062083a0568f8d219f2fa3bf15b1cadbc18', '90c63d370c8e1dd9f9d4cda3ba0b3407', '191.156.116.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:39:30', '2026-09-18 09:48:10', '2026-09-18 09:56:27', 'inactividad'),
(295, 28, NULL, 'b0eb51d8a14559e06f08f9d4b1ab018b34b6bd7f3a2a59b13d063fc00181ecc4', '2b021d998d2813fcd14d039ccf70320c', '191.156.116.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 09:56:29', '2026-09-18 10:05:47', '2026-09-18 10:06:54', 'inactividad'),
(296, 28, NULL, '33f89bf3d4438328be4c65c48f42e7901ff49ec595e0440b644a75d98f0f04bf', 'd37e6a261175afd348b19672653f731a', '191.156.116.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 10:07:31', '2026-09-18 10:09:12', '2026-09-18 10:28:59', 'inactividad'),
(297, 28, NULL, 'dcf1e6e4f7440b4ad7b3fe82d0fc0616f81284ccfe0d3aa8b72c80c797980506', '6037b597169e6b7c3b5c5dff4dc60476', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 10:29:10', '2026-09-18 10:42:53', '2026-09-18 10:43:53', 'inactividad'),
(298, 28, NULL, 'b14efb1a1057cfa10b7e94b2f4bb3d9325c1ff0b468c851242b514a1534df5c4', 'bc27c278e88218a60a7bbb5ba4224700', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 10:46:07', '2026-09-18 10:54:38', '2026-09-18 10:55:54', 'inactividad'),
(299, 28, NULL, 'e959d641f3dbf79787279b17d5c873676d352b29bc162d29bf2994ab29e89c98', '7f0c8ba9a7e7388b4c97d95bcd0881dc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 11:01:25', '2026-09-18 11:13:12', '2026-09-18 11:13:53', 'inactividad'),
(300, 28, NULL, 'faddb81c2968348b28149fb02336f18a098921b4afb5bd7db54c9fa153d302de', 'e72d95d66e2f9edaf801d6652751c67d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 11:15:29', '2026-09-18 11:27:37', '2026-09-18 11:28:53', 'inactividad'),
(301, 28, NULL, '5c203bb5991a26d52a8c820314e5831ed656cc2a7d9f0d8ffa3ffa7d9c02aba3', '7c05be3bec3012b2bb2cb4f0617394e5', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 11:33:04', '2026-09-18 11:43:30', '2026-09-18 11:44:54', 'inactividad'),
(302, 28, NULL, '32d6940937831b084f80da201ea4931a0f135225bda56787e99d09f238511f5b', '4f73eea02072501004ea626e90463510', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 11:46:04', '2026-09-18 11:52:27', '2026-09-18 11:53:54', 'inactividad'),
(303, 28, NULL, 'e120196403c28e558856782c715b14ce223e6032ca433f261f30f88dea89dafc', '98a35e0b1cd072cbc32a49d19df61096', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 12:18:06', '2026-09-18 12:31:38', '2026-09-18 12:32:54', 'inactividad'),
(304, 28, NULL, 'c47b118fed965965a8568ed6050db2cc50d58707548c0358d9ee7dd802f56e21', '58c3dc0d7f976755b2132e9cd18d1001', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 12:49:51', '2026-09-18 13:49:58', NULL, NULL),
(305, 9, NULL, '5aab984c85765879c40344a42cb5b9902c330152440c6feeb90c6ed84ac56c60', '2b6e2ba4a5554f0f531b408647e95aa0', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:56:52', '2026-09-18 12:56:52', '2026-09-18 12:57:11', 'reemplazada'),
(306, 28, NULL, '623b81f29931f3323ad5681bf0ab569096c6a67ced4120af2c2a5538edd5e3c6', '7dee4f19414bdef26c23d1ad8bb7c995', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:56:53', '2026-09-18 12:56:54', NULL, NULL),
(307, 9, NULL, 'c15f93da221c50e07820e0608b81ea18ea73a7590a02e566cba6047af59a818f', 'e9223d72d40b8a4a3ab507ea3bea40ec', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:57:11', '2026-09-18 12:57:11', '2026-09-18 12:57:31', 'reemplazada'),
(308, 28, NULL, '2d3b2afaa4a4b39197cf2fd3b59b67faad1515c18342eacde382c0309fec2aa7', '95e93ebbc861594e5eb6533edd4801ab', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:57:12', '2026-09-18 12:57:12', NULL, NULL),
(309, 9, NULL, '1537140c03326247753322b66884a3f82b5cdae9fe9e2995eb910aca9e308b82', '636a18e30ffce158d6b7848cd8b62aa1', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:57:31', '2026-09-18 12:57:31', '2026-09-18 12:59:21', 'reemplazada'),
(310, 28, NULL, '7057dd0141882ddae91d1b5f883a4c584c84b3ce6c432f436f95beb6d25e21dc', '7475d82cd0fecb27871ff59d4dac434a', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:57:32', '2026-09-18 12:57:33', NULL, NULL),
(311, 9, NULL, 'f0fd4fa3ffcd3b073744cab7cb9fc26413c0a68466d52b91ed946f95c6b1e103', '3d66927fd560ce5848a5a6ef07ad66f2', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:59:21', '2026-09-18 12:59:21', '2026-09-18 13:00:32', 'reemplazada'),
(312, 28, NULL, '2fc2065e7eb8ad82dbf6cddde53a756d7c5b2077e32fb337fa4676c752682449', '986b92cdf6a9637e1ded7bca8b5ee9a3', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 12:59:22', '2026-09-18 12:59:23', NULL, NULL),
(313, 9, NULL, '0bee6bd60c86f06b7197e16b0e44e371c01ba55d7a51612d6ac9566a841bb113', '95d133809a02e48cc06f01edf8467045', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:00:32', '2026-09-18 13:00:32', '2026-09-18 13:00:42', 'reemplazada'),
(314, 28, NULL, '99cfa750f50b86d8c1bdf47b65de0730806f5d4de8a92c7acf531171479e61b7', 'dd224a23ecb5e7f22a2b004bb3c78aaa', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:00:33', '2026-09-18 13:00:34', NULL, NULL),
(315, 9, NULL, '819677c40ddc985e66b8bda166f6b4a18d5e7d0e9f0a7a4445083ae1b66854e8', 'b075d8b5eddf5ac70f3db7f97a24d281', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:00:42', '2026-09-18 13:00:42', '2026-09-18 13:01:27', 'reemplazada'),
(316, 28, NULL, '70821be22e9681d76be4b53f2b50c3b9b20973ed15e48366249d8c2bb68d89e5', '46db52d0659843514ae097006dc7a07c', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:00:43', '2026-09-18 13:00:44', NULL, NULL),
(317, 9, NULL, 'bade2636e2ffd1675efa9e8a483e6bfe0813a579e9aaeb7ff8e9fe218b092a0e', 'cc90b3dfcb941b07f6656ae0ad6a227c', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:01:27', '2026-09-18 13:01:27', '2026-09-18 13:01:54', 'reemplazada'),
(318, 28, NULL, 'c6bce36ed10ecdafcc56d429c67b424c0aa1a4fa9e44bf0cd16550c89a447445', 'e089c95f9df28dc57fc97f209ec40981', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:01:28', '2026-09-18 13:01:29', NULL, NULL),
(319, 9, NULL, '670fe32cfd9938dd58101b7d2991e610c5d198b1f8d5e5d79dc34efcaf941ea0', '17ded8e8a32a2cbd52532def1890fb13', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:01:54', '2026-09-18 13:01:54', '2026-09-18 13:02:29', 'reemplazada'),
(320, 28, NULL, 'f9ccbe68d4ad3b5b868bd69ad7d074f32375762b7e903d8bc2b18007a4487bf0', '592b624d433d4def9e59ed286c789530', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:01:55', '2026-09-18 13:01:58', NULL, NULL),
(321, 9, NULL, 'ccf8e231defbe414e9088cc51fdfa19a36082b5fde7e2f8286dae3d54931ca64', '113402901a9414f7989a055ffed2b2a5', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:02:29', '2026-09-18 13:02:29', '2026-09-18 13:02:51', 'reemplazada'),
(322, 28, NULL, 'a043cbe8589d1277450e8078e2ccd3ab225fdc6c05c88be38c2f6c5e10e5435c', '68fe72c6babcc4abcd1c53b10314fbb5', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:02:30', '2026-09-18 13:02:31', NULL, NULL),
(323, 9, NULL, '23c9da730f2a6f77716636da7452b83bf3196cfee78b2a5d266144e3f3f2414f', '35417484a96a3e55a00a92796a126ff7', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:02:51', '2026-09-18 13:02:51', '2026-09-18 13:04:18', 'reemplazada'),
(324, 28, NULL, '3c9ae1c1184c54e9853a7275f0c9a24991985fba5e2a758a881bfe46600b6ffc', 'c9c6bc1215a5914dfcc80b507e1cc488', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:02:52', '2026-09-18 13:02:54', NULL, NULL),
(325, 9, NULL, '4aa0d3a8473909bfa24d4d8cf072306c9c3aa7e4117b478237da5758a3547f25', '6a3d2bebe4f3feb6044805a3b6fae882', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:04:18', '2026-09-18 13:04:18', '2026-09-18 13:05:16', 'reemplazada'),
(326, 28, NULL, '41fe11f8e59fb9656fcdf88c16356f5f5a172a3623f7e71a9316b22d9ea0ed9e', '45a05f866ab5dd6ff2e887d6b8b8380a', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:04:19', '2026-09-18 13:04:21', NULL, NULL),
(327, 9, NULL, 'e3c399427a402af264b1e1f2fc67a8ad37a08c47e463b5c644db0baaff4a6a1d', '0765de569b654e6311d8acb9a168474a', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:05:16', '2026-09-18 13:05:16', '2026-09-21 08:00:39', 'reemplazada'),
(328, 28, NULL, 'f4469258a35efa6404ea6332fe49ca01da8a7436d525e839952ba23261337533', '8aea7f988bcb5ba6958b5ee5d7385b7a', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/130.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 130.0.0.0', '2026-09-18 13:05:17', '2026-09-18 13:05:18', NULL, NULL),
(329, 28, NULL, 'f0ff445225d0421743b0a0a9922da28781c77b85ad07daa631142b1d98263242', '70a848a98993da8a81db0e766a4128d6', '191.156.118.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-18 13:50:38', '2026-09-18 14:09:36', NULL, NULL),
(330, 28, NULL, '1e58b5568a6bbb502c24f35478a2d475329eb292c2589b29c9917842921a651c', '438f9a0aca809e41fecbc892339392e6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 07:57:14', '2026-09-21 07:59:54', '2026-09-21 08:00:00', 'cerrada'),
(331, 2, NULL, 'c4aaaf37d84d97b7d74899e728f48faf7e52cd6e29c3df6a1b9a634f0c3b12bb', '0551bb0816944a98ae9cc06dd39ad728', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:00:26', '2026-09-21 08:00:31', '2026-09-21 08:00:32', 'cerrada'),
(332, 9, NULL, '61c653715580fd376d17f4f38f7d2e66562618469b838c234063a90f58ed5ad4', '3e00b33f007cf1d6056e97d5b47b3cac', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:00:39', '2026-09-21 08:01:14', '2026-09-21 08:01:14', 'cerrada'),
(333, 28, NULL, '291a26047fc3c5150b91cb631d0e71201119e41081fcae3368a8633767421c10', 'b3b287146161717b9b84c7ea46aa2a75', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:01:18', '2026-09-21 08:02:17', '2026-09-21 08:02:17', 'cerrada'),
(334, 2, NULL, '5b2d18ac05f2e4ebddf85ded666180c3d8108b06ba52331dd9f8dd2853f07bf6', 'e4e252188306a8b041ab4724572433b4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:02:24', '2026-09-21 08:02:50', '2026-09-21 08:02:52', 'cerrada'),
(335, 9, NULL, '648d050eba936cc28680e8895495970008c425a0b8d84f594fc703f03a7ddd4f', 'db52936c7ea3ee3552db57d1797baa6e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:04:45', '2026-09-21 08:06:58', '2026-09-21 08:07:00', 'cerrada'),
(336, 28, NULL, '06c0e2f0ba62c7cc6f6d08a2542fbc0f6f492b2e91e915fd7967461afc68e98b', 'df4d94a50a3f6ea119ec5aaf2dd424f7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:07:03', '2026-09-21 08:14:17', '2026-09-21 08:14:18', 'cerrada'),
(337, 1, NULL, '3a49492696a51e2762c4edf7ef164f1351e6e39b451c3b2cfdb62a073bcb5898', '954174995f7fe55f2488a47c9c605b29', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:14:26', '2026-09-21 08:15:38', '2026-09-21 08:15:45', 'cerrada'),
(338, 28, NULL, '2093a744055bc0fe0de6751e77ead36d4de90622d4f95562b8aa165c14251ed5', 'ed277a80790077571b59fb0df9ad97cd', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:15:48', '2026-09-21 08:28:13', '2026-09-21 08:28:13', 'cerrada'),
(339, 9, NULL, '7627ce3e5a54b1fd8f7e1510cefcc9354533dccce24786d9f58a8a9d6d7fdbd9', '2e9966ac969463002fab826d5f84d500', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:28:29', '2026-09-21 08:29:55', '2026-09-21 08:29:55', 'cerrada'),
(340, 28, NULL, '66eb16db55f2c74ffb4f7da6375f2b45a5d2b32bde4c1c2b442eda6f1afc984d', '1a045c7f55d7d33102e6554ac5a5d3a0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:29:58', '2026-09-21 08:56:09', '2026-09-21 08:56:10', 'cerrada'),
(341, 9, NULL, 'f2f5c1fdd2beca0a0b87430e4e6ab3e5967b71e55ecefcc9fa7b9c2317bb08d6', 'cf0612c1de8d9360e0899a9390039536', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:56:14', '2026-09-21 08:56:29', '2026-09-21 08:56:30', 'cerrada'),
(342, 28, NULL, '6fc854372327bba728f2b1058dd3e4b0ff16f41250909d29c753e4bc6361cf67', 'fb62e7fd85298ffb8e4081a667d52211', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:56:33', '2026-09-21 08:59:15', '2026-09-21 08:59:17', 'cerrada'),
(343, 9, NULL, '4feeead16e5a8c7c067b56828eb05acac47f3472505d1af97210e3b227e98872', '64fe02b0a6f191787c2ce2c5f1e2c9d3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 08:59:22', '2026-09-21 09:00:04', '2026-09-21 09:00:09', 'cerrada'),
(344, 1, NULL, '16fde867f791ce66649fc97c98cdbf5780e2c823195b7cbf487f1f2a9484706b', '99dcddadbc2a7474371e8335ecee2840', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:00:12', '2026-09-21 09:12:20', '2026-09-21 09:12:29', 'cerrada'),
(345, 28, NULL, 'ecb7fb458226a87032a358bb87c25f73a20972c2af110229f1be175da0f528e7', 'd4dd123fc5e8ab834765d06024156ed2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:12:32', '2026-09-21 09:18:28', '2026-09-21 09:18:29', 'cerrada'),
(346, 1, NULL, 'e7b2c466a662f8d17f9331efc4720f254f376f8a3c03e477eb857f47ede22076', '3c6b0d5ee7a817916793f132498e4d0d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:18:38', '2026-09-21 09:19:11', '2026-09-21 09:19:12', 'cerrada'),
(347, 32, NULL, '0e94f396e54750f73565a6253637f1960182ccbd113e3d8141de808e72e6debb', '50def3e4091cbca600e1c464fb0e9a3b', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:19:16', '2026-09-21 09:20:20', '2026-09-21 09:20:22', 'cerrada'),
(348, 28, NULL, '555dd8f36cddeccda074010e445194e7b0c15d35d7212399c99ff9ff723d511e', '68b9e4e9fb6bd00dc422767c1226e562', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:20:26', '2026-09-21 09:21:42', '2026-09-21 09:21:42', 'cerrada'),
(349, 9, NULL, '33116cd4ebf5f9a69a3d3ee28e6b5c06286083b8092d09bd6de300896d05ea88', 'e0e36d97281f01895dd5c171a5ce059a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:21:46', '2026-09-21 09:22:33', '2026-09-21 09:22:34', 'cerrada'),
(350, 28, NULL, 'bd9b9e4e38a5035c5562fb766a487d4c9d0f787ce34dabcf7f278681202043b9', '458317258b57b3bb1043a40f15dc7810', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:22:37', '2026-09-21 09:42:26', '2026-09-21 09:42:27', 'cerrada'),
(351, 9, NULL, '7af73be1dfb4820139394fa198b441824d8cc75fea8217e7fcd618735e08c987', '0290f99b2bee478c283b02c05d94db09', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:42:39', '2026-09-21 09:42:59', '2026-09-21 09:42:59', 'cerrada'),
(352, 28, NULL, '382af13e81384e488dddfa631aed62d21f3b708df3ae9f3fce080eebef5879d0', '2921fe0b9273a8b0e5f409defd8145d6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:43:03', '2026-09-21 09:48:07', '2026-09-21 09:48:08', 'cerrada'),
(353, 1, NULL, '86e6c8b47215b12519f83d115e526fb5c5d2c514d7b57456ab8bf7fcd30494b5', 'c77a0bc1e56a2793dc7fd0300a96e6e9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 09:48:11', '2026-09-21 09:54:09', '2026-09-21 09:54:27', 'inactividad'),
(354, 1, NULL, '83217b26930ab10b1118c81f9f76eee542a860110e50c8ae790d98b838aa888b', '12c970bdb53d157aadffac3f789fdf93', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:38:01', '2026-09-21 10:38:11', '2026-09-21 10:38:12', 'cerrada'),
(355, 1, NULL, 'ddeb784568887904cfaaaf3689295b025e9af15c05b76095183d4e8cbd8c8d12', 'b636c74498dfc435182d357e3ba66c1c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:38:14', '2026-09-21 10:40:46', '2026-09-21 10:40:48', 'cerrada'),
(356, 1, NULL, '47b0667d561aafa98cec1959e4a14ac4f13186d7f14aba6f3120c686f71d8355', '9f7ede18bb73edae0a800e1287ea4e9c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:40:50', '2026-09-21 10:42:00', '2026-09-21 10:42:00', 'cerrada'),
(357, 28, NULL, '81810075aa8744ab20ba68d24e38c64504cb1221ae1c1e24d71c8de53c609af8', '9bc9e1d48a2c0e5e82e6d60d818e390f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:42:05', '2026-09-21 10:43:30', '2026-09-21 10:43:30', 'cerrada'),
(358, 1, NULL, '20e1b98dc6e6a9e5a9cff0af39a07b380f938874c9ae3d83e9847eb7ae8616ed', 'f8db6b9b866dc676436ec787bce10fa4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:43:36', '2026-09-21 10:48:37', '2026-09-21 10:49:01', 'inactividad'),
(359, 1, NULL, '4018a552fdc3e72a0b321e3c0a669195612bdbcab7ea83420f140953551a9a2e', 'd75c1250f8b377ca9a384cd27c3ec81f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:44:01', '2026-09-21 10:49:32', '2026-09-21 10:49:37', 'inactividad'),
(360, 1, NULL, 'ad168be8aad9529961cba6656e198f8d4388df44e905384abd7eef73c25abd6c', '2eedfe11277166da4b4a59b03ac7f71f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:49:57', '2026-09-21 10:50:01', '2026-09-21 10:50:04', 'cerrada'),
(361, 1, NULL, 'fa2d84b15fe12d805e9bfa000f0b2ea06bfc1943df52dc80a9dcfa685f6958c1', '008e609b56a5588ffc12e778874d6507', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:52:28', '2026-09-21 10:52:44', '2026-09-21 10:52:48', 'cerrada'),
(362, 9, NULL, '3cef945036a7f23f0dea6631327205d2414ce15ec44b95b34946fdd803e623b7', 'ab955a6271c1df4948410fe8e5557e90', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 10:52:57', '2026-09-21 11:05:53', '2026-09-21 11:05:53', 'cerrada'),
(363, 1, NULL, 'a00117308461b9190aa8b97856960bb47e30bf2bfc602668deb841f66fbf94fb', 'bada971c647865c0b92865ca18d4b07c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 11:06:31', '2026-09-21 11:06:34', '2026-09-21 11:06:35', 'cerrada'),
(364, 9, NULL, '0f7c11bca2dee0f028cf689689affcd3b5d662c581220ddced300b3c54422232', '42fe701179987b1cc8d3376f2f3fc5c0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 11:06:41', '2026-09-21 11:22:42', '2026-09-21 11:23:04', 'inactividad'),
(365, 28, NULL, 'd3143f9eefe976161a8dfeaf8c568ad946df6efa26c36c1001717d29659f1773', 'fe5c32dcf4e959ade7e965a0bcba43af', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 12:36:35', '2026-09-21 13:03:10', NULL, NULL),
(366, 28, NULL, 'c2d186c3ef00d39f672990347c2826679620f461a1771a4113be86967843e579', 'f5cecfa974beb05e4e8b498fb1ab9541', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 14:08:13', '2026-09-21 14:08:44', '2026-09-21 14:22:17', 'inactividad'),
(367, 28, NULL, 'ee801cc2fbb225d3613557326edc5562e40971253d3592caf4afc33acff4ac27', '05afbf5758858de15f3e568037b21f36', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 15:53:13', '2026-09-21 15:55:20', '2026-09-21 15:55:22', 'cerrada'),
(368, 1, NULL, 'c88200701933f8a5f394943bdbdb29f2513b21d85ab69c9a813170ad088cec6d', '3f9fa6a7655632c2d47083be324513f6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 15:55:25', '2026-09-21 15:55:45', '2026-09-21 15:55:47', 'cerrada'),
(369, 28, NULL, '89c6bb7d631868546bb5e4e0cba1b13650d2d77cc009b7bc37d8321dbd9eb3e1', '1210988c4ccec4a7329a5a63a1c831c2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 15:55:51', '2026-09-21 16:06:53', '2026-09-21 16:08:09', 'inactividad'),
(370, 1, NULL, 'f8d1ff9ea995218b558264b744f41d44cffc70c7439a3db3f10784ac8dd7bd7c', 'ae502c4367c6fe16dc808e047445ba7c', '191.156.154.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:12:52', '2026-09-21 16:14:32', '2026-09-21 16:14:35', 'cerrada'),
(371, 28, NULL, 'c1cfdad9a367621b5e86f8ed9bfe123d75db1b6b691552d408b8b2b91f0b4922', 'ab1e9b2fdc217e1ec9e5b92a5b961ace', '191.156.154.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:14:39', '2026-09-21 16:17:12', NULL, NULL),
(372, 28, NULL, '61a2283ab2653c7493506c500f0e6a9c07e9623828825813cb32aa45c6c5e9d9', '95c8d14e29a7a4202922f38966cc9b8f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:26:22', '2026-09-21 16:37:58', '2026-09-21 16:37:59', 'cerrada'),
(373, 9, NULL, '1bd7d82cc85e3c4d9b0374d7e7c65a70377a46ee9593f2b8e27862866103764f', 'd64cea8037bf6c86fbd8da9ea4d78d26', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:38:03', '2026-09-21 16:38:20', '2026-09-21 16:38:22', 'cerrada'),
(374, 1, NULL, '08abd27d981dc54f1f57e455b5e75c13c6b89e5542e96b3116eee05cf55d9922', 'bce1bc11b158050290d094083c3b4229', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:38:25', '2026-09-21 16:38:33', '2026-09-21 16:38:41', 'cerrada'),
(375, 20, NULL, 'f85fe5b2d0396870a3a19381188fc0162140dc010d44ae5947e2cdd798a45b4b', '69d0cd32b1876721ab1028d407ab0a64', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 16:38:54', '2026-09-21 17:04:03', '2026-09-21 17:04:04', 'cerrada'),
(376, 1, NULL, '32e51351780b654b4263c784e223afaec709e39214abcfe8a073a94a933d4a15', '6ab8723e01aff8564809bffd863a552f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-21 17:06:08', '2026-09-21 17:28:09', '2026-09-21 17:38:06', 'inactividad'),
(377, 1, NULL, '3f027c447d1b5f7bc5632dc3eea72e1e5072157da841e95fa9deebc0618306d1', '42e16bf33a9b935309b275dda43f06c6', '200.118.60.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'Computador', 'Windows', 'Chrome 153.0.0.0', '2026-09-21 20:22:49', '2026-09-21 20:28:35', '2026-09-21 20:28:43', 'cerrada'),
(378, 1, NULL, '3a5d098668fe18013675353485fa08d191dee9c851bf2ae21c8ef939a887440f', '6ee1dda6d888cc49143834324ea97525', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:32:30', '2026-09-22 07:32:40', '2026-09-22 07:32:45', 'cerrada'),
(379, 1, NULL, 'bda1d76411b896810feff11f344aa48b2819a234b13bb6f5b2425444861d95e3', 'd03cff537761941e4528d9aaa600d338', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:33:23', '2026-09-22 07:33:23', '2026-09-22 07:38:58', 'inactividad'),
(380, 1, NULL, 'cfa2a57a09208281fb5b9bb599b98e35ed084d73643d01bef7e6ecb057064558', 'ecc221f2bf538f485e13568ef1238d3c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:39:02', '2026-09-22 07:42:03', NULL, NULL),
(381, 1, NULL, '78504d30571e03da7bca280ba2ca454a646f31af41115ec9317475fb56078da7', 'b17346b856638e1512a2ec4148a7df04', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:42:29', '2026-09-22 07:42:38', '2026-09-22 07:42:40', 'cerrada'),
(382, 28, NULL, '7e7a88261120022a3a366cb57336fe05d4fe286efb88edfba462bb1f907aa0aa', '74424b4ba127a4cbeb8ffc764f2e74b1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:42:43', '2026-09-22 07:42:53', '2026-09-22 07:42:55', 'cerrada'),
(383, 1, NULL, 'ffe0ac9f740faa530b09b8b3dd698fb4f11cac651cb22a30d88e82a6efdb4ab8', 'f93be0cd3b82dfb9d1d6f25170894af4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 07:42:58', '2026-09-22 07:48:29', '2026-09-22 07:48:55', 'inactividad');
INSERT INTO `sesiones_usuario` (`id_sesion`, `id_usuario`, `id_perfil_gestor`, `token_hash`, `php_session_id`, `direccion_ip`, `agente_usuario`, `tipo_dispositivo`, `sistema_operativo`, `navegador`, `inicio_en`, `ultima_actividad_en`, `cerrada_en`, `motivo_cierre`) VALUES
(384, 1, NULL, 'e95f051c83e7a79bff3c07e55c2ceff9e22ca1f38b9a342055232fd096a00b4f', '0f5747a01596b0d3a4b36848c8b13f31', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 08:39:53', '2026-09-22 08:57:43', '2026-09-22 08:57:50', 'inactividad'),
(385, 1, NULL, '5a0fb3009bf876970ccca05fb0f312ca4cf04d542b047b01b27593f281dd363b', '23942fff0022a1bda0ece9a11dc292a3', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 08:40:04', '2026-09-22 08:40:18', '2026-09-22 08:40:23', 'cerrada'),
(386, 1, NULL, 'a6e6328a0e7f9d196d9a483d74ba886148ee9ae0e9e60706f37a547a601a56da', '9bcd61ff520f1109bb5745790b4a7aa0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 08:40:27', '2026-09-22 08:40:51', '2026-09-22 08:40:51', 'cerrada'),
(387, 1, NULL, '7ef8c7f4288998c794705031481c50a6b8be72fb3074792e298ecef3e669cce0', 'd923678cab8fac79466ccc709c13f650', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 08:40:59', '2026-09-22 08:41:02', '2026-09-22 08:41:09', 'cerrada'),
(388, 1, NULL, 'a5e271461ca0ed9fe047d658f7f131f241a68c2e914265ff21ac6fed9f2e9515', '7f832560e8fd17d51dd5bf98b79eb1da', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:02:04', '2026-09-22 09:02:06', '2026-09-22 09:02:10', 'cerrada'),
(389, 1, NULL, '5b2cbeea0a2ee0492473b6876010dd2bdad06fcb04023d1da209a24ff9bfd00f', 'a7c25d005e6dd8db046fc78d809265a7', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:02:47', '2026-09-22 09:03:04', '2026-09-22 09:03:06', 'cerrada'),
(390, 28, NULL, 'f75bb12f75fa31498c91e8eecf5eee75538135f8a3b910811901e0f298b842fd', 'c5f4898375aad25142814bc1cb7d9066', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:03:10', '2026-09-22 09:05:41', '2026-09-22 09:05:41', 'cerrada'),
(391, 28, NULL, 'd4ad53a9fbaa2c94fdddeb08c37dd9431bfb749310844d33037b6948847bfb03', 'b2a19e39038d1b5536a9bf66b487c545', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:05:43', '2026-09-22 09:15:02', '2026-09-22 09:15:03', 'cerrada'),
(392, 28, NULL, '4b24eb08a01b3bf4e86d0fad70610876174619a55e383cfc6243bc631b52151b', '80291d00eb10894d6184cd0cf9d29947', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:06:46', '2026-09-22 09:07:16', '2026-09-22 09:07:17', 'cerrada'),
(393, 28, NULL, 'c4c7e176ad5ca7e0f9f78ef7d16dda24012f5bbba578c4b162165e91e6921fec', 'e18faf71a5f4c2e9f842675e108f2055', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:07:24', '2026-09-22 09:07:30', '2026-09-22 09:07:30', 'cerrada'),
(394, 9, NULL, '25a5978393a6e5872453b3e58d8cb595d0f6d724248bbd08cf5ca7bb5e3d2686', '34a9ce8e8c957baef41cce64c70614e9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:07:38', '2026-09-22 09:07:44', '2026-09-22 09:07:44', 'pestana_cerrada'),
(395, 28, NULL, 'd8d02bacc0c0ec9a69aab6defb9249f1320e6ab59c29081a7d0ab25dd2efe1b1', 'b39abd368f3143db660abab343657a44', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:15:32', '2026-09-22 09:15:46', '2026-09-22 09:15:49', 'cerrada'),
(396, 1, NULL, '3c26cae2b75bbd45419339446dd24910735c02b493efa72871cf963280c51586', 'd20c203c89d99d0504836afe4ba601c9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:15:52', '2026-09-22 09:34:52', '2026-09-22 09:35:10', 'inactividad'),
(397, 1, NULL, 'cb1b55324a56e2bd761293df51193fd7b84950fcbcd908f6d5e456c9de7347ca', 'f5c10d61a3fab1f6db56df48ad6c7fce', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 09:40:13', '2026-09-22 10:05:08', '2026-09-22 10:06:08', 'inactividad'),
(398, 1, NULL, 'f3a7e557d011e2c60f6ad232660f62bb7cbe9c9f250a835cd1966df09d69766b', '1641fbc7a9ed58ff297743ddf387f608', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 10:38:24', '2026-09-22 10:39:40', NULL, NULL),
(399, 1, NULL, 'eac68ef5302a7a9bc4b462d6d76026081ae15d8e2483b68daba9ee2da39f79e1', '59ab59efab13ff86a25b12967b2765c0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 10:40:10', '2026-09-22 10:41:11', NULL, NULL),
(400, 1, NULL, '41d730db8c2e26cfa2fd662f5d2e3c431ea232691f0c0914b3f815a6029d8c1d', '1473af6817266ee1de09da325d6f2aa2', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 10:41:35', '2026-09-22 10:42:36', NULL, NULL),
(401, 1, NULL, '09205542c710915106dac89621f0a664900793634b3a4c323e2ee090ba38baff', '15dcc7f11ec6e221fdbf8c3bf9c8f311', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 10:42:49', '2026-09-22 10:52:50', '2026-09-22 10:53:09', 'inactividad'),
(402, 1, NULL, 'b96aa5b3c2fd9e650fd231aea71bb66a85371da67f3f6104d5dc3af6b1398a4e', '12173b985cf4094c087918e946f77156', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:01:39', '2026-09-22 11:01:42', '2026-09-22 11:01:42', 'cerrada'),
(403, 1, NULL, '6a2692cd2271ea3c9d971bf0036adb777aea11a00e9e8de5283b3c6b02e87d2f', '1869bd7f3b6e75ca5dd9b0c6cad5aa8c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:01:56', '2026-09-22 11:06:58', '2026-09-22 11:08:08', 'inactividad'),
(404, 1, NULL, '38d0affb2a9ee1e3f48fd05d330b2038307b24eb3b6343f84019b50e460f0feb', '47c819f413bb2c27c67cdc743c157610', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:11:17', '2026-09-22 11:22:17', '2026-09-22 11:23:08', 'inactividad'),
(405, 1, NULL, 'f1f2734ad81892b389ee002e1a4c1cf11a6b1568d776936f100b3491a066046f', '79cfb3c3e7afa66169526eb797f7ec8f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:11:34', '2026-09-22 11:11:45', NULL, NULL),
(406, 1, NULL, 'd4ad3ea96018fa7842df9079838b4ee4015953ac72d1702ef17b8a3803aff2ac', 'b3550766a658c56fd062eb4a7f266c29', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:12:34', '2026-09-22 11:12:43', '2026-09-22 11:12:46', 'cerrada'),
(407, 1, NULL, '0a272a88ce4cd5a32df48c885842f4242565501fcd313d2d8e28167b6209c466', '0bedc2b79b0de519fa835c2c56664adb', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:15:03', '2026-09-22 11:15:16', '2026-09-22 11:15:21', 'cerrada'),
(408, 1, NULL, '57d0dc90d41200cd7f3938021c9c1e0452aacdf0898dde7aeed4e169bc0c9ff8', '8cbcec9ecd0b9d97ba2a023f74dd180a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:15:24', '2026-09-22 11:15:54', NULL, NULL),
(409, 1, NULL, '7f61fabe4c9de4bd31fe22fe929ac5690a77659f913461a84f8a774236b26510', '8a1b7df2bea4b7ccefa6579c514ceb7a', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:17:26', '2026-09-22 11:30:57', '2026-09-22 11:32:09', 'inactividad'),
(410, 1, NULL, 'c6852a725b99d455c83db66107a3776c9d9f15f8742de82531163311a94f03d3', '2f4cb41f9a67ae2b1b173f52487a4f14', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 11:51:53', '2026-09-22 11:59:24', '2026-09-22 11:59:31', 'inactividad'),
(411, 1, NULL, '9ed93e4294c304f8e61f82a7ecc597f9624104633c3e40b34d68911a9a3cea24', '1b0ee7810ea69def5caa4dcf8f16a63e', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:00:00', '2026-09-22 12:05:01', '2026-09-22 12:05:21', 'inactividad'),
(412, 1, NULL, '235789886d013e4d30018fefe2bb8be192ba747b9c806ba3929321ccaa2f9fb3', 'aebf2b4926ddd40d36718211d75487db', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:15:24', '2026-09-22 12:18:28', '2026-09-22 12:18:28', 'cerrada'),
(413, 9, NULL, '94ed17a76cfaf1061d377eb3dc5c391e99448b53665bcb1670585ceb58a9567b', '5ca76be60fccf85e0049a01990d2fbfc', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:18:36', '2026-09-22 12:18:57', '2026-09-22 12:18:57', 'cerrada'),
(414, 28, NULL, '3483e5abfd250035e9b6b5168d76225beed5b07bc79c3b2b0ad6b83c3882b728', '28f01f6dbc17160452e2f38d3d8d1ab4', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:19:00', '2026-09-22 12:26:31', '2026-09-22 12:27:09', 'inactividad'),
(415, 28, NULL, 'f93674a662d8c08a5e51ada6a4962a3daa82bc9c379388e66ce02268b12ad4aa', '1f4054c2773c8a4ff4251530ea3f9921', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:28:15', '2026-09-22 12:35:23', '2026-09-22 12:35:27', 'cerrada'),
(416, 28, NULL, 'e672b5ba2824ccfd7db5b80679ff7a102f76a801af8489001ab449895c811136', 'fe9833e18cd939b656a5c27702895582', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:28:47', '2026-09-22 12:34:49', '2026-09-22 12:35:11', 'inactividad'),
(417, 28, NULL, '05c2ed6850a023d401fa448e0ece4ff59b88845e9775cdf848d8ece9d59d3c8c', '2bf139b4d176a45bc90c96120169c867', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:35:34', '2026-09-22 12:48:49', '2026-09-22 12:48:49', 'cerrada'),
(418, 9, NULL, 'bb8831b865be0f2c49a4a98030bfe4c36f61aa3bab58671555888b981c81e5ed', '476c5b35e051e7a0dd2028b986536003', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:48:56', '2026-09-22 12:52:18', '2026-09-22 12:52:19', 'cerrada'),
(419, 28, NULL, '414ee71dd79db88c886293755927a3ecfb5524379f1263af01c578a4c723754e', '528ad2108303a0cf80a2fd5712042c6d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 12:52:23', '2026-09-22 12:57:24', NULL, NULL),
(420, 28, NULL, '1aef83a7e3bb84a7642c7e741a0880a365c776563a1112f73f908c54fa18160d', '74d5203b695512d9053dddc6957579f3', '191.156.150.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 14:11:40', '2026-09-22 14:27:03', NULL, NULL),
(421, 28, NULL, '6cc8c8d0e8263687d1c79c203ae56a1ccc89ac85fbc63e5d643c73174fccd911', '8b0b3a36a942f6b9a5c6c2dda2a1623f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 15:01:44', '2026-09-22 15:08:45', '2026-09-22 15:09:08', 'inactividad'),
(422, 28, NULL, '021c1f27c534dc18c5ea5f3cf65b025f2305854918116822b5d5276391fab2d3', '5ed722055bd850246742af62b0e42628', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:04:27', '2026-09-22 16:12:31', '2026-09-22 16:12:33', 'cerrada'),
(423, 9, NULL, '95e7b08601455df3f3b38bb362cedd5db421ec9a6b8fbe21d8f67fc517359fd7', 'b30f427d156671b6d9b39f81816d41d9', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:12:41', '2026-09-22 16:16:52', '2026-09-22 16:16:53', 'cerrada'),
(424, 28, NULL, '37b39b6037fb45b51766131046f28563798c87165b43928eedadf9407fd099d8', '7c016c2c345ea1efc5cecd28164a66ad', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:16:56', '2026-09-22 16:24:56', '2026-09-22 16:24:58', 'cerrada'),
(425, 1, NULL, '0b13bdb1011365d548d016f5e632a104a34984a72b650c53fb006e736e52bd5e', '5feefaf9ae7adc1c2739b37d19ad1a3d', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:25:02', '2026-09-22 16:25:51', '2026-09-22 16:25:58', 'cerrada'),
(426, 2, NULL, 'ca41cea3c72e267f0171e6aaed5c0a8e06291dcc0fbd176420305dffe4037b71', '3acfd7facc4a6e9c5ebb7921146c5639', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:26:01', '2026-09-22 16:26:22', '2026-09-22 16:26:22', 'cerrada'),
(427, 28, NULL, 'ed2bcf34e31514752bf8730e9a15441f784c169c39c44e965410d89a833952bf', 'c537beae496cd8cd0335384438af1fc0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:26:25', '2026-09-22 16:26:50', '2026-09-22 16:26:50', 'cerrada'),
(428, 1, NULL, '27274b10dd2cf091000346448e20ceaf6db3ed44030d3028ed9c2d6d60b6f51b', '63ba78aff914287ab27cd25c0916e7a1', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:26:53', '2026-09-22 16:26:58', '2026-09-22 16:27:03', 'cerrada'),
(429, 32, NULL, 'e9d58e250225c56f8948ce40266e4d433ae43ffb08e165535bd120e6add63da6', '458ae53a28e5ba444bda4f6a8fc164a6', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:27:06', '2026-09-22 16:27:10', '2026-09-22 16:27:16', 'cerrada'),
(430, 1, NULL, '0a83b80a8ae3f336c3d0fd837076690cf274502e9025fc396102b8e853f6141c', '825cea6826c43432feb6f3d233978797', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:27:18', '2026-09-22 16:27:20', '2026-09-22 16:27:20', 'cerrada'),
(431, 28, NULL, '3cbc09d575a3e5fcb19f71a5ddb992139ce374fcf9e91c10a0de81298421424a', 'bad687b430d9e7748950150b8ad87edd', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:27:24', '2026-09-22 16:37:19', '2026-09-22 16:37:20', 'cerrada'),
(432, 32, NULL, '48d4bae7a09bce03b3d42558ed686e684942843379edd22539352e9c1a241483', 'e6491e47321e3db292dd580ff4fe199c', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:37:27', '2026-09-22 16:42:27', '2026-09-22 16:43:16', 'inactividad'),
(433, 28, NULL, '180b5e41d42b3d183f50e7bd0f71c191eaacf5d683bb54b299a69c11b97126a9', '95e570ec6de2f783bb493550750cdf51', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:43:42', '2026-09-22 16:44:34', '2026-09-22 16:44:35', 'cerrada'),
(434, 1, NULL, 'b83a56fbad6bfbd806db2bb3e4d966cbc7b1761446fc04aac42d936b0750a556', '167117609751ca3e45cf5caef9ca9d5f', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:44:37', '2026-09-22 16:45:15', '2026-09-22 16:45:17', 'cerrada'),
(435, 32, NULL, '40efbc917651fc3752072c40f5e4f1a033ab5da1c3870736f470404f5c1e34ef', '778a5ed4adc0c7fc22efb0cae86a85a0', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:45:25', '2026-09-22 16:45:59', '2026-09-22 16:45:59', 'cerrada'),
(436, 28, NULL, 'e58f320b5efa7e59686a6443b9c4b7a94c955ccb396c55b4916ebd3dbc42ee5e', '2a45a045ab186c3641b7f5a40c823a90', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:46:04', '2026-09-22 16:46:13', '2026-09-22 16:46:15', 'cerrada'),
(437, 1, NULL, 'cca017b58d269d4179747fa251dd421d721a401ec79568e1c0e5aad259aed0fb', '8a4a50c4f49c0d1ba6d4de40f9356b72', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:46:18', '2026-09-22 16:46:22', '2026-09-22 16:46:30', 'cerrada'),
(438, 32, NULL, 'c566368b6ed0b3411f4feaf41d82d7b45db37d522fedfc8dd96ec3c9dab8c359', '8f0faef5bcbe8a07b978c7b8d63bee81', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:46:34', '2026-09-22 16:52:05', '2026-09-22 16:52:22', 'inactividad'),
(439, 1, NULL, '4bb92407f1a08499a6b2cef25fae17cef9cc11ba3e0a7d9e0a6cf125156357f9', 'be24c589bc6e7a06c606eff761e8af22', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:53:25', '2026-09-22 16:54:25', '2026-09-22 16:54:37', 'cerrada'),
(440, 32, NULL, '8d0ba804bb10845338140f59bf50eb87861631011212e8133c3610a72ddce627', '7c1d258f8f96a9e0391417b6a7bf35db', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:54:43', '2026-09-22 16:54:51', '2026-09-22 16:55:00', 'cerrada'),
(441, 28, NULL, '815f1d86439630dcae9e0c4683b8541a74d78354c356ce2011e461997433ab3e', '936bdcb1aca16f59b3020831048edbce', '201.244.156.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'Computador', 'Windows', 'Microsoft Edge 153.0.0.0', '2026-09-22 16:55:04', '2026-09-22 16:58:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones_usuario_paises`
--

CREATE TABLE `sesiones_usuario_paises` (
  `id_sesion` bigint(20) UNSIGNED NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED NOT NULL,
  `primera_visita_en` datetime NOT NULL DEFAULT current_timestamp(),
  `ultima_visita_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sesiones_usuario_paises`
--

INSERT INTO `sesiones_usuario_paises` (`id_sesion`, `id_pais_operacion`, `primera_visita_en`, `ultima_visita_en`) VALUES
(4, 1, '2026-09-02 16:25:15', '2026-09-02 16:26:57'),
(4, 2, '2026-09-02 16:26:06', '2026-09-02 16:26:24'),
(5, 1, '2026-09-02 16:25:49', '2026-09-02 16:26:37'),
(6, 1, '2026-09-02 16:32:49', '2026-09-02 16:40:16'),
(7, 1, '2026-09-02 16:45:58', '2026-09-02 16:59:15'),
(8, 1, '2026-09-02 21:32:06', '2026-09-02 21:33:56'),
(9, 1, '2026-09-02 21:36:07', '2026-09-02 21:36:51'),
(10, 1, '2026-09-03 07:38:15', '2026-09-03 07:39:36'),
(11, 1, '2026-09-03 07:49:29', '2026-09-03 08:04:29'),
(12, 1, '2026-09-03 08:04:34', '2026-09-03 08:15:19'),
(13, 1, '2026-09-03 08:20:51', '2026-09-03 10:18:28'),
(14, 1, '2026-09-03 10:33:43', '2026-09-03 11:40:47'),
(15, 1, '2026-09-03 10:35:43', '2026-09-03 10:37:28'),
(16, 1, '2026-09-03 11:52:54', '2026-09-03 12:26:15'),
(17, 1, '2026-09-03 14:09:53', '2026-09-03 15:02:39'),
(18, 1, '2026-09-03 15:02:54', '2026-09-03 15:03:52'),
(19, 1, '2026-09-03 15:03:57', '2026-09-03 15:38:28'),
(20, 1, '2026-09-03 15:20:32', '2026-09-03 15:31:55'),
(21, 1, '2026-09-03 15:39:17', '2026-09-03 15:40:16'),
(22, 1, '2026-09-03 15:40:06', '2026-09-03 16:00:32'),
(23, 1, '2026-09-03 15:48:21', '2026-09-03 15:48:40'),
(24, 1, '2026-09-03 16:00:41', '2026-09-03 16:03:18'),
(25, 1, '2026-09-03 16:01:31', '2026-09-03 16:08:45'),
(26, 1, '2026-09-03 16:11:24', '2026-09-03 16:12:04'),
(27, 1, '2026-09-03 16:28:46', '2026-09-03 17:01:53'),
(28, 1, '2026-09-04 07:37:42', '2026-09-04 07:41:54'),
(29, 1, '2026-09-04 07:49:45', '2026-09-04 07:50:57'),
(30, 1, '2026-09-04 07:57:39', '2026-09-04 08:06:52'),
(31, 1, '2026-09-04 08:21:04', '2026-09-04 08:46:00'),
(32, 1, '2026-09-04 08:54:58', '2026-09-04 09:02:04'),
(33, 1, '2026-09-04 09:08:26', '2026-09-04 09:09:06'),
(34, 1, '2026-09-04 09:15:07', '2026-09-04 09:15:12'),
(35, 1, '2026-09-04 09:48:48', '2026-09-04 10:02:25'),
(36, 1, '2026-09-04 10:22:46', '2026-09-04 10:22:46'),
(37, 1, '2026-09-04 10:29:40', '2026-09-04 10:45:17'),
(38, 1, '2026-09-04 10:51:54', '2026-09-04 10:56:53'),
(38, 2, '2026-09-04 10:52:25', '2026-09-04 10:53:03'),
(39, 1, '2026-09-04 11:06:43', '2026-09-04 11:19:26'),
(40, 1, '2026-09-04 11:31:16', '2026-09-04 12:22:12'),
(42, 1, '2026-09-04 12:08:34', '2026-09-04 12:19:25'),
(43, 1, '2026-09-04 12:19:33', '2026-09-04 12:22:35'),
(44, 1, '2026-09-04 12:28:49', '2026-09-04 12:28:53'),
(45, 1, '2026-09-04 12:29:28', '2026-09-04 12:29:29'),
(46, 1, '2026-09-04 12:54:04', '2026-09-04 12:54:30'),
(47, 1, '2026-09-04 12:58:52', '2026-09-04 12:58:55'),
(50, 1, '2026-09-04 13:52:47', '2026-09-04 13:55:52'),
(51, 1, '2026-09-04 14:10:05', '2026-09-04 14:10:12'),
(52, 1, '2026-09-04 14:19:01', '2026-09-04 14:19:01'),
(53, 1, '2026-09-04 14:19:08', '2026-09-04 14:29:13'),
(54, 1, '2026-09-04 14:21:39', '2026-09-04 14:24:37'),
(55, 1, '2026-09-04 14:29:20', '2026-09-04 14:29:32'),
(57, 1, '2026-09-04 14:56:40', '2026-09-04 14:58:09'),
(58, 1, '2026-09-04 14:56:42', '2026-09-04 14:57:59'),
(60, 1, '2026-09-04 14:58:11', '2026-09-04 14:58:11'),
(61, 1, '2026-09-04 14:58:13', '2026-09-04 14:58:13'),
(62, 1, '2026-09-04 15:00:02', '2026-09-04 15:00:03'),
(63, 1, '2026-09-07 07:57:11', '2026-09-07 07:59:52'),
(64, 1, '2026-09-07 08:01:21', '2026-09-07 08:01:23'),
(65, 1, '2026-09-07 08:02:17', '2026-09-07 08:05:22'),
(66, 1, '2026-09-07 08:02:32', '2026-09-07 08:06:11'),
(67, 1, '2026-09-07 08:05:29', '2026-09-07 08:06:29'),
(68, 1, '2026-09-07 08:06:20', '2026-09-07 08:16:45'),
(69, 1, '2026-09-07 08:16:51', '2026-09-07 08:18:42'),
(70, 1, '2026-09-07 08:24:34', '2026-09-07 08:24:44'),
(71, 1, '2026-09-07 08:24:50', '2026-09-07 08:25:59'),
(72, 1, '2026-09-07 08:36:43', '2026-09-07 08:36:46'),
(73, 1, '2026-09-07 08:36:51', '2026-09-07 08:43:01'),
(74, 1, '2026-09-07 08:51:07', '2026-09-07 09:07:05'),
(75, 1, '2026-09-07 09:07:13', '2026-09-07 09:18:17'),
(76, 1, '2026-09-07 09:29:08', '2026-09-07 09:43:39'),
(77, 1, '2026-09-07 09:43:47', '2026-09-07 09:43:47'),
(78, 1, '2026-09-07 09:57:26', '2026-09-07 09:57:27'),
(79, 1, '2026-09-07 10:37:29', '2026-09-07 10:49:13'),
(80, 1, '2026-09-07 10:55:15', '2026-09-07 10:59:43'),
(81, 1, '2026-09-07 11:11:34', '2026-09-07 11:21:31'),
(82, 1, '2026-09-07 11:22:04', '2026-09-07 11:31:30'),
(83, 1, '2026-09-07 11:41:18', '2026-09-07 11:43:40'),
(84, 1, '2026-09-07 11:46:41', '2026-09-07 11:46:47'),
(85, 1, '2026-09-07 11:58:21', '2026-09-07 12:50:34'),
(86, 1, '2026-09-07 14:00:51', '2026-09-07 14:44:44'),
(87, 1, '2026-09-07 14:44:51', '2026-09-07 14:46:58'),
(88, 1, '2026-09-07 14:47:04', '2026-09-07 14:48:34'),
(89, 1, '2026-09-08 07:46:03', '2026-09-08 07:46:49'),
(90, 1, '2026-09-08 07:47:13', '2026-09-08 07:56:03'),
(91, 1, '2026-09-08 07:56:26', '2026-09-08 07:58:19'),
(92, 1, '2026-09-08 07:58:28', '2026-09-08 07:58:43'),
(93, 1, '2026-09-08 08:54:27', '2026-09-08 08:54:57'),
(94, 1, '2026-09-08 08:55:35', '2026-09-08 08:56:51'),
(95, 1, '2026-09-08 08:57:07', '2026-09-08 08:59:46'),
(96, 1, '2026-09-08 09:00:00', '2026-09-08 09:00:00'),
(98, 1, '2026-09-08 10:49:19', '2026-09-08 10:50:21'),
(99, 1, '2026-09-08 10:50:36', '2026-09-08 10:52:25'),
(100, 1, '2026-09-08 10:52:43', '2026-09-08 10:53:34'),
(101, 1, '2026-09-08 10:53:44', '2026-09-08 10:59:54'),
(102, 1, '2026-09-08 11:00:11', '2026-09-08 11:00:12'),
(103, 1, '2026-09-08 11:00:18', '2026-09-08 11:01:59'),
(104, 1, '2026-09-08 11:02:05', '2026-09-08 11:03:03'),
(105, 1, '2026-09-08 11:03:22', '2026-09-08 11:03:52'),
(106, 1, '2026-09-08 11:04:13', '2026-09-08 11:04:28'),
(107, 1, '2026-09-08 11:04:40', '2026-09-08 11:07:17'),
(108, 1, '2026-09-08 11:08:29', '2026-09-08 11:08:44'),
(109, 1, '2026-09-08 11:09:24', '2026-09-08 11:10:31'),
(110, 1, '2026-09-08 11:11:06', '2026-09-08 11:11:14'),
(111, 1, '2026-09-08 11:11:22', '2026-09-08 11:11:29'),
(112, 1, '2026-09-08 11:24:19', '2026-09-08 11:24:24'),
(113, 1, '2026-09-08 11:24:33', '2026-09-08 11:25:20'),
(114, 1, '2026-09-08 11:25:34', '2026-09-08 11:48:02'),
(115, 1, '2026-09-08 12:00:19', '2026-09-08 12:00:41'),
(116, 1, '2026-09-08 12:00:51', '2026-09-08 12:01:21'),
(117, 1, '2026-09-08 12:07:14', '2026-09-08 12:08:44'),
(118, 1, '2026-09-08 12:08:50', '2026-09-08 12:09:27'),
(119, 1, '2026-09-08 12:09:32', '2026-09-08 12:11:27'),
(120, 1, '2026-09-08 12:10:02', '2026-09-08 12:12:14'),
(121, 1, '2026-09-08 12:12:22', '2026-09-08 12:12:26'),
(122, 1, '2026-09-08 12:30:33', '2026-09-08 12:30:38'),
(123, 1, '2026-09-08 12:31:30', '2026-09-08 12:31:48'),
(124, 1, '2026-09-08 12:31:55', '2026-09-08 12:32:14'),
(125, 1, '2026-09-08 12:32:29', '2026-09-08 12:32:44'),
(126, 1, '2026-09-08 13:48:18', '2026-09-08 13:48:31'),
(127, 1, '2026-09-08 13:49:05', '2026-09-08 13:51:08'),
(128, 1, '2026-09-08 13:51:17', '2026-09-08 13:54:09'),
(129, 1, '2026-09-08 15:17:49', '2026-09-08 15:20:00'),
(130, 1, '2026-09-09 09:19:22', '2026-09-09 09:19:35'),
(132, 1, '2026-09-10 12:15:49', '2026-09-10 12:15:50'),
(133, 1, '2026-09-10 12:28:26', '2026-09-10 12:28:26'),
(134, 1, '2026-09-10 12:31:29', '2026-09-10 12:31:48'),
(135, 1, '2026-09-10 12:31:59', '2026-09-10 12:32:41'),
(136, 1, '2026-09-10 16:05:21', '2026-09-10 16:05:44'),
(137, 1, '2026-09-11 08:30:59', '2026-09-11 08:31:03'),
(138, 1, '2026-09-11 11:14:04', '2026-09-11 11:14:05'),
(139, 1, '2026-09-14 10:55:34', '2026-09-14 10:55:46'),
(141, 1, '2026-09-15 09:07:23', '2026-09-15 09:07:52'),
(142, 1, '2026-09-15 09:24:16', '2026-09-15 09:26:01'),
(143, 1, '2026-09-15 09:26:13', '2026-09-15 09:27:22'),
(144, 1, '2026-09-15 09:27:38', '2026-09-15 09:30:27'),
(145, 1, '2026-09-15 11:04:04', '2026-09-15 11:18:56'),
(146, 1, '2026-09-15 11:19:23', '2026-09-15 11:19:34'),
(147, 1, '2026-09-15 11:19:45', '2026-09-15 11:25:17'),
(148, 1, '2026-09-15 11:25:22', '2026-09-15 11:25:23'),
(149, 1, '2026-09-15 11:25:37', '2026-09-15 11:30:41'),
(150, 1, '2026-09-15 11:30:50', '2026-09-15 11:32:36'),
(151, 1, '2026-09-15 11:32:44', '2026-09-15 11:33:09'),
(152, 1, '2026-09-15 11:33:20', '2026-09-15 11:34:38'),
(153, 1, '2026-09-15 11:34:49', '2026-09-15 11:38:35'),
(154, 1, '2026-09-15 11:38:41', '2026-09-15 11:38:42'),
(155, 1, '2026-09-15 11:38:54', '2026-09-15 11:43:43'),
(156, 1, '2026-09-15 11:42:27', '2026-09-15 11:46:13'),
(157, 1, '2026-09-15 11:43:47', '2026-09-15 11:46:52'),
(158, 1, '2026-09-15 11:46:58', '2026-09-15 11:47:51'),
(159, 1, '2026-09-15 11:47:57', '2026-09-15 11:48:10'),
(160, 1, '2026-09-15 14:28:02', '2026-09-15 14:28:09'),
(161, 1, '2026-09-15 16:16:12', '2026-09-15 16:16:12'),
(162, 1, '2026-09-16 08:15:01', '2026-09-16 08:15:34'),
(163, 1, '2026-09-16 08:18:04', '2026-09-16 08:18:06'),
(164, 1, '2026-09-16 08:18:11', '2026-09-16 08:18:21'),
(165, 1, '2026-09-16 08:18:36', '2026-09-16 08:19:56'),
(166, 1, '2026-09-16 08:20:02', '2026-09-16 08:21:29'),
(167, 1, '2026-09-16 08:50:19', '2026-09-16 09:05:25'),
(168, 1, '2026-09-16 09:17:27', '2026-09-16 09:19:11'),
(169, 1, '2026-09-16 09:24:50', '2026-09-16 09:26:29'),
(170, 1, '2026-09-16 09:27:23', '2026-09-16 09:28:12'),
(171, 1, '2026-09-16 09:34:19', '2026-09-16 09:42:09'),
(172, 1, '2026-09-16 09:50:32', '2026-09-16 10:01:33'),
(173, 1, '2026-09-16 10:23:21', '2026-09-16 10:33:37'),
(174, 1, '2026-09-16 10:46:45', '2026-09-16 10:50:37'),
(175, 1, '2026-09-16 10:50:42', '2026-09-16 11:01:20'),
(176, 1, '2026-09-16 11:15:05', '2026-09-16 11:17:35'),
(177, 1, '2026-09-16 11:23:31', '2026-09-16 11:27:18'),
(178, 1, '2026-09-16 11:35:25', '2026-09-16 11:38:06'),
(179, 1, '2026-09-16 11:46:12', '2026-09-16 11:48:02'),
(180, 1, '2026-09-16 11:55:28', '2026-09-16 11:58:50'),
(181, 1, '2026-09-16 12:06:51', '2026-09-16 12:17:22'),
(182, 1, '2026-09-16 12:17:29', '2026-09-16 12:24:47'),
(183, 1, '2026-09-16 12:24:50', '2026-09-16 12:34:12'),
(184, 1, '2026-09-16 12:41:18', '2026-09-16 12:42:43'),
(185, 1, '2026-09-16 12:49:04', '2026-09-16 13:02:13'),
(186, 1, '2026-09-16 13:08:28', '2026-09-16 13:09:33'),
(187, 1, '2026-09-16 14:11:56', '2026-09-16 14:26:58'),
(188, 1, '2026-09-16 14:28:58', '2026-09-16 14:29:32'),
(189, 1, '2026-09-16 14:29:40', '2026-09-16 14:33:43'),
(190, 1, '2026-09-16 14:35:11', '2026-09-16 14:41:28'),
(191, 1, '2026-09-16 14:41:33', '2026-09-16 14:44:09'),
(192, 1, '2026-09-16 14:44:18', '2026-09-16 14:45:54'),
(193, 1, '2026-09-16 14:51:21', '2026-09-16 14:51:37'),
(194, 1, '2026-09-16 14:51:48', '2026-09-16 15:00:49'),
(195, 1, '2026-09-16 15:00:56', '2026-09-16 15:01:32'),
(196, 1, '2026-09-16 15:01:36', '2026-09-16 15:02:47'),
(197, 1, '2026-09-16 15:02:56', '2026-09-16 15:07:00'),
(198, 1, '2026-09-16 15:07:06', '2026-09-16 15:07:18'),
(199, 1, '2026-09-16 15:07:28', '2026-09-16 15:08:49'),
(200, 1, '2026-09-16 15:08:55', '2026-09-16 15:08:57'),
(201, 1, '2026-09-16 15:18:37', '2026-09-16 15:18:44'),
(202, 1, '2026-09-16 15:26:34', '2026-09-16 15:30:29'),
(203, 1, '2026-09-16 15:36:34', '2026-09-16 15:37:09'),
(204, 1, '2026-09-16 15:38:04', '2026-09-16 15:38:59'),
(205, 1, '2026-09-16 15:39:05', '2026-09-16 15:41:04'),
(206, 1, '2026-09-16 16:17:29', '2026-09-16 16:18:04'),
(207, 1, '2026-09-16 16:18:11', '2026-09-16 16:19:00'),
(208, 1, '2026-09-16 16:19:05', '2026-09-16 16:33:57'),
(209, 1, '2026-09-16 16:34:14', '2026-09-16 16:35:30'),
(210, 1, '2026-09-16 16:35:35', '2026-09-16 16:35:45'),
(211, 1, '2026-09-16 16:35:51', '2026-09-16 16:36:30'),
(212, 1, '2026-09-16 16:36:48', '2026-09-16 16:37:05'),
(213, 1, '2026-09-16 16:37:10', '2026-09-16 16:37:53'),
(214, 1, '2026-09-16 16:51:20', '2026-09-16 16:51:25'),
(215, 1, '2026-09-16 17:00:16', '2026-09-16 17:01:28'),
(216, 1, '2026-09-16 18:47:12', '2026-09-16 18:47:15'),
(217, 1, '2026-09-16 18:47:27', '2026-09-16 18:51:08'),
(218, 1, '2026-09-16 18:52:18', '2026-09-16 18:53:19'),
(219, 1, '2026-09-16 18:53:29', '2026-09-16 18:56:52'),
(220, 1, '2026-09-17 07:48:43', '2026-09-17 07:48:46'),
(221, 1, '2026-09-17 07:56:02', '2026-09-17 07:59:28'),
(222, 1, '2026-09-17 08:11:34', '2026-09-17 08:12:57'),
(223, 1, '2026-09-17 08:19:20', '2026-09-17 08:20:49'),
(224, 1, '2026-09-17 08:21:57', '2026-09-17 08:26:30'),
(225, 1, '2026-09-17 08:27:08', '2026-09-17 08:28:34'),
(226, 1, '2026-09-17 09:58:25', '2026-09-17 09:59:19'),
(227, 1, '2026-09-17 09:59:31', '2026-09-17 09:59:36'),
(228, 1, '2026-09-17 09:59:41', '2026-09-17 10:00:02'),
(229, 1, '2026-09-17 10:00:15', '2026-09-17 10:00:47'),
(231, 1, '2026-09-17 10:01:10', '2026-09-17 10:01:47'),
(232, 1, '2026-09-17 10:13:10', '2026-09-17 10:13:49'),
(233, 1, '2026-09-17 10:13:54', '2026-09-17 10:19:33'),
(234, 1, '2026-09-17 10:40:35', '2026-09-17 10:48:28'),
(235, 1, '2026-09-17 11:02:57', '2026-09-17 11:22:57'),
(236, 1, '2026-09-17 11:20:32', '2026-09-17 11:20:49'),
(237, 1, '2026-09-17 11:21:44', '2026-09-17 11:29:23'),
(238, 1, '2026-09-17 11:23:46', '2026-09-17 11:28:14'),
(239, 1, '2026-09-17 11:33:06', '2026-09-17 11:35:50'),
(240, 1, '2026-09-17 11:34:16', '2026-09-17 11:35:04'),
(241, 1, '2026-09-17 11:46:34', '2026-09-17 11:46:38'),
(242, 1, '2026-09-17 11:54:12', '2026-09-17 11:55:27'),
(243, 1, '2026-09-17 11:55:39', '2026-09-17 12:13:04'),
(244, 1, '2026-09-17 12:21:13', '2026-09-17 12:27:34'),
(245, 1, '2026-09-17 12:40:37', '2026-09-17 12:42:15'),
(250, 1, '2026-09-17 15:18:35', '2026-09-17 15:23:29'),
(251, 1, '2026-09-17 15:28:56', '2026-09-17 15:32:31'),
(252, 1, '2026-09-17 15:32:37', '2026-09-17 15:33:11'),
(253, 1, '2026-09-17 15:33:42', '2026-09-17 15:33:44'),
(254, 1, '2026-09-17 15:34:07', '2026-09-17 15:34:23'),
(255, 1, '2026-09-17 15:39:50', '2026-09-17 15:55:51'),
(256, 1, '2026-09-17 15:55:55', '2026-09-17 16:13:12'),
(257, 1, '2026-09-17 15:56:44', '2026-09-17 15:57:11'),
(258, 1, '2026-09-17 16:13:16', '2026-09-17 16:30:36'),
(259, 1, '2026-09-17 16:43:41', '2026-09-17 16:43:59'),
(260, 1, '2026-09-18 07:45:18', '2026-09-18 08:08:30'),
(261, 1, '2026-09-18 08:08:37', '2026-09-18 08:08:49'),
(262, 1, '2026-09-18 08:18:20', '2026-09-18 08:20:57'),
(263, 2, '2026-09-18 08:21:13', '2026-09-18 08:22:39'),
(264, 1, '2026-09-18 08:23:29', '2026-09-18 08:27:03'),
(265, 1, '2026-09-18 08:27:06', '2026-09-18 08:27:34'),
(266, 1, '2026-09-18 08:27:54', '2026-09-18 08:28:31'),
(267, 1, '2026-09-18 08:28:35', '2026-09-18 08:33:34'),
(268, 1, '2026-09-18 08:33:38', '2026-09-18 08:34:58'),
(271, 1, '2026-09-18 08:39:56', '2026-09-18 08:39:57'),
(272, 1, '2026-09-18 08:40:53', '2026-09-18 08:50:35'),
(273, 1, '2026-09-18 08:50:40', '2026-09-18 08:50:46'),
(274, 1, '2026-09-18 08:50:51', '2026-09-18 08:51:21'),
(275, 1, '2026-09-18 08:55:34', '2026-09-18 08:55:34'),
(276, 1, '2026-09-18 08:55:45', '2026-09-18 08:55:45'),
(277, 1, '2026-09-18 08:55:52', '2026-09-18 08:55:52'),
(278, 1, '2026-09-18 08:56:37', '2026-09-18 08:56:37'),
(279, 1, '2026-09-18 08:56:51', '2026-09-18 08:56:51'),
(280, 1, '2026-09-18 08:57:07', '2026-09-18 08:57:07'),
(281, 1, '2026-09-18 08:58:14', '2026-09-18 08:58:16'),
(282, 1, '2026-09-18 08:58:16', '2026-09-18 08:58:16'),
(284, 1, '2026-09-18 08:58:31', '2026-09-18 08:58:31'),
(286, 1, '2026-09-18 08:59:24', '2026-09-18 08:59:24'),
(287, 1, '2026-09-18 08:59:38', '2026-09-18 08:59:40'),
(289, 1, '2026-09-18 08:59:53', '2026-09-18 08:59:54'),
(290, 1, '2026-09-18 09:00:25', '2026-09-18 09:21:14'),
(291, 1, '2026-09-18 09:21:21', '2026-09-18 09:21:25'),
(292, 1, '2026-09-18 09:21:54', '2026-09-18 09:22:01'),
(293, 1, '2026-09-18 09:22:06', '2026-09-18 09:29:31'),
(294, 1, '2026-09-18 09:39:30', '2026-09-18 09:48:10'),
(295, 1, '2026-09-18 09:56:30', '2026-09-18 10:00:53'),
(296, 1, '2026-09-18 10:07:32', '2026-09-18 10:09:09'),
(297, 1, '2026-09-18 10:29:10', '2026-09-18 10:37:48'),
(298, 1, '2026-09-18 10:46:08', '2026-09-18 10:50:03'),
(299, 1, '2026-09-18 11:01:25', '2026-09-18 11:08:22'),
(300, 1, '2026-09-18 11:15:30', '2026-09-18 11:22:47'),
(301, 1, '2026-09-18 11:33:04', '2026-09-18 11:38:46'),
(302, 1, '2026-09-18 11:46:04', '2026-09-18 11:47:42'),
(303, 1, '2026-09-18 12:18:07', '2026-09-18 12:26:48'),
(304, 1, '2026-09-18 12:49:51', '2026-09-18 13:49:58'),
(306, 1, '2026-09-18 12:56:54', '2026-09-18 12:56:54'),
(308, 1, '2026-09-18 12:57:12', '2026-09-18 12:57:12'),
(310, 1, '2026-09-18 12:57:32', '2026-09-18 12:57:33'),
(312, 1, '2026-09-18 12:59:23', '2026-09-18 12:59:23'),
(314, 1, '2026-09-18 13:00:34', '2026-09-18 13:00:34'),
(316, 1, '2026-09-18 13:00:43', '2026-09-18 13:00:44'),
(318, 1, '2026-09-18 13:01:29', '2026-09-18 13:01:29'),
(320, 1, '2026-09-18 13:01:55', '2026-09-18 13:01:58'),
(322, 1, '2026-09-18 13:02:30', '2026-09-18 13:02:31'),
(324, 1, '2026-09-18 13:02:52', '2026-09-18 13:02:54'),
(326, 1, '2026-09-18 13:04:19', '2026-09-18 13:04:21'),
(328, 1, '2026-09-18 13:05:18', '2026-09-18 13:05:18'),
(329, 1, '2026-09-18 13:50:38', '2026-09-18 14:07:31'),
(330, 1, '2026-09-21 07:57:14', '2026-09-21 07:59:54'),
(331, 1, '2026-09-21 08:00:27', '2026-09-21 08:00:31'),
(332, 1, '2026-09-21 08:00:40', '2026-09-21 08:01:14'),
(333, 1, '2026-09-21 08:01:19', '2026-09-21 08:02:17'),
(334, 1, '2026-09-21 08:02:25', '2026-09-21 08:02:50'),
(335, 1, '2026-09-21 08:04:45', '2026-09-21 08:06:58'),
(336, 1, '2026-09-21 08:07:03', '2026-09-21 08:14:17'),
(337, 1, '2026-09-21 08:14:27', '2026-09-21 08:15:38'),
(338, 1, '2026-09-21 08:15:49', '2026-09-21 08:28:13'),
(339, 1, '2026-09-21 08:28:29', '2026-09-21 08:29:55'),
(340, 1, '2026-09-21 08:29:58', '2026-09-21 08:56:08'),
(341, 1, '2026-09-21 08:56:14', '2026-09-21 08:56:29'),
(342, 1, '2026-09-21 08:56:34', '2026-09-21 08:59:15'),
(343, 1, '2026-09-21 08:59:23', '2026-09-21 09:00:04'),
(344, 1, '2026-09-21 09:00:14', '2026-09-21 09:12:20'),
(345, 1, '2026-09-21 09:12:32', '2026-09-21 09:18:28'),
(346, 1, '2026-09-21 09:18:40', '2026-09-21 09:19:08'),
(347, 1, '2026-09-21 09:19:16', '2026-09-21 09:20:20'),
(348, 1, '2026-09-21 09:20:26', '2026-09-21 09:21:42'),
(349, 1, '2026-09-21 09:21:47', '2026-09-21 09:22:33'),
(350, 1, '2026-09-21 09:22:37', '2026-09-21 09:42:26'),
(351, 1, '2026-09-21 09:42:39', '2026-09-21 09:42:59'),
(352, 1, '2026-09-21 09:43:03', '2026-09-21 09:48:07'),
(353, 1, '2026-09-21 09:48:13', '2026-09-21 09:49:11'),
(354, 1, '2026-09-21 10:38:04', '2026-09-21 10:38:10'),
(355, 1, '2026-09-21 10:40:45', '2026-09-21 10:40:46'),
(357, 1, '2026-09-21 10:42:05', '2026-09-21 10:43:29'),
(358, 1, '2026-09-21 10:43:38', '2026-09-21 10:43:45'),
(359, 1, '2026-09-21 10:44:03', '2026-09-21 10:44:21'),
(360, 1, '2026-09-21 10:50:01', '2026-09-21 10:50:01'),
(361, 1, '2026-09-21 10:52:43', '2026-09-21 10:52:44'),
(362, 1, '2026-09-21 10:52:58', '2026-09-21 11:05:53'),
(364, 1, '2026-09-21 11:06:41', '2026-09-21 11:17:48'),
(365, 1, '2026-09-21 12:36:36', '2026-09-21 13:03:10'),
(366, 1, '2026-09-21 14:08:14', '2026-09-21 14:08:44'),
(367, 1, '2026-09-21 15:53:14', '2026-09-21 15:55:20'),
(368, 1, '2026-09-21 15:55:27', '2026-09-21 15:55:45'),
(369, 1, '2026-09-21 15:55:52', '2026-09-21 16:02:07'),
(370, 1, '2026-09-21 16:13:12', '2026-09-21 16:14:32'),
(371, 1, '2026-09-21 16:14:39', '2026-09-21 16:17:12'),
(372, 1, '2026-09-21 16:26:22', '2026-09-21 16:37:58'),
(373, 1, '2026-09-21 16:38:04', '2026-09-21 16:38:20'),
(374, 1, '2026-09-21 16:38:27', '2026-09-21 16:38:33'),
(375, 1, '2026-09-21 16:38:55', '2026-09-21 17:04:03'),
(376, 1, '2026-09-21 17:06:10', '2026-09-21 17:08:41'),
(377, 1, '2026-09-21 20:23:02', '2026-09-21 20:28:08'),
(378, 1, '2026-09-22 07:32:32', '2026-09-22 07:32:40'),
(380, 1, '2026-09-22 07:39:05', '2026-09-22 07:41:56'),
(381, 1, '2026-09-22 07:42:31', '2026-09-22 07:42:38'),
(382, 1, '2026-09-22 07:42:43', '2026-09-22 07:42:53'),
(383, 1, '2026-09-22 07:43:01', '2026-09-22 07:43:39'),
(384, 1, '2026-09-22 08:41:35', '2026-09-22 08:42:03'),
(384, 2, '2026-09-22 08:42:16', '2026-09-22 08:52:33'),
(385, 2, '2026-09-22 08:40:18', '2026-09-22 08:40:18'),
(387, 1, '2026-09-22 08:41:01', '2026-09-22 08:41:02'),
(388, 1, '2026-09-22 09:02:06', '2026-09-22 09:02:06'),
(389, 1, '2026-09-22 09:02:51', '2026-09-22 09:03:04'),
(390, 1, '2026-09-22 09:03:10', '2026-09-22 09:05:41'),
(391, 1, '2026-09-22 09:05:44', '2026-09-22 09:15:00'),
(392, 1, '2026-09-22 09:06:46', '2026-09-22 09:07:16'),
(393, 1, '2026-09-22 09:07:24', '2026-09-22 09:07:30'),
(394, 1, '2026-09-22 09:07:38', '2026-09-22 09:07:44'),
(395, 1, '2026-09-22 09:15:33', '2026-09-22 09:15:46'),
(396, 1, '2026-09-22 09:15:53', '2026-09-22 09:29:54'),
(397, 1, '2026-09-22 09:40:46', '2026-09-22 09:57:07'),
(398, 1, '2026-09-22 10:38:26', '2026-09-22 10:38:33'),
(404, 1, '2026-09-22 11:16:05', '2026-09-22 11:17:03'),
(406, 1, '2026-09-22 11:12:38', '2026-09-22 11:12:41'),
(406, 2, '2026-09-22 11:12:43', '2026-09-22 11:12:43'),
(407, 1, '2026-09-22 11:15:07', '2026-09-22 11:15:15'),
(407, 2, '2026-09-22 11:15:16', '2026-09-22 11:15:16'),
(408, 1, '2026-09-22 11:15:33', '2026-09-22 11:15:34'),
(409, 1, '2026-09-22 11:18:04', '2026-09-22 11:20:53'),
(410, 1, '2026-09-22 11:51:54', '2026-09-22 11:54:10'),
(411, 1, '2026-09-22 12:00:03', '2026-09-22 12:00:05'),
(412, 1, '2026-09-22 12:15:26', '2026-09-22 12:15:27'),
(413, 1, '2026-09-22 12:18:37', '2026-09-22 12:18:57'),
(414, 1, '2026-09-22 12:19:00', '2026-09-22 12:21:40'),
(415, 1, '2026-09-22 12:28:16', '2026-09-22 12:35:23'),
(416, 1, '2026-09-22 12:28:48', '2026-09-22 12:29:49'),
(417, 1, '2026-09-22 12:35:34', '2026-09-22 12:48:48'),
(418, 1, '2026-09-22 12:48:57', '2026-09-22 12:52:18'),
(419, 1, '2026-09-22 12:52:23', '2026-09-22 12:53:11'),
(420, 1, '2026-09-22 14:11:42', '2026-09-22 14:27:03'),
(421, 1, '2026-09-22 15:01:44', '2026-09-22 15:03:46'),
(422, 1, '2026-09-22 16:04:28', '2026-09-22 16:12:31'),
(423, 1, '2026-09-22 16:12:42', '2026-09-22 16:16:52'),
(424, 1, '2026-09-22 16:16:56', '2026-09-22 16:24:56'),
(425, 1, '2026-09-22 16:25:03', '2026-09-22 16:25:51'),
(426, 1, '2026-09-22 16:26:02', '2026-09-22 16:26:22'),
(427, 1, '2026-09-22 16:26:26', '2026-09-22 16:26:50'),
(428, 1, '2026-09-22 16:26:56', '2026-09-22 16:26:58'),
(429, 1, '2026-09-22 16:27:06', '2026-09-22 16:27:10'),
(431, 1, '2026-09-22 16:27:24', '2026-09-22 16:37:19'),
(432, 1, '2026-09-22 16:37:27', '2026-09-22 16:37:30'),
(433, 1, '2026-09-22 16:43:43', '2026-09-22 16:44:34'),
(434, 1, '2026-09-22 16:44:39', '2026-09-22 16:45:15'),
(435, 1, '2026-09-22 16:45:25', '2026-09-22 16:45:54'),
(436, 1, '2026-09-22 16:46:05', '2026-09-22 16:46:13'),
(437, 1, '2026-09-22 16:46:20', '2026-09-22 16:46:22'),
(438, 1, '2026-09-22 16:46:35', '2026-09-22 16:47:06'),
(439, 1, '2026-09-22 16:53:27', '2026-09-22 16:54:22'),
(440, 1, '2026-09-22 16:54:43', '2026-09-22 16:54:51'),
(441, 1, '2026-09-22 16:55:05', '2026-09-22 16:56:37');

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
(2, 1, 'SLA 1 Días', 1, 'dias', 'activo', '2026-07-31 09:00:22', '2026-09-07 15:47:21'),
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
(13, 1, 'SLA 4 Días', 4, 'dias', 'activo', '2026-08-26 09:58:12', '2026-08-26 14:58:12'),
(14, 1, 'SLA 3 Días', 3, 'dias', 'activo', '2026-09-03 08:33:47', '2026-09-03 13:33:47'),
(15, 1, 'SLA 17 días', 17, 'dias', 'activo', '2026-09-03 08:41:11', '2026-09-03 13:41:11'),
(16, 1, 'SLA 21 días', 21, 'dias', 'activo', '2026-09-03 09:11:13', '2026-09-03 14:11:13'),
(17, 1, 'SLA 11 Días', 11, 'dias', 'activo', '2026-09-03 10:41:06', '2026-09-03 15:41:06'),
(18, 1, 'SLA 23 Días', 23, 'dias', 'activo', '2026-09-03 10:41:24', '2026-09-03 15:41:24'),
(19, 1, 'SLA 7 Días', 7, 'dias', 'activo', '2026-09-07 12:27:32', '2026-09-07 17:27:32'),
(20, 1, 'SLA 9 Días', 9, 'dias', 'activo', '2026-09-07 12:50:01', '2026-09-07 17:50:01');

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
(1, 2, 4, 9, 'hd hoy.xlsx', 'flujo_2_e6e2c06a880ab92471f7b0be.xlsx', 'private/solicitudes/flujo_2_e6e2c06a880ab92471f7b0be.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 520337, '2026-08-31 09:05:33'),
(2, 3, 6, 31, 'Cambio de contraseña.pdf', 'flujo_3_a364c6601935d9d108344a7c.pdf', 'private/solicitudes/flujo_3_a364c6601935d9d108344a7c.pdf', 'application/pdf', 88108, '2026-09-04 14:23:19'),
(3, 4, 7, 31, 'Cambio de contraseña.pdf', 'flujo_4_0831f6b16e641cd2da733e4e.pdf', 'private/solicitudes/flujo_4_0831f6b16e641cd2da733e4e.pdf', 'application/pdf', 88108, '2026-09-08 07:50:58'),
(4, 5, 8, 31, 'Cambio de contraseña.pdf', 'flujo_5_49cb83bd193d286ecaea731e.pdf', 'private/solicitudes/flujo_5_49cb83bd193d286ecaea731e.pdf', 'application/pdf', 88108, '2026-09-08 11:25:14'),
(5, 6, 10, 31, 'Cambio de contraseña.pdf', 'flujo_6_b937984c96a1c0f189aa8a33.pdf', 'private/solicitudes/flujo_6_b937984c96a1c0f189aa8a33.pdf', 'application/pdf', 88108, '2026-09-08 13:50:15'),
(6, 7, 11, 9, 'Control_Usuarios.xlsx', 'flujo_7_1df16fd993d5ae8a4b6d7ba0.xlsx', 'private/solicitudes/flujo_7_1df16fd993d5ae8a4b6d7ba0.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1169512, '2026-09-15 11:24:26'),
(7, 9, 16, 9, 'Control_Usuarios.xlsx', 'flujo_9_1178872a1f4f90f9b6f97707.xlsx', 'graph:01GZGR3ELJEA7BLDGFOJEYTCPJIOR6RX44', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1169512, '2026-09-16 08:19:32'),
(8, 9, 16, 9, 'MyFiles.png', 'flujo_9_4579e4020e77bd2807e17706.png', 'graph:01GZGR3EPCJBNKPB4MHBF2CIJ2AZX3GSIA', 'image/png', 99785, '2026-09-16 08:19:33'),
(9, 9, 16, 9, 'XSYSTEM JUNIO.xlsx', 'flujo_9_20c4d2e51c6a7a5540d42bea.xlsx', 'graph:01GZGR3EMLVU5EF4NSTRFZTJOMHFZKEC3I', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1397989, '2026-09-16 08:19:34');

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
(5, 1, 2, 9, 4, 5, 5, 5, 'evaluacion_caso', 'prueba', '2026-08-31 09:19:17'),
(6, 7, 11, 9, 28, 5, 5, 5, 'encuesta_servicio', 'Prueba', '2026-09-15 11:32:19'),
(7, 8, 15, 28, 2, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-15 11:44:47'),
(8, 8, 14, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-15 11:47:20'),
(9, 16, 26, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-18 09:23:26'),
(10, 16, 27, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba funcional autorizada QA-TICS-20260918-BF817C', '2026-09-18 13:01:57'),
(11, 16, 45, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba funcional autorizada QA-TICS-20260918-BF817C', '2026-09-18 13:04:20'),
(12, 16, 44, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-18 13:26:03'),
(13, 10, 105, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:22:16'),
(14, 10, 104, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:23:04'),
(15, 10, 103, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:24:22'),
(16, 10, 102, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:25:11'),
(17, 10, 101, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:25:51'),
(18, 10, 100, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:31:15'),
(19, 16, 43, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:32:16'),
(20, 16, 28, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:37:46'),
(21, 16, 42, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 08:39:50'),
(22, 16, 29, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:41:00'),
(23, 16, 30, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:42:01'),
(24, 16, 41, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:43:50'),
(25, 10, 99, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:44:58'),
(26, 10, 98, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:45:24'),
(27, 10, 66, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:45:50'),
(28, 10, 65, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:46:18'),
(29, 10, 67, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:46:56'),
(30, 10, 68, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:47:25'),
(31, 10, 69, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:48:05'),
(32, 10, 47, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:48:40'),
(33, 10, 70, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:49:11'),
(34, 10, 71, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 08:49:55'),
(35, 10, 64, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Pfrueba', '2026-09-21 08:50:28'),
(36, 10, 63, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 08:50:59'),
(37, 16, 40, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 08:51:32'),
(38, 10, 48, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:51:52'),
(39, 10, 62, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:52:53'),
(40, 10, 61, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:53:29'),
(41, 10, 60, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 08:54:48'),
(42, 11, 19, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-21 08:56:27'),
(43, 14, 22, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-21 08:59:32'),
(44, 13, 21, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-21 08:59:44'),
(45, 12, 20, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-21 08:59:59'),
(46, 16, 39, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 09:13:42'),
(47, 10, 72, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Pruevba', '2026-09-21 09:14:02'),
(48, 16, 38, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 09:14:30'),
(49, 16, 37, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:15:05'),
(50, 16, 36, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'Prueba', '2026-09-21 09:15:43'),
(51, 10, 73, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:16:37'),
(52, 16, 35, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:16:58'),
(53, 16, 34, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:17:56'),
(54, 16, 33, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:18:24'),
(55, 16, 31, 28, 32, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:20:41'),
(56, 16, 32, 28, 32, 5, 4, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:20:50'),
(57, 16, 25, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:21:20'),
(58, 16, 24, 9, 28, 5, 5, 5, 'encuesta_servicio', 'pruyeba', '2026-09-21 09:22:07'),
(59, 10, 74, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:22:58'),
(60, 10, 59, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:23:49'),
(61, 10, 75, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'PRUEB', '2026-09-21 09:24:21'),
(62, 10, 58, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:25:09'),
(63, 10, 77, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:27:15'),
(64, 10, 78, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:27:34'),
(65, 10, 76, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:27:55'),
(66, 10, 79, 28, 28, 5, 4, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:28:12'),
(67, 10, 80, 28, 28, 5, 4, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:28:32'),
(68, 10, 81, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:28:59'),
(69, 10, 57, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:29:35'),
(70, 10, 56, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:29:53'),
(71, 10, 82, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:30:18'),
(72, 10, 83, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'prueba', '2026-09-21 09:30:39'),
(73, 10, 84, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:31:00'),
(74, 10, 55, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'PRUEVBA', '2026-09-21 09:31:33'),
(75, 10, 86, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'PRUBEA', '2026-09-21 09:31:54'),
(76, 10, 97, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:32:14'),
(77, 10, 87, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:32:30'),
(78, 10, 88, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:32:49'),
(79, 10, 96, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:33:17'),
(80, 10, 95, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'PRUEBA', '2026-09-21 09:33:37'),
(81, 10, 94, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:33:56'),
(82, 10, 89, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:34:16'),
(83, 10, 54, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:37:21'),
(84, 10, 93, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:37:42'),
(85, 10, 90, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:38:04'),
(86, 10, 91, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:38:24'),
(87, 10, 92, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:39:11'),
(88, 10, 49, 28, 28, 5, 5, 5, 'evaluacion_derivacion', 'PRUEBA', '2026-09-21 09:39:37'),
(89, 10, 50, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:40:17'),
(90, 10, 85, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:40:34'),
(91, 10, 52, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:40:57'),
(92, 10, 53, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:41:21'),
(93, 10, 51, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:41:43'),
(94, 10, 46, 28, 28, 5, 5, 5, 'evaluacion_derivacion', NULL, '2026-09-21 09:42:03'),
(95, 10, 18, 9, 28, 5, 5, 5, 'encuesta_servicio', 'prueba', '2026-09-21 09:42:56'),
(96, 5, 9, 32, 32, 5, 5, 5, 'evaluacion_derivacion', '0', '2026-09-22 16:45:37');

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
(15, 1, 1, 9, 'publica', '5161', '2026-08-31 09:04:50'),
(16, 3, 6, 31, 'publica', 'Ayudeme', '2026-09-04 14:23:44'),
(17, 3, 6, 31, 'publica', 'No sena malops', '2026-09-04 14:23:47'),
(18, 3, 6, 31, 'publica', 'asdasdasd as', '2026-09-04 14:23:52'),
(19, 4, 7, 31, 'publica', 'Ayudenme', '2026-09-08 07:53:07'),
(20, 13, 21, 9, 'publica', 'PRUEBA QA 01 - Mensaje inicial del solicitante para validar conversación, notificación y trazabilidad.', '2026-09-17 08:24:40'),
(21, 13, 21, 9, 'publica', 'PRUEBA QA 01 - Segundo mensaje enviado desde el módulo general de Mensajes.', '2026-09-17 08:26:10');

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
(37, 1, 2, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-08-31 09:19:17'),
(38, 3, 6, 31, 'Caso principal abierto', 'Se creó el Caso 3 y se activó la etapa 1 para TICs / Falla de Impresora. Asunto: Tinta baja. Solicitud: Al imprimir se envidencia que la tinta es baja', '2026-09-04 14:23:19'),
(39, 3, 6, 31, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 3 · etapa 1.', '2026-09-04 14:23:44'),
(40, 3, 6, 31, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 3 · etapa 1.', '2026-09-04 14:23:47'),
(41, 3, 6, 31, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 3 · etapa 1.', '2026-09-04 14:23:52'),
(42, 4, 7, 31, 'Caso principal abierto', 'Se creó el Caso 4 y se activó la etapa 1 para TICs / Falla de Equipos. Asunto: Falla del teclado. Solicitud: No me funciona algunas teclas', '2026-09-08 07:50:58'),
(43, 4, 7, 31, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 4 · etapa 1.', '2026-09-08 07:53:07'),
(44, 5, 8, 31, 'Caso principal abierto', 'Se creó el Caso 5 y se activó la etapa 1 para TICs / Falla de Equipos. Asunto: Prueba3. Solicitud: No sirvieron las otras 2', '2026-09-08 11:25:14'),
(45, 5, 9, 32, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1 desde etapa 1 del Caso 5. Destino: TICs / Creación de usuario para ingreso a plataforma de Claro. Motivo: 0000', '2026-09-08 12:31:46'),
(46, 5, 8, 32, 'Derivación creada', 'El caso 5 pausó su SLA y creó 1 caso(s) hijo(s): 1.1 (TICs / Creación de usuario para ingreso a plataforma de Claro).', '2026-09-08 12:31:46'),
(47, 5, 9, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la derivación de \"TICs / Creación de usuario para ingreso a plataforma de Claro\" de TICs a CUY GOMEZ JEISSON SMITH.', '2026-09-08 12:32:14'),
(48, 6, 10, 31, 'Caso principal abierto', 'Se creó el Caso 6 y se activó la etapa 1 para TICs / Falla de Equipos. Asunto: N/A. Solicitud: No me intereesaw', '2026-09-08 13:50:15'),
(49, 7, 11, 9, 'Caso principal abierto', 'Se creó el Caso 7 y se activó la etapa 1 para TICs / Gestión de Usuarios INFOR. Asunto: Falla usuario de info. Solicitud: fallo usuario de Infor', '2026-09-15 11:24:26'),
(50, 7, 11, 28, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-09-15 11:30:14'),
(51, 7, 11, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 7 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-16 17:00:00. Solución: no hubo solucion remota. Observación: Prueba.', '2026-09-15 11:30:30'),
(52, 7, 11, 9, 'Ticket cerrado por resolución en primer contacto', 'El solicitante aprobó el cierre definitivo solicitado por el gestor. Se cancelaron 2 etapa(s) futura(s) que no habían iniciado.', '2026-09-15 11:32:19'),
(53, 8, 14, 9, 'Caso principal abierto', 'Se creó el Caso 8 y se activó la etapa 1 para TICs / Solicitud Equipos de Cómputo. Asunto: Rerquerimiento equipo de computo ZTE. Solicitud: bUENAS TARDES SOLICITO EQUIPO DE COMPUTO PARA ZTE', '2026-09-15 11:34:28'),
(54, 8, 15, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1 desde etapa 1 del Caso 8. Destino: Administración / Compra de maquinaria y equipos. Motivo: Buenas tardes solicito la compra de este equipo ya que no cuento con equipos disponibles.', '2026-09-15 11:37:54'),
(55, 8, 14, 28, 'Derivación creada', 'El caso 8 pausó su SLA y creó 1 caso(s) hijo(s): 1.1 (Administración / Compra de maquinaria y equipos).', '2026-09-15 11:37:54'),
(56, 8, 15, 2, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-12-08 17:00:00. Solución: Compra de equipo. Observación: Prueba.', '2026-09-15 11:43:12'),
(57, 8, 15, 28, 'Atención cerrada', 'Se cerró Ticket 1.1. Administración / Compra de maquinaria y equipos finalizó su atención dentro del SLA. Solución: Compra de equipo. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-15 11:44:47'),
(58, 8, 14, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Solicitud Equipos de Cómputo con 2160 minuto(s) hábil(es) restantes.', '2026-09-15 11:44:47'),
(59, 8, 14, 28, 'Atención marcada como lista', 'El gestor asignado marcó Caso 8 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: entrega de equipo de computo. Observación: solicite el computador a compras y cuando me lo entregaron lo entregue.', '2026-09-15 11:46:48'),
(60, 8, 14, 9, 'Atención cerrada', 'Se cerró Caso 8 · etapa 1. TICs / Solicitud Equipos de Cómputo finalizó su atención dentro del SLA. Solución: entrega de equipo de computo. Observación: solicite el computador a compras y cuando me lo entregaron lo entregue. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-15 11:47:20'),
(61, 8, 14, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-09-15 11:47:20'),
(62, 9, 16, 9, 'Caso principal abierto', 'Se creó el Caso 9 y se activó la etapa 1 para Jurídica / Consultorio Jurídico. Asunto: Prueba. Solicitud: Prueba', '2026-09-16 08:19:25'),
(63, 4, 7, 28, 'Atención marcada como lista', 'El gestor asignado marcó Caso 4 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 2872 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-10 17:00:00. Solución: Prueba. Observación: Nada en especifico.', '2026-09-16 10:52:43'),
(64, 10, 18, 9, 'Caso principal abierto', 'Se creó el Caso 10 y se activó la etapa 1 para TICs / Gestión de accesos SICI. Asunto: Prueba. Solicitud: prueba', '2026-09-16 15:38:35'),
(65, 11, 19, 9, 'Caso principal abierto', 'Se creó el Caso 11 y se activó la etapa 1 para TICs / Instalación de VPN CONECTAR. Asunto: Prueba. Solicitud: prueba', '2026-09-16 15:38:58'),
(66, 12, 20, 9, 'Caso principal abierto', 'Se creó el Caso 12 y se activó la etapa 1 para TICs / Reporte de incidente de seguridad de la información. Asunto: Prueba. Solicitud: prueba', '2026-09-16 16:37:01'),
(67, 13, 21, 9, 'Caso principal abierto', 'Se creó el Caso 13 y se activó la etapa 1 para TICs / Instalación de software. Asunto: PRUEBA QA 01 - Instalación de software. Solicitud: Caso controlado QA. Validar creación, asignación automática al gestor TICs, SLA, mensajería, solución, cierre, trazabilidad e indicadores. No corresponde a una solicitud real.', '2026-09-17 08:23:31'),
(68, 13, 21, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 13 · etapa 1.', '2026-09-17 08:24:40'),
(69, 14, 22, 9, 'Caso principal abierto', 'Se creó el Caso 14 y se activó la etapa 1 para TICs / Falla  de servicio de internet. Asunto: PRUEBA QA 02 - Falla de internet. Solicitud: Caso controlado QA para validar clasificación Incidente, prioridad urgente, SLA, asignación TICs, mensajería y cierre. No corresponde a una falla real.', '2026-09-17 08:25:05'),
(70, 15, 23, 9, 'Caso principal abierto', 'Se creó el Caso 15 y se activó la etapa 1 para Contabilidad / Corrección y Aclaración de Ecuación. Asunto: PRUEBA QA 03 - Corrección de ecuación. Solicitud: Caso controlado QA para validar asignación al gestor Contabilidad, clasificación Incidente, SLA, trazabilidad y cierre. No corresponde a una solicitud contable real.', '2026-09-17 08:25:18'),
(71, 13, 21, 9, 'Comunicación con el solicitante registrada', 'Se agregó un mensaje o archivo al chat de Caso 13 · etapa 1.', '2026-09-17 08:26:10'),
(72, 16, 24, 9, 'Caso principal abierto', 'Se creó el Caso 16 y se activó la etapa 1 para TICs / Falla  de servicio de internet. Asunto: QA-TICS-20260918-BF817C Caso 01. Solicitud: Prueba funcional autorizada de creacion, derivaciones TICs y cierre. Identificador QA-TICS-20260918-BF817C', '2026-09-18 08:58:15'),
(73, 16, 25, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1 desde etapa 1 del Caso 16. Destino: TICs / Adecuación de Red. Motivo: Prueba funcional autorizada QA-TICS-20260918-BF817C: verificar derivacion y cierre TICs.', '2026-09-18 08:59:54'),
(74, 16, 24, 28, 'Derivación creada', 'El caso 16 pausó su SLA y creó 1 caso(s) hijo(s): 1.1 (TICs / Adecuación de Red).', '2026-09-18 08:59:54'),
(75, 16, 26, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.1 desde Ticket 1.1. Destino: TICs / Creación de usuario para ingreso a plataforma de Claro. Motivo: 1', '2026-09-18 09:20:57'),
(76, 16, 27, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.2 desde Ticket 1.1. Destino: TICs / Asistencia de Impresora. Motivo: 2', '2026-09-18 09:20:57'),
(77, 16, 28, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.3 desde Ticket 1.1. Destino: TICs / Copia de seguridad. Motivo: 3', '2026-09-18 09:20:57'),
(78, 16, 29, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.4 desde Ticket 1.1. Destino: TICs / Creación de usuario Milldesk. Motivo: 4', '2026-09-18 09:20:57'),
(79, 16, 30, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.5 desde Ticket 1.1. Destino: TICs / Falla  de servicio de internet. Motivo: 5', '2026-09-18 09:20:57'),
(80, 16, 31, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.6 desde Ticket 1.1. Destino: TICs / Falla de Equipos. Motivo: 6', '2026-09-18 09:20:57'),
(81, 16, 32, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.7 desde Ticket 1.1. Destino: TICs / Falla de Impresora. Motivo: 7', '2026-09-18 09:20:57'),
(82, 16, 33, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.8 desde Ticket 1.1. Destino: TICs / Gestión de accesos SICI. Motivo: 8', '2026-09-18 09:20:57'),
(83, 16, 34, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.9 desde Ticket 1.1. Destino: TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR. Motivo: 9', '2026-09-18 09:20:57'),
(84, 16, 35, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.10 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios Correo Corporativo. Motivo: 10', '2026-09-18 09:20:57'),
(85, 16, 36, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.11 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios INFOR. Motivo: 11', '2026-09-18 09:20:57'),
(86, 16, 37, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.12 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios SICI. Motivo: 12', '2026-09-18 09:20:57'),
(87, 16, 38, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.13 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios Uniclass. Motivo: 13', '2026-09-18 09:20:57'),
(88, 16, 39, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.14 desde Ticket 1.1. Destino: TICs / Ingreso de equipos al proyecto BYOD. Motivo: 14', '2026-09-18 09:20:57'),
(89, 16, 40, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.15 desde Ticket 1.1. Destino: TICs / Instalación de software. Motivo: 15', '2026-09-18 09:20:57'),
(90, 16, 41, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.16 desde Ticket 1.1. Destino: TICs / Instalación de VPN CONECTAR. Motivo: 16', '2026-09-18 09:20:57'),
(91, 16, 42, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.17 desde Ticket 1.1. Destino: TICs / Mantenimiento de Equipos de Cómputo. Motivo: 17', '2026-09-18 09:20:57'),
(92, 16, 43, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.18 desde Ticket 1.1. Destino: TICs / Solicitud Equipos de Cómputo. Motivo: 18', '2026-09-18 09:20:57'),
(93, 16, 44, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.19 desde Ticket 1.1. Destino: TICs / Solicitud de servicio de internet. Motivo: 19', '2026-09-18 09:20:57'),
(94, 16, 45, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20 desde Ticket 1.1. Destino: TICs / Solicitud de Creación o modificaciones a Desarrollos. Motivo: 20', '2026-09-18 09:20:57'),
(95, 16, 25, 28, 'Derivación múltiple creada', 'El caso 1.1 pausó su SLA y creó 20 caso(s) hijo(s): 1.1.1 (TICs / Creación de usuario para ingreso a plataforma de Claro), 1.1.2 (TICs / Asistencia de Impresora), 1.1.3 (TICs / Copia de seguridad), 1.1.4 (TICs / Creación de usuario Milldesk), 1.1.5 (TICs / Falla  de servicio de internet), 1.1.6 (TICs / Falla de Equipos), 1.1.7 (TICs / Falla de Impresora), 1.1.8 (TICs / Gestión de accesos SICI), 1.1.9 (TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR), 1.1.10 (TICs / Gestión de Usuarios Correo Corporativo), 1.1.11 (TICs / Gestión de Usuarios INFOR), 1.1.12 (TICs / Gestión de Usuarios SICI), 1.1.13 (TICs / Gestión de Usuarios Uniclass), 1.1.14 (TICs / Ingreso de equipos al proyecto BYOD), 1.1.15 (TICs / Instalación de software), 1.1.16 (TICs / Instalación de VPN CONECTAR), 1.1.17 (TICs / Mantenimiento de Equipos de Cómputo), 1.1.18 (TICs / Solicitud Equipos de Cómputo), 1.1.19 (TICs / Solicitud de servicio de internet), 1.1.20 (TICs / Solicitud de Creación o modificaciones a Desarrollos).', '2026-09-18 09:20:57'),
(96, 16, 26, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-19 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-18 09:23:17'),
(97, 16, 26, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.1. TICs / Creación de usuario para ingreso a plataforma de Claro finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-18 09:23:26'),
(98, 16, 27, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: PRUEBA. Observación: PRUEBA.', '2026-09-18 11:21:36'),
(99, 16, 27, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.2. TICs / Asistencia de Impresora finalizó su atención dentro del SLA. Solución: PRUEBA. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-18 13:01:57'),
(100, 16, 45, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-30 17:00:00. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: Prueba funcional autorizada QA-TICS-20260918-BF817C: gestion verificada..', '2026-09-18 13:02:53'),
(101, 16, 45, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20. TICs / Solicitud de Creación o modificaciones a Desarrollos finalizó su atención dentro del SLA. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: Prueba funcional autorizada QA-TICS-20260918-BF817C: gestion verificada.. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-18 13:04:20'),
(102, 16, 44, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.19 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-02 17:00:00. Solución: pruyeba. Observación: prueba.', '2026-09-18 13:06:51'),
(103, 16, 43, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: entrega de equipo de computo. Observación: prueba.', '2026-09-18 13:16:51'),
(104, 16, 44, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.19. TICs / Solicitud de servicio de internet finalizó su atención dentro del SLA. Solución: pruyeba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-18 13:26:03'),
(105, 16, 43, 28, 'Atención reabierta', 'El creador reabrió . Se invalidó el corte del 2026-09-18 13:16:51 por 0 minuto(s), resultado dentro_sla. Al reabrir acumulaba 0 minuto(s) hábil(es), incluido el tiempo de espera. Nuevo vencimiento visible: 2026-09-24 17:00:00. Motivo de reapertura: prueba.', '2026-09-18 13:26:15'),
(106, 16, 43, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: entrega de equipo de computo. Observación: 00.', '2026-09-18 13:31:23'),
(107, 16, 43, 28, 'Atención reabierta', 'El creador reabrió . Se invalidó el corte del 2026-09-18 13:31:23 por 0 minuto(s), resultado dentro_sla. Al reabrir acumulaba 0 minuto(s) hábil(es), incluido el tiempo de espera. Nuevo vencimiento visible: 2026-09-24 17:00:00. Motivo de reapertura: 0.', '2026-09-18 13:31:29'),
(108, 16, 43, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: entrega de equipo de computo. Observación: 0.', '2026-09-18 13:32:20'),
(109, 16, 43, 28, 'Atención reabierta', 'El creador reabrió Ticket 1.1.18. Se invalidó el corte del 2026-09-18 13:32:20 por 0 minuto(s), resultado dentro_sla. Al reabrir acumulaba 0 minuto(s) hábil(es), incluido el tiempo de espera. Nuevo vencimiento visible: 2026-09-24 17:00:00. Motivo de reapertura: 0.', '2026-09-18 13:32:27'),
(110, 16, 42, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.17 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: 0. Observación: 0.', '2026-09-18 13:34:31'),
(111, 16, 42, 28, 'Atención reabierta', 'El creador reabrió Ticket 1.1.17. Se invalidó el corte del 2026-09-18 13:34:31 por 0 minuto(s), resultado dentro_sla. Al reabrir acumulaba 0 minuto(s) hábil(es), incluido el tiempo de espera. Nuevo vencimiento visible: 2026-09-21 17:00:00. Motivo de reapertura: 0.', '2026-09-18 13:34:35'),
(112, 10, 46, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1 desde etapa 1 del Caso 10. Destino: TICs / Falla de Equipos. Motivo: 1', '2026-09-21 08:09:53'),
(113, 10, 47, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.2 desde etapa 1 del Caso 10. Destino: TICs / Solicitud Equipos de Cómputo. Motivo: 2', '2026-09-21 08:09:53'),
(114, 10, 48, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.3 desde etapa 1 del Caso 10. Destino: TICs / Falla de Impresora. Motivo: 3', '2026-09-21 08:09:53'),
(115, 10, 49, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.4 desde etapa 1 del Caso 10. Destino: TICs / Solicitud de servicio de internet. Motivo: 4', '2026-09-21 08:09:53'),
(116, 10, 50, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.5 desde etapa 1 del Caso 10. Destino: TICs / Adecuación de Red. Motivo: 5', '2026-09-21 08:09:53'),
(117, 10, 51, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.6 desde etapa 1 del Caso 10. Destino: TICs / Falla  de servicio de internet. Motivo: 6', '2026-09-21 08:09:53'),
(118, 10, 52, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.7 desde etapa 1 del Caso 10. Destino: TICs / Asistencia de Impresora. Motivo: 7', '2026-09-21 08:09:53'),
(119, 10, 53, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.8 desde etapa 1 del Caso 10. Destino: TICs / Gestión de Usuarios INFOR. Motivo: 8', '2026-09-21 08:09:53'),
(120, 10, 54, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.9 desde etapa 1 del Caso 10. Destino: TICs / Copia de seguridad. Motivo: 9', '2026-09-21 08:09:53'),
(121, 10, 55, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.10 desde etapa 1 del Caso 10. Destino: TICs / Gestión de Usuarios SICI. Motivo: 10', '2026-09-21 08:09:53'),
(122, 10, 56, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.11 desde etapa 1 del Caso 10. Destino: TICs / Gestión de Usuarios Uniclass. Motivo: 11', '2026-09-21 08:09:53'),
(123, 10, 57, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.12 desde etapa 1 del Caso 10. Destino: TICs / Instalación de software. Motivo: 12', '2026-09-21 08:09:53'),
(124, 10, 58, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.13 desde etapa 1 del Caso 10. Destino: TICs / Instalación de VPN CONECTAR. Motivo: 13', '2026-09-21 08:09:53'),
(125, 10, 59, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.14 desde etapa 1 del Caso 10. Destino: TICs / Mantenimiento de Equipos de Cómputo. Motivo: 14', '2026-09-21 08:09:53'),
(126, 10, 60, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.15 desde etapa 1 del Caso 10. Destino: TICs / Préstamo de equipos de cómputo. Motivo: 15', '2026-09-21 08:09:53'),
(127, 10, 61, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.16 desde etapa 1 del Caso 10. Destino: TICs / Reporte de incidente de seguridad de la información. Motivo: 16', '2026-09-21 08:09:53'),
(128, 10, 62, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.17 desde etapa 1 del Caso 10. Destino: TICs / Ingreso de equipos al proyecto BYOD. Motivo: 17', '2026-09-21 08:09:53'),
(129, 10, 63, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.18 desde etapa 1 del Caso 10. Destino: TICs / Solicitud de acceso al repositorio de Cloud (nube). Motivo: 18', '2026-09-21 08:09:53'),
(130, 10, 64, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.19 desde etapa 1 del Caso 10. Destino: TICs / Solicitud de periféricos. Motivo: 19', '2026-09-21 08:09:53'),
(131, 10, 65, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.20 desde etapa 1 del Caso 10. Destino: TICs / Solicitud de Creación o modificaciones a Desarrollos. Motivo: 20', '2026-09-21 08:09:53'),
(132, 10, 18, 28, 'Derivación múltiple creada', 'El caso 10 pausó su SLA y creó 20 caso(s) hijo(s): 1.1 (TICs / Falla de Equipos), 1.2 (TICs / Solicitud Equipos de Cómputo), 1.3 (TICs / Falla de Impresora), 1.4 (TICs / Solicitud de servicio de internet), 1.5 (TICs / Adecuación de Red), 1.6 (TICs / Falla  de servicio de internet), 1.7 (TICs / Asistencia de Impresora), 1.8 (TICs / Gestión de Usuarios INFOR), 1.9 (TICs / Copia de seguridad), 1.10 (TICs / Gestión de Usuarios SICI), 1.11 (TICs / Gestión de Usuarios Uniclass), 1.12 (TICs / Instalación de software), 1.13 (TICs / Instalación de VPN CONECTAR), 1.14 (TICs / Mantenimiento de Equipos de Cómputo), 1.15 (TICs / Préstamo de equipos de cómputo), 1.16 (TICs / Reporte de incidente de seguridad de la información), 1.17 (TICs / Ingreso de equipos al proyecto BYOD), 1.18 (TICs / Solicitud de acceso al repositorio de Cloud (nube)), 1.19 (TICs / Solicitud de periféricos), 1.20 (TICs / Solicitud de Creación o modificaciones a Desarrollos).', '2026-09-21 08:09:53'),
(133, 10, 46, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la derivación de \"TICs / Falla de Equipos\" de CUY GOMEZ JEISSON SMITH a TICs.', '2026-09-21 08:15:27'),
(134, 10, 48, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la derivación de \"TICs / Falla de Impresora\" de CUY GOMEZ JEISSON SMITH a TICs.', '2026-09-21 08:15:37'),
(135, 10, 66, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.1 desde Ticket 1.1. Destino: TICs / Solicitud Equipos de Cómputo. Motivo: 1', '2026-09-21 08:18:08'),
(136, 10, 67, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.2 desde Ticket 1.1. Destino: TICs / Adecuación de Red. Motivo: 2', '2026-09-21 08:18:08'),
(137, 10, 68, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.3 desde Ticket 1.1. Destino: TICs / Solicitud de servicio de internet. Motivo: 3', '2026-09-21 08:18:08'),
(138, 10, 69, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.4 desde Ticket 1.1. Destino: TICs / Gestión de accesos SICI. Motivo: 4', '2026-09-21 08:18:09'),
(139, 10, 70, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.5 desde Ticket 1.1. Destino: TICs / Gestión de Desarrollo y Evolución de Aplicaciones. Motivo: 5', '2026-09-21 08:18:09'),
(140, 10, 71, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.6 desde Ticket 1.1. Destino: TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR. Motivo: 6', '2026-09-21 08:18:09'),
(141, 10, 72, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.7 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios Correo Corporativo. Motivo: 7', '2026-09-21 08:18:09'),
(142, 10, 73, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.8 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios INFOR. Motivo: 8', '2026-09-21 08:18:09'),
(143, 10, 74, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.9 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios SICI. Motivo: 9', '2026-09-21 08:18:09'),
(144, 10, 75, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.10 desde Ticket 1.1. Destino: TICs / Gestión de Usuarios Uniclass. Motivo: 10', '2026-09-21 08:18:09'),
(145, 10, 76, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.11 desde Ticket 1.1. Destino: TICs / Ingreso de equipos al proyecto BYOD. Motivo: 11', '2026-09-21 08:18:09'),
(146, 10, 77, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.12 desde Ticket 1.1. Destino: TICs / Instalación de software. Motivo: 12', '2026-09-21 08:18:09'),
(147, 10, 78, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.13 desde Ticket 1.1. Destino: TICs / Instalación de VPN CONECTAR. Motivo: 13', '2026-09-21 08:18:09'),
(148, 10, 79, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.14 desde Ticket 1.1. Destino: TICs / Solicitud de Creación o modificaciones a Desarrollos. Motivo: 14', '2026-09-21 08:18:09'),
(149, 10, 80, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.15 desde Ticket 1.1. Destino: TICs / Mantenimiento de Equipos de Cómputo. Motivo: 15', '2026-09-21 08:18:09'),
(150, 10, 81, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.16 desde Ticket 1.1. Destino: TICs / Préstamo de equipos de cómputo. Motivo: 16', '2026-09-21 08:18:09'),
(151, 10, 82, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.17 desde Ticket 1.1. Destino: TICs / Falla de Impresora. Motivo: 17', '2026-09-21 08:18:09'),
(152, 10, 83, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.18 desde Ticket 1.1. Destino: TICs / Solicitud de acceso al repositorio de Cloud (nube). Motivo: 18', '2026-09-21 08:18:09'),
(153, 10, 84, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.19 desde Ticket 1.1. Destino: TICs / Solicitud de periféricos. Motivo: 19', '2026-09-21 08:18:09'),
(154, 10, 85, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20 desde Ticket 1.1. Destino: TICs / Reporte de incidente de seguridad de la información. Motivo: 20', '2026-09-21 08:18:09'),
(155, 10, 46, 28, 'Derivación múltiple creada', 'El caso 1.1 pausó su SLA y creó 20 caso(s) hijo(s): 1.1.1 (TICs / Solicitud Equipos de Cómputo), 1.1.2 (TICs / Adecuación de Red), 1.1.3 (TICs / Solicitud de servicio de internet), 1.1.4 (TICs / Gestión de accesos SICI), 1.1.5 (TICs / Gestión de Desarrollo y Evolución de Aplicaciones), 1.1.6 (TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR), 1.1.7 (TICs / Gestión de Usuarios Correo Corporativo), 1.1.8 (TICs / Gestión de Usuarios INFOR), 1.1.9 (TICs / Gestión de Usuarios SICI), 1.1.10 (TICs / Gestión de Usuarios Uniclass), 1.1.11 (TICs / Ingreso de equipos al proyecto BYOD), 1.1.12 (TICs / Instalación de software), 1.1.13 (TICs / Instalación de VPN CONECTAR), 1.1.14 (TICs / Solicitud de Creación o modificaciones a Desarrollos), 1.1.15 (TICs / Mantenimiento de Equipos de Cómputo), 1.1.16 (TICs / Préstamo de equipos de cómputo), 1.1.17 (TICs / Falla de Impresora), 1.1.18 (TICs / Solicitud de acceso al repositorio de Cloud (nube)), 1.1.19 (TICs / Solicitud de periféricos), 1.1.20 (TICs / Reporte de incidente de seguridad de la información).', '2026-09-21 08:18:09'),
(156, 10, 86, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.1 desde Ticket 1.1.20. Destino: TICs / Falla de Equipos. Motivo: 1', '2026-09-21 08:20:37'),
(157, 10, 87, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.2 desde Ticket 1.1.20. Destino: TICs / Falla de Impresora. Motivo: 2', '2026-09-21 08:20:37'),
(158, 10, 88, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.3 desde Ticket 1.1.20. Destino: TICs / Gestión de accesos SICI. Motivo: 3', '2026-09-21 08:20:37'),
(159, 10, 89, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.4 desde Ticket 1.1.20. Destino: TICs / Gestión de Desarrollo y Evolución de Aplicaciones. Motivo: 4', '2026-09-21 08:20:37'),
(160, 10, 90, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.5 desde Ticket 1.1.20. Destino: TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR. Motivo: 5', '2026-09-21 08:20:37'),
(161, 10, 91, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.6 desde Ticket 1.1.20. Destino: TICs / Gestión de Usuarios Correo Corporativo. Motivo: 6', '2026-09-21 08:20:37'),
(162, 10, 92, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.7 desde Ticket 1.1.20. Destino: TICs / Gestión de Usuarios INFOR. Motivo: 7', '2026-09-21 08:20:37'),
(163, 10, 93, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.8 desde Ticket 1.1.20. Destino: TICs / Gestión de Usuarios SICI. Motivo: 8', '2026-09-21 08:20:37'),
(164, 10, 94, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.9 desde Ticket 1.1.20. Destino: TICs / Gestión de Usuarios Uniclass. Motivo: 9', '2026-09-21 08:20:37'),
(165, 10, 95, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.10 desde Ticket 1.1.20. Destino: TICs / Ingreso de equipos al proyecto BYOD. Motivo: 10', '2026-09-21 08:20:37'),
(166, 10, 96, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.11 desde Ticket 1.1.20. Destino: TICs / Instalación de software. Motivo: 11', '2026-09-21 08:20:37'),
(167, 10, 97, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.12 desde Ticket 1.1.20. Destino: TICs / Instalación de VPN CONECTAR. Motivo: 12', '2026-09-21 08:20:37'),
(168, 10, 98, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.13 desde Ticket 1.1.20. Destino: TICs / Mantenimiento de Equipos de Cómputo. Motivo: 13', '2026-09-21 08:20:37'),
(169, 10, 99, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.14 desde Ticket 1.1.20. Destino: TICs / Préstamo de equipos de cómputo. Motivo: 14', '2026-09-21 08:20:37'),
(170, 10, 100, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.15 desde Ticket 1.1.20. Destino: TICs / Solicitud de acceso al repositorio de Cloud (nube). Motivo: 15', '2026-09-21 08:20:37'),
(171, 10, 101, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.16 desde Ticket 1.1.20. Destino: TICs / Solicitud de Creación o modificaciones a Desarrollos. Motivo: 16', '2026-09-21 08:20:37'),
(172, 10, 102, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.17 desde Ticket 1.1.20. Destino: TICs / Solicitud de periféricos. Motivo: 17', '2026-09-21 08:20:37'),
(173, 10, 103, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.18 desde Ticket 1.1.20. Destino: TICs / Falla  de servicio de internet. Motivo: 18', '2026-09-21 08:20:37'),
(174, 10, 104, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.19 desde Ticket 1.1.20. Destino: TICs / Solicitud Equipos de Cómputo. Motivo: 19', '2026-09-21 08:20:37'),
(175, 10, 105, 28, 'Ticket abierto por derivación', 'Se abrió el Ticket 1.1.20.20 desde Ticket 1.1.20. Destino: TICs / Solicitud de servicio de internet. Motivo: 20', '2026-09-21 08:20:37'),
(176, 10, 85, 28, 'Derivación múltiple creada', 'El caso 1.1.20 pausó su SLA y creó 20 caso(s) hijo(s): 1.1.20.1 (TICs / Falla de Equipos), 1.1.20.2 (TICs / Falla de Impresora), 1.1.20.3 (TICs / Gestión de accesos SICI), 1.1.20.4 (TICs / Gestión de Desarrollo y Evolución de Aplicaciones), 1.1.20.5 (TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR), 1.1.20.6 (TICs / Gestión de Usuarios Correo Corporativo), 1.1.20.7 (TICs / Gestión de Usuarios INFOR), 1.1.20.8 (TICs / Gestión de Usuarios SICI), 1.1.20.9 (TICs / Gestión de Usuarios Uniclass), 1.1.20.10 (TICs / Ingreso de equipos al proyecto BYOD), 1.1.20.11 (TICs / Instalación de software), 1.1.20.12 (TICs / Instalación de VPN CONECTAR), 1.1.20.13 (TICs / Mantenimiento de Equipos de Cómputo), 1.1.20.14 (TICs / Préstamo de equipos de cómputo), 1.1.20.15 (TICs / Solicitud de acceso al repositorio de Cloud (nube)), 1.1.20.16 (TICs / Solicitud de Creación o modificaciones a Desarrollos), 1.1.20.17 (TICs / Solicitud de periféricos), 1.1.20.18 (TICs / Falla  de servicio de internet), 1.1.20.19 (TICs / Solicitud Equipos de Cómputo), 1.1.20.20 (TICs / Solicitud de servicio de internet).', '2026-09-21 08:20:37'),
(177, 10, 105, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.20 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: pruyeba. Observación: prueba.', '2026-09-21 08:22:05'),
(178, 10, 105, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.20. TICs / Solicitud de servicio de internet finalizó su atención dentro del SLA. Solución: pruyeba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:22:16'),
(179, 10, 104, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.19 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: entrega de equipo de computo. Observación: preuba.', '2026-09-21 08:22:35'),
(180, 10, 104, 28, 'Atención reabierta', 'El creador reabrió Ticket 1.1.20.19. Se invalidó el corte del 2026-09-21 08:22:35 por 0 minuto(s), resultado dentro_sla. Al reabrir acumulaba 0 minuto(s) hábil(es), incluido el tiempo de espera. Nuevo vencimiento visible: 2026-09-25 17:00:00. Motivo de reapertura: prueba.', '2026-09-21 08:22:41'),
(181, 10, 104, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.19 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: entrega de equipo de computo. Observación: prueba.', '2026-09-21 08:22:53'),
(182, 10, 104, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.19. TICs / Solicitud Equipos de Cómputo finalizó su atención dentro del SLA. Solución: entrega de equipo de computo. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:23:04'),
(183, 10, 103, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:24:13'),
(184, 10, 103, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.18. TICs / Falla  de servicio de internet finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:24:22'),
(185, 10, 102, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.17 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:24:58'),
(186, 10, 102, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.17. TICs / Solicitud de periféricos finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:25:11'),
(187, 10, 101, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.16 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-11-02 17:00:00. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba.', '2026-09-21 08:25:41'),
(188, 10, 101, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.16. TICs / Solicitud de Creación o modificaciones a Desarrollos finalizó su atención dentro del SLA. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:25:51'),
(189, 10, 100, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.15 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:30:43'),
(190, 10, 100, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.15. TICs / Solicitud de acceso al repositorio de Cloud (nube) finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:31:15'),
(191, 16, 43, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.18 como listo para revisión. El indicador SLA quedó cortado en 32 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: entrega de equipo de computo. Observación: prueba.', '2026-09-21 08:32:08'),
(192, 16, 43, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.18. TICs / Solicitud Equipos de Cómputo finalizó su atención dentro del SLA. Solución: entrega de equipo de computo. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:32:16'),
(193, 16, 28, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.3 como listo para revisión. El indicador SLA quedó cortado en 37 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: Prueba.', '2026-09-21 08:37:35'),
(194, 16, 28, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.3. TICs / Copia de seguridad finalizó su atención dentro del SLA. Solución: prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:37:46'),
(195, 16, 42, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.17 como listo para revisión. El indicador SLA quedó cortado en 39 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: 0. Observación: prueba.', '2026-09-21 08:39:42'),
(196, 16, 42, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.17. TICs / Mantenimiento de Equipos de Cómputo finalizó su atención dentro del SLA. Solución: 0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:39:50'),
(197, 16, 29, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.4 como listo para revisión. El indicador SLA quedó cortado en 40 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:40:27'),
(198, 16, 29, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.4. TICs / Creación de usuario Milldesk finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:41:00'),
(199, 16, 30, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.5 como listo para revisión. El indicador SLA quedó cortado en 41 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:41:26'),
(200, 16, 30, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.5. TICs / Falla  de servicio de internet finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:42:01'),
(201, 16, 41, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.16 como listo para revisión. El indicador SLA quedó cortado en 43 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 08:43:41'),
(202, 16, 41, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.16. TICs / Instalación de VPN CONECTAR finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:43:50'),
(203, 10, 99, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.14 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:44:51'),
(204, 10, 99, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.14. TICs / Préstamo de equipos de cómputo finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:44:58'),
(205, 10, 98, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.13 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: 0. Observación: prueba.', '2026-09-21 08:45:17'),
(206, 10, 98, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.13. TICs / Mantenimiento de Equipos de Cómputo finalizó su atención dentro del SLA. Solución: 0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:45:24'),
(207, 10, 66, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: entrega de equipo de computo. Observación: prueba.', '2026-09-21 08:45:43'),
(208, 10, 66, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.1. TICs / Solicitud Equipos de Cómputo finalizó su atención dentro del SLA. Solución: entrega de equipo de computo. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:45:50');
INSERT INTO `solicitud_historial` (`id_historial`, `id_ticket`, `id_ticket_etapa`, `id_usuario`, `accion`, `detalle`, `creado_en`) VALUES
(209, 10, 65, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.20 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-11-02 17:00:00. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba.', '2026-09-21 08:46:11'),
(210, 10, 65, 28, 'Atención cerrada', 'Se cerró Ticket 1.20. TICs / Solicitud de Creación o modificaciones a Desarrollos finalizó su atención dentro del SLA. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:46:18'),
(211, 10, 67, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 08:46:49'),
(212, 10, 67, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.2. TICs / Adecuación de Red finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:46:56'),
(213, 10, 68, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.3 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: pruyeba. Observación: prueba.', '2026-09-21 08:47:19'),
(214, 10, 68, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.3. TICs / Solicitud de servicio de internet finalizó su atención dentro del SLA. Solución: pruyeba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:47:25'),
(215, 10, 69, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.4 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 08:47:57'),
(216, 10, 69, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.4. TICs / Gestión de accesos SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:48:05'),
(217, 10, 47, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: entrega de equipo de computo. Observación: prueba.', '2026-09-21 08:48:33'),
(218, 10, 47, 28, 'Atención cerrada', 'Se cerró Ticket 1.2. TICs / Solicitud Equipos de Cómputo finalizó su atención dentro del SLA. Solución: entrega de equipo de computo. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:48:40'),
(219, 10, 70, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.5 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-28 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 08:49:04'),
(220, 10, 70, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.5. TICs / Gestión de Desarrollo y Evolución de Aplicaciones finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:49:11'),
(221, 10, 48, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.3 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: Prueba. Observación: Prueba.', '2026-09-21 08:49:25'),
(222, 10, 71, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.6 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: Prueba.', '2026-09-21 08:49:49'),
(223, 10, 71, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.6. TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR finalizó su atención dentro del SLA. Solución: prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:49:55'),
(224, 10, 64, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.19 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba. Observación: ´Pruebaa.', '2026-09-21 08:50:20'),
(225, 10, 64, 28, 'Atención cerrada', 'Se cerró Ticket 1.19. TICs / Solicitud de periféricos finalizó su atención dentro del SLA. Solución: prueba. Observación: ´Pruebaa. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:50:28'),
(226, 10, 63, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: Prueba.', '2026-09-21 08:50:52'),
(227, 10, 63, 28, 'Atención cerrada', 'Se cerró Ticket 1.18. TICs / Solicitud de acceso al repositorio de Cloud (nube) finalizó su atención dentro del SLA. Solución: prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:50:59'),
(228, 16, 40, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.15 como listo para revisión. El indicador SLA quedó cortado en 51 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: Prueba. Observación: Pureba.', '2026-09-21 08:51:27'),
(229, 16, 40, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.15. TICs / Instalación de software finalizó su atención dentro del SLA. Solución: Prueba. Observación: Pureba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:51:32'),
(230, 10, 48, 28, 'Atención cerrada', 'Se cerró Ticket 1.3. TICs / Falla de Impresora finalizó su atención dentro del SLA. Solución: Prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:51:52'),
(231, 10, 62, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.17 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 08:52:45'),
(232, 10, 62, 28, 'Atención cerrada', 'Se cerró Ticket 1.17. TICs / Ingreso de equipos al proyecto BYOD finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:52:53'),
(233, 10, 61, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.16 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 08:53:20'),
(234, 10, 61, 28, 'Atención cerrada', 'Se cerró Ticket 1.16. TICs / Reporte de incidente de seguridad de la información finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:53:29'),
(235, 10, 60, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.15 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:54:41'),
(236, 10, 60, 28, 'Atención cerrada', 'Se cerró Ticket 1.15. TICs / Préstamo de equipos de cómputo finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 08:54:48'),
(237, 11, 19, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 11 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 1135 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-17 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 08:55:41'),
(238, 11, 19, 9, 'Ticket cerrado por resolución en primer contacto', 'El solicitante aprobó el cierre definitivo solicitado por el gestor. Se cancelaron 0 etapa(s) futura(s) que no habían iniciado.', '2026-09-21 08:56:27'),
(239, 12, 20, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 12 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 1137 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-18 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 08:57:49'),
(240, 13, 21, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 13 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 598 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-18 17:00:00. Solución: Prueba. Observación: prueba.', '2026-09-21 08:58:07'),
(241, 3, 6, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 3 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 5458 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-10 17:00:00. Solución: Prueba. Observación: prueba.', '2026-09-21 08:58:21'),
(242, 14, 22, 28, 'Cierre definitivo solicitado por primer contacto', 'El gestor asignado marcó Caso 14 · etapa 1 como resuelto en primer contacto y solicitó el cierre definitivo del ticket. Las etapas siguientes no se activarán si el solicitante aprueba. El indicador SLA quedó cortado en 598 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-18 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 08:58:36'),
(243, 14, 22, 9, 'Ticket cerrado por resolución en primer contacto', 'El solicitante aprobó el cierre definitivo solicitado por el gestor. Se cancelaron 0 etapa(s) futura(s) que no habían iniciado.', '2026-09-21 08:59:32'),
(244, 13, 21, 9, 'Ticket cerrado por resolución en primer contacto', 'El solicitante aprobó el cierre definitivo solicitado por el gestor. Se cancelaron 0 etapa(s) futura(s) que no habían iniciado.', '2026-09-21 08:59:44'),
(245, 12, 20, 9, 'Ticket cerrado por resolución en primer contacto', 'El solicitante aprobó el cierre definitivo solicitado por el gestor. Se cancelaron 0 etapa(s) futura(s) que no habían iniciado.', '2026-09-21 08:59:59'),
(246, 5, 9, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la derivación de \"TICs / Creación de usuario para ingreso a plataforma de Claro\" de CUY GOMEZ JEISSON SMITH a TICs.', '2026-09-21 09:03:28'),
(247, 5, 8, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la etapa de \"TICs / Falla de Equipos\" de CUY GOMEZ JEISSON SMITH a TICs.', '2026-09-21 09:03:37'),
(248, 6, 10, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la etapa de \"TICs / Falla de Equipos\" de CUY GOMEZ JEISSON SMITH a TICs.', '2026-09-21 09:09:24'),
(249, 6, 10, 28, 'Atención marcada como lista', 'El gestor asignado marcó Caso 6 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 4392 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-10 17:00:00. Solución: Prueba. Observación: prueba.', '2026-09-21 09:12:49'),
(250, 5, 9, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1 como listo para revisión. El indicador SLA quedó cortado en 4393 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-07 17:00:00. Solución: prueba. Observación: Prueba.', '2026-09-21 09:13:06'),
(251, 16, 39, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.14 como listo para revisión. El indicador SLA quedó cortado en 73 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 09:13:34'),
(252, 16, 39, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.14. TICs / Ingreso de equipos al proyecto BYOD finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:13:42'),
(253, 10, 72, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.7 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: Reinicio computador. Observación: Prueba.', '2026-09-21 09:13:55'),
(254, 10, 72, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.7. TICs / Gestión de Usuarios Correo Corporativo finalizó su atención dentro del SLA. Solución: Reinicio computador. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:14:02'),
(255, 16, 38, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.13 como listo para revisión. El indicador SLA quedó cortado en 74 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: Asignado. Observación: Prueba.', '2026-09-21 09:14:20'),
(256, 16, 38, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.13. TICs / Gestión de Usuarios Uniclass finalizó su atención dentro del SLA. Solución: Asignado. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:14:30'),
(257, 16, 37, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.12 como listo para revisión. El indicador SLA quedó cortado en 74 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: prueba0. Observación: Prueba.', '2026-09-21 09:14:58'),
(258, 16, 37, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.12. TICs / Gestión de Usuarios SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:15:05'),
(259, 16, 36, 28, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-09-21 09:15:31'),
(260, 16, 36, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.11 como listo para revisión. El indicador SLA quedó cortado en 75 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: no hubo solucion remota. Observación: Prueba.', '2026-09-21 09:15:37'),
(261, 16, 36, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.11. TICs / Gestión de Usuarios INFOR finalizó su atención dentro del SLA. Solución: no hubo solucion remota. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:15:43'),
(262, 16, 35, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.10 como listo para revisión. El indicador SLA quedó cortado en 76 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Reinicio computador. Observación: prueba.', '2026-09-21 09:16:16'),
(263, 10, 73, 28, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-09-21 09:16:26'),
(264, 10, 73, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.8 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: no hubo solucion remota. Observación: prueba.', '2026-09-21 09:16:31'),
(265, 10, 73, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.8. TICs / Gestión de Usuarios INFOR finalizó su atención dentro del SLA. Solución: no hubo solucion remota. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:16:37'),
(266, 16, 35, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.10. TICs / Gestión de Usuarios Correo Corporativo finalizó su atención dentro del SLA. Solución: Reinicio computador. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:16:58'),
(267, 16, 34, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.9 como listo para revisión. El indicador SLA quedó cortado en 77 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: pruebas.', '2026-09-21 09:17:48'),
(268, 16, 34, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.9. TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR finalizó su atención dentro del SLA. Solución: prueba. Observación: pruebas. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:17:56'),
(269, 16, 33, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.8 como listo para revisión. El indicador SLA quedó cortado en 78 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-21 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 09:18:17'),
(270, 16, 33, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.8. TICs / Gestión de accesos SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:18:24'),
(271, 16, 32, 32, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.7 como listo para revisión. El indicador SLA quedó cortado en 79 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: Prueba. Observación: Prueba.', '2026-09-21 09:19:30'),
(272, 16, 31, 32, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.6 como listo para revisión. El indicador SLA quedó cortado en 79 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Prueba. Observación: Prueba.', '2026-09-21 09:19:43'),
(273, 16, 31, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.6. TICs / Falla de Equipos finalizó su atención dentro del SLA. Solución: Prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:20:41'),
(274, 16, 32, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.7. TICs / Falla de Impresora finalizó su atención dentro del SLA. Solución: Prueba. Observación: Prueba. Calificación: gestión 4/5 y tiempo 5/5.', '2026-09-21 09:20:50'),
(275, 16, 25, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Adecuación de Red con 5400 minuto(s) hábil(es) restantes.', '2026-09-21 09:20:50'),
(276, 16, 25, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 09:21:13'),
(277, 16, 25, 28, 'Atención cerrada', 'Se cerró Ticket 1.1. TICs / Adecuación de Red finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:21:20'),
(278, 16, 24, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Falla  de servicio de internet con 540 minuto(s) hábil(es) restantes.', '2026-09-21 09:21:20'),
(279, 16, 24, 28, 'Atención marcada como lista', 'El gestor asignado marcó Caso 16 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 09:21:34'),
(280, 16, 24, 9, 'Atención cerrada', 'Se cerró Caso 16 · etapa 1. TICs / Falla  de servicio de internet finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:22:07'),
(281, 16, 24, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-09-21 09:22:07'),
(282, 10, 74, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.9 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: 0.', '2026-09-21 09:22:51'),
(283, 10, 74, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.9. TICs / Gestión de Usuarios SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: 0. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:22:58'),
(284, 10, 59, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.14 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: 0. Observación: prueba.', '2026-09-21 09:23:41'),
(285, 10, 59, 28, 'Atención cerrada', 'Se cerró Ticket 1.14. TICs / Mantenimiento de Equipos de Cómputo finalizó su atención dentro del SLA. Solución: 0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:23:49'),
(286, 10, 75, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.10 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Asignado. Observación: prueba.', '2026-09-21 09:24:01'),
(287, 10, 75, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.10. TICs / Gestión de Usuarios Uniclass finalizó su atención dentro del SLA. Solución: Asignado. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:24:21'),
(288, 10, 58, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.13 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 09:25:03'),
(289, 10, 58, 28, 'Atención cerrada', 'Se cerró Ticket 1.13. TICs / Instalación de VPN CONECTAR finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:25:09'),
(290, 10, 77, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.12 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Prueba. Observación: 0.', '2026-09-21 09:27:07'),
(291, 10, 77, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.12. TICs / Instalación de software finalizó su atención dentro del SLA. Solución: Prueba. Observación: 0. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:27:15'),
(292, 10, 78, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.13 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 09:27:28'),
(293, 10, 78, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.13. TICs / Instalación de VPN CONECTAR finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:27:34'),
(294, 10, 76, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.11 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba0. Observación: prueba.', '2026-09-21 09:27:49'),
(295, 10, 76, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.11. TICs / Ingreso de equipos al proyecto BYOD finalizó su atención dentro del SLA. Solución: prueba0. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:27:55'),
(296, 10, 79, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.14 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-11-02 17:00:00. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba.', '2026-09-21 09:28:06'),
(297, 10, 79, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.14. TICs / Solicitud de Creación o modificaciones a Desarrollos finalizó su atención dentro del SLA. Solución: QA validacion QA-TICS-20260918-BF817C. Observación: prueba. Calificación: gestión 4/5 y tiempo 5/5.', '2026-09-21 09:28:12'),
(298, 10, 80, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.15 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: 0. Observación: prueba.', '2026-09-21 09:28:24'),
(299, 10, 80, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.15. TICs / Mantenimiento de Equipos de Cómputo finalizó su atención dentro del SLA. Solución: 0. Observación: prueba. Calificación: gestión 4/5 y tiempo 5/5.', '2026-09-21 09:28:32'),
(300, 10, 81, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.16 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 09:28:46'),
(301, 10, 81, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.16. TICs / Préstamo de equipos de cómputo finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:28:59'),
(302, 10, 57, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.12 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Prueba. Observación: oprueba.', '2026-09-21 09:29:30'),
(303, 10, 57, 28, 'Atención cerrada', 'Se cerró Ticket 1.12. TICs / Instalación de software finalizó su atención dentro del SLA. Solución: Prueba. Observación: oprueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:29:35'),
(304, 10, 56, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.11 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Asignado. Observación: prueba.', '2026-09-21 09:29:48'),
(305, 10, 56, 28, 'Atención cerrada', 'Se cerró Ticket 1.11. TICs / Gestión de Usuarios Uniclass finalizó su atención dentro del SLA. Solución: Asignado. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:29:53'),
(306, 10, 82, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.17 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: Prueba. Observación: prueba.', '2026-09-21 09:30:11'),
(307, 10, 82, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.17. TICs / Falla de Impresora finalizó su atención dentro del SLA. Solución: Prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:30:18'),
(308, 10, 83, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.18 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 09:30:33'),
(309, 10, 83, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.18. TICs / Solicitud de acceso al repositorio de Cloud (nube) finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:30:39'),
(310, 10, 84, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.19 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba. Observación: prueba.', '2026-09-21 09:30:53'),
(311, 10, 84, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.19. TICs / Solicitud de periféricos finalizó su atención dentro del SLA. Solución: prueba. Observación: prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:31:00'),
(312, 10, 55, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.10 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: pruebA.', '2026-09-21 09:31:27'),
(313, 10, 55, 28, 'Atención cerrada', 'Se cerró Ticket 1.10. TICs / Gestión de Usuarios SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: pruebA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:31:33'),
(314, 10, 86, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: Prueba. Observación: PRUEBA.', '2026-09-21 09:31:48'),
(315, 10, 86, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.1. TICs / Falla de Equipos finalizó su atención dentro del SLA. Solución: Prueba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:31:54'),
(316, 10, 97, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.12 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: PRUEBA.', '2026-09-21 09:32:06'),
(317, 10, 97, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.12. TICs / Instalación de VPN CONECTAR finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:32:14'),
(318, 10, 87, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.2 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-25 17:00:00. Solución: Prueba. Observación: PRUEBA.', '2026-09-21 09:32:25'),
(319, 10, 87, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.2. TICs / Falla de Impresora finalizó su atención dentro del SLA. Solución: Prueba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:32:30'),
(320, 10, 88, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.3 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: PRUEBAS.', '2026-09-21 09:32:44'),
(321, 10, 88, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.3. TICs / Gestión de accesos SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBAS. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:32:49'),
(322, 10, 96, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.11 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Prueba. Observación: PRUEBAS.', '2026-09-21 09:33:13'),
(323, 10, 96, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.11. TICs / Instalación de software finalizó su atención dentro del SLA. Solución: Prueba. Observación: PRUEBAS. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:33:17'),
(324, 10, 95, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.10 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba0. Observación: PRUEBAS.', '2026-09-21 09:33:31'),
(325, 10, 95, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.10. TICs / Ingreso de equipos al proyecto BYOD finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBAS. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:33:37'),
(326, 10, 94, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.9 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: Asignado. Observación: PRUEBAS.', '2026-09-21 09:33:52'),
(327, 10, 94, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.9. TICs / Gestión de Usuarios Uniclass finalizó su atención dentro del SLA. Solución: Asignado. Observación: PRUEBAS. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:33:56'),
(328, 10, 89, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.4 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-28 17:00:00. Solución: prueba0. Observación: PRUEBA.', '2026-09-21 09:34:10'),
(329, 10, 89, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.4. TICs / Gestión de Desarrollo y Evolución de Aplicaciones finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:34:16'),
(330, 10, 54, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.9 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: PRUEBA.', '2026-09-21 09:37:15'),
(331, 10, 54, 28, 'Atención cerrada', 'Se cerró Ticket 1.9. TICs / Copia de seguridad finalizó su atención dentro del SLA. Solución: prueba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:37:21'),
(332, 10, 93, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.8 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba0. Observación: PRUEBA.', '2026-09-21 09:37:37'),
(333, 10, 93, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.8. TICs / Gestión de Usuarios SICI finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:37:43'),
(334, 10, 90, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.5 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba. Observación: PRUEBA.', '2026-09-21 09:37:59'),
(335, 10, 90, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.5. TICs / Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR finalizó su atención dentro del SLA. Solución: prueba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:38:04'),
(336, 10, 91, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.6 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: Reinicio computador. Observación: PRUEBA.', '2026-09-21 09:38:19'),
(337, 10, 91, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.6. TICs / Gestión de Usuarios Correo Corporativo finalizó su atención dentro del SLA. Solución: Reinicio computador. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:38:24'),
(338, 10, 92, 28, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-09-21 09:38:51'),
(339, 10, 92, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20.7 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: no hubo solucion remota. Observación: pRUEBA.', '2026-09-21 09:39:04'),
(340, 10, 92, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20.7. TICs / Gestión de Usuarios INFOR finalizó su atención dentro del SLA. Solución: no hubo solucion remota. Observación: pRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:39:11'),
(341, 10, 85, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Reporte de incidente de seguridad de la información con 1080 minuto(s) hábil(es) restantes.', '2026-09-21 09:39:11'),
(342, 10, 49, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.4 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: pruyeba. Observación: PRUEBA.', '2026-09-21 09:39:31'),
(343, 10, 49, 28, 'Atención cerrada', 'Se cerró Ticket 1.4. TICs / Solicitud de servicio de internet finalizó su atención dentro del SLA. Solución: pruyeba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:39:37'),
(344, 10, 50, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.5 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-10-05 17:00:00. Solución: prueba0. Observación: PRUEBA.', '2026-09-21 09:40:12'),
(345, 10, 50, 28, 'Atención cerrada', 'Se cerró Ticket 1.5. TICs / Adecuación de Red finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:40:17'),
(346, 10, 85, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1.20 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: prueba0. Observación: PRUEBA.', '2026-09-21 09:40:29'),
(347, 10, 85, 28, 'Atención cerrada', 'Se cerró Ticket 1.1.20. TICs / Reporte de incidente de seguridad de la información finalizó su atención dentro del SLA. Solución: prueba0. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:40:34'),
(348, 10, 46, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Falla de Equipos con 1080 minuto(s) hábil(es) restantes.', '2026-09-21 09:40:34'),
(349, 10, 52, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.7 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: PRUEBA. Observación: PRUEVBA.', '2026-09-21 09:40:51'),
(350, 10, 52, 28, 'Atención cerrada', 'Se cerró Ticket 1.7. TICs / Asistencia de Impresora finalizó su atención dentro del SLA. Solución: PRUEBA. Observación: PRUEVBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:40:57'),
(351, 10, 53, 28, 'Checklist actualizado', 'El gestor actualizó el checklist de la etapa activa.', '2026-09-21 09:41:10'),
(352, 10, 53, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.8 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: no hubo solucion remota. Observación: PRUEBA.', '2026-09-21 09:41:16'),
(353, 10, 53, 28, 'Atención cerrada', 'Se cerró Ticket 1.8. TICs / Gestión de Usuarios INFOR finalizó su atención dentro del SLA. Solución: no hubo solucion remota. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:41:21'),
(354, 10, 51, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.6 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-22 17:00:00. Solución: prueba. Observación: PRUEBA.', '2026-09-21 09:41:35'),
(355, 10, 51, 28, 'Atención cerrada', 'Se cerró Ticket 1.6. TICs / Falla  de servicio de internet finalizó su atención dentro del SLA. Solución: prueba. Observación: PRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:41:43'),
(356, 10, 46, 28, 'Atención marcada como lista', 'El gestor asignado marcó Ticket 1.1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-23 17:00:00. Solución: Prueba. Observación: pRUEBA.', '2026-09-21 09:41:57'),
(357, 10, 46, 28, 'Atención cerrada', 'Se cerró Ticket 1.1. TICs / Falla de Equipos finalizó su atención dentro del SLA. Solución: Prueba. Observación: pRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:42:03'),
(358, 10, 18, 28, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Gestión de accesos SICI con 0 minuto(s) hábil(es) restantes.', '2026-09-21 09:42:03'),
(359, 10, 18, 28, 'Atención marcada como lista', 'El gestor asignado marcó Caso 10 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 1089 minuto(s) hábil(es), con resultado fuera del SLA. El vencimiento visible se conserva en 2026-09-21 09:42:03. Solución: prueba0. Observación: ´pRUEBA.', '2026-09-21 09:42:23'),
(360, 10, 18, 9, 'Atención cerrada', 'Se cerró Caso 10 · etapa 1. TICs / Gestión de accesos SICI finalizó su atención fuera del SLA. Solución: prueba0. Observación: ´pRUEBA. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-21 09:42:56'),
(361, 10, 18, 9, 'Ticket cerrado definitivamente', 'Todos los casos fueron marcados como listos, aprobados y calificados por sus respectivos creadores. La encuesta principal corresponde únicamente al servicio solicitado.', '2026-09-21 09:42:56'),
(362, 5, 8, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la etapa de \"TICs / Falla de Equipos\" de TICs a CUY GOMEZ JEISSON SMITH.', '2026-09-22 16:45:02'),
(363, 5, 9, 1, 'Gestor reasignado manualmente', 'El administrador reasignó la derivación de \"TICs / Creación de usuario para ingreso a plataforma de Claro\" de TICs a CUY GOMEZ JEISSON SMITH.', '2026-09-22 16:45:15'),
(364, 5, 9, 32, 'Atención cerrada', 'Se cerró Ticket 1.1. TICs / Creación de usuario para ingreso a plataforma de Claro finalizó su atención dentro del SLA. Solución: prueba. Observación: Prueba. Calificación: gestión 5/5 y tiempo 5/5.', '2026-09-22 16:45:37'),
(365, 5, 8, 32, 'Caso padre reanudado', 'Todos los casos hijos finalizaron. Se reanudó TICs / Falla de Equipos con 1080 minuto(s) hábil(es) restantes.', '2026-09-22 16:45:37'),
(366, 5, 8, 32, 'Atención marcada como lista', 'El gestor asignado marcó Caso 5 · etapa 1 como listo para revisión. El indicador SLA quedó cortado en 0 minuto(s) hábil(es), con resultado dentro del SLA. El vencimiento visible se conserva en 2026-09-24 17:00:00. Solución: Prueba. Observación: 0.', '2026-09-22 16:45:48');

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
(12, 5, 'prueba', 'prueba', 'activo', 1, 1, 1, '2026-08-27 12:31:31', '2026-08-27 17:31:31'),
(13, 48, 'exitosa', 'exitosa', 'activo', 1, 1, 1, '2026-08-27 12:38:01', '2026-08-27 17:38:01'),
(14, 48, 'prueba', 'prueba', 'activo', 2, 1, 1, '2026-09-07 14:11:13', '2026-09-07 19:25:06'),
(15, 17, 'Compra de equipo', 'Adquisición de equipo con proveedor.,', 'activo', 1, 1, 1, '2026-09-15 11:42:59', '2026-09-15 16:42:59'),
(16, 180, 'entrega de equipo de computo', 'entrega de equipo de computo disponibles de tecnologias', 'activo', 1, 1, 1, '2026-09-15 11:46:13', '2026-09-15 16:46:13'),
(17, 183, 'Prueba', 'Prueba', 'activo', 1, 28, 28, '2026-09-16 10:52:43', '2026-09-16 15:52:43'),
(18, 179, 'Prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-16 11:15:37', '2026-09-16 16:15:37'),
(19, 187, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-18 09:23:11', '2026-09-18 14:23:11'),
(20, 177, 'PRUEBA', 'PRUEBA', 'activo', 1, 28, 28, '2026-09-18 11:21:30', '2026-09-18 16:21:30'),
(21, 173, 'QA validacion QA-TICS-20260918-BF817C', 'Solucion de prueba autorizada para verificar derivaciones TICs.', 'activo', 1, 28, 28, '2026-09-18 13:02:53', '2026-09-18 18:02:53'),
(22, 185, 'pruyeba', '´prueba', 'activo', 1, 28, 28, '2026-09-18 13:06:45', '2026-09-18 18:06:45'),
(23, 189, '0', '0', 'activo', 1, 28, 28, '2026-09-18 13:34:28', '2026-09-18 18:34:28'),
(24, 186, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:24:08', '2026-09-21 13:24:08'),
(25, 181, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:24:51', '2026-09-21 13:24:51'),
(26, 192, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:30:38', '2026-09-21 13:30:38'),
(27, 184, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:37:31', '2026-09-21 13:37:31'),
(28, 182, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:40:23', '2026-09-21 13:40:23'),
(29, 176, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:43:37', '2026-09-21 13:43:37'),
(30, 188, 'prueba', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:44:48', '2026-09-21 13:44:48'),
(31, 178, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:46:47', '2026-09-21 13:46:47'),
(32, 172, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:47:54', '2026-09-21 13:47:54'),
(33, 193, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:49:01', '2026-09-21 13:49:01'),
(34, 174, 'prueba', 'Prueba', 'activo', 1, 28, 28, '2026-09-21 08:49:46', '2026-09-21 13:49:46'),
(35, 175, 'Prueba', 'Prueba', 'activo', 1, 28, 28, '2026-09-21 08:51:20', '2026-09-21 13:51:20'),
(36, 190, 'prueba0', 'Prueba', 'activo', 1, 28, 28, '2026-09-21 08:52:43', '2026-09-21 13:52:43'),
(37, 191, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 08:53:17', '2026-09-21 13:53:17'),
(38, 10, 'prueba0', 'prueba', 'activo', 1, 28, 28, '2026-09-21 09:14:55', '2026-09-21 14:14:55'),
(39, 114, 'Prueba', 'Prueba', 'activo', 1, 20, 20, '2026-09-21 16:41:40', '2026-09-21 21:41:40'),
(40, 116, 'Prueba', 'Prueba', 'activo', 2, 20, 20, '2026-09-21 16:59:30', '2026-09-21 21:59:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `storage_objetos`
--

CREATE TABLE `storage_objetos` (
  `id_storage_objeto` bigint(20) UNSIGNED NOT NULL,
  `tipo_entidad` varchar(32) NOT NULL,
  `id_entidad` bigint(20) UNSIGNED NOT NULL,
  `id_pais_operacion` smallint(5) UNSIGNED DEFAULT NULL,
  `proveedor` varchar(16) NOT NULL,
  `estado` varchar(16) NOT NULL,
  `drive_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `parent_item_id` varchar(255) DEFAULT NULL,
  `ruta_logica` varchar(700) NOT NULL,
  `nombre_remoto` varchar(255) NOT NULL,
  `nombre_original` varchar(255) DEFAULT NULL,
  `tipo_mime` varchar(150) NOT NULL,
  `tamano` bigint(20) UNSIGNED NOT NULL,
  `sha256` char(64) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `storage_objetos`
--

INSERT INTO `storage_objetos` (`id_storage_objeto`, `tipo_entidad`, `id_entidad`, `id_pais_operacion`, `proveedor`, `estado`, `drive_id`, `item_id`, `parent_item_id`, `ruta_logica`, `nombre_remoto`, `nombre_original`, `tipo_mime`, `tamano`, `sha256`, `etag`, `creado_en`, `actualizado_en`) VALUES
(1, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EOGITN53ZHS6NAJJC7BQLDAPIYU', '01GZGR3EPYMY2BAC33DZFIJRABAHPNGHBO', 'perfiles/CO/1/perfil-633141cd7f073e65f9b515119aec5b1c.png', 'perfil-633141cd7f073e65f9b515119aec5b1c.png', 'perfil-633141cd7f073e65f9b515119aec5b1c.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{DDDB44C6-F2E4-40F3-948B-E182C607A314},1\"', '2026-09-16 08:15:22', '2026-09-16 08:15:25'),
(2, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EKZ6UR3ZK5F2RDKJ4NJXWQE3IPO', '01GZGR3EPYMY2BAC33DZFIJRABAHPNGHBO', 'perfiles/CO/1/perfil-4a8f2de8b8e7a8ffa0fe948e82425f26.png', 'perfil-4a8f2de8b8e7a8ffa0fe948e82425f26.png', 'perfil-4a8f2de8b8e7a8ffa0fe948e82425f26.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{BC23F559-A5AB-46D4-A4F1-A9BDA04DA1EE},1\"', '2026-09-16 08:15:25', '2026-09-16 08:15:28'),
(3, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EJ3D3XXZKUUAFDZPGJ7Y7PJ62XQ', '01GZGR3EPYMY2BAC33DZFIJRABAHPNGHBO', 'perfiles/CO/1/perfil-e5f8b0f704666b885cd31bf734b744b4.png', 'perfil-e5f8b0f704666b885cd31bf734b744b4.png', 'perfil-e5f8b0f704666b885cd31bf734b744b4.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{7CEF1E3B-94AA-4701-9799-3FC7DE9F6AF0},1\"', '2026-09-16 08:15:28', '2026-09-16 08:15:32'),
(4, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPDYPGB3T554BBJS67BRUXA6VKF', '01GZGR3EPYMY2BAC33DZFIJRABAHPNGHBO', 'perfiles/CO/1/perfil-2a3dc23117b203e3f26b3a3df37daa2a.png', 'perfil-2a3dc23117b203e3f26b3a3df37daa2a.png', 'perfil-2a3dc23117b203e3f26b3a3df37daa2a.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{1DCCC3E3-BDCF-42E0-997B-E18D2E0F5545},1\"', '2026-09-16 08:15:32', '2026-09-16 08:50:32'),
(5, 'solicitud_adjunto', 7, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3ELJEA7BLDGFOJEYTCPJIOR6RX44', '01GZGR3EKSMSFC7MY2F5EZQPU756SNNWOU', 'adjuntos/CO/9/16/flujo_9_1178872a1f4f90f9b6f97707.xlsx', 'flujo_9_1178872a1f4f90f9b6f97707.xlsx', 'Control_Usuarios.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1169512, 'f00ed3cbc97028b18cf95e126c0770a44f8f342c30c194d9fe939a5c3645672d', '\"{153E2069-C58C-4972-8989-E943A3E8DF9C},1\"', '2026-09-16 08:19:32', '2026-09-16 08:19:32'),
(6, 'solicitud_adjunto', 8, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPCJBNKPB4MHBF2CIJ2AZX3GSIA', '01GZGR3EKSMSFC7MY2F5EZQPU756SNNWOU', 'adjuntos/CO/9/16/flujo_9_4579e4020e77bd2807e17706.png', 'flujo_9_4579e4020e77bd2807e17706.png', 'MyFiles.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{A75A48E2-8C87-4B38-A121-3A066FB34900},1\"', '2026-09-16 08:19:33', '2026-09-16 08:19:33'),
(7, 'solicitud_adjunto', 9, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EMLVU5EF4NSTRFZTJOMHFZKEC3I', '01GZGR3EKSMSFC7MY2F5EZQPU756SNNWOU', 'adjuntos/CO/9/16/flujo_9_20c4d2e51c6a7a5540d42bea.xlsx', 'flujo_9_20c4d2e51c6a7a5540d42bea.xlsx', 'XSYSTEM JUNIO.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1397989, '271534bc7e3937e8a453ca50af3afb2a656783ca220a3ec7e4a408f56534f9d6', '\"{423AAD8B-B2F1-4B9C-99A5-CC3972A20B68},1\"', '2026-09-16 08:19:34', '2026-09-16 08:19:34'),
(8, 'imagen_catalogo', 15, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EM7FDRGSYN4G5C2EPN6ETWTPHGG', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_7960e96cebdace8e0e43e816332c613a.webp', 'catalogo_7960e96cebdace8e0e43e816332c613a.webp', 'tesoreria.png', 'image/webp', 2002, '2e5aaef3123529d5377feb6a7d09f9e57ba863a53bcede8e76ba7e2e25235189', '\"{69E2289F-BC61-4537-A23D-BE24ED379CC6},1\"', '2026-09-16 08:21:29', '2026-09-16 09:01:39'),
(9, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3ENZDEYVLD52XBGLILBGMQRBAGBB', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-403cdc3089bc6d7307fc00d964b9ddb7.webp', 'perfil-1-403cdc3089bc6d7307fc00d964b9ddb7.webp', 'perfil-1-403cdc3089bc6d7307fc00d964b9ddb7.webp', 'image/webp', 2002, '2e5aaef3123529d5377feb6a7d09f9e57ba863a53bcede8e76ba7e2e25235189', '\"{553119B9-BA8F-4CB8-B42C-266422101821},1\"', '2026-09-16 08:50:32', '2026-09-16 08:50:44'),
(10, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3ENO23ZLGOLEGRC22MIYS77KJO7D', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-1d67284d6425a7ddaec27c3f7fb4e818.png', 'perfil-1-1d67284d6425a7ddaec27c3f7fb4e818.png', 'perfil-1-1d67284d6425a7ddaec27c3f7fb4e818.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{B3F2D6AE-6439-4534-AD31-1897FEA4BBE3},1\"', '2026-09-16 08:50:44', '2026-09-16 08:54:24'),
(11, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EOU6CRRQHM6RZF2FHUC2X3FEQRK', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-3bbe808ca6cacb71b683fb9eb5387ff4.png', 'perfil-1-3bbe808ca6cacb71b683fb9eb5387ff4.png', 'perfil-1-3bbe808ca6cacb71b683fb9eb5387ff4.png', 'image/png', 99785, '3ea09d46c557ee57445e446b6f1a0177b2d13834381706801e5612d2766cbb1d', '\"{18A3F0D4-9E1D-4B8E-A29E-82D5F652422A},1\"', '2026-09-16 08:54:24', '2026-09-16 09:17:38'),
(12, 'imagen_catalogo', 1, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EO7GR4TI6GVHFC3DVGC5GLGXURY', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_b73d5ae1515f773714a66b8f77d579c2.webp', 'catalogo_b73d5ae1515f773714a66b8f77d579c2.webp', 'administracion.webp', 'image/webp', 4782, '7445e350ea01dc169ec5359fe298f6dfa2111f50771b0def2f5cf49fa19ceae3', '\"{347934DF-D578-4539-B1D4-C2E9966BD238},1\"', '2026-09-16 08:55:15', '2026-09-16 08:55:15'),
(13, 'imagen_catalogo', 2, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EJDZ6KWHEHLEJBILYK5RBIAPRDB', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_a811b8f5c6422fb8c379a8462386e550.webp', 'catalogo_a811b8f5c6422fb8c379a8462386e550.webp', 'contabilidad.webp', 'image/webp', 4836, '6a7ce3ea1adcdb6575caef020d276f668ef79ba8a3ce7d22fd578aeaddb393c2', '\"{6395CF23-EB90-4222-85E1-5D885007C461},1\"', '2026-09-16 08:56:32', '2026-09-16 08:56:32'),
(14, 'imagen_catalogo', 13, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPCEXR3AMXW5BCZFWJXS6L4MZGR', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_7117888b954bf6cb88ab677226b965c5.webp', 'catalogo_7117888b954bf6cb88ab677226b965c5.webp', 'control interno.webp', 'image/webp', 1830, '7e46075cf953c41ca56298ffa3b3b414306ab21fb7a53415f8e067861f83e7e0', '\"{B0E325E2-F632-45E8-92D9-379797C664D1},1\"', '2026-09-16 08:57:10', '2026-09-16 08:57:10'),
(15, 'imagen_catalogo', 12, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EP4EN6ZXJQOMBGL3S7WBB2JMOM4', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_6aa8ef274ecad32c5273a339249250f1.webp', 'catalogo_6aa8ef274ecad32c5273a339249250f1.webp', 'controller.webp', 'image/webp', 4022, 'aa1e06338a9516a4eb3144c49eb5c75bd08a1223a0c5f8b0d8dce873a1275f1c', '\"{9B7D23FC-0EA6-4C60-BDCB-F6087496399C},1\"', '2026-09-16 08:58:22', '2026-09-16 08:58:22'),
(16, 'imagen_catalogo', 3, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EOSSG4DTUOHNJAK52EA64TL7Y6R', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_6fe57a563cf40d372ae32957eec91283.webp', 'catalogo_6fe57a563cf40d372ae32957eec91283.webp', 'juridica.webp', 'image/webp', 6114, '373b6434eb2e1ee4cfd87fc02f6e0cc9774543672ecdba017d55080dd43bf02a', '\"{39B891D2-C7D1-406A-AEE8-80F726BFE3D1},1\"', '2026-09-16 08:58:44', '2026-09-16 08:58:44'),
(17, 'imagen_catalogo', 5, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EOQX4DMMZ2VYVBIW5FYHTHZRT4E', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_27778985cc70b27843612e96fd5152a1.webp', 'catalogo_27778985cc70b27843612e96fd5152a1.webp', 'talento humano.webp', 'image/webp', 5076, '94511af60967c3ae183d9c3d53b55b08b7b56cb652dcdfe5cb6b37b29900a8ff', '\"{C606BFD0-5567-42C5-8B74-B83CCF98CF84},1\"', '2026-09-16 08:59:22', '2026-09-16 08:59:22'),
(18, 'imagen_catalogo', 6, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EOZUZ5G3XJYNBCKRT6V6VF62VXF', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_92f6c21c05a575546a2531d6b26abf86.webp', 'catalogo_92f6c21c05a575546a2531d6b26abf86.webp', 'tics.webp', 'image/webp', 6128, '4b4ee0860eecc7a08bd841c8e8e0432b31419a9df8b86da641e435424dc1f96e', '\"{6D7AA6D9-38DD-4468-A8CF-D5F54BED56E5},1\"', '2026-09-16 08:59:50', '2026-09-16 08:59:50'),
(19, 'imagen_catalogo', 14, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3ENR5VZHWPM4URCJSOTPD3CQATMR', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_f01b7f59ddef4179fe6e3c4dbe3768cb.webp', 'catalogo_f01b7f59ddef4179fe6e3c4dbe3768cb.webp', 'cadena.webp', 'image/webp', 4856, 'd90616b73614aaa859fd71a3e3398a15152e3a648d712b3b9b6348b3e528e5d3', '\"{7B72EDB1-9C3D-44A4-993A-6F1EC5004D91},1\"', '2026-09-16 09:00:29', '2026-09-16 09:00:29'),
(20, 'imagen_catalogo', 11, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPNGELT42KKNVDLP4DNSMOKBBG7', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_8d443cae9a9d77936b3b18655d92b34e.webp', 'catalogo_8d443cae9a9d77936b3b18655d92b34e.webp', 'estrattegia.webp', 'image/webp', 4938, '227df270de105863b5f2e29d6cc15d79b5dbb69ff14fe38194c3db5d97632fef', '\"{3E1731ED-4A69-466D-B7F0-6D931CA084DF},1\"', '2026-09-16 09:01:05', '2026-09-16 09:01:05'),
(21, 'imagen_catalogo', 15, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPOCEQEPCYQFZA3O3PGR7UHLHBL', '01GZGR3EIGAACNDYWQNJB2GWITD3ZJHNRW', 'catalogos/CO/catalogo_9fa2e0bc1f300d22d2b0a7cf47cb38c7.webp', 'catalogo_9fa2e0bc1f300d22d2b0a7cf47cb38c7.webp', 'tesoreria.png', 'image/webp', 2002, '2e5aaef3123529d5377feb6a7d09f9e57ba863a53bcede8e76ba7e2e25235189', '\"{472011EE-108B-412E-B76D-E68FE8759C2B},1\"', '2026-09-16 09:01:39', '2026-09-16 09:01:39'),
(22, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EODFOUELXAD4RFIUV2GRIC5ANIM', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-4459391717793cb1c756308f1796efa0.webp', 'perfil-1-4459391717793cb1c756308f1796efa0.webp', 'perfil-1-4459391717793cb1c756308f1796efa0.webp', 'image/webp', 4938, '227df270de105863b5f2e29d6cc15d79b5dbb69ff14fe38194c3db5d97632fef', '\"{45A82BC3-03DC-4AE4-8A57-468A05D0350C},1\"', '2026-09-16 09:17:38', '2026-09-16 14:33:23'),
(23, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EJIGAGTA4ZJ5VCJSFF34KEYWO35', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-0c7efbfec4b746613df9f79e6aaff36a.webp', 'perfil-1-0c7efbfec4b746613df9f79e6aaff36a.webp', 'perfil-1-0c7efbfec4b746613df9f79e6aaff36a.webp', 'image/webp', 4938, '227df270de105863b5f2e29d6cc15d79b5dbb69ff14fe38194c3db5d97632fef', '\"{300D3028-2973-44ED-9914-BBE2898B3B7D},1\"', '2026-09-16 14:33:23', '2026-09-16 14:33:33'),
(24, 'perfil_usuario', 1, 1, 'graph', 'retirado', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EIUAVCWCYZYVBEYB4OMJNH5ICVR', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-a543801fa5709236793261f50fd109a5.webp', 'perfil-1-a543801fa5709236793261f50fd109a5.webp', 'perfil-1-a543801fa5709236793261f50fd109a5.webp', 'image/webp', 4856, 'd90616b73614aaa859fd71a3e3398a15152e3a648d712b3b9b6348b3e528e5d3', '\"{61450514-3863-49A8-80F1-CC4B4FD40AB1},1\"', '2026-09-16 14:33:33', '2026-09-16 14:33:42'),
(25, 'perfil_usuario', 1, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3EPOAPX24WQI5FA32M6PDUM7AAUH', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-1-1299fc55d17d059d06ddbd99a41a8a2d.webp', 'perfil-1-1299fc55d17d059d06ddbd99a41a8a2d.webp', 'perfil-1-1299fc55d17d059d06ddbd99a41a8a2d.webp', 'image/webp', 6114, '373b6434eb2e1ee4cfd87fc02f6e0cc9774543672ecdba017d55080dd43bf02a', '\"{AEEF03EE-085A-41E9-BD33-CF1D19F00287},1\"', '2026-09-16 14:33:42', '2026-09-16 14:33:42'),
(26, 'perfil_usuario', 28, 1, 'graph', 'disponible', 'b!WFtgnbXeo0ik_oxbrEb6MXHU64CPDOpOgN2A1kiMqCv86b9_qbWlR4E8gqmjzwDt', '01GZGR3ENM7SLME3Q2SJHLIVDFB7RH23N5', '01GZGR3EL7HSFHNZ2XZJEI4ZIT6L5IYC5L', 'perfiles/CO/perfil-28-6f296696fd17a87f9d4d4183e28bdff8.png', 'perfil-28-6f296696fd17a87f9d4d4183e28bdff8.png', 'perfil-28-6f296696fd17a87f9d4d4183e28bdff8.png', 'image/png', 1083341, '21b4131c54596103dde1514e220f80695f64d9205a635bd96fcc0cb688baec15', '\"{C296FCAC-1A6E-4E92-B454-650FE27D6DBD},1\"', '2026-09-22 09:10:02', '2026-09-22 09:10:02');

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
(2, 1, 'prueba', 'prueba', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 4, 7, 1, 'cerrado', NULL, '2026-08-31 09:05:33', '2026-08-31 09:14:09', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-08-31 14:14:09'),
(3, 1, 'Tinta baja', 'Al imprimir se envidencia que la tinta es baja', 'Requerimiento', 'abierto', 'media', 2, NULL, 2, 'media', 3, 31, 28, 179, 175, 'en_proceso', 6, '2026-09-04 14:23:19', NULL, NULL, NULL, NULL, '2026-09-21 13:58:21'),
(4, 1, 'Falla del teclado', 'No me funciona algunas teclas', 'Requerimiento', 'abierto', 'media', 2, NULL, 2, 'media', 3, 31, 28, 183, 174, 'en_proceso', 7, '2026-09-08 07:50:58', NULL, NULL, NULL, NULL, '2026-09-16 15:52:43'),
(5, 1, 'Prueba3', 'No sirvieron las otras 2', 'Requerimiento', 'en_proceso', 'media', 2, NULL, 2, 'media', 3, 31, 32, 183, 174, 'en_proceso', 8, '2026-09-08 11:25:14', NULL, NULL, NULL, NULL, '2026-09-22 21:45:48'),
(6, 1, 'N/A', 'No me intereesaw', 'Requerimiento', 'abierto', 'media', 2, NULL, 2, 'media', 3, 31, 28, 183, 174, 'en_proceso', 10, '2026-09-08 13:50:15', NULL, NULL, NULL, NULL, '2026-09-21 14:12:49'),
(7, 1, 'Falla usuario de info', 'fallo usuario de Infor', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 9, 9, 'cerrado', NULL, '2026-09-15 11:24:26', '2026-09-15 11:32:19', NULL, 'aprobacion_por_caso', 'Cierre definitivo aprobado por resolución en primer contacto.', '2026-09-15 16:32:19'),
(8, 1, 'Rerquerimiento equipo de computo ZTE', 'bUENAS TARDES SOLICITO EQUIPO DE COMPUTO PARA ZTE', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 180, 189, 'cerrado', NULL, '2026-09-15 11:34:28', '2026-09-15 11:47:20', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-09-15 16:47:20'),
(9, 1, 'Prueba', 'Prueba', 'Requerimiento', 'abierto', 'media', 2, NULL, 2, 'media', 3, 9, 21, 3, 3, 'en_proceso', 16, '2026-09-16 08:19:25', NULL, NULL, NULL, NULL, '2026-09-22 21:25:14'),
(10, 1, 'Prueba', 'prueba', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 172, 176, 'cerrado', NULL, '2026-09-16 15:38:35', '2026-09-21 09:42:56', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-09-21 14:42:56'),
(11, 1, 'Prueba', 'prueba', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 176, 181, 'cerrado', NULL, '2026-09-16 15:38:58', '2026-09-21 08:56:27', NULL, 'aprobacion_por_caso', 'Cierre definitivo aprobado por resolución en primer contacto.', '2026-09-21 13:56:27'),
(12, 1, 'Prueba', 'prueba', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 191, 184, 'cerrado', NULL, '2026-09-16 16:37:01', '2026-09-21 08:59:59', NULL, 'aprobacion_por_caso', 'Cierre definitivo aprobado por resolución en primer contacto.', '2026-09-21 13:59:59'),
(13, 1, 'PRUEBA QA 01 - Instalación de software', 'Caso controlado QA. Validar creación, asignación automática al gestor TICs, SLA, mensajería, solución, cierre, trazabilidad e indicadores. No corresponde a una solicitud real.', 'Requerimiento', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 175, 180, 'cerrado', NULL, '2026-09-17 08:23:31', '2026-09-21 08:59:44', NULL, 'aprobacion_por_caso', 'Cierre definitivo aprobado por resolución en primer contacto.', '2026-09-21 13:59:44'),
(14, 1, 'PRUEBA QA 02 - Falla de internet', 'Caso controlado QA para validar clasificación Incidente, prioridad urgente, SLA, asignación TICs, mensajería y cierre. No corresponde a una falla real.', 'Incidente', 'cerrada', 'media', 2, NULL, 2, 'media', 3, 9, 28, 186, 173, 'cerrado', NULL, '2026-09-17 08:25:05', '2026-09-21 08:59:32', NULL, 'aprobacion_por_caso', 'Cierre definitivo aprobado por resolución en primer contacto.', '2026-09-21 13:59:32'),
(15, 1, 'PRUEBA QA 03 - Corrección de ecuación', 'Caso controlado QA para validar asignación al gestor Contabilidad, clasificación Incidente, SLA, trazabilidad y cierre. No corresponde a una solicitud contable real.', 'Incidente', 'abierto', 'media', 2, NULL, 2, 'media', 3, 9, 20, 114, 112, 'en_proceso', 23, '2026-09-17 08:25:18', NULL, NULL, NULL, NULL, '2026-09-22 12:32:40'),
(16, 1, 'QA-TICS-20260918-BF817C Caso 01', 'Prueba funcional autorizada de creacion, derivaciones TICs y cierre. Identificador QA-TICS-20260918-BF817C', 'Incidente', 'cerrada', 'Inmediato', 3, 'Urgente', 3, 'Urgente', 5, 9, 28, 186, 173, 'cerrado', NULL, '2026-09-18 08:58:15', '2026-09-21 09:22:07', NULL, 'aprobacion_por_caso', 'Cerrado automáticamente después de que el creador aprobó y calificó cada caso.', '2026-09-21 14:22:07');

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
(5, NULL, 2, NULL, 0, 2, 6, 'TICs', 7, 'asignacion de computador', 4, 'Luisa', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-08-31 09:09:50', '2026-09-07 17:00:00', NULL, NULL, '2026-08-31 09:13:22', 0, 'dentro_sla', 4, NULL, 0, 0, '2026-08-31 09:14:09', 0, 'dentro_sla', 5, 'Asignado', 'prueba', 0, NULL, 9, 9, '2026-08-31 09:05:33', '2026-08-31 14:14:09'),
(6, NULL, 3, 186, 0, 1, 6, 'TICs', 179, 'Falla de Impresora', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'listo_cierre', '2026-09-04 14:23:19', '2026-09-10 17:00:00', '2026-09-04 14:23:19', NULL, '2026-09-21 08:58:21', 5458, 'fuera_sla', 28, NULL, 0, 0, NULL, NULL, 'sin_iniciar', 18, 'Prueba', 'prueba', 1, NULL, NULL, 31, '2026-09-04 14:23:19', '2026-09-21 13:58:21'),
(7, NULL, 4, 185, 0, 1, 6, 'TICs', 183, 'Falla de Equipos', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'listo_cierre', '2026-09-08 07:50:58', '2026-09-10 17:00:00', '2026-09-08 07:50:58', NULL, '2026-09-16 10:52:43', 2872, 'fuera_sla', 28, NULL, 0, 0, NULL, NULL, 'sin_iniciar', 17, 'Prueba', 'Nada en especifico', 0, NULL, NULL, 31, '2026-09-08 07:50:58', '2026-09-16 15:52:43'),
(8, NULL, 5, 185, 0, 1, 6, 'TICs', 183, 'Falla de Equipos', 32, 'CUY GOMEZ JEISSON SMITH', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'listo_cierre', '2026-09-08 11:25:14', '2026-09-24 17:00:00', '2026-09-22 16:45:37', NULL, '2026-09-22 16:45:48', 0, 'dentro_sla', 32, NULL, 0, 1, NULL, NULL, 'sin_iniciar', 17, 'Prueba', '0', 0, NULL, NULL, 31, '2026-09-08 11:25:14', '2026-09-22 21:45:48'),
(9, 8, 5, 183, 1, 2, 6, 'TICs', 187, 'Creación de usuario para ingreso a plataforma de Claro', 32, 'CUY GOMEZ JEISSON SMITH', 16, 'SLA 21 días', 21, 'dias', 11340, 4393, 'completada', '2026-09-08 12:31:46', '2026-10-07 17:00:00', NULL, NULL, '2026-09-21 09:13:06', 4393, 'dentro_sla', 28, NULL, 0, 0, '2026-09-22 16:45:37', 4393, 'dentro_sla', 19, 'prueba', 'Prueba', 0, '0000', 32, 32, '2026-09-08 12:31:46', '2026-09-22 21:45:37'),
(10, NULL, 6, 185, 0, 1, 6, 'TICs', 183, 'Falla de Equipos', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'listo_cierre', '2026-09-08 13:50:15', '2026-09-10 17:00:00', '2026-09-08 13:50:15', NULL, '2026-09-21 09:12:49', 4392, 'fuera_sla', 28, NULL, 0, 0, NULL, NULL, 'sin_iniciar', 17, 'Prueba', 'prueba', 0, NULL, NULL, 31, '2026-09-08 13:50:15', '2026-09-21 14:12:49'),
(11, NULL, 7, 16, 0, 1, 6, 'TICs', 9, 'Gestión de Usuarios INFOR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-15 11:24:26', '2026-09-16 17:00:00', NULL, NULL, '2026-09-15 11:30:30', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-15 11:32:19', 0, 'dentro_sla', 6, 'no hubo solucion remota', 'Prueba', 1, NULL, 9, 9, '2026-09-15 11:24:26', '2026-09-15 16:32:19'),
(12, NULL, 7, 17, 0, 2, 6, 'TICs', 6, 'Gestión de Usuarios Correo Corporativo', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'cancelada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2026-09-15 11:32:19', NULL, 'sin_iniciar', NULL, NULL, NULL, 0, NULL, NULL, 9, '2026-09-15 11:24:26', '2026-09-15 16:32:19'),
(13, NULL, 7, 19, 0, 3, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'cancelada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2026-09-15 11:32:19', NULL, 'sin_iniciar', NULL, NULL, NULL, 0, NULL, NULL, 9, '2026-09-15 11:24:26', '2026-09-15 16:32:19'),
(14, NULL, 8, 200, 0, 1, 6, 'TICs', 180, 'Solicitud Equipos de Cómputo', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-15 11:34:28', '2026-09-21 17:00:00', NULL, NULL, '2026-09-15 11:46:48', 0, 'dentro_sla', 28, NULL, 0, 1, '2026-09-15 11:47:20', 0, 'dentro_sla', 16, 'entrega de equipo de computo', 'solicite el computador a compras y cuando me lo entregaron lo entregue', 0, NULL, 9, 9, '2026-09-15 11:34:28', '2026-09-15 16:47:20'),
(15, 14, 8, 27, 1, 2, 1, 'Administración', 17, 'Compra de maquinaria y equipos', 2, 'Julio', 8, 'SLA 60 días', 60, 'dias', 32400, 0, 'completada', '2026-09-15 11:37:54', '2026-12-08 17:00:00', NULL, NULL, '2026-09-15 11:43:12', 0, 'dentro_sla', 2, NULL, 0, 0, '2026-09-15 11:44:47', 0, 'dentro_sla', 15, 'Compra de equipo', 'Prueba', 0, 'Buenas tardes solicito la compra de este equipo ya que no cuento con equipos disponibles.', 28, 28, '2026-09-15 11:37:54', '2026-09-15 16:44:47'),
(16, NULL, 9, 5, 0, 1, 3, 'Jurídica', 3, 'Consultorio Jurídico', 21, 'Jurídica', 14, 'SLA 3 Días', 3, 'dias', 1620, 0, 'pendiente', '2026-09-16 08:19:25', '2026-09-21 17:00:00', '2026-09-16 08:19:25', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'sin_iniciar', NULL, NULL, NULL, 0, NULL, NULL, 9, '2026-09-16 08:19:25', '2026-09-16 13:19:25'),
(17, NULL, 9, 10, 0, 2, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'bloqueada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'sin_iniciar', NULL, NULL, NULL, 0, NULL, NULL, 9, '2026-09-16 08:19:25', '2026-09-16 13:19:25'),
(18, NULL, 10, 187, 0, 1, 6, 'TICs', 172, 'Gestión de accesos SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 1089, 'completada', '2026-09-16 15:38:35', '2026-09-21 09:42:03', NULL, NULL, '2026-09-21 09:42:23', 1089, 'fuera_sla', 28, NULL, 0, 1, '2026-09-21 09:42:56', 1089, 'fuera_sla', 32, 'prueba0', '´pRUEBA', 0, NULL, 9, 9, '2026-09-16 15:38:35', '2026-09-21 14:42:56'),
(19, NULL, 11, 192, 0, 1, 6, 'TICs', 176, 'Instalación de VPN CONECTAR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 1135, 'completada', '2026-09-16 15:38:58', '2026-09-17 17:00:00', NULL, NULL, '2026-09-21 08:55:41', 1135, 'fuera_sla', 28, NULL, 0, 0, '2026-09-21 08:56:27', 1135, 'fuera_sla', 29, 'prueba0', 'Prueba', 1, NULL, 9, 9, '2026-09-16 15:38:58', '2026-09-21 13:56:27'),
(20, NULL, 12, 195, 0, 1, 6, 'TICs', 191, 'Reporte de incidente de seguridad de la información', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 1137, 'completada', '2026-09-16 16:37:01', '2026-09-18 17:00:00', NULL, NULL, '2026-09-21 08:57:49', 1137, 'fuera_sla', 28, NULL, 0, 0, '2026-09-21 08:59:59', 1137, 'fuera_sla', 37, 'prueba0', 'prueba', 1, NULL, 9, 9, '2026-09-16 16:37:01', '2026-09-21 13:59:59'),
(21, NULL, 13, 191, 0, 1, 6, 'TICs', 175, 'Instalación de software', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 598, 'completada', '2026-09-17 08:23:31', '2026-09-18 17:00:00', NULL, NULL, '2026-09-21 08:58:07', 598, 'fuera_sla', 28, NULL, 0, 0, '2026-09-21 08:59:44', 598, 'fuera_sla', 35, 'Prueba', 'prueba', 1, NULL, 9, 9, '2026-09-17 08:23:31', '2026-09-21 13:59:44'),
(22, NULL, 14, 184, 0, 1, 6, 'TICs', 186, 'Falla  de servicio de internet', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 598, 'completada', '2026-09-17 08:25:05', '2026-09-18 17:00:00', NULL, NULL, '2026-09-21 08:58:36', 598, 'fuera_sla', 28, NULL, 0, 0, '2026-09-21 08:59:32', 598, 'fuera_sla', 24, 'prueba', 'prueba', 1, NULL, 9, 9, '2026-09-17 08:25:05', '2026-09-21 13:59:32'),
(23, NULL, 15, 123, 0, 1, 2, 'Contabilidad', 114, 'Corrección y Aclaración de Ecuación', 20, 'Contabilidad', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'pendiente', '2026-09-17 08:25:18', '2026-09-24 17:00:00', '2026-09-17 08:25:18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'sin_iniciar', NULL, NULL, NULL, 0, NULL, NULL, 9, '2026-09-17 08:25:18', '2026-09-17 13:25:18'),
(24, NULL, 16, 184, 0, 1, 6, 'TICs', 186, 'Falla  de servicio de internet', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-18 08:58:15', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:21:34', 0, 'dentro_sla', 28, NULL, 0, 1, '2026-09-21 09:22:07', 0, 'dentro_sla', 24, 'prueba', 'prueba', 0, NULL, 9, 9, '2026-09-18 08:58:15', '2026-09-21 14:22:07'),
(25, 24, 16, 179, 1, 2, 6, 'TICs', 178, 'Adecuación de Red', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-18 08:59:54', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 09:21:13', 0, 'dentro_sla', 28, NULL, 0, 1, '2026-09-21 09:21:20', 0, 'dentro_sla', 31, 'prueba0', 'prueba', 0, 'Prueba funcional autorizada QA-TICS-20260918-BF817C: verificar derivacion y cierre TICs.', 28, 28, '2026-09-18 08:59:54', '2026-09-21 14:21:20'),
(26, 25, 16, 183, 2, 3, 6, 'TICs', 187, 'Creación de usuario para ingreso a plataforma de Claro', 28, 'TICs', 16, 'SLA 21 días', 21, 'dias', 11340, 0, 'completada', '2026-09-18 09:20:57', '2026-10-19 17:00:00', NULL, NULL, '2026-09-18 09:23:17', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-18 09:23:26', 0, 'dentro_sla', 19, 'prueba', 'prueba', 0, '1', 28, 28, '2026-09-18 09:20:57', '2026-09-18 14:23:26'),
(27, 25, 16, 180, 2, 4, 6, 'TICs', 177, 'Asistencia de Impresora', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-18 09:23:26', '2026-09-21 17:00:00', NULL, NULL, '2026-09-18 11:21:36', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-18 13:01:57', 0, 'dentro_sla', 20, 'PRUEBA', 'PRUEBA', 0, '2', 28, 28, '2026-09-18 09:20:57', '2026-09-18 18:01:57'),
(28, 25, 16, 181, 2, 5, 6, 'TICs', 184, 'Copia de seguridad', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 37, 'completada', '2026-09-18 09:20:57', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:37:35', 37, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:37:46', 37, 'dentro_sla', 27, 'prueba', 'Prueba', 0, '3', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:37:46'),
(29, 25, 16, 182, 2, 6, 6, 'TICs', 182, 'Creación de usuario Milldesk', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 40, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 08:40:27', 40, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:41:00', 40, 'dentro_sla', 28, 'prueba', 'prueba', 0, '4', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:41:00'),
(30, 25, 16, 184, 2, 7, 6, 'TICs', 186, 'Falla  de servicio de internet', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 41, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 08:41:26', 41, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:42:01', 41, 'dentro_sla', 24, 'prueba', 'prueba', 0, '5', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:42:01'),
(31, 25, 16, 185, 2, 8, 6, 'TICs', 183, 'Falla de Equipos', 32, 'CUY GOMEZ JEISSON SMITH', 11, 'SLA 2 Días', 2, 'dias', 1080, 79, 'completada', '2026-09-18 09:20:57', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:19:43', 79, 'dentro_sla', 32, NULL, 0, 0, '2026-09-21 09:20:41', 79, 'dentro_sla', 17, 'Prueba', 'Prueba', 0, '6', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:20:41'),
(32, 25, 16, 186, 2, 9, 6, 'TICs', 179, 'Falla de Impresora', 32, 'CUY GOMEZ JEISSON SMITH', 13, 'SLA 4 Días', 4, 'dias', 2160, 79, 'completada', '2026-09-18 09:20:57', '2026-09-24 17:00:00', NULL, NULL, '2026-09-21 09:19:30', 79, 'dentro_sla', 32, NULL, 0, 0, '2026-09-21 09:20:50', 79, 'dentro_sla', 18, 'Prueba', 'Prueba', 0, '7', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:20:50'),
(33, 25, 16, 187, 2, 10, 6, 'TICs', 172, 'Gestión de accesos SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 78, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 09:18:17', 78, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:18:24', 78, 'dentro_sla', 32, 'prueba0', 'prueba', 0, '8', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:18:24'),
(34, 25, 16, 189, 2, 11, 6, 'TICs', 174, 'Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 77, 'completada', '2026-09-18 09:20:57', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:17:48', 77, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:17:56', 77, 'dentro_sla', 34, 'prueba', 'pruebas', 0, '9', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:17:56'),
(35, 25, 16, 3, 2, 12, 6, 'TICs', 6, 'Gestión de Usuarios Correo Corporativo', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 76, 'completada', '2026-09-18 09:20:57', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:16:16', 76, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:16:58', 76, 'dentro_sla', 1, 'Reinicio computador', 'prueba', 0, '10', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:16:58'),
(36, 25, 16, 16, 2, 13, 6, 'TICs', 9, 'Gestión de Usuarios INFOR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 75, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 09:15:37', 75, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:15:43', 75, 'dentro_sla', 6, 'no hubo solucion remota', 'Prueba', 0, '11', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:15:43'),
(37, 25, 16, 18, 2, 14, 6, 'TICs', 10, 'Gestión de Usuarios SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 74, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 09:14:58', 74, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:15:05', 74, 'dentro_sla', 38, 'prueba0', 'Prueba', 0, '12', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:15:05'),
(38, 25, 16, 9, 2, 15, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 74, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 09:14:20', 74, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:14:30', 74, 'dentro_sla', 5, 'Asignado', 'Prueba', 0, '13', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:14:30'),
(39, 25, 16, 190, 2, 16, 6, 'TICs', 190, 'Ingreso de equipos al proyecto BYOD', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 73, 'completada', '2026-09-18 09:20:57', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:13:34', 73, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:13:42', 73, 'dentro_sla', 36, 'prueba0', 'Prueba', 0, '14', 28, 28, '2026-09-18 09:20:57', '2026-09-21 14:13:42'),
(40, 25, 16, 191, 2, 17, 6, 'TICs', 175, 'Instalación de software', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 51, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 08:51:27', 51, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:51:32', 51, 'dentro_sla', 35, 'Prueba', 'Pureba', 0, '15', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:51:32'),
(41, 25, 16, 192, 2, 18, 6, 'TICs', 176, 'Instalación de VPN CONECTAR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 43, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 08:43:41', 43, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:43:50', 43, 'dentro_sla', 29, 'prueba0', 'Prueba', 0, '16', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:43:50'),
(42, 25, 16, 193, 2, 19, 6, 'TICs', 189, 'Mantenimiento de Equipos de Cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 39, 'completada', '2026-09-18 09:20:57', '2026-09-21 17:00:00', NULL, NULL, '2026-09-21 08:39:42', 39, 'dentro_sla', 28, '2026-09-18 13:34:35', 1, 0, '2026-09-21 08:39:50', 39, 'dentro_sla', 23, '0', 'prueba', 0, '17', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:39:50'),
(43, 25, 16, 200, 2, 20, 6, 'TICs', 180, 'Solicitud Equipos de Cómputo', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 32, 'completada', '2026-09-18 09:20:57', '2026-09-24 17:00:00', NULL, NULL, '2026-09-21 08:32:08', 32, 'dentro_sla', 28, '2026-09-18 13:32:27', 3, 0, '2026-09-21 08:32:16', 32, 'dentro_sla', 16, 'entrega de equipo de computo', 'prueba', 0, '18', 28, 28, '2026-09-18 09:20:57', '2026-09-21 13:32:16'),
(44, 25, 16, 199, 2, 21, 6, 'TICs', 185, 'Solicitud de servicio de internet', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-18 09:20:57', '2026-10-02 17:00:00', NULL, NULL, '2026-09-18 13:06:51', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-18 13:26:03', 0, 'dentro_sla', 22, 'pruyeba', 'prueba', 0, '19', 28, 28, '2026-09-18 09:20:57', '2026-09-18 18:26:03'),
(45, 25, 16, 197, 2, 22, 6, 'TICs', 173, 'Solicitud de Creación o modificaciones a Desarrollos', 28, 'TICs', 5, 'SLA 30 días', 30, 'dias', 16200, 0, 'completada', '2026-09-18 09:20:57', '2026-10-30 17:00:00', NULL, NULL, '2026-09-18 13:02:53', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-18 13:04:20', 0, 'dentro_sla', 21, 'QA validacion QA-TICS-20260918-BF817C', 'Prueba funcional autorizada QA-TICS-20260918-BF817C: gestion verificada.', 0, '20', 28, 28, '2026-09-18 09:20:57', '2026-09-18 18:04:20'),
(46, 18, 10, 185, 1, 2, 6, 'TICs', 183, 'Falla de Equipos', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:09:53', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:41:57', 0, 'dentro_sla', 28, NULL, 0, 1, '2026-09-21 09:42:03', 0, 'dentro_sla', 17, 'Prueba', 'pRUEBA', 0, '1', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:42:03'),
(47, 18, 10, 200, 1, 3, 6, 'TICs', 180, 'Solicitud Equipos de Cómputo', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:09:53', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 08:48:33', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:48:40', 0, 'dentro_sla', 16, 'entrega de equipo de computo', 'prueba', 0, '2', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:48:40'),
(48, 18, 10, 186, 1, 4, 6, 'TICs', 179, 'Falla de Impresora', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:09:53', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 08:49:25', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:51:52', 0, 'dentro_sla', 18, 'Prueba', 'Prueba', 0, '3', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:51:52'),
(49, 18, 10, 199, 1, 5, 6, 'TICs', 185, 'Solicitud de servicio de internet', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:09:53', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 09:39:31', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:39:37', 0, 'dentro_sla', 22, 'pruyeba', 'PRUEBA', 0, '4', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:39:37'),
(50, 18, 10, 179, 1, 6, 6, 'TICs', 178, 'Adecuación de Red', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:09:53', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 09:40:12', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:40:17', 0, 'dentro_sla', 31, 'prueba0', 'PRUEBA', 0, '5', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:40:17'),
(51, 18, 10, 184, 1, 7, 6, 'TICs', 186, 'Falla  de servicio de internet', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:41:35', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:41:43', 0, 'dentro_sla', 24, 'prueba', 'PRUEBA', 0, '6', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:41:43'),
(52, 18, 10, 180, 1, 8, 6, 'TICs', 177, 'Asistencia de Impresora', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:40:51', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:40:57', 0, 'dentro_sla', 20, 'PRUEBA', 'PRUEVBA', 0, '7', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:40:57'),
(53, 18, 10, 16, 1, 9, 6, 'TICs', 9, 'Gestión de Usuarios INFOR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:41:16', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:41:21', 0, 'dentro_sla', 6, 'no hubo solucion remota', 'PRUEBA', 0, '8', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:41:21'),
(54, 18, 10, 181, 1, 10, 6, 'TICs', 184, 'Copia de seguridad', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:09:53', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:37:15', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:37:21', 0, 'dentro_sla', 27, 'prueba', 'PRUEBA', 0, '9', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:37:21'),
(55, 18, 10, 18, 1, 11, 6, 'TICs', 10, 'Gestión de Usuarios SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:31:27', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:31:33', 0, 'dentro_sla', 38, 'prueba0', 'pruebA', 0, '10', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:31:33'),
(56, 18, 10, 9, 1, 12, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:29:48', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:29:53', 0, 'dentro_sla', 5, 'Asignado', 'prueba', 0, '11', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:29:53'),
(57, 18, 10, 191, 1, 13, 6, 'TICs', 175, 'Instalación de software', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:29:30', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:29:35', 0, 'dentro_sla', 35, 'Prueba', 'oprueba', 0, '12', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:29:35'),
(58, 18, 10, 192, 1, 14, 6, 'TICs', 176, 'Instalación de VPN CONECTAR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:25:03', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:25:09', 0, 'dentro_sla', 29, 'prueba0', 'prueba', 0, '13', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:25:09'),
(59, 18, 10, 193, 1, 15, 6, 'TICs', 189, 'Mantenimiento de Equipos de Cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:23:41', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:23:49', 0, 'dentro_sla', 23, '0', 'prueba', 0, '14', 28, 28, '2026-09-21 08:09:53', '2026-09-21 14:23:49'),
(60, 18, 10, 194, 1, 16, 6, 'TICs', 188, 'Préstamo de equipos de cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:09:53', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:54:41', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:54:48', 0, 'dentro_sla', 30, 'prueba', 'prueba', 0, '15', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:54:48'),
(61, 18, 10, 195, 1, 17, 6, 'TICs', 191, 'Reporte de incidente de seguridad de la información', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:09:53', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 08:53:20', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:53:29', 0, 'dentro_sla', 37, 'prueba0', 'Prueba', 0, '16', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:53:29'),
(62, 18, 10, 190, 1, 18, 6, 'TICs', 190, 'Ingreso de equipos al proyecto BYOD', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:09:53', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 08:52:45', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:52:53', 0, 'dentro_sla', 36, 'prueba0', 'Prueba', 0, '17', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:52:53'),
(63, 18, 10, 196, 1, 19, 6, 'TICs', 192, 'Solicitud de acceso al repositorio de Cloud (nube)', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:09:53', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 08:50:52', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:50:59', 0, 'dentro_sla', 26, 'prueba', 'Prueba', 0, '18', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:50:59'),
(64, 18, 10, 198, 1, 20, 6, 'TICs', 181, 'Solicitud de periféricos', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:09:53', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 08:50:20', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:50:28', 0, 'dentro_sla', 25, 'prueba', '´Pruebaa', 0, '19', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:50:28'),
(65, 18, 10, 197, 1, 21, 6, 'TICs', 173, 'Solicitud de Creación o modificaciones a Desarrollos', 28, 'TICs', 5, 'SLA 30 días', 30, 'dias', 16200, 0, 'completada', '2026-09-21 08:09:53', '2026-11-02 17:00:00', NULL, NULL, '2026-09-21 08:46:11', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:46:18', 0, 'dentro_sla', 21, 'QA validacion QA-TICS-20260918-BF817C', 'prueba', 0, '20', 28, 28, '2026-09-21 08:09:53', '2026-09-21 13:46:18'),
(66, 46, 10, 200, 2, 22, 6, 'TICs', 180, 'Solicitud Equipos de Cómputo', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:18:08', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 08:45:43', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:45:50', 0, 'dentro_sla', 16, 'entrega de equipo de computo', 'prueba', 0, '1', 28, 28, '2026-09-21 08:18:08', '2026-09-21 13:45:50'),
(67, 46, 10, 179, 2, 23, 6, 'TICs', 178, 'Adecuación de Red', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:18:08', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 08:46:49', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:46:56', 0, 'dentro_sla', 31, 'prueba0', 'prueba', 0, '2', 28, 28, '2026-09-21 08:18:08', '2026-09-21 13:46:56'),
(68, 46, 10, 199, 2, 24, 6, 'TICs', 185, 'Solicitud de servicio de internet', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:18:08', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 08:47:19', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:47:25', 0, 'dentro_sla', 22, 'pruyeba', 'prueba', 0, '3', 28, 28, '2026-09-21 08:18:08', '2026-09-21 13:47:25'),
(69, 46, 10, 187, 2, 25, 6, 'TICs', 172, 'Gestión de accesos SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:47:57', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:48:05', 0, 'dentro_sla', 32, 'prueba0', 'prueba', 0, '4', 28, 28, '2026-09-21 08:18:08', '2026-09-21 13:48:05'),
(70, 46, 10, 188, 2, 26, 6, 'TICs', 193, 'Gestión de Desarrollo y Evolución de Aplicaciones', 28, 'TICs', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-09-21 08:18:08', '2026-09-28 17:00:00', NULL, NULL, '2026-09-21 08:49:04', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:49:11', 0, 'dentro_sla', 33, 'prueba0', 'Prueba', 0, '5', 28, 28, '2026-09-21 08:18:09', '2026-09-21 13:49:11'),
(71, 46, 10, 189, 2, 27, 6, 'TICs', 174, 'Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:18:08', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 08:49:49', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:49:55', 0, 'dentro_sla', 34, 'prueba', 'Prueba', 0, '6', 28, 28, '2026-09-21 08:18:09', '2026-09-21 13:49:55'),
(72, 46, 10, 3, 2, 28, 6, 'TICs', 6, 'Gestión de Usuarios Correo Corporativo', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:18:08', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:13:55', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:14:02', 0, 'dentro_sla', 1, 'Reinicio computador', 'Prueba', 0, '7', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:14:02'),
(73, 46, 10, 16, 2, 29, 6, 'TICs', 9, 'Gestión de Usuarios INFOR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:16:31', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:16:37', 0, 'dentro_sla', 6, 'no hubo solucion remota', 'prueba', 0, '8', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:16:37'),
(74, 46, 10, 18, 2, 30, 6, 'TICs', 10, 'Gestión de Usuarios SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:22:51', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:22:58', 0, 'dentro_sla', 38, 'prueba0', '0', 0, '9', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:22:58'),
(75, 46, 10, 9, 2, 31, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:24:01', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:24:21', 0, 'dentro_sla', 5, 'Asignado', 'prueba', 0, '10', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:24:21'),
(76, 46, 10, 190, 2, 32, 6, 'TICs', 190, 'Ingreso de equipos al proyecto BYOD', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:18:08', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:27:49', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:27:55', 0, 'dentro_sla', 36, 'prueba0', 'prueba', 0, '11', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:27:55'),
(77, 46, 10, 191, 2, 33, 6, 'TICs', 175, 'Instalación de software', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:27:07', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:27:15', 0, 'dentro_sla', 35, 'Prueba', '0', 0, '12', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:27:15'),
(78, 46, 10, 192, 2, 34, 6, 'TICs', 176, 'Instalación de VPN CONECTAR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:27:28', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:27:34', 0, 'dentro_sla', 29, 'prueba0', 'prueba', 0, '13', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:27:34'),
(79, 46, 10, 197, 2, 35, 6, 'TICs', 173, 'Solicitud de Creación o modificaciones a Desarrollos', 28, 'TICs', 5, 'SLA 30 días', 30, 'dias', 16200, 0, 'completada', '2026-09-21 08:18:08', '2026-11-02 17:00:00', NULL, NULL, '2026-09-21 09:28:06', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:28:12', 0, 'dentro_sla', 21, 'QA validacion QA-TICS-20260918-BF817C', 'prueba', 0, '14', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:28:12'),
(80, 46, 10, 193, 2, 36, 6, 'TICs', 189, 'Mantenimiento de Equipos de Cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:28:24', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:28:32', 0, 'dentro_sla', 23, '0', 'prueba', 0, '15', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:28:32'),
(81, 46, 10, 194, 2, 37, 6, 'TICs', 188, 'Préstamo de equipos de cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:18:08', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:28:46', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:28:59', 0, 'dentro_sla', 30, 'prueba', 'prueba', 0, '16', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:28:59'),
(82, 46, 10, 186, 2, 38, 6, 'TICs', 179, 'Falla de Impresora', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:18:08', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 09:30:11', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:30:18', 0, 'dentro_sla', 18, 'Prueba', 'prueba', 0, '17', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:30:18'),
(83, 46, 10, 196, 2, 39, 6, 'TICs', 192, 'Solicitud de acceso al repositorio de Cloud (nube)', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:18:08', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:30:33', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:30:39', 0, 'dentro_sla', 26, 'prueba', 'prueba', 0, '18', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:30:39'),
(84, 46, 10, 198, 2, 40, 6, 'TICs', 181, 'Solicitud de periféricos', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:18:08', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 09:30:53', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:31:00', 0, 'dentro_sla', 25, 'prueba', 'prueba', 0, '19', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:31:00'),
(85, 46, 10, 195, 2, 41, 6, 'TICs', 191, 'Reporte de incidente de seguridad de la información', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:18:08', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:40:29', 0, 'dentro_sla', 28, NULL, 0, 1, '2026-09-21 09:40:34', 0, 'dentro_sla', 37, 'prueba0', 'PRUEBA', 0, '20', 28, 28, '2026-09-21 08:18:09', '2026-09-21 14:40:34'),
(86, 85, 10, 185, 3, 42, 6, 'TICs', 183, 'Falla de Equipos', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:20:37', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:31:48', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:31:54', 0, 'dentro_sla', 17, 'Prueba', 'PRUEBA', 0, '1', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:31:54'),
(87, 85, 10, 186, 3, 43, 6, 'TICs', 179, 'Falla de Impresora', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:20:37', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 09:32:25', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:32:30', 0, 'dentro_sla', 18, 'Prueba', 'PRUEBA', 0, '2', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:32:30'),
(88, 85, 10, 187, 3, 44, 6, 'TICs', 172, 'Gestión de accesos SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:32:44', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:32:49', 0, 'dentro_sla', 32, 'prueba0', 'PRUEBAS', 0, '3', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:32:49'),
(89, 85, 10, 188, 3, 45, 6, 'TICs', 193, 'Gestión de Desarrollo y Evolución de Aplicaciones', 28, 'TICs', 4, 'SLA 5 días', 5, 'dias', 2700, 0, 'completada', '2026-09-21 08:20:37', '2026-09-28 17:00:00', NULL, NULL, '2026-09-21 09:34:10', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:34:16', 0, 'dentro_sla', 33, 'prueba0', 'PRUEBA', 0, '4', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:34:16'),
(90, 85, 10, 189, 3, 46, 6, 'TICs', 174, 'Gestión de Permisos, Accesos de Usuarios y creación de requerimientos INFOR', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:20:37', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:37:59', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:38:04', 0, 'dentro_sla', 34, 'prueba', 'PRUEBA', 0, '5', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:38:04'),
(91, 85, 10, 3, 3, 47, 6, 'TICs', 6, 'Gestión de Usuarios Correo Corporativo', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:20:37', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:38:19', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:38:24', 0, 'dentro_sla', 1, 'Reinicio computador', 'PRUEBA', 0, '6', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:38:24'),
(92, 85, 10, 16, 3, 48, 6, 'TICs', 9, 'Gestión de Usuarios INFOR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:39:04', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:39:11', 0, 'dentro_sla', 6, 'no hubo solucion remota', 'pRUEBA', 0, '7', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:39:11'),
(93, 85, 10, 18, 3, 49, 6, 'TICs', 10, 'Gestión de Usuarios SICI', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:37:36', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:37:42', 0, 'dentro_sla', 38, 'prueba0', 'PRUEBA', 0, '8', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:37:42'),
(94, 85, 10, 9, 3, 50, 6, 'TICs', 7, 'Gestión de Usuarios Uniclass', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:33:52', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:33:56', 0, 'dentro_sla', 5, 'Asignado', 'PRUEBAS', 0, '9', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:33:56'),
(95, 85, 10, 190, 3, 51, 6, 'TICs', 190, 'Ingreso de equipos al proyecto BYOD', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:20:37', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 09:33:31', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:33:37', 0, 'dentro_sla', 36, 'prueba0', 'PRUEBAS', 0, '10', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:33:37'),
(96, 85, 10, 191, 3, 52, 6, 'TICs', 175, 'Instalación de software', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:33:13', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:33:17', 0, 'dentro_sla', 35, 'Prueba', 'PRUEBAS', 0, '11', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:33:17'),
(97, 85, 10, 192, 3, 53, 6, 'TICs', 176, 'Instalación de VPN CONECTAR', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 09:32:06', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 09:32:14', 0, 'dentro_sla', 29, 'prueba0', 'PRUEBA', 0, '12', 28, 28, '2026-09-21 08:20:37', '2026-09-21 14:32:14'),
(98, 85, 10, 193, 3, 54, 6, 'TICs', 189, 'Mantenimiento de Equipos de Cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:45:17', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:45:24', 0, 'dentro_sla', 23, '0', 'prueba', 0, '13', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:45:24'),
(99, 85, 10, 194, 3, 55, 6, 'TICs', 188, 'Préstamo de equipos de cómputo', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:44:51', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:44:58', 0, 'dentro_sla', 30, 'prueba', 'prueba', 0, '14', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:44:58'),
(100, 85, 10, 196, 3, 56, 6, 'TICs', 192, 'Solicitud de acceso al repositorio de Cloud (nube)', 28, 'TICs', 11, 'SLA 2 Días', 2, 'dias', 1080, 0, 'completada', '2026-09-21 08:20:37', '2026-09-23 17:00:00', NULL, NULL, '2026-09-21 08:30:43', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:31:15', 0, 'dentro_sla', 26, 'prueba', 'prueba', 0, '15', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:31:15'),
(101, 85, 10, 197, 3, 57, 6, 'TICs', 173, 'Solicitud de Creación o modificaciones a Desarrollos', 28, 'TICs', 5, 'SLA 30 días', 30, 'dias', 16200, 0, 'completada', '2026-09-21 08:20:37', '2026-11-02 17:00:00', NULL, NULL, '2026-09-21 08:25:41', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:25:51', 0, 'dentro_sla', 21, 'QA validacion QA-TICS-20260918-BF817C', 'prueba', 0, '16', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:25:51'),
(102, 85, 10, 198, 3, 58, 6, 'TICs', 181, 'Solicitud de periféricos', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:20:37', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 08:24:58', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:25:11', 0, 'dentro_sla', 25, 'prueba', 'prueba', 0, '17', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:25:11'),
(103, 85, 10, 184, 3, 59, 6, 'TICs', 186, 'Falla  de servicio de internet', 28, 'TICs', 2, 'SLA 1 Días', 1, 'dias', 540, 0, 'completada', '2026-09-21 08:20:37', '2026-09-22 17:00:00', NULL, NULL, '2026-09-21 08:24:13', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:24:22', 0, 'dentro_sla', 24, 'prueba', 'prueba', 0, '18', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:24:22'),
(104, 85, 10, 200, 3, 60, 6, 'TICs', 180, 'Solicitud Equipos de Cómputo', 28, 'TICs', 13, 'SLA 4 Días', 4, 'dias', 2160, 0, 'completada', '2026-09-21 08:20:37', '2026-09-25 17:00:00', NULL, NULL, '2026-09-21 08:22:53', 0, 'dentro_sla', 28, '2026-09-21 08:22:41', 1, 0, '2026-09-21 08:23:04', 0, 'dentro_sla', 16, 'entrega de equipo de computo', 'prueba', 0, '19', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:23:04'),
(105, 85, 10, 199, 3, 61, 6, 'TICs', 185, 'Solicitud de servicio de internet', 28, 'TICs', 7, 'SLA 10 Días', 10, 'dias', 5400, 0, 'completada', '2026-09-21 08:20:37', '2026-10-05 17:00:00', NULL, NULL, '2026-09-21 08:22:05', 0, 'dentro_sla', 28, NULL, 0, 0, '2026-09-21 08:22:16', 0, 'dentro_sla', 22, 'pruyeba', 'prueba', 0, '20', 28, 28, '2026-09-21 08:20:37', '2026-09-21 13:22:16');

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
(3, 5, NULL, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 4, '2026-08-31 09:13:12', '2026-08-31 09:05:33', '2026-08-31 14:13:12'),
(4, 11, 3, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 28, '2026-09-15 11:30:14', '2026-09-15 11:24:26', '2026-09-15 16:30:14'),
(5, 11, 4, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 1, NULL, NULL, 28, '2026-09-15 11:30:14', '2026-09-15 11:24:26', '2026-09-15 16:30:14'),
(7, 12, 7, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, '2026-09-15 11:24:26', '2026-09-15 16:24:26'),
(8, 16, 5, '¿Se valido identidad?', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, '2026-09-16 08:19:25', '2026-09-16 13:19:25'),
(9, 36, 3, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 28, '2026-09-21 09:15:31', '2026-09-18 09:20:57', '2026-09-21 14:15:31'),
(10, 36, 4, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 1, NULL, NULL, 28, '2026-09-21 09:15:31', '2026-09-18 09:20:57', '2026-09-21 14:15:31'),
(12, 53, 3, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 28, '2026-09-21 09:41:10', '2026-09-21 08:09:53', '2026-09-21 14:41:10'),
(13, 53, 4, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 1, NULL, NULL, 28, '2026-09-21 09:41:10', '2026-09-21 08:09:53', '2026-09-21 14:41:10'),
(15, 73, 3, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 28, '2026-09-21 09:16:26', '2026-09-21 08:18:09', '2026-09-21 14:16:26'),
(16, 73, 4, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 1, NULL, NULL, 28, '2026-09-21 09:16:26', '2026-09-21 08:18:09', '2026-09-21 14:16:26'),
(18, 92, 3, 'Documentos diligenciados', NULL, 1, 0, 1, 1, NULL, NULL, 28, '2026-09-21 09:38:51', '2026-09-21 08:20:37', '2026-09-21 14:38:51'),
(19, 92, 4, '¿se generaron las validaciones correspondientes?', NULL, 1, 0, 2, 1, NULL, NULL, 28, '2026-09-21 09:38:51', '2026-09-21 08:20:37', '2026-09-21 14:38:51');

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
(2, 1, 2, 1, '2026-08-31 09:16:57', '2026-08-31 14:17:02'),
(4, 8, 9, 1, '2026-09-16 09:50:43', '2026-09-16 14:50:46'),
(6, 3, 28, 1, '2026-09-16 12:12:19', '2026-09-16 17:12:23'),
(8, 16, 28, 1, '2026-09-18 14:02:26', '2026-09-18 19:02:28'),
(10, 15, 9, 0, '2026-09-21 11:12:25', '2026-09-21 16:12:25');

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
(1, 'ADMIN001', 'Administrador', 'Administración', 'N/A', 'N/A', 'admin@gmail.com', 'Cuenta administradora inicial del sistema.', 'No aplica', 'Conectar TV', '$2y$10$f.3F2LkJXmXsjG5liWUSBeZitvj8TuxpMIj2zahqdwbdk5hy49NCe', 1, NULL, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-07-31 09:00:22', '2026-09-02 20:55:50'),
(2, '101010', 'Julio', 'Adquisiciones', 'IGAM', 'HNAL', 'jhonnytorrez999@gmail.com', '.', 'Bogotá', 'millenium', '$2y$10$YfIVMJU/./zRoiUlplvyw.8Koes7wb7dS7KLG1V9hL5gBWWTpRN42', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-07-31 09:01:38', '2026-09-10 17:31:48'),
(4, '202001', 'Luisa', 'Infraestructura', 'IGAM', 'HNAL', 'jhonnytorr@gmail.com', '0', 'Bogotá', 'millenium', '$2y$10$wsYV31LKg.AikWnlB2/Lk.xdpmGApV41fYkUANv2hb3H4gedAygmy', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-07-31 09:03:10', '2026-09-02 14:22:37'),
(7, '1010', 'Gestor2020', '0', '0', '0', 'jhonnytorrez@gmail.com', '0', 'lima', '0', '$2y$10$KxaTqZXsz1258F3ImiySZel205sFWWsYXEEeqxf/0qheV4Y92PJRy', 2, 2, 34, 35, 36, 'activo', NULL, NULL, '2026-08-05 08:55:32', '2026-08-18 20:32:22'),
(8, '10101010', 'Jhonny', '0', '0', '0', 'jhonnytorre@gmail.com', '0', 'lima', '0', '$2y$10$3mJ3CrvjsN3xKH9Tg4Ovy.xbo/orbiSxUpi8U/R6XNLhYmPBrxdb6', 3, 2, 34, 35, 36, 'activo', NULL, NULL, '2026-08-05 08:56:53', '2026-08-18 20:32:33'),
(9, '00', 'solicitante', '0', '0', '0', 'ortizjuliana906@gmail.com', '0', 'Bogotá', '0', '$2y$10$GhX5mTSDapJgtEn0KIZ0/uZAEHeOvdV4kAC3dLQRbHN/XJJqCW3.K', 3, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-05 14:40:16', '2026-09-22 21:16:53'),
(10, '000', 'Jose', 'Disposición final de Materiales y Herramientas', '0', '0', 'disposicion@conectar.com', '0', 'Bogotá', '0', '$2y$10$rc376o0dQ.X7iohMUABbuucMduoDKJXvOPwjrQvDMxE.9z/JnYXQm', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:41:04', '2026-08-26 20:49:28'),
(11, '0', 'Cristian', 'Aliados', '0', '0', 'aliados@conectar.com', '0', 'Bogotá', '0', '$2y$10$Wz6UU8vUNT.7PMiTkB24KeKd997b4CeJ9YUPANMVGPa5ypxfOORQO', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:43:00', '2026-09-04 16:10:19'),
(13, '010152132', 'Hernesto', 'Disposición final de Contratista y/o gestor y Herramientas', '0', '0', 'contratista01@conectar.com', '0', 'Bogotá', '0', '$2y$10$5w6la7TPcIYfnUunauin4Of8IoIYyNm5.aRRCkHLEMWjI3Vqcwo96', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 11:46:19', '2026-09-04 13:21:30'),
(14, '13213213', 'Veronica', 'Calidad', '0', '0', 'calidad@conectar.com', '0', 'Bogotá', '0', '$2y$10$dyiSryKc4isXATEnZIPHtO6.HET9wz5fu1FPCO8Z4W8abhav1iVQW', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 12:38:53', '2026-08-26 20:48:59'),
(15, '1231325165', 'Eduardo', 'Planeación Estrategica', '0', '0', 'planeacion@conectar.com', '0', 'Bogotá', '0', '$2y$10$zfxbcI60rB4SRyv7/rvyCeny6wGBuCwqi1AdyfJ9MXJkZJKxmR5Wi', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-08-26 12:50:46', '2026-08-26 20:50:01'),
(17, '03516513200', 'Logistica', 'Logistica', '0', '0', 'logistica@conectartv.com', '0', '0', '0', '$2y$10$qBzngq341cKuDuL89FnOB.9pllUimV3ORSSWRUpx4JKx/sm53A2R2', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 08:07:24', '2026-09-03 13:07:24'),
(18, '51651512', 'Herramientas y Recursos Propios', 'Herramientas y Recursos Propios', '0', '0', 'herramientasyrecursospropios@conectartv.com', '0', '0', '0', '$2y$10$zRT92Rkv1pu2/Z5buG4RH.u4pLV5LEafdCIBjuQjqqWu.uaokSOJC', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 08:08:21', '2026-09-03 13:08:21'),
(19, '10571120', 'Cadena de Abastecimiento - Movilidad', 'Cadena de Abastecimiento - Movilidad', '0', '0', 'cadenadeabastecimiento-movilidad@conectartv.com', '0', '0', '0', '$2y$10$7MmljDvIWGhao/1Pd4NsP.oN1V0cvEzIyuIQORoyxws712iAwuPpu', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 08:09:19', '2026-09-04 15:44:32'),
(20, '145454065165', 'Contabilidad', 'Contabilidad', '0', '0', 'contabilidad@conectar.com', '0', '0', '0', '$2y$10$KBraN9xHppFxbD8jTrYxsefUslcK5Ir4xJwEiQgtU75zmtixw6U2e', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 09:36:32', '2026-09-03 14:36:32'),
(21, '56151581651052', 'Jurídica', 'Jurídica', '0', '0', 'juridica@conectartv.com', '0', '0', '0', '$2y$10$2kI6A3APeRecL.bVpUBhVud/4eU4bEdTRxorDqH2STzan8pCD8jUu', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 09:57:09', '2026-09-03 14:57:09'),
(22, '16541651321651', 'Atracción de Talentos', 'Atracción de Talentos', '0', '0', 'atracciondetalentos@conectartv.com', '0', '0', '0', '$2y$10$ngfQ6lwGFkuvjqSydN1B2O8HJ5PRKr1bkQCJXy5PTsm0HJMxrI60K', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 10:36:59', '2026-09-04 16:18:50'),
(23, '165165165165165', 'HeadCount', 'HeadCount', '0', '0', 'headcount@conectar.com', '0', '0', '0', '$2y$10$R0Yt6MCNae18j0hL5cN.LeHlYmwIuOZm/jtXrWAqdN4Wup6X0X05q', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 10:47:43', '2026-09-03 15:47:43'),
(24, '5165165165165', 'Diseño', 'Diseño', '0', '0', 'diseno@conectar.com', '0', '0', '0', '$2y$10$.D7uaQgbf9AjtbxcZLMVaOmyPYyRbf8dhKoViqRB1otbvDASJao9e', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 10:54:54', '2026-09-03 15:54:54'),
(25, '454165465132165', 'Formación', 'Formación', '0', '0', 'formacion@conectar.com', '0', '0', '0', '$2y$10$LEY/TPFUU0W18XYLCXv6OONw4HO2hV27TenkXjGkL5vT1Be2yBj1S', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 11:13:01', '2026-09-03 16:13:01'),
(26, '5216516513200521', 'Talento Humano', 'Talento Humano', '0', '0', 'talentohumano@conectar.com', '0', '0', '0', '$2y$10$Vdq6btWEz8RnB9v2VYsLYuuQas3JeQOOMU25UohAf2W0z7erRU.Du', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 11:33:30', '2026-09-03 16:33:30'),
(27, '5156165165', 'Tesorería', 'Tesorería', '0', '0', 'tesoreria@conectar.com', '0', '0', '0', '$2y$10$OrDAjeYIRze5B1lgJ0EwZeUARg4C5VYv.IUlvwMr0u0pvNaEQveK6', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 11:58:05', '2026-09-03 16:58:05'),
(28, '32132132032032032', 'TICs', 'TICs', '0', '0', 'tics@conectar.com', '0', '0', '0', '$2y$10$nECkM5vexaXDuhvmwVmLJ.4mwytS4DQVaJQYJYe5zUguyN313kBqi', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 14:11:28', '2026-09-03 19:11:28'),
(29, '1541651651651', 'Travel', 'Travel', '0', '0', 'travel@conectar.com', '0', '0', '0', '$2y$10$B54S.Mj4.iIHX84F5oRMuus3rtSyOiNcGTTTEypdClgHX8CxTn.E2', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-03 15:12:06', '2026-09-03 20:12:06'),
(31, '1028784695', 'BOHORQUEZ MOLINA JOSE LUIS', 'TECNOLOGIAS-INFRA', 'WITN', 'TTTR', 'josehkluis335@gmail.com', 'TECNOLOGIAS-INFRA-TRANSVERSAL-NACIONAL', 'Bogota', 'CT', '$2y$10$bMvjeFzlOj0rz3A5AHeqv.meJYFBPg92UnQEsdYn6qeGCWKmaP/Je', 3, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-04 12:20:00', '2026-09-08 18:51:09'),
(32, '1016083143', 'CUY GOMEZ JEISSON SMITH', 'CONTROLLER-DBM', 'BDTN', 'LTTR', 'jeisson.cuy@grupoconectar.co', 'CONTROLLER-DBM-TRANSVERSAL-NACIONAL', 'Bogotá', 'CT', '$2y$10$A4NTmlzrGe0czjs1S/GuOetUOqyZtbmXzzFzHZrEKOY31lhug1YYS', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-09-04 12:20:33', '2026-09-21 14:19:07'),
(33, '93380714', 'PRADA YOSA JAVIER', 'INGENIERIA-GENERAL', 'IGLW', 'CNSM', 'javier.prada7521@gmail.com', 'INGENIERIA-GENERAL-REG TOLCA-IBAGUE', 'Bogotá', 'CT', '$2y$10$WiQIFyLTEQfvVcIeQCxZ4.iBpaR/1bGjH/xlC7yAFmtq3zswvkCo.', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-09-04 12:22:05', '2026-09-04 17:22:35'),
(34, '516584165132165', 'PMO', 'PMO', '0', '0', 'pmo@conectar.com', '0', '0', '0', '$2y$10$iIsgseDoulFNszPbmLWVJuNMXQZvCr5wDNJUyhqay3vszlYALZmUq', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-07 10:55:52', '2026-09-07 15:55:52'),
(35, '6541651521651', 'Controller', 'Controller', '0', '0', 'controller@conectar.com', '0', '0', '0', '$2y$10$lyOqbR693kk/QAo5fOEAhukRPfA5.1Vk6e/wg424vbn9J0kvtKTUG', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-07 11:23:40', '2026-09-07 16:23:40'),
(36, '4516514651541', 'DBM', 'DBM', '0', '0', 'dbm@conectar.com', '0', '0', '0', '$2y$10$mPmRNcuCFJkZkVEVEx5dBuObOBUQVF3Kd1qBo.YsKaWDuJun7onHS', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-07 11:28:38', '2026-09-07 16:28:38'),
(37, '5165101285', 'Control Interno', 'Control Interno', '0', '0', 'controlinterno@conectar.com', '0', '0', '0', '$2y$10$IDPh5AM.R4VDOFGN9qkab./aWOQfDXH5i3OMo19e3QRgl1PH0boh.', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-07 12:32:18', '2026-09-07 17:32:18'),
(38, '51651521052136', 'Seguridad', 'Seguridad', '0', '0', 'seguridad@conectar.com', '0', '0', '0', '$2y$10$Oc7FsUP8dFx1xXYOkQuYqugz.VXAnI2KWKhQs2sd3LKmWFD4.mhNe', 2, 1, NULL, NULL, NULL, 'activo', NULL, NULL, '2026-09-07 12:38:56', '2026-09-07 17:38:56'),
(39, '5165152165', 'Facturación', 'Facturación', '0', '0', 'facturacion@conectar.com', '0', 'Bogotá', '0', '$2y$10$dwsHJeTqYf59x.OTcMF/leaCXIIkIXEr0lInNQFNcszlV4fMqW4Aq', 2, 1, 1, 9, 2, 'activo', NULL, NULL, '2026-09-07 12:42:09', '2026-09-17 13:12:45');

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
(1, 'corporativo', '2026-09-15 16:48:10'),
(2, 'negro_blanco', '2026-09-07 13:40:53'),
(4, 'rojo_negro', '2026-08-25 13:27:54'),
(7, 'negro_blanco', '2026-08-24 15:38:44'),
(9, 'corporativo', '2026-09-21 16:15:18'),
(28, 'rojo_negro', '2026-09-22 12:42:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria_sesiones`
--
ALTER TABLE `auditoria_sesiones`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `idx_auditoria_sesion_fecha` (`id_sesion`,`fecha_hora`),
  ADD KEY `idx_auditoria_usuario_fecha` (`id_usuario`,`fecha_hora`),
  ADD KEY `idx_auditoria_perfil_gestor` (`id_perfil_gestor`);

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
-- Indices de la tabla `papelera`
--
ALTER TABLE `papelera`
  ADD PRIMARY KEY (`id_papelera`),
  ADD UNIQUE KEY `uq_papelera_registro` (`tipo`,`id_registro`,`id_pais_operacion`),
  ADD KEY `idx_papelera_pais_fecha` (`id_pais_operacion`,`eliminado_en`),
  ADD KEY `idx_papelera_usuario` (`eliminado_por`);

--
-- Indices de la tabla `perfiles_gestor`
--
ALTER TABLE `perfiles_gestor`
  ADD PRIMARY KEY (`id_perfil_gestor`),
  ADD UNIQUE KEY `uq_perfiles_gestor_nombre` (`id_usuario`,`nombre`),
  ADD KEY `idx_perfiles_gestor_propietario` (`id_usuario`,`es_propietario`);

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
-- Indices de la tabla `sesiones_usuario`
--
ALTER TABLE `sesiones_usuario`
  ADD PRIMARY KEY (`id_sesion`),
  ADD UNIQUE KEY `uk_sesiones_usuario_token` (`token_hash`),
  ADD KEY `idx_sesiones_usuario_estado` (`id_usuario`,`cerrada_en`),
  ADD KEY `idx_sesiones_usuario_actividad` (`ultima_actividad_en`),
  ADD KEY `idx_sesiones_perfil_gestor` (`id_perfil_gestor`);

--
-- Indices de la tabla `sesiones_usuario_paises`
--
ALTER TABLE `sesiones_usuario_paises`
  ADD PRIMARY KEY (`id_sesion`,`id_pais_operacion`),
  ADD KEY `idx_sesion_pais_operacion` (`id_pais_operacion`,`ultima_visita_en`);

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
-- Indices de la tabla `storage_objetos`
--
ALTER TABLE `storage_objetos`
  ADD PRIMARY KEY (`id_storage_objeto`),
  ADD UNIQUE KEY `uq_storage_proveedor_item` (`proveedor`,`drive_id`,`item_id`),
  ADD KEY `idx_storage_entidad` (`tipo_entidad`,`id_entidad`,`estado`),
  ADD KEY `idx_storage_pais_estado` (`id_pais_operacion`,`estado`);

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
-- AUTO_INCREMENT de la tabla `auditoria_sesiones`
--
ALTER TABLE `auditoria_sesiones`
  MODIFY `id_auditoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id_notificacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT de la tabla `papelera`
--
ALTER TABLE `papelera`
  MODIFY `id_papelera` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `perfiles_gestor`
--
ALTER TABLE `perfiles_gestor`
  MODIFY `id_perfil_gestor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT de la tabla `proceso_etapas`
--
ALTER TABLE `proceso_etapas`
  MODIFY `id_proceso_etapa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT de la tabla `proceso_etapa_checklist`
--
ALTER TABLE `proceso_etapa_checklist`
  MODIFY `id_checklist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `recuperaciones_password`
--
ALTER TABLE `recuperaciones_password`
  MODIFY `id_recuperacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `sesiones_usuario`
--
ALTER TABLE `sesiones_usuario`
  MODIFY `id_sesion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT de la tabla `sla`
--
ALTER TABLE `sla`
  MODIFY `id_sla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `solicitud_actividades`
--
ALTER TABLE `solicitud_actividades`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_adjuntos`
--
ALTER TABLE `solicitud_adjuntos`
  MODIFY `id_adjunto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `solicitud_calificaciones`
--
ALTER TABLE `solicitud_calificaciones`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `solicitud_comunicaciones`
--
ALTER TABLE `solicitud_comunicaciones`
  MODIFY `id_comunicacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `solicitud_historial`
--
ALTER TABLE `solicitud_historial`
  MODIFY `id_historial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT de la tabla `solicitud_vinculos`
--
ALTER TABLE `solicitud_vinculos`
  MODIFY `id_vinculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soluciones_servicio`
--
ALTER TABLE `soluciones_servicio`
  MODIFY `id_solucion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `storage_objetos`
--
ALTER TABLE `storage_objetos`
  MODIFY `id_storage_objeto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ticket_etapas`
--
ALTER TABLE `ticket_etapas`
  MODIFY `id_ticket_etapa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `ticket_etapa_checklist`
--
ALTER TABLE `ticket_etapa_checklist`
  MODIFY `id_ticket_checklist` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ticket_notificaciones_email_preferencias`
--
ALTER TABLE `ticket_notificaciones_email_preferencias`
  MODIFY `id_preferencia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditoria_sesiones`
--
ALTER TABLE `auditoria_sesiones`
  ADD CONSTRAINT `fk_auditoria_perfil_gestor` FOREIGN KEY (`id_perfil_gestor`) REFERENCES `perfiles_gestor` (`id_perfil_gestor`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_auditoria_sesion` FOREIGN KEY (`id_sesion`) REFERENCES `sesiones_usuario` (`id_sesion`) ON DELETE SET NULL;

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
-- Filtros para la tabla `perfiles_gestor`
--
ALTER TABLE `perfiles_gestor`
  ADD CONSTRAINT `fk_perfiles_gestor_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

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
-- Filtros para la tabla `sesiones_usuario`
--
ALTER TABLE `sesiones_usuario`
  ADD CONSTRAINT `fk_sesiones_perfil_gestor` FOREIGN KEY (`id_perfil_gestor`) REFERENCES `perfiles_gestor` (`id_perfil_gestor`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_sesiones_usuario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sesiones_usuario_paises`
--
ALTER TABLE `sesiones_usuario_paises`
  ADD CONSTRAINT `fk_sesion_pais_sesion` FOREIGN KEY (`id_sesion`) REFERENCES `sesiones_usuario` (`id_sesion`) ON DELETE CASCADE;

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
