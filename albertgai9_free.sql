-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 15 2020 г., 14:08
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `albertgai9_free`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-05 00:22:02', '2020-09-04 21:22:02', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 15 2020 г., 10:53
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://xn--90abhiommfbno0k6b.xn--p1ai/', 'yes'),
(2, 'home', 'http://xn--90abhiommfbno0k6b.xn--p1ai/', 'yes'),
(3, 'blogname', 'Свободный пляж', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'biloholovskyi@yandex.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:36:\"category/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"category/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"category/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"category/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"category/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"category/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"category/([^/]+)/embed/?$\";s:41:\"index.php?category=$matches[1]&embed=true\";s:29:\"category/([^/]+)/trackback/?$\";s:35:\"index.php?category=$matches[1]&tb=1\";s:37:\"category/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?category=$matches[1]&paged=$matches[2]\";s:44:\"category/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?category=$matches[1]&cpage=$matches[2]\";s:33:\"category/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?category=$matches[1]&page=$matches[2]\";s:25:\"category/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"category/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"category/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"category/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"category/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"category/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"politics/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"politics/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"politics/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"politics/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"politics/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"politics/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"politics/([^/]+)/embed/?$\";s:41:\"index.php?politics=$matches[1]&embed=true\";s:29:\"politics/([^/]+)/trackback/?$\";s:35:\"index.php?politics=$matches[1]&tb=1\";s:37:\"politics/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?politics=$matches[1]&paged=$matches[2]\";s:44:\"politics/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?politics=$matches[1]&cpage=$matches[2]\";s:33:\"politics/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?politics=$matches[1]&page=$matches[2]\";s:25:\"politics/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"politics/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"politics/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"politics/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"politics/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"politics/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"social/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"social/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"social/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"social/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"social/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"social/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"social/([^/]+)/embed/?$\";s:39:\"index.php?social=$matches[1]&embed=true\";s:27:\"social/([^/]+)/trackback/?$\";s:33:\"index.php?social=$matches[1]&tb=1\";s:35:\"social/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?social=$matches[1]&paged=$matches[2]\";s:42:\"social/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?social=$matches[1]&cpage=$matches[2]\";s:31:\"social/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?social=$matches[1]&page=$matches[2]\";s:23:\"social/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"social/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"social/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"social/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"social/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"social/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"supports/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"supports/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"supports/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"supports/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"supports/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"supports/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"supports/([^/]+)/embed/?$\";s:41:\"index.php?supports=$matches[1]&embed=true\";s:29:\"supports/([^/]+)/trackback/?$\";s:35:\"index.php?supports=$matches[1]&tb=1\";s:37:\"supports/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?supports=$matches[1]&paged=$matches[2]\";s:44:\"supports/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?supports=$matches[1]&cpage=$matches[2]\";s:33:\"supports/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?supports=$matches[1]&page=$matches[2]\";s:25:\"supports/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"supports/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"supports/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"supports/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"supports/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"supports/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"backupwordpress/backupwordpress.php\";i:2;s:21:\"safe-svg/safe-svg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'free_beach', 'yes'),
(41, 'stylesheet', 'free_beach', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1614806514', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1600168924;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600200000;a:1:{s:19:\"hmbkp_schedule_hook\";a:1:{s:32:\"cca96d8e8eb145f82d1de5f95e04930e\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{s:2:\"id\";s:10:\"1599258956\";}s:8:\"interval\";i:86400;}}}i:1600204924;a:3:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600204925;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600204953;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600204954;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600560000;a:1:{s:19:\"hmbkp_schedule_hook\";a:1:{s:32:\"4e777061ee2882d9c29de2c2be63061f\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:1:{s:2:\"id\";s:10:\"1599258957\";}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599255226;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'new_admin_email', 'biloholovskyi@yandex.ru', 'yes'),
(156, 'current_theme', 'Twenty Nineteen/free_beach', 'yes'),
(157, 'theme_mods_free_beach', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'acf_version', '5.9.0', 'yes'),
(176, 'hmbkp_plugin_version', '3.10', 'yes'),
(179, 'hmbkp_schedule_1599258956', 'a:8:{s:11:\"max_backups\";i:7;s:8:\"excludes\";a:0:{}s:4:\"type\";s:8:\"database\";s:12:\"reoccurrence\";s:5:\"daily\";s:19:\"schedule_start_time\";d:1599336000;s:5:\"email\";a:1:{s:5:\"email\";s:0:\"\";}s:14:\"duration_total\";i:20795561234;s:16:\"backup_run_count\";i:13;}', 'yes'),
(180, 'hmbkp_schedule_1599258957', 'a:7:{s:11:\"max_backups\";i:3;s:8:\"excludes\";a:0:{}s:4:\"type\";s:8:\"complete\";s:12:\"reoccurrence\";s:6:\"weekly\";s:19:\"schedule_start_time\";d:1599350400;s:14:\"duration_total\";i:3199367960;s:16:\"backup_run_count\";i:2;}', 'yes'),
(240, 'category_children', 'a:0:{}', 'yes'),
(421, '_site_transient_timeout_browser_793ea3497a77421b96b8df5f2029743c', '1600285201', 'no'),
(422, '_site_transient_browser_793ea3497a77421b96b8df5f2029743c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(423, '_site_transient_timeout_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', '1600285202', 'no'),
(424, '_site_transient_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(432, '_site_transient_timeout_browser_7be0d3593db388ed49727cdeeaa640a6', '1600290538', 'no'),
(433, '_site_transient_browser_7be0d3593db388ed49727cdeeaa640a6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.105\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(454, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1600161784;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}', 'no'),
(457, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"biloholovskyi@yandex.ru\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1599686690;}', 'no'),
(545, '_transient_timeout_hmbkp_database_size', '1600766169', 'no'),
(546, '_transient_hmbkp_database_size', '442368', 'no'),
(547, '_transient_timeout_hmbkp_root_size', '1600248547', 'no'),
(548, '_transient_hmbkp_root_size', '0', 'no'),
(549, '_transient_timeout_hmbkp_schedules', '1600766169', 'no'),
(550, '_transient_hmbkp_schedules', 'a:2:{i:0;s:25:\"hmbkp_schedule_1599258956\";i:1;s:25:\"hmbkp_schedule_1599258957\";}', 'no'),
(553, '_site_transient_timeout_theme_roots', '1600163585', 'no'),
(554, '_site_transient_theme_roots', 'a:4:{s:10:\"free_beach\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(555, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1600161787;s:7:\"checked\";a:4:{s:10:\"free_beach\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(556, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600161788;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:35:\"backupwordpress/backupwordpress.php\";s:4:\"3.10\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.9\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:35:\"backupwordpress/backupwordpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/backupwordpress\";s:4:\"slug\";s:15:\"backupwordpress\";s:6:\"plugin\";s:35:\"backupwordpress/backupwordpress.php\";s:11:\"new_version\";s:4:\"3.10\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/backupwordpress/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/backupwordpress.3.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/backupwordpress/assets/icon-256x256.jpg?rev=1105225\";s:2:\"1x\";s:68:\"https://ps.w.org/backupwordpress/assets/icon-128x128.png?rev=1105225\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/backupwordpress/assets/banner-1544x500.jpg?rev=904756\";s:2:\"1x\";s:69:\"https://ps.w.org/backupwordpress/assets/banner-772x250.jpg?rev=904756\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 15 2020 г., 09:16
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1599255208'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(7, 7, '_edit_lock', '1599688736:1'),
(8, 7, '_wp_page_template', 'page-home.php'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1599259330:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1599688088:1'),
(13, 12, '_wp_attached_file', '2020/09/news6.png'),
(14, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:408;s:6:\"height\";i:518;s:4:\"file\";s:17:\"2020/09/news6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news6-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, 'Politics', '107'),
(16, 11, '_Politics', 'field_5f52c2f40ec51'),
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1599260833:1'),
(19, 18, '_edit_last', '1'),
(20, 18, 'telegram', 'https://teleg.run/'),
(21, 18, '_telegram', 'field_5f52c8c7cd836'),
(22, 18, 'whatsapp', 'https://www.wa.me/'),
(23, 18, '_whatsapp', 'field_5f52c8e6cd837'),
(24, 18, 'vk', ''),
(25, 18, '_vk', 'field_5f52c8f9cd838'),
(26, 18, 'instagram', ''),
(27, 18, '_instagram', 'field_5f52c907cd839'),
(28, 18, '_edit_lock', '1599688939:1'),
(29, 20, '_edit_last', '1'),
(30, 20, '_edit_lock', '1599296818:1'),
(31, 21, '_edit_last', '1'),
(32, 21, '_edit_lock', '1599688229:1'),
(33, 22, '_edit_last', '1'),
(34, 22, '_edit_lock', '1599688179:1'),
(35, 23, '_edit_last', '1'),
(36, 23, '_edit_lock', '1600161263:1'),
(37, 24, '_edit_last', '1'),
(38, 24, '_edit_lock', '1599688136:1'),
(39, 25, '_edit_last', '1'),
(40, 25, '_edit_lock', '1599487733:1'),
(41, 32, '_edit_last', '1'),
(42, 32, '_edit_lock', '1599301689:1'),
(43, 32, '_thumbnail_id', '12'),
(44, 32, 'news_cat', '23'),
(45, 32, '_news_cat', 'field_5f535e38bb58e'),
(46, 32, 'news_type', 'image'),
(47, 32, '_news_type', 'field_5f535e71bb58f'),
(48, 32, 'news_size', 'big: Большая'),
(49, 32, '_news_size', 'field_5f535eeebb590'),
(50, 32, 'small_desc', ''),
(51, 32, '_small_desc', 'field_5f535f6fbb591'),
(52, 32, 'subtitle', ''),
(53, 32, '_subtitle', 'field_5f535fbabb592'),
(54, 32, 'news_txt', ''),
(55, 32, '_news_txt', 'field_5f535fcebb593'),
(56, 33, '_edit_last', '1'),
(57, 33, '_edit_lock', '1599304097:1'),
(58, 34, '_wp_attached_file', '2020/09/news3.png'),
(59, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:408;s:6:\"height\";i:518;s:4:\"file\";s:17:\"2020/09/news3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news3-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 33, '_thumbnail_id', '34'),
(61, 33, 'news_cat', '21'),
(62, 33, '_news_cat', 'field_5f535e38bb58e'),
(63, 33, 'news_type', 'video'),
(64, 33, '_news_type', 'field_5f535e71bb58f'),
(65, 33, 'small_desc', ''),
(66, 33, '_small_desc', 'field_5f535f6fbb591'),
(67, 33, 'subtitle', ''),
(68, 33, '_subtitle', 'field_5f535fbabb592'),
(69, 33, 'news_txt', ''),
(70, 33, '_news_txt', 'field_5f535fcebb593'),
(72, 36, '_edit_lock', '1599483444:1'),
(81, 36, '_thumbnail_id', '12'),
(83, 1, '_wp_trash_meta_status', 'publish'),
(84, 1, '_wp_trash_meta_time', '1599308972'),
(85, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82'),
(86, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(87, 44, '_edit_lock', '1599467176:1'),
(88, 45, '_wp_attached_file', '2020/09/news5.png'),
(89, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:408;s:6:\"height\";i:518;s:4:\"file\";s:17:\"2020/09/news5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news5-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 44, '_thumbnail_id', '45'),
(92, 47, '_edit_lock', '1599688716:1'),
(93, 48, '_wp_attached_file', '2020/09/news2.png'),
(94, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:844;s:6:\"height\";i:518;s:4:\"file\";s:17:\"2020/09/news2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"news2-768x471.png\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 47, '_thumbnail_id', '48'),
(97, 50, '_edit_lock', '1599475207:1'),
(99, 50, '_thumbnail_id', '61'),
(100, 52, '_edit_lock', '1599474193:1'),
(102, 52, '_thumbnail_id', '34'),
(105, 56, '_edit_lock', '1599472040:1'),
(106, 57, '_wp_attached_file', '2020/09/news4.png'),
(107, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:408;s:6:\"height\";i:518;s:4:\"file\";s:17:\"2020/09/news4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news4-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 56, '_thumbnail_id', '12'),
(110, 59, '_edit_lock', '1599474093:1'),
(112, 59, '_thumbnail_id', '48'),
(113, 61, '_wp_attached_file', '2020/09/news.png'),
(114, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:735;s:6:\"height\";i:518;s:4:\"file\";s:16:\"2020/09/news.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"news-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"news-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 62, '_edit_last', '1'),
(119, 62, '_edit_lock', '1599465968:1'),
(121, 59, '_edit_last', '1'),
(123, 59, 'video', '1'),
(124, 59, '_video', 'field_5f53a01c3791c'),
(125, 59, 'video_link', 'uSLJ7DzHcAw'),
(126, 59, '_video_link', 'field_5f53a02c3791d'),
(127, 65, 'video', '1'),
(128, 65, '_video', 'field_5f53a01c3791c'),
(129, 65, 'video_link', 'youtube.com'),
(130, 65, '_video_link', 'field_5f53a02c3791d'),
(132, 66, 'video', '1'),
(133, 66, '_video', 'field_5f53a01c3791c'),
(134, 66, 'video_link', 'youtube.com'),
(135, 66, '_video_link', 'field_5f53a02c3791d'),
(137, 56, '_edit_last', '1'),
(139, 56, 'video', '0'),
(140, 56, '_video', 'field_5f53a01c3791c'),
(141, 67, 'video', '0'),
(142, 67, '_video', 'field_5f53a01c3791c'),
(144, 68, 'video', '0'),
(145, 68, '_video', 'field_5f53a01c3791c'),
(147, 69, 'video', '0'),
(148, 69, '_video', 'field_5f53a01c3791c'),
(150, 70, 'video', '0'),
(151, 70, '_video', 'field_5f53a01c3791c'),
(153, 71, 'video', '0'),
(154, 71, '_video', 'field_5f53a01c3791c'),
(156, 72, 'video', '0'),
(157, 72, '_video', 'field_5f53a01c3791c'),
(159, 73, 'video', '0'),
(160, 73, '_video', 'field_5f53a01c3791c'),
(162, 74, 'video', '0'),
(163, 74, '_video', 'field_5f53a01c3791c'),
(165, 75, 'video', '0'),
(166, 75, '_video', 'field_5f53a01c3791c'),
(168, 76, 'video', '0'),
(169, 76, '_video', 'field_5f53a01c3791c'),
(171, 77, 'video', '0'),
(172, 77, '_video', 'field_5f53a01c3791c'),
(175, 78, 'video', '0'),
(176, 78, '_video', 'field_5f53a01c3791c'),
(178, 79, 'video', '0'),
(179, 79, '_video', 'field_5f53a01c3791c'),
(181, 80, 'video', '0'),
(182, 80, '_video', 'field_5f53a01c3791c'),
(185, 81, 'video', '0'),
(186, 81, '_video', 'field_5f53a01c3791c'),
(188, 82, 'video', '0'),
(189, 82, '_video', 'field_5f53a01c3791c'),
(191, 83, 'video', '0'),
(192, 83, '_video', 'field_5f53a01c3791c'),
(197, 52, '_edit_last', '1'),
(199, 52, 'video', '1'),
(200, 52, '_video', 'field_5f53a01c3791c'),
(201, 52, 'video_link', 'QZbuj3RJcjI'),
(202, 52, '_video_link', 'field_5f53a02c3791d'),
(203, 84, 'video', '1'),
(204, 84, '_video', 'field_5f53a01c3791c'),
(205, 84, 'video_link', 'QZbuj3RJcjI'),
(206, 84, '_video_link', 'field_5f53a02c3791d'),
(209, 85, 'video', '1'),
(210, 85, '_video', 'field_5f53a01c3791c'),
(211, 85, 'video_link', 'uSLJ7DzHcAw'),
(212, 85, '_video_link', 'field_5f53a02c3791d'),
(214, 50, '_edit_last', '1'),
(216, 50, 'video', '0'),
(217, 50, '_video', 'field_5f53a01c3791c'),
(218, 54, 'video', '0'),
(219, 54, '_video', 'field_5f53a01c3791c'),
(221, 47, '_edit_last', '1'),
(223, 47, 'video', '0'),
(224, 47, '_video', 'field_5f53a01c3791c'),
(225, 49, 'video', '0'),
(226, 49, '_video', 'field_5f53a01c3791c'),
(228, 44, '_edit_last', '1'),
(230, 44, 'video', '0'),
(231, 44, '_video', 'field_5f53a01c3791c'),
(232, 46, 'video', '0'),
(233, 46, '_video', 'field_5f53a01c3791c'),
(235, 36, '_edit_last', '1'),
(237, 36, 'video', '0'),
(238, 36, '_video', 'field_5f53a01c3791c'),
(239, 42, 'video', '0'),
(240, 42, '_video', 'field_5f53a01c3791c'),
(241, 86, '_edit_last', '1'),
(242, 86, '_edit_lock', '1599470899:1'),
(245, 56, 'catt', '21'),
(246, 56, '_catt', 'field_5f55fd9bf7c46'),
(247, 88, 'video', '0'),
(248, 88, '_video', 'field_5f53a01c3791c'),
(249, 88, 'catt', '21'),
(250, 88, '_catt', 'field_5f55fd9bf7c46'),
(253, 59, 'catt', '22'),
(254, 59, '_catt', 'field_5f55fd9bf7c46'),
(255, 89, 'video', '1'),
(256, 89, '_video', 'field_5f53a01c3791c'),
(257, 89, 'video_link', 'uSLJ7DzHcAw'),
(258, 89, '_video_link', 'field_5f53a02c3791d'),
(259, 89, 'catt', '22'),
(260, 89, '_catt', 'field_5f55fd9bf7c46'),
(263, 52, 'catt', '24'),
(264, 52, '_catt', 'field_5f55fd9bf7c46'),
(265, 90, 'video', '1'),
(266, 90, '_video', 'field_5f53a01c3791c'),
(267, 90, 'video_link', 'QZbuj3RJcjI'),
(268, 90, '_video_link', 'field_5f53a02c3791d'),
(269, 90, 'catt', '24'),
(270, 90, '_catt', 'field_5f55fd9bf7c46'),
(273, 50, 'catt', '21'),
(274, 50, '_catt', 'field_5f55fd9bf7c46'),
(275, 91, 'video', '0'),
(276, 91, '_video', 'field_5f53a01c3791c'),
(277, 91, 'catt', '21'),
(278, 91, '_catt', 'field_5f55fd9bf7c46'),
(281, 36, 'catt', '21'),
(282, 36, '_catt', 'field_5f55fd9bf7c46'),
(283, 92, 'video', '0'),
(284, 92, '_video', 'field_5f53a01c3791c'),
(285, 92, 'catt', '21'),
(286, 92, '_catt', 'field_5f55fd9bf7c46'),
(288, 93, 'video', '0'),
(289, 93, '_video', 'field_5f53a01c3791c'),
(290, 93, 'catt', '21'),
(291, 93, '_catt', 'field_5f55fd9bf7c46'),
(292, 94, '_edit_last', '1'),
(293, 94, '_edit_lock', '1599493433:1'),
(294, 96, '_edit_last', '1'),
(295, 96, '_edit_lock', '1599487707:1'),
(296, 96, 'project_link', 'https://www.whatsapp.com/?lang=en'),
(297, 96, '_project_link', 'field_5f562ee662ef2'),
(298, 96, 'projects', 'https://www.whatsapp.com/?lang=en'),
(299, 96, '_projects', 'field_5f562ee662ef2'),
(300, 25, '_wp_trash_meta_status', 'publish'),
(301, 25, '_wp_trash_meta_time', '1599487882'),
(302, 25, '_wp_desired_post_slug', 'group_5f535e303ee01'),
(303, 26, '_wp_trash_meta_status', 'publish'),
(304, 26, '_wp_trash_meta_time', '1599487882'),
(305, 26, '_wp_desired_post_slug', 'field_5f535e38bb58e'),
(306, 27, '_wp_trash_meta_status', 'publish'),
(307, 27, '_wp_trash_meta_time', '1599487882'),
(308, 27, '_wp_desired_post_slug', 'field_5f535e71bb58f'),
(309, 29, '_wp_trash_meta_status', 'publish'),
(310, 29, '_wp_trash_meta_time', '1599487882'),
(311, 29, '_wp_desired_post_slug', 'field_5f535f6fbb591'),
(312, 30, '_wp_trash_meta_status', 'publish'),
(313, 30, '_wp_trash_meta_time', '1599487883'),
(314, 30, '_wp_desired_post_slug', 'field_5f535fbabb592'),
(315, 31, '_wp_trash_meta_status', 'publish'),
(316, 31, '_wp_trash_meta_time', '1599487883'),
(317, 31, '_wp_desired_post_slug', 'field_5f535fcebb593'),
(318, 98, '_edit_last', '1'),
(319, 98, 'projects', 'https://www.google.com/'),
(320, 98, '_projects', 'field_5f562ee662ef2'),
(321, 98, '_edit_lock', '1599688753:1'),
(322, 99, '_edit_lock', '1599637901:1'),
(323, 100, '_wp_attached_file', '2020/09/news2-1.png'),
(324, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:844;s:6:\"height\";i:518;s:4:\"file\";s:19:\"2020/09/news2-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"news2-1-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"news2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"news2-1-768x471.png\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 99, '_thumbnail_id', '100'),
(327, 99, '_edit_last', '1'),
(329, 99, 'video', '0'),
(330, 99, '_video', 'field_5f53a01c3791c'),
(331, 99, 'catt', '23'),
(332, 99, '_catt', 'field_5f55fd9bf7c46'),
(333, 102, 'video', '0'),
(334, 102, '_video', 'field_5f53a01c3791c'),
(335, 102, 'catt', '23'),
(336, 102, '_catt', 'field_5f55fd9bf7c46'),
(337, 103, '_edit_lock', '1599638057:1'),
(339, 103, '_thumbnail_id', '61'),
(340, 103, '_edit_last', '1'),
(341, 103, '_encloseme', '1'),
(342, 103, 'video', '0'),
(343, 103, '_video', 'field_5f53a01c3791c'),
(344, 103, 'catt', '22'),
(345, 103, '_catt', 'field_5f55fd9bf7c46'),
(346, 105, 'video', '0'),
(347, 105, '_video', 'field_5f53a01c3791c'),
(348, 105, 'catt', '22'),
(349, 105, '_catt', 'field_5f55fd9bf7c46'),
(350, 103, '_wp_trash_meta_status', 'publish'),
(351, 103, '_wp_trash_meta_time', '1599638068'),
(352, 103, '_wp_desired_post_slug', 'test-title-2'),
(353, 99, '_wp_trash_meta_status', 'publish'),
(354, 99, '_wp_trash_meta_time', '1599638068'),
(355, 99, '_wp_desired_post_slug', 'test-title'),
(356, 3, '_edit_lock', '1599688731:1'),
(357, 107, '_wp_attached_file', '2020/09/Политика-СП.pdf'),
(358, 107, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:29:\"Политика-СП-pdf.jpg\";s:5:\"width\";i:1088;s:6:\"height\";i:1408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Политика-СП-pdf-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Политика-СП-pdf-791x1024.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Политика-СП-pdf-116x150.jpg\";s:5:\"width\";i:116;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(359, 24, '_wp_old_slug', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0'),
(360, 23, '_wp_old_slug', '%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81'),
(361, 22, '_wp_old_slug', '%d0%ba%d1%83%d0%bb%d1%8c%d1%82%d1%83%d1%80%d0%b0'),
(362, 21, '_wp_old_slug', 'lifestyle'),
(363, 20, '_wp_trash_meta_status', 'publish'),
(364, 20, '_wp_trash_meta_time', '1599688378'),
(365, 20, '_wp_desired_post_slug', 'covid-19'),
(366, 108, '_edit_lock', '1599688711:1'),
(368, 108, '_thumbnail_id', '45'),
(369, 108, '_edit_last', '1'),
(371, 108, 'video', '0'),
(372, 108, '_video', 'field_5f53a01c3791c'),
(373, 108, 'catt', '23'),
(374, 108, '_catt', 'field_5f55fd9bf7c46'),
(375, 110, 'video', '0'),
(376, 110, '_video', 'field_5f53a01c3791c'),
(377, 110, 'catt', '23'),
(378, 110, '_catt', 'field_5f55fd9bf7c46'),
(380, 111, 'video', '0'),
(381, 111, '_video', 'field_5f53a01c3791c'),
(382, 111, 'catt', '23'),
(383, 111, '_catt', 'field_5f55fd9bf7c46'),
(386, 47, 'catt', '22'),
(387, 47, '_catt', 'field_5f55fd9bf7c46'),
(388, 112, 'video', '0'),
(389, 112, '_video', 'field_5f53a01c3791c'),
(390, 112, 'catt', '22'),
(391, 112, '_catt', 'field_5f55fd9bf7c46'),
(392, 47, '_encloseme', '1'),
(393, 113, 'video', '0'),
(394, 113, '_video', 'field_5f53a01c3791c'),
(395, 113, 'catt', '22'),
(396, 113, '_catt', 'field_5f55fd9bf7c46');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 15 2020 г., 09:16
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-05 00:22:02', '2020-09-04 21:22:02', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82__trashed', '', '', '2020-09-05 15:29:32', '2020-09-05 12:29:32', '', 0, 'http://free-beach/app/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-05 00:22:02', '2020-09-04 21:22:02', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://free-beach/app/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-09-05 00:33:28', '2020-09-04 21:33:28', '', 0, 'http://free-beach/app/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-05 00:22:02', '2020-09-04 21:22:02', '', 'Политика конфиденциальности', '', 'private', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-10 01:01:14', '2020-09-09 22:01:14', '', 0, 'http://free-beach/app/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-09-05 00:33:28', '2020-09-04 21:33:28', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://free-beach/app/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-05 00:33:28', '2020-09-04 21:33:28', '', 2, 'http://free-beach/app/2020/09/05/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-09-05 00:37:37', '2020-09-04 21:37:37', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-09-05 00:37:37', '2020-09-04 21:37:37', '', 0, 'http://free-beach/app/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-09-05 00:37:37', '2020-09-04 21:37:37', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-05 00:37:37', '2020-09-04 21:37:37', '', 7, 'http://free-beach/app/2020/09/05/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-09-05 01:43:47', '2020-09-04 22:43:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"politics\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Политика конфидециальности', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8', 'publish', 'closed', 'closed', '', 'group_5f52c2d40ffbb', '', '', '2020-09-05 01:43:48', '2020-09-04 22:43:48', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2020-09-05 01:43:48', '2020-09-04 22:43:48', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Политика конфидециальности', 'Politics', 'publish', 'closed', 'closed', '', 'field_5f52c2f40ec51', '', '', '2020-09-05 01:43:48', '2020-09-04 22:43:48', '', 9, 'http://free-beach/app/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2020-09-05 01:45:40', '2020-09-04 22:45:40', '', 'Политика конфидециальности', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8', '', '', '2020-09-10 00:50:25', '2020-09-09 21:50:25', '', 0, 'http://free-beach/app/?post_type=politics&#038;p=11', 0, 'politics', '', 0),
(12, 1, '2020-09-05 01:45:12', '2020-09-04 22:45:12', '', 'news6', '', 'inherit', 'open', 'closed', '', 'news6', '', '', '2020-09-05 01:45:12', '2020-09-04 22:45:12', '', 11, 'http://free-beach/app/wp-content/uploads/2020/09/news6.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-09-05 02:09:06', '2020-09-04 23:09:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"social\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Соц.Сети', '%d1%81%d0%be%d1%86-%d1%81%d0%b5%d1%82%d0%b8', 'publish', 'closed', 'closed', '', 'group_5f52c8bd33c65', '', '', '2020-09-05 02:09:06', '2020-09-04 23:09:06', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-09-05 02:09:06', '2020-09-04 23:09:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'telegram', 'telegram', 'publish', 'closed', 'closed', '', 'field_5f52c8c7cd836', '', '', '2020-09-05 02:09:06', '2020-09-04 23:09:06', '', 13, 'http://free-beach/app/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2020-09-05 02:09:06', '2020-09-04 23:09:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_5f52c8e6cd837', '', '', '2020-09-05 02:09:06', '2020-09-04 23:09:06', '', 13, 'http://free-beach/app/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2020-09-05 02:09:06', '2020-09-04 23:09:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'VK', 'vk', 'publish', 'closed', 'closed', '', 'field_5f52c8f9cd838', '', '', '2020-09-05 02:09:06', '2020-09-04 23:09:06', '', 13, 'http://free-beach/app/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2020-09-05 02:09:06', '2020-09-04 23:09:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5f52c907cd839', '', '', '2020-09-05 02:09:06', '2020-09-04 23:09:06', '', 13, 'http://free-beach/app/?post_type=acf-field&p=17', 3, 'acf-field', '', 0),
(18, 1, '2020-09-05 02:10:11', '2020-09-04 23:10:11', '', 'Соцсети', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-09-10 01:02:18', '2020-09-09 22:02:18', '', 0, 'http://free-beach/app/?post_type=social&#038;p=18', 0, 'social', '', 0),
(20, 1, '2020-09-05 12:09:04', '2020-09-05 09:09:04', '', 'COVID 19', '', 'trash', 'closed', 'closed', '', 'covid-19__trashed', '', '', '2020-09-10 00:52:58', '2020-09-09 21:52:58', '', 0, 'http://free-beach/app/?post_type=category&#038;p=20', 0, 'category', '', 0),
(21, 1, '2020-09-05 12:11:59', '2020-09-05 09:11:59', '', 'Жители', '', 'publish', 'closed', 'closed', '', '%d0%b6%d0%b8%d1%82%d0%b5%d0%bb%d0%b8', '', '', '2020-09-10 00:52:49', '2020-09-09 21:52:49', '', 0, 'http://free-beach/app/?post_type=category&#038;p=21', 0, 'category', '', 0),
(22, 1, '2020-09-05 12:12:11', '2020-09-05 09:12:11', '', 'Благоустройство', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%b0%d0%b3%d0%be%d1%83%d1%81%d1%82%d1%80%d0%be%d0%b9%d1%81%d1%82%d0%b2%d0%be', '', '', '2020-09-10 00:51:58', '2020-09-09 21:51:58', '', 0, 'http://free-beach/app/?post_type=category&#038;p=22', 0, 'category', '', 0),
(23, 1, '2020-09-05 12:12:20', '2020-09-05 09:12:20', '', 'Газ', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%b0%d0%b7%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%86%d0%b8%d1%8f', '', '', '2020-09-15 12:16:44', '2020-09-15 09:16:44', '', 0, 'http://free-beach/app/?post_type=category&#038;p=23', 0, 'category', '', 0),
(24, 1, '2020-09-05 12:13:08', '2020-09-05 09:13:08', '', 'Пляж', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d1%8f%d0%b6', '', '', '2020-09-10 00:51:18', '2020-09-09 21:51:18', '', 0, 'http://free-beach/app/?post_type=category&#038;p=24', 0, 'category', '', 0),
(25, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Новости', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', 'trash', 'closed', 'closed', '', 'group_5f535e303ee01__trashed', '', '', '2020-09-07 17:11:22', '2020-09-07 14:11:22', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:8:\"category\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Рубрика', 'news_cat', 'trash', 'closed', 'closed', '', 'field_5f535e38bb58e__trashed', '', '', '2020-09-07 17:11:22', '2020-09-07 14:11:22', '', 25, 'http://free-beach/app/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:5:\"image\";s:16:\"Картинка\";s:5:\"video\";s:10:\"Видео\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Тип новости', 'news_type', 'trash', 'closed', 'closed', '', 'field_5f535e71bb58f__trashed', '', '', '2020-09-07 17:11:22', '2020-09-07 14:11:22', '', 25, 'http://free-beach/app/?post_type=acf-field&#038;p=27', 1, 'acf-field', '', 0),
(29, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'краткое описание', 'small_desc', 'trash', 'closed', 'closed', '', 'field_5f535f6fbb591__trashed', '', '', '2020-09-07 17:11:22', '2020-09-07 14:11:22', '', 25, 'http://free-beach/app/?post_type=acf-field&#038;p=29', 2, 'acf-field', '', 0),
(30, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Подзаголовок', 'subtitle', 'trash', 'closed', 'closed', '', 'field_5f535fbabb592__trashed', '', '', '2020-09-07 17:11:23', '2020-09-07 14:11:23', '', 25, 'http://free-beach/app/?post_type=acf-field&#038;p=30', 3, 'acf-field', '', 0),
(31, 1, '2020-09-05 12:52:57', '2020-09-05 09:52:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Текст', 'news_txt', 'trash', 'closed', 'closed', '', 'field_5f535fcebb593__trashed', '', '', '2020-09-07 17:11:23', '2020-09-07 14:11:23', '', 25, 'http://free-beach/app/?post_type=acf-field&#038;p=31', 4, 'acf-field', '', 0),
(32, 1, '2020-09-05 13:15:58', '2020-09-05 10:15:58', '', 'тест картинка', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82-%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d0%ba%d0%b0', '', '', '2020-09-05 13:29:57', '2020-09-05 10:29:57', '', 0, 'http://free-beach/app/?post_type=news&#038;p=32', 0, 'news', '', 0),
(33, 1, '2020-09-05 14:08:07', '2020-09-05 11:08:07', '', 'текст видео', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d0%ba%d1%81%d1%82-%d0%b2%d0%b8%d0%b4%d0%b5%d0%be', '', '', '2020-09-05 14:08:07', '2020-09-05 11:08:07', '', 0, 'http://free-beach/app/?post_type=news&#038;p=33', 0, 'news', '', 0),
(34, 1, '2020-09-05 14:07:49', '2020-09-05 11:07:49', '', 'news3', '', 'inherit', 'open', 'closed', '', 'news3', '', '', '2020-09-05 14:07:49', '2020-09-05 11:07:49', '', 33, 'http://free-beach/app/wp-content/uploads/2020/09/news3.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2020-09-05 15:10:23', '2020-09-05 12:10:23', '', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:', '', 'publish', 'open', 'open', '', 'test', '', '', '2020-09-07 13:43:04', '2020-09-07 10:43:04', '', 0, 'http://free-beach/app/?p=36', 0, 'post', '', 0),
(37, 1, '2020-09-05 15:10:23', '2020-09-05 12:10:23', '', 'test', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:10:23', '2020-09-05 12:10:23', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-05 15:18:20', '2020-09-05 12:18:20', '<!-- wp:image {\"id\":34,\"width\":406,\"height\":515,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://free-beach/app/wp-content/uploads/2020/09/news3.png\" alt=\"\" class=\"wp-image-34\" width=\"406\" height=\"515\"/></figure>\n<!-- /wp:image -->', 'test', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:18:20', '2020-09-05 12:18:20', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-09-05 15:20:02', '2020-09-05 12:20:02', '<!-- wp:image {\"id\":34,\"width\":406,\"height\":515,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://free-beach/app/wp-content/uploads/2020/09/news3.png\" alt=\"\" class=\"wp-image-34\" width=\"406\" height=\"515\"/></figure>\n<!-- /wp:image -->', 'testі', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:20:02', '2020-09-05 12:20:02', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-05 15:25:54', '2020-09-05 12:25:54', '<!-- wp:image {\"id\":34,\"width\":406,\"height\":515,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://free-beach/app/wp-content/uploads/2020/09/news3.png\" alt=\"\" class=\"wp-image-34\" width=\"406\" height=\"515\"/></figure>\n<!-- /wp:image -->', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:--> <!--                        программа мероприятий', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:25:54', '2020-09-05 12:25:54', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-09-05 15:26:10', '2020-09-05 12:26:10', '<!-- wp:image {\"id\":34,\"width\":406,\"height\":515,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://free-beach/app/wp-content/uploads/2020/09/news3.png\" alt=\"\" class=\"wp-image-34\" width=\"406\" height=\"515\"/></figure>\n<!-- /wp:image -->', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:26:10', '2020-09-05 12:26:10', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-09-05 15:28:51', '2020-09-05 12:28:51', '', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-05 15:28:51', '2020-09-05 12:28:51', '', 36, 'http://free-beach/app/2020/09/05/36-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-09-05 15:29:32', '2020-09-05 12:29:32', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-09-05 15:29:32', '2020-09-05 12:29:32', '', 1, 'http://free-beach/app/2020/09/05/1-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-09-05 15:30:32', '2020-09-05 12:30:32', '', '«Никто наши интересы во власти отстаивать не будет»', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b8%d0%ba%d1%82%d0%be-%d0%bd%d0%b0%d1%88%d0%b8-%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b5%d1%81%d1%8b-%d0%b2%d0%be-%d0%b2%d0%bb%d0%b0%d1%81%d1%82%d0%b8-%d0%be%d1%82%d1%81%d1%82%d0%b0%d0%b8', '', '', '2020-09-07 11:26:15', '2020-09-07 08:26:15', '', 0, 'http://free-beach/app/?p=44', 0, 'post', '', 0),
(45, 1, '2020-09-05 15:30:22', '2020-09-05 12:30:22', '', 'news5', '', 'inherit', 'open', 'closed', '', 'news5', '', '', '2020-09-05 15:30:22', '2020-09-05 12:30:22', '', 44, 'http://free-beach/app/wp-content/uploads/2020/09/news5.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-09-05 15:30:32', '2020-09-05 12:30:32', '', '«Никто наши интересы во власти отстаивать не будет»', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-09-05 15:30:32', '2020-09-05 12:30:32', '', 44, 'http://free-beach/app/2020/09/05/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-09-05 15:55:14', '2020-09-05 12:55:14', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'publish', 'open', 'open', '', '%d0%ba%d1%82%d0%be-%d1%82%d0%be-%d1%85%d0%be%d1%87%d0%b5%d1%82-%d0%bf%d0%b5%d1%80%d0%b5%d0%b8%d0%bc%d0%b5%d0%bd%d0%be%d0%b2%d0%b0%d1%82%d1%8c-%d0%b1%d0%b0%d1%83%d0%bc%d0%b0%d0%bd%d0%b0-%d0%b8-%d1%81', '', '', '2020-09-10 01:00:56', '2020-09-09 22:00:56', '', 0, 'http://free-beach/app/?p=47', 0, 'post', '', 0),
(48, 1, '2020-09-05 15:54:54', '2020-09-05 12:54:54', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2020-09-05 15:54:54', '2020-09-05 12:54:54', '', 47, 'http://free-beach/app/wp-content/uploads/2020/09/news2.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-09-05 15:55:14', '2020-09-05 12:55:14', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-09-05 15:55:14', '2020-09-05 12:55:14', '', 47, 'http://free-beach/app/2020/09/05/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-09-05 16:09:29', '2020-09-05 13:09:29', '', 'Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2020-09-07 13:36:40', '2020-09-07 10:36:40', '', 0, 'http://free-beach/app/?p=50', 0, 'post', '', 0),
(51, 1, '2020-09-05 16:09:29', '2020-09-05 13:09:29', '', 'test', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-09-05 16:09:29', '2020-09-05 13:09:29', '', 50, 'http://free-beach/app/2020/09/05/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-09-05 16:44:50', '2020-09-05 13:44:50', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'publish', 'open', 'open', '', 'test2', '', '', '2020-09-07 13:21:55', '2020-09-07 10:21:55', '', 0, 'http://free-beach/app/?p=52', 0, 'post', '', 0),
(53, 1, '2020-09-05 16:44:50', '2020-09-05 13:44:50', '', 'test2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-05 16:44:50', '2020-09-05 13:44:50', '', 52, 'http://free-beach/app/2020/09/05/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-09-05 17:01:35', '2020-09-05 14:01:35', '', 'Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-09-05 17:01:35', '2020-09-05 14:01:35', '', 50, 'http://free-beach/app/2020/09/05/50-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-05 17:01:55', '2020-09-05 14:01:55', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-05 17:01:55', '2020-09-05 14:01:55', '', 52, 'http://free-beach/app/2020/09/05/52-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-09-05 17:05:18', '2020-09-05 14:05:18', '<!-- wp:paragraph -->\n<p><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'publish', 'open', 'open', '', '1-%d1%81%d0%b5%d0%bd%d1%82%d1%8f%d0%b1%d1%80%d1%8f-%d0%b2-%d0%ba%d0%b0%d0%b7%d0%b0%d0%bd%d0%b8-%d0%be%d1%82%d0%ba%d1%80%d0%be%d1%8e%d1%82-%d0%bd%d0%be%d0%b2%d1%8b%d0%b9-%d1%84%d1%83%d0%b4-%d0%bc%d0%be', '', '', '2020-09-07 12:31:12', '2020-09-07 09:31:12', '', 0, 'http://free-beach/app/?p=56', 0, 'post', '', 0),
(57, 1, '2020-09-05 17:05:08', '2020-09-05 14:05:08', '', 'news4', '', 'inherit', 'open', 'closed', '', 'news4', '', '', '2020-09-05 17:05:08', '2020-09-05 14:05:08', '', 56, 'http://free-beach/app/wp-content/uploads/2020/09/news4.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2020-09-05 17:05:18', '2020-09-05 14:05:18', '', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-05 17:05:18', '2020-09-05 14:05:18', '', 56, 'http://free-beach/app/2020/09/05/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-09-05 17:06:05', '2020-09-05 14:06:05', '', 'В центре Казани насмерть сбили пешехода', '', 'publish', 'open', 'open', '', '%d0%b2-%d1%86%d0%b5%d0%bd%d1%82%d1%80%d0%b5-%d0%ba%d0%b0%d0%b7%d0%b0%d0%bd%d0%b8-%d0%bd%d0%b0%d1%81%d0%bc%d0%b5%d1%80%d1%82%d1%8c-%d1%81%d0%b1%d0%b8%d0%bb%d0%b8-%d0%bf%d0%b5%d1%88%d0%b5%d1%85%d0%be', '', '', '2020-09-07 12:47:48', '2020-09-07 09:47:48', '', 0, 'http://free-beach/app/?p=59', 0, 'post', '', 0),
(60, 1, '2020-09-05 17:06:05', '2020-09-05 14:06:05', '', 'В центре Казани насмерть сбили пешехода', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-09-05 17:06:05', '2020-09-05 14:06:05', '', 59, 'http://free-beach/app/2020/09/05/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-09-05 17:07:14', '2020-09-05 14:07:14', '', 'news', '', 'inherit', 'open', 'closed', '', 'news', '', '', '2020-09-05 17:07:14', '2020-09-05 14:07:14', '', 50, 'http://free-beach/app/wp-content/uploads/2020/09/news.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2020-09-05 17:27:22', '2020-09-05 14:27:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'видео', '%d0%b2%d0%b8%d0%b4%d0%b5%d0%be', 'publish', 'closed', 'closed', '', 'group_5f539f679bd01', '', '', '2020-09-05 17:27:24', '2020-09-05 14:27:24', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2020-09-05 17:27:22', '2020-09-05 14:27:22', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'видео', 'video', 'publish', 'closed', 'closed', '', 'field_5f53a01c3791c', '', '', '2020-09-05 17:27:22', '2020-09-05 14:27:22', '', 62, 'http://free-beach/app/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2020-09-05 17:27:22', '2020-09-05 14:27:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f53a01c3791c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'video link', 'video_link', 'publish', 'closed', 'closed', '', 'field_5f53a02c3791d', '', '', '2020-09-05 17:27:22', '2020-09-05 14:27:22', '', 62, 'http://free-beach/app/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2020-09-05 17:27:50', '2020-09-05 14:27:50', '', 'В центре Казани насмерть сбили пешехода', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-09-05 17:27:50', '2020-09-05 14:27:50', '', 59, 'http://free-beach/app/2020/09/05/59-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-09-05 17:30:30', '2020-09-05 14:30:30', '', 'В центре Казани насмерть сбили пешехода', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-09-05 17:30:30', '2020-09-05 14:30:30', '', 59, 'http://free-beach/app/2020/09/05/59-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-09-07 09:49:19', '2020-09-07 06:49:19', '<!-- wp:paragraph -->\n<p>Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:49:19', '2020-09-07 06:49:19', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-09-07 09:50:25', '2020-09-07 06:50:25', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:50:25', '2020-09-07 06:50:25', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-09-07 09:51:12', '2020-09-07 06:51:12', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:51:12', '2020-09-07 06:51:12', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-09-07 09:51:29', '2020-09-07 06:51:29', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:51:29', '2020-09-07 06:51:29', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-09-07 09:52:07', '2020-09-07 06:52:07', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:52:07', '2020-09-07 06:52:07', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-09-07 09:52:24', '2020-09-07 06:52:24', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 1,5 метра. На территории площадки установят также и санитайзеры.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:52:24', '2020-09-07 06:52:24', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-09-07 09:53:31', '2020-09-07 06:53:31', '<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:53:31', '2020-09-07 06:53:31', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-09-07 09:54:38', '2020-09-07 06:54:38', '<!-- wp:paragraph {\"className\":\"subtitle\"} -->\n<p class=\"subtitle\">Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:54:38', '2020-09-07 06:54:38', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-07 09:55:02', '2020-09-07 06:55:02', '<!-- wp:paragraph {\"className\":\"subtitle\"} -->\n<p class=\"subtitle\">Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:55:02', '2020-09-07 06:55:02', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-07 09:55:47', '2020-09-07 06:55:47', '<!-- wp:paragraph {\"className\":\"subtitle\"} -->\n<p class=\"subtitle\">Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 254 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:55:47', '2020-09-07 06:55:47', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-07 09:57:10', '2020-09-07 06:57:10', '<!-- wp:paragraph {\"className\":\"subtitle\"} -->\n<p class=\"subtitle\">Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 09:57:10', '2020-09-07 06:57:10', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2020-09-07 10:23:37', '2020-09-07 07:23:37', '<!-- wp:paragraph {\"className\":\"subtitle\"} -->\n<p class=\"subtitle\">Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>aloha test</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:23:37', '2020-09-07 07:23:37', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-09-07 10:25:42', '2020-09-07 07:25:42', '<!-- wp:paragraph -->\n<p><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>aloha test</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:25:42', '2020-09-07 07:25:42', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-07 10:26:14', '2020-09-07 07:26:14', '<!-- wp:paragraph -->\n<p><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:26:14', '2020-09-07 07:26:14', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-09-07 10:34:23', '2020-09-07 07:34:23', '<!-- wp:heading {\"level\":3} -->\n<h3><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:34:23', '2020-09-07 07:34:23', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-09-07 10:34:41', '2020-09-07 07:34:41', '<!-- wp:heading -->\n<h2><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:34:41', '2020-09-07 07:34:41', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-09-07 10:35:24', '2020-09-07 07:35:24', '<!-- wp:paragraph -->\n<p><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 10:35:24', '2020-09-07 07:35:24', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-09-07 11:04:17', '2020-09-07 08:04:17', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-07 11:04:17', '2020-09-07 08:04:17', '', 52, 'http://free-beach/app/2020/09/07/52-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-09-07 11:09:17', '2020-09-07 08:09:17', '', 'В центре Казани насмерть сбили пешехода', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-09-07 11:09:17', '2020-09-07 08:09:17', '', 59, 'http://free-beach/app/2020/09/07/59-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-09-07 12:30:37', '2020-09-07 09:30:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Рубрики', '%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 'publish', 'closed', 'closed', '', 'group_5f55fd8add9da', '', '', '2020-09-07 12:30:37', '2020-09-07 09:30:37', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=86', 0, 'acf-field-group', '', 0),
(87, 1, '2020-09-07 12:30:37', '2020-09-07 09:30:37', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:8:\"category\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Рубрики', 'catt', 'publish', 'closed', 'closed', '', 'field_5f55fd9bf7c46', '', '', '2020-09-07 12:30:37', '2020-09-07 09:30:37', '', 86, 'http://free-beach/app/?post_type=acf-field&p=87', 0, 'acf-field', '', 0),
(88, 1, '2020-09-07 12:31:12', '2020-09-07 09:31:12', '<!-- wp:paragraph -->\n<p><strong>Перед входом всем посетителям будут измерять температуру и выдавать медицинские маски и напоминать о необходимости соблюдать социальную дистанцию в 2 метра. На территории площадки установят также и санитайзеры.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Так, с 15.00 там начнутся показательные выступления парашютистов, полеты воздушных судов гражданской и дальней авиации, а также пилотажных групп «Стрижи» и «Первый полет». Всего в мероприятии примут участие порядка 30 воздушных судов. Так, в частности, над акваторией реки Казанка на высоте от 300 до 800 метров и на отрезке от моста Миллениум и до Ленинской дамбы пролетят сверхзвуковой стратегический бомбардировщик-ракетоносец Ту-160, турбовинтовой стратегический бомбардировщик-ракетоносец Ту-95 МС, дальний ракетоносец-бомбардировщик Ту-22 М3, а также вертолеты Ми-8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">то же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"news__par\"} -->\n<p class=\"news__par\">Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей»</p>\n<!-- /wp:paragraph -->', '1 сентября в Казани откроют новый фуд-молл', 'Сегодня, 25 июля, в столице Татарстана на площадке около Центра семьи «Казан», или как его называют горожане «Чаша», пройдет авиационный праздник «Я выбираю небо-2020», посвященный Дню воздушного флота России.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-09-07 12:31:12', '2020-09-07 09:31:12', '', 56, 'http://free-beach/app/2020/09/07/56-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-09-07 12:47:48', '2020-09-07 09:47:48', '', 'В центре Казани насмерть сбили пешехода', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-09-07 12:47:48', '2020-09-07 09:47:48', '', 59, 'http://free-beach/app/2020/09/07/59-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-09-07 13:21:55', '2020-09-07 10:21:55', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-07 13:21:55', '2020-09-07 10:21:55', '', 52, 'http://free-beach/app/2020/09/07/52-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-09-07 13:36:40', '2020-09-07 10:36:40', '', 'Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-09-07 13:36:40', '2020-09-07 10:36:40', '', 50, 'http://free-beach/app/2020/09/07/50-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-09-07 13:42:53', '2020-09-07 10:42:53', '', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-07 13:42:53', '2020-09-07 10:42:53', '', 36, 'http://free-beach/app/2020/09/07/36-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-09-07 13:43:04', '2020-09-07 10:43:04', '', 'Праздник «Я выбираю небо-2020» в Казани 25 июля:', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-07 13:43:04', '2020-09-07 10:43:04', '', 36, 'http://free-beach/app/2020/09/07/36-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-09-07 16:00:51', '2020-09-07 13:00:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"supports\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поддержать проект', '%d0%bf%d0%be%d0%b4%d0%b4%d0%b5%d1%80%d0%b6%d0%b0%d1%82%d1%8c-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82', 'publish', 'closed', 'closed', '', 'group_5f562ece9abc0', '', '', '2020-09-07 18:41:07', '2020-09-07 15:41:07', '', 0, 'http://free-beach/app/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2020-09-07 16:00:51', '2020-09-07 13:00:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'добавить линк', 'projects', 'publish', 'closed', 'closed', '', 'field_5f562ee662ef2', '', '', '2020-09-07 17:09:28', '2020-09-07 14:09:28', '', 94, 'http://free-beach/app/?post_type=acf-field&#038;p=95', 0, 'acf-field', '', 0),
(96, 1, '2020-09-07 16:01:27', '2020-09-07 13:01:27', '', 'Поддержать проект', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b4%d0%b5%d1%80%d0%b6%d0%b0%d1%82%d1%8c-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82', '', '', '2020-09-07 17:10:06', '2020-09-07 14:10:06', '', 0, 'http://free-beach/app/?post_type=support&#038;p=96', 0, 'support', '', 0),
(98, 1, '2020-09-07 18:41:33', '2020-09-07 15:41:33', '', 'Поддержать проект', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b4%d0%b5%d1%80%d0%b6%d0%b0%d1%82%d1%8c-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82', '', '', '2020-09-10 01:01:34', '2020-09-09 22:01:34', '', 0, 'http://free-beach/app/?post_type=supports&#038;p=98', 0, 'supports', '', 0),
(99, 1, '2020-09-09 10:49:25', '2020-09-09 07:49:25', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title', '', 'trash', 'open', 'open', '', 'test-title__trashed', '', '', '2020-09-09 10:54:28', '2020-09-09 07:54:28', '', 0, 'http://free-beach/app/?p=99', 0, 'post', '', 0),
(100, 1, '2020-09-09 10:49:05', '2020-09-09 07:49:05', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2-2', '', '', '2020-09-09 10:49:05', '2020-09-09 07:49:05', '', 99, 'http://free-beach/app/wp-content/uploads/2020/09/news2-1.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2020-09-09 10:49:25', '2020-09-09 07:49:25', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-09-09 10:49:25', '2020-09-09 07:49:25', '', 99, 'http://free-beach/app/2020/09/09/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-09-09 10:49:27', '2020-09-09 07:49:27', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-09-09 10:49:27', '2020-09-09 07:49:27', '', 99, 'http://free-beach/app/2020/09/09/99-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-09-09 10:52:20', '2020-09-09 07:52:20', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title 2', '', 'trash', 'open', 'open', '', 'test-title-2__trashed', '', '', '2020-09-09 10:54:28', '2020-09-09 07:54:28', '', 0, 'http://free-beach/app/?p=103', 0, 'post', '', 0),
(104, 1, '2020-09-09 10:52:20', '2020-09-09 07:52:20', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title 2', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2020-09-09 10:52:20', '2020-09-09 07:52:20', '', 103, 'http://free-beach/app/2020/09/09/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-09-09 10:52:23', '2020-09-09 07:52:23', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'test title 2', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2020-09-09 10:52:23', '2020-09-09 07:52:23', '', 103, 'http://free-beach/app/2020/09/09/103-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-09-10 00:31:22', '2020-09-09 21:31:22', '<!-- wp:heading -->\n<h2>Хто ми</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наша адреса сайту: http://free-beach/app.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Коментарі</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Медіафайли</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Контактні форми</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете \"Запам\'ятати мене\", ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Вбудований вміст з інших веб-сайтів</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Аналітика</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>З ким ми ділимося вашими даними</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Як довго ми зберігаємо ваші дані</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Які права ви маєте відносно своїх даних</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куди ми відправляємо ваші данні</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Ваша контактна інформація</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Додаткова інформація</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Як ми захищаємо ваші данні</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Які процедури проти втрати даних ми використовуємо</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Від яких третіх сторін ми отримуємо дані</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Вимоги до розкриття галузевих нормативних вимог</h3>\n<!-- /wp:heading -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-10 00:31:22', '2020-09-09 21:31:22', '', 3, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/3-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-09-10 00:50:14', '2020-09-09 21:50:14', '', 'Политика СП', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d1%81%d0%bf', '', '', '2020-09-10 00:50:14', '2020-09-09 21:50:14', '', 11, 'http://xn--90abhiommfbno0k6b.xn--p1ai/wp-content/uploads/2020/09/Политика-СП.pdf', 0, 'attachment', 'application/pdf', 0),
(108, 1, '2020-09-10 00:55:34', '2020-09-09 21:55:34', '<!-- wp:paragraph -->\n<p>куда писать то? где весь лонгрид должен быть?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://xn--90abhiommfbno0k6b.xn--p1ai/wp-content/uploads/2020/09/news2.png\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Тестовая запись', 'здесь краткое сообщение если я все верно понял', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c', '', '', '2020-09-10 00:56:54', '2020-09-09 21:56:54', '', 0, 'http://xn--90abhiommfbno0k6b.xn--p1ai/?p=108', 0, 'post', '', 0),
(109, 1, '2020-09-10 00:55:34', '2020-09-09 21:55:34', '<!-- wp:paragraph -->\n<p>куда писать то? где весь лонгрид должен быть?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://xn--90abhiommfbno0k6b.xn--p1ai/wp-content/uploads/2020/09/news2.png\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Тестовая запись', 'здесь краткое сообщение если я все верно понял', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2020-09-10 00:55:34', '2020-09-09 21:55:34', '', 108, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-09-10 00:55:35', '2020-09-09 21:55:35', '<!-- wp:paragraph -->\n<p>куда писать то? где весь лонгрид должен быть?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://xn--90abhiommfbno0k6b.xn--p1ai/wp-content/uploads/2020/09/news2.png\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Тестовая запись', 'здесь краткое сообщение если я все верно понял', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2020-09-10 00:55:35', '2020-09-09 21:55:35', '', 108, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-09-10 00:56:54', '2020-09-09 21:56:54', '<!-- wp:paragraph -->\n<p>куда писать то? где весь лонгрид должен быть?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://xn--90abhiommfbno0k6b.xn--p1ai/wp-content/uploads/2020/09/news2.png\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Тестовая запись', 'здесь краткое сообщение если я все верно понял', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2020-09-10 00:56:54', '2020-09-09 21:56:54', '', 108, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/108-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-09-10 00:59:26', '2020-09-09 21:59:26', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-09-10 00:59:26', '2020-09-09 21:59:26', '', 47, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/47-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-09-10 01:00:56', '2020-09-09 22:00:56', '', 'Кто-то хочет переименовать Баумана и сделать центр платным', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-09-10 01:00:56', '2020-09-09 22:00:56', '', 47, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/47-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-09-10 01:01:14', '2020-09-09 22:01:14', '', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-10 01:01:14', '2020-09-09 22:01:14', '', 3, 'http://xn--90abhiommfbno0k6b.xn--p1ai/2020/09/10/3-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, '1', '1', 0),
(3, 'Политика', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0', 0),
(4, 'Культура', '%d0%ba%d1%83%d0%bb%d1%8c%d1%82%d1%83%d1%80%d0%b0', 0),
(5, 'COVID 19', 'covid-19', 0),
(6, 'Lifestyle', 'lifestyle', 0),
(7, 'Бизнес', '%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 09 2020 г., 21:55
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 1, 0),
(44, 4, 0),
(47, 5, 0),
(50, 6, 0),
(52, 7, 0),
(56, 5, 0),
(59, 3, 0),
(99, 1, 0),
(103, 1, 0),
(108, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 09 2020 г., 22:00
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 15 2020 г., 09:16
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"188.234.17.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1599259537'),
(24, 1, 'session_tokens', 'a:1:{s:64:\"97d33d9a3f5dd47847b217664a4cc3a676c27590c0b75348d3fb65cb19809946\";a:4:{s:10:\"expiration\";i:1600334169;s:2:\"ip\";s:14:\"188.234.16.222\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1600161369;}}'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Сен 09 2020 г., 19:37
-- Последнее обновление: Сен 09 2020 г., 19:37
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByxJqi2/Bm2nxM.O6WSsXC.Oq30QSR/', 'admin', 'biloholovskyi@yandex.ru', '', '2020-09-04 21:22:01', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
