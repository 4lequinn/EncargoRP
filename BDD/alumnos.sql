-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2021 a las 21:26:06
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--
CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alumnos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `presente` tinyint(1) DEFAULT NULL,
  `carrera` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `presente`, `carrera`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `usuario`) VALUES
(1, 'Luis', 'Fernandez', 1, 2, '2021-11-26 16:59:17', 1, 1, '2021-11-26 19:59:10', '2021-11-28 23:18:39', 3),
(2, 'Benjamín', 'Silva', 1, 2, '2021-11-26 17:35:46', 1, 1, '2021-11-26 20:34:12', '2021-11-28 23:18:39', 6),
(56, 'oli', 'oli', 0, 2, '2021-11-28 20:18:39', NULL, NULL, '2021-11-28 23:18:39', '2021-11-28 23:18:39', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_ramos__ramos_alumnos`
--

CREATE TABLE `alumnos_ramos__ramos_alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `alumno_id` int(11) DEFAULT NULL,
  `ramo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos_ramos__ramos_alumnos`
--

INSERT INTO `alumnos_ramos__ramos_alumnos` (`id`, `alumno_id`, `ramo_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(4, 7, 2),
(5, 8, 2),
(11, 12, 2),
(14, 20, 2),
(20, 21, 2),
(22, 26, 2),
(25, 28, 2),
(26, 29, 2),
(32, 34, 2),
(38, 40, 2),
(42, 43, 2),
(47, 51, 2),
(53, 56, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `ramo` int(11) DEFAULT NULL,
  `alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `descripcion`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ramo`, `alumno`) VALUES
(2, 'Ingeniería en Informática', '2021-11-26 16:58:45', 1, 1, '2021-11-26 19:53:50', '2021-11-28 23:18:39', NULL, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_ramos__ramos_carreras`
--

CREATE TABLE `carreras_ramos__ramos_carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrera_id` int(11) DEFAULT NULL,
  `ramo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras_ramos__ramos_carreras`
--

INSERT INTO `carreras_ramos__ramos_carreras` (`id`, `carrera_id`, `ramo_id`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(3, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}', 'object', NULL, NULL),
(6, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(7, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'model_def_plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(20, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', '', ''),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', '', ''),
(22, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(23, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', '', ''),
(25, 'model_def_application::alumno.alumno', '{\"uid\":\"application::alumno.alumno\",\"collectionName\":\"alumnos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"alumno\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"apellido\":{\"type\":\"string\"},\"presente\":{\"type\":\"boolean\"},\"carrera\":{\"via\":\"alumno\",\"model\":\"carrera\"},\"ramos\":{\"via\":\"alumnos\",\"collection\":\"ramo\",\"dominant\":true,\"attribute\":\"ramo\",\"column\":\"id\",\"isVirtual\":true},\"usuario\":{\"model\":\"usuario\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(27, 'model_def_application::login.login', '{\"uid\":\"application::login.login\",\"collectionName\":\"logins\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Login\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Usuario\":{\"type\":\"string\"},\"Contrasenia\":{\"type\":\"password\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::application::alumno.alumno', '{\"uid\":\"application::alumno.alumno\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"ramos\":{\"edit\":{\"label\":\"Ramos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Ramos\",\"searchable\":false,\"sortable\":false}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"presente\":{\"edit\":{\"label\":\"Presente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Presente\",\"searchable\":true,\"sortable\":true}},\"usuario\":{\"edit\":{\"label\":\"Usuario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre_usuario\"},\"list\":{\"label\":\"Usuario\",\"searchable\":true,\"sortable\":true}},\"carrera\":{\"edit\":{\"label\":\"Carrera\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Carrera\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"apellido\":{\"edit\":{\"label\":\"Apellido\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Apellido\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"apellido\",\"size\":6}],[{\"name\":\"presente\",\"size\":4}]],\"editRelations\":[\"carrera\",\"ramos\",\"usuario\"],\"list\":[\"id\",\"nombre\",\"apellido\",\"presente\",\"usuario\"]}}', 'object', '', ''),
(30, 'model_def_application::usuario.usuario', '{\"uid\":\"application::usuario.usuario\",\"collectionName\":\"usuarios\",\"kind\":\"collectionType\",\"info\":{\"name\":\"usuario\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre_usuario\":{\"type\":\"string\"},\"tipo_usuario\":{\"via\":\"usuarios\",\"model\":\"tipo-usuario\"},\"activo\":{\"type\":\"boolean\"},\"contrasenia\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::application::usuario.usuario', '{\"uid\":\"application::usuario.usuario\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre_usuario\",\"defaultSortBy\":\"nombre_usuario\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre_usuario\":{\"edit\":{\"label\":\"Nombre_usuario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre_usuario\",\"searchable\":true,\"sortable\":true}},\"contrasenia\":{\"edit\":{\"label\":\"Contrasenia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contrasenia\",\"searchable\":true,\"sortable\":true}},\"tipo_usuario\":{\"edit\":{\"label\":\"Tipo_usuario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Tipo_usuario\",\"searchable\":true,\"sortable\":true}},\"activo\":{\"edit\":{\"label\":\"Activo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Activo\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre_usuario\",\"size\":6},{\"name\":\"contrasenia\",\"size\":6}],[{\"name\":\"activo\",\"size\":4}]],\"editRelations\":[\"tipo_usuario\"],\"list\":[\"id\",\"nombre_usuario\",\"tipo_usuario\",\"activo\",\"contrasenia\"]}}', 'object', '', ''),
(32, 'model_def_application::tipo-usuario.tipo-usuario', '{\"uid\":\"application::tipo-usuario.tipo-usuario\",\"collectionName\":\"tipo_usuarios\",\"kind\":\"collectionType\",\"info\":{\"name\":\"tipo_usuario\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"usuarios\":{\"via\":\"tipo_usuario\",\"collection\":\"usuario\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::application::tipo-usuario.tipo-usuario', '{\"uid\":\"application::tipo-usuario.tipo-usuario\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"usuarios\":{\"edit\":{\"label\":\"Usuarios\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre_usuario\"},\"list\":{\"label\":\"Usuarios\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6}]],\"editRelations\":[\"usuarios\"]}}', 'object', '', ''),
(34, 'model_def_application::docente.docente', '{\"uid\":\"application::docente.docente\",\"collectionName\":\"docentes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"docente\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"apellido\":{\"type\":\"string\"},\"ramos\":{\"via\":\"docentes\",\"collection\":\"ramo\",\"dominant\":true,\"attribute\":\"ramo\",\"column\":\"id\",\"isVirtual\":true},\"usuario\":{\"model\":\"usuario\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::application::docente.docente', '{\"uid\":\"application::docente.docente\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"apellido\":{\"edit\":{\"label\":\"Apellido\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Apellido\",\"searchable\":true,\"sortable\":true}},\"ramos\":{\"edit\":{\"label\":\"Ramos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Ramos\",\"searchable\":false,\"sortable\":false}},\"usuario\":{\"edit\":{\"label\":\"Usuario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre_usuario\"},\"list\":{\"label\":\"Usuario\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"apellido\",\"ramos\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}],[{\"name\":\"apellido\",\"size\":6}]],\"editRelations\":[\"ramos\",\"usuario\"]}}', 'object', '', ''),
(36, 'model_def_application::ramo.ramo', '{\"uid\":\"application::ramo.ramo\",\"collectionName\":\"ramos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"ramo\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"docentes\":{\"via\":\"ramos\",\"collection\":\"docente\",\"attribute\":\"docente\",\"column\":\"id\",\"isVirtual\":true},\"alumnos\":{\"via\":\"ramos\",\"collection\":\"alumno\",\"attribute\":\"alumno\",\"column\":\"id\",\"isVirtual\":true},\"carreras\":{\"collection\":\"carrera\",\"via\":\"ramos\",\"dominant\":true,\"attribute\":\"carrera\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::application::ramo.ramo', '{\"uid\":\"application::ramo.ramo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"docentes\":{\"edit\":{\"label\":\"Docentes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Docentes\",\"searchable\":false,\"sortable\":false}},\"alumnos\":{\"edit\":{\"label\":\"Alumnos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Alumnos\",\"searchable\":false,\"sortable\":false}},\"carreras\":{\"edit\":{\"label\":\"Carreras\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Carreras\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6}]],\"editRelations\":[\"docentes\",\"alumnos\",\"carreras\"]}}', 'object', '', '');
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(38, 'model_def_application::carrera.carrera', '{\"uid\":\"application::carrera.carrera\",\"collectionName\":\"carreras\",\"kind\":\"collectionType\",\"info\":{\"name\":\"carrera\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"alumno\":{\"via\":\"carrera\",\"model\":\"alumno\"},\"ramos\":{\"via\":\"carreras\",\"collection\":\"ramo\",\"attribute\":\"ramo\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::application::carrera.carrera', '{\"uid\":\"application::carrera.carrera\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"alumno\":{\"edit\":{\"label\":\"Alumno\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Alumno\",\"searchable\":true,\"sortable\":true}},\"ramos\":{\"edit\":{\"label\":\"Ramos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descripcion\"},\"list\":{\"label\":\"Ramos\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6}]],\"editRelations\":[\"alumno\",\"ramos\"]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `ramo` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `rut`, `nombre`, `apellido`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ramo`, `usuario`) VALUES
(1, NULL, 'Franscisco', 'Juillet', '2021-11-26 16:58:24', 1, 1, '2021-11-26 19:54:51', '2021-11-26 20:00:43', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes_ramos__ramos_docentes`
--

CREATE TABLE `docentes_ramos__ramos_docentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `docente_id` int(11) DEFAULT NULL,
  `ramo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes_ramos__ramos_docentes`
--

INSERT INTO `docentes_ramos__ramos_docentes` (`id`, `docente_id`, `ramo_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locales`
--

CREATE TABLE `i18n_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i18n_locales`
--

INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English (en)', 'en', NULL, NULL, '2021-11-06 07:34:16', '2021-11-06 07:34:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logins`
--

CREATE TABLE `logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Contrasenia` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logins`
--

INSERT INTO `logins` (`id`, `Usuario`, `Contrasenia`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'yiop', '208135597Luis', '2021-11-10 01:43:52', 1, 1, '2021-11-10 04:43:06', '2021-11-10 04:43:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ramos`
--

CREATE TABLE `ramos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ramos`
--

INSERT INTO `ramos` (`id`, `descripcion`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Programación Aplicaciones Móviles', '2021-11-26 16:58:30', 1, 1, '2021-11-26 19:53:22', '2021-11-26 19:58:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
(1, 'Luis', 'Fernandez', 'yiop', 'lui.fernandezv@duocuc.cl', '$2a$10$6Eh3LGQxbe5.v8TvKONj6OoXar.j5ISX2vtEa2WZo4XFsxc25QvoW', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(2, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(3, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(4, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(5, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(6, 'plugins::upload.read', NULL, '{}', '[\"admin::is-creator\"]', 3, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(7, 'plugins::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', 3, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(8, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(9, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(10, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(15, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(16, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(17, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(18, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(19, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(20, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-11-06 07:34:23', '2021-11-06 07:34:24'),
(21, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(22, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(23, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(24, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(25, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(26, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(27, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(28, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(29, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(30, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(31, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(32, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(33, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(34, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(35, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(36, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(37, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(38, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(39, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(40, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(43, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(44, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(45, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(47, 'admin::users.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(48, 'admin::users.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(49, 'admin::users.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(50, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:24'),
(51, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-11-06 07:34:24', '2021-11-06 07:34:25'),
(52, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-11-06 07:34:25', '2021-11-06 07:34:25'),
(53, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-11-06 07:34:25', '2021-11-06 07:34:25'),
(54, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-11-06 07:34:25', '2021-11-06 07:34:25'),
(293, 'plugins::content-manager.explorer.create', 'application::carrera.carrera', '{\"fields\":[\"descripcion\",\"alumno\",\"ramos\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(294, 'plugins::content-manager.explorer.create', 'application::ramo.ramo', '{\"fields\":[\"descripcion\",\"docentes\",\"alumnos\",\"carreras\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(295, 'plugins::content-manager.explorer.read', 'application::carrera.carrera', '{\"fields\":[\"descripcion\",\"alumno\",\"ramos\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(296, 'plugins::content-manager.explorer.read', 'application::ramo.ramo', '{\"fields\":[\"descripcion\",\"docentes\",\"alumnos\",\"carreras\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(297, 'plugins::content-manager.explorer.update', 'application::carrera.carrera', '{\"fields\":[\"descripcion\",\"alumno\",\"ramos\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(298, 'plugins::content-manager.explorer.update', 'application::ramo.ramo', '{\"fields\":[\"descripcion\",\"docentes\",\"alumnos\",\"carreras\"]}', '[]', 1, '2021-11-26 18:50:13', '2021-11-26 18:50:13'),
(312, 'plugins::content-manager.explorer.create', 'application::alumno.alumno', '{\"fields\":[\"nombre\",\"apellido\",\"presente\",\"carrera\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:50:54', '2021-11-26 18:50:54'),
(313, 'plugins::content-manager.explorer.read', 'application::alumno.alumno', '{\"fields\":[\"nombre\",\"apellido\",\"presente\",\"carrera\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:50:54', '2021-11-26 18:50:54'),
(314, 'plugins::content-manager.explorer.update', 'application::alumno.alumno', '{\"fields\":[\"nombre\",\"apellido\",\"presente\",\"carrera\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:50:54', '2021-11-26 18:50:54'),
(328, 'plugins::content-manager.explorer.create', 'application::docente.docente', '{\"fields\":[\"nombre\",\"apellido\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:51:30', '2021-11-26 18:51:30'),
(329, 'plugins::content-manager.explorer.read', 'application::docente.docente', '{\"fields\":[\"nombre\",\"apellido\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:51:30', '2021-11-26 18:51:30'),
(330, 'plugins::content-manager.explorer.update', 'application::docente.docente', '{\"fields\":[\"nombre\",\"apellido\",\"ramos\",\"usuario\"]}', '[]', 1, '2021-11-26 18:51:30', '2021-11-26 18:51:30'),
(360, 'plugins::content-manager.explorer.create', 'application::tipo-usuario.tipo-usuario', '{\"fields\":[\"descripcion\",\"usuarios\"]}', '[]', 1, '2021-11-26 19:57:36', '2021-11-26 19:57:36'),
(361, 'plugins::content-manager.explorer.read', 'application::tipo-usuario.tipo-usuario', '{\"fields\":[\"descripcion\",\"usuarios\"]}', '[]', 1, '2021-11-26 19:57:36', '2021-11-26 19:57:36'),
(362, 'plugins::content-manager.explorer.update', 'application::tipo-usuario.tipo-usuario', '{\"fields\":[\"descripcion\",\"usuarios\"]}', '[]', 1, '2021-11-26 19:57:36', '2021-11-26 19:57:36'),
(376, 'plugins::content-manager.explorer.create', 'application::usuario.usuario', '{\"fields\":[\"nombre_usuario\",\"contrasenia\",\"tipo_usuario\",\"activo\"]}', '[]', 1, '2021-11-26 19:58:00', '2021-11-26 19:58:00'),
(377, 'plugins::content-manager.explorer.read', 'application::usuario.usuario', '{\"fields\":[\"nombre_usuario\",\"contrasenia\",\"tipo_usuario\",\"activo\"]}', '[]', 1, '2021-11-26 19:58:00', '2021-11-26 19:58:00'),
(378, 'plugins::content-manager.explorer.update', 'application::usuario.usuario', '{\"fields\":[\"nombre_usuario\",\"contrasenia\",\"tipo_usuario\",\"activo\"]}', '[]', 1, '2021-11-26 19:58:00', '2021-11-26 19:58:00'),
(444, 'plugins::content-manager.explorer.delete', 'application::alumno.alumno', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(445, 'plugins::content-manager.explorer.delete', 'application::carrera.carrera', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(446, 'plugins::content-manager.explorer.delete', 'application::docente.docente', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(447, 'plugins::content-manager.explorer.delete', 'application::ramo.ramo', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(448, 'plugins::content-manager.explorer.delete', 'application::tipo-usuario.tipo-usuario', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(449, 'plugins::content-manager.explorer.delete', 'application::usuario.usuario', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(450, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(451, 'plugins::content-manager.explorer.publish', 'application::alumno.alumno', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(452, 'plugins::content-manager.explorer.publish', 'application::carrera.carrera', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(453, 'plugins::content-manager.explorer.publish', 'application::docente.docente', '{}', '[]', 1, '2021-11-28 20:40:51', '2021-11-28 20:40:51'),
(454, 'plugins::content-manager.explorer.publish', 'application::ramo.ramo', '{}', '[]', 1, '2021-11-28 20:40:52', '2021-11-28 20:40:52'),
(455, 'plugins::content-manager.explorer.publish', 'application::tipo-usuario.tipo-usuario', '{}', '[]', 1, '2021-11-28 20:40:52', '2021-11-28 20:40:52'),
(456, 'plugins::content-manager.explorer.publish', 'application::usuario.usuario', '{}', '[]', 1, '2021-11-28 20:40:52', '2021-11-28 20:40:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-11-06 07:34:23', '2021-11-06 07:34:23'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-11-06 07:34:23', '2021-11-06 07:34:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id`, `descripcion`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `activo`) VALUES
(1, 'DOCENTE', '2021-11-26 15:35:52', 1, 1, '2021-11-26 03:47:37', '2021-11-26 18:35:52', NULL),
(2, 'ALUMNO', '2021-11-26 15:35:58', 1, 1, '2021-11-26 03:47:50', '2021-11-26 18:35:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'https://lh3.googleusercontent.com/proxy/-ZUDUowzzWNvE0TN0dfEfnITYYIO9AdckVdfHzJx5SdutKx-_YWOUSvlyp0Wma7APU85aVSwZBg46JjK5Dub9oiegtW3BhU3rAJo', '', '', 512, 288, '{\"thumbnail\":{\"name\":\"thumbnail_https://lh3.googleusercontent.com/proxy/-ZUDUowzzWNvE0TN0dfEfnITYYIO9AdckVdfHzJx5SdutKx-_YWOUSvlyp0Wma7APU85aVSwZBg46JjK5Dub9oiegtW3BhU3rAJo\",\"hash\":\"thumbnail_ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586\",\"ext\":\"\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":138,\"size\":6.32,\"path\":null,\"url\":\"/uploads/thumbnail_ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586\"},\"small\":{\"name\":\"small_https://lh3.googleusercontent.com/proxy/-ZUDUowzzWNvE0TN0dfEfnITYYIO9AdckVdfHzJx5SdutKx-_YWOUSvlyp0Wma7APU85aVSwZBg46JjK5Dub9oiegtW3BhU3rAJo\",\"hash\":\"small_ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586\",\"ext\":\"\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":281,\"size\":17.3,\"path\":null,\"url\":\"/uploads/small_ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586\"}}', 'ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586', '', 'image/jpeg', '17.04', '/uploads/ZUD_Uowzz_W_Nv_E0_TN_0df_Efn_ITYYIO_9_Adck_Vdf_Hz_Jx5_Sdut_Kx_YWOU_Svlyp0_Wma7_APU_85a_V_Sw_Z_Bg46_Jj_K5_Dub9oiegt_W3_Bh_U3r_A_Jo_3bca2ba586', NULL, 'local', NULL, 1, 1, '2021-11-06 08:16:16', '2021-11-06 08:16:16'),
(2, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSEhISERIYGBgYGBgYGhgYGBgYGBwSGBgZGhgYGBkcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQrJCs0NDExNDE0NDE0NDE0NDQ0MTQ0NDQ0NDQ0NDQxNDQxNDQxNDQ0NDQ0NDE1NDQ0NDE0NP/AABEIAKgBLAMBIgACEQEDEQH/', '', '', 300, 168, '{\"thumbnail\":{\"name\":\"thumbnail_data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSEhISERIYGBgYGBgYGhgYGBgYGBwSGBgZGhgYGBkcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQrJCs0NDExNDE0NDE0NDE0NDQ0MTQ0NDQ0NDQ0NDQxNDQxNDQxNDQ0NDQ0NDE1NDQ0NDE0NP/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAQIDBAUGB//EADkQAAEDAgQDBgUCBgIDAQAAAAEAAhEDIQQSMVEFQWETInGBkaEGMrHR8ELBUmJyguHxFJIjc9IV/8QAGgEAAwEBAQEAAAAAAAAAAAAAAAECAwQFBv/EACYRAQEAAgEEAQMFAQAAAAAAAAABAhEDBBIhMVEFQZETIqGx8GH/2gAMAwEAAhEDEQA/APkCSaSoBCEIBJoSQRoQhIwhCEAJJpJgIQhIBCEAIBoTATAQEEKWVGVARQnlRCASE4QmAhCEiCaSEGZSQhAJCaEwSEJpAkIQgBCEICSEITASQhBBJNJACaSaRhBQhAJJNJACaSYQDAUgEmhbMPR3P5t1KAobTOyuZR8/JXiiSYAur24Y7jzj6C/snotsv/GP8Poof8Wbj88V0e1LBA+gAUmUS8Z8sA/qMAHwsJRobcl+HIVTmHZdfEYfLEkCepJjyELP2V9fPkjQc2EQt9bDcuawvbBgoNBCaSASaSaQJNCEwaEkIAKSaEgSEIQAmmAnCSpjaihCcKkkhOEQgaJCcISGkUJoQAkmhAJCaSAEwkpNQF1Ft10cPStPP9lkwzCYA1JgLsUqc2aJAt0J5nw/OaqQqhSw/NxytPM6nwHNaJZEAk+Mn2tHuteBwuao0uGY7aDp4BehpYJxhlCmHv8A4391rRzDG8gPLzVyJteVZwp9Qgsg+Ige9lsHB6oI7R4B/wCzsv8AKNGjrbovYUuGCmAapJeeU/QD88laBTLocWyPWRvtGyfbC7nkMTw+lTZdsvMxnOd5I1IGltyIBgXNhxm4OGlwvlALiBbM4zA8BN+cHkvW47hrLl/6jz5N0ED9RjmbAaBXU8Ox1M0mBoc58WA0kOJO5c0ejylcTleLxlENJDRo5zfQkT7LkYynFwF6ziGBy5Xa580Tz0PvmHouFiWSAdx9x+yizS8fLiFBU6jYJCikEUlJEIBJoQkAiEIQCQhEIBKYCTQr6dOUmuGFyqLGStHZKxjQAhS9DDhknlz4QApAKYarcEwtVwnlVoYmGI20nDVGVGVaMql2YS2r9C1khELX2A39kf8AGPKD+dUbF6fL4ZISyrU+iRqCFWWI2yy4rFMJQrHNUSE2VxsQUmhCJhCXSwrbgacv3P2XquG4cCkXlti7I3q8SSANh+wC87hm2qGPlYX+edjR7u9118fjw3saYdanTZH/ALKkEu8YLB4UyrxulcmPh22Mh5p0XXEZ3WjNzAtcCY1hWnjDMG4jM57/AJSGQSDs5x0v+WK4+H4k1lKnSpvy1HMNao9t3tEFzgCYu1jREaOc4yIls+E8KOKAe1obSFg0XzEa53fqPt0GidzkjKY21Rxb4lrVDFJxYw2L8pcSed406LbwA0tXYztHwCW9oabA43Aythz3CLwWtABlxFx2MYcPg6Je9jnOi2UDu8gBJAGsdSfJcf8A/aw1d3fptLT3Q2o0zMAC5BaSBENFhboo77fKu37IY6s+qaj6Z7lMHM4tIJGR+Z2WbDuP1MgEDWV3MDgcr6FRs5e9Mm/aFr2uk75mwuX/AOOhRxLWhxD2NZlM5oLKgeJFyO9rykdAPY4qswCoyJax7s0bdo5hPk8v/wCqvHLabNMPG+Eg0GMnvMaY3AgR7QvmmJYQcp5THmvseIbmM8wwNP8AUGtJ9z7L5zx3CtbUdFhoD4c/QgeISydHHx3W3j8ZFrX3WQrZjwQ6CLaj949ljKhOfsIQhNAQhCAEIQgBEJBWMapXhjupU2StbWgCyGsyiPVBSelx8fbPPswUkkShrtmAUgkmCqcuM0YClKQIThKtZ/wNKm1INU2pLxiTW/mqtYwqtrVcxqVdGGKxgTdhmOBJEHcQB+eSsYyRppqrGMO3kbe6jbpnHjlNZTbl1MGRynwWV9JekZSkTPj57Qq34VtToeR++/JOZfLDk+nzKbw/DzTmKELq4nBlmvqsL6a0leNzdPnx5asaqVXMMoNyDPgHEifUenRZq9Rz3vINs068tBG9go4d2V0mw5+Gv7LRUhpMiSTNzIi9jadjrp4p7ZZbs2pptgtdExBvMGNCvdfDHG2spvpPAZL2uab5S9wIc2+hOQED+teaweLYGPY8d4z3iO8BBBA2/wAKp9RtOW06hLXjvt70GBYuGh+Z28X0lKzcTL23w+l8RwTMQ1jiA4AyWHQx1GmvJUVuCYV9NzOwySCDD8+pBMF1xdrb9F5PgPxE+iezqS+nvq5g3H8Temu2y+hYJjazG1GODmkSCLiFFmlS23w847BNosaA5zywtDS67iAbZ41AEjwWjD1zTw9R7jOaniCJ1IYXVC47y5rr/wAy9G7hE3i/LxXn3YF7nU6eX5GVGFo+Ul7nNd5RHunhl5GXHcZurcPxQjLTLpf29RhO7sjnSf7ngeQXnviAl72vYbEZ4Oxz6jq0NldviFOjSqFsl7w/O5rRJY4lhBJ0D+42077hcDivdL2h1qdOoRuWznafZ3r5LS108eUuOnjcU7vOAnLMgaxImB6qhNzpJO5n1QQk5Mru7RhCaEJKEKSSAUIhOFJrULxx2i0LVh2Xnb6opUS7T15K8tAsEnbwcNn7r6RJUd0Tr5fv/hKUnRaE5UZSlBbVSiUpQFTn2mCgOUCkShGWfaszndMPO6plMORpn+vl8tDapHNXtxR2Cw5lLOlcYvHqssfVdOnjBOh9ZWpmIYbgx0PLwXDD1YyopuLr4/qGU9+XoKLoNhIMTt4FXuYNRa+hmfGSBP8ApcCjiCNDC6FDiNsrt5kfv6qMsb9nqdP1vHl4y8OqzDte10kT4zI5gjUHrp4LlY3huVoeDLSXN6hzYkO9R6+MdTCVBLXNNgZPO3MekrXRe4MLXw+nzbmEtsQHAwY1O4N7GVEyuLq5+nx58f6rxVSjErTg2AsOZjnnRsGIe0i8/wBPL/a9Bxbg7QC+i4mDDmkXFjdpGo7pmwiRuudhqeSjmY7v9q7ugjMGNptdnyn9NnSf5Vrjlv0+e6jpMuPLVnhHBcBqVZOWILZnlmMA3Nx18TyW/E/CGJaA5lLOModLB+k549mOPhdbOFfFb6LCypRp1W5XBmjXNLtTDgQ4WbYjl5rtUvjWgSQ7BBrQXkNY4MLQ50taMuWAGgCRHzON+Zctea55xZ71jJfw8XWeadN1GpRDXGO+BDwyxgtIuD3Tvrur/h/j1TAVA5vfpuMuZNi3dux5/knq4/4gGLFQNpOm/eJD7lmQuc5x7nda0C9rrzGKpFryxwOYOMtDT3XE/IBzMk2+qqXunlllvG71qvtGG+LcHWYDTrMDiLsccrwdiCszeIMNZrcw74IkHU62g/NrHmvlHEcHVpAMqMyuiCwmXNgWDuQPSZHOEqGHa0NplzQ95Dnk27Okw5nPcRoSAI0N42lTj872q80yx7dPV4/HMpVKgcW1axOVtKmCYIIyh7ohoFpmSdgvIcSqvaM+cFzw7PHNlRjSQBsM0ei1Y3i1KlS7LBtIzg53u+cjNl8swabCIDtyVwXPzGSeqqTSblJNfdABIhTSKpigQkQplKEAoUgxNjFoZSlK1px8dyvhS2mtdDCTc2H1+y20MHlguF9vurKii5fD2+n6Dtndn+GV7YEf6WV5uVrf+91heiHzePSBKRKCoq3HalKjKUpSkm5IApyooQx2kVEpkqJTZcns0JBNNgYQSgpZkBIFOVEFBQNpterGVFQFYClppjncXRw2JLTIMH85c16DC8SDy0ua3ONLEA+QIHkvIsMLXSqrPLHb1ek+oZcV+Z8Pc0Gl8NgCYizWt2IBH6trGeYWTHcNLSK1F3fa6xbcE7OHIkGCLg3FxdZOE8bc2z3EzEO1gDkWmxbvb7L0mDo9qW1GBuR5h4L2kNBd3nN70kakAyQW+BXPq417F5uPnxu/Xx/v4ea4VwYV3Fj2xDoeALtHQFc2tgTSd3bQdZvPReqdg6zJqtLmVGNcZAzNIAkhx0LbG88rbrzOI+IKju8adIncsd/9LpwymUeD13Tfo5eLuX1VVA1i9rmBxIMgyZB3nkunwmn2ONpYrFPY2KjqkPLfnhxY8zazyHf2iFxK3xDiDZrwwbMY1vuQXe650F7pcSb95ziScouSSegJWjzHouPY0Nl/aMc5wc3K17KhLnfM9xYSG3k3IJMW1jzWY96Tcm+5vJnzg+SqJm+6mBYeJ+gQcSAUsqiCrWCRPtedNfBMaVwlCtmDI8Z6qL9Z/JKAgQmxkpsbK6GEwpe5oaLkwPFTbppxcd5LqK8NhXPcGNBJJgAcz4LrUsMKdrZjqTfKI08V0MPhW02ExLjLB6DMQdoMf3TyVVakTORpLRaYhoi2ui58s919L0nRzhndl7/pTILSQQANZ1PIAdJPsVldJlbq1EMaA897UgAkibgHlMH3WSoIaTBjTS0n8HqiOnO+PNc+rqsVRbKqxOWseTz3ygVGUyUircdpFRTJSQyyy0rlMJICTLHJJRKkEk4M542AkUFCbAIQhAMJoThBAJpJoNIFTa9VoCRy6baVfquvw3jDqLgZMSCWSe8JBI6aLzwdAJOvL94+6rNVRcZXXxc+XHdyvUYr4idnL6DRTMyCILgeUWgDpHquM2HDX8/JXMdVJWqnUhPHGY+i5+pz5bvK7W0mS47D68vzorsTTDABzIvOxH2J9VTQqBuu8/b6n1TxNbMRP50WjkQp0M1+SrxDYEbE+4H2C6mBxVJtn6LDxDEMe49m2BuUWTRMLVoZU3HnzVWVPRSuVqybCVWSLyN+l+Sgx5la2OBs4A+KXdprjxzL1dI4VhcR6L23DsCKLAXRLhLiROVuXMGjrqT/AEhcTgOGZ2heNGjMATedx4fZejYXVBJHdaczouSBBjzIaPRYcue/EfQfTOk7cf1MhTcAJDLNknM4DU/KRENBgCJkSs5cGvzVGio/kwz2bWjWWjW2jQYESSbhaH1eypntBlcTMQQ7eQDEC4gnrAm44mM4w2CGNIJ1c50n2A8ys8cbfTs5+Xjw33Xx/NaMcxre8GOaDqXva6527rSdTdcXGY4TY5oEW7ojYDb0WLE4ouMkysb3roxw17eRz/Ud/twn59rqlYnmqXOUMyJWmnDOW5ezKjKCUig7QVFMpIYZ3yihJNDGUJlJEpNZlL4oQgoT2yyx1QgIQE0pgolAQUEcpqICkAgxCj1UnWSaEqqRW47qLxaytLFEhIVXSZJE26nTxPRWB0KKk145ifZNK1joBcfAeKrLkG/TomEwRQ0pwptYT4JBFWNZzKupUh4qTx0gb/ZB6rPYaJtfdReBrMKDXtnVKxWOWm+jicpsYIuCu7Q4+RTyiWunM5zTGaNCY0jYcyTsB5R7gYhX0KsRuNPBRcZfbu4Osz4/V8f77Ohisc55Jc6SZOu6wVK0quq8yb8/rzVTnSrmMjn5efLO22pOeoShJU59mSiVGU0Lwy8pISQk6JSKSZSQjKIoQhDmATQhByhBCYTlGlzKXxUUwElJqacppIBOE2qTWpoINSIVwCrcYQEHjuzso0nqLqhNhYe6i2xU05WpzOqzvlWh/WENqNJg+v3Qq6UQhrVsdQHJIYfcj3PskO1SGLQzCuOojxt7an0WuhT2BEc+fqtLaJAzRlG5sPMnRG2k4/vXNdh8ttep08hz8/RNtFxiNVdXxFNh+bMdmaebjb0lYq3EHOkN7jTybqR1dqfCw6ITbjj6anZac53XB+Rtz/dyb6z0WOti3OsBA9T6n9oVBQAmyuVpEdbqJCsIVaClSpm6mXKNLVW1GRBSXA68fmllFTc1JUKghShJBEE0JJHKaEkIbY5CUkJpK9ooQhNzGhCEAIQhAShMIQg4kCrWoQnCoL1RVfyQhFJWUkIQkKMoQkcMEjQkeBVjcS4fq9QD9QkhClpx9T+Mjwhp9RdZ31HOMucXHckk+6EJHUCm0IQhNX02SpmnGqEK0UZZVTmIQgT2QF1uZTzMf0bm9P8AEoQorowVMMhQeb2EafTr6oQmj7EkhCZIoKEJAkIQhUCcpIQ1j//Z\",\"hash\":\"thumbnail_Z_294c21982d\",\"ext\":\"\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":137,\"size\":4.96,\"path\":null,\"url\":\"/uploads/thumbnail_Z_294c21982d\"}}', 'Z_294c21982d', '', 'image/jpeg', '4.68', '/uploads/Z_294c21982d', NULL, 'local', NULL, 1, 1, '2021-11-06 08:18:28', '2021-11-06 08:18:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'alumnos', 'Foto_Alumno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(5, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(8, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(10, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(14, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(16, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(17, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(18, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(20, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(34, 'content-manager', 'relations', 'find', 1, '', 2, NULL, NULL),
(35, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(37, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(38, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(39, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(40, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(41, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(44, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(45, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(46, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(47, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(48, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(49, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(50, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(52, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(57, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(58, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(59, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(60, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(61, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(62, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(63, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(64, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(65, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(66, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(67, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(68, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(69, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(70, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(71, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(72, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(73, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(74, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(75, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(76, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(77, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(78, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(79, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(80, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(81, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(82, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(83, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
(84, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
(85, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
(86, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
(87, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
(88, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
(89, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
(90, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
(91, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
(92, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
(93, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
(94, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
(95, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(96, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(97, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(98, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(99, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(100, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(101, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(102, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(103, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(104, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(105, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(106, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(107, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(108, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(109, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(110, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(111, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(113, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(114, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(115, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(117, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(119, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(120, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(121, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(123, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(124, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(125, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(130, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(131, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(132, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(133, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(138, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(139, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(143, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(146, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(147, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(148, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(149, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(151, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(152, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(153, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(154, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(155, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(156, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(157, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(158, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(159, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(160, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(161, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(162, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(163, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(164, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(165, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(166, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(167, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(168, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(169, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(170, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(171, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(172, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(197, 'application', 'alumno', 'count', 0, '', 1, NULL, NULL),
(198, 'application', 'alumno', 'count', 1, '', 2, NULL, NULL),
(199, 'application', 'alumno', 'create', 0, '', 1, NULL, NULL),
(200, 'application', 'alumno', 'create', 1, '', 2, NULL, NULL),
(201, 'application', 'alumno', 'delete', 0, '', 1, NULL, NULL),
(202, 'application', 'alumno', 'delete', 1, '', 2, NULL, NULL),
(203, 'application', 'alumno', 'find', 0, '', 1, NULL, NULL),
(204, 'application', 'alumno', 'find', 1, '', 2, NULL, NULL),
(205, 'application', 'alumno', 'findone', 0, '', 1, NULL, NULL),
(206, 'application', 'alumno', 'findone', 1, '', 2, NULL, NULL),
(207, 'application', 'alumno', 'update', 0, '', 1, NULL, NULL),
(208, 'application', 'alumno', 'update', 1, '', 2, NULL, NULL),
(209, 'application', 'usuario', 'count', 0, '', 1, NULL, NULL),
(210, 'application', 'usuario', 'count', 1, '', 2, NULL, NULL),
(211, 'application', 'usuario', 'create', 0, '', 1, NULL, NULL),
(212, 'application', 'usuario', 'create', 1, '', 2, NULL, NULL),
(213, 'application', 'usuario', 'delete', 0, '', 1, NULL, NULL),
(214, 'application', 'usuario', 'delete', 1, '', 2, NULL, NULL),
(215, 'application', 'usuario', 'find', 0, '', 1, NULL, NULL),
(216, 'application', 'usuario', 'find', 1, '', 2, NULL, NULL),
(217, 'application', 'usuario', 'findone', 0, '', 1, NULL, NULL),
(218, 'application', 'usuario', 'findone', 1, '', 2, NULL, NULL),
(219, 'application', 'usuario', 'update', 0, '', 1, NULL, NULL),
(220, 'application', 'usuario', 'update', 1, '', 2, NULL, NULL),
(221, 'application', 'tipo-usuario', 'count', 0, '', 1, NULL, NULL),
(222, 'application', 'tipo-usuario', 'count', 1, '', 2, NULL, NULL),
(223, 'application', 'tipo-usuario', 'create', 0, '', 1, NULL, NULL),
(224, 'application', 'tipo-usuario', 'create', 0, '', 2, NULL, NULL),
(225, 'application', 'tipo-usuario', 'delete', 0, '', 1, NULL, NULL),
(226, 'application', 'tipo-usuario', 'delete', 0, '', 2, NULL, NULL),
(227, 'application', 'tipo-usuario', 'find', 0, '', 1, NULL, NULL),
(228, 'application', 'tipo-usuario', 'find', 1, '', 2, NULL, NULL),
(229, 'application', 'tipo-usuario', 'findone', 0, '', 1, NULL, NULL),
(230, 'application', 'tipo-usuario', 'findone', 1, '', 2, NULL, NULL),
(231, 'application', 'tipo-usuario', 'update', 0, '', 1, NULL, NULL),
(232, 'application', 'tipo-usuario', 'update', 0, '', 2, NULL, NULL),
(233, 'application', 'docente', 'count', 0, '', 1, NULL, NULL),
(234, 'application', 'docente', 'count', 1, '', 2, NULL, NULL),
(235, 'application', 'docente', 'create', 0, '', 1, NULL, NULL),
(236, 'application', 'docente', 'create', 1, '', 2, NULL, NULL),
(237, 'application', 'docente', 'delete', 0, '', 1, NULL, NULL),
(238, 'application', 'docente', 'delete', 1, '', 2, NULL, NULL),
(239, 'application', 'docente', 'find', 0, '', 1, NULL, NULL),
(240, 'application', 'docente', 'find', 1, '', 2, NULL, NULL),
(241, 'application', 'docente', 'findone', 0, '', 1, NULL, NULL),
(242, 'application', 'docente', 'findone', 1, '', 2, NULL, NULL),
(243, 'application', 'docente', 'update', 0, '', 1, NULL, NULL),
(244, 'application', 'docente', 'update', 1, '', 2, NULL, NULL),
(245, 'application', 'ramo', 'count', 0, '', 1, NULL, NULL),
(246, 'application', 'ramo', 'count', 1, '', 2, NULL, NULL),
(247, 'application', 'ramo', 'create', 0, '', 1, NULL, NULL),
(248, 'application', 'ramo', 'create', 0, '', 2, NULL, NULL),
(249, 'application', 'ramo', 'delete', 0, '', 1, NULL, NULL),
(250, 'application', 'ramo', 'delete', 0, '', 2, NULL, NULL),
(251, 'application', 'ramo', 'find', 0, '', 1, NULL, NULL),
(252, 'application', 'ramo', 'find', 1, '', 2, NULL, NULL),
(253, 'application', 'ramo', 'findone', 0, '', 1, NULL, NULL),
(254, 'application', 'ramo', 'findone', 1, '', 2, NULL, NULL),
(255, 'application', 'ramo', 'update', 0, '', 1, NULL, NULL),
(256, 'application', 'ramo', 'update', 0, '', 2, NULL, NULL),
(257, 'application', 'carrera', 'count', 0, '', 1, NULL, NULL),
(258, 'application', 'carrera', 'count', 1, '', 2, NULL, NULL),
(259, 'application', 'carrera', 'create', 0, '', 1, NULL, NULL),
(260, 'application', 'carrera', 'delete', 0, '', 2, NULL, NULL),
(261, 'application', 'carrera', 'find', 1, '', 2, NULL, NULL),
(262, 'application', 'carrera', 'create', 0, '', 2, NULL, NULL),
(263, 'application', 'carrera', 'delete', 0, '', 1, NULL, NULL),
(264, 'application', 'carrera', 'find', 0, '', 1, NULL, NULL),
(265, 'application', 'carrera', 'findone', 0, '', 1, NULL, NULL),
(266, 'application', 'carrera', 'findone', 1, '', 2, NULL, NULL),
(267, 'application', 'carrera', 'update', 0, '', 1, NULL, NULL),
(268, 'application', 'carrera', 'update', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmationToken`, `confirmed`, `blocked`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Luis', 'veroizaluis@gmail.com', 'local', '$2a$10$o1atbbaozu3h0dRP4R6I8eXmhjsE/B0HBZxB4zLq/f9TOWFV33z5W', NULL, NULL, 1, 0, 1, 1, 1, '2021-11-10 04:32:25', '2021-11-10 04:34:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `contrasenia` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `tipo_usuario` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasenia`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `tipo_usuario`, `activo`) VALUES
(2, 'panshoots', 'panshoots', '2021-11-26 00:54:35', NULL, 1, '2021-11-26 03:54:35', '2021-11-26 21:45:34', 1, 1),
(3, 'luisito', 'luisito', '2021-11-26 02:32:56', NULL, 1, '2021-11-26 05:32:56', '2021-11-26 21:45:29', 2, 0),
(6, 'benja', 'benja', '2021-11-26 17:34:43', 1, 1, '2021-11-26 20:34:33', '2021-11-26 21:45:24', 2, 1),
(9, 'prueba', 'prueba', '2021-11-27 01:23:43', NULL, NULL, '2021-11-27 04:23:43', '2021-11-27 04:23:43', 2, 1),
(11, 'wena', '12345', '2021-11-27 21:39:26', NULL, NULL, '2021-11-28 00:39:26', '2021-11-28 00:39:26', 2, 1),
(12, 'mariguana', '12345', '2021-11-27 22:05:12', NULL, NULL, '2021-11-28 01:05:12', '2021-11-28 01:05:12', 2, 1),
(13, 'marid', '12345', '2021-11-27 22:07:06', NULL, NULL, '2021-11-28 01:07:06', '2021-11-28 01:07:06', 2, 1),
(14, 'juan.pe', '12345', '2021-11-27 22:08:17', NULL, NULL, '2021-11-28 01:08:17', '2021-11-28 01:08:17', 2, 1),
(15, 'buenardo.dss', '12345', '2021-11-27 22:09:52', NULL, NULL, '2021-11-28 01:09:52', '2021-11-28 01:09:52', 2, 1),
(16, 'Duk.Khea', '12345', '2021-11-27 22:13:22', NULL, NULL, '2021-11-28 01:13:22', '2021-11-28 01:13:22', 2, 1),
(17, 'wenaloco', '12345', '2021-11-28 01:14:39', NULL, NULL, '2021-11-28 04:14:39', '2021-11-28 04:14:39', 2, 1),
(18, 'juanpa', '12345', '2021-11-28 03:02:56', NULL, NULL, '2021-11-28 06:02:56', '2021-11-28 06:02:56', 2, 1),
(19, 'hola.sa', '12345', '2021-11-28 20:04:09', NULL, NULL, '2021-11-28 23:04:09', '2021-11-28 23:04:09', 2, 1),
(20, 'oli.123', '12345', '2021-11-28 20:18:39', NULL, NULL, '2021-11-28 23:18:39', '2021-11-28 23:18:39', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumnos_ramos__ramos_alumnos`
--
ALTER TABLE `alumnos_ramos__ramos_alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras_ramos__ramos_carreras`
--
ALTER TABLE `carreras_ramos__ramos_carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes_ramos__ramos_docentes`
--
ALTER TABLE `docentes_ramos__ramos_docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i18n_locales`
--
ALTER TABLE `i18n_locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i18n_locales_code_unique` (`code`);

--
-- Indices de la tabla `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ramos`
--
ALTER TABLE `ramos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indices de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indices de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indices de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `alumnos_ramos__ramos_alumnos`
--
ALTER TABLE `alumnos_ramos__ramos_alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `carreras_ramos__ramos_carreras`
--
ALTER TABLE `carreras_ramos__ramos_carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docentes_ramos__ramos_docentes`
--
ALTER TABLE `docentes_ramos__ramos_docentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i18n_locales`
--
ALTER TABLE `i18n_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ramos`
--
ALTER TABLE `ramos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
