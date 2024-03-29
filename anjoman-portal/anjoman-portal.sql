-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2014 at 07:45 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anjoman-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `anjwp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_comments`
--

CREATE TABLE IF NOT EXISTS `anjwp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anjwp_comments`
--

INSERT INTO `anjwp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'آقای وردپرس', '', 'http://wordpress.org/', '', '2014-04-13 05:44:57', '2014-04-13 05:44:57', 'سلام،‌ این نوشته یک «دیدگاه» است. \nبرای پاک کردن یا ویرایش یک دیدگاه، باید وارد بخش مدیریت شوید، سپس به بخش دیدگاه‌ها بروید٬ در آن‌جا می‌توانید دیدگاه‌ها را ویرایش و یا پاک کنید.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_links`
--

CREATE TABLE IF NOT EXISTS `anjwp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_options`
--

CREATE TABLE IF NOT EXISTS `anjwp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `anjwp_options`
--

INSERT INTO `anjwp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/anjoman-portal', 'yes'),
(2, 'blogname', 'پرتال انجمن مدیران مسئول دفاتر مهندسی', 'yes'),
(3, 'blogdescription', 'یک سایت دیگر با وردپرس فارسی', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'mahlad365@gmail.com', 'yes'),
(6, 'start_of_week', '۱', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/anjoman-portal', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'anjoman-portal', 'yes'),
(45, 'stylesheet', 'anjoman-portal', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'anjwp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1397462160;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1397497653;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1397540940;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1397544768;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:64:"http://downloads.wordpress.org/release/fa_IR/wordpress-3.8.2.zip";s:6:"locale";s:5:"fa_IR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/fa_IR/wordpress-3.8.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.2";s:7:"version";s:5:"3.8.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-3.8.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-3.8.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-3.8.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-3.8.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.2";s:7:"version";s:5:"3.8.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1397454565;s:15:"version_checked";s:5:"3.8.2";s:12:"translations";a:0:{}}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1397451950;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"2.6.0";s:9:"hello.php";s:3:"1.6";s:23:"wp-jalali/wp-jalali.php";s:5:"4.5.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1397451950;s:7:"checked";a:4:{s:14:"anjoman-portal";s:3:"0.1";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(106, '_transient_random_seed', '4fe2407c5cb4dcbf3953c7021bb26c8e', 'yes'),
(107, 'auth_key', 'D1-o}DM*u Xh3#,<&mOS0ASSsp,w1SW^p(T]r9fF=]aZ3ER{4^^P1#Ets}21Oh7X', 'yes'),
(108, 'auth_salt', 'f88gvCvue<Z=G/g57D(#RgRkk~5oTtqUK$1--x8$>cW7VrZhF9lTqX`_3CuBykeJ', 'yes'),
(109, 'logged_in_key', '.Oy_^m~!$q/d?V]Y?&)NPn]l8-?PQ&j0A^Hp5H.>%ifud0hPTDV-W+xhx^kb=a2M', 'yes'),
(110, 'logged_in_salt', 'p8 -xyM#2dZXq[C;ROh+3o<!>bh*&%ByOv)Y_4Y2m7#Q3Vnlydv`o?T&rb`54V&<', 'yes'),
(111, 'nonce_key', 'o+W/e3WDJsNl6VO?N:^~/DJ>wYB98?GK@.u1Ik%kSWzY0G(3}WInPVD4uOI 0 o=', 'yes'),
(112, 'nonce_salt', '}(nZ&2j^~xlk7?i RlT}!]f.hUd3Rqw_XVshI:JpN@~QFAWSdlrF`0Ttn-?+]KoR', 'yes'),
(115, '_transient_timeout_plugin_slugs', '1397454542', 'no'),
(116, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"wp-jalali/wp-jalali.php";}', 'no'),
(117, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1397411342', 'no'),
(118, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>خطای RSS:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><p><strong>خطای RSS:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(119, 'can_compress_scripts', '1', 'yes'),
(122, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397370565;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'current_theme', '', 'yes'),
(124, 'theme_mods_anjoman-portal', 'a:1:{i:0;b:0;}', 'yes'),
(125, 'theme_switched', '', 'yes'),
(129, '_site_transient_timeout_browser_0f5d8990db4df2d31f9107f57dccea47', '1397980658', 'yes'),
(130, '_site_transient_browser_0f5d8990db4df2d31f9107f57dccea47', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"28.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(136, '_site_transient_timeout_theme_roots', '1397456365', 'yes'),
(137, '_site_transient_theme_roots', 'a:4:{s:14:"anjoman-portal";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_postmeta`
--

CREATE TABLE IF NOT EXISTS `anjwp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `anjwp_postmeta`
--

INSERT INTO `anjwp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1397375589'),
(4, 13, '_edit_last', '1'),
(5, 13, '_edit_lock', '1397377945:1'),
(6, 21, '_edit_last', '1'),
(7, 21, '_edit_lock', '1397378158:1');

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_posts`
--

CREATE TABLE IF NOT EXISTS `anjwp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `anjwp_posts`
--

INSERT INTO `anjwp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-04-13 05:44:57', '2014-04-13 05:44:57', 'به وردپرس خوش آمدید.‌این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن وبلاگ نویسی را آغاز کنید!', 'سلام دنیا!', '', 'publish', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2014-04-13 05:44:57', '2014-04-13 05:44:57', '', 0, 'http://localhost/anjoman-portal/?p=1', 0, 'post', '', 1),
(2, 1, '2014-04-13 05:44:57', '2014-04-13 05:44:57', 'این یک برگه‌ی نمونه است که با یک نوشته در وبلاگ تفوات دارد زیرا برگه‌ها در یک مکان ثابت می‌مانند و معمولاً در فهرست پیوندهای درونی سایت شما نمایش داده می‌شوند (در اکثر پوسته‌ها). بیشتر افراد کار کردن با برگه‌ها را از یک برگه‌ی «درباره من» که آن‌ها را به خوانندگان سایت معرفی می‌کند، شروع می‌کنند. برای مثال این‌چنین می‌گویند:\n\n<blockquote>سلام دوستان، من روزها یک کارمند اداری هستم و شب‌ها یک راننده تاکسی، این وبلاگ من است. من در اهواز زندگی می‌کنم که شهری در جنوب غربی ایران است.</blockquote>\n\nیا چیزی شبیه این:\n\n<blockquote>شرکت XYZ در سال ۱۳۶۵ تاسیس شد و ارائه‌دهنده محصولات صنعتی است. این شرکت ۲۰۰۰ کارگر و کارمند دارد. امیدواریم از محصولات ما راضی باشید.</blockquote>\n\nبه‌عنوان یک کاربر تازه‌ی وردپرس فارسی شما برای پاک کردن این برگه و ساختن برگه‌های تازه می‌توانید به <a href="http://localhost/anjoman-portal/wp-admin/">پیشخوان خود</a> مراجعه کنید. موفق باشید!', 'برگه نمونه', '', 'trash', 'open', 'open', '', '%d8%a8%d8%b1%da%af%d9%87-%d9%86%d9%85%d9%88%d9%86%d9%87', '', '', '2014-04-13 07:53:09', '2014-04-13 07:53:09', '', 0, 'http://localhost/anjoman-portal/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-04-13 05:49:00', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 05:49:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?p=3', 0, 'post', '', 0),
(4, 1, '2014-04-13 06:52:48', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 06:52:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=4', 0, 'contact', '', 0),
(5, 1, '2014-04-13 06:53:53', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 06:53:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=5', 0, 'contact', '', 0),
(6, 1, '2014-04-13 07:42:42', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:42:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=6', 0, 'contact', '', 0),
(7, 1, '2014-04-13 07:43:41', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:43:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=7', 0, 'contact', '', 0),
(8, 1, '2014-04-13 07:44:37', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:44:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=8', 0, 'contact', '', 0),
(9, 1, '2014-04-13 07:49:18', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:49:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=9', 0, 'contact', '', 0),
(10, 1, '2014-04-13 07:50:58', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:50:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=10', 0, 'contact', '', 0),
(11, 1, '2014-04-13 07:51:13', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:51:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=contact&p=11', 0, 'contact', '', 0),
(12, 1, '2014-04-13 07:53:09', '2014-04-13 07:53:09', 'این یک برگه‌ی نمونه است که با یک نوشته در وبلاگ تفوات دارد زیرا برگه‌ها در یک مکان ثابت می‌مانند و معمولاً در فهرست پیوندهای درونی سایت شما نمایش داده می‌شوند (در اکثر پوسته‌ها). بیشتر افراد کار کردن با برگه‌ها را از یک برگه‌ی «درباره من» که آن‌ها را به خوانندگان سایت معرفی می‌کند، شروع می‌کنند. برای مثال این‌چنین می‌گویند:\n\n<blockquote>سلام دوستان، من روزها یک کارمند اداری هستم و شب‌ها یک راننده تاکسی، این وبلاگ من است. من در اهواز زندگی می‌کنم که شهری در جنوب غربی ایران است.</blockquote>\n\nیا چیزی شبیه این:\n\n<blockquote>شرکت XYZ در سال ۱۳۶۵ تاسیس شد و ارائه‌دهنده محصولات صنعتی است. این شرکت ۲۰۰۰ کارگر و کارمند دارد. امیدواریم از محصولات ما راضی باشید.</blockquote>\n\nبه‌عنوان یک کاربر تازه‌ی وردپرس فارسی شما برای پاک کردن این برگه و ساختن برگه‌های تازه می‌توانید به <a href="http://localhost/anjoman-portal/wp-admin/">پیشخوان خود</a> مراجعه کنید. موفق باشید!', 'برگه نمونه', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-04-13 07:53:09', '2014-04-13 07:53:09', '', 2, 'http://localhost/anjoman-portal/?p=12', 0, 'revision', '', 0),
(13, 1, '2014-04-13 07:53:32', '2014-04-13 07:53:32', '', 'معرفی انجمن', '', 'publish', 'open', 'open', '', '%d9%85%d8%b9%d8%b1%d9%81%db%8c-%d8%a7%d9%86%d8%ac%d9%85%d9%86', '', '', '2014-04-13 07:53:32', '2014-04-13 07:53:32', '', 0, 'http://localhost/anjoman-portal/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-04-13 07:53:32', '2014-04-13 07:53:32', '', 'معرفی انجمن', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-04-13 07:53:32', '2014-04-13 07:53:32', '', 13, 'http://localhost/anjoman-portal/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-04-13 07:54:48', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:54:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=news&p=15', 0, 'news', '', 0),
(16, 1, '2014-04-13 07:56:54', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:56:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=news&p=16', 0, 'news', '', 0),
(17, 1, '2014-04-13 07:57:28', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 07:57:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=news&p=17', 0, 'news', '', 0),
(18, 1, '2014-04-13 08:18:07', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:18:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=forms&p=18', 0, 'forms', '', 0),
(19, 1, '2014-04-13 08:18:29', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:18:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=forms&p=19', 0, 'forms', '', 0),
(20, 1, '2014-04-13 08:34:39', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:34:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=comment&p=20', 0, 'comment', '', 0),
(21, 1, '2014-04-13 08:35:58', '0000-00-00 00:00:00', '', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-04-13 08:35:58', '2014-04-13 08:35:58', '', 0, 'http://localhost/anjoman-portal/?post_type=comment&#038;p=21', 0, 'comment', '', 0),
(22, 1, '2014-04-13 08:48:34', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:48:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=22', 0, 'circular', '', 0),
(23, 1, '2014-04-13 08:49:22', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:49:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=23', 0, 'circular', '', 0),
(24, 1, '2014-04-13 08:49:27', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:49:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=24', 0, 'circular', '', 0),
(25, 1, '2014-04-13 08:49:40', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:49:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=forms&p=25', 0, 'forms', '', 0),
(26, 1, '2014-04-13 08:50:14', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:50:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=26', 0, 'circular', '', 0),
(27, 1, '2014-04-13 08:51:03', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:51:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=27', 0, 'circular', '', 0),
(28, 1, '2014-04-13 08:51:11', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:51:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=28', 0, 'circular', '', 0),
(29, 1, '2014-04-13 08:51:14', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:51:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=29', 0, 'circular', '', 0),
(30, 1, '2014-04-13 08:58:18', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 08:58:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circular&p=30', 0, 'circular', '', 0),
(31, 1, '2014-04-13 09:00:45', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 09:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=entertainmentnews&p=31', 0, 'entertainmentnews', '', 0),
(32, 1, '2014-04-13 09:01:46', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 09:01:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=entertainmentnews&p=32', 0, 'entertainmentnews', '', 0),
(33, 1, '2014-04-13 09:01:52', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-13 09:01:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/anjoman-portal/?post_type=circulars&p=33', 0, 'circulars', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_terms`
--

CREATE TABLE IF NOT EXISTS `anjwp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anjwp_terms`
--

INSERT INTO `anjwp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0);

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `anjwp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anjwp_term_relationships`
--

INSERT INTO `anjwp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `anjwp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anjwp_term_taxonomy`
--

INSERT INTO `anjwp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_usermeta`
--

CREATE TABLE IF NOT EXISTS `anjwp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `anjwp_usermeta`
--

INSERT INTO `anjwp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'anjwp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'anjwp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'anjwp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'closedpostboxes_page', 'a:0:{}'),
(16, 1, 'metaboxhidden_page', 'a:5:{i:0;s:13:"pageparentdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(17, 1, 'closedpostboxes_comment', 'a:1:{i:0;s:16:"commentstatusdiv";}'),
(18, 1, 'metaboxhidden_comment', 'a:1:{i:0;s:7:"slugdiv";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}');

-- --------------------------------------------------------

--
-- Table structure for table `anjwp_users`
--

CREATE TABLE IF NOT EXISTS `anjwp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anjwp_users`
--

INSERT INTO `anjwp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BN25OB5PzuifGDV1k30JxRkT8ufUnL0', 'admin', 'mahlad365@gmail.com', '', '2014-04-13 05:44:57', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
