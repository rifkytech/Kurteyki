-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 05:05 AM
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
(1, 'Konten Baru dan Rencana Kedepannya Situs ini.', 'konten-baru-dan-rencana-kedepannya-situs-ini', 'http://xin.com/storage/uploads/images/1911368.jpg', '2020-03-21 18:44:54', '2020-04-03 07:33:44', '1', '1', '&lt;p&gt;Sudah 6 bulan berlalu dan kini saya akan mengaktifkan situs ini menjadi sebuah blog. situs ini nantinya akan dipenuhi dengan tulisan tentang pengembangan diri.&lt;/p&gt;\r\n\r\n&lt;p&gt;alasan saya menuliskan tentang pengembangan diri di situs ini adalah untuk mencatat apa saja yang telah saya pelajari tentang pengembangan diri dan mungkin bisa berguna untuk para pembaca sekalian.&lt;/p&gt;\r\n\r\n&lt;p&gt;sedikit gambaran tentang pengembangan diri, jadi pengembangan diri menurut saya itu seperti mengasah kemampuan diri untuk menjalani hidup ini. dengan adanya pemahaman tentang skill hidup maka untuk menjalani kehidupan ini juga kita akan selalu merasa mudah.&lt;/p&gt;\r\n', '', 14, 'Published');

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
(1, 'Tidak diketahui', 'tidak-diketahui');

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
(1, 'Basa Basi', 'basa-basi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template`
--

CREATE TABLE `tb_blog_template` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` enum('Active','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_template`
--

INSERT INTO `tb_blog_template` (`id`, `name`, `path`, `status`) VALUES
(1, 'Pisen Creative', 'pisen', 'No'),
(2, 'Mediumish', 'mediumish', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template_style`
--

CREATE TABLE `tb_blog_template_style` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_template_style`
--

INSERT INTO `tb_blog_template_style` (`id`, `id_template`, `type`, `name`, `file`, `status`) VALUES
(1, 1, 'homepage', 'List with Sidebar', 'list_with_sidebar', 'Active'),
(2, 1, 'post', 'Post Center', 'post_center', 'No'),
(3, 1, 'homepage', 'Grid Two Column', 'grid_two_column', 'No'),
(4, 1, 'homepage', 'Clasic', 'clasic', 'No'),
(5, 1, 'post', 'Post Center Full', 'post_center_full', 'No'),
(6, 1, 'post', 'Post Sidebar', 'post_sidebar', 'Active'),
(7, 2, 'homepage', 'Default', 'default', 'Active'),
(8, 2, 'post', 'Default', 'default', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template_widget`
--

CREATE TABLE `tb_blog_template_widget` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `var` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog_template_widget`
--

INSERT INTO `tb_blog_template_widget` (`id`, `id_template`, `name`, `var`, `type`, `data_json`) VALUES
(1, 1, 'Footer 1', 'link1_footer', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(2, 1, 'Footer 2', 'link2_footer', 'link', '{\"status\":\"active\",\"title\":\"Other Site\",\"content\":[{\"text\":\"Riedayme\",\"url\":\"https:\\/\\/riedayme.kurteyki.com\\/\"},{\"text\":\"Shinmu\",\"url\":\"https:\\/\\/shinmu.kurteyki.com\\/\"}]}'),
(3, 1, 'Contact Footer', 'contact_footer', 'text', '{\"status\":\"active\",\"title\":\"Contact Us\",\"content\":\"Bogor, Indonesia \\r\\nkurteyki@gmail.com\\r\\n<div class=\\\"social-contact\\\"> <a title=\\\"Facebook\\\" target=\\\"_blank\\\" class=\\\"icon-btn\\\" href=\\\"https:\\/\\/facebook.com\\/kurteyki\\\" style=\'background:#fff\'><i class=\\\"fa fa-facebook\\\"><\\/i><\\/a> <\\/div>\"}'),
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
(16, 2, 'Logo Header', 'logo_header', 'image', '{\"status\":\"active\",\"content\":\"image16_20200324110603.png\"}'),
(17, 2, 'Ads Post Content', 'ads_post_content', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(18, 2, 'footer_pages', 'footer_pages', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(19, 2, 'Navigation Header', 'navigation_header', 'category', '{\"status\":\"nonactive\",\"title\":\"Menu\",\"id\":[\"1\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_category`
--

CREATE TABLE `tb_lms_category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_category`
--

INSERT INTO `tb_lms_category` (`id`, `name`, `slug`, `parent`, `time`, `updated`, `icon`, `image`) VALUES
(3, 'Pengembangan Diri', 'pengembangan-diri', 0, '2020-03-28 14:41:39', '0000-00-00 00:00:00', '', ''),
(5, 'Programmer', 'programmer', 0, '2020-03-28 14:42:40', '0000-00-00 00:00:00', '', ''),
(6, 'PHP', 'php', 5, '2020-03-28 14:42:46', '0000-00-00 00:00:00', '', ''),
(7, 'HTML', 'html', 5, '2020-03-28 14:45:00', '0000-00-00 00:00:00', '', ''),
(8, 'mantap bosqu', 'mantap-bosqu', 0, '2020-03-28 14:52:30', '0000-00-00 00:00:00', '', 'http://localhost/kurteyki/storage/uploads/images/1911368.jpg'),
(9, 'Kurteyki', 'kurteyki', 0, '2020-03-28 15:06:42', '0000-00-00 00:00:00', '', ''),
(11, 'Kentang', 'kentang', 3, '2020-03-28 16:09:50', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses`
--

CREATE TABLE `tb_lms_courses` (
  `id` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `faq` text NOT NULL,
  `id_category` varchar(255) NOT NULL,
  `id_sub_category` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `price` int(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `views` int(11) NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses`
--

INSERT INTO `tb_lms_courses` (`id`, `title`, `permalink`, `image`, `description`, `faq`, `id_category`, `id_sub_category`, `time`, `updated`, `price`, `discount`, `views`, `status`) VALUES
(484, 'WAWA', 'wawa', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '&lt;p&gt;ww&lt;/p&gt;\r\n', '&lt;p&gt;ww&lt;/p&gt;\r\n', '3', '11', '2020-04-05 07:03:00', '0000-00-00 00:00:00', 10000, 0, 3, 'Published'),
(613, 'koko', 'koko', 'http://xin.com/storage/uploads/images/1911368.jpg', '&lt;p&gt;q&lt;/p&gt;\r\n', '&lt;p&gt;q&lt;/p&gt;\r\n', '3', '11', '2020-04-05 14:38:42', '2020-04-06 08:07:05', 0, 0, 3, 'Published'),
(614, 'jajajaja', 'jajajaja', 'http://xin.com/storage/uploads/images/1911368.jpg', '&lt;p&gt;babhi kimpet&lt;/p&gt;\r\n', '', '3', '11', '2020-04-05 14:39:34', '2020-04-06 08:06:56', 0, 0, 3, 'Draft'),
(615, 'wawe', 'wawe', 'https://lh3.googleusercontent.com/d/1R6Pi_RjL8YSW3s0fxKQJmEZL3SZUWtRi=s600', '&lt;p&gt;qq&lt;/p&gt;\r\n', '', '3', '11', '2020-04-05 14:40:05', '2020-04-06 05:34:31', 0, 0, 3, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_lesson`
--

CREATE TABLE `tb_lms_courses_lesson` (
  `id` int(255) NOT NULL,
  `id_course` int(255) NOT NULL,
  `id_section` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses_lesson`
--

INSERT INTO `tb_lms_courses_lesson` (`id`, `id_course`, `id_section`, `title`, `type`, `content`, `order`) VALUES
(18, 6, 34, 'Pendekar Tak Terkalahkan, Jagoan Kampung', 'Text', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in</p>\r\n\r\n<p><img alt=\"\" height=\"426\" src=\"http://localhost/kurteyki/storage/uploads/images/1911368.jpg?1585490637323\" width=\"640\" /></p>\r\n\r\n<p>reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 1),
(22, 6, 36, 'Hal yang dibutuhkan untuk mempelajarinya', 'Image', '<p><img alt=\"\" height=\"345\" src=\"http://localhost/kurteyki/storage/uploads/images/tooopen_sy_21330733728965.jpg?1585490556318\" width=\"640\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 1),
(23, 6, 36, 'Pemula ingin belajar Kungfu', 'Video', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p><img alt=\"\" height=\"426\" src=\"http://localhost/kurteyki/storage/uploads/images/1911368.jpg?1585490609948\" width=\"640\" /></p>\r\n', 2),
(27, 310, 46, 'aww', 'Video', '<p>asdsadsad</p>\r\n', 0),
(28, 312, 47, 'Panduan Sederhana Integrasi PHP Snap', 'Image', '<h2 id=\"panduan-sederhana-integrasi-php-snap\">Panduan Sederhana Integrasi PHP Snap</h2>\r\n', 0),
(29, 6, 34, 'Menangnya sang pendekar', 'Text', '<p>lorem</p>\r\n', 0),
(30, 484, 48, 'www', 'Image', '<p>www</p>\r\n', 0),
(31, 613, 49, 'ww', 'Video', '<p>www</p>\r\n', 0),
(32, 614, 50, '11', 'Video', '<p>111</p>\r\n', 0),
(33, 615, 51, 'asd', 'Text', '<p>asd</p>\r\n', 0),
(34, 615, 51, 'www', 'Video', '<p>qq</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_section`
--

CREATE TABLE `tb_lms_courses_section` (
  `id` int(255) NOT NULL,
  `id_course` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses_section`
--

INSERT INTO `tb_lms_courses_section` (`id`, `id_course`, `title`, `order`) VALUES
(34, 6, 'Menjadi Pendekar Sakti', 2),
(36, 6, 'Persiapan Sebelum Belajar', 1),
(41, 311, 'Wawe', 0),
(42, 311, 'aye', 0),
(45, 310, 'anak setan', 0),
(46, 310, 'anak onyet', 0),
(47, 312, 'Panduan Sederhana Integrasi PHP Snap', 0),
(48, 484, 'qq', 0),
(49, 613, 'qq', 0),
(50, 614, 'kwaowka babhi', 0),
(51, 615, 'zzzz', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_courses`
--

CREATE TABLE `tb_lms_user_courses` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_user_courses`
--

INSERT INTO `tb_lms_user_courses` (`id`, `id_user`, `id_courses`, `time`) VALUES
(1, 11, 614, '2020-04-06 07:33:07'),
(2, 11, 613, '2020-04-06 07:40:14'),
(3, 11, 615, '2020-04-06 07:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_lesson`
--

CREATE TABLE `tb_lms_user_lesson` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_user_lesson`
--

INSERT INTO `tb_lms_user_lesson` (`id`, `id_user`, `id_courses`, `data`) VALUES
(1, 11, 614, '[{\"id_lesson\":\"32\",\"status\":false}]'),
(2, 11, 615, '[{\"id_lesson\":\"34\",\"status\":false},{\"id_lesson\":\"33\",\"status\":false}]'),
(3, 11, 613, '[{\"id_lesson\":\"31\",\"status\":false}]');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_payment`
--

CREATE TABLE `tb_lms_user_payment` (
  `id` varchar(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` enum('Purchased','Pending','Failed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_user_payment`
--

INSERT INTO `tb_lms_user_payment` (`id`, `id_user`, `id_courses`, `type`, `amount`, `token`, `time`, `updated`, `status`) VALUES
('13C484T200405072029', 13, 484, 'bank_transfer', '10000', '3b7d7a61-adb9-414f-af23-071a3592a8f9', '2020-04-05 07:21:18', '0000-00-00 00:00:00', 'Purchased'),
('13C484T200405072123', 13, 484, 'bank_transfer', '10000', '3b7d7a61-adb9-414f-af23-071a3592a8f9', '2020-04-05 07:21:18', '0000-00-00 00:00:00', 'Purchased');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_review`
--

CREATE TABLE `tb_lms_user_review` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `review` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_wishlist`
--

CREATE TABLE `tb_lms_user_wishlist` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('ads_txt', 'google.com, pub-2846006866814506, DIRECT, f08c47fec0942fa0'),
('blog_comment', '{\"type\":\"disable\",\"disqus_shortname\":\"kurteyki\",\"disqus_developer\":\"1\",\"moderate\":\"false\",\"message\":\"Komentar diblokir\"}'),
('blog_limit_post', '9'),
('cache', 'No'),
('currency_format', 'IDR'),
('description', 'Ilmu Pengembangan Diri untuk Hidup yang lebih baik.'),
('icon', 'icon_20200324110612.png'),
('image', 'logo_20200324103241.png'),
('language', 'indonesia'),
('lms_limit_post', '5'),
('midtrans', '{\"status_production\":\"No\",\"client_key\":\"SB-Mid-client-kda5uXSFYxy0K5EJ\",\"server_key\":\"SB-Mid-server-pE6FhBweNWjzV3ZJkDueTaYp\"}'),
('no_image', 'no_image_20200324100516.jpg'),
('robots_txt', ''),
('slogan', 'Belajar pengembangan diri'),
('time_zone', 'Asia/Jakarta'),
('title', 'Kurteyki'),
('user_limit_data', '5');

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
(1, 'schema', '{\"type\":\"Organization\",\"content\":{\"person_name\":\"Faanteyki\",\"person_alternateName\":\"Faan\",\"person_gender\":\"male\",\"person_height\":\"163 centimetre\",\"person_birthDate\":\"1999-08-30\",\"person_birthPlace\":\"Bogor, Jawabarat\",\"person_nationality\":\"Indonesia\",\"person_alumniOf\":\"SMK Generasi Madani\",\"person_memberOf\":\"Kurteyki\",\"person_streetAddress\":\"RT.05 RW.04 NO.C23\",\"person_addressLocality\":\"Cibinong\",\"person_addressRegion\":\"Indonesia\",\"person_postalCode\":\"16916\",\"person_email\":\"life.irfaan@gmail.com\",\"person_telephone\":\"+62 813 8921 5100\",\"person_url\":\"https:\\/\\/kurteyki.com\",\"person_sameAs\":\"https:\\/\\/facebook.com\\/faanteyki\",\"person_jobTitle\":\"Bobobib\",\"person_worksFor_name\":\"Bobobib\",\"person_worksFor_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_name\":\"Kurteyki\",\"organization_url\":\"https:\\/\\/www.kurteyki.com\\/\",\"organization_contactPoint_telephone\":\"+62 813 8921 5100\",\"organization_contactPoint_contactType\":\"customer service\",\"organization_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_logo_url\":\"organization_logo_url_20200406055322.jpg\",\"person_image\":\"person_image_20200406055323.jpg\"}}'),
(2, 'open_graph', '{\"app_id\":\"\",\"publisher\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"author\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"default_image\":\"open_graph_default_image_20200406055323.jpg\"}'),
(3, 'twitter_card', '{\"publisher\":\"@kurteyki\",\"default_image\":\"twitter_card_default_image_20200406055323.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_pages`
--

CREATE TABLE `tb_site_pages` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_site_pages`
--

INSERT INTO `tb_site_pages` (`id`, `title`, `permalink`, `time`, `updated`, `content`, `status`) VALUES
(1, 'Privacy', 'privacy', '2020-03-21 18:36:40', '2020-04-06 09:27:00', '&lt;p&gt;If you require any more information or have any questions about our privacy policy, please feel free to contact us by email at http://www.kurteyki.com/p/contact.html&lt;/p&gt;\r\n\r\n&lt;p&gt;At www.kurteyki.com we consider the privacy of our visitors to be extremely important. This privacy policy document describes in detail the types of personal information is collected and recorded by www.kurteyki.com and how we use it.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Log Files&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Like many other Web sites, www.kurteyki.com makes use of log files. These files merely logs visitors to the site - usually a standard procedure for hosting companies and a part of hosting services&amp;#39;s analytics. The information inside the log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date/time stamp, referring/exit pages, and possibly the number of clicks. This information is used to analyze trends, administer the site, track user&amp;#39;s movement around the site, and gather demographic information. IP addresses, and other such information are not linked to any information that is personally identifiable.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Cookies and Web Beacons&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;www.kurteyki.com uses cookies to store information about visitors&amp;#39; preferences, to record user-specific information on which pages the site visitor accesses or visits, and to personalize or customize our web page content based upon visitors&amp;#39; browser type or other information that the visitor sends via their browser.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Our Advertising Partners&lt;/b&gt; Some of our advertising partners may use cookies and web beacons on our site. Our advertising partners include ...&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n  &lt;li&gt;Google&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;While each of these advertising partners has their own Privacy Policy for their site. You may consult this listing to find the privacy policy for each of the advertising partners of www.kurteyki.com.&lt;/em&gt; These third-party ad servers or ad networks use technology in their respective advertisements and links that appear on www.kurteyki.com and which are sent directly to your browser. They automatically receive your IP address when this occurs. Other technologies (such as cookies, JavaScript, or Web Beacons) may also be used by our site&amp;#39;s third-party ad networks to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on the site. www.kurteyki.com has no access to or control over these cookies that are used by third-party advertisers.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Third Party Privacy Policies&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You should consult the respective privacy policies of these third-party ad servers for more detailed information on their practices as well as for instructions about how to opt-out of certain practices. www.kurteyki.com&amp;#39;s privacy policy does not apply to, and we cannot control the activities of, such other advertisers or web sites. If you wish to disable cookies, you may do so through your individual browser options. More detailed information about cookie management with specific web browsers can be found at the browsers&amp;#39; respective websites.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Children&amp;#39;s Information&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We believe it is important to provide added protection for children online. We encourage parents and guardians to spend time online with their children to observe, participate in and/or monitor and guide their online activity. www.kurteyki.com does not knowingly collect any personally identifiable information from children under the age of 13. If a parent or guardian believes that www.kurteyki.com has in its database the personally-identifiable information of a child under the age of 13, please contact us immediately (using the contact in the first paragraph) and we will use our best efforts to promptly remove such information from our records.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Online Privacy Policy Only&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This privacy policy applies only to our online activities and is valid for visitors to our website and regarding information shared and/or collected there. This policy does not apply to any information collected offline or via channels other than this website.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Consent&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;By using our website, you hereby consent to our privacy policy and agree to its terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Update&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This Privacy Policy was last updated on: Sunday, December 3rd, 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Should we update, amend or make any changes to our privacy policy, those changes will be posted here.&lt;/em&gt;&lt;/p&gt;\r\n', 'Published'),
(2, 'www babhi betul kau ini', 'www-babhi-betul-kau-ini', '2020-04-06 09:25:29', '2020-04-06 09:25:43', '&lt;p&gt;www&lt;/p&gt;\r\n', 'Draft'),
(3, 'privacy', 'privacy-1802081068', '2020-04-06 09:26:13', '0000-00-00 00:00:00', '&lt;p&gt;asdsadsadsa&lt;/p&gt;\r\n', 'Draft'),
(4, 'hello works', 'hello-works', '2020-04-06 09:29:38', '2020-04-06 09:33:32', '&lt;p&gt;&lt;iframe allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/q7RtHkWkYyQ&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n', 'Draft');

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
(1, '127.0.0.1', '2020-04-06 09:33:00', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/p/hello-works', ''),
(2, '127.0.0.1', '2020-04-06 09:37:06', 'Chrome', 'Windows 10', 'Other', 'Other', 35, 'http://xin.com/', ''),
(3, '127.0.0.1', '2020-04-06 09:37:09', 'Chrome', 'Windows 10', 'Other', 'Other', 26, 'http://xin.com/p/privacy', ''),
(4, '127.0.0.1', '2020-04-06 09:37:16', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://xin.com/courses/detail/wawa', ''),
(5, '127.0.0.1', '2020-04-06 09:37:47', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/courses/lesson/wawe/51/33', ''),
(6, '127.0.0.1', '2020-04-06 09:37:53', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/courses/lesson/koko/49/31', ''),
(7, '127.0.0.1', '2020-04-06 09:38:04', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/lesson/jajajaja/50/32', ''),
(8, '127.0.0.1', '2020-04-06 09:40:29', 'Chrome', 'Windows 10', 'Other', 'Other', 23, 'http://xin.com/blog', ''),
(9, '127.0.0.1', '2020-04-06 09:40:31', 'Chrome', 'Windows 10', 'Other', 'Other', 29, 'http://xin.com/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(10, '127.0.0.1', '2020-04-06 09:40:32', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://xin.com/blog/category/tidak-diketahui', ''),
(11, '127.0.0.1', '2020-04-06 09:40:41', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/blog/tags/basa-basi', ''),
(12, '127.0.0.1', '2020-04-06 09:41:12', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://xin.com/courses/detail/jajajaja', ''),
(13, '127.0.0.1', '2020-04-06 09:41:31', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://xin.com/courses/detail/koko', ''),
(14, '127.0.0.1', '2020-04-06 09:41:58', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/p/www-babhi-betul-kau-ini', ''),
(15, '127.0.0.1', '2020-04-06 09:42:12', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/p/privacy-1802081068', ''),
(16, '127.0.0.1', '2020-04-06 09:51:42', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://xin.com/courses/detail/wawe', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_handphone` varchar(30) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `grade` enum('App','User') NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `no_handphone`, `photo`, `grade`, `created`, `last_login`) VALUES
(1, 'kurteyki', '1a5651f74beaa02c5e5fc380875d23a66e4549bd', '', '0', '', 'App', '0000-00-00 00:00:00', '2020-04-06 04:47:54'),
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.com', '85212321', 'user_photo_20200406043846.jpg', 'User', '2020-03-31 15:35:51', '2020-04-06 04:27:09'),
(12, 'aye', '329053c86586dfab3facb0478d574a5c888d3ad7', 'aye@aye.cc', '1234', '', 'User', '2020-04-01 03:59:02', '2020-04-01 03:59:11'),
(13, 'ww', '1c4f0c6eb8bf8bbf11cc2ae1cdcc5c5d1f3a3c16', 'ww@ww.cc', '123456', 'user_photo_20200405130108.jpg', 'User', '2020-04-03 10:51:17', '2020-04-06 04:26:41'),
(14, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'okaowkaowk@akwoakw.cc', '1234567890', '', 'User', '2020-04-05 11:19:39', '0000-00-00 00:00:00'),
(15, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'okaowkaoewk@akwoakw.cc', '123456766666', '', 'User', '2020-04-05 11:20:45', '0000-00-00 00:00:00'),
(16, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'babibetulanda@gg.cc', '1231232132131', '', 'User', '2020-04-05 11:21:29', '0000-00-00 00:00:00'),
(17, 'anak legenda', '1777350af97646a55f2fac1f0e578a14412253b5', 'anaklegenda@gg.cc', '085280815735', '', 'User', '2020-04-05 11:22:16', '2020-04-05 11:22:36');

--
-- Indexes for dumped tables
--

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
  ADD KEY `id_blog_post` (`id_blog_post`,`parent`),
  ADD KEY `status` (`status`),
  ADD KEY `status_read` (`status_read`);

--
-- Indexes for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_blog_template`
--
ALTER TABLE `tb_blog_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_blog_template_style`
--
ALTER TABLE `tb_blog_template_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_blog_template_widget`
--
ALTER TABLE `tb_blog_template_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_lms_category`
--
ALTER TABLE `tb_lms_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_lms_courses`
--
ALTER TABLE `tb_lms_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`),
  ADD KEY `id_tags` (`id_sub_category`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `views` (`views`),
  ADD KEY `image` (`image`);

--
-- Indexes for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_lesson`
--
ALTER TABLE `tb_lms_user_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_payment`
--
ALTER TABLE `tb_lms_user_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_review`
--
ALTER TABLE `tb_lms_user_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_wishlist`
--
ALTER TABLE `tb_lms_user_wishlist`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_site_pages`
--
ALTER TABLE `tb_site_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`,`time`,`status`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

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
-- AUTO_INCREMENT for table `tb_blog_post`
--
ALTER TABLE `tb_blog_post`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_template`
--
ALTER TABLE `tb_blog_template`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_blog_template_style`
--
ALTER TABLE `tb_blog_template_style`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_blog_template_widget`
--
ALTER TABLE `tb_blog_template_widget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_lms_category`
--
ALTER TABLE `tb_lms_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_lms_courses`
--
ALTER TABLE `tb_lms_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_user_lesson`
--
ALTER TABLE `tb_lms_user_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_user_review`
--
ALTER TABLE `tb_lms_user_review`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_wishlist`
--
ALTER TABLE `tb_lms_user_wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_site_meta`
--
ALTER TABLE `tb_site_meta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_site_pages`
--
ALTER TABLE `tb_site_pages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
