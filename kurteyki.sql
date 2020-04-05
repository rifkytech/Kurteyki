-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 08:39 AM
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
(1, 'Privacy', 'privacy', '2020-03-21 18:36:40', '2020-03-21 20:07:13', '&lt;p&gt;If you require any more information or have any questions about our privacy policy, please feel free to contact us by email at http://www.kurteyki.com/p/contact.html&lt;/p&gt;\r\n\r\n&lt;p&gt;At www.kurteyki.com we consider the privacy of our visitors to be extremely important. This privacy policy document describes in detail the types of personal information is collected and recorded by www.kurteyki.com and how we use it.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Log Files&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Like many other Web sites, www.kurteyki.com makes use of log files. These files merely logs visitors to the site - usually a standard procedure for hosting companies and a part of hosting services&amp;#39;s analytics. The information inside the log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date/time stamp, referring/exit pages, and possibly the number of clicks. This information is used to analyze trends, administer the site, track user&amp;#39;s movement around the site, and gather demographic information. IP addresses, and other such information are not linked to any information that is personally identifiable.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Cookies and Web Beacons&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;www.kurteyki.com uses cookies to store information about visitors&amp;#39; preferences, to record user-specific information on which pages the site visitor accesses or visits, and to personalize or customize our web page content based upon visitors&amp;#39; browser type or other information that the visitor sends via their browser.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Our Advertising Partners&lt;/b&gt; Some of our advertising partners may use cookies and web beacons on our site. Our advertising partners include ...&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Google&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;While each of these advertising partners has their own Privacy Policy for their site. You may consult this listing to find the privacy policy for each of the advertising partners of www.kurteyki.com.&lt;/em&gt; These third-party ad servers or ad networks use technology in their respective advertisements and links that appear on www.kurteyki.com and which are sent directly to your browser. They automatically receive your IP address when this occurs. Other technologies (such as cookies, JavaScript, or Web Beacons) may also be used by our site&amp;#39;s third-party ad networks to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on the site. www.kurteyki.com has no access to or control over these cookies that are used by third-party advertisers.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Third Party Privacy Policies&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You should consult the respective privacy policies of these third-party ad servers for more detailed information on their practices as well as for instructions about how to opt-out of certain practices. www.kurteyki.com&amp;#39;s privacy policy does not apply to, and we cannot control the activities of, such other advertisers or web sites. If you wish to disable cookies, you may do so through your individual browser options. More detailed information about cookie management with specific web browsers can be found at the browsers&amp;#39; respective websites.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Children&amp;#39;s Information&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We believe it is important to provide added protection for children online. We encourage parents and guardians to spend time online with their children to observe, participate in and/or monitor and guide their online activity. www.kurteyki.com does not knowingly collect any personally identifiable information from children under the age of 13. If a parent or guardian believes that www.kurteyki.com has in its database the personally-identifiable information of a child under the age of 13, please contact us immediately (using the contact in the first paragraph) and we will use our best efforts to promptly remove such information from our records.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Online Privacy Policy Only&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This privacy policy applies only to our online activities and is valid for visitors to our website and regarding information shared and/or collected there. This policy does not apply to any information collected offline or via channels other than this website.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Consent&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;By using our website, you hereby consent to our privacy policy and agree to its terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Update&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This Privacy Policy was last updated on: Sunday, December 3rd, 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Should we update, amend or make any changes to our privacy policy, those changes will be posted here.&lt;/em&gt;&lt;/p&gt;\r\n', 'Published');

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
(1, 'Konten Baru dan Rencana Kedepannya Situs ini.', 'konten-baru-dan-rencana-kedepannya-situs-ini', 'http://xin.com/storage/uploads/images/1911368.jpg', '2020-03-21 18:44:54', '2020-04-03 07:33:44', '1', '1', '&lt;p&gt;Sudah 6 bulan berlalu dan kini saya akan mengaktifkan situs ini menjadi sebuah blog. situs ini nantinya akan dipenuhi dengan tulisan tentang pengembangan diri.&lt;/p&gt;\r\n\r\n&lt;p&gt;alasan saya menuliskan tentang pengembangan diri di situs ini adalah untuk mencatat apa saja yang telah saya pelajari tentang pengembangan diri dan mungkin bisa berguna untuk para pembaca sekalian.&lt;/p&gt;\r\n\r\n&lt;p&gt;sedikit gambaran tentang pengembangan diri, jadi pengembangan diri menurut saya itu seperti mengasah kemampuan diri untuk menjalani hidup ini. dengan adanya pemahaman tentang skill hidup maka untuk menjalani kehidupan ini juga kita akan selalu merasa mudah.&lt;/p&gt;\r\n', '', 12, 'Published'),
(102, 'anak babhi ngepet', 'search-babi-ngepet', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(103, 'anak babhi ngepet', 'search-babi-ngepet-691710910', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(104, 'anak babhi ngepet', 'search-babi-ngepet-1961988525', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(105, 'anak babhi ngepet', 'search-babi-ngepet-522848228', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(106, 'anak babhi ngepet', 'search-babi-ngepet-1891264872', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(107, 'anak babhi ngepet', 'search-babi-ngepet-952478031', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(108, 'anak babhi ngepet', 'search-babi-ngepet-759360516', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(109, 'anak babhi ngepet', 'search-babi-ngepet-1126030244', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(110, 'anak babhi ngepet', 'search-babi-ngepet-206986675', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(111, 'anak babhi ngepet', 'search-babi-ngepet-2095543052', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(112, 'anak babhi ngepet', 'search-babi-ngepet-829288769', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(113, 'anak babhi ngepet', 'search-babi-ngepet-476812284', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(114, 'anak babhi ngepet', 'search-babi-ngepet-1362434039', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(115, 'anak babhi ngepet', 'search-babi-ngepet-1498233176', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(116, 'anak babhi ngepet', 'search-babi-ngepet-766287224', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(117, 'anak babhi ngepet', 'search-babi-ngepet-581023153', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(118, 'anak babhi ngepet', 'search-babi-ngepet-1012037470', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(119, 'anak babhi ngepet', 'search-babi-ngepet-649654760', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(120, 'anak babhi ngepet', 'search-babi-ngepet-1346591602', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(121, 'anak babhi ngepet', 'search-babi-ngepet-2124819076', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(122, 'anak babhi ngepet', 'search-babi-ngepet-1922488186', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(123, 'anak babhi ngepet', 'search-babi-ngepet-2019443745', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(124, 'anak babhi ngepet', 'search-babi-ngepet-183656554', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(125, 'anak babhi ngepet', 'search-babi-ngepet-1825968683', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(126, 'anak babhi ngepet', 'search-babi-ngepet-1386199006', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(127, 'anak babhi ngepet', 'search-babi-ngepet-1939567486', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(128, 'anak babhi ngepet', 'search-babi-ngepet-521044978', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(129, 'anak babhi ngepet', 'search-babi-ngepet-999505202', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(130, 'anak babhi ngepet', 'search-babi-ngepet-152767656', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(131, 'anak babhi ngepet', 'search-babi-ngepet-763972800', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(132, 'anak babhi ngepet', 'search-babi-ngepet-1222012303', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(133, 'anak babhi ngepet', 'search-babi-ngepet-1691033918', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(134, 'anak babhi ngepet', 'search-babi-ngepet-712362538', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(135, 'anak babhi ngepet', 'search-babi-ngepet-1707214668', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(136, 'anak babhi ngepet', 'search-babi-ngepet-16805611', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(137, 'anak babhi ngepet', 'search-babi-ngepet-666376048', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(138, 'anak babhi ngepet', 'search-babi-ngepet-940234409', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(139, 'anak babhi ngepet', 'search-babi-ngepet-685783031', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(140, 'anak babhi ngepet', 'search-babi-ngepet-461849932', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(141, 'anak babhi ngepet', 'search-babi-ngepet-549228371', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(142, 'anak babhi ngepet', 'search-babi-ngepet-1016077142', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(143, 'anak babhi ngepet', 'search-babi-ngepet-1113228595', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(144, 'anak babhi ngepet', 'search-babi-ngepet-1408725601', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(145, 'anak babhi ngepet', 'search-babi-ngepet-765451022', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(146, 'anak babhi ngepet', 'search-babi-ngepet-1125556878', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(147, 'anak babhi ngepet', 'search-babi-ngepet-1795915473', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(148, 'anak babhi ngepet', 'search-babi-ngepet-1316354867', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(149, 'anak babhi ngepet', 'search-babi-ngepet-1114388829', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(150, 'anak babhi ngepet', 'search-babi-ngepet-1598024326', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(151, 'anak babhi ngepet', 'search-babi-ngepet-1359759324', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(152, 'anak babhi ngepet', 'search-babi-ngepet-203081519', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(153, 'anak babhi ngepet', 'search-babi-ngepet-1586584613', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(154, 'anak babhi ngepet', 'search-babi-ngepet-1810326597', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(155, 'anak babhi ngepet', 'search-babi-ngepet-1253876410', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(156, 'anak babhi ngepet', 'search-babi-ngepet-889384185', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(157, 'anak babhi ngepet', 'search-babi-ngepet-959705632', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(158, 'anak babhi ngepet', 'search-babi-ngepet-1526293347', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(159, 'anak babhi ngepet', 'search-babi-ngepet-254370327', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(160, 'anak babhi ngepet', 'search-babi-ngepet-923717519', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(161, 'anak babhi ngepet', 'search-babi-ngepet-1622982950', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(162, 'anak babhi ngepet', 'search-babi-ngepet-2113614992', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(163, 'anak babhi ngepet', 'search-babi-ngepet-675754685', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(164, 'anak babhi ngepet', 'search-babi-ngepet-268307121', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(165, 'anak babhi ngepet', 'search-babi-ngepet-620401425', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(166, 'anak babhi ngepet', 'search-babi-ngepet-518192413', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(167, 'anak babhi ngepet', 'search-babi-ngepet-1602845290', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(168, 'anak babhi ngepet', 'search-babi-ngepet-355955416', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(169, 'anak babhi ngepet', 'search-babi-ngepet-798438082', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(170, 'anak babhi ngepet', 'search-babi-ngepet-1947093892', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(171, 'anak babhi ngepet', 'search-babi-ngepet-989257', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(172, 'anak babhi ngepet', 'search-babi-ngepet-2122075498', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(173, 'anak babhi ngepet', 'search-babi-ngepet-1386744837', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(174, 'anak babhi ngepet', 'search-babi-ngepet-332606347', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(175, 'anak babhi ngepet', 'search-babi-ngepet-1818440769', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(176, 'anak babhi ngepet', 'search-babi-ngepet-883842312', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(177, 'anak babhi ngepet', 'search-babi-ngepet-50241724', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(178, 'anak babhi ngepet', 'search-babi-ngepet-318762013', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(179, 'anak babhi ngepet', 'search-babi-ngepet-411242210', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(180, 'anak babhi ngepet', 'search-babi-ngepet-2105966057', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(181, 'anak babhi ngepet', 'search-babi-ngepet-912578029', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(182, 'anak babhi ngepet', 'search-babi-ngepet-1686849432', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(183, 'anak babhi ngepet', 'search-babi-ngepet-653853822', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(184, 'anak babhi ngepet', 'search-babi-ngepet-1428881196', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(185, 'anak babhi ngepet', 'search-babi-ngepet-1637441190', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(186, 'anak babhi ngepet', 'search-babi-ngepet-1252482306', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(187, 'anak babhi ngepet', 'search-babi-ngepet-1949827230', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(188, 'anak babhi ngepet', 'search-babi-ngepet-1115494329', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(189, 'anak babhi ngepet', 'search-babi-ngepet-2060268290', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(190, 'anak babhi ngepet', 'search-babi-ngepet-62273943', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(191, 'anak babhi ngepet', 'search-babi-ngepet-1179879742', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(192, 'anak babhi ngepet', 'search-babi-ngepet-399020371', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(193, 'anak babhi ngepet', 'search-babi-ngepet-1692613459', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 2, 'Published'),
(194, 'anak babhi ngepet', 'search-babi-ngepet-787869905', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(195, 'anak babhi ngepet', 'search-babi-ngepet-670314435', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(196, 'anak babhi ngepet', 'search-babi-ngepet-103320732', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(197, 'anak babhi ngepet', 'search-babi-ngepet-438527958', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 0, 'Published'),
(198, 'anak babhi ngepet', 'search-babi-ngepet-1190553188', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(199, 'anak babhi ngepet', 'search-babi-ngepet-1411492242', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 2, 'Published'),
(200, 'anak babhi ngepet', 'search-babi-ngepet-2136629502', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published'),
(201, 'anak babhi ngepet', 'search-babi-ngepet-616598673', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '2020-04-04 15:12:00', '0000-00-00 00:00:00', '1', '1', '&lt;p&gt;asdsadas&lt;/p&gt;\r\n', 'asdasdasd', 1, 'Published');

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
(17, 2, 'ads post content', 'ads_post_content', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(18, 2, 'footer_pages', 'footer_pages', 'pages', '{\"status\":\"active\",\"title\":\"Pages\",\"id\":[\"1\"]}'),
(19, 2, 'Navigation Header', 'navigation_header', 'category', '{\"status\":\"active\",\"title\":\"Menu\",\"id\":[\"1\"]}');

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
  `price` int(255) DEFAULT NULL,
  `discount` int(255) NOT NULL,
  `views` int(11) NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_lms_courses`
--

INSERT INTO `tb_lms_courses` (`id`, `title`, `permalink`, `image`, `description`, `faq`, `id_category`, `id_sub_category`, `time`, `updated`, `price`, `discount`, `views`, `status`) VALUES
(484, 'WAWA', 'wawa', 'http://xin.com/storage/uploads/images/tooopen_sy_21330733728965.jpg', '&lt;p&gt;ww&lt;/p&gt;\r\n', '&lt;p&gt;ww&lt;/p&gt;\r\n', '3', '11', '2020-04-05 07:03:00', '0000-00-00 00:00:00', 10000, 0, 1, 'Published');

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
(30, 484, 48, 'www', 'Image', '<p>www</p>\r\n', 0);

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
(48, 484, 'qq', 0);

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
('13C484T200405072029', 13, 484, 'bank_transfer', '10000', '3b7d7a61-adb9-414f-af23-071a3592a8f9', '2020-04-05 07:21:18', '0000-00-00 00:00:00', 'Purchased');

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

--
-- Dumping data for table `tb_lms_user_wishlist`
--

INSERT INTO `tb_lms_user_wishlist` (`id`, `id_user`, `id_courses`, `time`) VALUES
(22, 11, 484, '2020-04-05 13:20:38');

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
('cache', 'No'),
('comment', '{\"type\":\"disable\",\"disqus_shortname\":\"kurteyki\",\"disqus_developer\":\"1\",\"moderate\":\"true\",\"message\":\"Komentar diblokir\"}'),
('currency_format', 'IDR'),
('description', 'Ilmu Pengembangan Diri untuk Hidup yang lebih baik.'),
('icon', 'icon_20200324110612.png'),
('image', 'logo_20200324103241.png'),
('language', 'indonesia'),
('limit_post', '9'),
('midtrans', '{\r\n	\"client_key\":\"SB-Mid-client-kda5uXSFYxy0K5EJ\",\r\n	\"server_key\":\"SB-Mid-server-pE6FhBweNWjzV3ZJkDueTaYp\"\r\n}'),
('no_image', 'no_image_20200324100516.jpg'),
('robots_txt', ''),
('slogan', 'Belajar pengembangan diri'),
('time_zone', 'Asia/Jakarta'),
('title', 'Kurteyki');

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
(1, 'schema', '{\"type\":\"Organization\",\"content\":{\"person_name\":\"Faanteyki\",\"person_alternateName\":\"Faan\",\"person_gender\":\"male\",\"person_height\":\"163 centimetre\",\"person_birthDate\":\"1999-08-30\",\"person_birthPlace\":\"Bogor, Jawabarat\",\"person_nationality\":\"Indonesia\",\"person_alumniOf\":\"SMK Generasi Madani\",\"person_memberOf\":\"Kurteyki\",\"person_streetAddress\":\"RT.05 RW.04 NO.C23\",\"person_addressLocality\":\"Cibinong\",\"person_addressRegion\":\"Indonesia\",\"person_postalCode\":\"16916\",\"person_email\":\"life.irfaan@gmail.com\",\"person_telephone\":\"+62 813 8921 5100\",\"person_url\":\"https:\\/\\/kurteyki.com\",\"person_sameAs\":\"https:\\/\\/facebook.com\\/faanteyki\",\"person_jobTitle\":\"Bobobib\",\"person_worksFor_name\":\"Bobobib\",\"person_worksFor_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_name\":\"Kurteyki\",\"organization_url\":\"https:\\/\\/www.kurteyki.com\\/\",\"organization_contactPoint_telephone\":\"+62 813 8921 5100\",\"organization_contactPoint_contactType\":\"customer service\",\"organization_sameAs\":\"https:\\/\\/facebook.com\\/kurteyki\",\"organization_logo_url\":\"organization_logo_url_20200324103346.png\",\"person_image\":\"person_image_20200324103414.png\"}}'),
(2, 'open_graph', '{\"app_id\":\"\",\"publisher\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"author\":\"https:\\/\\/www.facebook.com\\/kurteyki\",\"default_image\":\"open_graph_default_image_20200324103346.png\"}'),
(3, 'twitter_card', '{\"publisher\":\"@kurteyki\",\"default_image\":\"twitter_card_default_image_20200324103346.png\"}');

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
(1, '::1', '2020-03-30 15:21:05', 'Chrome', 'Windows 10', 'Other', 'Other', 116, 'http://localhost/kurteyki/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(2, '::1', '2020-03-30 15:21:09', 'Chrome', 'Windows 10', 'Other', 'Other', 67, 'http://localhost/kurteyki/', ''),
(3, '::1', '2020-03-30 15:28:22', 'Chrome', 'Windows 10', 'Other', 'Other', 190, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(4, '::1', '2020-03-30 16:42:14', 'Chrome', 'Windows 10', 'Other', 'Other', 13, 'http://localhost/kurteyki/courses/category/php', ''),
(5, '::1', '2020-03-30 16:42:18', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://localhost/kurteyki/courses/category/html', ''),
(6, '::1', '2020-03-30 16:42:19', 'Chrome', 'Windows 10', 'Other', 'Other', 30, 'http://localhost/kurteyki/courses/category/kentang', ''),
(7, '::1', '2020-03-30 17:39:07', 'Chrome', 'Windows 10', 'Other', 'Other', 33, 'http://localhost/kurteyki/courses/index/12', ''),
(8, '::1', '2020-03-30 17:39:11', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/detail/lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore-magna-aliqua-ut-enim-ad-minim-veniam-quis-nostrud-exercitation-ullamco-laboris-nisi-ut-aliquip-ex-ea-comm', ''),
(9, '::1', '2020-03-30 17:39:29', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/index/2', ''),
(10, '::1', '2020-03-30 17:39:35', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/courses/category/kentang/index/12', ''),
(11, '::1', '2020-03-30 17:39:56', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/courses/category/kentang/index/2', ''),
(12, '::1', '2020-03-30 17:40:38', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/courses/category/kentang/index/3', ''),
(13, '::1', '2020-03-30 17:40:45', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/category/kentang/index/11', ''),
(14, '::1', '2020-03-30 17:40:47', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/courses/category/kentang/index/10', ''),
(15, '::1', '2020-03-30 17:41:29', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/category/kentang/index', ''),
(16, '::1', '2020-03-30 17:41:35', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/category/kentang/index/4', ''),
(17, '::1', '2020-03-30 17:41:38', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/category/kentang/index/5', ''),
(18, '::1', '2020-03-30 17:41:40', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/category/kentang/index/6', ''),
(19, '::1', '2020-03-30 17:41:45', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/category/kentang/index/7', ''),
(20, '::1', '2020-03-30 17:41:47', 'Chrome', 'Windows 10', 'Other', 'Other', 25, 'http://localhost/kurteyki/courses/detail/rider-asal-jambi-di-sambut-istimewa-sama-pemerintah-arab-saudi', ''),
(21, '::1', '2020-03-30 17:42:37', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/courses/index/11', ''),
(22, '::1', '2020-03-30 17:44:42', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/index/10', ''),
(23, '::1', '2020-03-30 17:44:47', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index', ''),
(24, '::1', '2020-03-30 17:45:04', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/category/kentang/index/766', ''),
(25, '::1', '2020-03-30 17:46:09', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/category/kentang/index/24', ''),
(26, '::1', '2020-03-30 17:46:20', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/category/kentang/index/9', ''),
(27, '::1', '2020-03-30 17:46:22', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/category/kentang/index/8', ''),
(28, '::1', '2020-03-30 17:52:05', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/3', ''),
(29, '::1', '2020-03-30 17:52:06', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/4', ''),
(30, '::1', '2020-03-30 17:52:08', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/5', ''),
(31, '::1', '2020-03-30 17:52:10', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/6', ''),
(32, '::1', '2020-03-30 17:52:12', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/7', ''),
(33, '::1', '2020-03-30 17:52:13', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/8', ''),
(34, '::1', '2020-03-30 17:52:15', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/9', ''),
(35, '::1', '2020-03-30 18:37:56', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/category/kentang/index/120', ''),
(36, '::1', '2020-03-30 19:12:18', 'Chrome', 'Windows 10', 'Other', 'Other', 146, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22', ''),
(37, '::1', '2020-03-30 19:20:00', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22e', ''),
(38, '::1', '2020-03-30 19:20:02', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22e2', ''),
(39, '::1', '2020-03-30 19:20:08', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/222121', ''),
(40, '::1', '2020-03-30 19:20:40', 'Chrome', 'Windows 10', 'Other', 'Other', 40, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/23', ''),
(41, '::1', '2020-03-30 19:20:48', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/18', ''),
(42, '::1', '2020-03-30 19:38:45', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/232', ''),
(43, '::1', '2020-03-30 20:10:58', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/222', ''),
(44, '::1', '2020-03-30 20:18:42', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/18', ''),
(45, '::1', '2020-03-30 20:19:12', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/19', ''),
(46, '::1', '2020-03-30 20:19:17', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/11/18', ''),
(47, '::1', '2020-03-30 20:19:38', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/22', ''),
(48, '::1', '2020-03-30 20:19:41', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/12', ''),
(49, '::1', '2020-03-30 20:21:35', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/123/18', ''),
(50, '::1', '2020-03-31 03:42:21', 'Chrome', 'Windows 10', 'Other', 'Other', 76, 'http://localhost/kurteyki/courses/detail/rider-asal-jambi-di-sambut-istimewa-sama-pemerintah-arab-saudi', ''),
(51, '::1', '2020-03-31 03:42:49', 'Chrome', 'Windows 10', 'Other', 'Other', 445, 'http://localhost/kurteyki/', ''),
(52, '::1', '2020-03-31 03:43:04', 'Chrome', 'Windows 10', 'Other', 'Other', 137, 'http://localhost/kurteyki/courses/index/12', ''),
(53, '::1', '2020-03-31 03:43:12', 'Chrome', 'Windows 10', 'Other', 'Other', 356, 'http://localhost/kurteyki/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(54, '::1', '2020-03-31 03:51:05', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://localhost/kurteyki/courses/index/2', ''),
(55, '::1', '2020-03-31 03:51:18', 'Chrome', 'Windows 10', 'Other', 'Other', 201, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22', ''),
(56, '::1', '2020-03-31 03:51:20', 'Chrome', 'Windows 10', 'Other', 'Other', 111, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/23', ''),
(57, '::1', '2020-03-31 03:51:22', 'Chrome', 'Windows 10', 'Other', 'Other', 87, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/18', ''),
(58, '::1', '2020-03-31 04:07:30', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/19', ''),
(59, '::1', '2020-03-31 04:34:45', 'Chrome', 'Windows 10', 'Other', 'Other', 75, 'http://localhost/kurteyki/courses/category/kentang', ''),
(60, '::1', '2020-03-31 04:34:52', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/courses/category/kentang/index/2', ''),
(61, '::1', '2020-03-31 04:43:33', 'Chrome', 'Windows 10', 'Other', 'Other', 17, 'http://localhost/kurteyki/courses/category/php', ''),
(62, '::1', '2020-03-31 04:43:43', 'Chrome', 'Windows 10', 'Other', 'Other', 17, 'http://localhost/kurteyki/courses/category/html', ''),
(63, '::1', '2020-03-31 04:44:11', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://localhost/kurteyki/courses/category/kentang/index/12', ''),
(64, '::1', '2020-03-31 05:17:31', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/index/11', ''),
(65, '::1', '2020-03-31 05:17:33', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/10', ''),
(66, '::1', '2020-03-31 05:20:39', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/courses/index/3', ''),
(67, '::1', '2020-03-31 05:20:41', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/4', ''),
(68, '::1', '2020-03-31 05:20:44', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/index/5', ''),
(69, '::1', '2020-03-31 05:21:37', 'Chrome', 'Windows 10', 'Other', 'Other', 13, 'http://localhost/kurteyki/courses/index', ''),
(70, '::1', '2020-03-31 05:37:08', 'Chrome', 'Windows 10', 'Other', 'Other', 85, 'http://localhost/kurteyki/blog', ''),
(71, '::1', '2020-03-31 05:38:30', 'Chrome', 'Windows 10', 'Other', 'Other', 34, 'http://localhost/kurteyki/blog/pages/privacy', ''),
(72, '::1', '2020-03-31 05:38:50', 'Chrome', 'Windows 10', 'Other', 'Other', 45, 'http://localhost/kurteyki/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(73, '::1', '2020-03-31 05:38:59', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/blog/tags/basa-basi', ''),
(74, '::1', '2020-03-31 05:39:00', 'Chrome', 'Windows 10', 'Other', 'Other', 22, 'http://localhost/kurteyki/blog/category/tidak-diketahui', ''),
(75, '::1', '2020-03-31 05:43:10', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/blog/post/awwe-1648862912', ''),
(76, '::1', '2020-03-31 05:44:41', 'Chrome', 'Windows 10', 'Other', 'Other', 21, 'http://localhost/kurteyki/blog/index/2', ''),
(77, '::1', '2020-03-31 05:44:45', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/kurteyki/blog/index/3', ''),
(78, '::1', '2020-03-31 05:44:47', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://localhost/kurteyki/blog/index/4', ''),
(79, '::1', '2020-03-31 05:44:50', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://localhost/kurteyki/blog/index/5', ''),
(80, '::1', '2020-03-31 05:44:54', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/index', ''),
(81, '::1', '2020-03-31 05:46:23', 'Chrome', 'Windows 10', 'Other', 'Other', 23, 'http://localhost/kurteyki/blog/index/12', ''),
(82, '::1', '2020-03-31 05:47:53', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/2', ''),
(83, '::1', '2020-03-31 05:49:37', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/5', ''),
(84, '::1', '2020-03-31 05:49:42', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/12', ''),
(85, '::1', '2020-03-31 05:49:49', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/tags/basa-basi/index/2', ''),
(86, '::1', '2020-03-31 05:49:51', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/tags/basa-basi/index/3', ''),
(87, '::1', '2020-03-31 05:49:54', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/tags/basa-basi/index/4', ''),
(88, '::1', '2020-03-31 05:49:56', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/tags/basa-basi/index/5', ''),
(89, '::1', '2020-03-31 05:49:58', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/tags/basa-basi/index/6', ''),
(90, '::1', '2020-03-31 05:50:00', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/tags/basa-basi/index/12', ''),
(91, '::1', '2020-03-31 05:50:37', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/post/awwe-815544035', ''),
(92, '::1', '2020-03-31 05:51:42', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/blog/index/6', ''),
(93, '::1', '2020-03-31 05:51:44', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://localhost/kurteyki/blog/index/7', ''),
(94, '::1', '2020-03-31 05:51:46', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/blog/index/8', ''),
(95, '::1', '2020-03-31 05:54:49', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/post/awwe-1039648519', ''),
(96, '::1', '2020-03-31 05:54:54', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/post/awwe-591693029', ''),
(97, '::1', '2020-03-31 05:54:57', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/post/awwe-2146471322', ''),
(98, '::1', '2020-03-31 05:55:16', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/3', ''),
(99, '::1', '2020-03-31 05:55:33', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/index/10', ''),
(100, '::1', '2020-03-31 05:56:30', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/post/awwe-1456494268', ''),
(101, '::1', '2020-03-31 05:56:32', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/post/awwe-195297657', ''),
(102, '::1', '2020-03-31 05:56:39', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/4', ''),
(103, '::1', '2020-03-31 06:16:34', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/post/awwe', ''),
(104, '::1', '2020-03-31 06:36:20', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/post/awwe-939586257', ''),
(105, '::1', '2020-03-31 08:56:32', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/index/11', ''),
(106, '::1', '2020-03-31 09:27:07', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/auth/register', ''),
(107, '::1', '2020-03-31 17:55:50', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/lms', ''),
(108, '::1', '2020-03-31 19:07:53', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/18', ''),
(109, '::1', '2020-03-31 19:07:57', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/112', ''),
(110, '::1', '2020-03-31 19:11:50', 'Chrome', 'Windows 10', 'Other', 'Other', 15, 'http://localhost/kurteyki/courses/detail/reupload-purple-admin-login-free', ''),
(111, '::1', '2020-03-31 19:12:25', 'Chrome', 'Windows 10', 'Other', 'Other', 9, 'http://localhost/kurteyki/courses/lesson/reupload-purple-admin-login-free/40/25', ''),
(112, '::1', '2020-04-01 02:46:19', 'Chrome', 'Windows 10', 'Other', 'Other', 408, 'http://localhost/kurteyki/', ''),
(113, '::1', '2020-04-01 02:46:22', 'Chrome', 'Windows 10', 'Other', 'Other', 358, 'http://localhost/kurteyki/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(114, '::1', '2020-04-01 03:32:36', 'Chrome', 'Windows 10', 'Other', 'Other', 133, 'http://localhost/kurteyki/courses/detail/reupload-purple-admin-login-free', ''),
(115, '::1', '2020-04-01 03:41:41', 'Chrome', 'Windows 10', 'Other', 'Other', 56, 'http://localhost/kurteyki/courses/lesson/reupload-purple-admin-login-free/40/25', ''),
(116, '::1', '2020-04-01 03:46:13', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://localhost/kurteyki/blog', ''),
(117, '::1', '2020-04-01 03:46:27', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/kurteyki/blog/index/12', ''),
(118, '::1', '2020-04-01 03:46:28', 'Chrome', 'Windows 10', 'Other', 'Other', 16, 'http://localhost/kurteyki/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(119, '::1', '2020-04-01 03:57:46', 'Chrome', 'Windows 10', 'Other', 'Other', 229, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22', ''),
(120, '::1', '2020-04-01 03:59:32', 'Chrome', 'Windows 10', 'Other', 'Other', 115, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/23', ''),
(121, '::1', '2020-04-01 03:59:33', 'Chrome', 'Windows 10', 'Other', 'Other', 94, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/18', ''),
(122, '::1', '2020-04-01 04:53:36', 'Chrome', 'Windows 10', 'Other', 'Other', 10, 'http://localhost/kurteyki/blog/category/tidak-diketahui', ''),
(123, '::1', '2020-04-01 04:53:39', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost/kurteyki/blog/category/tidak-diketahui/index/12', ''),
(124, '::1', '2020-04-01 04:59:55', 'Chrome', 'Windows 10', 'Other', 'Other', 108, 'http://localhost/kurteyki/courses/detail/wawa', ''),
(125, '::1', '2020-04-01 05:37:04', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/blog/tags/basa-basi', ''),
(126, '::1', '2020-04-01 06:30:40', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/wawa/42/26', ''),
(127, '::1', '2020-04-01 06:35:12', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/2222', ''),
(128, '::1', '2020-04-01 06:35:14', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22aa', ''),
(129, '::1', '2020-04-01 06:35:18', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22aawe%20awe', ''),
(130, '::1', '2020-04-01 06:35:26', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22%20babhi', ''),
(131, '::1', '2020-04-01 06:35:47', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36haha/22', ''),
(132, '::1', '2020-04-01 06:35:49', 'Chrome', 'Windows 10', 'Other', 'Other', 9, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22eaeaea', ''),
(133, '::1', '2020-04-01 06:40:03', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/21', ''),
(134, '::1', '2020-04-01 06:40:08', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/24', ''),
(135, '::1', '2020-04-01 06:40:15', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/babi22eaeaea', ''),
(136, '::1', '2020-04-01 06:40:35', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/anjray', ''),
(137, '::1', '2020-04-01 06:40:38', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/ngepet', ''),
(138, '::1', '2020-04-01 06:40:42', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22ngepet', ''),
(139, '::1', '2020-04-01 06:42:14', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22babii%20ngepet', ''),
(140, '::1', '2020-04-01 06:42:22', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/1234/23', ''),
(141, '::1', '2020-04-01 06:42:51', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36ngepetloe/22', ''),
(142, '::1', '2020-04-01 06:42:56', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/23babhii', ''),
(143, '::1', '2020-04-01 06:45:46', 'Chrome', 'Windows 10', 'Other', 'Other', 30, 'http://localhost/kurteyki/courses/category/kentang', ''),
(144, '::1', '2020-04-01 06:45:48', 'Chrome', 'Windows 10', 'Other', 'Other', 13, 'http://localhost/kurteyki/courses/category/php', ''),
(145, '::1', '2020-04-01 09:59:47', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://localhost/kurteyki/courses/category/html', ''),
(146, '::1', '2020-04-01 10:09:26', 'Chrome', 'Windows 10', 'Other', 'Other', 12, 'http://localhost/kurteyki/blog/pages/privacy', ''),
(147, '::1', '2020-04-01 10:10:02', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/blog/tags/basa-basi/index/12', ''),
(148, '::1', '2020-04-01 12:08:37', 'Chrome', 'Windows 10', 'Other', 'Other', 120, 'http://localhost/kurteyki/courses/lesson/reupload-purple-admin-login-free/46/27', ''),
(149, '::1', '2020-04-01 16:16:52', 'Chrome', 'Windows 10', 'Other', 'Other', 16, 'http://localhost/kurteyki/courses/detail/menjadi-bangsawan-terpandang', ''),
(150, '::1', '2020-04-01 16:16:57', 'Chrome', 'Windows 10', 'Other', 'Other', 14, 'http://localhost/kurteyki/courses/lesson/menjadi-bangsawan-terpandang/47/28', ''),
(151, '::1', '2020-04-02 03:18:57', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://localhost/kurteyki/', ''),
(152, '::1', '2020-04-02 03:19:00', 'Chrome', 'Windows 10', 'Other', 'Other', 10, 'http://localhost/kurteyki/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(153, '::1', '2020-04-02 03:48:38', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/kurteyki/courses/detail/reupload-purple-admin-login-free', ''),
(154, '::1', '2020-04-02 03:48:39', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/reupload-purple-admin-login-free/46/27', ''),
(155, '::1', '2020-04-02 03:57:41', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/kurteyki/courses/lesson/menjadi-bangsawan-terpandang/47/28', ''),
(156, '127.0.0.1', '2020-04-02 05:25:20', 'Chrome', 'Windows 10', 'Other', 'Other', 49, 'http://xin.com/', ''),
(157, '127.0.0.1', '2020-04-02 05:27:33', 'Chrome', 'Windows 10', 'Other', 'Other', 35, 'http://xin.com/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(158, '::1', '2020-04-02 05:29:02', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/', ''),
(159, '::1', '2020-04-02 05:29:13', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(160, '127.0.0.1', '2020-04-02 10:40:13', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog', ''),
(161, '127.0.0.1', '2020-04-03 07:09:07', 'Chrome', 'Windows 10', 'Other', 'Other', 224, 'http://xin.com/', ''),
(162, '127.0.0.1', '2020-04-03 07:09:14', 'Chrome', 'Windows 10', 'Other', 'Other', 95, 'http://xin.com/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(163, '127.0.0.1', '2020-04-03 07:12:27', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://xin.com/courses/category/kentang', ''),
(164, '127.0.0.1', '2020-04-03 07:14:21', 'Chrome', 'Windows 10', 'Other', 'Other', 33, 'http://xin.com/courses/lesson/menjadi-bangsawan-terpandang/47/28', ''),
(165, '127.0.0.1', '2020-04-03 07:15:28', 'Chrome', 'Windows 10', 'Other', 'Other', 19, 'http://xin.com/blog', ''),
(166, '::1', '2020-04-03 07:15:35', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost/', ''),
(167, '::1', '2020-04-03 07:15:38', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://localhost/blog', ''),
(168, '::1', '2020-04-03 07:17:36', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/blog/post/awwe-376048547', ''),
(169, '::1', '2020-04-03 07:17:57', 'Chrome', 'Windows 10', 'Other', 'Other', 32, 'http://localhost/blog/index/12', ''),
(170, '::1', '2020-04-03 07:26:52', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(171, '127.0.0.1', '2020-04-03 07:43:44', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://xin.com/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(172, '127.0.0.1', '2020-04-03 07:44:59', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://xin.com/blog/category/tidak-diketahui', ''),
(173, '::1', '2020-04-03 07:45:19', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost/courses/detail/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang', ''),
(174, '127.0.0.1', '2020-04-03 08:16:40', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://xin.com/blog/pages/privacy', ''),
(175, '127.0.0.1', '2020-04-03 08:16:55', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/blog/tags/basa-basi', ''),
(176, '127.0.0.1', '2020-04-03 09:27:51', 'Chrome', 'Windows 10', 'Other', 'Other', 25, 'http://xin.com/courses/detail/menjadi-bangsawan-terpandang', ''),
(177, '127.0.0.1', '2020-04-03 09:28:05', 'Chrome', 'Windows 10', 'Other', 'Other', 25, 'http://xin.com/courses/detail/reupload-purple-admin-login-free', ''),
(178, '127.0.0.1', '2020-04-03 09:28:36', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://xin.com/courses/category/php', ''),
(179, '127.0.0.1', '2020-04-03 09:28:39', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/courses/category/html', ''),
(180, '127.0.0.1', '2020-04-03 09:55:38', 'Chrome', 'Windows 10', 'Other', 'Other', 23, 'http://xin.com/courses/lesson/reupload-purple-admin-login-free/46/27', ''),
(181, '127.0.0.1', '2020-04-03 12:35:44', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://xin.com/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/22', ''),
(182, '127.0.0.1', '2020-04-03 12:35:46', 'Chrome', 'Windows 10', 'Other', 'Other', 16, 'http://xin.com/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/36/23', ''),
(183, '127.0.0.1', '2020-04-03 12:35:47', 'Chrome', 'Windows 10', 'Other', 'Other', 16, 'http://xin.com/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/18', ''),
(184, '127.0.0.1', '2020-04-03 12:35:48', 'Chrome', 'Windows 10', 'Other', 'Other', 17, 'http://xin.com/courses/lesson/menjadi-pendekar-sakti-dengan-jurus-kungfu-liukang-jurus-legendaris-yang-hilang/34/29', ''),
(185, '127.0.0.1', '2020-04-03 13:58:51', 'Chrome', 'Windows 10', 'Other', 'Other', 29, 'http://xin.com/courses/detail/sangkuriang', ''),
(186, '127.0.0.1', '2020-04-04 05:28:37', 'Chrome', 'Windows 10', 'Other', 'Other', 413, 'http://xin.com/', ''),
(187, '127.0.0.1', '2020-04-04 05:28:40', 'Chrome', 'Windows 10', 'Other', 'Other', 80, 'http://xin.com/courses/detail/menjadi-bangsawan-terpandang', ''),
(188, '127.0.0.1', '2020-04-04 05:28:43', 'Chrome', 'Windows 10', 'Other', 'Other', 50, 'http://xin.com/courses/detail/reupload-purple-admin-login-free', ''),
(189, '127.0.0.1', '2020-04-04 05:29:21', 'Chrome', 'Windows 10', 'Other', 'Other', 18, 'http://xin.com/courses/lesson/reupload-purple-admin-login-free/46/27', ''),
(190, '127.0.0.1', '2020-04-04 05:29:44', 'Chrome', 'Windows 10', 'Other', 'Other', 265, 'http://xin.com/courses/detail/sangkuriang', ''),
(191, '127.0.0.1', '2020-04-04 06:05:36', 'Chrome', 'Windows 10', 'Other', 'Other', 28, 'http://xin.com/blog', ''),
(192, '127.0.0.1', '2020-04-04 06:05:41', 'Chrome', 'Windows 10', 'Other', 'Other', 21, 'http://xin.com/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(193, '127.0.0.1', '2020-04-04 06:06:30', 'Chrome', 'Windows 10', 'Other', 'Other', 39, 'http://xin.com/courses/category/kentang', ''),
(194, '127.0.0.1', '2020-04-04 06:06:33', 'Chrome', 'Windows 10', 'Other', 'Other', 20, 'http://xin.com/courses/category/php', ''),
(195, '127.0.0.1', '2020-04-04 06:06:35', 'Chrome', 'Windows 10', 'Other', 'Other', 10, 'http://xin.com/courses/category/html', ''),
(196, '127.0.0.1', '2020-04-04 06:29:13', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/courses/lesson/sangkuriang/36/22', ''),
(197, '127.0.0.1', '2020-04-04 07:29:24', 'Chrome', 'Windows 10', 'Other', 'Other', 25, 'http://xin.com/courses/lesson/menjadi-bangsawan-terpandang/47/28', ''),
(198, '127.0.0.1', '2020-04-04 08:56:59', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://xin.com/blog/pages/privacy', ''),
(199, '127.0.0.1', '2020-04-04 09:08:17', 'Chrome', 'Windows 10', 'Other', 'Other', 6, 'http://xin.com/courses/category/pengembangan-diri', ''),
(200, '127.0.0.1', '2020-04-04 09:56:52', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/lesson/sangkuriang/36/23', ''),
(201, '127.0.0.1', '2020-04-04 09:56:54', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/lesson/sangkuriang/34/18', ''),
(202, '127.0.0.1', '2020-04-04 09:56:55', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/lesson/sangkuriang/34/29', ''),
(203, '127.0.0.1', '2020-04-04 15:06:18', 'Chrome', 'Windows 10', 'Other', 'Other', 12, 'http://xin.com/blog/tags/basa-basi', ''),
(204, '127.0.0.1', '2020-04-04 15:06:21', 'Chrome', 'Windows 10', 'Other', 'Other', 12, 'http://xin.com/blog/category/tidak-diketahui', ''),
(205, '127.0.0.1', '2020-04-04 15:08:55', 'Chrome', 'Windows 10', 'Other', 'Other', 31, 'http://xin.com/blog/search', ''),
(206, '127.0.0.1', '2020-04-04 15:13:24', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://xin.com/blog/post/search-babi-ngepet-1692613459', ''),
(207, '127.0.0.1', '2020-04-04 15:19:02', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/blog/index/12', ''),
(208, '127.0.0.1', '2020-04-04 15:19:08', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/post/search-babi-ngepet-2136629502', ''),
(209, '127.0.0.1', '2020-04-04 15:19:09', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/post/search-babi-ngepet-1190553188', ''),
(210, '127.0.0.1', '2020-04-04 15:19:18', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/blog/post/search-babi-ngepet-616598673', ''),
(211, '127.0.0.1', '2020-04-04 15:19:32', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/category/tidak-diketahui/index/12', ''),
(212, '127.0.0.1', '2020-04-04 15:19:33', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-1598024326', ''),
(213, '127.0.0.1', '2020-04-04 15:19:38', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-1411492242', ''),
(214, '127.0.0.1', '2020-04-04 15:21:00', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-787869905', ''),
(215, '127.0.0.1', '2020-04-04 15:26:16', 'Chrome', 'Windows 10', 'Other', 'Other', 54, 'http://xin.com/courses/search', ''),
(216, '127.0.0.1', '2020-04-04 15:36:48', 'Chrome', 'Windows 10', 'Other', 'Other', 19, 'http://xin.com/courses/index/12', ''),
(217, '127.0.0.1', '2020-04-04 15:36:52', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/11', ''),
(218, '127.0.0.1', '2020-04-04 15:36:59', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/10', ''),
(219, '127.0.0.1', '2020-04-04 15:37:00', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/9', ''),
(220, '127.0.0.1', '2020-04-04 15:37:03', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/6', ''),
(221, '127.0.0.1', '2020-04-04 15:37:04', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index', ''),
(222, '127.0.0.1', '2020-04-04 15:37:07', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/courses/index/2', ''),
(223, '127.0.0.1', '2020-04-04 15:37:14', 'Chrome', 'Windows 10', 'Other', 'Other', 22, 'http://xin.com/courses/detail/qwewe', ''),
(224, '127.0.0.1', '2020-04-04 15:39:11', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/12', ''),
(225, '127.0.0.1', '2020-04-04 15:39:13', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/11', ''),
(226, '127.0.0.1', '2020-04-04 15:39:15', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/10', ''),
(227, '127.0.0.1', '2020-04-04 15:39:16', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/8', ''),
(228, '127.0.0.1', '2020-04-04 15:39:18', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/6', ''),
(229, '127.0.0.1', '2020-04-04 15:39:27', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/category/tidak-diketahui/index/2', ''),
(230, '127.0.0.1', '2020-04-04 15:39:32', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/category/tidak-diketahui/index/3', ''),
(231, '127.0.0.1', '2020-04-04 15:39:36', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-318762013', ''),
(232, '127.0.0.1', '2020-04-04 15:39:41', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/tags/basa-basi/index/2', ''),
(233, '127.0.0.1', '2020-04-04 15:41:08', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/3', ''),
(234, '127.0.0.1', '2020-04-05 05:34:21', 'Chrome', 'Windows 10', 'Other', 'Other', 131, 'http://xin.com/', ''),
(235, '127.0.0.1', '2020-04-05 05:34:25', 'Chrome', 'Windows 10', 'Other', 'Other', 38, 'http://xin.com/courses/index/12', ''),
(236, '127.0.0.1', '2020-04-05 05:34:27', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://xin.com/courses/detail/sangkuriang', ''),
(237, '127.0.0.1', '2020-04-05 06:22:13', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/detail/menjadi-bangsawan-terpandang', ''),
(238, '127.0.0.1', '2020-04-05 06:22:16', 'Chrome', 'Windows 10', 'Other', 'Other', 8, 'http://xin.com/courses/detail/qwewe', ''),
(239, '127.0.0.1', '2020-04-05 06:22:30', 'Chrome', 'Windows 10', 'Other', 'Other', 13, 'http://xin.com/blog', ''),
(240, '127.0.0.1', '2020-04-05 06:28:49', 'Chrome', 'Windows 10', 'Other', 'Other', 5, 'http://xin.com/courses/index/11', ''),
(241, '127.0.0.1', '2020-04-05 06:28:51', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/10', ''),
(242, '127.0.0.1', '2020-04-05 06:28:52', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/index/9', ''),
(243, '127.0.0.1', '2020-04-05 06:28:54', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/index/8', ''),
(244, '127.0.0.1', '2020-04-05 06:28:55', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/7', ''),
(245, '127.0.0.1', '2020-04-05 06:28:57', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/index/6', ''),
(246, '127.0.0.1', '2020-04-05 06:28:58', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/index/5', ''),
(247, '127.0.0.1', '2020-04-05 06:29:00', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/index/4', ''),
(248, '127.0.0.1', '2020-04-05 06:57:21', 'Chrome', 'Windows 10', 'Other', 'Other', 10, 'http://xin.com/courses/index', ''),
(249, '127.0.0.1', '2020-04-05 07:00:18', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/index/12', ''),
(250, '127.0.0.1', '2020-04-05 07:03:26', 'Chrome', 'Windows 10', 'Other', 'Other', 76, 'http://xin.com/courses/detail/wawa', ''),
(251, '127.0.0.1', '2020-04-05 07:04:06', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://xin.com/courses/lesson/wawa/48/30', ''),
(252, '127.0.0.1', '2020-04-05 07:08:54', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/blog/pages/privacy', ''),
(253, '127.0.0.1', '2020-04-05 07:09:04', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/category/tidak-diketahui', ''),
(254, '127.0.0.1', '2020-04-05 07:27:53', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://xin.com/courses/category/kentang', ''),
(255, '127.0.0.1', '2020-04-05 07:27:55', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/courses/category/php', ''),
(256, '127.0.0.1', '2020-04-05 07:27:57', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/courses/category/html', ''),
(257, '127.0.0.1', '2020-04-05 07:46:16', 'Chrome', 'Windows 10', 'Other', 'Other', 10, 'http://xin.com/courses/index/2', ''),
(258, '127.0.0.1', '2020-04-05 07:46:17', 'Chrome', 'Windows 10', 'Other', 'Other', 24, 'http://xin.com/courses/index/asdasd', ''),
(259, '127.0.0.1', '2020-04-05 07:48:26', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/2', ''),
(260, '127.0.0.1', '2020-04-05 07:48:27', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://xin.com/courses/category/kentang/index/asdasd', ''),
(261, '127.0.0.1', '2020-04-05 07:48:36', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/search', ''),
(262, '127.0.0.1', '2020-04-05 07:49:21', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/post/search-babi-ngepet-1692613459', ''),
(263, '127.0.0.1', '2020-04-05 07:49:24', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/tags/basa-basi', ''),
(264, '127.0.0.1', '2020-04-05 07:51:15', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/category/tidak-diketahui/index/2', ''),
(265, '127.0.0.1', '2020-04-05 07:51:22', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/category/tidak-diketahui/index/5', ''),
(266, '127.0.0.1', '2020-04-05 07:51:26', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-959705632', ''),
(267, '127.0.0.1', '2020-04-05 07:51:45', 'Chrome', 'Windows 10', 'Other', 'Other', 4, 'http://xin.com/blog/search', ''),
(268, '127.0.0.1', '2020-04-05 07:52:04', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/post/search-babi-ngepet-1428881196', ''),
(269, '127.0.0.1', '2020-04-05 07:52:29', 'Chrome', 'Windows 10', 'Other', 'Other', 7, 'http://xin.com/blog/index/2', ''),
(270, '127.0.0.1', '2020-04-05 07:52:58', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/index', ''),
(271, '127.0.0.1', '2020-04-05 07:54:30', 'Chrome', 'Windows 10', 'Other', 'Other', 29, 'http://xin.com/courses/detail/asdasd', ''),
(272, '127.0.0.1', '2020-04-05 07:54:48', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/category/kentang/index/12', ''),
(273, '127.0.0.1', '2020-04-05 07:54:56', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://xin.com/blog/post/konten-baru-dan-rencana-kedepannya-situs-ini', ''),
(274, '127.0.0.1', '2020-04-05 07:57:06', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/post/search-babi-ngepet-1411492242', ''),
(275, '127.0.0.1', '2020-04-05 08:26:45', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/courses/index/3', ''),
(276, '127.0.0.1', '2020-04-05 12:52:18', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://xin.com/blog/tags/basa-basi/index/12', '');

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
(1, 'kurteyki', '1a5651f74beaa02c5e5fc380875d23a66e4549bd', '', '0', '', 'App', '0000-00-00 00:00:00', '2020-04-05 13:01:42'),
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.com', '85212321', 'user_photo_20200405124944.jpg', 'User', '2020-03-31 15:35:51', '2020-04-05 13:19:47'),
(12, 'aye', '329053c86586dfab3facb0478d574a5c888d3ad7', 'aye@aye.cc', '1234', '', 'User', '2020-04-01 03:59:02', '2020-04-01 03:59:11'),
(13, 'ww', '1c4f0c6eb8bf8bbf11cc2ae1cdcc5c5d1f3a3c16', 'ww@ww.cc', '123456', 'user_photo_20200405130108.jpg', 'User', '2020-04-03 10:51:17', '2020-04-05 13:20:49'),
(14, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'okaowkaowk@akwoakw.cc', '1234567890', '', 'User', '2020-04-05 11:19:39', '0000-00-00 00:00:00'),
(15, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'okaowkaoewk@akwoakw.cc', '123456766666', '', 'User', '2020-04-05 11:20:45', '0000-00-00 00:00:00'),
(16, 'kaowkaowkaowk', 'cb158e782ff86423b61d9f045bd90bce8f1bfd50', 'babibetulanda@gg.cc', '1231232132131', '', 'User', '2020-04-05 11:21:29', '0000-00-00 00:00:00'),
(17, 'anak legenda', '1777350af97646a55f2fac1f0e578a14412253b5', 'anaklegenda@gg.cc', '085280815735', '', 'User', '2020-04-05 11:22:16', '2020-04-05 11:22:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_blog_pages`
--
ALTER TABLE `tb_blog_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`,`time`,`status`),
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_site_meta`
--
ALTER TABLE `tb_site_meta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
