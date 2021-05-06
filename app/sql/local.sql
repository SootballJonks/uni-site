-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-05-03 04:45:20','2021-05-03 04:45:20','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Blackhold Institute','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','To further intellectual excellence','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','iskrablackhold@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','Y-F-d','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','uni-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','uni-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1635569120','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1620197120;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620233120;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620276320;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620276475;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620276476;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620708320;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','u@.}u6!2l{qWHyaNva/ wen(!S65<SD%3uzJFcPJ/5)^w}uX`&VLhV3CDaDxQv=w','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','i$]-Eoz` u,qD|go`wR BX`0V#7y%pE)t atjx=5!dC@XM%s:NC[6u,9pVEL7PUq','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1620189923;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1620189923;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620189923;s:7:\"checked\";a:1:{s:9:\"uni-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1620147307;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_2928ac8ac023b97f39c033d35b9ed176','1620622075','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_2928ac8ac023b97f39c033d35b9ed176','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1620622076','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (155,'_transient_health-check-site-status-result','{\"good\":\"13\",\"recommended\":\"6\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (175,'current_theme','University Theme','yes');
INSERT INTO `wp_options` VALUES (176,'theme_mods_uni-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (177,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (180,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (181,'new_admin_email','iskrablackhold@gmail.com','yes');
INSERT INTO `wp_options` VALUES (209,'_site_transient_timeout_theme_roots','1620191648','no');
INSERT INTO `wp_options` VALUES (210,'_site_transient_theme_roots','a:1:{s:9:\"uni-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1620153188:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1620153121:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1620161825:1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1620163833:1');
INSERT INTO `wp_postmeta` VALUES (11,3,'_edit_lock','1620164884:1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_edit_lock','1620189839:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_lock','1620190052:1');
INSERT INTO `wp_postmeta` VALUES (14,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (15,9,'_wp_trash_meta_time','1620165483');
INSERT INTO `wp_postmeta` VALUES (16,9,'_wp_desired_post_slug','test-page1');
INSERT INTO `wp_postmeta` VALUES (17,19,'_edit_lock','1620165397:1');
INSERT INTO `wp_postmeta` VALUES (18,2,'_edit_lock','1620174768:1');
INSERT INTO `wp_postmeta` VALUES (19,23,'_edit_lock','1620189708:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-03 04:45:20','2021-05-03 04:45:20','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-05-03 04:45:20','2021-05-03 04:45:20','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-05-03 04:45:20','2021-05-03 04:45:20','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-05-03 04:45:20','2021-05-03 04:45:20','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-05-03 04:45:20','2021-05-03 04:45:20','<!-- wp:paragraph -->\n<p>This is the Privacy Policy content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In hac habitasse platea dictumst. Sed faucibus dignissim arcu ac molestie. Donec condimentum ipsum nec malesuada euismod. Aenean vel nulla vel tortor laoreet luctus ac in nisi. Donec condimentum eu augue a pharetra. Quisque fermentum ante eros, porttitor euismod elit fringilla id. Duis neque sem, tincidunt sit amet consectetur ac, tincidunt non dolor. Nunc nec sollicitudin lectus. Nunc euismod ante nisi, at mattis massa ultricies id. Phasellus blandit fringilla venenatis. Vestibulum nec ex arcu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas ullamcorper blandit laoreet. Sed dictum justo lectus, et fringilla sapien gravida ut. Praesent mi sapien, tincidunt eu varius vel, feugiat quis nibh. Quisque nec congue velit, sit amet sodales turpis. Nullam facilisis finibus nisi, vel condimentum ligula laoreet id. Duis tempor ac ante nec condimentum. Suspendisse vehicula vehicula ipsum vitae tincidunt. Etiam convallis ante eu ultricies sollicitudin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis imperdiet ac ex eget imperdiet. Nunc gravida pellentesque odio ac tempor. Vestibulum et varius leo. In leo neque, suscipit non nunc et, congue pretium sapien. Morbi sit amet urna in lorem consectetur convallis vitae non eros. Quisque nec risus et velit interdum elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer tincidunt, lectus in iaculis tristique, ante diam fringilla odio, ac congue libero mauris sed metus. Maecenas gravida nisi nec nunc pulvinar feugiat. In fringilla arcu vel magna gravida, vel pellentesque magna tincidunt. Suspendisse suscipit, odio id consectetur gravida, lacus justo hendrerit tortor, sed hendrerit justo nulla in ex. Nam sagittis quis mi pharetra mattis. In viverra dictum varius. Sed lobortis libero et blandit dapibus. Nullam quis mollis sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sed enim ac tellus mollis sodales sed ut nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris non porta lorem. Cras euismod ante non nibh consectetur, a varius ipsum tincidunt. Aenean nec sapien iaculis, placerat felis volutpat, ultrices ipsum. Vivamus elit dui, condimentum sit amet dolor eget, elementum laoreet justo. Donec ullamcorper arcu eu vehicula auctor. Integer posuere pellentesque purus, eget vestibulum nibh faucibus sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus sed nulla nec dolor convallis varius. Pellentesque laoreet, neque ullamcorper volutpat elementum, metus ex varius nibh, ac malesuada massa urna eu lectus. Praesent porttitor tristique dui sed varius. Mauris leo nisl, posuere nec metus consequat, ullamcorper bibendum ex. Aenean ac elit at dolor tincidunt iaculis. Morbi sit amet elit eros. Etiam maximus rhoncus mauris, a consectetur lacus laoreet id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse maximus mattis ultrices. Nam quis pretium eros. Nunc fermentum turpis metus, vel vulputate mauris ullamcorper quis. Donec mattis euismod massa gravida laoreet. Mauris sed felis eu ex cursus suscipit volutpat a velit. Phasellus ultrices tincidunt ullamcorper. Ut ultricies arcu sed tincidunt lobortis. Maecenas id orci sit amet sapien lobortis hendrerit sit amet a magna. Donec rutrum venenatis scelerisque. Cras luctus lacus a ultricies sagittis. Nulla interdum varius sapien ac euismod. Cras dictum dolor at sem feugiat, in egestas tortor bibendum. Proin elementum a ipsum eget feugiat. Pellentesque non ligula a nibh condimentum euismod. Quisque non eros at diam pulvinar molestie quis vitae metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse pellentesque nunc vel magna ullamcorper malesuada. Etiam ac molestie massa. Nam tincidunt velit a ex iaculis, eget mollis urna volutpat. Nunc rhoncus turpis sapien, vitae placerat augue tincidunt ut. Mauris interdum egestas nibh quis aliquet. Suspendisse in gravida diam. Vivamus hendrerit dignissim nisl. Nunc sed dignissim enim. Cras sagittis sit amet tellus eu tempor. Morbi cursus nibh quis arcu feugiat, sed convallis justo semper. Proin vitae lacus nisl. Cras congue turpis eget accumsan viverra.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2021-05-04 21:48:08','2021-05-04 21:48:08','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-05-03 04:47:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-05-03 04:47:56','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-05-04 18:33:43','2021-05-04 18:33:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae leo sed nibh bibendum eleifend. Sed tincidunt enim a arcu gravida, in scelerisque risus tempus. Sed ac sapien et nulla laoreet varius eget non quam. Morbi quis semper dui, ut vehicula elit. Vivamus ut erat quis augue pharetra aliquet. Proin eget porttitor purus. Sed aliquam eros vitae augue consectetur lobortis. Proin accumsan nisi at massa iaculis posuere. Curabitur ut varius diam. Nam in mauris aliquam, tempus mi eu, auctor ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras eget dignissim ante, eu tristique dolor. Praesent consectetur risus turpis, in consectetur nisi porta eu. Nam at nulla dolor. Aenean porttitor nulla non purus tempus bibendum. Pellentesque et dolor venenatis, blandit elit vel, laoreet justo. Vivamus vitae faucibus augue, quis fermentum massa. Nam auctor rhoncus nulla eu viverra. Aliquam mattis nunc dui, ac egestas ante mollis at. Suspendisse potenti. Quisque aliquet sem volutpat felis tempus malesuada. Aenean vitae elit quis turpis sodales consequat vel vel tellus. Fusce posuere ut libero non sagittis. Etiam leo dui, venenatis faucibus magna et, ullamcorper suscipit lacus. Nunc scelerisque dui elit, a fringilla urna ultricies vitae. Fusce quis sapien euismod, hendrerit est ut, dapibus est. Sed sed mi velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis orci diam, interdum eget velit sed, aliquam sollicitudin mauris. Mauris eu lectus mattis, faucibus velit nec, pretium lectus. Mauris et odio eu metus elementum porta. Cras eu libero ultricies, interdum sem at, pharetra nibh. Donec tortor nibh, tristique ac sollicitudin at, pellentesque quis risus. In porta urna vitae dapibus aliquam. In eu vulputate ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce velit nibh, posuere in varius convallis, aliquam nec leo. Donec nec tortor nulla. Nunc tincidunt augue urna, at consequat quam interdum quis. Nulla quis odio ullamcorper, rhoncus metus sit amet, lacinia dolor. In hac habitasse platea dictumst. Vivamus congue, tellus nec hendrerit rutrum, urna ipsum congue ante, id porttitor odio dolor vel odio. Suspendisse potenti. Cras tempus pharetra convallis. Phasellus at diam venenatis, vestibulum nunc et, accumsan diam. Phasellus a sapien metus. Cras efficitur porta nisi nec interdum. In eleifend velit facilisis nisl dignissim, in lacinia metus venenatis. Integer blandit, velit eu vestibulum ultrices, leo nulla eleifend nibh, a tristique neque justo quis enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam mollis eros at magna venenatis fermentum. Donec aliquet justo orci, et commodo lacus volutpat et. Ut accumsan neque in facilisis pretium. Pellentesque in pellentesque tellus. Vestibulum eget congue risus. Aenean posuere dolor consequat metus maximus, sit amet elementum turpis consectetur. Cras pretium enim arcu, nec tempor lorem commodo id. Sed ex eros, pulvinar sit amet lorem eget, vestibulum tempus est. Donec neque justo, elementum vitae vulputate vel, molestie id arcu. Morbi dui enim, varius sit amet pellentesque fringilla, pulvinar fermentum sapien. Pellentesque ipsum urna, rutrum at est at, rhoncus interdum turpis. Phasellus ac mauris mollis, consectetur lorem vel, congue justo. Nullam auctor risus sed turpis consectetur, ac ultricies mauris rutrum. Vestibulum ultricies consectetur orci, eget accumsan turpis laoreet sed. Curabitur sed porta leo. Suspendisse rhoncus, mauris et viverra blandit, neque elit fermentum augue, at rutrum ipsum nibh nec dui.</p>\n<!-- /wp:paragraph -->','Test #1','','publish','open','open','','test-1','','','2021-05-04 18:33:43','2021-05-04 18:33:43','',0,'http://localhost:10003/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-05-04 18:33:43','2021-05-04 18:33:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae leo sed nibh bibendum eleifend. Sed tincidunt enim a arcu gravida, in scelerisque risus tempus. Sed ac sapien et nulla laoreet varius eget non quam. Morbi quis semper dui, ut vehicula elit. Vivamus ut erat quis augue pharetra aliquet. Proin eget porttitor purus. Sed aliquam eros vitae augue consectetur lobortis. Proin accumsan nisi at massa iaculis posuere. Curabitur ut varius diam. Nam in mauris aliquam, tempus mi eu, auctor ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras eget dignissim ante, eu tristique dolor. Praesent consectetur risus turpis, in consectetur nisi porta eu. Nam at nulla dolor. Aenean porttitor nulla non purus tempus bibendum. Pellentesque et dolor venenatis, blandit elit vel, laoreet justo. Vivamus vitae faucibus augue, quis fermentum massa. Nam auctor rhoncus nulla eu viverra. Aliquam mattis nunc dui, ac egestas ante mollis at. Suspendisse potenti. Quisque aliquet sem volutpat felis tempus malesuada. Aenean vitae elit quis turpis sodales consequat vel vel tellus. Fusce posuere ut libero non sagittis. Etiam leo dui, venenatis faucibus magna et, ullamcorper suscipit lacus. Nunc scelerisque dui elit, a fringilla urna ultricies vitae. Fusce quis sapien euismod, hendrerit est ut, dapibus est. Sed sed mi velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis orci diam, interdum eget velit sed, aliquam sollicitudin mauris. Mauris eu lectus mattis, faucibus velit nec, pretium lectus. Mauris et odio eu metus elementum porta. Cras eu libero ultricies, interdum sem at, pharetra nibh. Donec tortor nibh, tristique ac sollicitudin at, pellentesque quis risus. In porta urna vitae dapibus aliquam. In eu vulputate ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce velit nibh, posuere in varius convallis, aliquam nec leo. Donec nec tortor nulla. Nunc tincidunt augue urna, at consequat quam interdum quis. Nulla quis odio ullamcorper, rhoncus metus sit amet, lacinia dolor. In hac habitasse platea dictumst. Vivamus congue, tellus nec hendrerit rutrum, urna ipsum congue ante, id porttitor odio dolor vel odio. Suspendisse potenti. Cras tempus pharetra convallis. Phasellus at diam venenatis, vestibulum nunc et, accumsan diam. Phasellus a sapien metus. Cras efficitur porta nisi nec interdum. In eleifend velit facilisis nisl dignissim, in lacinia metus venenatis. Integer blandit, velit eu vestibulum ultrices, leo nulla eleifend nibh, a tristique neque justo quis enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam mollis eros at magna venenatis fermentum. Donec aliquet justo orci, et commodo lacus volutpat et. Ut accumsan neque in facilisis pretium. Pellentesque in pellentesque tellus. Vestibulum eget congue risus. Aenean posuere dolor consequat metus maximus, sit amet elementum turpis consectetur. Cras pretium enim arcu, nec tempor lorem commodo id. Sed ex eros, pulvinar sit amet lorem eget, vestibulum tempus est. Donec neque justo, elementum vitae vulputate vel, molestie id arcu. Morbi dui enim, varius sit amet pellentesque fringilla, pulvinar fermentum sapien. Pellentesque ipsum urna, rutrum at est at, rhoncus interdum turpis. Phasellus ac mauris mollis, consectetur lorem vel, congue justo. Nullam auctor risus sed turpis consectetur, ac ultricies mauris rutrum. Vestibulum ultricies consectetur orci, eget accumsan turpis laoreet sed. Curabitur sed porta leo. Suspendisse rhoncus, mauris et viverra blandit, neque elit fermentum augue, at rutrum ipsum nibh nec dui.</p>\n<!-- /wp:paragraph -->','Test #1','','inherit','closed','closed','','5-revision-v1','','','2021-05-04 18:33:43','2021-05-04 18:33:43','',5,'http://localhost:10003/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-05-04 18:34:24','2021-05-04 18:34:24','<!-- wp:paragraph -->\n<p>Phasellus porttitor enim eu dolor aliquam sollicitudin. Vivamus lacinia rhoncus ante, quis euismod elit efficitur eget. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi feugiat tortor eget ex suscipit dictum. Nunc placerat pellentesque ipsum at dignissim. Pellentesque placerat massa vitae mi pulvinar faucibus vel sed mauris. Pellentesque commodo sem urna, sed finibus augue cursus a. Nam congue diam at neque viverra, ac scelerisque ligula posuere. Praesent eleifend congue consequat. Pellentesque lacinia turpis nibh, quis ornare leo convallis sit amet. Mauris vitae purus quis lorem pharetra suscipit. Nulla mauris ante, ultrices eget viverra sed, maximus eu ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce tristique ut urna quis lobortis. Fusce eget nunc vitae magna pharetra malesuada ut id est. Suspendisse ut bibendum sem. Curabitur lectus elit, luctus nec nisi quis, pellentesque sagittis eros. Quisque eget efficitur orci. Integer convallis commodo lacus. Vestibulum gravida massa eu neque varius finibus. Donec ultrices nisi nec nisl ultricies eleifend. Nam euismod tellus nec magna sagittis, a interdum turpis lobortis. In malesuada, purus vel efficitur feugiat, neque nibh ultricies odio, nec rhoncus odio lorem ac quam. Donec at iaculis turpis, sit amet varius risus. Etiam tristique sollicitudin pharetra. Pellentesque id metus ut dui consectetur tristique sit amet sit amet tortor. Curabitur non viverra felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultrices dolor vel nunc fringilla, a imperdiet mi ornare. Praesent venenatis cursus ex, in fermentum lectus bibendum quis. Aliquam erat volutpat. Nunc vulputate turpis at pharetra tempor. Quisque nec justo nisi. Aenean fermentum nisi et mauris dapibus finibus. Duis lobortis molestie velit fermentum aliquam. Duis ut metus vel augue gravida faucibus at sed nisi. Vestibulum pretium, enim nec rhoncus pretium, augue sapien faucibus nisi, tincidunt tincidunt arcu risus non lacus. Nullam porta massa quis finibus hendrerit. Morbi cursus sem augue, sit amet gravida elit venenatis a. Integer faucibus egestas tortor. Phasellus malesuada, orci et consectetur elementum, nunc metus laoreet quam, sit amet ullamcorper nunc tellus ut odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse nec sodales lorem. Nam ac purus lorem. Pellentesque sit amet ante congue, luctus eros non, consequat mauris. Cras pulvinar fermentum elit eu accumsan. Vestibulum vel tincidunt felis. Nulla purus nulla, lacinia ac ligula sit amet, lobortis bibendum neque. Pellentesque congue iaculis est, sit amet iaculis elit tempor sit amet. Mauris venenatis, augue vulputate gravida ornare, leo dui porta dolor, eu consequat urna magna a lorem. Mauris bibendum tellus in neque feugiat efficitur. Mauris finibus enim non mollis sodales. Nunc eu nunc in metus consectetur posuere id elementum purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque et ligula nec libero ornare aliquet. Donec neque felis, iaculis sed ultricies sit amet, lobortis nec ipsum. Vivamus malesuada auctor sollicitudin. Praesent mauris lectus, tincidunt vel tempor quis, hendrerit nec turpis. Sed bibendum consequat dictum. Suspendisse et scelerisque leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam quis laoreet augue, vitae eleifend nibh. Curabitur sit amet tortor ornare, bibendum libero at, laoreet felis. Ut rutrum ante id luctus luctus. Etiam porttitor volutpat luctus. Ut elementum sed metus et auctor. Vestibulum tristique arcu tortor, nec accumsan neque pellentesque eget. In dictum tortor nulla, eget rhoncus lacus porttitor vitae. Phasellus volutpat urna mi, sit amet interdum magna condimentum eu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam in massa sodales odio vehicula vehicula. Donec et diam vel sem maximus interdum. Aliquam est nisi, tincidunt nec imperdiet sit amet, aliquet sed ligula. Mauris eleifend feugiat rutrum. In hac habitasse platea dictumst. Sed ullamcorper metus purus, quis blandit elit congue sit amet. Curabitur pretium enim non pretium ultricies. Ut pulvinar feugiat velit. Pellentesque interdum leo et posuere convallis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium purus enim, et tempus tellus vestibulum nec. Vivamus tempus metus rutrum libero dignissim, tincidunt lobortis elit fermentum. Donec mi urna, posuere id euismod a, bibendum in dolor. Vivamus cursus cursus augue at convallis. Pellentesque quis mauris elementum velit fermentum consequat. Phasellus suscipit metus ut quam lobortis ornare.</p>\n<!-- /wp:paragraph -->','Test #2','','publish','open','open','','test-2','','','2021-05-04 18:34:24','2021-05-04 18:34:24','',0,'http://localhost:10003/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-05-04 18:34:24','2021-05-04 18:34:24','<!-- wp:paragraph -->\n<p>Phasellus porttitor enim eu dolor aliquam sollicitudin. Vivamus lacinia rhoncus ante, quis euismod elit efficitur eget. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi feugiat tortor eget ex suscipit dictum. Nunc placerat pellentesque ipsum at dignissim. Pellentesque placerat massa vitae mi pulvinar faucibus vel sed mauris. Pellentesque commodo sem urna, sed finibus augue cursus a. Nam congue diam at neque viverra, ac scelerisque ligula posuere. Praesent eleifend congue consequat. Pellentesque lacinia turpis nibh, quis ornare leo convallis sit amet. Mauris vitae purus quis lorem pharetra suscipit. Nulla mauris ante, ultrices eget viverra sed, maximus eu ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce tristique ut urna quis lobortis. Fusce eget nunc vitae magna pharetra malesuada ut id est. Suspendisse ut bibendum sem. Curabitur lectus elit, luctus nec nisi quis, pellentesque sagittis eros. Quisque eget efficitur orci. Integer convallis commodo lacus. Vestibulum gravida massa eu neque varius finibus. Donec ultrices nisi nec nisl ultricies eleifend. Nam euismod tellus nec magna sagittis, a interdum turpis lobortis. In malesuada, purus vel efficitur feugiat, neque nibh ultricies odio, nec rhoncus odio lorem ac quam. Donec at iaculis turpis, sit amet varius risus. Etiam tristique sollicitudin pharetra. Pellentesque id metus ut dui consectetur tristique sit amet sit amet tortor. Curabitur non viverra felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultrices dolor vel nunc fringilla, a imperdiet mi ornare. Praesent venenatis cursus ex, in fermentum lectus bibendum quis. Aliquam erat volutpat. Nunc vulputate turpis at pharetra tempor. Quisque nec justo nisi. Aenean fermentum nisi et mauris dapibus finibus. Duis lobortis molestie velit fermentum aliquam. Duis ut metus vel augue gravida faucibus at sed nisi. Vestibulum pretium, enim nec rhoncus pretium, augue sapien faucibus nisi, tincidunt tincidunt arcu risus non lacus. Nullam porta massa quis finibus hendrerit. Morbi cursus sem augue, sit amet gravida elit venenatis a. Integer faucibus egestas tortor. Phasellus malesuada, orci et consectetur elementum, nunc metus laoreet quam, sit amet ullamcorper nunc tellus ut odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse nec sodales lorem. Nam ac purus lorem. Pellentesque sit amet ante congue, luctus eros non, consequat mauris. Cras pulvinar fermentum elit eu accumsan. Vestibulum vel tincidunt felis. Nulla purus nulla, lacinia ac ligula sit amet, lobortis bibendum neque. Pellentesque congue iaculis est, sit amet iaculis elit tempor sit amet. Mauris venenatis, augue vulputate gravida ornare, leo dui porta dolor, eu consequat urna magna a lorem. Mauris bibendum tellus in neque feugiat efficitur. Mauris finibus enim non mollis sodales. Nunc eu nunc in metus consectetur posuere id elementum purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque et ligula nec libero ornare aliquet. Donec neque felis, iaculis sed ultricies sit amet, lobortis nec ipsum. Vivamus malesuada auctor sollicitudin. Praesent mauris lectus, tincidunt vel tempor quis, hendrerit nec turpis. Sed bibendum consequat dictum. Suspendisse et scelerisque leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam quis laoreet augue, vitae eleifend nibh. Curabitur sit amet tortor ornare, bibendum libero at, laoreet felis. Ut rutrum ante id luctus luctus. Etiam porttitor volutpat luctus. Ut elementum sed metus et auctor. Vestibulum tristique arcu tortor, nec accumsan neque pellentesque eget. In dictum tortor nulla, eget rhoncus lacus porttitor vitae. Phasellus volutpat urna mi, sit amet interdum magna condimentum eu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam in massa sodales odio vehicula vehicula. Donec et diam vel sem maximus interdum. Aliquam est nisi, tincidunt nec imperdiet sit amet, aliquet sed ligula. Mauris eleifend feugiat rutrum. In hac habitasse platea dictumst. Sed ullamcorper metus purus, quis blandit elit congue sit amet. Curabitur pretium enim non pretium ultricies. Ut pulvinar feugiat velit. Pellentesque interdum leo et posuere convallis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris pretium purus enim, et tempus tellus vestibulum nec. Vivamus tempus metus rutrum libero dignissim, tincidunt lobortis elit fermentum. Donec mi urna, posuere id euismod a, bibendum in dolor. Vivamus cursus cursus augue at convallis. Pellentesque quis mauris elementum velit fermentum consequat. Phasellus suscipit metus ut quam lobortis ornare.</p>\n<!-- /wp:paragraph -->','Test #2','','inherit','closed','closed','','7-revision-v1','','','2021-05-04 18:34:24','2021-05-04 18:34:24','',7,'http://localhost:10003/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-05-04 18:43:18','2021-05-04 18:43:18','<!-- wp:paragraph -->\n<p>In vitae viverra ante, ut laoreet dolor. Nulla varius tempus ullamcorper. Phasellus gravida porttitor interdum. Praesent nulla leo, ultrices nec erat sit amet, ullamcorper porta magna. Pellentesque tincidunt finibus nulla, non tempor sem maximus vitae. Vestibulum posuere id ligula et mattis. Mauris sit amet neque mollis, bibendum justo vel, accumsan augue. Aliquam viverra sit amet nisl vitae pharetra. Cras congue quis arcu non tincidunt. Cras sed enim sem. Vestibulum venenatis posuere vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris rutrum ullamcorper nisi. Donec a metus augue. Fusce efficitur magna mauris, sed fringilla ex molestie sed. In hac habitasse platea dictumst. Aliquam vulputate mi elit, porttitor egestas sem accumsan scelerisque. Praesent vitae libero feugiat mauris suscipit dapibus. Maecenas sit amet eros semper, dictum mauris id, pulvinar ipsum. Aliquam sed libero dolor. Phasellus felis massa, placerat at tempor quis, elementum non magna. Aliquam interdum tempus porta. Nullam vestibulum lacus eu dapibus consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer at fringilla orci. Nulla vitae nisi eu arcu pretium blandit eget condimentum sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam dapibus quam lacus. Phasellus faucibus finibus ligula sed blandit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur non egestas risus, id placerat nulla. In non nibh tempus, gravida ligula ut, fermentum est. Suspendisse ex magna, tincidunt nec dui a, eleifend maximus mi. Fusce magna risus, elementum vitae mollis volutpat, lobortis vitae lorem. Proin aliquet, risus ut eleifend laoreet, enim leo egestas ante, a facilisis est lacus molestie erat. Proin convallis mollis lacus in tempor. Vestibulum sed tellus at orci gravida scelerisque et vel nibh. Suspendisse at dolor libero. Donec tortor leo, aliquet quis dignissim sed, bibendum in ipsum. Sed sit amet ipsum id ligula rhoncus vulputate eget nec lacus. Morbi sed tortor non nunc condimentum eleifend nec accumsan purus. Aliquam accumsan tempus ante condimentum sodales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla suscipit pharetra fermentum. Maecenas ac accumsan odio. Vestibulum fringilla finibus odio, eu feugiat quam lacinia ac. Etiam laoreet felis vitae nisi elementum blandit. Donec viverra tristique dolor. In vulputate, ligula viverra pharetra dignissim, nunc nulla lobortis magna, ac dapibus ligula lectus et tortor. Nam commodo, risus id sodales euismod, augue lacus tristique sapien, ut aliquam sapien ipsum ac ante. Nunc euismod at sem sed iaculis. Donec ultrices tempus libero, eget lobortis eros mattis sit amet. Mauris malesuada congue augue, ac convallis nibh elementum at. Curabitur varius erat ante, quis ultrices ipsum venenatis eget. Duis pulvinar rutrum porta. Quisque imperdiet varius ipsum, vel ullamcorper leo laoreet vitae. Donec dignissim ipsum nisi, eu pulvinar massa congue tincidunt. Nam ornare turpis posuere odio interdum, at pretium justo dignissim.</p>\n<!-- /wp:paragraph -->','Test Page1','','trash','closed','closed','','test-page1__trashed','','','2021-05-04 21:58:03','2021-05-04 21:58:03','',0,'http://localhost:10003/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-05-04 18:43:18','2021-05-04 18:43:18','<!-- wp:paragraph -->\n<p>In vitae viverra ante, ut laoreet dolor. Nulla varius tempus ullamcorper. Phasellus gravida porttitor interdum. Praesent nulla leo, ultrices nec erat sit amet, ullamcorper porta magna. Pellentesque tincidunt finibus nulla, non tempor sem maximus vitae. Vestibulum posuere id ligula et mattis. Mauris sit amet neque mollis, bibendum justo vel, accumsan augue. Aliquam viverra sit amet nisl vitae pharetra. Cras congue quis arcu non tincidunt. Cras sed enim sem. Vestibulum venenatis posuere vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris rutrum ullamcorper nisi. Donec a metus augue. Fusce efficitur magna mauris, sed fringilla ex molestie sed. In hac habitasse platea dictumst. Aliquam vulputate mi elit, porttitor egestas sem accumsan scelerisque. Praesent vitae libero feugiat mauris suscipit dapibus. Maecenas sit amet eros semper, dictum mauris id, pulvinar ipsum. Aliquam sed libero dolor. Phasellus felis massa, placerat at tempor quis, elementum non magna. Aliquam interdum tempus porta. Nullam vestibulum lacus eu dapibus consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer at fringilla orci. Nulla vitae nisi eu arcu pretium blandit eget condimentum sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam dapibus quam lacus. Phasellus faucibus finibus ligula sed blandit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur non egestas risus, id placerat nulla. In non nibh tempus, gravida ligula ut, fermentum est. Suspendisse ex magna, tincidunt nec dui a, eleifend maximus mi. Fusce magna risus, elementum vitae mollis volutpat, lobortis vitae lorem. Proin aliquet, risus ut eleifend laoreet, enim leo egestas ante, a facilisis est lacus molestie erat. Proin convallis mollis lacus in tempor. Vestibulum sed tellus at orci gravida scelerisque et vel nibh. Suspendisse at dolor libero. Donec tortor leo, aliquet quis dignissim sed, bibendum in ipsum. Sed sit amet ipsum id ligula rhoncus vulputate eget nec lacus. Morbi sed tortor non nunc condimentum eleifend nec accumsan purus. Aliquam accumsan tempus ante condimentum sodales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla suscipit pharetra fermentum. Maecenas ac accumsan odio. Vestibulum fringilla finibus odio, eu feugiat quam lacinia ac. Etiam laoreet felis vitae nisi elementum blandit. Donec viverra tristique dolor. In vulputate, ligula viverra pharetra dignissim, nunc nulla lobortis magna, ac dapibus ligula lectus et tortor. Nam commodo, risus id sodales euismod, augue lacus tristique sapien, ut aliquam sapien ipsum ac ante. Nunc euismod at sem sed iaculis. Donec ultrices tempus libero, eget lobortis eros mattis sit amet. Mauris malesuada congue augue, ac convallis nibh elementum at. Curabitur varius erat ante, quis ultrices ipsum venenatis eget. Duis pulvinar rutrum porta. Quisque imperdiet varius ipsum, vel ullamcorper leo laoreet vitae. Donec dignissim ipsum nisi, eu pulvinar massa congue tincidunt. Nam ornare turpis posuere odio interdum, at pretium justo dignissim.</p>\n<!-- /wp:paragraph -->','Test Page1','','inherit','closed','closed','','9-revision-v1','','','2021-05-04 18:43:18','2021-05-04 18:43:18','',9,'http://localhost:10003/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-05-04 21:32:52','2021-05-04 21:32:52','<!-- wp:paragraph -->\n<p>This is the About page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae viverra ante, ut laoreet dolor. Nulla varius tempus ullamcorper. Phasellus gravida porttitor interdum. Praesent nulla leo, ultrices nec erat sit amet, ullamcorper porta magna. Pellentesque tincidunt finibus nulla, non tempor sem maximus vitae. Vestibulum posuere id ligula et mattis. Mauris sit amet neque mollis, bibendum justo vel, accumsan augue. Aliquam viverra sit amet nisl vitae pharetra. Cras congue quis arcu non tincidunt. Cras sed enim sem. Vestibulum venenatis posuere vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris rutrum ullamcorper nisi. Donec a metus augue. Fusce efficitur magna mauris, sed fringilla ex molestie sed. In hac habitasse platea dictumst. Aliquam vulputate mi elit, porttitor egestas sem accumsan scelerisque. Praesent vitae libero feugiat mauris suscipit dapibus. Maecenas sit amet eros semper, dictum mauris id, pulvinar ipsum. Aliquam sed libero dolor. Phasellus felis massa, placerat at tempor quis, elementum non magna. Aliquam interdum tempus porta. Nullam vestibulum lacus eu dapibus consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer at fringilla orci. Nulla vitae nisi eu arcu pretium blandit eget condimentum sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam dapibus quam lacus. Phasellus faucibus finibus ligula sed blandit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur non egestas risus, id placerat nulla. In non nibh tempus, gravida ligula ut, fermentum est. Suspendisse ex magna, tincidunt nec dui a, eleifend maximus mi. Fusce magna risus, elementum vitae mollis volutpat, lobortis vitae lorem. Proin aliquet, risus ut eleifend laoreet, enim leo egestas ante, a facilisis est lacus molestie erat. Proin convallis mollis lacus in tempor. Vestibulum sed tellus at orci gravida scelerisque et vel nibh. Suspendisse at dolor libero. Donec tortor leo, aliquet quis dignissim sed, bibendum in ipsum. Sed sit amet ipsum id ligula rhoncus vulputate eget nec lacus. Morbi sed tortor non nunc condimentum eleifend nec accumsan purus. Aliquam accumsan tempus ante condimentum sodales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla suscipit pharetra fermentum. Maecenas ac accumsan odio. Vestibulum fringilla finibus odio, eu feugiat quam lacinia ac. Etiam laoreet felis vitae nisi elementum blandit. Donec viverra tristique dolor. In vulputate, ligula viverra pharetra dignissim, nunc nulla lobortis magna, ac dapibus ligula lectus et tortor. Nam commodo, risus id sodales euismod, augue lacus tristique sapien, ut aliquam sapien ipsum ac ante. Nunc euismod at sem sed iaculis. Donec ultrices tempus libero, eget lobortis eros mattis sit amet. Mauris malesuada congue augue, ac convallis nibh elementum at. Curabitur varius erat ante, quis ultrices ipsum venenatis eget. Duis pulvinar rutrum porta. Quisque imperdiet varius ipsum, vel ullamcorper leo laoreet vitae. Donec dignissim ipsum nisi, eu pulvinar massa congue tincidunt. Nam ornare turpis posuere odio interdum, at pretium justo dignissim.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2021-05-04 21:32:52','2021-05-04 21:32:52','',0,'http://localhost:10003/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-05-04 21:32:48','2021-05-04 21:32:48','<!-- wp:paragraph -->\n<p>This is the About page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae viverra ante, ut laoreet dolor. Nulla varius tempus ullamcorper. Phasellus gravida porttitor interdum. Praesent nulla leo, ultrices nec erat sit amet, ullamcorper porta magna. Pellentesque tincidunt finibus nulla, non tempor sem maximus vitae. Vestibulum posuere id ligula et mattis. Mauris sit amet neque mollis, bibendum justo vel, accumsan augue. Aliquam viverra sit amet nisl vitae pharetra. Cras congue quis arcu non tincidunt. Cras sed enim sem. Vestibulum venenatis posuere vulputate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris rutrum ullamcorper nisi. Donec a metus augue. Fusce efficitur magna mauris, sed fringilla ex molestie sed. In hac habitasse platea dictumst. Aliquam vulputate mi elit, porttitor egestas sem accumsan scelerisque. Praesent vitae libero feugiat mauris suscipit dapibus. Maecenas sit amet eros semper, dictum mauris id, pulvinar ipsum. Aliquam sed libero dolor. Phasellus felis massa, placerat at tempor quis, elementum non magna. Aliquam interdum tempus porta. Nullam vestibulum lacus eu dapibus consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer at fringilla orci. Nulla vitae nisi eu arcu pretium blandit eget condimentum sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam dapibus quam lacus. Phasellus faucibus finibus ligula sed blandit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur non egestas risus, id placerat nulla. In non nibh tempus, gravida ligula ut, fermentum est. Suspendisse ex magna, tincidunt nec dui a, eleifend maximus mi. Fusce magna risus, elementum vitae mollis volutpat, lobortis vitae lorem. Proin aliquet, risus ut eleifend laoreet, enim leo egestas ante, a facilisis est lacus molestie erat. Proin convallis mollis lacus in tempor. Vestibulum sed tellus at orci gravida scelerisque et vel nibh. Suspendisse at dolor libero. Donec tortor leo, aliquet quis dignissim sed, bibendum in ipsum. Sed sit amet ipsum id ligula rhoncus vulputate eget nec lacus. Morbi sed tortor non nunc condimentum eleifend nec accumsan purus. Aliquam accumsan tempus ante condimentum sodales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla suscipit pharetra fermentum. Maecenas ac accumsan odio. Vestibulum fringilla finibus odio, eu feugiat quam lacinia ac. Etiam laoreet felis vitae nisi elementum blandit. Donec viverra tristique dolor. In vulputate, ligula viverra pharetra dignissim, nunc nulla lobortis magna, ac dapibus ligula lectus et tortor. Nam commodo, risus id sodales euismod, augue lacus tristique sapien, ut aliquam sapien ipsum ac ante. Nunc euismod at sem sed iaculis. Donec ultrices tempus libero, eget lobortis eros mattis sit amet. Mauris malesuada congue augue, ac convallis nibh elementum at. Curabitur varius erat ante, quis ultrices ipsum venenatis eget. Duis pulvinar rutrum porta. Quisque imperdiet varius ipsum, vel ullamcorper leo laoreet vitae. Donec dignissim ipsum nisi, eu pulvinar massa congue tincidunt. Nam ornare turpis posuere odio interdum, at pretium justo dignissim.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2021-05-04 21:32:48','2021-05-04 21:32:48','',11,'http://localhost:10003/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-05-04 21:33:06','2021-05-04 21:33:06','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-05-04 21:33:06','2021-05-04 21:33:06','',3,'http://localhost:10003/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-05-04 21:48:08','2021-05-04 21:48:08','<!-- wp:paragraph -->\n<p>This is the Privacy Policy content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In hac habitasse platea dictumst. Sed faucibus dignissim arcu ac molestie. Donec condimentum ipsum nec malesuada euismod. Aenean vel nulla vel tortor laoreet luctus ac in nisi. Donec condimentum eu augue a pharetra. Quisque fermentum ante eros, porttitor euismod elit fringilla id. Duis neque sem, tincidunt sit amet consectetur ac, tincidunt non dolor. Nunc nec sollicitudin lectus. Nunc euismod ante nisi, at mattis massa ultricies id. Phasellus blandit fringilla venenatis. Vestibulum nec ex arcu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas ullamcorper blandit laoreet. Sed dictum justo lectus, et fringilla sapien gravida ut. Praesent mi sapien, tincidunt eu varius vel, feugiat quis nibh. Quisque nec congue velit, sit amet sodales turpis. Nullam facilisis finibus nisi, vel condimentum ligula laoreet id. Duis tempor ac ante nec condimentum. Suspendisse vehicula vehicula ipsum vitae tincidunt. Etiam convallis ante eu ultricies sollicitudin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis imperdiet ac ex eget imperdiet. Nunc gravida pellentesque odio ac tempor. Vestibulum et varius leo. In leo neque, suscipit non nunc et, congue pretium sapien. Morbi sit amet urna in lorem consectetur convallis vitae non eros. Quisque nec risus et velit interdum elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer tincidunt, lectus in iaculis tristique, ante diam fringilla odio, ac congue libero mauris sed metus. Maecenas gravida nisi nec nunc pulvinar feugiat. In fringilla arcu vel magna gravida, vel pellentesque magna tincidunt. Suspendisse suscipit, odio id consectetur gravida, lacus justo hendrerit tortor, sed hendrerit justo nulla in ex. Nam sagittis quis mi pharetra mattis. In viverra dictum varius. Sed lobortis libero et blandit dapibus. Nullam quis mollis sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sed enim ac tellus mollis sodales sed ut nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris non porta lorem. Cras euismod ante non nibh consectetur, a varius ipsum tincidunt. Aenean nec sapien iaculis, placerat felis volutpat, ultrices ipsum. Vivamus elit dui, condimentum sit amet dolor eget, elementum laoreet justo. Donec ullamcorper arcu eu vehicula auctor. Integer posuere pellentesque purus, eget vestibulum nibh faucibus sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus sed nulla nec dolor convallis varius. Pellentesque laoreet, neque ullamcorper volutpat elementum, metus ex varius nibh, ac malesuada massa urna eu lectus. Praesent porttitor tristique dui sed varius. Mauris leo nisl, posuere nec metus consequat, ullamcorper bibendum ex. Aenean ac elit at dolor tincidunt iaculis. Morbi sit amet elit eros. Etiam maximus rhoncus mauris, a consectetur lacus laoreet id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse maximus mattis ultrices. Nam quis pretium eros. Nunc fermentum turpis metus, vel vulputate mauris ullamcorper quis. Donec mattis euismod massa gravida laoreet. Mauris sed felis eu ex cursus suscipit volutpat a velit. Phasellus ultrices tincidunt ullamcorper. Ut ultricies arcu sed tincidunt lobortis. Maecenas id orci sit amet sapien lobortis hendrerit sit amet a magna. Donec rutrum venenatis scelerisque. Cras luctus lacus a ultricies sagittis. Nulla interdum varius sapien ac euismod. Cras dictum dolor at sem feugiat, in egestas tortor bibendum. Proin elementum a ipsum eget feugiat. Pellentesque non ligula a nibh condimentum euismod. Quisque non eros at diam pulvinar molestie quis vitae metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse pellentesque nunc vel magna ullamcorper malesuada. Etiam ac molestie massa. Nam tincidunt velit a ex iaculis, eget mollis urna volutpat. Nunc rhoncus turpis sapien, vitae placerat augue tincidunt ut. Mauris interdum egestas nibh quis aliquet. Suspendisse in gravida diam. Vivamus hendrerit dignissim nisl. Nunc sed dignissim enim. Cras sagittis sit amet tellus eu tempor. Morbi cursus nibh quis arcu feugiat, sed convallis justo semper. Proin vitae lacus nisl. Cras congue turpis eget accumsan viverra.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-05-04 21:48:08','2021-05-04 21:48:08','',3,'http://localhost:10003/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-05-04 21:49:42','2021-05-04 21:49:42','<!-- wp:paragraph -->\n<p>Mauris placerat consequat erat, vitae sagittis lorem. Donec bibendum nibh a lacus porta ullamcorper. Aliquam commodo volutpat ipsum, a consectetur sem sagittis a. In at rutrum odio, ut placerat lectus. Fusce sit amet mauris eleifend, feugiat nulla eu, ultricies erat. Proin eget aliquam purus, at vehicula neque. Suspendisse potenti. Sed condimentum vel ante vitae finibus. Praesent ac condimentum lectus. Maecenas sagittis, elit dignissim consequat gravida, ex ipsum cursus eros, nec laoreet eros neque sed sapien. In venenatis eu neque vel euismod. Mauris tristique nisi accumsan libero feugiat iaculis. Vivamus semper vel nunc sit amet rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce ac massa lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas volutpat lacus mi, sed faucibus lorem euismod id. Suspendisse potenti. Aliquam erat volutpat. Proin ullamcorper nisi ante, vitae auctor tortor feugiat at. Etiam molestie laoreet ipsum, faucibus placerat sem. Maecenas efficitur eu arcu ac congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus fermentum nibh sed tortor rutrum luctus. Proin posuere nisl fringilla, ultricies orci quis, sollicitudin lectus. Praesent id mi purus. Ut tincidunt luctus nunc quis accumsan. Nam iaculis metus convallis arcu faucibus commodo. Aenean nec tempor nunc. Curabitur egestas, lorem finibus hendrerit mattis, neque enim feugiat magna, pharetra pretium magna ex sit amet risus. Vestibulum fringilla tortor neque, nec iaculis ante dapibus sed. Quisque nibh mauris, laoreet at tellus in, semper condimentum sem. In varius erat in posuere fringilla. Nam non tristique augue. Sed et enim eros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam at ante efficitur, convallis elit eget, ornare nunc. Nunc sit amet dui eget tellus porttitor tempor non aliquet ligula. Aliquam pharetra a metus sed maximus. Pellentesque vel diam ornare, tincidunt justo at, ornare leo. Duis sed convallis lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce non elementum mauris. Maecenas varius in ante eu iaculis. Sed quis velit viverra, commodo turpis vel, placerat sapien. Nulla eros augue, placerat vitae fermentum vel, condimentum eu neque. In nec varius leo. Donec venenatis justo sed leo facilisis ullamcorper. Mauris volutpat tincidunt sem ut commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean at ligula at ex dignissim auctor a id tellus. Phasellus aliquet risus eget dui finibus, ut placerat purus lacinia. Nullam vel sem iaculis, pellentesque magna eu, dapibus velit. Pellentesque consectetur ligula vel lectus fermentum viverra. Integer ornare vitae neque vel feugiat. Curabitur fringilla sollicitudin vulputate. Sed et sollicitudin augue. Nulla fermentum augue at nunc egestas tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce nunc sem, imperdiet a faucibus sed, eleifend a arcu. Cras tincidunt euismod finibus. Phasellus aliquam porttitor pulvinar. Donec quis ipsum non ex molestie vestibulum ornare at libero. Morbi sagittis laoreet malesuada. Donec non nisi quis nisl fringilla blandit ac a dui. Fusce nec eros a nisl sollicitudin ultrices non eget orci. Aliquam quis orci eros. Etiam pulvinar turpis vitae mi aliquam porta. Sed tristique felis eu facilisis sagittis. Nunc viverra velit sit amet mollis iaculis. Donec non tincidunt sapien. Maecenas non ex lorem. Praesent porttitor, ante et tincidunt volutpat, ex dolor consequat erat, consectetur volutpat lectus lacus non mi. Nulla finibus orci sit amet imperdiet malesuada. Curabitur luctus ex quis dolor lobortis, et eleifend nunc dapibus.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2021-05-05 00:36:29','2021-05-05 00:36:29','',11,'http://localhost:10003/?page_id=15',2,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-05-04 21:49:42','2021-05-04 21:49:42','<!-- wp:paragraph -->\n<p>Mauris placerat consequat erat, vitae sagittis lorem. Donec bibendum nibh a lacus porta ullamcorper. Aliquam commodo volutpat ipsum, a consectetur sem sagittis a. In at rutrum odio, ut placerat lectus. Fusce sit amet mauris eleifend, feugiat nulla eu, ultricies erat. Proin eget aliquam purus, at vehicula neque. Suspendisse potenti. Sed condimentum vel ante vitae finibus. Praesent ac condimentum lectus. Maecenas sagittis, elit dignissim consequat gravida, ex ipsum cursus eros, nec laoreet eros neque sed sapien. In venenatis eu neque vel euismod. Mauris tristique nisi accumsan libero feugiat iaculis. Vivamus semper vel nunc sit amet rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce ac massa lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas volutpat lacus mi, sed faucibus lorem euismod id. Suspendisse potenti. Aliquam erat volutpat. Proin ullamcorper nisi ante, vitae auctor tortor feugiat at. Etiam molestie laoreet ipsum, faucibus placerat sem. Maecenas efficitur eu arcu ac congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus fermentum nibh sed tortor rutrum luctus. Proin posuere nisl fringilla, ultricies orci quis, sollicitudin lectus. Praesent id mi purus. Ut tincidunt luctus nunc quis accumsan. Nam iaculis metus convallis arcu faucibus commodo. Aenean nec tempor nunc. Curabitur egestas, lorem finibus hendrerit mattis, neque enim feugiat magna, pharetra pretium magna ex sit amet risus. Vestibulum fringilla tortor neque, nec iaculis ante dapibus sed. Quisque nibh mauris, laoreet at tellus in, semper condimentum sem. In varius erat in posuere fringilla. Nam non tristique augue. Sed et enim eros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam at ante efficitur, convallis elit eget, ornare nunc. Nunc sit amet dui eget tellus porttitor tempor non aliquet ligula. Aliquam pharetra a metus sed maximus. Pellentesque vel diam ornare, tincidunt justo at, ornare leo. Duis sed convallis lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce non elementum mauris. Maecenas varius in ante eu iaculis. Sed quis velit viverra, commodo turpis vel, placerat sapien. Nulla eros augue, placerat vitae fermentum vel, condimentum eu neque. In nec varius leo. Donec venenatis justo sed leo facilisis ullamcorper. Mauris volutpat tincidunt sem ut commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean at ligula at ex dignissim auctor a id tellus. Phasellus aliquet risus eget dui finibus, ut placerat purus lacinia. Nullam vel sem iaculis, pellentesque magna eu, dapibus velit. Pellentesque consectetur ligula vel lectus fermentum viverra. Integer ornare vitae neque vel feugiat. Curabitur fringilla sollicitudin vulputate. Sed et sollicitudin augue. Nulla fermentum augue at nunc egestas tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce nunc sem, imperdiet a faucibus sed, eleifend a arcu. Cras tincidunt euismod finibus. Phasellus aliquam porttitor pulvinar. Donec quis ipsum non ex molestie vestibulum ornare at libero. Morbi sagittis laoreet malesuada. Donec non nisi quis nisl fringilla blandit ac a dui. Fusce nec eros a nisl sollicitudin ultrices non eget orci. Aliquam quis orci eros. Etiam pulvinar turpis vitae mi aliquam porta. Sed tristique felis eu facilisis sagittis. Nunc viverra velit sit amet mollis iaculis. Donec non tincidunt sapien. Maecenas non ex lorem. Praesent porttitor, ante et tincidunt volutpat, ex dolor consequat erat, consectetur volutpat lectus lacus non mi. Nulla finibus orci sit amet imperdiet malesuada. Curabitur luctus ex quis dolor lobortis, et eleifend nunc dapibus.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','15-revision-v1','','','2021-05-04 21:49:42','2021-05-04 21:49:42','',15,'http://localhost:10003/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-05-04 21:50:39','2021-05-04 21:50:39','<!-- wp:paragraph -->\n<p>Nam lobortis dictum lacus, eu dignissim turpis rutrum eget. Vestibulum ut est tellus. Phasellus mollis, magna vitae gravida sollicitudin, mi quam dignissim nisl, at vehicula sapien orci nec orci. Fusce et nibh quis massa volutpat accumsan non sed eros. Nullam efficitur ligula vel nisl pulvinar, et rhoncus lacus tempus. Pellentesque pharetra orci mi, in facilisis leo viverra eget. Vivamus posuere finibus nisl eu aliquet. Aenean elementum magna at orci imperdiet egestas. Praesent luctus tortor erat, vel rutrum sem dictum at. Nullam ultricies iaculis sapien, eu aliquam arcu malesuada nec.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam venenatis justo ut justo dignissim vulputate. Mauris malesuada sit amet ante non egestas. Maecenas tempus neque nec ipsum ultricies, vitae porta ligula fringilla. Suspendisse nec bibendum arcu. Sed ipsum orci, lobortis faucibus enim sed, tempor suscipit lacus. Integer rutrum interdum quam consectetur viverra. Nulla in metus et mi egestas pulvinar vitae nec turpis. Nulla eu tempor nisl, vel egestas dolor. Proin vel dui scelerisque, lobortis leo non, ornare nulla. Vestibulum cursus semper accumsan. Curabitur sagittis hendrerit laoreet. Cras tincidunt quam vel lorem ullamcorper, ut volutpat ante rhoncus. Mauris hendrerit in magna et euismod. Aliquam felis purus, sodales eget neque a, congue vehicula metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent bibendum et eros quis faucibus. In sit amet massa tempor, tempus ligula id, finibus diam. Donec lectus sapien, facilisis vitae pharetra nec, imperdiet eu orci. Aenean viverra tellus metus, eu tempus augue pharetra eu. Vivamus tempus dui suscipit sem auctor dapibus. Maecenas sit amet cursus risus, eu commodo lectus. Quisque finibus malesuada lectus vel faucibus. Integer lacus ante, placerat quis pretium et, malesuada nec nisi. Cras vehicula interdum tempus. Sed fermentum imperdiet dictum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque in ante sit amet mauris tincidunt fermentum quis id erat.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2021-05-05 00:36:22','2021-05-05 00:36:22','',11,'http://localhost:10003/?page_id=17',1,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-05-04 21:50:39','2021-05-04 21:50:39','<!-- wp:paragraph -->\n<p>Nam lobortis dictum lacus, eu dignissim turpis rutrum eget. Vestibulum ut est tellus. Phasellus mollis, magna vitae gravida sollicitudin, mi quam dignissim nisl, at vehicula sapien orci nec orci. Fusce et nibh quis massa volutpat accumsan non sed eros. Nullam efficitur ligula vel nisl pulvinar, et rhoncus lacus tempus. Pellentesque pharetra orci mi, in facilisis leo viverra eget. Vivamus posuere finibus nisl eu aliquet. Aenean elementum magna at orci imperdiet egestas. Praesent luctus tortor erat, vel rutrum sem dictum at. Nullam ultricies iaculis sapien, eu aliquam arcu malesuada nec.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam venenatis justo ut justo dignissim vulputate. Mauris malesuada sit amet ante non egestas. Maecenas tempus neque nec ipsum ultricies, vitae porta ligula fringilla. Suspendisse nec bibendum arcu. Sed ipsum orci, lobortis faucibus enim sed, tempor suscipit lacus. Integer rutrum interdum quam consectetur viverra. Nulla in metus et mi egestas pulvinar vitae nec turpis. Nulla eu tempor nisl, vel egestas dolor. Proin vel dui scelerisque, lobortis leo non, ornare nulla. Vestibulum cursus semper accumsan. Curabitur sagittis hendrerit laoreet. Cras tincidunt quam vel lorem ullamcorper, ut volutpat ante rhoncus. Mauris hendrerit in magna et euismod. Aliquam felis purus, sodales eget neque a, congue vehicula metus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent bibendum et eros quis faucibus. In sit amet massa tempor, tempus ligula id, finibus diam. Donec lectus sapien, facilisis vitae pharetra nec, imperdiet eu orci. Aenean viverra tellus metus, eu tempus augue pharetra eu. Vivamus tempus dui suscipit sem auctor dapibus. Maecenas sit amet cursus risus, eu commodo lectus. Quisque finibus malesuada lectus vel faucibus. Integer lacus ante, placerat quis pretium et, malesuada nec nisi. Cras vehicula interdum tempus. Sed fermentum imperdiet dictum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque in ante sit amet mauris tincidunt fermentum quis id erat.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','17-revision-v1','','','2021-05-04 21:50:39','2021-05-04 21:50:39','',17,'http://localhost:10003/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-05-04 21:58:33','2021-05-04 21:58:33','<!-- wp:paragraph -->\n<p>You now have cookies. RIP</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2021-05-04 21:58:33','2021-05-04 21:58:33','',3,'http://localhost:10003/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-04 21:58:33','2021-05-04 21:58:33','<!-- wp:paragraph -->\n<p>You now have cookies. RIP</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','19-revision-v1','','','2021-05-04 21:58:33','2021-05-04 21:58:33','',19,'http://localhost:10003/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-04 21:58:48','2021-05-04 21:58:48','<!-- wp:paragraph -->\n<p>You now have cookies. RIP</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','19-autosave-v1','','','2021-05-04 21:58:48','2021-05-04 21:58:48','',19,'http://localhost:10003/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-05 00:35:08','2021-05-05 00:35:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-autosave-v1','','','2021-05-05 00:35:08','2021-05-05 00:35:08','',2,'http://localhost:10003/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-05-05 04:44:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-05 04:44:08','0000-00-00 00:00:00','',0,'http://localhost:10003/?page_id=23',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jonks');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"694c40b1103dcc763a8a4cb1a076e33870a2350f14557b9c744a82579b4c5e96\";a:4:{s:10:\"expiration\";i:1620190075;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1620017275;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jonks','$P$Bo83SyvjsgQu5qDFYj5ef9VLBfPx9l.','jonks','iskrablackhold@gmail.com','http://localhost:10003','2021-05-03 04:45:20','',0,'jonks');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-04 22:56:43
