-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2015 г., 17:03
-- Версия сервера: 5.6.16
-- Версия PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `voicestack`
--

-- --------------------------------------------------------

--
-- Структура таблицы `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Campaign First', '2015-06-01 03:43:09', '2015-06-01 03:43:09'),
(2, 1, 'Campaign', '2015-06-01 03:44:39', '2015-06-01 03:44:39'),
(3, 1, 'beaszdxg', '2015-06-01 11:01:18', '2015-06-01 11:01:18');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_27_085755_create_campaigns_table', 1),
('2015_05_28_062435_create_widgets_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_premium` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `is_premium`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bill Gates', 0, 'asd@asd.asd', '$2y$10$.ly5QoOnsqGmwRJPuoKhiOz6SWd2BOP16qomtbyyD4V7fJQzIAR9O', 'SJGpJXHacZtMrdMMCviAZS1Hrs1IPruJZkUlIfqrIL1tnkq9Uy5j2my01JR7', '2015-06-01 03:36:15', '2015-06-01 07:01:54');

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `design` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_headline_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remove_powered_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_1_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_1_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_1_active` tinyint(1) NOT NULL,
  `map_field_2_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_2_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_2_active` tinyint(1) NOT NULL,
  `map_field_3_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_3_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_field_3_active` tinyint(1) NOT NULL,
  `email_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_provider_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `row_html_code` text COLLATE utf8_unicode_ci NOT NULL,
  `sms_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sms_provider_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sms_notification` tinyint(1) NOT NULL,
  `helpdesk_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_ticket` tinyint(1) NOT NULL,
  `feedbacks` int(11) NOT NULL,
  `optins` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `widgets`
--

INSERT INTO `widgets` (`id`, `campaign_id`, `type`, `design`, `bg_color`, `main_headline`, `main_headline_color`, `text_color`, `image`, `remove_powered_by`, `map_field_1_key`, `map_field_1_value`, `map_field_1_active`, `map_field_2_key`, `map_field_2_value`, `map_field_2_active`, `map_field_3_key`, `map_field_3_value`, `map_field_3_active`, `email_provider`, `email_provider_value`, `row_html_code`, `sms_provider`, `sms_provider_api_key`, `sms_notification`, `helpdesk_email`, `create_ticket`, `feedbacks`, `optins`, `clicks`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '#000000', 'fkv', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '1', '0', 'bsxfg', '0', 'gsrvb', 1, 'reszvb', 0, 0, 0, 0, '0000-00-00 00:00:00', '2015-06-01 11:01:32'),
(2, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:14:36', '2015-06-01 09:14:36'),
(3, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:14:44', '2015-06-01 09:14:44'),
(4, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:14:50', '2015-06-01 09:14:50'),
(5, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:16:14', '2015-06-01 09:16:14'),
(6, 1, '', '', '#000000', '', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:42:45', '2015-06-01 09:42:45'),
(7, 1, '', '', '#000000', 'mnedktcg', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:45:30', '2015-06-01 09:45:30'),
(8, 2, '', '', '#000000', 'Compaign', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:47:21', '2015-06-01 09:47:21'),
(9, 1, '', '', '#ffff00', 'aaasfasfasf', '#00ff80', '#ff0080', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:48:43', '2015-06-01 09:48:43'),
(10, 2, '', '', '#000000', 'asd', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:51:39', '2015-06-01 09:51:39'),
(11, 2, '', '', '#000000', 'assdasdasd', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:51:53', '2015-06-01 09:51:53'),
(12, 2, '', '', '#000000', 'headline', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:57:13', '2015-06-01 09:57:13'),
(13, 2, '', '', '#000000', 'fasga', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 09:57:14', '2015-06-01 09:57:14'),
(14, 1, '', '', '#000000', 'aaasfasfasf', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 10:01:44', '2015-06-01 10:01:44'),
(15, 2, '', '', '#000000', 'sd', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 10:21:37', '2015-06-01 10:21:37'),
(16, 1, '', '', '#000000', 'bzsdff', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 10:48:44', '2015-06-01 10:48:44'),
(17, 3, '', '', '#000000', 'gszdbv', '#000000', '#000000', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', '', 0, '', 0, 0, 0, 0, '2015-06-01 11:01:22', '2015-06-01 11:01:22');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
