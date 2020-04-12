-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 05:52 AM
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
(1, 'Konten Baru dan Rencana Kedepannya Situs ini', 'konten-baru-dan-rencana-kedepannya-situs-ini', 'images/logo_20200324103241.png', '2020-03-21 18:44:00', '2020-04-11 18:43:38', '0', '0', '&lt;p&gt;Sudah 6 bulan berlalu dan kini saya akan mengaktifkan situs ini menjadi sebuah blog. situs ini nantinya akan dipenuhi dengan tulisan tentang pengembangan diri.&lt;/p&gt;\r\n\r\n&lt;p&gt;alasan saya menuliskan tentang pengembangan diri di situs ini adalah untuk mencatat apa saja yang telah saya pelajari tentang pengembangan diri dan mungkin bisa berguna untuk para pembaca sekalian.&lt;/p&gt;\r\n\r\n&lt;p&gt;sedikit gambaran tentang pengembangan diri, jadi pengembangan diri menurut saya itu seperti mengasah kemampuan diri untuk menjalani hidup ini. dengan adanya pemahaman tentang skill hidup maka untuk menjalani kehidupan ini juga kita akan selalu merasa mudah.&lt;/p&gt;\r\n', '', 2, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_category`
--

CREATE TABLE `tb_blog_post_category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(4, 1, 'Logo Template', 'logo', 'image', '{\"status\":\"active\",\"content\":\"image4_20200411172145.png\"}'),
(5, 1, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\"}'),
(6, 1, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"<div><a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a><\\/div>\"}'),
(7, 1, 'Ads Content Middle', 'ads_content_middle', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(8, 1, 'Ads Sidebar', 'ads_sidebar', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/150\\\"><\\/a>\"}'),
(9, 1, 'Navigation Header', 'menu_header', 'category', '{\"status\":\"active\",\"title\":\"Header\",\"id\":[\"1\"]}'),
(10, 1, 'Popular Post Sidebar', 'popular_post', 'popular-post', '{\"status\":\"active\",\"title\":\"Dilihat paling banyak\",\"max_result\":\"5\"}'),
(11, 1, 'Category Sidebar', 'category_sidebar', 'category', '{\"status\":\"active\",\"title\":\"Kategori\",\"id\":null}'),
(12, 1, 'Tags Sidebar', 'tags_sidebar', 'tags', '{\"status\":\"active\",\"title\":\"Sub Kategori\",\"id\":null}'),
(13, 2, 'Featured Homepage', 'featured_homepage', 'featured-post', '{\"status\":\"nonactive\",\"title\":\"Artikel Pilihan\",\"id\":[\"1\"]}'),
(14, 2, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(15, 2, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(16, 2, 'Logo Header', 'logo_header', 'image', '{\"status\":\"active\",\"content\":\"image16_20200408092129.png\"}'),
(17, 2, 'Ads Post Content', 'ads_post_content', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"1\"}'),
(18, 2, 'Footer Pages', 'footer_pages', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(19, 2, 'Navigation Header', 'navigation_header', 'pages', '{\"status\":\"nonactive\",\"title\":\"Menu\",\"id\":[\"1\"]}');

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
(1, 'Pengembangan Diri', 'pengembangan-diri', 0, '2020-04-11 16:51:46', '0000-00-00 00:00:00', 'fa-globe', ''),
(2, 'Skill Hidup', 'skill-hidup', 1, '2020-04-11 16:52:14', '0000-00-00 00:00:00', 'fa-hand-grab-o', ''),
(3, 'Karakter', 'karakter', 1, '2020-04-11 19:37:18', '2020-04-11 19:37:40', 'fa-star-o', '');

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
(1, 'Cara menjadi manusia berbakat dari Adam Khoo', 'cara-menjadi-manusia-berbakat-dari-adam-khoo', 'images/logo_20200324103241.png', '&lt;p&gt;materi ini saya ambil dari buku karya adam khoo yang berjudul i am gifted so are you, buku ini mengajarkan banyak hal bagaimana cara menjadi pribadi yang berbakat. didalam buku ini banyak sekali ilmu yang bisa diterapkan untuk pelajar, membangun keyakinan diri, cita-cita, mengatur waktu dan lain sebagainya.&lt;/p&gt;\r\n\r\n&lt;p&gt;didalam kursus ini hanya berisi ringkasan singkat dari buku yang ada.&amp;nbsp;materi yang saya sampaikan menggunakan gaya bahasa dari apa yang saya pahami, untuk mendapatkan informasi lebih lengkap tentang buku ini anda bisa membeli bukunya di toko buku.&lt;/p&gt;\r\n', '', '1', '3', '2020-04-11 16:53:44', '2020-04-11 23:50:10', 0, 0, 9, 'Published'),
(2, 'Mengatur Prioritas Waktu', 'mengatur-prioritas-waktu', 'images/logo_20200324103241.png', '', '', '1', '3', '2020-04-11 22:19:25', '2020-04-11 22:22:42', 0, 0, 2, 'Draft'),
(3, '123', '123', 'images/logo_20200324103241.png', '', '', '1', '2', '2020-04-11 22:23:28', '0000-00-00 00:00:00', 0, 0, 0, 'Draft');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_lesson`
--

CREATE TABLE `tb_lms_courses_lesson` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `id_section` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses_lesson`
--

INSERT INTO `tb_lms_courses_lesson` (`id`, `id_courses`, `id_section`, `title`, `type`, `content`, `order`) VALUES
(1, 1, 1, 'Kenapa harus memiliki tujuan', 'Text', '', 0),
(2, 1, 2, 'Meyakinkan diri', 'Text', '', 2),
(3, 1, 2, 'Kenapa harus yakin ?', 'Text', '', 1),
(4, 1, 1, 'Memiliki tujuan besar', 'Text', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_section`
--

CREATE TABLE `tb_lms_courses_section` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses_section`
--

INSERT INTO `tb_lms_courses_section` (`id`, `id_courses`, `title`, `order`) VALUES
(1, 1, 'Mempunyai Tujuan', 1),
(2, 1, 'Yakin dengan Diri Sendiri', 2),
(3, 1, 'Mengatur Waktu', 4),
(4, 1, 'Merancang Tujuan Hidup', 3),
(5, 1, 'Emosi adalah sumber Motivasi', 6),
(6, 1, 'Meninggalkan Penundaan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_template`
--

CREATE TABLE `tb_lms_template` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` enum('Active','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_template`
--

INSERT INTO `tb_lms_template` (`id`, `name`, `path`, `status`) VALUES
(1, 'Default - App', 'default-app', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_template_widget`
--

CREATE TABLE `tb_lms_template_widget` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `var` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 18, 1, '2020-04-11 22:02:10');

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
('icon', 'icon_20200408075727.png'),
('image', 'logo_20200408075726.png'),
('language', 'indonesia'),
('lms_limit_post', '5'),
('midtrans', '{\"status_production\":\"No\",\"client_key\":\"SB-Mid-client-kda5uXSFYxy0K5EJ\",\"server_key\":\"SB-Mid-server-pE6FhBweNWjzV3ZJkDueTaYp\"}'),
('no_image', 'no_image_20200408075727.jpg'),
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
(1, 'schema', '{\"type\":\"Organization\",\"content\":{\"person_name\":\"Faanteyki\",\"person_alternateName\":\"Faan\",\"person_gender\":\"male\",\"person_height\":\"163 centimetre\",\"person_birthDate\":\"1999-08-30\",\"person_birthPlace\":\"Bogor, Jawabarat\",\"person_nationality\":\"Indonesia\",\"person_alumniOf\":\"SMK Generasi Madani\",\"person_memberOf\":\"Kurteyki\",\"person_streetAddress\":\"RT.05 RW.04 NO.C23\",\"person_addressLocality\":\"Cibinong\",\"person_addressRegion\":\"Indonesia\",\"person_postalCode\":\"16916\",\"person_email\":\"life.irfaan@gmail.com\",\"person_telephone\":\"+62 813 8921 5100\",\"person_url\":\"https:\\/\\/kurteyki.com\",\"person_sameAs\":\"https:\\/\\/facebook.com\\/faanteyki\",\"person_jobTitle\":\"Bobobib\",\"person_worksFor_name\":\"Bobobib\",\"person_worksFor_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_name\":\"Kurteyki\",\"organization_url\":\"https:\\/\\/www.kurteyki.com\\/\",\"organization_contactPoint_telephone\":\"+62 813 8921 5100\",\"organization_contactPoint_contactType\":\"customer service\",\"organization_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_logo_url\":\"organization_logo_url_20200408103244.png\",\"person_image\":\"person_image_20200408103244.png\"}}'),
(2, 'open_graph', '{\"app_id\":\"\",\"publisher\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"author\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"default_image\":\"open_graph_default_image_20200408103244.png\"}'),
(3, 'twitter_card', '{\"publisher\":\"@kurteyki\",\"default_image\":\"twitter_card_default_image_20200408103244.png\"}');

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
(1, 'Privacy', 'privacy', '2020-03-21 18:36:40', '2020-04-09 06:06:48', '&lt;p&gt;If you require any more information or have any questions about our privacy policy, please feel free to contact us by email at http://www.kurteyki.com/p/contact.html&lt;/p&gt;\r\n\r\n&lt;p&gt;At www.kurteyki.com we consider the privacy of our visitors to be extremely important. This privacy policy document describes in detail the types of personal information is collected and recorded by www.kurteyki.com and how we use it.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Log Files&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Like many other Web sites, www.kurteyki.com makes use of log files. These files merely logs visitors to the site - usually a standard procedure for hosting companies and a part of hosting services&amp;#39;s analytics. The information inside the log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date/time stamp, referring/exit pages, and possibly the number of clicks. This information is used to analyze trends, administer the site, track user&amp;#39;s movement around the site, and gather demographic information. IP addresses, and other such information are not linked to any information that is personally identifiable.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Cookies and Web Beacons&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;www.kurteyki.com uses cookies to store information about visitors&amp;#39; preferences, to record user-specific information on which pages the site visitor accesses or visits, and to personalize or customize our web page content based upon visitors&amp;#39; browser type or other information that the visitor sends via their browser.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Our Advertising Partners&lt;/b&gt; Some of our advertising partners may use cookies and web beacons on our site. Our advertising partners include ...&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Google&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;While each of these advertising partners has their own Privacy Policy for their site. You may consult this listing to find the privacy policy for each of the advertising partners of www.kurteyki.com.&lt;/em&gt; These third-party ad servers or ad networks use technology in their respective advertisements and links that appear on www.kurteyki.com and which are sent directly to your browser. They automatically receive your IP address when this occurs. Other technologies (such as cookies, JavaScript, or Web Beacons) may also be used by our site&amp;#39;s third-party ad networks to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on the site. www.kurteyki.com has no access to or control over these cookies that are used by third-party advertisers.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Third Party Privacy Policies&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You should consult the respective privacy policies of these third-party ad servers for more detailed information on their practices as well as for instructions about how to opt-out of certain practices. www.kurteyki.com&amp;#39;s privacy policy does not apply to, and we cannot control the activities of, such other advertisers or web sites. If you wish to disable cookies, you may do so through your individual browser options. More detailed information about cookie management with specific web browsers can be found at the browsers&amp;#39; respective websites.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Children&amp;#39;s Information&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We believe it is important to provide added protection for children online. We encourage parents and guardians to spend time online with their children to observe, participate in and/or monitor and guide their online activity. www.kurteyki.com does not knowingly collect any personally identifiable information from children under the age of 13. If a parent or guardian believes that www.kurteyki.com has in its database the personally-identifiable information of a child under the age of 13, please contact us immediately (using the contact in the first paragraph) and we will use our best efforts to promptly remove such information from our records.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Online Privacy Policy Only&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This privacy policy applies only to our online activities and is valid for visitors to our website and regarding information shared and/or collected there. This policy does not apply to any information collected offline or via channels other than this website.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Consent&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;By using our website, you hereby consent to our privacy policy and agree to its terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Update&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This Privacy Policy was last updated on: Sunday, December 3rd, 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Should we update, amend or make any changes to our privacy policy, those changes will be posted here.&lt;/em&gt;&lt;/p&gt;\r\n', 'Published');

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
(1, '::1', '2020-04-11 16:22:52', 'Chrome', 'Windows 10', 'Other', 'Other', 475, 'http://localhost/kurteyki/', ''),
(2, '::1', '2020-04-11 16:22:54', 'Chrome', 'Windows 10', 'Other', 'Other', 84, 'http://localhost/kurteyki/blog', ''),
(3, '::1', '2020-04-11 16:22:56', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/search', ''),
(4, '::1', '2020-04-11 16:24:39', 'Chrome', 'Windows 10', 'Other', 'Other', 39, 'http://localhost/kurteyki/p/privacy', ''),
(5, '::1', '2020-04-11 16:42:08', 'Chrome', 'Windows 10', 'Other', 'Other', 51, 'http://localhost/kurteyki/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(6, '::1', '2020-04-11 16:47:38', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/blog/category/hello-world', ''),
(7, '::1', '2020-04-11 16:47:41', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/tags/hello-world', ''),
(8, '::1', '2020-04-11 16:52:17', 'Chrome', 'Windows 10', 'Other', 'Other', 44, 'http://localhost/kurteyki/courses/category/skill-hidup', ''),
(9, '::1', '2020-04-11 16:56:23', 'Chrome', 'Windows 10', 'Other', 'Other', 90, 'http://localhost/kurteyki/courses/detail/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi', ''),
(10, '::1', '2020-04-11 16:58:56', 'Chrome', 'Windows 10', 'Other', 'Other', 35, 'http://localhost/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/1', ''),
(11, '::1', '2020-04-11 16:58:58', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://localhost/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/2', ''),
(12, '::1', '2020-04-11 16:58:59', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://localhost/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/3', ''),
(13, '::1', '2020-04-11 16:59:00', 'Chrome', 'Windows 10', 'Other', 'Other', 20, 'http://localhost/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/4', ''),
(14, '::1', '2020-04-11 16:59:01', 'Chrome', 'Windows 10', 'Other', 'Other', 15, 'http://localhost/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/5', ''),
(15, '192.168.2.1', '2020-04-11 16:59:32', 'Chrome', 'Android', 'Other', 'Other', 1, 'http://192.168.2.10/kurteyki/', ''),
(16, '192.168.2.1', '2020-04-11 16:59:36', 'Chrome', 'Android', 'Other', 'Other', 5, 'http://192.168.2.10/kurteyki/courses/detail/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi', ''),
(17, '192.168.2.1', '2020-04-11 17:00:34', 'Chrome', 'Android', 'Other', 'Other', 6, 'http://192.168.2.10/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/1', ''),
(18, '192.168.2.1', '2020-04-11 17:01:59', 'Chrome', 'Android', 'Other', 'Other', 2, 'http://192.168.2.10/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/2', ''),
(19, '192.168.2.1', '2020-04-11 17:02:02', 'Chrome', 'Android', 'Other', 'Other', 2, 'http://192.168.2.10/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/3', ''),
(20, '192.168.2.1', '2020-04-11 17:02:09', 'Chrome', 'Android', 'Other', 'Other', 5, 'http://192.168.2.10/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/4', ''),
(21, '192.168.2.1', '2020-04-11 17:02:46', 'Chrome', 'Android', 'Other', 'Other', 2, 'http://192.168.2.10/kurteyki/courses/lesson/surah-ar-rahmansurah-yasinsurah-al-waqiahsurah-al-mulk-surah-al-kahfi/1/5', ''),
(22, '::1', '2020-04-11 19:38:19', 'Chrome', 'Windows 10', 'Other', 'Other', 63, 'http://localhost/kurteyki/courses/category/karakter', ''),
(23, '::1', '2020-04-11 19:38:31', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/detail/memulai-dengan-tujuan-dan-keyakinan', ''),
(24, '::1', '2020-04-11 19:42:39', 'Chrome', 'Windows 10', 'Other', 'Other', 235, 'http://localhost/kurteyki/courses/detail/memulai-dengan-tujuan-dan-yakin', ''),
(25, '::1', '2020-04-11 19:42:41', 'Chrome', 'Windows 10', 'Other', 'Other', 94, 'http://localhost/kurteyki/courses/lesson/memulai-dengan-tujuan-dan-yakin/1/1', ''),
(26, '::1', '2020-04-11 19:42:43', 'Chrome', 'Windows 10', 'Other', 'Other', 69, 'http://localhost/kurteyki/courses/lesson/memulai-dengan-tujuan-dan-yakin/2/2', ''),
(27, '::1', '2020-04-11 19:42:44', 'Chrome', 'Windows 10', 'Other', 'Other', 64, 'http://localhost/kurteyki/courses/lesson/memulai-dengan-tujuan-dan-yakin/2/3', ''),
(28, '::1', '2020-04-11 19:45:01', 'Chrome', 'Windows 10', 'Other', 'Other', 63, 'http://localhost/kurteyki/courses/lesson/memulai-dengan-tujuan-dan-yakin/1/4', ''),
(29, '::1', '2020-04-11 21:26:37', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://localhost/kurteyki/courses/search', ''),
(30, '::1', '2020-04-11 22:19:40', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/courses/detail/mengatur-prioriitas-waktu', ''),
(31, '::1', '2020-04-11 22:22:46', 'Chrome', 'Windows 10', 'Other', 'Other', 12, 'http://localhost/kurteyki/courses/detail/mengatur-prioritas-waktu', ''),
(32, '::1', '2020-04-11 22:25:01', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/mengatur-prioritas-waktu/1/1', ''),
(33, '::1', '2020-04-11 22:31:41', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/detail/rangkuman-buku-adam-khoo-im-gifted-so-are-you', ''),
(34, '::1', '2020-04-11 22:32:51', 'Chrome', 'Windows 10', 'Other', 'Other', 19, 'http://localhost/kurteyki/courses/detail/rangkuman-buku-i-am-gifted-so-are-you', ''),
(35, '::1', '2020-04-11 22:32:53', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/courses/lesson/rangkuman-buku-i-am-gifted-so-are-you/1/1', ''),
(36, '::1', '2020-04-11 22:32:54', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/courses/lesson/rangkuman-buku-i-am-gifted-so-are-you/1/4', ''),
(37, '::1', '2020-04-11 22:32:56', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/rangkuman-buku-i-am-gifted-so-are-you/2/3', ''),
(38, '::1', '2020-04-11 22:32:56', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/lesson/rangkuman-buku-i-am-gifted-so-are-you/2/2', ''),
(39, '::1', '2020-04-11 22:45:51', 'Chrome', 'Windows 10', 'Other', 'Other', 68, 'http://localhost/kurteyki/courses/detail/ilmu-menjadi-manusia-berbakat-dari-adam-khoo', ''),
(40, '::1', '2020-04-11 22:49:21', 'Chrome', 'Windows 10', 'Other', 'Other', 20, 'http://localhost/kurteyki/courses/lesson/ilmu-menjadi-manusia-berbakat-dari-adam-khoo/1/1', ''),
(41, '::1', '2020-04-11 22:49:22', 'Chrome', 'Windows 10', 'Other', 'Other', 16, 'http://localhost/kurteyki/courses/lesson/ilmu-menjadi-manusia-berbakat-dari-adam-khoo/1/4', ''),
(42, '::1', '2020-04-11 22:49:23', 'Chrome', 'Windows 10', 'Other', 'Other', 13, 'http://localhost/kurteyki/courses/lesson/ilmu-menjadi-manusia-berbakat-dari-adam-khoo/2/3', ''),
(43, '::1', '2020-04-11 22:49:24', 'Chrome', 'Windows 10', 'Other', 'Other', 14, 'http://localhost/kurteyki/courses/lesson/ilmu-menjadi-manusia-berbakat-dari-adam-khoo/2/2', ''),
(44, '::1', '2020-04-11 23:32:11', 'Chrome', 'Windows 10', 'Other', 'Other', 9, 'http://localhost/kurteyki/courses/detail/cara-menjadi-manusia-berbakat-dari-adam-khoo', ''),
(45, '::1', '2020-04-12 06:12:33', 'Chrome', 'Windows 10', 'Other', 'Other', 49, 'http://localhost/kurteyki/', ''),
(46, '::1', '2020-04-12 06:15:01', 'Chrome', 'Windows 10', 'Other', 'Other', 30, 'http://localhost/kurteyki/courses/detail/cara-menjadi-manusia-berbakat-dari-adam-khoo', ''),
(47, '::1', '2020-04-12 06:15:06', 'Chrome', 'Windows 10', 'Other', 'Other', 9, 'http://localhost/kurteyki/courses/lesson/cara-menjadi-manusia-berbakat-dari-adam-khoo/1/1', ''),
(48, '::1', '2020-04-12 06:15:36', 'Chrome', 'Windows 10', 'Other', 'Other', 9, 'http://localhost/kurteyki/courses/lesson/cara-menjadi-manusia-berbakat-dari-adam-khoo/1/4', ''),
(49, '::1', '2020-04-12 06:15:37', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://localhost/kurteyki/courses/lesson/cara-menjadi-manusia-berbakat-dari-adam-khoo/2/3', ''),
(50, '::1', '2020-04-12 06:15:38', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/courses/lesson/cara-menjadi-manusia-berbakat-dari-adam-khoo/2/2', ''),
(51, '::1', '2020-04-12 09:22:16', 'Chrome', 'Windows 7', 'Other', 'Other', 5, 'http://localhost/kurteyki/blog', ''),
(52, '::1', '2020-04-12 09:22:20', 'Chrome', 'Windows 7', 'Other', 'Other', 3, 'http://localhost/kurteyki/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(53, '::1', '2020-04-12 09:22:25', 'Chrome', 'Windows 7', 'Other', 'Other', 4, 'http://localhost/kurteyki/p/privacy', ''),
(54, '::1', '2020-04-12 09:23:03', 'Chrome', 'Windows 7', 'Other', 'Other', 6, 'http://localhost/kurteyki/courses/category/karakter', ''),
(55, '::1', '2020-04-12 10:03:23', 'Chrome', 'Windows 7', 'Other', 'Other', 4, 'http://localhost/kurteyki/courses/category/skill-hidup', '');

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
(1, 'kurteyki', '1a5651f74beaa02c5e5fc380875d23a66e4549bd', '', '0', '', 'App', '0000-00-00 00:00:00', '2020-04-11 22:10:00'),
(18, 'user teladan', '8cb2237d0679ca88db6464eac60da96345513964', 'userteladan@gg.cc', '0852808157333', '', 'User', '2020-04-11 16:57:10', '2020-04-11 21:00:09'),
(19, 'user mantap', '8cb2237d0679ca88db6464eac60da96345513964', 'userteladan@gg.ccc', '1234567891', '', 'User', '2020-04-11 19:33:20', '2020-04-11 19:34:12');

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
-- Indexes for table `tb_lms_template`
--
ALTER TABLE `tb_lms_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_lms_template_widget`
--
ALTER TABLE `tb_lms_template_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `id_template` (`id_template`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_courses`
--
ALTER TABLE `tb_lms_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_lms_template`
--
ALTER TABLE `tb_lms_template`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_lms_template_widget`
--
ALTER TABLE `tb_lms_template_widget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_lms_user_lesson`
--
ALTER TABLE `tb_lms_user_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_review`
--
ALTER TABLE `tb_lms_user_review`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_wishlist`
--
ALTER TABLE `tb_lms_user_wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_site_meta`
--
ALTER TABLE `tb_site_meta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_site_pages`
--
ALTER TABLE `tb_site_pages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
