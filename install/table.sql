-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2020 at 01:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurteyki`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_pages`
--

CREATE TABLE `tb_blog_pages` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_pages`
--

INSERT INTO `tb_blog_pages` (`id`, `title`, `permalink`, `time`, `updated`, `content`, `status`) VALUES
(1, 'Sample Pages', 'sample-pages', '2020-03-21 18:36:40', '2020-03-24 14:13:02', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;align-center&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;426&quot; src=&quot;http://localhost/kurteyki/storage/uploads/images/1911368.jpg?1585033775880&quot; width=&quot;640&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post`
--

CREATE TABLE `tb_blog_post` (
  `id` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `id_category` varchar(255) NOT NULL,
  `id_tags` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_post`
--

INSERT INTO `tb_blog_post` (`id`, `title`, `permalink`, `image`, `time`, `updated`, `id_category`, `id_tags`, `content`, `description`, `views`, `status`) VALUES
(1, 'Sample Post', 'sample-post', '', '2020-03-21 18:44:00', '2020-03-24 14:11:03', '1', '1', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;align-center&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;426&quot; src=&quot;http://localhost/kurteyki/storage/uploads/images/1911368.jpg?1585033847495&quot; width=&quot;640&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n', '', 5, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_category`
--

CREATE TABLE `tb_blog_post_category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_post_category`
--

INSERT INTO `tb_blog_post_category` (`id`, `name`, `slug`) VALUES
(1, 'Sampe Category', 'sampe-category');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_comment`
--

CREATE TABLE `tb_blog_post_comment` (
  `id` int(255) NOT NULL,
  `id_blog_post` int(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `log` varchar(255) NOT NULL,
  `status` enum('Approved','Blocked','Pending') NOT NULL,
  `status_read` enum('Read','Unread') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_tags`
--

CREATE TABLE `tb_blog_post_tags` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_post_tags`
--

INSERT INTO `tb_blog_post_tags` (`id`, `name`, `slug`) VALUES
(1, 'Sample Tags', 'sample-tags');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site`
--

CREATE TABLE `tb_site` (
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site`
--

INSERT INTO `tb_site` (`type`, `data`) VALUES
('ads_txt', ''),
('cache', 'No'),
('comment', '{\"type\":\"disable\",\"disqus_shortname\":\"kurteyki\",\"disqus_developer\":\"1\",\"moderate\":\"true\",\"message\":\"Komentar diblokir\"}'),
('description', 'Sample Description.'),
('icon', 'icon_20200324110612.png'),
('image', 'logo_20200324103241.png'),
('language', 'indonesia'),
('limit_post', '9'),
('no_image', 'no_image_20200324100516.jpg'),
('robots_txt', ''),
('slogan', 'Sample Slogan.'),
('time_zone', 'Asia/Jakarta'),
('title', 'My Blog');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_meta`
--

CREATE TABLE `tb_site_meta` (
  `id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_meta`
--

INSERT INTO `tb_site_meta` (`id`, `type`, `data_json`) VALUES
(1, 'schema', '{\"type\":\"Organization\",\"content\":{\"person_name\":\"***\",\"person_alternateName\":\"***\",\"person_gender\":\"***\",\"person_height\":\"***\",\"person_birthDate\":\"***\",\"person_birthPlace\":\"***\",\"person_nationality\":\"***\",\"person_alumniOf\":\"***\",\"person_memberOf\":\"***\",\"person_streetAddress\":\"***\",\"person_addressLocality\":\"***\",\"person_addressRegion\":\"***\",\"person_postalCode\":\"***\",\"person_email\":\"***\",\"person_telephone\":\"***\",\"person_url\":\"***\",\"person_sameAs\":\"***\",\"person_jobTitle\":\"***\",\"person_worksFor_name\":\"***\",\"person_worksFor_sameAs\":\"***\",\"organization_name\":\"***\",\"organization_url\":\"***\",\"organization_contactPoint_telephone\":\"***\",\"organization_contactPoint_contactType\":\"***\",\"organization_sameAs\":\"***\",\"organization_logo_url\":\"organization_logo_url_20200324103346.png\",\"person_image\":\"person_image_20200324103414.png\"}}'),
(2, 'open_graph', '{\"app_id\":\"\",\"publisher\":\"***\",\"author\":\"***\",\"default_image\":\"open_graph_default_image_20200324103346.png\"}'),
(3, 'twitter_card', '{\"publisher\":\"***\",\"default_image\":\"twitter_card_default_image_20200324103346.png\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_template`
--

CREATE TABLE `tb_site_template` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` enum('Active','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_template`
--

INSERT INTO `tb_site_template` (`id`, `name`, `path`, `status`) VALUES
(1, 'Pisen Creative', 'pisen', 'No'),
(2, 'Mediumish', 'mediumish', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_template_style`
--

CREATE TABLE `tb_site_template_style` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_template_style`
--

INSERT INTO `tb_site_template_style` (`id`, `id_template`, `type`, `name`, `file`, `status`) VALUES
(1, 1, 'homepage', 'List with Sidebar', 'list_with_sidebar', 'No'),
(2, 1, 'post', 'Post Center', 'post_center', 'No'),
(3, 1, 'homepage', 'Grid Two Column', 'grid_two_column', 'No'),
(4, 1, 'homepage', 'Clasic', 'clasic', 'Active'),
(5, 1, 'post', 'Post Center Full', 'post_center_full', 'No'),
(6, 1, 'post', 'Post Sidebar', 'post_sidebar', 'Active'),
(7, 2, 'homepage', 'Default', 'default', 'Active'),
(8, 2, 'post', 'Default', 'default', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_template_widget`
--

CREATE TABLE `tb_site_template_widget` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `var` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_template_widget`
--

INSERT INTO `tb_site_template_widget` (`id`, `id_template`, `name`, `var`, `type`, `data_json`) VALUES
(1, 1, 'Footer 1', 'link1_footer', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(2, 1, 'Footer 2', 'link2_footer', 'link', '{\"status\":\"active\",\"title\":\"Other Site\",\"content\":[{\"text\":\"***\",\"url\":\"***\"}]}'),
(3, 1, 'Contact Footer', 'contact_footer', 'text', '{\"status\":\"active\",\"title\":\"Contact Us\",\"content\":\"***\"}'),
(4, 1, 'Logo Template', 'logo', 'image', '{\"status\":\"active\",\"content\":\"image4_20200324104021.png\"}'),
(5, 1, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\"}'),
(6, 1, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"<div><a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a><\\/div>\"}'),
(7, 1, 'Ads Content Middle', 'ads_content_middle', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(8, 1, 'Ads Sidebar', 'ads_sidebar', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/150\\\"><\\/a>\"}'),
(9, 1, 'Navigation Header', 'menu_header', 'link', '{\"status\":\"active\",\"title\":\"Header\",\"content\":false}'),
(10, 1, 'Popular Post Sidebar', 'popular_post', 'popular-post', '{\"status\":\"active\",\"title\":\"Dilihat paling banyak\",\"max_result\":\"5\"}'),
(11, 1, 'Category Sidebar', 'category_sidebar', 'category', '{\"status\":\"active\",\"title\":\"Kategori\",\"id\":[\"1\"]}'),
(12, 1, 'Tags Sidebar', 'tags_sidebar', 'tags', '{\"status\":\"active\",\"title\":\"Sub Kategori\",\"id\":[\"1\"]}'),
(13, 2, 'Featured Homepage', 'featured_homepage', 'featured-post', '{\"status\":\"nonactive\",\"title\":\"Artikel Pilihan\",\"id\":[\"1\"]}'),
(14, 2, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(15, 2, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(16, 2, 'Logo Header', 'logo_header', 'image', '{\"status\":\"nonactive\",\"content\":\"image16_20200324110603.png\"}'),
(17, 2, 'ads post content', 'ads_post_content', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(18, 2, 'footer_pages', 'footer_pages', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(19, 2, 'Navigation Header', 'navigation_header', 'category', '{\"status\":\"active\",\"title\":\"Menu\",\"id\":[\"1\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_visitor`
--

CREATE TABLE `tb_site_visitor` (
  `id` int(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `browser` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `hits` int(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `referrer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_visitor`
--

INSERT INTO `tb_site_visitor` (`id`, `ip`, `date`, `browser`, `os`, `country_name`, `country_code`, `hits`, `url`, `referrer`) VALUES
(4, '180.244.232.18', '2020-03-23 05:58:35', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 2, 'http://localhost/kurteyki/post/zdsadsad', ''),
(5, '180.244.232.18', '2020-03-23 05:58:37', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 138, 'http://localhost/kurteyki/', ''),
(6, '180.244.232.18', '2020-03-23 06:05:08', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 206, 'http://localhost/kurteyki/post/situs-ini-menggunakan-codeigniter', ''),
(7, '180.244.232.18', '2020-03-23 06:20:42', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 3, 'http://localhost/kurteyki/post/asdasdsad', ''),
(8, '180.244.232.18', '2020-03-23 06:47:54', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 2, 'http://localhost/kurteyki/post/when-you-say-nothing-at-all', ''),
(9, '180.244.232.18', '2020-03-23 06:52:51', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 3, 'http://localhost/kurteyki/post/asdsadas', ''),
(10, '180.244.232.18', '2020-03-23 08:28:11', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 12, 'http://localhost/kurteyki/category/tidak-diketahui', ''),
(11, '180.244.232.18', '2020-03-23 08:32:59', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 16, 'http://localhost/kurteyki/tags/basa-basi', ''),
(12, '180.244.232.18', '2020-03-23 13:04:38', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 2, 'http://localhost/kurteyki/post/babhi-loee', ''),
(13, '180.244.232.18', '2020-03-23 13:09:41', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 3, 'http://localhost/kurteyki/pages/privacy', ''),
(14, '180.244.232.18', '2020-03-23 13:19:02', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 1, 'http://localhost/kurteyki/post/anak-setan', ''),
(15, '180.244.234.91', '2020-03-24 09:50:56', 'Chrome', 'Windows 10', 'Indonesia', 'ID', 3, 'http://localhost/kurteyki/', ''),
(16, '::1', '2020-03-24 10:05:20', 'Chrome', 'Windows 10', 'Other', 'Other', 174, 'http://localhost/kurteyki/', ''),
(17, '::1', '2020-03-24 10:06:34', 'Chrome', 'Windows 10', 'Other', 'Other', 61, 'http://localhost/kurteyki/post/situs-ini-menggunakan-codeigniter', ''),
(18, '::1', '2020-03-24 10:30:53', 'Chrome', 'Windows 10', 'Other', 'Other', 21, 'http://localhost/kurteyki/category/tidak-diketahui', ''),
(19, '::1', '2020-03-24 10:34:39', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://localhost/kurteyki/tags/basa-basi', ''),
(20, '::1', '2020-03-24 10:54:05', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/pages/privacy', ''),
(21, '::1', '2020-03-24 14:11:18', 'Chrome', 'Windows 10', 'Other', 'Other', 42, 'http://localhost/kurteyki/post/sample-post', ''),
(22, '::1', '2020-03-24 14:13:05', 'Chrome', 'Windows 10', 'Other', 'Other', 17, 'http://localhost/kurteyki/pages/sample-pages', ''),
(23, '::1', '2020-03-24 14:16:34', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/category/sampe-category', ''),
(24, '::1', '2020-03-24 14:16:38', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/tags/sample-tags', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `last_login`) VALUES
(1, 'kurteyki', '1a5651f74beaa02c5e5fc380875d23a66e4549bd', '2020-03-24 15:41:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_blog_pages`
--
ALTER TABLE `tb_blog_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_blog_post`
--
ALTER TABLE `tb_blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`),
  ADD KEY `id_tags` (`id_tags`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `views` (`views`),
  ADD KEY `description` (`description`),
  ADD KEY `image` (`image`);

--
-- Indexes for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog_post` (`id_blog_post`),
  ADD KEY `parent` (`parent`),
  ADD KEY `status` (`status`),
  ADD KEY `status_read` (`status_read`);

--
-- Indexes for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_site`
--
ALTER TABLE `tb_site`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `tb_site_meta`
--
ALTER TABLE `tb_site_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tb_site_template`
--
ALTER TABLE `tb_site_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_site_template_style`
--
ALTER TABLE `tb_site_template_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_site_template_widget`
--
ALTER TABLE `tb_site_template_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `date` (`date`),
  ADD KEY `hits` (`hits`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_blog_pages`
--
ALTER TABLE `tb_blog_pages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post`
--
ALTER TABLE `tb_blog_post`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_site_meta`
--
ALTER TABLE `tb_site_meta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_site_template`
--
ALTER TABLE `tb_site_template`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_site_template_style`
--
ALTER TABLE `tb_site_template_style`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_site_template_widget`
--
ALTER TABLE `tb_site_template_widget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
