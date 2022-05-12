-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 05:04 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `execute_at` datetime(6) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::content-manager.explorer.create', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:06.910000', '2022-05-12 20:34:06.910000', NULL, NULL),
(2, 'plugin::content-manager.explorer.create', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:06.916000', '2022-05-12 20:34:06.916000', NULL, NULL),
(3, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:06.922000', '2022-05-12 20:34:06.922000', NULL, NULL),
(4, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:06.927000', '2022-05-12 20:34:06.927000', NULL, NULL),
(5, 'plugin::content-manager.explorer.read', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:06.930000', '2022-05-12 20:34:06.930000', NULL, NULL),
(6, 'plugin::content-manager.explorer.read', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:06.934000', '2022-05-12 20:34:06.934000', NULL, NULL),
(7, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:06.938000', '2022-05-12 20:34:06.938000', NULL, NULL),
(8, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:06.942000', '2022-05-12 20:34:06.942000', NULL, NULL),
(9, 'plugin::content-manager.explorer.update', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:06.945000', '2022-05-12 20:34:06.945000', NULL, NULL),
(10, 'plugin::content-manager.explorer.update', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:06.949000', '2022-05-12 20:34:06.949000', NULL, NULL),
(11, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:06.953000', '2022-05-12 20:34:06.953000', NULL, NULL),
(12, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:06.957000', '2022-05-12 20:34:06.957000', NULL, NULL),
(13, 'plugin::content-manager.explorer.delete', 'plugin::navigation.audience', '{}', '[]', '2022-05-12 20:34:06.961000', '2022-05-12 20:34:06.961000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', 'plugin::navigation.navigation', '{}', '[]', '2022-05-12 20:34:06.965000', '2022-05-12 20:34:06.965000', NULL, NULL),
(15, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-product', '{}', '[]', '2022-05-12 20:34:06.969000', '2022-05-12 20:34:06.969000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-payment', '{}', '[]', '2022-05-12 20:34:06.972000', '2022-05-12 20:34:06.972000', NULL, NULL),
(17, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-12 20:34:06.976000', '2022-05-12 20:34:06.976000', NULL, NULL),
(18, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-12 20:34:06.979000', '2022-05-12 20:34:06.979000', NULL, NULL),
(19, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-12 20:34:06.983000', '2022-05-12 20:34:06.983000', NULL, NULL),
(20, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-12 20:34:06.987000', '2022-05-12 20:34:06.987000', NULL, NULL),
(21, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-12 20:34:06.990000', '2022-05-12 20:34:06.990000', NULL, NULL),
(22, 'plugin::content-manager.explorer.create', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:06.996000', '2022-05-12 20:34:06.996000', NULL, NULL),
(23, 'plugin::content-manager.explorer.create', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.000000', '2022-05-12 20:34:07.000000', NULL, NULL),
(24, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.004000', '2022-05-12 20:34:07.004000', NULL, NULL),
(25, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.007000', '2022-05-12 20:34:07.007000', NULL, NULL),
(26, 'plugin::content-manager.explorer.read', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.011000', '2022-05-12 20:34:07.011000', NULL, NULL),
(27, 'plugin::content-manager.explorer.read', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.015000', '2022-05-12 20:34:07.015000', NULL, NULL),
(28, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.018000', '2022-05-12 20:34:07.018000', NULL, NULL),
(29, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.022000', '2022-05-12 20:34:07.022000', NULL, NULL),
(30, 'plugin::content-manager.explorer.update', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.025000', '2022-05-12 20:34:07.025000', NULL, NULL),
(31, 'plugin::content-manager.explorer.update', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.029000', '2022-05-12 20:34:07.029000', NULL, NULL),
(32, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.034000', '2022-05-12 20:34:07.034000', NULL, NULL),
(33, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.038000', '2022-05-12 20:34:07.038000', NULL, NULL),
(34, 'plugin::content-manager.explorer.delete', 'plugin::navigation.audience', '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.041000', '2022-05-12 20:34:07.041000', NULL, NULL),
(35, 'plugin::content-manager.explorer.delete', 'plugin::navigation.navigation', '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.045000', '2022-05-12 20:34:07.045000', NULL, NULL),
(36, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-product', '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.048000', '2022-05-12 20:34:07.048000', NULL, NULL),
(37, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-payment', '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.052000', '2022-05-12 20:34:07.052000', NULL, NULL),
(38, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.055000', '2022-05-12 20:34:07.055000', NULL, NULL),
(39, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-12 20:34:07.058000', '2022-05-12 20:34:07.058000', NULL, NULL),
(40, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-05-12 20:34:07.062000', '2022-05-12 20:34:07.062000', NULL, NULL),
(41, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-12 20:34:07.065000', '2022-05-12 20:34:07.065000', NULL, NULL),
(42, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-12 20:34:07.069000', '2022-05-12 20:34:07.069000', NULL, NULL),
(43, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-05-12 20:34:07.103000', '2022-05-12 20:34:07.103000', NULL, NULL),
(44, 'plugin::content-manager.explorer.create', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:07.107000', '2022-05-12 20:34:07.107000', NULL, NULL),
(45, 'plugin::content-manager.explorer.create', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:07.111000', '2022-05-12 20:34:07.111000', NULL, NULL),
(46, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:07.115000', '2022-05-12 20:34:07.115000', NULL, NULL),
(47, 'plugin::content-manager.explorer.create', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:07.119000', '2022-05-12 20:34:07.119000', NULL, NULL),
(48, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-05-12 20:34:07.123000', '2022-05-12 20:34:07.123000', NULL, NULL),
(49, 'plugin::content-manager.explorer.read', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:07.126000', '2022-05-12 20:34:07.126000', NULL, NULL),
(50, 'plugin::content-manager.explorer.read', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:07.130000', '2022-05-12 20:34:07.130000', NULL, NULL),
(51, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:07.134000', '2022-05-12 20:34:07.134000', NULL, NULL),
(52, 'plugin::content-manager.explorer.read', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:07.138000', '2022-05-12 20:34:07.138000', NULL, NULL),
(53, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-05-12 20:34:07.142000', '2022-05-12 20:34:07.142000', NULL, NULL),
(54, 'plugin::content-manager.explorer.update', 'plugin::navigation.audience', '{\"fields\":[\"name\",\"key\"]}', '[]', '2022-05-12 20:34:07.145000', '2022-05-12 20:34:07.145000', NULL, NULL),
(55, 'plugin::content-manager.explorer.update', 'plugin::navigation.navigation', '{\"fields\":[\"name\",\"slug\",\"visible\",\"items\"]}', '[]', '2022-05-12 20:34:07.148000', '2022-05-12 20:34:07.148000', NULL, NULL),
(56, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-product', '{\"fields\":[\"title\",\"slug\",\"description\",\"price\",\"currency\",\"productImage\",\"stripeProductId\",\"stripePriceId\",\"stripePayment\"]}', '[]', '2022-05-12 20:34:07.151000', '2022-05-12 20:34:07.151000', NULL, NULL),
(57, 'plugin::content-manager.explorer.update', 'plugin::strapi-stripe.strapi-stripe-payment', '{\"fields\":[\"txnDate\",\"transactionId\",\"isTxnSuccessful\",\"txnMessage\",\"txnErrorMessage\",\"txnAmount\",\"customerName\",\"customerEmail\",\"stripeProduct\"]}', '[]', '2022-05-12 20:34:07.155000', '2022-05-12 20:34:07.155000', NULL, NULL),
(58, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-05-12 20:34:07.158000', '2022-05-12 20:34:07.158000', NULL, NULL),
(59, 'plugin::content-manager.explorer.delete', 'plugin::navigation.audience', '{}', '[]', '2022-05-12 20:34:07.162000', '2022-05-12 20:34:07.162000', NULL, NULL),
(60, 'plugin::content-manager.explorer.delete', 'plugin::navigation.navigation', '{}', '[]', '2022-05-12 20:34:07.165000', '2022-05-12 20:34:07.165000', NULL, NULL),
(61, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-product', '{}', '[]', '2022-05-12 20:34:07.170000', '2022-05-12 20:34:07.170000', NULL, NULL),
(62, 'plugin::content-manager.explorer.delete', 'plugin::strapi-stripe.strapi-stripe-payment', '{}', '[]', '2022-05-12 20:34:07.174000', '2022-05-12 20:34:07.174000', NULL, NULL),
(63, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-05-12 20:34:07.177000', '2022-05-12 20:34:07.177000', NULL, NULL),
(64, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-05-12 20:34:07.180000', '2022-05-12 20:34:07.180000', NULL, NULL),
(65, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-05-12 20:34:07.183000', '2022-05-12 20:34:07.183000', NULL, NULL),
(66, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-05-12 20:34:07.187000', '2022-05-12 20:34:07.187000', NULL, NULL),
(67, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-05-12 20:34:07.190000', '2022-05-12 20:34:07.190000', NULL, NULL),
(68, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-12 20:34:07.193000', '2022-05-12 20:34:07.193000', NULL, NULL),
(69, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-12 20:34:07.196000', '2022-05-12 20:34:07.196000', NULL, NULL),
(70, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-12 20:34:07.199000', '2022-05-12 20:34:07.199000', NULL, NULL),
(71, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-12 20:34:07.203000', '2022-05-12 20:34:07.203000', NULL, NULL),
(72, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-12 20:34:07.207000', '2022-05-12 20:34:07.207000', NULL, NULL),
(73, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-05-12 20:34:07.211000', '2022-05-12 20:34:07.211000', NULL, NULL),
(74, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-05-12 20:34:07.214000', '2022-05-12 20:34:07.214000', NULL, NULL),
(75, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-05-12 20:34:07.217000', '2022-05-12 20:34:07.217000', NULL, NULL),
(76, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-05-12 20:34:07.220000', '2022-05-12 20:34:07.220000', NULL, NULL),
(77, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.223000', '2022-05-12 20:34:07.223000', NULL, NULL),
(78, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-05-12 20:34:07.226000', '2022-05-12 20:34:07.226000', NULL, NULL),
(79, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-05-12 20:34:07.229000', '2022-05-12 20:34:07.229000', NULL, NULL),
(80, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-05-12 20:34:07.232000', '2022-05-12 20:34:07.232000', NULL, NULL),
(81, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.236000', '2022-05-12 20:34:07.236000', NULL, NULL),
(82, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-05-12 20:34:07.239000', '2022-05-12 20:34:07.239000', NULL, NULL),
(83, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-05-12 20:34:07.243000', '2022-05-12 20:34:07.243000', NULL, NULL),
(84, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-05-12 20:34:07.246000', '2022-05-12 20:34:07.246000', NULL, NULL),
(85, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-05-12 20:34:07.250000', '2022-05-12 20:34:07.250000', NULL, NULL),
(86, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-05-12 20:34:07.253000', '2022-05-12 20:34:07.253000', NULL, NULL),
(87, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-05-12 20:34:07.258000', '2022-05-12 20:34:07.258000', NULL, NULL),
(88, 'plugin::navigation.read', NULL, '{}', '[]', '2022-05-12 20:34:07.262000', '2022-05-12 20:34:07.262000', NULL, NULL),
(89, 'plugin::navigation.update', NULL, '{}', '[]', '2022-05-12 20:34:07.265000', '2022-05-12 20:34:07.265000', NULL, NULL),
(90, 'admin::marketplace.read', NULL, '{}', '[]', '2022-05-12 20:34:07.269000', '2022-05-12 20:34:07.269000', NULL, NULL),
(91, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-05-12 20:34:07.272000', '2022-05-12 20:34:07.272000', NULL, NULL),
(92, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-05-12 20:34:07.275000', '2022-05-12 20:34:07.275000', NULL, NULL),
(93, 'admin::webhooks.create', NULL, '{}', '[]', '2022-05-12 20:34:07.278000', '2022-05-12 20:34:07.278000', NULL, NULL),
(94, 'admin::webhooks.read', NULL, '{}', '[]', '2022-05-12 20:34:07.282000', '2022-05-12 20:34:07.282000', NULL, NULL),
(95, 'admin::webhooks.update', NULL, '{}', '[]', '2022-05-12 20:34:07.285000', '2022-05-12 20:34:07.285000', NULL, NULL),
(96, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.289000', '2022-05-12 20:34:07.289000', NULL, NULL),
(97, 'admin::users.create', NULL, '{}', '[]', '2022-05-12 20:34:07.292000', '2022-05-12 20:34:07.292000', NULL, NULL),
(98, 'admin::users.read', NULL, '{}', '[]', '2022-05-12 20:34:07.296000', '2022-05-12 20:34:07.296000', NULL, NULL),
(99, 'admin::users.update', NULL, '{}', '[]', '2022-05-12 20:34:07.300000', '2022-05-12 20:34:07.300000', NULL, NULL),
(100, 'admin::users.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.303000', '2022-05-12 20:34:07.303000', NULL, NULL),
(101, 'admin::roles.create', NULL, '{}', '[]', '2022-05-12 20:34:07.306000', '2022-05-12 20:34:07.306000', NULL, NULL),
(102, 'admin::roles.read', NULL, '{}', '[]', '2022-05-12 20:34:07.310000', '2022-05-12 20:34:07.310000', NULL, NULL),
(103, 'admin::roles.update', NULL, '{}', '[]', '2022-05-12 20:34:07.313000', '2022-05-12 20:34:07.313000', NULL, NULL),
(104, 'admin::roles.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.317000', '2022-05-12 20:34:07.317000', NULL, NULL),
(105, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-05-12 20:34:07.320000', '2022-05-12 20:34:07.320000', NULL, NULL),
(106, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-05-12 20:34:07.323000', '2022-05-12 20:34:07.323000', NULL, NULL),
(107, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-05-12 20:34:07.326000', '2022-05-12 20:34:07.326000', NULL, NULL),
(108, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-05-12 20:34:07.330000', '2022-05-12 20:34:07.330000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-05-12 20:34:06.894000', '2022-05-12 20:34:06.894000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-05-12 20:34:06.900000', '2022-05-12 20:34:06.900000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-05-12 20:34:06.903000', '2022-05-12 20:34:06.903000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Pramod', 'Singh', NULL, 'spramodgusain@gmail.com', '$2a$10$Rg1vv0EFReKce2c5lnZ/l.1aTuqnZU6ulgxFLMLvpgKiG8eO/VukK', NULL, NULL, 1, 0, NULL, '2022-05-12 20:34:37.272000', '2022-05-12 20:34:37.272000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_meta_socials`
--

CREATE TABLE `components_shared_meta_socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `meta_robots` varchar(255) DEFAULT NULL,
  `structured_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_viewport` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos_components`
--

CREATE TABLE `components_shared_seos_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-05-12 20:34:06.789000', '2022-05-12 20:34:06.789000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `name`, `slug`, `visible`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Main navigation', 'main-navigation', 1, '2022-05-12 20:34:06.875000', '2022-05-12 20:34:06.875000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items`
--

CREATE TABLE `navigations_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` longtext DEFAULT NULL,
  `external_path` longtext DEFAULT NULL,
  `ui_router_key` varchar(255) DEFAULT NULL,
  `menu_attached` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `collapsed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_audience_links`
--

CREATE TABLE `navigations_items_audience_links` (
  `navigation_item_id` int(10) UNSIGNED DEFAULT NULL,
  `audience_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_links`
--

CREATE TABLE `navigations_items_links` (
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `navigation_item_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_master_links`
--

CREATE TABLE `navigations_items_master_links` (
  `navigation_item_id` int(10) UNSIGNED DEFAULT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_parent_links`
--

CREATE TABLE `navigations_items_parent_links` (
  `navigation_item_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_navigation_item_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_related`
--

CREATE TABLE `navigations_items_related` (
  `id` int(10) UNSIGNED NOT NULL,
  `related_id` varchar(255) DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `master` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navigations_items_related_links`
--

CREATE TABLE `navigations_items_related_links` (
  `navigation_item_id` int(10) UNSIGNED DEFAULT NULL,
  `navigations_items_related_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi-stripe_strapi-stripe-payment`
--

CREATE TABLE `strapi-stripe_strapi-stripe-payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_date` datetime(6) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `is_txn_successful` tinyint(1) DEFAULT NULL,
  `txn_message` varchar(255) DEFAULT NULL,
  `txn_error_message` varchar(255) DEFAULT NULL,
  `txn_amount` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi-stripe_strapi-stripe-product`
--

CREATE TABLE `strapi-stripe_strapi-stripe-product` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `stripe_product_id` varchar(255) DEFAULT NULL,
  `stripe_price_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::publisher.action\":{\"kind\":\"collectionType\",\"collectionName\":\"actions\",\"info\":{\"singularName\":\"action\",\"pluralName\":\"actions\",\"displayName\":\"actions\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"attributes\":{\"executeAt\":{\"type\":\"datetime\"},\"mode\":{\"type\":\"string\"},\"entityId\":{\"type\":\"integer\"},\"entitySlug\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"actions\",\"info\":{\"singularName\":\"action\",\"pluralName\":\"actions\",\"displayName\":\"actions\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"executeAt\":{\"type\":\"datetime\"},\"mode\":{\"type\":\"string\"},\"entityId\":{\"type\":\"integer\"},\"entitySlug\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"action\",\"connection\":\"default\",\"uid\":\"plugin::publisher.action\",\"plugin\":\"publisher\",\"globalId\":\"PublisherAction\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::navigation.audience\":{\"collectionName\":\"audience\",\"info\":{\"singularName\":\"audience\",\"pluralName\":\"audiences\",\"displayName\":\"Audience\",\"name\":\"audience\"},\"options\":{\"increments\":true,\"comment\":\"Audience\"},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"key\":{\"type\":\"uid\",\"targetField\":\"name\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"audience\",\"info\":{\"singularName\":\"audience\",\"pluralName\":\"audiences\",\"displayName\":\"Audience\",\"name\":\"audience\"},\"options\":{\"increments\":true,\"comment\":\"Audience\"},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"key\":{\"type\":\"uid\",\"targetField\":\"name\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"audience\",\"connection\":\"default\",\"uid\":\"plugin::navigation.audience\",\"plugin\":\"navigation\",\"globalId\":\"NavigationAudience\"},\"plugin::navigation.navigation\":{\"collectionName\":\"navigations\",\"info\":{\"singularName\":\"navigation\",\"pluralName\":\"navigations\",\"displayName\":\"Navigation\",\"name\":\"navigation\"},\"options\":{\"increments\":true,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"slug\":{\"type\":\"uid\",\"target\":\"name\",\"configurable\":false,\"required\":true},\"visible\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::navigation.navigation-item\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"navigations\",\"info\":{\"singularName\":\"navigation\",\"pluralName\":\"navigations\",\"displayName\":\"Navigation\",\"name\":\"navigation\"},\"options\":{\"increments\":true,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"slug\":{\"type\":\"uid\",\"target\":\"name\",\"configurable\":false,\"required\":true},\"visible\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::navigation.navigation-item\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navigation\",\"connection\":\"default\",\"uid\":\"plugin::navigation.navigation\",\"plugin\":\"navigation\",\"globalId\":\"NavigationNavigation\"},\"plugin::navigation.navigation-item\":{\"collectionName\":\"navigations_items\",\"info\":{\"singularName\":\"navigation-item\",\"pluralName\":\"navigation-items\",\"displayName\":\"Navigation Item\",\"name\":\"navigation-item\"},\"options\":{\"increments\":true,\"timestamps\":true,\"comment\":\"Navigation Item\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"title\":{\"type\":\"text\",\"configurable\":false,\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"type\":{\"type\":\"enumeration\",\"enum\":[\"INTERNAL\",\"EXTERNAL\",\"WRAPPER\"],\"default\":\"INTERNAL\",\"configurable\":false},\"path\":{\"type\":\"text\",\"targetField\":\"title\",\"configurable\":false},\"externalPath\":{\"type\":\"text\",\"configurable\":false},\"uiRouterKey\":{\"type\":\"string\",\"configurable\":false},\"menuAttached\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"order\":{\"type\":\"integer\",\"default\":0,\"configurable\":false},\"collapsed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::navigation.navigations-items-related\",\"configurable\":false},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::navigation.navigation-item\",\"configurable\":false,\"default\":null},\"master\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::navigation.navigation\",\"configurable\":false},\"audience\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::navigation.audience\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"navigations_items\",\"info\":{\"singularName\":\"navigation-item\",\"pluralName\":\"navigation-items\",\"displayName\":\"Navigation Item\",\"name\":\"navigation-item\"},\"options\":{\"increments\":true,\"timestamps\":true,\"comment\":\"Navigation Item\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"title\":{\"type\":\"text\",\"configurable\":false,\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"type\":{\"type\":\"enumeration\",\"enum\":[\"INTERNAL\",\"EXTERNAL\",\"WRAPPER\"],\"default\":\"INTERNAL\",\"configurable\":false},\"path\":{\"type\":\"text\",\"targetField\":\"title\",\"configurable\":false},\"externalPath\":{\"type\":\"text\",\"configurable\":false},\"uiRouterKey\":{\"type\":\"string\",\"configurable\":false},\"menuAttached\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"order\":{\"type\":\"integer\",\"default\":0,\"configurable\":false},\"collapsed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::navigation.navigations-items-related\",\"configurable\":false},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::navigation.navigation-item\",\"configurable\":false,\"default\":null},\"master\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::navigation.navigation\",\"configurable\":false},\"audience\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::navigation.audience\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navigation-item\",\"connection\":\"default\",\"uid\":\"plugin::navigation.navigation-item\",\"plugin\":\"navigation\",\"globalId\":\"NavigationNavigationItem\"},\"plugin::navigation.navigations-items-related\":{\"collectionName\":\"navigations_items_related\",\"info\":{\"singularName\":\"navigations-items-related\",\"pluralName\":\"navigations-items-relateds\",\"displayName\":\"Navigations Items Related\",\"name\":\"navigations_items_related\"},\"options\":{\"increments\":true,\"timestamps\":false,\"populateCreatorFields\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"related_id\":{\"type\":\"string\",\"required\":true},\"related_type\":{\"type\":\"string\",\"required\":true},\"field\":{\"type\":\"string\",\"required\":true},\"order\":{\"type\":\"integer\",\"required\":true},\"master\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"navigations_items_related\",\"info\":{\"singularName\":\"navigations-items-related\",\"pluralName\":\"navigations-items-relateds\",\"displayName\":\"Navigations Items Related\",\"name\":\"navigations_items_related\"},\"options\":{\"increments\":true,\"timestamps\":false,\"populateCreatorFields\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"related_id\":{\"type\":\"string\",\"required\":true},\"related_type\":{\"type\":\"string\",\"required\":true},\"field\":{\"type\":\"string\",\"required\":true},\"order\":{\"type\":\"integer\",\"required\":true},\"master\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navigations-items-related\",\"connection\":\"default\",\"uid\":\"plugin::navigation.navigations-items-related\",\"plugin\":\"navigation\",\"globalId\":\"NavigationNavigationsItemsRelated\"},\"plugin::strapi-stripe.strapi-stripe-product\":{\"info\":{\"tableName\":\"StrapiStripeProduct\",\"singularName\":\"strapi-stripe-product\",\"pluralName\":\"strapi-stripe-products\",\"displayName\":\"StrapiStripeProduct\",\"description\":\"Stripe Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":\"false\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"productImage\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripeProductId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePriceId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-stripe.strapi-stripe-payment\",\"mappedBy\":\"stripeProduct\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"StrapiStripeProduct\",\"singularName\":\"strapi-stripe-product\",\"pluralName\":\"strapi-stripe-products\",\"displayName\":\"StrapiStripeProduct\",\"description\":\"Stripe Products\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":\"false\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"unique\":true,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"price\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"currency\":{\"type\":\"string\",\"min\":1,\"required\":true,\"configurable\":false},\"productImage\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripeProductId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePriceId\":{\"type\":\"string\",\"min\":3,\"required\":true,\"configurable\":false},\"stripePayment\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::strapi-stripe.strapi-stripe-payment\",\"mappedBy\":\"stripeProduct\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"strapi-stripe-product\",\"connection\":\"default\",\"uid\":\"plugin::strapi-stripe.strapi-stripe-product\",\"plugin\":\"strapi-stripe\",\"collectionName\":\"strapi-stripe_strapi-stripe-product\",\"globalId\":\"StrapiStripeStrapiStripeProduct\"},\"plugin::strapi-stripe.strapi-stripe-payment\":{\"info\":{\"tableName\":\"StrapiStripePayment\",\"singularName\":\"strapi-stripe-payment\",\"pluralName\":\"strapi-stripe-payments\",\"displayName\":\"StrapiStripePayment\",\"description\":\"Stripe Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":\"false\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"string\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"stripeProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-stripe.strapi-stripe-product\",\"inversedBy\":\"stripePayment\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"StrapiStripePayment\",\"singularName\":\"strapi-stripe-payment\",\"pluralName\":\"strapi-stripe-payments\",\"displayName\":\"StrapiStripePayment\",\"description\":\"Stripe Payment\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":\"false\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"txnDate\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false},\"transactionId\":{\"type\":\"string\",\"maxLength\":250,\"required\":true,\"configurable\":false},\"isTxnSuccessful\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"txnMessage\":{\"type\":\"string\",\"maxLength\":5000,\"configurable\":false},\"txnErrorMessage\":{\"type\":\"string\",\"maxLength\":250,\"configurable\":false},\"txnAmount\":{\"type\":\"decimal\",\"required\":true,\"configurable\":false},\"customerName\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"customerEmail\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"stripeProduct\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::strapi-stripe.strapi-stripe-product\",\"inversedBy\":\"stripePayment\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"strapi-stripe-payment\",\"connection\":\"default\",\"uid\":\"plugin::strapi-stripe.strapi-stripe-payment\",\"plugin\":\"strapi-stripe\",\"collectionName\":\"strapi-stripe_strapi-stripe-payment\",\"globalId\":\"StrapiStripeStrapiStripePayment\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::publisher.action', '{\"uid\":\"plugin::publisher.action\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"mode\",\"defaultSortBy\":\"mode\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"executeAt\":{\"edit\":{\"label\":\"executeAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"executeAt\",\"searchable\":true,\"sortable\":true}},\"mode\":{\"edit\":{\"label\":\"mode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mode\",\"searchable\":true,\"sortable\":true}},\"entityId\":{\"edit\":{\"label\":\"entityId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entityId\",\"searchable\":true,\"sortable\":true}},\"entitySlug\":{\"edit\":{\"label\":\"entitySlug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entitySlug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"executeAt\",\"mode\",\"entityId\"],\"editRelations\":[],\"edit\":[[{\"name\":\"executeAt\",\"size\":6},{\"name\":\"mode\",\"size\":6}],[{\"name\":\"entityId\",\"size\":4},{\"name\":\"entitySlug\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::strapi-stripe.strapi-stripe-product', '{\"uid\":\"plugin::strapi-stripe.strapi-stripe-product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"currency\":{\"edit\":{\"label\":\"currency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"currency\",\"searchable\":true,\"sortable\":true}},\"productImage\":{\"edit\":{\"label\":\"productImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productImage\",\"searchable\":true,\"sortable\":true}},\"stripeProductId\":{\"edit\":{\"label\":\"stripeProductId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripeProductId\",\"searchable\":true,\"sortable\":true}},\"stripePriceId\":{\"edit\":{\"label\":\"stripePriceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripePriceId\",\"searchable\":true,\"sortable\":true}},\"stripePayment\":{\"edit\":{\"label\":\"stripePayment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"transactionId\"},\"list\":{\"label\":\"stripePayment\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"description\"],\"editRelations\":[\"stripePayment\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"currency\",\"size\":6},{\"name\":\"productImage\",\"size\":6}],[{\"name\":\"stripeProductId\",\"size\":6},{\"name\":\"stripePriceId\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::navigation.audience', '{\"uid\":\"plugin::navigation.audience\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"key\":{\"edit\":{\"label\":\"key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"key\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"key\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"key\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::navigation.navigation', '{\"uid\":\"plugin::navigation.navigation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"visible\":{\"edit\":{\"label\":\"visible\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"visible\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"uiRouterKey\"},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"visible\"],\"editRelations\":[\"items\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"visible\",\"size\":4}]]}}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::navigation.navigation-item', '{\"uid\":\"plugin::navigation.navigation-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"uiRouterKey\",\"defaultSortBy\":\"uiRouterKey\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"externalPath\":{\"edit\":{\"label\":\"externalPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"externalPath\",\"searchable\":true,\"sortable\":true}},\"uiRouterKey\":{\"edit\":{\"label\":\"uiRouterKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"uiRouterKey\",\"searchable\":true,\"sortable\":true}},\"menuAttached\":{\"edit\":{\"label\":\"menuAttached\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"menuAttached\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"collapsed\":{\"edit\":{\"label\":\"collapsed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"collapsed\",\"searchable\":true,\"sortable\":true}},\"related\":{\"edit\":{\"label\":\"related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"related_id\"},\"list\":{\"label\":\"related\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"uiRouterKey\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"master\":{\"edit\":{\"label\":\"master\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"master\",\"searchable\":true,\"sortable\":true}},\"audience\":{\"edit\":{\"label\":\"audience\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"audience\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"type\",\"path\"],\"editRelations\":[\"related\",\"parent\",\"master\",\"audience\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"path\",\"size\":6},{\"name\":\"externalPath\",\"size\":6}],[{\"name\":\"uiRouterKey\",\"size\":6},{\"name\":\"menuAttached\",\"size\":4}],[{\"name\":\"order\",\"size\":4},{\"name\":\"collapsed\",\"size\":4}]]}}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::navigation.navigations-items-related', '{\"uid\":\"plugin::navigation.navigations-items-related\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"related_id\",\"defaultSortBy\":\"related_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"related_id\":{\"edit\":{\"label\":\"related_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"related_id\",\"searchable\":true,\"sortable\":true}},\"related_type\":{\"edit\":{\"label\":\"related_type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"related_type\",\"searchable\":true,\"sortable\":true}},\"field\":{\"edit\":{\"label\":\"field\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"field\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"master\":{\"edit\":{\"label\":\"master\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"master\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"related_id\",\"related_type\",\"field\"],\"editRelations\":[],\"edit\":[[{\"name\":\"related_id\",\"size\":6},{\"name\":\"related_type\",\"size\":6}],[{\"name\":\"field\",\"size\":6},{\"name\":\"order\",\"size\":4}],[{\"name\":\"master\",\"size\":6}]]}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::plugin::strapi-stripe.strapi-stripe-payment', '{\"uid\":\"plugin::strapi-stripe.strapi-stripe-payment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"transactionId\",\"defaultSortBy\":\"transactionId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"txnDate\":{\"edit\":{\"label\":\"txnDate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnDate\",\"searchable\":true,\"sortable\":true}},\"transactionId\":{\"edit\":{\"label\":\"transactionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"transactionId\",\"searchable\":true,\"sortable\":true}},\"isTxnSuccessful\":{\"edit\":{\"label\":\"isTxnSuccessful\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isTxnSuccessful\",\"searchable\":true,\"sortable\":true}},\"txnMessage\":{\"edit\":{\"label\":\"txnMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnMessage\",\"searchable\":true,\"sortable\":true}},\"txnErrorMessage\":{\"edit\":{\"label\":\"txnErrorMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnErrorMessage\",\"searchable\":true,\"sortable\":true}},\"txnAmount\":{\"edit\":{\"label\":\"txnAmount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"txnAmount\",\"searchable\":true,\"sortable\":true}},\"customerName\":{\"edit\":{\"label\":\"customerName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerName\",\"searchable\":true,\"sortable\":true}},\"customerEmail\":{\"edit\":{\"label\":\"customerEmail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerEmail\",\"searchable\":true,\"sortable\":true}},\"stripeProduct\":{\"edit\":{\"label\":\"stripeProduct\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"stripeProduct\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"txnDate\",\"transactionId\",\"isTxnSuccessful\"],\"editRelations\":[\"stripeProduct\"],\"edit\":[[{\"name\":\"txnDate\",\"size\":6},{\"name\":\"transactionId\",\"size\":6}],[{\"name\":\"isTxnSuccessful\",\"size\":4},{\"name\":\"txnMessage\",\"size\":6}],[{\"name\":\"txnErrorMessage\",\"size\":6},{\"name\":\"txnAmount\",\"size\":4}],[{\"name\":\"customerName\",\"size\":6},{\"name\":\"customerEmail\",\"size\":6}]]}}', 'object', NULL, NULL),
(18, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(19, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(20, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(23, 'plugin_navigation_config', '{\"additionalFields\":[],\"contentTypes\":[],\"contentTypesNameFields\":{},\"contentTypesPopulate\":{},\"allowedLevels\":2}', 'object', NULL, NULL),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_components::shared.meta-social', '{\"uid\":\"shared.meta-social\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"socialNetwork\":{\"edit\":{\"label\":\"socialNetwork\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialNetwork\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"socialNetwork\",\"title\",\"description\"],\"editRelations\":[],\"edit\":[[{\"name\":\"socialNetwork\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"isComponent\":true}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_components::shared.seo', '{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"metaImage\":{\"edit\":{\"label\":\"metaImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaImage\",\"searchable\":false,\"sortable\":false}},\"metaSocial\":{\"edit\":{\"label\":\"metaSocial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaSocial\",\"searchable\":false,\"sortable\":false}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}},\"metaRobots\":{\"edit\":{\"label\":\"metaRobots\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaRobots\",\"searchable\":true,\"sortable\":true}},\"structuredData\":{\"edit\":{\"label\":\"structuredData\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structuredData\",\"searchable\":false,\"sortable\":false}},\"metaViewport\":{\"edit\":{\"label\":\"metaViewport\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaViewport\",\"searchable\":true,\"sortable\":true}},\"canonicalURL\":{\"edit\":{\"label\":\"canonicalURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canonicalURL\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"metaImage\"],\"editRelations\":[],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaImage\",\"size\":6}],[{\"name\":\"metaSocial\",\"size\":12}],[{\"name\":\"keywords\",\"size\":6},{\"name\":\"metaRobots\",\"size\":6}],[{\"name\":\"structuredData\",\"size\":12}],[{\"name\":\"metaViewport\",\"size\":6},{\"name\":\"canonicalURL\",\"size\":6}]]},\"isComponent\":true}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(2, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"actions\",\"indexes\":[{\"name\":\"actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"execute_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mode\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entity_slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"audience\",\"indexes\":[{\"type\":\"unique\",\"name\":\"audience_key_unique\",\"columns\":[\"key\"]},{\"name\":\"audience_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"audience_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"audience_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"audience_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false,\"unique\":true},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations\",\"indexes\":[{\"type\":\"unique\",\"name\":\"navigations_slug_unique\",\"columns\":[\"slug\"]},{\"name\":\"navigations_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"navigations_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"navigations_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false,\"unique\":true},{\"name\":\"visible\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items\",\"indexes\":[{\"name\":\"navigations_items_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"navigations_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"navigations_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"external_path\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ui_router_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"menu_attached\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"collapsed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_related\",\"indexes\":[{\"name\":\"navigations_items_related_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"navigations_items_related_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_related_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"navigations_items_related_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"master\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi-stripe_strapi-stripe-product\",\"indexes\":[{\"type\":\"unique\",\"name\":\"strapi-stripe_strapi-stripe-product_slug_unique\",\"columns\":[\"slug\"]},{\"name\":\"strapi-stripe_strapi-stripe-product_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi-stripe_strapi-stripe-product_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi-stripe_strapi-stripe-product_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi-stripe_strapi-stripe-product_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false,\"unique\":true},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"currency\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"product_image\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stripe_product_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stripe_price_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi-stripe_strapi-stripe-payment\",\"indexes\":[{\"name\":\"strapi-stripe_strapi-stripe-payment_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi-stripe_strapi-stripe-payment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi-stripe_strapi-stripe-payment_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi-stripe_strapi-stripe-payment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"txn_date\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"transaction_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_txn_successful\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"txn_message\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"txn_error_message\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"txn_amount\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"customer_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"customer_email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_shared_meta_socials\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"social_network\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_seos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"keywords\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_robots\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"structured_data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_viewport\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"canonical_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_links\",\"indexes\":[{\"name\":\"navigations_items_links_fk\",\"columns\":[\"navigation_id\"]},{\"name\":\"navigations_items_links_inv_fk\",\"columns\":[\"navigation_item_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_links_fk\",\"columns\":[\"navigation_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations\",\"onDelete\":\"CASCADE\"},{\"name\":\"navigations_items_links_inv_fk\",\"columns\":[\"navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"navigation_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_related_links\",\"indexes\":[{\"name\":\"navigations_items_related_links_fk\",\"columns\":[\"navigation_item_id\"]},{\"name\":\"navigations_items_related_links_inv_fk\",\"columns\":[\"navigations_items_related_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_related_links_fk\",\"columns\":[\"navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"navigations_items_related_links_inv_fk\",\"columns\":[\"navigations_items_related_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items_related\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"navigations_items_related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_parent_links\",\"indexes\":[{\"name\":\"navigations_items_parent_links_fk\",\"columns\":[\"navigation_item_id\"]},{\"name\":\"navigations_items_parent_links_inv_fk\",\"columns\":[\"inv_navigation_item_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_parent_links_fk\",\"columns\":[\"navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"navigations_items_parent_links_inv_fk\",\"columns\":[\"inv_navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_master_links\",\"indexes\":[{\"name\":\"navigations_items_master_links_fk\",\"columns\":[\"navigation_item_id\"]},{\"name\":\"navigations_items_master_links_inv_fk\",\"columns\":[\"navigation_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_master_links_fk\",\"columns\":[\"navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"navigations_items_master_links_inv_fk\",\"columns\":[\"navigation_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"navigation_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"navigations_items_audience_links\",\"indexes\":[{\"name\":\"navigations_items_audience_links_fk\",\"columns\":[\"navigation_item_id\"]},{\"name\":\"navigations_items_audience_links_inv_fk\",\"columns\":[\"audience_id\"]}],\"foreignKeys\":[{\"name\":\"navigations_items_audience_links_fk\",\"columns\":[\"navigation_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"navigations_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"navigations_items_audience_links_inv_fk\",\"columns\":[\"audience_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"audience\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"navigation_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"audience_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_stripe_strapi_stripe_payment_stripe_product_links\",\"indexes\":[{\"name\":\"strapi_stripe_strapi_stripe_payment_stripe_product_links_fk\",\"columns\":[\"strapi_stripe_payment_id\"]},{\"name\":\"strapi_stripe_strapi_stripe_payment_stripe_product_links_inv_fk\",\"columns\":[\"strapi_stripe_product_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_stripe_strapi_stripe_payment_stripe_product_links_fk\",\"columns\":[\"strapi_stripe_payment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi-stripe_strapi-stripe-payment\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_stripe_strapi_stripe_payment_stripe_product_links_inv_fk\",\"columns\":[\"strapi_stripe_product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi-stripe_strapi-stripe-product\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"strapi_stripe_payment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"strapi_stripe_product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_shared_seos_components\",\"indexes\":[{\"name\":\"components_shared_seos_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_shared_seos_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_shared_seos_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_shared_seos_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_shared_seos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]}]}', '2022-05-12 20:34:50', 'bf072e87b02ec1b8b072329e4f895ab9');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_stripe_strapi_stripe_payment_stripe_product_links`
--

CREATE TABLE `strapi_stripe_strapi_stripe_payment_stripe_product_links` (
  `strapi_stripe_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `strapi_stripe_product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.connect', '2022-05-12 20:34:06.851000', '2022-05-12 20:34:06.851000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2022-05-12 20:34:06.851000', '2022-05-12 20:34:06.851000', NULL, NULL),
(5, 'plugin::users-permissions.user.me', '2022-05-12 20:34:06.859000', '2022-05-12 20:34:06.859000', NULL, NULL),
(6, 'plugin::users-permissions.auth.callback', '2022-05-12 20:34:06.859000', '2022-05-12 20:34:06.859000', NULL, NULL),
(7, 'plugin::users-permissions.auth.connect', '2022-05-12 20:34:06.859000', '2022-05-12 20:34:06.859000', NULL, NULL),
(10, 'plugin::users-permissions.auth.register', '2022-05-12 20:34:06.859000', '2022-05-12 20:34:06.859000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(2, 1),
(1, 1),
(5, 2),
(6, 2),
(7, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-05-12 20:34:06.839000', '2022-05-12 20:34:06.839000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-05-12 20:34:06.843000', '2022-05-12 20:34:06.843000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `audience_key_unique` (`key`),
  ADD KEY `audience_created_by_id_fk` (`created_by_id`),
  ADD KEY `audience_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_shared_seos_field_index` (`field`),
  ADD KEY `components_shared_seos_component_type_index` (`component_type`),
  ADD KEY `components_shared_seos_entity_fk` (`entity_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navigations_slug_unique` (`slug`),
  ADD KEY `navigations_created_by_id_fk` (`created_by_id`),
  ADD KEY `navigations_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navigations_items`
--
ALTER TABLE `navigations_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigations_items_created_by_id_fk` (`created_by_id`),
  ADD KEY `navigations_items_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navigations_items_audience_links`
--
ALTER TABLE `navigations_items_audience_links`
  ADD KEY `navigations_items_audience_links_fk` (`navigation_item_id`),
  ADD KEY `navigations_items_audience_links_inv_fk` (`audience_id`);

--
-- Indexes for table `navigations_items_links`
--
ALTER TABLE `navigations_items_links`
  ADD KEY `navigations_items_links_fk` (`navigation_id`),
  ADD KEY `navigations_items_links_inv_fk` (`navigation_item_id`);

--
-- Indexes for table `navigations_items_master_links`
--
ALTER TABLE `navigations_items_master_links`
  ADD KEY `navigations_items_master_links_fk` (`navigation_item_id`),
  ADD KEY `navigations_items_master_links_inv_fk` (`navigation_id`);

--
-- Indexes for table `navigations_items_parent_links`
--
ALTER TABLE `navigations_items_parent_links`
  ADD KEY `navigations_items_parent_links_fk` (`navigation_item_id`),
  ADD KEY `navigations_items_parent_links_inv_fk` (`inv_navigation_item_id`);

--
-- Indexes for table `navigations_items_related`
--
ALTER TABLE `navigations_items_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigations_items_related_created_by_id_fk` (`created_by_id`),
  ADD KEY `navigations_items_related_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `navigations_items_related_links`
--
ALTER TABLE `navigations_items_related_links`
  ADD KEY `navigations_items_related_links_fk` (`navigation_item_id`),
  ADD KEY `navigations_items_related_links_inv_fk` (`navigations_items_related_id`);

--
-- Indexes for table `strapi-stripe_strapi-stripe-payment`
--
ALTER TABLE `strapi-stripe_strapi-stripe-payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi-stripe_strapi-stripe-payment_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-stripe_strapi-stripe-payment_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi-stripe_strapi-stripe-product`
--
ALTER TABLE `strapi-stripe_strapi-stripe-product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi-stripe_strapi-stripe-product_slug_unique` (`slug`),
  ADD KEY `strapi-stripe_strapi-stripe-product_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi-stripe_strapi-stripe-product_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_stripe_strapi_stripe_payment_stripe_product_links`
--
ALTER TABLE `strapi_stripe_strapi_stripe_payment_stripe_product_links`
  ADD KEY `strapi_stripe_strapi_stripe_payment_stripe_product_links_fk` (`strapi_stripe_payment_id`),
  ADD KEY `strapi_stripe_strapi_stripe_payment_stripe_product_links_inv_fk` (`strapi_stripe_product_id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigations_items`
--
ALTER TABLE `navigations_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navigations_items_related`
--
ALTER TABLE `navigations_items_related`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi-stripe_strapi-stripe-payment`
--
ALTER TABLE `strapi-stripe_strapi-stripe-payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi-stripe_strapi-stripe-product`
--
ALTER TABLE `strapi-stripe_strapi-stripe-product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `audience`
--
ALTER TABLE `audience`
  ADD CONSTRAINT `audience_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `audience_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD CONSTRAINT `components_shared_seos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_seos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `navigations_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navigations_items`
--
ALTER TABLE `navigations_items`
  ADD CONSTRAINT `navigations_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `navigations_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navigations_items_audience_links`
--
ALTER TABLE `navigations_items_audience_links`
  ADD CONSTRAINT `navigations_items_audience_links_fk` FOREIGN KEY (`navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navigations_items_audience_links_inv_fk` FOREIGN KEY (`audience_id`) REFERENCES `audience` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations_items_links`
--
ALTER TABLE `navigations_items_links`
  ADD CONSTRAINT `navigations_items_links_fk` FOREIGN KEY (`navigation_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navigations_items_links_inv_fk` FOREIGN KEY (`navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations_items_master_links`
--
ALTER TABLE `navigations_items_master_links`
  ADD CONSTRAINT `navigations_items_master_links_fk` FOREIGN KEY (`navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navigations_items_master_links_inv_fk` FOREIGN KEY (`navigation_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations_items_parent_links`
--
ALTER TABLE `navigations_items_parent_links`
  ADD CONSTRAINT `navigations_items_parent_links_fk` FOREIGN KEY (`navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navigations_items_parent_links_inv_fk` FOREIGN KEY (`inv_navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations_items_related`
--
ALTER TABLE `navigations_items_related`
  ADD CONSTRAINT `navigations_items_related_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `navigations_items_related_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `navigations_items_related_links`
--
ALTER TABLE `navigations_items_related_links`
  ADD CONSTRAINT `navigations_items_related_links_fk` FOREIGN KEY (`navigation_item_id`) REFERENCES `navigations_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `navigations_items_related_links_inv_fk` FOREIGN KEY (`navigations_items_related_id`) REFERENCES `navigations_items_related` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi-stripe_strapi-stripe-payment`
--
ALTER TABLE `strapi-stripe_strapi-stripe-payment`
  ADD CONSTRAINT `strapi-stripe_strapi-stripe-payment_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-stripe_strapi-stripe-payment_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi-stripe_strapi-stripe-product`
--
ALTER TABLE `strapi-stripe_strapi-stripe-product`
  ADD CONSTRAINT `strapi-stripe_strapi-stripe-product_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi-stripe_strapi-stripe-product_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_stripe_strapi_stripe_payment_stripe_product_links`
--
ALTER TABLE `strapi_stripe_strapi_stripe_payment_stripe_product_links`
  ADD CONSTRAINT `strapi_stripe_strapi_stripe_payment_stripe_product_links_fk` FOREIGN KEY (`strapi_stripe_payment_id`) REFERENCES `strapi-stripe_strapi-stripe-payment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_stripe_strapi_stripe_payment_stripe_product_links_inv_fk` FOREIGN KEY (`strapi_stripe_product_id`) REFERENCES `strapi-stripe_strapi-stripe-product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
