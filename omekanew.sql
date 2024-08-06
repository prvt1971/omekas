-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2024 a las 13:42:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `omekanew`
--
CREATE DATABASE IF NOT EXISTS `omekanew` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `omekanew`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_key`
--

DROP TABLE IF EXISTS `api_key`;
CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asset`
--

INSERT INTO `asset` (`id`, `owner_id`, `name`, `media_type`, `storage_id`, `extension`, `alt_text`) VALUES
(1, 1, 'LogoAgropecuariaNuevo.png', 'image/png', 'b8c43a7bb516267d8217273b51a3282e727d687c', 'png', ''),
(5, 1, 'XLSX.png', 'image/png', '82906df99075bb7f51f2afd3585905ab6fec9f88', 'png', ''),
(6, 1, 'PDF.png', 'image/png', 'd6c0099ce94adb38c084eebeb132fad6b458f56e', 'png', ''),
(7, 1, 'Nada.png', 'image/png', '4db06d520eb3cf005e89f9ecdf535226da3ba4eb', 'png', ''),
(8, 1, 'Colección.png', 'image/png', 'f72f0ff11971e9eb27343a0f2f7cdf732c16aac8', 'png', ''),
(9, 1, 'Subcolección.png', 'image/png', '49f72bb8f58ae8aab304d0b041ae20881a072272', 'png', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fulltext_search`
--

DROP TABLE IF EXISTS `fulltext_search`;
CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'item_sets', 1, 1, '1.  Criterio Curriculo', '1.  Criterio Curriculo\nIndicador 1. Perfil de egreso\nIndicador 2.  Proyecto curricular\nIndicador 3. Malla curricular\nIndicador 4. Syllabus\nIndicador 5.  Metodología y recursos de aprendizaje\nIndicador 6.  Escenarios de prácticas formativas\nIndicador 7.  Tecnologías para el aprendizaje y el conocimiento'),
(1, 'site_pages', 1, 1, 'Bienvenidos y bienvenidas', 'Otro recurso\nCurriculum raquelita\nCurriculum Pvaldes'),
(2, 'site_pages', 1, 1, 'Lista de recursos', 'Otro recurso\nCurriculum raquelita\nCurriculum Pvaldes'),
(4, 'item_sets', 1, 1, '2. Criterio Docencia', '2. Criterio Docencia\n2.1. Subcriterio Personal Académico\n2.2. Subcriterio Estudiantes'),
(5, 'item_sets', 1, 1, 'Profesores', 'Profesores'),
(6, 'items', 1, 1, 'Curriculum Pvaldes', 'Curriculum Pvaldes'),
(7, 'media', 1, 1, NULL, ''),
(8, 'items', 1, 1, 'Curriculum raquelita', 'Curriculum raquelita'),
(9, 'media', 1, 1, NULL, ''),
(10, 'items', 1, 1, 'Otro recurso', 'Otro recurso'),
(11, 'media', 1, 1, NULL, ''),
(12, 'item_sets', 1, 1, 'Indicador 1. Perfil de egreso', 'Indicador 1. Perfil de egreso'),
(13, 'item_sets', 1, 1, 'Indicador 2.  Proyecto curricular', 'Indicador 2.  Proyecto curricular'),
(14, 'item_sets', 1, 1, 'Indicador 3. Malla curricular', 'Indicador 3. Malla curricular'),
(15, 'item_sets', 1, 1, 'Indicador 4. Syllabus', 'Indicador 4. Syllabus'),
(16, 'item_sets', 1, 1, 'Indicador 5.  Metodología y recursos de aprendizaje', 'Indicador 5.  Metodología y recursos de aprendizaje'),
(17, 'item_sets', 1, 1, 'Indicador 6.  Escenarios de prácticas formativas', 'Indicador 6.  Escenarios de prácticas formativas'),
(18, 'item_sets', 1, 1, 'Indicador 7.  Tecnologías para el aprendizaje y el conocimiento', 'Indicador 7.  Tecnologías para el aprendizaje y el conocimiento'),
(19, 'item_sets', 1, 1, '2.1. Subcriterio Personal Académico', '2.1. Subcriterio Personal Académico\nIndicador 8. Afinidad del personal académico\nIndicador 9. Personal académico titular permanente\nIndicador 10. Evaluación integral del desempeño del personal académico'),
(20, 'item_sets', 1, 1, 'Indicador 8. Afinidad del personal académico', 'Indicador 8. Afinidad del personal académico'),
(21, 'item_sets', 1, 1, 'Indicador 9. Personal académico titular permanente', 'Indicador 9. Personal académico titular permanente'),
(22, 'item_sets', 1, 1, 'Indicador 10. Evaluación integral del desempeño del personal académico', 'Indicador 10. Evaluación integral del desempeño del personal académico'),
(23, 'item_sets', 1, 1, '2.2. Subcriterio Estudiantes', '2.2. Subcriterio Estudiantes\nIndicador 12. habilidades blandas\nIndicador 13. Seguimiento al cumplimiento de los resultados de aprendizaje\nIndicador 14. tasa de deserción\nIndicador 15. tasa de titulación de graduados\nIndicador 16. Seguimiento a graduados\nIndicador 17. Éxitos de los graduados'),
(24, 'item_sets', 1, 1, 'Indicador 11. Sistema de tutorías académicas', 'Indicador 11. Sistema de tutorías académicas'),
(25, 'item_sets', 1, 1, 'Indicador 12. habilidades blandas', 'Indicador 12. habilidades blandas'),
(26, 'item_sets', 1, 1, 'Indicador 13. Seguimiento al cumplimiento de los resultados de aprendizaje', 'Indicador 13. Seguimiento al cumplimiento de los resultados de aprendizaje'),
(27, 'item_sets', 1, 1, 'Indicador 14. tasa de deserción', 'Indicador 14. tasa de deserción'),
(28, 'item_sets', 1, 1, 'Indicador 15. tasa de titulación de graduados', 'Indicador 15. tasa de titulación de graduados'),
(29, 'item_sets', 1, 1, 'Indicador 16. Seguimiento a graduados', 'Indicador 16. Seguimiento a graduados'),
(30, 'item_sets', 1, 1, 'Indicador 17. Éxitos de los graduados', 'Indicador 17. Éxitos de los graduados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(10, NULL),
(6, 7),
(8, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_item_set`
--

DROP TABLE IF EXISTS `item_item_set`;
CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(6, 5),
(8, 5),
(10, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_set`
--

DROP TABLE IF EXISTS `item_set`;
CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(1, 0),
(4, 0),
(5, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_site`
--

DROP TABLE IF EXISTS `item_site`;
CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item_site`
--

INSERT INTO `item_site` (`item_id`, `site_id`) VALUES
(6, 1),
(8, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\BatchDelete', '{\"resource\":\"item_sets\",\"query\":{\"sort_by_default\":\"\",\"sort_order_default\":\"\"}}', '2024-07-25T21:29:41+00:00 ERR (3): \"command\" no se reconoce como un comando interno o externo,\r\nprograma o archivo por lotes ejecutable.\r\n\r\n2024-07-25T21:29:41+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2024-07-25T21:29:41+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Controller\\Admin\\ItemSetController.php(234): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\Admin\\ItemSetController->batchDeleteAllAction()\n#4 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2024-07-25 21:29:41', '2024-07-25 21:29:41'),
(2, 1, NULL, 'error', 'Omeka\\Job\\BatchDelete', '{\"resource\":\"item_sets\",\"query\":{\"sort_by_default\":\"\",\"sort_order_default\":\"\"}}', '2024-07-25T21:57:51+00:00 ERR (3): \"command\" no se reconoce como un comando interno o externo,\r\nprograma o archivo por lotes ejecutable.\r\n\r\n2024-07-25T21:57:51+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2024-07-25T21:57:51+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Controller\\Admin\\ItemSetController.php(234): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\Admin\\ItemSetController->batchDeleteAllAction()\n#4 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2024-07-25 21:57:51', '2024-07-25 21:57:51'),
(3, 1, NULL, 'error', 'Omeka\\Job\\BatchDelete', '{\"resource\":\"item_sets\",\"query\":{\"sort_by_default\":\"\",\"sort_order_default\":\"\"}}', '2024-07-25T22:02:27+00:00 ERR (3): \"command\" no se reconoce como un comando interno o externo,\r\nprograma o archivo por lotes ejecutable.\r\n\r\n2024-07-25T22:02:27+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2024-07-25T22:02:27+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\application\\src\\Controller\\Admin\\ItemSetController.php(234): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): Omeka\\Controller\\Admin\\ItemSetController->batchDeleteAllAction()\n#4 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\Users\\pvaldes\\Documents\\GitHub\\omeka-s-new\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2024-07-25 22:02:27', '2024-07-25 22:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `item_id`, `ingester`, `renderer`, `data`, `source`, `media_type`, `storage_id`, `extension`, `sha256`, `size`, `has_original`, `has_thumbnails`, `position`, `lang`, `alt_text`) VALUES
(7, 6, 'upload', 'file', NULL, 'pvaldes_GEOMÁTICA_6B_ActaFinal_PI2024_Primer parcial.pdf', 'application/pdf', '180336d19ca610961b64c87ec4b3d6b25138a6dd', 'pdf', '7c49c38a47292bbe2425e965867e2e1bf3e0ca5da985a0467cb9a35dcc557ee7', 584424, 1, 0, 1, '', ''),
(9, 8, 'upload', 'file', NULL, 'pvaldes_PI2024_1P_GEOMÁTICA_B_SubirNotas.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '558f9cbfc6a4ea17a7f6fdecc71bd60641307ece', 'xlsx', 'd53f1398e9a49b5ff5b72dfa07b6a2cd507a9f8c844792618c0c71beab1e8464', 10673, 1, 0, 1, '', ''),
(11, 10, 'upload', 'file', NULL, 'pvaldes_METODOLOGÍA DE LA INVESTGACIÓN CIENTÍFICA_3C_Preacta_PI2024_Primer parcial.pdf', 'application/pdf', '39471f50f8b51967840ff91969fbd436dd9f5e36', 'pdf', 'f2b2d5888ff7a2bfa648dfda0653539b714c871478c8e70851ce5e99a5cfe416', 614848, 1, 0, 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230124033031'),
('20230410074846'),
('20230523085358'),
('20230601060113'),
('20230713101012'),
('20231016000000'),
('20240103030617');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_creation`
--

DROP TABLE IF EXISTS `password_creation`;
CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, NULL, NULL, 8, '1.  Criterio Curriculo', 1, '2024-07-25 13:36:32', '2024-07-25 21:34:35', 'Omeka\\Entity\\ItemSet'),
(4, 1, NULL, NULL, 8, '2. Criterio Docencia', 1, '2024-07-25 13:37:24', '2024-07-25 21:47:54', 'Omeka\\Entity\\ItemSet'),
(5, 1, NULL, NULL, 9, 'Profesores', 1, '2024-07-25 13:38:15', '2024-07-25 20:06:52', 'Omeka\\Entity\\ItemSet'),
(6, 1, NULL, NULL, NULL, 'Curriculum Pvaldes', 1, '2024-07-25 13:39:29', '2024-07-25 15:59:00', 'Omeka\\Entity\\Item'),
(7, 1, NULL, NULL, 6, NULL, 1, '2024-07-25 13:39:29', '2024-07-25 16:02:44', 'Omeka\\Entity\\Media'),
(8, 1, NULL, NULL, NULL, 'Curriculum raquelita', 1, '2024-07-25 13:39:54', '2024-07-25 16:06:18', 'Omeka\\Entity\\Item'),
(9, 1, NULL, NULL, 5, NULL, 1, '2024-07-25 13:39:54', '2024-07-25 16:02:59', 'Omeka\\Entity\\Media'),
(10, 1, NULL, 1, NULL, 'Otro recurso', 1, '2024-07-25 14:47:02', '2024-07-25 14:47:02', 'Omeka\\Entity\\Item'),
(11, 1, NULL, NULL, 6, NULL, 1, '2024-07-25 14:47:02', '2024-07-25 16:03:12', 'Omeka\\Entity\\Media'),
(12, 1, NULL, NULL, 9, 'Indicador 1. Perfil de egreso', 1, '2024-07-25 21:15:54', '2024-07-25 21:46:01', 'Omeka\\Entity\\ItemSet'),
(13, 1, NULL, NULL, 9, 'Indicador 2.  Proyecto curricular', 1, '2024-07-25 21:16:32', '2024-07-25 21:45:45', 'Omeka\\Entity\\ItemSet'),
(14, 1, NULL, NULL, 9, 'Indicador 3. Malla curricular', 1, '2024-07-25 21:16:56', '2024-07-25 21:45:15', 'Omeka\\Entity\\ItemSet'),
(15, 1, NULL, NULL, 9, 'Indicador 4. Syllabus', 1, '2024-07-25 21:17:13', '2024-07-25 21:44:59', 'Omeka\\Entity\\ItemSet'),
(16, 1, NULL, NULL, 9, 'Indicador 5.  Metodología y recursos de aprendizaje', 1, '2024-07-25 21:17:38', '2024-07-25 21:44:45', 'Omeka\\Entity\\ItemSet'),
(17, 1, NULL, NULL, 9, 'Indicador 6.  Escenarios de prácticas formativas', 1, '2024-07-25 21:18:14', '2024-07-25 21:44:32', 'Omeka\\Entity\\ItemSet'),
(18, 1, NULL, NULL, 9, 'Indicador 7.  Tecnologías para el aprendizaje y el conocimiento', 1, '2024-07-25 21:19:12', '2024-07-25 21:44:16', 'Omeka\\Entity\\ItemSet'),
(19, 1, NULL, NULL, 9, '2.1. Subcriterio Personal Académico', 1, '2024-07-25 21:36:24', '2024-07-25 21:48:57', 'Omeka\\Entity\\ItemSet'),
(20, 1, NULL, NULL, 9, 'Indicador 8. Afinidad del personal académico', 1, '2024-07-25 21:37:16', '2024-07-25 21:37:16', 'Omeka\\Entity\\ItemSet'),
(21, 1, NULL, NULL, 9, 'Indicador 9. Personal académico titular permanente', 1, '2024-07-25 21:37:55', '2024-07-25 21:37:55', 'Omeka\\Entity\\ItemSet'),
(22, 1, NULL, NULL, 9, 'Indicador 10. Evaluación integral del desempeño del personal académico', 1, '2024-07-25 21:38:39', '2024-07-25 21:38:39', 'Omeka\\Entity\\ItemSet'),
(23, 1, NULL, NULL, 9, '2.2. Subcriterio Estudiantes', 1, '2024-07-25 21:39:18', '2024-07-25 21:50:18', 'Omeka\\Entity\\ItemSet'),
(24, 1, NULL, NULL, 9, 'Indicador 11. Sistema de tutorías académicas', 1, '2024-07-25 21:39:52', '2024-07-25 21:39:52', 'Omeka\\Entity\\ItemSet'),
(25, 1, NULL, NULL, 9, 'Indicador 12. habilidades blandas', 1, '2024-07-25 21:40:15', '2024-07-25 21:40:15', 'Omeka\\Entity\\ItemSet'),
(26, 1, NULL, NULL, 9, 'Indicador 13. Seguimiento al cumplimiento de los resultados de aprendizaje', 1, '2024-07-25 21:41:02', '2024-07-25 21:41:02', 'Omeka\\Entity\\ItemSet'),
(27, 1, NULL, NULL, 9, 'Indicador 14. tasa de deserción', 1, '2024-07-25 21:41:36', '2024-07-25 21:41:36', 'Omeka\\Entity\\ItemSet'),
(28, 1, NULL, NULL, 9, 'Indicador 15. tasa de titulación de graduados', 1, '2024-07-25 21:42:04', '2024-07-25 21:42:04', 'Omeka\\Entity\\ItemSet'),
(29, 1, NULL, NULL, 9, 'Indicador 16. Seguimiento a graduados', 1, '2024-07-25 21:42:31', '2024-07-25 21:42:31', 'Omeka\\Entity\\ItemSet'),
(30, 1, NULL, NULL, 9, 'Indicador 17. Éxitos de los graduados', 1, '2024-07-25 21:43:00', '2024-07-25 21:43:00', 'Omeka\\Entity\\ItemSet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource_class`
--

DROP TABLE IF EXISTS `resource_class`;
CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource_template`
--

DROP TABLE IF EXISTS `resource_template`;
CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource_template_property`
--

DROP TABLE IF EXISTS `resource_template_property`;
CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('6pniuq2tlir28gikiertc63i8i', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313732313934393030392e3039313935333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2269623864656b30626d76363475763775716e6e6a7267326d3139223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313939323137343b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313939323230393b7d7d72656469726563745f75726c7c733a37323a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d6e65772f61646d696e2f736974652f732f636172726572612d6167726f70656375617269612f7265736f7572636573223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226461613663656234373263663139366332363738663064333137643566383065223b733a33323a226462616666646665383138333535383939373132643237643336396135363039223b7d733a343a2268617368223b733a36353a2264626166666466653831383335353839393731326432376433363961353630392d6461613663656234373263663139366332363738663064333137643566383065223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223962613866363734353732373863643133303839393538646634386439333066223b733a33323a223666663135633534323135663537636361653733376434663966363731613033223b733a33323a223161326438393639323537646637633333613034663037663462303438373837223b733a33323a223963643538333933326465333265653964643233616132346439393933636437223b7d733a343a2268617368223b733a36353a2239636435383339333264653332656539646432336161323464393939336364372d3161326438393639323537646637633333613034663037663462303438373837223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1721949009),
('aogt3p3es5s86l409aq6put8uc', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313732313934393032302e3633363031373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22616f67743370336573357338366c343039617136707574387563223b7d7d, 1721949020),
('ergqusftjvb4iorg3dc3cl36fi', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313732313934353037322e34303431333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2265726771757366746a766234696f726733646333636c33366669223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313936313336333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226666333235623034363335333161663136346639643637373965313336656534223b733a33323a223832356134343237353733383637323237356333346432373736396464313434223b7d733a343a2268617368223b733a36353a2238323561343432373537333836373232373563333464323737363964643134342d6666333235623034363335333161663136346639643637373965313336656534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1721945072);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ios5gab8qmh4lc1k26r60vhj11', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313732313934353039392e3832323334313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2263746f68706f3766316a6b63626f326f7638716c633133756535223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313935373536323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313732313938383235373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313938383330303b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313938383034343b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313732313936343431313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223230303935323835353364343033303234363362633663373435633463353733223b733a33323a223336626435376665623530376438613335376662393233323033613762353663223b7d733a343a2268617368223b733a36353a2233366264353766656235303764386133353766623932333230336137623536632d3230303935323835353364343033303234363362633663373435633463353733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3138373a7b733a33323a223734633236346132636438626661636335363834336138643732613837336636223b733a33323a223832346566373037386234666635613038333864646162623533623436393537223b733a33323a226366353637623732336533366464643034363166333334366131383734373965223b733a33323a226664356530363161353839343537386162323931353633623432343066326462223b733a33323a226538613334373837356363306631343665623466353833643233393434653538223b733a33323a223932633830326263393538396666323237323137643565333332356235346230223b733a33323a226161616230336435386438366464386536393863366164356431663735613633223b733a33323a226532366334656533393662396135393261353363366662313866316534323162223b733a33323a223036393039613666626637386463363431616234363531613136363766373235223b733a33323a223732643037366636666632366561353165663762313733656133393334633464223b733a33323a223965306664316361363966333566363630636438343139383964393133323034223b733a33323a223235633732333636666631323064656365323064663766633637356565656564223b733a33323a223565376365356538326561333963646635653631363339303636633464306262223b733a33323a226539353330313039376335616231643762373634363238313639326566643763223b733a33323a223663303230363735386433323462326235346338333366623661636131613363223b733a33323a223564333837343135646135373937656566336535653962346131393534653861223b733a33323a226462306338653130333133313136343431616237653163393661363965323763223b733a33323a223462633962663930306530626231623262663839333834323032363832643061223b733a33323a226562663931333964326235313530343131326364633666303565376430303132223b733a33323a226638373535313366653837376536386138626139363531366564366235623630223b733a33323a226637643138656534363363353434623734396631663736363535653533646562223b733a33323a226636646236663638333763656563336437663734666462666162393236643966223b733a33323a226333386139663230313530396538316330636565616630633133303963326636223b733a33323a223231376262306535616564393931353530386239376334303336666662656362223b733a33323a223564666363316232356230376166316366353365396131313838313866316666223b733a33323a223861323739313464623537373032333165643631366664356166623731383164223b733a33323a226632633532373233366461386437396562306562383931386135393739326161223b733a33323a226632313239643536363134666363393063316135376638396165633566356533223b733a33323a223161343361333362623631313039356465356466623533353266346434386564223b733a33323a223335303834316365623462303365653166346665353962326266613836336634223b733a33323a226661353338356533366437313631376566363438623665356133623031363532223b733a33323a223065326539636563633832326666353533303839376639343634323934386134223b733a33323a223465333038386530343262393766623332363630373534333661303738393863223b733a33323a226236643861396135623033346366643030333738363333633064323134333236223b733a33323a223035376436316430333966316339656533313735333536343833663339663330223b733a33323a223237633737326361633939316133313964353766353837363738306635636434223b733a33323a226630313735623434393436616563616566316633326636663866616538336538223b733a33323a223337333336326563646130376363636134306236353033353537613534303237223b733a33323a223363303231326639643437623438393831653734643164393434653731633936223b733a33323a223130636235383266376266346338613834353837366134333164316338626233223b733a33323a223164353438303433623335626265663437623066366363613038626439383137223b733a33323a226561656537366636383839386338306363346465353530383634666633316436223b733a33323a223330656430376236356431363265623963653533316262333030663134383435223b733a33323a226430393038623439336131613963333430346364343632663935303731626131223b733a33323a223663633835393332303939613634643666626365313062336664353734633964223b733a33323a223931343039613264643233383132626163643265386366373765336364343630223b733a33323a223566343233346266363662643865653461633535353766633135373366343335223b733a33323a226133393430663965653162633831373830653039376237663232373436363533223b733a33323a223165333334313665376633363862636236376134383739306630343037393461223b733a33323a226566373232363431616139663134306266663834373739363163316563646636223b733a33323a223438643962613862376531633663646565666231663630383466363836353236223b733a33323a226533333136343836396539653139653466626265636661306266353339323539223b733a33323a223662643038643562623663316536623639643335313663373663326164396336223b733a33323a226661666161336438393735366437333231373738343931323034353265653238223b733a33323a226137613532313464373233646263303132376639663331353531356130663635223b733a33323a226230646537636537623939346565666339383564326263646533343039636338223b733a33323a223232343161636638323132613832383166336536303464626266303738303666223b733a33323a226164386636396165313235386538653066353662663164663633353162353163223b733a33323a223132353237313064633761376233343632326137353434306434303266323332223b733a33323a226438383030613032383432343034643732643532383535613131326366333533223b733a33323a223565313738366638623962393734376663333065363137363637616166626334223b733a33323a223737633337646432623331383436623530626666306437366361626561353133223b733a33323a226430343731633164623264633530353661316364373932663133343465663735223b733a33323a223838613038616365393161643364323965666138346165346261343837356331223b733a33323a223531393535333335333332333664333030626332376432646433366239366539223b733a33323a223465353339363130653364333033653131643065356364303566316133316435223b733a33323a226564376531616263353137336338336166623933336362306338343437653461223b733a33323a226563623938303965373361336431333333666335393463633765333562303536223b733a33323a226365666266666133363435633136306138613165396539333461656434343332223b733a33323a223833336466653466613038613231383832633533343935653339393839663231223b733a33323a223563373566373934356431336465323166326334386262656661316437646165223b733a33323a223031306334666335396539633939333834313338663133656135656333383635223b733a33323a223932623536636138343465346662653031373832373033393533643962343834223b733a33323a223464323533383234383938383639373839663334656461663536666662306637223b733a33323a223662623562323565646564313433386363383863643036323533313965346465223b733a33323a223364363362313532663539326233333638336366303736666132363831653165223b733a33323a223935323836346634336465343465323038653764663461383966313333363030223b733a33323a223134653033373732626462306464613533663166643863666264646665626138223b733a33323a223233323264353633316634373539373939316661376436646661313038663035223b733a33323a226461333636663232663366316335363330613263373831326163316237356134223b733a33323a226537386535633865343365633936663166393563653538623162356232346366223b733a33323a223064366663343763336637666434383966303362333937306331653635633537223b733a33323a223261333464646365626536383237346366613333346632633630396466623236223b733a33323a223264313233336338663733356130383539663337333637313532343862663832223b733a33323a226430373561353331663530626633326332336439306430363663383633346332223b733a33323a223466356431383732313733323561626539643065626565656137626466663335223b733a33323a223631393664383566313535643430363965313663323631636634643930396635223b733a33323a223234396237353736323362633431646666666432656138346263343962643961223b733a33323a226566653062373335376332646136376335636337633235366234346630633435223b733a33323a226133306465363633376563643834323732643866613463643132613761346233223b733a33323a223463353537653935656133626334386133343061313035663761303064636232223b733a33323a223039336636633731663330383462623265343566663636656330346634366561223b733a33323a223766393461393036333131313661383239626661393633663063333661663764223b733a33323a223362323330306566343930363930363164343937376461633235313666306163223b733a33323a226634353830303138653333656634356264663730663032303635316230386563223b733a33323a223138616363336163663738623336366532383262353563623636616634396366223b733a33323a223761323732393333633631656662366430666136376530663566363132323631223b733a33323a223037663538326162616635626630323033323366353966356434616438656630223b733a33323a226536396634336133663334333864396363323162313763356161616135663035223b733a33323a226339383830623435663962306238636564666665313636336431323961643035223b733a33323a226664383564626639316438356362343437373535366630326431383538663938223b733a33323a223332363264663833386131343433303637366633383430366332363938343066223b733a33323a223236653231326136643235323038366264663034633138623232666131623331223b733a33323a226530393133333139633239383433363064646633323761646634333535613766223b733a33323a223639333731386437323762306366643435346230346231366238303839656333223b733a33323a223966616634333331396436393863353061623138663164653665343964373662223b733a33323a226665613735353762336663383466613565383561613438306462313864656438223b733a33323a223836303361633266613763653866396139313465346436353830313561623066223b733a33323a223433626538313063343665373631333031363932656339313132396263366332223b733a33323a223139623838343631333264306334383336643033323437346564376132366533223b733a33323a223965343233656266313630386636343436613562343237376565656132353963223b733a33323a223962326335393036313564363664356231316564343930346631393235396563223b733a33323a223731333335346431346239643839343131666564663435383239383538363236223b733a33323a223164613737666337373633376663373335376365336163353561666230353335223b733a33323a226533333634363561393039373233303362383837656566616430333539333238223b733a33323a223464383366326633396466643532303833613466363038633531386437306537223b733a33323a226636323536613832393730313633366562363436626161393436366365363662223b733a33323a223963343062653236316461353030306239313161613162333062326330383061223b733a33323a223161383563633162383165653866626632383937613531616332303734316532223b733a33323a226566373162386361633636373966393937663964623638333666363231313964223b733a33323a223761363930353035646336323662306133656538653265306566666630616661223b733a33323a226564353437326161346366616363653362643238333238643039626335616638223b733a33323a223063343735666134313731356532353566376564643262363563613934653536223b733a33323a226130366139386139656431613733396433343362663863363536333233303065223b733a33323a226532386532313736363762633761393033653533386137663530303030653766223b733a33323a223466636237623933386534333361306435653831366330323336393437303731223b733a33323a223161353265306531373531303335363535366637333630626633353637666136223b733a33323a223264653532623764613532313130373961366432653432613632353562616266223b733a33323a226134323336343131306161363065616238316533313835663032316536653937223b733a33323a226164373339383066656434326533623339613866623937383735643766313431223b733a33323a223964366637356666303530303933373236623536636239363161366334333766223b733a33323a226362316137306437303138323462323732323030333963326336656366373362223b733a33323a223539633332613737323233356134393861626666323837313636353535616163223b733a33323a226431326461356432393461323533613630653333386163636365346431613266223b733a33323a226430373033336332383831306664623636336566343235393138313762323431223b733a33323a226133656438336531313133313439303137386238626132333033663731306539223b733a33323a226265626163643036623464646162383062633837646235336661316264356633223b733a33323a223463376339636536663937393761303833363363333432613530613431646230223b733a33323a223162346437346532336561313438353232616333313038343235623739393138223b733a33323a226634396434616438376236336134373366383734326265323862383161616538223b733a33323a226337313635383933386261343734623233343133386135616164343734373438223b733a33323a223162643862666366363932666362303737333961623961346461643164303665223b733a33323a226665333633363838623034613265633761613932613734343636623836396166223b733a33323a226337356262306435326462333236646230666235386662303932646461326263223b733a33323a226661313437333638616164333538656131623937386430666638313438613834223b733a33323a223837373462393032666432656535313466643363653765376433386562386132223b733a33323a226632333434626266643763396632336261346230633333326438376136303530223b733a33323a223933613033316432376566333164336462393731333962656630663036643132223b733a33323a223661663738306564633334633632346430303565326332303533633537303530223b733a33323a226337326635653964663132323030383539623037653966353661363363643234223b733a33323a226432643733643338666431353861343931653765633131366139626465646138223b733a33323a223035393264363633373030636632643863326533626236303938303763643137223b733a33323a223133396364386231353362643733643735653563613135653435623732653236223b733a33323a226531636230346639356339376536303230376131363666666535333637383765223b733a33323a226639623730656334653831303766626639373332643937373039303466386162223b733a33323a226238323632643736666533316635643430653962333136363262396434303633223b733a33323a226236643432343539393963306430663662623432613539643238316463373063223b733a33323a223432613266356331613065376539323762623763336531303761323834383035223b733a33323a226561363837313264366530383037326430316238666630396439393766373533223b733a33323a226237613065633436396638306164376565653865643534353239383561613364223b733a33323a226163346237363065633162636632313066306431333865343730643037366166223b733a33323a223836633062346636343037623233316532323564643330663361316163316630223b733a33323a226336303265353761353461613730336161653464613039343837303334643930223b733a33323a223835646434643663646639356336373063353162333034396135323462633638223b733a33323a223036343362663665636462663039356530303133396230626138353530303331223b733a33323a226465323035636566613330393563366134356466393837636234356665303633223b733a33323a223762326138303362613231366162373963343535346266386132616136333334223b733a33323a226335653832383634646662343964313433333864653364656462316130646532223b733a33323a226239373531663564646462386261366165643630646339613031613963316636223b733a33323a223264323564393037643461313761313861396361316631376265356232356436223b733a33323a223936383938393561643035383834323666303262616665343361663332343631223b733a33323a223934386632616262356132363433363932363563653831643830343061353063223b733a33323a226163323231366439613464393937646461386531646537353765636538323431223b733a33323a223339663165386130383636636432313531616664636133613163346538366330223b733a33323a223365636438396432653162323531313035366162313235366438393235616630223b733a33323a223164626530353665656365366564393061366336346564636139643133303730223b733a33323a223432333837376638343962373261663832636163303337333463356133356261223b733a33323a223938363336343233623634633166363536643862383862636535663936326435223b733a33323a226136633163383539373565353537313235363366343131356265383539306363223b733a33323a223862306262613665353930376261656335326432653765333661363938313237223b733a33323a223433616364366337336266316438353839366137623164643364306361363638223b733a33323a226239303731646431636639643666316335333737353933623036366665633838223b733a33323a223563643138623661626534646534663938376263353838656163613966663738223b733a33323a223861363938613163343430353664373262663961666237613166303735373061223b733a33323a226338636130323463646635393133613761393665626134653937343862633630223b733a33323a223766313265373735656666323439393534326431386434323132653265633131223b733a33323a223935303630313066393830333734393434303538346361663065643761613036223b733a33323a223163656131633730383238613934346431653665626631363636653933313331223b733a33323a223430386435373131656362313038343964666237373936396639333838613266223b733a33323a226136663131636463313234336431363165366630343663653065346236386438223b733a33323a226432666563303462393266363766303966323865656362323464623539303363223b733a33323a223237336134666461626538653730306531393038633865306639623165613538223b733a33323a226564383137366338343638343765646536346236623335623166666165353561223b733a33323a223761343039393230643638343361396438306138626436383935383037616130223b733a33323a223432363261323365386638396631366234313035393266646130343838386361223b733a33323a223731373030666634393930336530656438656430306562353430383066643165223b733a33323a226164336462663565616666666530346661653265623634623965333639303030223b733a33323a226130383932343430346564613862393733323038333230376131633038313730223b733a33323a223865363530646466626637653436376639323963666331313337636339613465223b733a33323a226532623062663361623031623433653761333563306539303535663465316264223b733a33323a223137623339316463343733326466333435306335663432623436393432363637223b733a33323a226530396365316338343031613038616563393337363265336339326163366364223b733a33323a223039363233623562613662303238396361336161326139376538633737623633223b733a33323a226162313365656231646165393765663830343036616239303962656164366435223b733a33323a223836373036373935626336626431366261363164363335303036303130373931223b733a33323a223434653761643731306137336563303839333363333863323763363465656135223b733a33323a223639313039396637636532613561376461373030666665643532613038656232223b733a33323a223263633037383932623033313930653263383134393036353035343837373737223b733a33323a226538353833383935386164653937386265653766616162343864616334656239223b733a33323a226133643730666466623461356335306131356338633635373933386636306636223b733a33323a223962663764363137393931366131656366616337303137633635373164636136223b733a33323a223364613838313734393463323466373834666164663138396166353635663036223b733a33323a223734646139383735343164646564613633613632646363353464633735383333223b733a33323a223064373230626564663964363739363937373634366564313236353361373063223b733a33323a223935313563373166666131633434323734663033326134333338313933663464223b733a33323a226236623737346332633339323230353537326437343232653663373433343835223b733a33323a226231643933383738383361666330383639666361323663386137386539396438223b733a33323a223139366332616539643361353432346630616564323338663637373832336134223b733a33323a223165623930303163666435393635646438386338353264383930336362316332223b733a33323a223263326564396565346337373930396139626563363665383839326662313462223b733a33323a223933396363616533383339653661666666353636363937363134393832663464223b733a33323a226233343466323865333930363038363434366363323764346136316438656562223b733a33323a223133356633636334366262303937643762363338336334393661363038613136223b733a33323a223935376133383232623736396164666163373262353965623937376434346232223b733a33323a226365366333316561663630666363383661326334653337373332616665353436223b733a33323a226135313064643733653738383863303361663165306332316632323937366462223b733a33323a226239326362653961306232363836376165613239396235643735366165613463223b733a33323a226232613535303739343865343361333139623538636665616164323962333963223b733a33323a223233636164336238336365333632363966366131613338363164363866303330223b733a33323a223136623765373235333332333863636461323834373232636436626362356137223b733a33323a223932373365346366346135313531646339336235636338303135316236333333223b733a33323a223965393061303530613933306636326463626332653139356565653665633365223b733a33323a226537336465396539326239316464656134353432646638343665656134666364223b733a33323a223662663635653130386165313032333566663636306634643232336263326366223b733a33323a223439626166616366326534366238396131313165643039343066343564376337223b733a33323a223832333862613635363934363532386330623534616163326634323535306433223b733a33323a223466303163393336376230313034626661366365626666376462643433333231223b733a33323a223964356133333639666662633236633337393538316333663035653733633063223b733a33323a223465373238636338393033613630343964643461643361633639653761373832223b733a33323a223438613866613466613437393030366436366437306163623161633138616161223b733a33323a223538396431383061393165343838613333366364666230316164366237326534223b733a33323a226637636335303631386136333762373738303239373736376664386337623762223b733a33323a223866633965373336393461373562353866393566323036333462326161633263223b733a33323a223533373238366363316634653030326536393439393335366637646662303766223b733a33323a226337653064363561646631376437613064363166643236636131366336373165223b733a33323a223030386636646430363666656265313436386463363764333364653366346665223b733a33323a226464346331386231313437323565366463356639643663656664366634633365223b733a33323a223064346430376532353930636264633238316530633632326135386666343865223b733a33323a223463346430653631383639326166646639333933343564633666363339313739223b733a33323a223938396165643331346165666330326137666666613530663236646633643830223b733a33323a226439613565313336326265306438326438336330346630366533323238653963223b733a33323a226461383737323261383563643561306562333738343430653665353566326237223b733a33323a226437303734656164316164313137303034353061316266383332346630363663223b733a33323a223765393435333464353636646139336163306338353261636332333064613734223b733a33323a226364663161623333386437636436613662613064306434313938663461643632223b733a33323a223436343432643139343433363062343961366436376637643330633733336333223b733a33323a223639616334663339646232306536303266316639313230326366623338623864223b733a33323a223034323566326335386637633965373731316533386633633561313030303735223b733a33323a223239663230303763373434353635323336396263333834323631363734346131223b733a33323a223338383736313139326563663164616363383963633536323139613233376238223b733a33323a223137376365633461363737353032666230366335333361383461303364323330223b733a33323a223238323034333533343130383364316362353138386564346434643966663964223b733a33323a226130323037326530643133333932326466383433613931633638306631386332223b733a33323a226631393933633065303865323763366336663766313533646663643764663335223b733a33323a223835373239646434393765353966366236313633363363336165383030623166223b733a33323a223431616661376235623639653134653139653139636137643662346665346639223b733a33323a226164346437383763633764336536323539396134326636383230646538323166223b733a33323a223430323936373836393262663266366239356265643938353866306635333666223b733a33323a223130386436623532393234626361326461323930646239323738373234343262223b733a33323a226137346336343764353163363765623763353330613863373333326461343366223b733a33323a223934663530386232366136343566656539366236633361633166326566623038223b733a33323a223338326438623831343162653330343838333831666662666363666465386234223b733a33323a223733343639633738316533306665393762393337366235303937356662383762223b733a33323a223663663461333336353932393833623365613935376438613933383130323166223b733a33323a223335666464356637663336346538313466393438626166393331393737383066223b733a33323a223365316261376636323462336361623234656165386561326561316561636339223b733a33323a223730336564326133623533663766663031323137313237306637656634376237223b733a33323a223363633738396130326332643930316561363135333537636632323436376632223b733a33323a223162353864316238313062656564663634386136373861663435353732323038223b733a33323a223761363764613631613732643165343436623838373462303866663430616131223b733a33323a226434653865306463393730396163363236626430366436396464383331383831223b733a33323a223135313437383235333666373837623134373637623431363465633561383837223b733a33323a226264376564303039616366643764353162626462616536663632373233643231223b733a33323a223430323235623630353535306163343934393463613762353230333539303365223b733a33323a223937356461336634636539636266323532613166616639363032656335393263223b733a33323a223663393436356438353066306630396337306337663433346638336166623034223b733a33323a223038393831613533313736313661643361346363306337333531396532333336223b733a33323a223437366538616233626665613632303738353666626435643032386336396438223b733a33323a226533323239613230303263393436613464333635656664333234613065323062223b733a33323a226439383138376335376162393830306463616365613864376239353063316439223b733a33323a223564373461623366646462373238326232626661383537386565346364366265223b733a33323a226163623738386461393537396331613739306131393265626336653830326532223b733a33323a223061343661343537666664613634633135326336623063646161386435393965223b733a33323a226336386461336235626464616133313366323966306462336564316332633839223b733a33323a226166623835633764646339376363316666386332326330643265316337303137223b733a33323a226533383233373861323265346534373866633165313564646539363432356437223b733a33323a226561356165306539646131363233643435323563663731343730326130666236223b733a33323a226162353764303130613934306631663030363231643364303030346565376336223b733a33323a223861363734313539373335373035626531343862363535613631653563313439223b733a33323a223865353431626334303634613834396635653734336463343334363638623031223b733a33323a223631323462346162373965356234666630353639623665383435373936326637223b733a33323a223539396564646339666263353132663236383939656665386537643933313863223b733a33323a226436376637353362653631633266663736346464393537316337313132623237223b733a33323a223064633234663530666331303462336531646539303163383462306133343464223b733a33323a223434396339616133373964613238653232396138326234356261663939366534223b733a33323a226264656664613266393063643961626633386462653836343666353739346133223b733a33323a223032663335613864623532386665613466373139323539653162656464383437223b733a33323a226135646538363831626536383435356539636632616331303636393965383935223b733a33323a223837306332333166316462656664386632643665353136373765396231386664223b733a33323a223232623030303537643339373934356131303966346232343334656566363632223b733a33323a226362666531616365356166636166353330613164643933643735363638383961223b733a33323a226134636336373365396266643366363834656235646165616565613238616135223b733a33323a223233633635323665326138323133376461356635306564623264666534356235223b733a33323a226165333630366333363865303839613634363332613830656664336335333638223b733a33323a223235313537353138323631663732313366633265633866626537643232373138223b733a33323a226132313035646537626633313331613338353962663863656466343134383238223b733a33323a223037363136656661366437346134313830613863626562363335613131313665223b733a33323a223161623465653262306365376461623933653136386666656465633438633962223b733a33323a226362333464336338666162613861663938376261646630666134366262333830223b733a33323a226161643235666461343236303764386638633066353666363238363430363133223b733a33323a223961393466656362366537616431626331613330306464356461353937613661223b733a33323a223037316364343062623832363063623361393261336265663139316438313866223b733a33323a226264343035386165313130656665363761633739663039636139333635356432223b733a33323a223030613063326531613561663064356531333265636330386230366430643535223b733a33323a223536663863613735356132656164396264393064623431366139326637336537223b733a33323a223163623465653230646531336538643937626665356332616361636564393961223b733a33323a223138646439386234333633663833396362343266643564323638633163636135223b733a33323a223931623938346635343861333863633037376665363739393536386133336462223b733a33323a226462363432616237623562343062326232316661633964613961333631326562223b733a33323a226561653165323661363030383566643265366563333539616663316462643561223b733a33323a223463646439666630346261623031646461623133643862613730353038623334223b733a33323a223536346430633166663232353639363432373432663061646631636237343464223b733a33323a226435363638343437303164666361613566663731313966393733303334386561223b733a33323a223566653865623761306336333634303535373838626430666333643831353235223b733a33323a223333636234373665336330653265383236303464623564313734326339633433223b733a33323a226561313839306631663530653766616330653934393863623334313436353261223b733a33323a223737663236376237643262633963316631333635626136383939656637353336223b733a33323a223038363464346535393563663939346166663637393039653866383936623136223b733a33323a226663323336633036633332613163663163613966316133323132333736653733223b733a33323a226634363532356438333365646531306164313066373266326131633361333834223b733a33323a226233326130643266343265636339323236313736646133356166343235333737223b733a33323a226231663462326230366666666566646134633836613763326233643965633666223b733a33323a223062636364363534373366633166353031613032376637626436646263636334223b733a33323a223736343463316237353837326563386336326264633636313063363563316363223b733a33323a226366313131373765383336653734653639393266376139313231306230376166223b733a33323a223737326563613863333966343637383439356431396463646531646236356533223b733a33323a223633656666346561383231303432633333656462376230373336333732303436223b733a33323a223933366238646138386536633064633764366365336539666234313039303037223b733a33323a223061633863363238646562623462613631393932303037313333613338326333223b733a33323a223030373332313139396431366564333062306335653033643565613032333364223b733a33323a223238643464356338366562383730313563646238666333323961313835333765223b733a33323a226565323466343231663961393932363739383335633965396566346363613139223b733a33323a223335336633353564373436323636633835646139343634613565666361356165223b733a33323a226665623761653134353938333366373832386366636332366162393965313633223b733a33323a226463386162623631386432373762613933666637373931616635376630646666223b733a33323a223333663134396330383536653334396661333639326435363634333862653439223b733a33323a226335353361343333363064366234626638616339383036373263326263363434223b733a33323a223462653738326339393066633662393733383536313536323964306339663931223b733a33323a223264643961633331623564633762626230316565373135653034336434653464223b733a33323a226239313639303939333030666231353732363839613764353761333238656533223b733a33323a223161363031633238633130353234366661313264393635303934356362373263223b733a33323a223764613765623231356238376236393364303362383462656261636137393864223b733a33323a223763613138313738373465316564666534626336666531626532353737633165223b733a33323a226231626638323039353436383664383437363665383135373162633036623135223b733a33323a223938376364663036633162393665303964353163386132666233663766633763223b733a33323a226532633562323934373036336332313261366333353265366639636265656330223b733a33323a223664633932323938396561386239386536643236643732363835623464383565223b733a33323a223632316638336332623037393765323832316162643966613932646434306666223b733a33323a226138396533323639623334333964363332386666373637393934383236663937223b733a33323a226238373939636430336261323830633938663763383834363334343532353165223b733a33323a223930626334316139386634373131613762396239623465393737643030646636223b733a33323a223535626232613033313832393230363762633637386238336238316365393163223b733a33323a226337356365366331323463333261383338396663383538653031326338343365223b733a33323a223931326134313833616461653532376265373865336536663238643137613135223b7d733a343a2268617368223b733a36353a2239313261343138336164616535323762653738653365366632386431376131352d6337356365366331323463333261383338396663383538653031326338343365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3330383a7b733a33323a223062626338363864626462623230313436656631343766393365323362326630223b733a33323a223164306237623163313661653231363561353737623832653939373535313131223b733a33323a226431663262333838623064383533373437313664353734383736363265376537223b733a33323a226534386661333135663331313934363062353263383033366332386531323161223b733a33323a226230623731306462643565613966663930333465366635386566636136636564223b733a33323a226165666139303736313832333039343361366465656335623334363533663166223b733a33323a226563656530333966326363303835393961623865373130623362303533656238223b733a33323a226339313831346134653863616235353365646530386634346139353133386532223b733a33323a223836386137303237393761666162306333646430356566666166666633393230223b733a33323a223361663234316332376636623762326139383230613966313630396663623136223b733a33323a226539626566616265313164323632623435383264346262653939383234663037223b733a33323a226631613136646463623365373365323231313165326361386535616362333065223b733a33323a226435343536653661303833333931346265333834323535356665666336333039223b733a33323a226532393036323362333463366163643933373265646562333237646333663038223b733a33323a226161666564336664623334383166316131326131616562643831616432373834223b733a33323a226631313563613634336530383231643666333437376636363336393030346430223b733a33323a223934623036303334613666303338643334313937303662323064383739353465223b733a33323a223766633031383064316466363637393938323266316364323734336336363062223b733a33323a223965626239396134643163393532383164366236366266343466376265623965223b733a33323a223163363937386435373339373761646333343934346332323663373562666465223b733a33323a223639353539393939643963626137353134333633653130383034646264396635223b733a33323a223339383335336361343337623233636662366266653435653864633137316562223b733a33323a223763643337323935396438653264613933353239633636646364343736666261223b733a33323a226663383838643534333765616536316166633037643033623365346136346262223b733a33323a223366623236363738383263623162653035656263343663376166303265373661223b733a33323a226533316130663239326565373736386366353234393230323837636336373333223b733a33323a226135366365623438336632643034626338636663313034363635616535626663223b733a33323a223738316565356364346536393030356638306634663037373631363665633330223b733a33323a226133653435303932343633663233313238626564356564366435336131313962223b733a33323a223330636363363638343233336636633566393766333334393134353931666639223b733a33323a226138653735663139666264653736343262653935616237383139653565366238223b733a33323a226437646433303437393031616335383965633534353263636634646232363462223b733a33323a226238386330383361353638323765303632623834383032663937386166383230223b733a33323a226664376533336633363834343039303930636637613261613238316531303733223b733a33323a223835393661613639343730373734396166653134393133613333306138303135223b733a33323a223465313530613366303932336266663637613261663539316239333566333932223b733a33323a226439386538343235373633306361306133323630626138363531666137636436223b733a33323a223036633933313038383566656235363635393539393033303331336633336631223b733a33323a223535303366653236613331333264623833643132336365363961633233653966223b733a33323a223933653136623535643435353766663939656439363534653036663938643435223b733a33323a223265666565316463313665363564393137326432323063386539373236343931223b733a33323a223162333432616661363961346336363636373738313834373539333333613865223b733a33323a223535383538663264343261303563313236656365386465323634653234396133223b733a33323a223631383131356365626630343337386265663465333532633235343362396466223b733a33323a226635616162323834313064303961656162393962323736333565376432613238223b733a33323a223866653662313539343566353764333038616634363634653537356433343639223b733a33323a223532313164343464363235326231623039316664633165363063353663616165223b733a33323a223731626534653437373539636561366564346230333636373436616335306535223b733a33323a226564613632343665303963366263303666353839383662623265353036653930223b733a33323a226539333133306361326163356163373939343231666533363833396332393031223b733a33323a223131393363663363363631363363306435646337383765626233346331303061223b733a33323a223334636333303965313737363863626634333631636132373366376131616530223b733a33323a223537313362303366666531373932306334333464633930366137656565373865223b733a33323a223662353138373961343335376537366338656435313835323432633366613433223b733a33323a223236373136393464353237323330363232633235366265623033653362616638223b733a33323a226137396339306135373866613938383833643062306565393233323430623230223b733a33323a226138373561633933646561316664303136386535656265353865643861663762223b733a33323a223834623161316430353438613430623966366334376230646664643833353963223b733a33323a223836356430316261663364383465306163313163663233363830303138383530223b733a33323a223266616434313865313730666462653433346537626466363232336364383939223b733a33323a223764393131663839636330316163636464633862393233323464393633376637223b733a33323a223466356530663132376261323833626132313162663331326335626332383762223b733a33323a223836353830313964343664613830396564316632363732623365636135393164223b733a33323a223033376134386138653632366464353931366339396539373739636466306432223b733a33323a223633643830623131323538393561393839616134313239336366303161633036223b733a33323a223730326231613233393961373336666363636264373763636637383538323638223b733a33323a226335353137353831613464343832366137343530333732643430363865613631223b733a33323a223665643265653162323664386139373666363138343333343964343535653462223b733a33323a223234366139623765616131623234656235353430666466373735326564653439223b733a33323a223661393430636233616330656361373136373135633666376136383930393438223b733a33323a226132646638316330303934666235633032396463326662306532633432616535223b733a33323a223264316633663463656639336361313531303733366662353430313330633765223b733a33323a226565383965333338656331353736336134326530643639633133333638373366223b733a33323a223336376465323131313132653135643237626539363063333830623431313533223b733a33323a223039653332333036626362313366383836386561363135326631613261333666223b733a33323a223665356134303661316530306337333938343361326239363439323831666161223b733a33323a223533303837653563336232333439336239343832623839626637643439636531223b733a33323a226633386163383362313362656666643130633931626336393863376361643935223b733a33323a223930366131353136386237626164643131366432663439343836343765653164223b733a33323a223235376132313534386165366231303763633337376137663931646464336164223b733a33323a223363623632363930323961663761373762303930666365306465666663373161223b733a33323a226434306664383730333831313436373234666435396666393238666539393431223b733a33323a223438346663316331363131613635303930666364656537613636383964373234223b733a33323a223231653364643134653063376464643337316633666132313931633166646139223b733a33323a223136663932393130643535366637616664313762306132333839313637373733223b733a33323a223837356433363231653030653635383335333335623337363866396532333134223b733a33323a223962366462653066306436633562393966333936386331313732663630393736223b733a33323a226561613761346331353731363537303662306165333162326163336366666566223b733a33323a223136643939363461386561393561653436366138616564636139326632303766223b733a33323a223161366337646338366139663163353531636630316137303037653038366565223b733a33323a223462363361633532623263373164633932656563376565326635316464323033223b733a33323a223832366338663863643435656138366365343765663237626539643336376639223b733a33323a223762666337643837303962653933663565383835623765323566366362376238223b733a33323a226133663063343535656530316136643561646664363465623738643432666136223b733a33323a226133623637663532366661393331373862306562303132363234333139313661223b733a33323a223738353066336536383334663830346635613734303064376639343332363731223b733a33323a223532376439653933623439316236393937363231666637643731663831633234223b733a33323a226334366361363135663530356236373634633939353838613137393261363165223b733a33323a223964643738316135346330313761653562623730393565376363336136333066223b733a33323a223463313238346330396633323164343830666137326666373461633866643762223b733a33323a226631316463626231646534653538383432613533376665313430356566636431223b733a33323a226532323562346133313730363633653835373633383338336662316336643939223b733a33323a226130666537333135313934373736333561343035313232333064376133313032223b733a33323a223061303031636331386438303965663134306231343165353762363866626337223b733a33323a223662633233383733656533613839306433353662306135393739363132363664223b733a33323a223530623765623064613338353665396439393439306132626630663666366635223b733a33323a223238343932656636316162653632346266656466376232313633396132633231223b733a33323a226266393561373162323066323032366630666663336538653863303336306634223b733a33323a223461343062626531336264653934666434343039656439616264303437326264223b733a33323a223435646263666365336537613533643865316631616362386630376463306138223b733a33323a223739633537336635316465633765656361353836373835303362626439303235223b733a33323a226464323564653831396465323839333564306364656538623032613065646131223b733a33323a226466373235323963366162313337323734396232366631306165376437333963223b733a33323a226631633461356239326666663133373934643131303237383639323330396634223b733a33323a223836643563393233663732653431333732356130303138353034343537323639223b733a33323a223733323536363565383263316131303232306365613338326336386366313464223b733a33323a223961353237636361373931613234613535366237353531326361373163343232223b733a33323a226631313531346335356630356662393436363737376461313534306335633432223b733a33323a226130353663616435616435626665313565663931333537663636376436353966223b733a33323a226630333836353131316163633238306530636233323863363732623761333838223b733a33323a223138353538646230623035313336663962613436373565373435643661323037223b733a33323a226234613335666365386462356661666135343562323135306230363339333133223b733a33323a226431626530663336376264356531303434376465306230333535396135633761223b733a33323a223562366434346430396137353039386431353036323562356630633035653538223b733a33323a223535313262663966366233336634663661626464336265616238363663613762223b733a33323a223663323832313937353165616166323039356563396531613361663534626362223b733a33323a223733393535643639376333373463616363373131653263393830303963613338223b733a33323a226330316261616232393661346239306461366532386436616564316162316233223b733a33323a223765353361616565346631653866653331656162316662386335316133636564223b733a33323a223133383231353238643235633134663836323966383735326330383233303639223b733a33323a223433623431626438623931306634333639383935383361303335366530383663223b733a33323a223763343936633339636531623537366336376539336463626334373730333735223b733a33323a223038376165363565396235636639633137346665363935316163623263333265223b733a33323a223533346132306161663935666365316531326236666336333838363762316338223b733a33323a226234323837393462363135353039363863343431343038383263393732663465223b733a33323a223434383832383161653139613830656564306364616362623230383230663134223b733a33323a223930313332383436666637383934613763313763616164343564333633343531223b733a33323a226236613362353937313963346463626262333636666438323263386434333533223b733a33323a226630646534633962306230336630343931663332626161646139656431336434223b733a33323a223136653337646261336464373732666462363562643261356465323931363533223b733a33323a223162666332623736633232613438653163373532366531633166366666613661223b733a33323a223631616235383336373163353364393462353436396234303563643263366139223b733a33323a226235373532316431336466666236383464303962633939316133343539356239223b733a33323a226433313666626439393865306236656135366530653931363930653766346662223b733a33323a223939396434303631303737616265316664333031376134373062643333653232223b733a33323a223462613863303230643338633630353764353732343365613438393335316464223b733a33323a223434393262336531386237386636653331363534363837396638373864616439223b733a33323a223733643539363934373639323430643663623761623462646261653633373739223b733a33323a223863376664643535313064653563633864643361323937653933656537613133223b733a33323a226431336334313730323965313866396164343564303763313939326136323237223b733a33323a223636626366646365346239366166366630353861343537356230386432656262223b733a33323a226338313330373939386632323639393561663533653661383731393330646135223b733a33323a223538353634393164386564653364646537343238376535313338313638323134223b733a33323a223038336438353066333233663635323736323065623430333533653732333865223b733a33323a223038323765316464656433356165313736396261373531633132646562633133223b733a33323a226235346661373561613264373964313939613532346631656533323437356366223b733a33323a223636313730303835383433336464343139633763653030316634383039643334223b733a33323a223931323362626162613631333165323637633665336264623262653133303132223b733a33323a226535623337663832333236643939393433646431356238383562653238386338223b733a33323a226164636364386366626535653334666665343735393431316332633332323536223b733a33323a223463373066396632333433346530373761323034343331663162313965306238223b733a33323a223933313833613666373264353539333130613631363131346265313134333430223b733a33323a226165333636373738343833326562343237663738396665306235336162303261223b733a33323a223033306666316430376339623136326134396466373136653032393034376465223b733a33323a226234386236396464386139643032303665316664616232336363313038626261223b733a33323a223134383336613761383063356233623264363236653239663061636566633461223b733a33323a223861373338643732376234333539663266636666383534616664323236363835223b733a33323a226536396562616465343136386631663033316664393637623466666566393336223b733a33323a226139666234653161346133383139663230333935356562396634663261373363223b733a33323a223139323535626661333464643535653566343863383633303661336437323762223b733a33323a223138613635646439646463323062306564303735626561363139616332373263223b733a33323a223135643039643630393561646333323333656638616138383031366361323333223b733a33323a223563396461663461353633663132633364323535336566336130333966353039223b733a33323a223933396537353165643038633161613235626162316264373030313463383930223b733a33323a223163343636663437653433346364396538363335323565353739303536613033223b733a33323a223866386165383762346164643439356661373533633633666565366637623533223b733a33323a226534616334376365316135653938396265373735323239333665356338356337223b733a33323a223136656539626133383232303637613138343436343533343734356637343530223b733a33323a223734643762346161333061623334306263653631643432636435393635616265223b733a33323a223139613462653634393531303865323437353961623362353565386463613133223b733a33323a226630313639336333616331623736323039666363653733303261356335653732223b733a33323a226134376164623733306238353435303033343466616164633730303738386530223b733a33323a223036323863303636366537643366653163303434616565653137643362653366223b733a33323a223930356431396665373262656439376234386636313035373232396330333732223b733a33323a223866333966386665323433653565353565373536353939653666393664313533223b733a33323a223830373439633032303965353961646639313134373964623235373938626537223b733a33323a223234356630373839636464313236663362313538373964326361656266336435223b733a33323a226436613363343139636439623935353866313236373835383936303638306330223b733a33323a223632616361376232333433333762636139613166353666633936336538363333223b733a33323a223363363266363532623362333162643634656234366435303838383936353563223b733a33323a226330393662343263373730386236383537393334613064326534336633653834223b733a33323a223534616138623035616530313438386530626661386337613362663564666337223b733a33323a223935663034663336633235306539323838643566633439333630333235363834223b733a33323a223233393462656162663437393061333037323135383663346662333331346565223b733a33323a226631643066666666623839343033323863313233613132386538393836313161223b733a33323a223065346433396365353762383335613664666365336363613431626539303362223b733a33323a226262373831613462313966613832623534393466346266336538303333383065223b733a33323a223830353639653061346335636161326538303462626639386264396565356135223b733a33323a226531343466663362666466346238336131363364313937366232323736363563223b733a33323a223036636338323262626638613462663163643766346636653265353662613962223b733a33323a223763363261333765646362393863343331633830663032616338333561363038223b733a33323a223765633863303239343633366465363934303330333432326231336561393134223b733a33323a223132653165393838353264376138613665653736383837303039326362303766223b733a33323a223332383031373733353739646365616534363335393234633933363164333363223b733a33323a226630613361343639613637333837633338346437336331346139323034323562223b733a33323a226665386434393839313563303764646336656237323364303036306631323230223b733a33323a223132613738376363396235613734633531653066326633383266653939396466223b733a33323a223036336563373931333166303730356465366265323839653637653335313264223b733a33323a223764623032663037376336366563303436623131323536323864353039373138223b733a33323a226233333733333461346138316661626262306638666435353063646136323863223b733a33323a226539333862666339663630613337653433623966373837363266303135643238223b733a33323a223139613234343265666131353135643639333862393337376532323836656230223b733a33323a226538363337323063623362633538613233306332356433643865643038656362223b733a33323a223862643034396237653131313938366632323162396438366330373839326333223b733a33323a223435373366666362653561623664343931636663316139383937383431323639223b733a33323a226337373234383866303361343863343836393130346231626532623234636465223b733a33323a223664383134343162616637646335616438373231316132333632333963626334223b733a33323a223237623739323535623664343331353632373363353738386661303534353830223b733a33323a223232323332366634666366326439333030616135386637626433393430616263223b733a33323a223339306464623232633635623134363537346139336635316362396264643735223b733a33323a223662393530363432303230303336633531356436636562333364373735346133223b733a33323a226533623131323962363934383133623633363263623231393166616462303939223b733a33323a226331383234333662393035663664326262306237643837363131623661653637223b733a33323a226533323463613561383865393831613833646536663866663238613961306632223b733a33323a223862363863353739386637613534323565643635633266313136653439373961223b733a33323a223161353161326235646637613435303763373363363732303532613439373731223b733a33323a223038643139323166353831336235623966633233626636373861326539363239223b733a33323a226161326233333832646336373965393339383464366131373637303463366565223b733a33323a226537313564353563343930353137653337663831663031386433316530626235223b733a33323a223338393033633830373964646636343931353965656463633064353864636264223b733a33323a223662306362343036353135356566383636383061313631643862653137626563223b733a33323a226432393836636562343331343532316138663362303535336163303166356139223b733a33323a226638616162363330643137346630353563393337323962386262376663326639223b733a33323a223765333834386136353931326532383663663063313136316463333232373738223b733a33323a223634646435336533393733326134616635356365303937386661353566626431223b733a33323a223462363939643535313137616436666235303134356635343461643465356265223b733a33323a223531346165653032643261346335333962346634343666346364396139396466223b733a33323a223235653262346165656331306532393434653834343133393731373833306336223b733a33323a223733353232656133663765333466626364653934633433343633653362333732223b733a33323a223236356136356433353035363536393139373830623339653130363538646130223b733a33323a223837353162643535373534333363356539636666363166653964393963656265223b733a33323a226165333134323266623430313265613232663232666439663332653633663266223b733a33323a223636356434663438633864613033326232393634376337333964663131333761223b733a33323a226538613735353065396432626262653238393135336438356636323334373163223b733a33323a223039373137656433363137326237353365366364343034626132303036383630223b733a33323a223436386365323364306564353438343739636632373737643632363838663535223b733a33323a223139633432363037366462366366643762313930623966383534383935383938223b733a33323a226432626463333935336634353136336530633439636564396333616161333366223b733a33323a226134303532656164336665636536376135386264323534613832646331616665223b733a33323a226662616134613238383936363531656639663965396535306133666461653634223b733a33323a223062303566376136323764326133646334376633316639363161336239383061223b733a33323a226530613366633662306139363561366566643230653031326437336265343866223b733a33323a223231643733323332656138656231633564346566323061306162343135326436223b733a33323a226432663665626237353365373763346330343965313035333738366538303336223b733a33323a223263626635656335336531386431313163353261353131323239643064366439223b733a33323a223164373838643331636662376366353937663765346231316366346663643032223b733a33323a223165353338613062383762633863623636346235356263666432646164353539223b733a33323a223434623836663739363233353130643563346465633231633639313738363939223b733a33323a226435623637643961613439316336363036316338326133623834636163363138223b733a33323a223966383438333263306639356565633831333837356333316564613464376465223b733a33323a223030306162313137393331303136623538653438623939323538326465326164223b733a33323a223665363831663962643139656137623834363439323162383063383034323434223b733a33323a223362333332656663643066333132356430616565633030343936306538656238223b733a33323a223139626234646666316664666636646561343532656137623862646633303764223b733a33323a226234663136303335373034636330656339356630643961383633386661623036223b733a33323a223338663133363436333961373163313335383335306234303765326538323432223b733a33323a226463333061366130613133326332653130396232386638363434353033306161223b733a33323a223161376138303465376166653261306534626461623137333162386639623830223b733a33323a226561646262306461336234376632653566383363633236623336313631613035223b733a33323a226162623436656139623732626162373535366334656162353430333631326461223b733a33323a223534363738306435613932343533326363336461343361346261326636626430223b733a33323a223839343161386338663333323438396435613566363833353338303865346461223b733a33323a223637323361353834666239356237386466373064353965333436653961353530223b733a33323a226164393932666539306334383562333665373261623865363439383038343731223b733a33323a223266323665623264643934316461303661323238653030393332653661663339223b733a33323a226564333364646263626432623566656139646239653534336161303038313432223b733a33323a223430383932633133623135336434653834646164616637663836343830333065223b733a33323a223036333964383533353864626664363163623630306635623937653837386334223b733a33323a226236366365373730636462363961643933663137353936626332353135313266223b733a33323a226531336639303035333463366234323664663764653236353861326630363064223b733a33323a226233353063653561326133323434363866633562323136626630366234333536223b733a33323a226163353038373734366539623634346263633234396466653466393566303762223b733a33323a223663623830313464656335356533303862393864386233353132633165623862223b733a33323a223833613436333438303435346532633532646164373132323537343733323738223b733a33323a226362363163373833303265363837313938393635623663363738643833643061223b733a33323a223461643338366332663563623965623533366236376564343331616338353733223b733a33323a226566396666316133636132333630333462613361623735643864333131656431223b733a33323a223339356664353036633363363637643763653633613063333638343833663836223b733a33323a223534343831316334353539626464326162653236316265306664306561396364223b733a33323a226539386561633930616566343135623737326235353639613533323235636539223b733a33323a226564646433303132633834386661363636666330633665353638343237356466223b733a33323a223430623430306430343036633331636136356662396237386561366533373135223b733a33323a226538363635306336393035643862303464356337336162316661326531663431223b733a33323a226530326566643731313738346563626439333265363337633966383933346530223b733a33323a226435396563613134346662366136666436316163386464636334326463333464223b733a33323a226434623663373230643237656265643562343034646661653630386331623737223b733a33323a226462626661626162356262663931343533336266616635356236346637663132223b733a33323a223939313333613633656563393437316334656330316633316664613363396430223b733a33323a226162396239373062306564623661663336386565643534663464356562626262223b733a33323a223036323532346231333135646632636663333433623865313464656564633130223b733a33323a223064646238356563313630623037376538383632333738633663356331626538223b733a33323a223862343635313361383634303537326231653032316238613066396630306262223b733a33323a226563366265386338376566303436326637653561326436333439643561666436223b733a33323a226436373164636535366232306339613561663437623435316539333161303837223b733a33323a223264383436323564383237626366666264373831656465313937353164636433223b733a33323a226131343834646161663430383032663166333333643237336163616235343332223b733a33323a223866303537633865623830323264363361633866323338313930633438376262223b733a33323a223138626533633466333163653330343230623339316364656538313334366266223b733a33323a223239363661633933613464383263306163336639393738333165613933393131223b733a33323a223933653063323564633039373864666662366539333232346662653164323663223b733a33323a223262366230623736616466623065303063323361666234623366663037376562223b733a33323a226233663739353139626463386633343834653962396336323064666433373763223b733a33323a223438656439613633326531306261613464626464366462356166343930396438223b733a33323a223839323330613864643764613830323135333834623531636263616634653861223b733a33323a223864636564303338656662306239663536316462313932383762346164343664223b733a33323a226361316563646330396462633532313834316662666635343934396236373932223b733a33323a223765643566663838656234303033373833623035626666356436383235383361223b733a33323a226465373865356664643232343563356331316262313631636537653366616463223b733a33323a223235663765386538653638643839666431366130383235613164356330393830223b733a33323a223733633563323061656666343530633862666466346662346534333565336331223b733a33323a223030373830653931633435333564643432353038653036346137336436356239223b733a33323a223365346437383166316465353163633839353463333339393966663539643438223b733a33323a223335393764626265323236656236366564386463613731366636343830343364223b733a33323a223837303966666463626533366139656234663766613937346235613031613939223b733a33323a223632373233393430633637643932626530646463383466653836653232393664223b733a33323a223734643464626632386362316234633463313964623863343766666432386630223b733a33323a223461663364336166653561616364616132316431653230313434616564343037223b733a33323a226237646231393765346238303939386135643039653662323233323363383166223b733a33323a226263376561623833333436313338623331346466386130613530353261313639223b733a33323a223332393361356165383434653638386637623932643730616133396266626236223b733a33323a223065656330356539333032303330396531346462613261633932303666356632223b733a33323a226661393737373934383039643737383437663966653765653730613037333535223b733a33323a223235623666663334613333323837616334313135633165333165376534643361223b733a33323a223432666362623061313630393732376636653032343638316637316564616330223b733a33323a226139613531373164346161333735646164663732376463373063383666346634223b733a33323a223466633061326431613538663065646635343965666632323438633832336663223b733a33323a226434343632356661323263386165633966323233393166663663343835306261223b733a33323a223537373533393237353864613136383139306433613735306434313663373666223b733a33323a223466653138363562373232663462343639663137643737396262616539636337223b733a33323a226439626135643266613962626236636337663038626266306162323837313865223b733a33323a226138323066623734376161393237626163346632386666663561326664333731223b733a33323a223262323563643066353338633561366537386666353035643162336330656434223b733a33323a223935346665306465396539386364623766343965313934323232653161323061223b733a33323a226633653537363965636137623833663738623033356436333062346436303437223b733a33323a223738343933623139636233306665653530346334363266326339313631646232223b733a33323a223531346634653230323833386635383065656639393738303631363830386562223b733a33323a223434616166386366363934306335313934646639613665393937313434353730223b733a33323a223835616666333564663662356266626131613064393962636565373564326634223b733a33323a223963613132323866643761343436313935393132633239633330633536656133223b733a33323a223365323733313862313566356133653433636466636631323763323533646663223b733a33323a223239386638356238306234616338666431613438373436303766393239386539223b733a33323a223935343664393638376466323039366133336431356366366336623532646463223b733a33323a223562633133643931393035343932636535313336323165323236393134633066223b733a33323a223233616136656431336132656532393236303732646366666666333134333130223b733a33323a226237383062646435333261366264623731353930376537393136386633323936223b733a33323a226661326430333639313231366639383266306134666236303330353164373331223b733a33323a223863396632376139306330623430613537346538376338386533353136653261223b733a33323a226330663363633265663361363433666530636364633633313234363131663834223b733a33323a223039386463616139663332623239376536383135333933333261346665303561223b733a33323a226134343463613964303932626135626663306135383931306132313037323565223b733a33323a226463353130326338303662666637623462373639353065646130366130366662223b733a33323a226336643265323566633532306464366530346431633735343564356564316632223b733a33323a223962633766333663363863323035343539636163666430396463656239353430223b733a33323a226235313436643238353064353639353534303866323832636631373239386434223b733a33323a223438343336333933336462353664316561663135616138633335383335643861223b733a33323a226532373834623039303132383135373636626137656363376338656438306661223b733a33323a223665396430663761333538386665626461316437383663366635653135386436223b733a33323a223239363830366163306263666364316263663461393765333166373964613736223b733a33323a223266346665343430366536343137636336653439626632613039623266643538223b733a33323a223639666634643263373464656539323634663137666362333663623538356633223b733a33323a226235333133643463393461353765356532313933623733343037333563633533223b733a33323a223164383031376135366433623235363131303233316330363539353237623037223b733a33323a223931623139323630333766333737626565343636363864353930353430393861223b733a33323a226236653561313939393566306662613561626637333965643661396363303330223b733a33323a223562323634313361313933363462356338383039396538646530353764353961223b733a33323a223438353933653666643437313030336163646132613261363061326461396561223b733a33323a223932623037636563383031323238393862336439373630623065393761613430223b733a33323a223139396261366263313962386631333135623863623961346564616262656436223b733a33323a223937653866643931303832653139306533613637663231393263666436373633223b733a33323a226430393966653434343235646439373166313761623136366364353434623933223b733a33323a226566386330373439643632316536623363646139363930353830623364306265223b733a33323a223634633165313939653539663335333037636239616165323736356138626361223b733a33323a226332393935303236383332343636313237303361636334613962323737333962223b733a33323a223162656333393732663532333236306461316338316439643564363632303435223b733a33323a226433666461383062646661306537653333316564383637363466333430633236223b733a33323a226465666535646162346664656662383739306533613437663066613635343736223b733a33323a223663656539373135663865306661313862666532643464366333383131313534223b733a33323a223065626431313834316533636561653837363766393537363865396531623063223b733a33323a223031636364343933316230633435333236363462643838323531633662373063223b733a33323a223561323339613632663132373364346164343430313564346338663166343332223b733a33323a226137313531326136643732326562613737306433666637613937346136656334223b733a33323a226664613333643762326664336134363263636633373430616130633934633236223b733a33323a223035333365343831336266333062666663366630336532336164613934666366223b733a33323a226437636262333263626438633739303432383831626337373863353931373636223b733a33323a223363306137326436313366386139633761366433666430623439343536383264223b733a33323a226432653530306362626538383266623662323563663961633635393464363436223b733a33323a223463323334333831326566366564666561393665656630656635643535666365223b733a33323a223030653933316663643035306137613435303939666162643035396634326436223b733a33323a223632373266643163383362343832613130373535336231616334383362663436223b733a33323a223939656533356466313333323463306663613731373939613634653038653665223b733a33323a226566396462663662363535663534613962333534646565623431323836633364223b733a33323a223263653838326630386239303163396664363736326562316466623432623565223b733a33323a223562663336363633373339666439373536376236376266366332666565646636223b733a33323a223232343066386631323434623834623263383735333932653538353761353937223b733a33323a223131343531303933346361363839653063373239303964353061353734363139223b733a33323a223961636332616134643733316463343936396639313435663662353239323935223b733a33323a223839346539623237613132613534396135366636303366376136343132333766223b733a33323a226537363539326161393139313863656635386335363338643731663731363631223b733a33323a226436656462396137396435653236663938643563366563343862383531333566223b733a33323a223835346335323866653163376430363134643430646166663365326463336638223b733a33323a226462393032323766656632323466646535626264383365333665636564633165223b733a33323a223632363732373162376634656430326661393834306630303138303534313638223b733a33323a223733393736616166636266343135396631373563636166306138386465343165223b733a33323a223466363437336365653034333366353933653134666566306164313138613464223b733a33323a226130323136393566663636363531306233303038333761643236323464353739223b733a33323a223734343331383166653934633262663461336634353932613332623433666230223b733a33323a226430333030636263363061613632326237633638393430313730386238643835223b733a33323a223135393437363232656138396233623733646234313031373932306137666433223b733a33323a226465376132346166323431626431323937653238396663376632333330616565223b733a33323a223564656339666533396630363739343132393064343666626530396435353564223b733a33323a223435343265373937613962663235653961376637303737303265306639363535223b733a33323a223262303730613265333564373033386264393366313364613338656335336630223b733a33323a223231623839636665356239663235333063323765656637663463323836383635223b733a33323a226531336631386463363839336131623961633461383961666432396339633931223b733a33323a226134333437303539636230373263333039326634366138616630323535653138223b733a33323a223831313438353664326132393636646266383136666339383962653534636366223b733a33323a223433393335636662343939353163663962366636666133616639343639396236223b733a33323a226439316336306361613534386464653565643166376665363837633437366536223b733a33323a223566346434303364313864623065343932373230313531333732613537656130223b733a33323a226238613961363530383231336639383336333532633330333566383836353562223b733a33323a226262626563363235383564666463653034656263396433616133633030346562223b733a33323a226134656632366536643165333264653630376131353539336131336165363636223b733a33323a226333666564633338623164383437633430373664616466366162316265343236223b733a33323a223230393938613335346538663665623530663337313039316464373665613639223b733a33323a223666353163363939363864383463333064386532306561333837643634656566223b733a33323a226365316430613433636132313837313738633737666366363066643239386635223b733a33323a223562623132333063363934623331626335633631626665653062386265313261223b733a33323a226664623266613034323132616566626437646464363332366136636335316238223b733a33323a223630346630306363373638363663343031656164346330653566343936376537223b733a33323a226631333364643963306362303433623531633133616164353364303432663464223b733a33323a223634633239633932383033353933343965376530313865343733363738616334223b733a33323a223638333766613636313532623830353664636465653561656461366362356532223b733a33323a226437356566633161616264616566383732666432383261336433363533303437223b733a33323a223866643765396433386233636661393466656637643134346533323335393566223b733a33323a223832616631323536376566356265353338646162653864616663666565616565223b733a33323a226166636233656132373865646339396233663031643130643865643462353038223b733a33323a226664663665323638613434663962336461313162653137633963326563383338223b733a33323a226262333663653338633564343530343938653665356438303236316361306133223b733a33323a226630363139386461613139363339653034613832356536666139633830323834223b733a33323a223339323835613166373663316461336539653264363735643364393462363566223b733a33323a223464386664393835613064633361636139383533636661306332663262303564223b733a33323a223261343763323439313533623463643362653831666266393431636639396332223b733a33323a223134313739353662353066353865616563363831393434366263666564313566223b733a33323a223730393437383938326330393330343831323137653238316532346161303236223b733a33323a223933356232376237393936616130326663306331626135666665333132376265223b733a33323a223934353339396434326361373163326139633665393732653565613235383837223b733a33323a226537323132613261636566386435663734306565336534653164386333366366223b733a33323a223836626636353663323233323334636666616637346435633834626236386430223b733a33323a226231646563636565616130303638663039363033373462616363666366333330223b733a33323a223537383033653231616666306464396436376333313734336465376636653564223b733a33323a226435316135383764323638646166376263626665666362373836396262323866223b733a33323a226633386565336334363936353738306661663933623163656533303631383637223b733a33323a226562663237313632663433313035616661356165653936316636396432306532223b733a33323a223662306333343563623963616533376265393365663362323730343436316462223b733a33323a223738633132366465623631313065356233303066353132393132636366643866223b733a33323a223663653265386131343034363134643138616433323434393464663739393039223b733a33323a226535303036666538323566656561336131303636656563343039383761646565223b733a33323a223165653831386461366362333632326335363865386538343163393761346537223b733a33323a226266303261363234333633376162656133386133376131326161303966623637223b733a33323a226161356465646334303863653730613363663334393565316337623938646465223b733a33323a226135323333643436656362326337386365303863393234363963663239636138223b733a33323a226565353134326532346266333631656436656538306565373665343062313764223b733a33323a226434653634323936616436616462623533303363333131356631353664373730223b733a33323a226434383263373666613136383737323432376465376465366562326265356165223b733a33323a223965653833363061343534306663306637333739646237396665303537623435223b733a33323a223364343734383066363237643730653833353861623433646262646230386334223b733a33323a223030646632396161363231626338643765303335336331643631343731356262223b733a33323a223338316262383963303734623561326134323035613761623562373963393536223b733a33323a226336353264343666353337343236393564376536613862396563666335353638223b733a33323a226231623532333232346133326530306466653366313133623537626261316261223b733a33323a223933393662303833653664666330656530313138303935653662396462303361223b733a33323a223339356666613732343565306633346139613732336365646666373131646337223b733a33323a226630336563653434653363623261336333306261383837363835373134303665223b733a33323a226163383362303438656533646564376330643731323232656534326562623436223b733a33323a223466306130636536333238613236386664623536666135613863613362383062223b733a33323a223430316463663030656264356336313533303030383037306135613536616438223b733a33323a226364643937626335366139663732653438636437373835653361353662353939223b733a33323a223331313832316637396164663835333039306463333462326664343862643836223b733a33323a226563353866333436643134346335386139323239366239373630376464306666223b733a33323a223836613365656562333237353734626133316535343432303837623765343638223b733a33323a223937346333653139323033666537616230363266623636393539366262353463223b733a33323a226334656634653562633937313838323839626561663065633534613831376139223b733a33323a223634306663383233343234366664303266336166373935346634666634393737223b733a33323a223364666533393665303061626337646465633565616431326264393862303764223b733a33323a223131336365623731333439396537303631393735326633626661613037653630223b733a33323a223164663765303633616666633039373939373661376430366334613032306137223b733a33323a226165393161356462666335303765613862353364623464636665306330636164223b733a33323a226266356537363131393061346134616531346230303432353731333531356234223b733a33323a223765323238326231316433343430363365636236616665613538306339366437223b733a33323a223036393338633461316633626565633466396533363939363164373331656461223b733a33323a223764623734646461336638396165613839653732363235386135366336393133223b733a33323a223335336365643238313136613431323031653063306565333338316635306436223b733a33323a223061616433316338333161353766613939303836386465346130363031363139223b733a33323a223336363839346565633833353336653064663832303365316262346333303462223b733a33323a223433373030663839373335386531643939633565386537316239616363303463223b733a33323a223138663237326137366634653538663535616363383635316664616632393830223b733a33323a223063636633343561303732316638356339643565613332343662623830373865223b733a33323a226231333532396233326563663565336638653538616561643065643464313939223b733a33323a223435373535646364663432363465666632653665353432623464363730653032223b733a33323a223235383465393634336566646561323765306238343735303562376464333533223b733a33323a223338373866313466306265633934353535343365333261383633346632333761223b733a33323a223633636461633032396661623562643331663939663334653761383464316131223b733a33323a223730623531643961376164386438356135316132646563383664666532363734223b733a33323a223664666662303436613762616132306166303763323334643363623434626465223b733a33323a223434613437653963376138633239393463303638626137363266373432363563223b733a33323a223338373337336661383065616164343231656631363031663434353536643731223b733a33323a223238303864306165626630383036373161323232623135653037623136343134223b733a33323a226164323134396633303537313234323731363362373236343330396236353463223b733a33323a226439306530613763383166616439366438663765386532626531343839616433223b733a33323a223433623466346434303965303030373338373665623137636330323037643238223b733a33323a226261663638613664393265613235663539323761323832306333313037366566223b733a33323a223636653831393530663031376562346166303064323833333931626237353334223b733a33323a223364396262666163313834376238653836366465393236656139366431613431223b733a33323a223438343439653333323537366566366334653036343531366261626238646263223b733a33323a223265353239646264303065356438313933373635303534346161613566373634223b733a33323a223239303833356564666630383862656165353664653934643935613132353132223b733a33323a223432303865396231356234653137636335646664303862356238333565356664223b733a33323a223636656263393730613562633130643537376636306266356564396133653634223b733a33323a223736383431663561356638616637633738343634303835643133326339613232223b733a33323a226336643738663438656266323433313236653430613139666164366131393931223b733a33323a226639393261636464326534393133666534666566383834363466316663323334223b733a33323a226335363164663364333262333236653931303231333461363063363236643361223b733a33323a223537356335323434353037663038363433663931633634343935626532303662223b733a33323a223036326262356330666337313634653637616563333964333731316232323738223b733a33323a223635373065656133663038343531663232633339626138366137343737376433223b733a33323a226231633930613434646132626365326161636433386638313639393239343438223b733a33323a223033343039383831633063306539333732636235663866636565353065353332223b733a33323a223932653136666565663430663765363435363161366638383234633833653739223b733a33323a223438646134636162376333303332313462333464373466656135633563623062223b733a33323a226631643962313539356336393839323539643566373133343831353938643638223b733a33323a226366363334343433303732646663313737396338636134343361363031343332223b733a33323a223966306565333134363137393761373938656134373363326234383462633866223b733a33323a223930366538386662383039373037666139656264396133323030333161616333223b733a33323a226630386238373064383365313064313634656366333232393532626232643363223b733a33323a226539343565313532636665643736653562656336663036343665656362353865223b733a33323a223266363433663633303430366337643335626439313961623939323637313866223b733a33323a226332666139623732333536666330633765303837613637303137653734343330223b733a33323a226533343430323064336634393636353165363264646434333433373731353430223b733a33323a223639646132656234333039306662663162383735323263353465636432316161223b733a33323a223763613230636432656138333962626561623734616238363334356462613934223b733a33323a223361336231633764633636663233383439666232386337303635666161316163223b733a33323a223239303738613263633936613564383962356165396239343535653932396131223b733a33323a223632386632353431333866626636393536613339316331386333616338383936223b733a33323a223463653035663737646563666265343931303938333633303665303565343439223b733a33323a223439656631366433626464366137626434303934376366323536613131373833223b733a33323a226134313338383732373365643264623934313832363133626563663433323263223b733a33323a223636306534663365383130663333363834306661643635376166303162633533223b733a33323a226239333137356339353466306236303730636466626465323864663431383061223b733a33323a223837363634613638616233656366353562666234396436396436343062386132223b733a33323a223930613037343263393830313937343336333736383063646131636435613939223b733a33323a226665353062666666316462313430653430623661373239316335383663313231223b733a33323a226666636364653835356332383830313864356336386238623866396662633662223b733a33323a223430623566373766666434633236343464326339666566633964656265313935223b733a33323a223738373837663134393334623137353731383733633131633435333635303965223b733a33323a223732323637633865333366306461623735366164393532393139616330363339223b733a33323a223939303031653132346133633632386334306666636562663232316663653566223b733a33323a223433343831323163353562613935346561336666376466366662336664376464223b733a33323a223566363035333935666430643531363838616438316264333062663661353330223b733a33323a223365386463633733613866386638316639626563383331623931666534616162223b733a33323a226138643030623732303363363632346330363539616530623964646536653237223b733a33323a223039633635346465613130646562323038613034346466623039666563373264223b733a33323a226235313530346433393330353566303365386564306337366632383939653839223b733a33323a223861653338343030376131616536396361643130396532303961316431616665223b733a33323a223263633930633537343361323534386432353139373162306663383035393963223b733a33323a223533316334646565616363666464363033646230633033616461666132366464223b733a33323a226230333938333535613938656661313038386338373734656435633763383237223b733a33323a226262623364653963653138626638373961613462313935633465633335616165223b733a33323a226138366461383663316630663663393338353765643933373136356435613837223b733a33323a223435316162626461633665636565373136303630303838383435666138356638223b733a33323a226637336337396134323338656465356535313663663035646165386438336534223b733a33323a223464386430396362653766383633633531363233396462366263363935656263223b733a33323a223731343239316263643861613234633839393966626565643666373730396331223b733a33323a226431386163326436656334323732613031313938666463623137663035363564223b733a33323a223066663835626335336265636361326434643438653564316133323431313037223b733a33323a223262326134353163653861646230373431383861663365316665333230333436223b733a33323a226366636164616535306239623364363965646266356566303638656263656536223b733a33323a223066616634303663323261666464376537396132666462613861613537653061223b733a33323a223636316136636362653936303737343235663862323530346566616131656261223b733a33323a226537366365323266326632323664303162336336613934653738383334663936223b733a33323a223439396161613161353439643631616262636635653866636337653361346535223b733a33323a223331656130663263353037336365636331633135373765343066633962386435223b733a33323a223134613838613638313965383832366261343634363530656539373366303065223b733a33323a226237333534343763353864353839376563633338626335616662313066653766223b733a33323a223162396662316432333533636464366630353630346335396564396161396138223b733a33323a226430306265626631623565313531653633323338663330356365303439333836223b733a33323a226636633538626638666131303666393031316237323064306335636434386330223b733a33323a223834313666633136373536316565393964663865633634633130356266633532223b733a33323a223532636339346330373134333565336235653762303736326232386166376534223b733a33323a223131336662303663303831613631316439623532326261636662623862366665223b733a33323a226664383439316238326161376131656434366337313731323435326139396638223b733a33323a223066333736353530343433653365373936306264313538343036663262346662223b733a33323a226165623934313938343235626265396262363739646638623466613363306562223b733a33323a226235653336336436653035326539303131393766386332326237633466666436223b733a33323a226132666533343234643865313563366438326239623937616532353833333430223b733a33323a223237643331626339663965623333663134363334643039343030303331326139223b733a33323a226263393937396630323230313362636662313362643432636336383838343331223b733a33323a223462383237623262633066333130653135383861376539613437653763316133223b733a33323a223535306536623432353364376630333765663830373639656436366639383631223b733a33323a223031333964666663333635613636653036623633623630356563323838623834223b733a33323a226466626666643138656134373634366130326438643964383635303930336239223b733a33323a223232643734363532636461643434306534613237626531353566386334336462223b733a33323a223865633133386334643832363134383763363335313535636233646239333230223b733a33323a223164333165303034353033343239343935326537366538336532353930643137223b733a33323a223764346239373635313666613665333665643866383664633737346536626330223b733a33323a223435366665636530643736633264306664616462636165353533336161393361223b733a33323a223064306433663666653066313437633162663437616361343130343034376339223b7d733a343a2268617368223b733a36353a2230643064336636666530663134376331626634376163613431303430343763392d3435366665636530643736633264306664616462636165353533336161393361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37373a7b733a33323a223636366332633261343339363564613430376336316333373332613838626161223b733a33323a226163373339353832343336313162356465376361323134373964363130633730223b733a33323a226332323438646262613133646633613535353231613061663561623036303730223b733a33323a223632346338383265663932333561656638386530636663343662616361663739223b733a33323a226432646565326564623635326264633665346434336131343865623065323233223b733a33323a226131306632383533366136363437376132353933383063336535393039356133223b733a33323a226337393839636661353237653531306534653961623763383937313834316332223b733a33323a223134643638396135316532323665393066646564663161616364653866323765223b733a33323a226563353031343931376633316433346131623938613630313963356634326238223b733a33323a223839636563383639646337623562346461306161656332386432313166383461223b733a33323a223434623131306436626464323031356138323931386536343563336134396334223b733a33323a223463633334666439313838313838343832636565356365333735323630626430223b733a33323a223166333430666561313436636465373361663166663862336130616564643832223b733a33323a226662336239626337613330643935343666383535323761363433386465383531223b733a33323a223963333366396433376232623733373962313461353438333366616363663932223b733a33323a223061343333643532623938363063636231386266303465646163316334363233223b733a33323a223331343139383439613933396466636133663430333663653462623461373033223b733a33323a223231396630643764393565346663323737643739636432313764313030643366223b733a33323a223738663463396134653563656230313633343861393562326537356164323533223b733a33323a226134306134346164313437626331343839633964653934616133326666393263223b733a33323a226565396462356562346635303762373334383634393634336234393835373831223b733a33323a223562666265353830646232346239346362633133333835323663643564653035223b733a33323a226333663732666562626166636461643330346465376265646233333239386133223b733a33323a223932613965313438383534396462386135353434323566653962633733343135223b733a33323a223566373932656461386533656236653564356234303637306162373235366465223b733a33323a223139633933336330643630356539316230323261636231623565326637336232223b733a33323a226365316466363338613763643666373062336564303764396564646238333133223b733a33323a223761326461343530373332326463396231306438643265643635613463626636223b733a33323a223862306263653866643636326366383961366531333761646338613361373964223b733a33323a223665666232373162663837323734323861366665363439303037386433386339223b733a33323a223061656438343231316461396266613230613033376435633564633036343939223b733a33323a226364333864306634633131643334643637616539633831623338613461333964223b733a33323a223035653762303233643764323663366361613063623164396432333433353761223b733a33323a223636623864376364623232373962386562363265306539386365353431313232223b733a33323a226231323066313362653135393639636566396630373138643331363638656436223b733a33323a226161346236396263353130383961386236613739656430323661353935653831223b733a33323a226638366263386162633130666431633231306332363334356636353933356133223b733a33323a226262623538363339653666333438613335633461623537333866313836343663223b733a33323a223839626638353639303064316664616530646535333537353330376638386432223b733a33323a223365636161616531393331643537303466343164643237643336303131383035223b733a33323a226265303564656566353262326665303534666565343538323265363339353466223b733a33323a223339303938353232346564346663373166623135343231393965626137313162223b733a33323a226632613838613832653461376633316634653163653235313165643963636336223b733a33323a223231363861386664396136646233643764373633343563323465303035616331223b733a33323a226536666333346237663034393566323565343462643466386364663338326535223b733a33323a223633363238636639333766353565633863326161666566333861633931636465223b733a33323a223565653238623766343861383135616335316161323736386366653735633963223b733a33323a223766323535383865616434666461343236626238373030646361306430333862223b733a33323a223734333735643738653365633365663533393239653334306635363866363231223b733a33323a223138613965616164343933636533376666663065633061303465343838333737223b733a33323a223131363430323065376166366232336366376630633734613638353730666636223b733a33323a223937613930333666336365356164303039306431333665306231616564356436223b733a33323a226131613137383265393238616630663034366331663566386564643239363639223b733a33323a226466376531366566323835303035666431656665363237613365356136353963223b733a33323a223439656336643763353430636262326463633031393361303162623639316131223b733a33323a226462343037306139396561653037653134303833303430336266626133343333223b733a33323a223835306138313937653139393136616430396362613965313534376635396537223b733a33323a226636326630343933353736393137336666333434393063636361343532336336223b733a33323a223963383039333637353763613830343863343339633663346632376263643364223b733a33323a226136653537396230666363316563613737373864366666353039663161623362223b733a33323a226563393531636637626235333561393435376138306464326563666263653030223b733a33323a226536353030353566363233326432626465383632326365386436376533303761223b733a33323a226635363535623230663266323866366637633065613263656162313065313535223b733a33323a226339646435373232376464386139656335613461626635396331333663376463223b733a33323a223661313733386232623066373933373732393262626437343937336130656261223b733a33323a223339306633623439346564383764613138353338636133653534653333306564223b733a33323a223335386432373266393234383136373832356537633434636261346661346234223b733a33323a223438383563333930316638633936333666643063313832613030643037316537223b733a33323a223761363963393566336336633064663134353234356165303533616238376566223b733a33323a223533656362353964346561353763353130643265373363653438366462626230223b733a33323a223961303061353730363437326361393438316338656438356136316431613432223b733a33323a223238613838306632383636646262616364316461383138383739313138356235223b733a33323a226437393138613163356335636531626264333835356236646365303761383230223b733a33323a223030343438656266376136363135663832663064643435663862323634313064223b733a33323a226165373638623831363338663238383537663563376130363762376335643333223b733a33323a223764626462623837373366386230373461623032616639383264306131623237223b733a33323a226234663936303234376233643239623331646363353634326132333038353134223b733a33323a223834323033633066646262313865383830396339653735303562653133306130223b733a33323a226133633734636665633563383434323239623836396137373166306664633038223b733a33323a226561623761643437626435386132306333316539616535313137323565653333223b733a33323a223533636231663838353336616136396131313961336534313033633766643135223b733a33323a226439623363653239663638313931313261626439356435346534363562656130223b733a33323a226261306564663962313263653937626463333165376430636532343762653430223b733a33323a226535303935376633636135646632663932333461303933373862393337656338223b733a33323a226230356262393966613432373561616361316665346166316237353830643834223b733a33323a223032356239376366633533636532393062623433333362636633303064636535223b733a33323a226132303932643664326330323332656430333634373262333162643765393832223b733a33323a223364626231386237623530363663303962383130316238653731333962396263223b733a33323a223537336234636366336535633730653538623963306431633538346661393038223b733a33323a223862363031636633623332323634656637666531303262623935666439366663223b733a33323a226135336635303736623037633261313237303964323835323466373236336262223b733a33323a226635356634303665376537366261306532393665613461363665663538303031223b733a33323a223238333631663331333136623930386336373462356435353737633930613162223b733a33323a223236356437623037313439386334636333623461393736633932356231326232223b733a33323a223466343734613331363266643232343231336134336532636133313736306533223b733a33323a223262613738376139353762666230303934336235356365383636323437343365223b733a33323a223135393463346231636533326239313831616131663164656234396137313039223b733a33323a223465666539653633393433336361373033313864646361653539646639366565223b733a33323a223164343063323236363861303331363564393962303064623364356639636266223b733a33323a226531363831366333653933313166613132633961636366666635383538643930223b733a33323a223865396166346637306237363963636437333638386664666132336135613634223b733a33323a226161653963393564306336323130323564386330333730303462353033383664223b733a33323a223032386635316439396263646564613931666137303365666337383732333838223b733a33323a223865396665636531613134353135303136316538363061663534346431376136223b733a33323a223139373932343065373564653762616163353637343061356233653938383530223b733a33323a226535613238623937393661633535373664326231383033326364353234636137223b733a33323a223538373963333130373562663766656337333437326539373932333338643835223b733a33323a226639666431326664616337373131633233373231386637303130663166386635223b733a33323a223931376562636138303161383261323931373932383662656461383833323633223b733a33323a226464303537356437353935363930623335323031333465383132373761306530223b733a33323a223366373039353762333431333838306532363033346535636232313932613835223b733a33323a223461663532646236303137386333333236396135333064306439623437333565223b733a33323a223961656531383466343433663436313365373966363435666466623466373734223b733a33323a226632646533613062306630323538623765323837343332656165386231666634223b733a33323a223534366139633965336330313738623465333162613335333836303739356630223b733a33323a223332383266303734323530363564633332366536613732613533643537313439223b733a33323a223030303136383761396162623365633463333833666331616235653262336433223b733a33323a223736636431613762653131333566666565623630373764303361336436623535223b733a33323a226636663738306530323939626131313866306665616664346636326232303832223b733a33323a223031353566333536353333316464376262353333333535633164653034663335223b733a33323a223465333563393039303265376462393931313338663433613833663838353230223b733a33323a223439656561346238373361363463646634333361393933656435613062623036223b733a33323a226535663365333131343062393334633735313662316364626133323338656666223b733a33323a223034613131646236353364333636336539623530636338613132613535376631223b733a33323a223437376162363432356538353139633361316232373161643835653233386634223b733a33323a226433613962353965343834643535646638613230653437393962316161363665223b733a33323a223537343034346137633430316263363438623037643735383566613765326537223b733a33323a226464396130633135333438636262356432316562356634313633346632633238223b733a33323a223436386262356464383037393738613765653563343731666634326635313636223b733a33323a223137393364336466346561616130353165306432356632663565613438383536223b733a33323a223230663038656165363566393661346434346134363363396331653338336637223b733a33323a226663343264393639663463363232633935623464653238303565623731623331223b733a33323a226364623735313964353739396437363033653564636336633431643935353937223b733a33323a223332383031643863333235663164306264636166373636316564663937323730223b733a33323a226364396332666462386636346530343063343963393966303232643861353461223b733a33323a223764376239376432366562663438643137323135303365383630333731646435223b733a33323a226662363264363939323637316363343662636339613665633238336433623963223b733a33323a223434343534623138316334356631613064613338366339323561656438316164223b733a33323a223438363533313337353466386161313564333432326530393337383635356130223b733a33323a223665343939386264336438376366663063306365383338613135656664643965223b733a33323a223062306237373561393962663464323231396237613064653066636261386466223b733a33323a223533613936363261663461326334663539343264613862306662363637383436223b733a33323a223261323639363765663937393563653630323664343633326664323439383336223b733a33323a223338366466656661666464623539633361393230356465633339643038633030223b733a33323a223466626563393137613731383362336166643665386133326366616264646365223b733a33323a226138666266373034666130613532316662303732626263623730313835353231223b733a33323a223436393531306530313764303631636635653730666432366163623730663861223b733a33323a223866633435643538376537353466653733666266393230353365613565373339223b733a33323a223231373039356431633138326634633531653630333439353062393364313266223b733a33323a226133366261626138313239616633376134396237343763613865363038653331223b733a33323a226562643064646539343836316232393666333939313730353638363266353130223b733a33323a223736313661336437393565373736396638363533653162386261613265653866223b733a33323a226631656263376432336563656534313834623730366464613039613733383337223b733a33323a223161336632326334313063376465343966373838316533313138636263343133223b7d733a343a2268617368223b733a36353a2231613366323263343130633764653439663738383165333131386362633431332d6631656263376432336563656534313834623730366464613039613733383337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226365643036643261383161633331343238616639643665646162313866313036223b733a33323a223662643964656637653764306635326364623335303739383237616561623637223b733a33323a223563383135316166303036346164653466333263346231376634616661636339223b733a33323a226331356436323332623135376139313730396639653333346334636338353936223b733a33323a223764343964343731353961356231653166636239303539333364366534383061223b733a33323a223632396366656538376362353536303535623932343034366635623238303061223b733a33323a226333646464386361396237656566636634303664633264323861636331383263223b733a33323a226536363766383432616131323061373532356230613930653065353535656663223b733a33323a223433383466336234663362373935313337353863326635313035306161303037223b733a33323a223338313266316133386362373936363034663932643538336133366661363434223b733a33323a226236323932656161303863363131633765333339646564626435656265353438223b733a33323a223432343565353861666335393062393530356665323662663562646464353162223b7d733a343a2268617368223b733a36353a2234323435653538616663353930623935303566653236626635626464643531622d6236323932656161303863363131633765333339646564626435656265353438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1721945100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"pvaldestamayo@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('disable_jsonld_reverse', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"webp\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('favicon', '\"\"'),
('installation_title', '\"Repositorio Agropecuaria\"'),
('locale', '\"es\"'),
('media_alt_text_property', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/webp\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"none\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"America\\/Asuncion\"'),
('use_htmlpurifier', '\"1\"'),
('value_languages', '[]'),
('version', '\"4.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site`
--

INSERT INTO `site` (`id`, `thumbnail_id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(1, 1, 2, 1, 'carrera-agropecuaria', 'thanksroy', 'Carrera Agropecuaria', NULL, '[{\"type\":\"browseItemSets\",\"data\":{\"label\":\"\",\"query\":\"\"},\"links\":[]}]', '[]', '2024-07-25 13:34:41', '2024-07-25 23:10:08', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_block_attachment`
--

DROP TABLE IF EXISTS `site_block_attachment`;
CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_block_attachment`
--

INSERT INTO `site_block_attachment` (`id`, `block_id`, `item_id`, `media_id`, `caption`, `position`) VALUES
(1, 6, 10, NULL, '', 1),
(2, 6, 8, NULL, '', 2),
(7, 1, 10, NULL, '', 1),
(8, 1, 8, NULL, '', 2),
(9, 1, 6, NULL, '', 3),
(10, 6, 6, NULL, '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_item_set`
--

DROP TABLE IF EXISTS `site_item_set`;
CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_item_set`
--

INSERT INTO `site_item_set` (`id`, `site_id`, `item_set_id`, `position`) VALUES
(1, 1, 1, 1),
(4, 1, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_page`
--

DROP TABLE IF EXISTS `site_page`;
CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `layout`, `layout_data`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Bienvenidos y bienvenidas', 1, '', '{\"grid_columns\":\"12\",\"template_name\":\"\",\"grid_column_gap\":\"10\",\"grid_row_gap\":\"10\"}', '2024-07-25 13:34:41', '2024-07-25 15:27:48'),
(2, 1, 'lista-de-recursos', 'Lista de recursos', 1, '', '{\"grid_columns\":\"12\",\"template_name\":\"\",\"grid_column_gap\":\"10\",\"grid_row_gap\":\"10\"}', '2024-07-25 14:05:39', '2024-07-25 21:01:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_page_block`
--

DROP TABLE IF EXISTS `site_page_block`;
CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `layout_data`, `position`) VALUES
(1, 1, 'media', '{\"layout\":\"\",\"media_display\":\"\",\"thumbnail_type\":\"medium\",\"show_title_option\":\"item_title\"}', '{\"grid_column_position\":\"auto\",\"grid_column_span\":\"12\"}', 1),
(5, 2, 'pageTitle', '[]', '{\"grid_column_position\":\"auto\",\"grid_column_span\":\"12\"}', 1),
(6, 2, 'media', '{\"layout\":\"\",\"media_display\":\"thumbnail\",\"thumbnail_type\":\"medium\",\"show_title_option\":\"file_name\"}', '{\"grid_column_position\":\"auto\",\"grid_column_span\":\"12\"}', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_permission`
--

DROP TABLE IF EXISTS `site_permission`;
CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_setting`
--

INSERT INTO `site_setting` (`id`, `site_id`, `value`) VALUES
('attachment_link_type', 1, '\"original\"'),
('browse_attached_items', 1, '\"0\"'),
('browse_body_property_term', 1, '\"\"'),
('browse_defaults_public_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_heading_property_term', 1, '\"\"'),
('disable_jsonld_embed', 1, '\"0\"'),
('exclude_resources_not_in_site', 1, '\"0\"'),
('favicon', 1, '\"\"'),
('filter_locale_values', 1, '\"0\"'),
('item_media_embed', 1, '\"0\"'),
('locale', 1, '\"es\"'),
('property_label_information', 1, '\"none\"'),
('search_resource_names', 1, '[\"site_pages\",\"items\"]'),
('search_restrict_templates', 1, '\"0\"'),
('search_type', 1, '\"sitewide\"'),
('show_attached_pages', 1, '\"1\"'),
('show_locale_label', 1, '\"1\"'),
('show_page_pagination', 1, '\"1\"'),
('show_user_bar', 1, '\"1\"'),
('show_value_annotations', 1, '\"\"'),
('subnav_display', 1, '\"show\"'),
('theme_settings_default', 1, '{\"accent_color\":\"#920b0b\",\"nav_depth\":\"0\",\"logo\":\"1\",\"banner\":\"\",\"banner_height\":\"\",\"banner_height_mobile\":\"\",\"banner_position\":\"center\",\"browse_body_truncation\":\"full\",\"footer\":\"Repositorio Agropecuaria (UNESUM)\",\"resource_page_blocks\":{\"items\":{\"main\":[\"mediaEmbeds\"]},\"item_sets\":{\"main\":[\"linkedResources\",\"values\"]},\"media\":{\"main\":[\"values\"]}}}'),
('theme_settings_thanksroy', 1, '{\"text_color\":\"#444444\",\"background_color\":\"#FFFFFF\",\"link_color\":\"#4f6780\",\"visited_link_color\":\"#888888\",\"active_link_color\":\"#3763a6\",\"button_bg_color\":\"#000000\",\"button_text_color\":\"#FFFFFF\",\"site_title_color\":\"#000000\",\"nav_depth\":\"0\",\"logo\":\"1\",\"header_bg\":\"\",\"banner_height\":\"small\",\"banner_position\":\"center\",\"footer\":\"REPOSITORIO DE AGROPECUARIA (UNESUM)\"}'),
('vocabulary_scope', 1, '\"\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'pvaldestamayo@gmail.com', 'Adminsitrador del repositorio', '2024-07-25 13:32:41', '2024-07-25 13:32:41', '$2y$10$jOwiiEZxe2NQTZSL4lAAUuHdtsUo/MVgg6i6hfV1F7NwW38sBRpOC', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `value`
--

DROP TABLE IF EXISTS `value`;
CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, NULL, 'literal', '', '1.  Criterio Curriculo', NULL, 1),
(4, 4, 1, NULL, NULL, 'literal', '', '2. Criterio Docencia', NULL, 1),
(6, 5, 1, NULL, NULL, 'literal', '', 'Profesores', NULL, 1),
(8, 6, 1, NULL, NULL, 'literal', '', 'Curriculum Pvaldes', NULL, 1),
(9, 8, 1, NULL, NULL, 'literal', '', 'Curriculum raquelita', NULL, 1),
(10, 10, 1, NULL, NULL, 'literal', '', 'Otro recurso', NULL, 1),
(11, 12, 1, NULL, NULL, 'literal', '', 'Indicador 1. Perfil de egreso', NULL, 1),
(12, 13, 1, NULL, NULL, 'literal', '', 'Indicador 2.  Proyecto curricular', NULL, 1),
(13, 14, 1, NULL, NULL, 'literal', '', 'Indicador 3. Malla curricular', NULL, 1),
(14, 15, 1, NULL, NULL, 'literal', '', 'Indicador 4. Syllabus', NULL, 1),
(15, 16, 1, NULL, NULL, 'literal', '', 'Indicador 5.  Metodología y recursos de aprendizaje', NULL, 1),
(16, 17, 1, NULL, NULL, 'literal', '', 'Indicador 6.  Escenarios de prácticas formativas', NULL, 1),
(17, 18, 1, NULL, NULL, 'literal', '', 'Indicador 7.  Tecnologías para el aprendizaje y el conocimiento', NULL, 1),
(18, 1, 1, 12, NULL, 'resource', NULL, NULL, NULL, 1),
(19, 1, 1, 13, NULL, 'resource', NULL, NULL, NULL, 1),
(20, 1, 1, 14, NULL, 'resource', NULL, NULL, NULL, 1),
(21, 1, 1, 15, NULL, 'resource', NULL, NULL, NULL, 1),
(22, 1, 1, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(23, 1, 1, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(24, 1, 1, 18, NULL, 'resource', NULL, NULL, NULL, 1),
(25, 19, 1, NULL, NULL, 'literal', '', '2.1. Subcriterio Personal Académico', NULL, 1),
(26, 20, 1, NULL, NULL, 'literal', '', 'Indicador 8. Afinidad del personal académico', NULL, 1),
(27, 21, 1, NULL, NULL, 'literal', '', 'Indicador 9. Personal académico titular permanente', NULL, 1),
(28, 22, 1, NULL, NULL, 'literal', '', 'Indicador 10. Evaluación integral del desempeño del personal académico', NULL, 1),
(29, 23, 1, NULL, NULL, 'literal', '', '2.2. Subcriterio Estudiantes', NULL, 1),
(30, 24, 1, NULL, NULL, 'literal', '', 'Indicador 11. Sistema de tutorías académicas', NULL, 1),
(31, 25, 1, NULL, NULL, 'literal', '', 'Indicador 12. habilidades blandas', NULL, 1),
(32, 26, 1, NULL, NULL, 'literal', '', 'Indicador 13. Seguimiento al cumplimiento de los resultados de aprendizaje', NULL, 1),
(33, 27, 1, NULL, NULL, 'literal', '', 'Indicador 14. tasa de deserción', NULL, 1),
(34, 28, 1, NULL, NULL, 'literal', '', 'Indicador 15. tasa de titulación de graduados', NULL, 1),
(35, 29, 1, NULL, NULL, 'literal', '', 'Indicador 16. Seguimiento a graduados', NULL, 1),
(36, 30, 1, NULL, NULL, 'literal', '', 'Indicador 17. Éxitos de los graduados', NULL, 1),
(37, 4, 1, 19, NULL, 'resource', NULL, NULL, NULL, 1),
(38, 4, 1, 23, NULL, 'resource', NULL, NULL, NULL, 1),
(39, 19, 1, 20, NULL, 'resource', NULL, NULL, NULL, 1),
(40, 19, 1, 21, NULL, 'resource', NULL, NULL, NULL, 1),
(41, 19, 1, 22, NULL, 'resource', NULL, NULL, NULL, 1),
(42, 23, 1, 25, NULL, 'resource', NULL, NULL, NULL, 1),
(43, 23, 1, 26, NULL, 'resource', NULL, NULL, NULL, 1),
(44, 23, 1, 27, NULL, 'resource', NULL, NULL, NULL, 1),
(45, 23, 1, 28, NULL, 'resource', NULL, NULL, NULL, 1),
(46, 23, 1, 29, NULL, 'resource', NULL, NULL, NULL, 1),
(47, 23, 1, 30, NULL, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `value_annotation`
--

DROP TABLE IF EXISTS `value_annotation`;
CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Indices de la tabla `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Indices de la tabla `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Indices de la tabla `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Indices de la tabla `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Indices de la tabla `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Indices de la tabla `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Indices de la tabla `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Indices de la tabla `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Indices de la tabla `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Indices de la tabla `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Indices de la tabla `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Indices de la tabla `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Indices de la tabla `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Indices de la tabla `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `is_public` (`is_public`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Indices de la tabla `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Indices de la tabla `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Indices de la tabla `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indices de la tabla `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Indices de la tabla `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Indices de la tabla `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT de la tabla `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Filtros para la tabla `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Filtros para la tabla `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Filtros para la tabla `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Filtros para la tabla `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
