-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ksaTGjStd1USmrdbAQOwmxotut3efa7P',1,'2022-08-25 18:53:13','2022-08-25 18:53:13','2022-08-25 18:53:13');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2027-08-26 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(2,'Make your Breakfast','2027-08-26 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(3,'The best Organic','2027-08-26 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(4,'Bring nature into your home','2027-08-26 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(5,'Delivered to your home','2027-08-26 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(6,'Save 17% on Oganic Juice','2027-08-26 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(7,'Everyday Fresh & Clean with Our Products','2027-08-26 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(8,'The best Organic Products Online','2027-08-26 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(9,'Everyday Fresh with Our Products','2027-08-26 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(10,'100% guaranteed all Fresh items','2027-08-26 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(11,'Special grocery sale off this month','2027-08-26 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(12,'Enjoy 15% OFF for all vegetable and fruit','2027-08-26 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2022-08-25 18:53:20','2022-08-25 18:53:20');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Officiis ad quos inventore sint quidem quod alias et. Est sed placeat quisquam voluptatum rerum rerum. Iusto veritatis sint dolor est omnis similique quibusdam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(2,'Fashion',0,'Voluptas occaecati voluptatem quaerat molestias. Dolorem minus quibusdam magnam. Est velit aspernatur voluptate velit iure.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(3,'Electronic',0,'Rerum possimus tempora odit laborum quis vel. Atque sed et qui totam et. Ducimus et adipisci voluptatem eum ut. Beatae non maxime aut culpa voluptatibus reiciendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(4,'Commercial',0,'Autem quibusdam cum ut quaerat possimus repudiandae laborum. Voluptas repudiandae omnis ullam sapiente aliquid qui nihil. Quos minus vel voluptates possimus. Sequi nam dolores facere vel.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-25 18:53:12','2022-08-25 18:53:12');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2022-08-25 18:51:55','2022-08-25 18:51:55');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(2,'EUR','€',0,2,1,0,0.84,'2022-08-25 18:51:55','2022-08-25 18:51:55'),(3,'VND','₫',0,0,2,0,23203,'2022-08-25 18:51:55','2022-08-25 18:51:55');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Adolphus Nicolas Jr.','customer@botble.com','+14793675402','EC','Michigan','New Gerhardbury','42197 Fabian Flats',1,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','39310'),(2,'Dr. Adolphus Nicolas Jr.','customer@botble.com','+14636653361','AW','Hawaii','South Marytown','999 Samson Stream Apt. 886',1,0,'2022-08-25 18:52:40','2022-08-25 18:52:40','88936-0258'),(3,'Mr. Tevin Mohr Jr.','vendor@botble.com','+13084961763','TW','Idaho','Deeland','83293 Liliane Forge Apt. 604',2,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','13437'),(4,'Mr. Tevin Mohr Jr.','vendor@botble.com','+12528978295','MU','Utah','New Francisco','114 Green Crest',2,0,'2022-08-25 18:52:40','2022-08-25 18:52:40','94558'),(5,'Loren Wuckert','braun.zoie@example.com','+14405501233','GE','Massachusetts','East Ardith','628 Wisozk Groves Apt. 936',3,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','00930'),(6,'Vena Waelchi II','ukessler@example.com','+16466510328','MX','Louisiana','Priscillamouth','7716 Kayley Keys',4,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','50274-0994'),(7,'Lily Borer','bert69@example.net','+15059673958','KZ','North Carolina','Port Dave','5445 Swift Trail Suite 988',5,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','23803-4557'),(8,'Keara Thompson','kozey.connie@example.com','+16298706224','EG','Tennessee','South Caitlyn','846 Odessa Throughway Suite 463',6,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','87396'),(9,'Mr. Mitchel West DDS','reece07@example.net','+12628450587','MK','North Carolina','Jarenmouth','408 Wisozk Lock Apt. 736',7,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','53907'),(10,'Mr. Floyd Kozey Sr.','margarita89@example.net','+16406333229','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',8,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','84658'),(11,'Neva Bernhard','dee98@example.net','+18316542984','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',9,1,'2022-08-25 18:52:40','2022-08-25 18:52:40','74620-2164'),(12,'Hank Wunsch','twila.simonis@example.org','+15708271024','LI','Massachusetts','Sheldonville','756 Kub Bypass Suite 760',10,1,'2022-08-25 18:52:41','2022-08-25 18:52:41','00351');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Adolphus Nicolas Jr.','customer@botble.com','$2y$10$FtR58V0AsqFhudTcPWCDZO/kByOdhXYgT1eF.hf4/y7Owz6ivumVe','customers/7.jpg','1992-08-13','+17193453384',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(2,'Mr. Tevin Mohr Jr.','vendor@botble.com','$2y$10$D852nkY5iXZ12M6yhwzmEefTZr3b./tBT7KgB3yA0sIB35K5iACZS','customers/4.jpg','1997-08-14','+16413767304',NULL,'2022-08-25 18:52:40','2022-08-25 18:53:31','2022-08-26 01:52:40',NULL,1,'2022-08-26 01:53:31','activated'),(3,'Loren Wuckert','braun.zoie@example.com','$2y$10$/96xbBxRg/xep/Z5VfSXGuK/21GpGvuBpyB3jPxwpapieGVfes8RO','customers/1.jpg','1980-08-20','+13374718529',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(4,'Vena Waelchi II','ukessler@example.com','$2y$10$t4Fx2v4umm/3vfWaoifWIORjJtb9djiXUZCPiyJV2PUOaGujI6vCK','customers/2.jpg','1987-07-27','+15206456656',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(5,'Lily Borer','bert69@example.net','$2y$10$ItQxpa9rYLRRBc/MYWxUfu9f9KYiVn..cRabmzO6umEkn9RYnrY3a','customers/3.jpg','1982-08-06','+15593760851',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(6,'Keara Thompson','kozey.connie@example.com','$2y$10$91mZWC0V6rlE/O.fReL0Oe8gL1kCqLnSIlEB8mA.I4itNXCmveooi','customers/4.jpg','1977-08-18','+19194364782',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(7,'Mr. Mitchel West DDS','reece07@example.net','$2y$10$K2vyD9If70LNfClqiJrpnOuUZG3X6OQxf6MxBXpnet4cd.jgsPviK','customers/5.jpg','1989-08-06','+18284228409',NULL,'2022-08-25 18:52:40','2022-08-25 18:53:31','2022-08-26 01:52:40',NULL,1,'2022-08-26 01:53:31','activated'),(8,'Mr. Floyd Kozey Sr.','margarita89@example.net','$2y$10$2uTHivAQXoh4IiZTvrE2N.OISK7hFb9Y/GlE1apb4LRnPc7YzUPWq','customers/6.jpg','1993-08-03','+15595414939',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(9,'Neva Bernhard','dee98@example.net','$2y$10$KxJVMqEtYg7WQ9IqmYkwPOWtQPEt9SLJVZGnkldIScNyXlpvql.mO','customers/7.jpg','1974-08-14','+18703715190',NULL,'2022-08-25 18:52:40','2022-08-25 18:52:40','2022-08-26 01:52:40',NULL,0,NULL,'activated'),(10,'Hank Wunsch','twila.simonis@example.org','$2y$10$nGoCex/JCCK7f9WsstuB.OYzAqr3XLdRYV8RCO/l.PwQWK89jLqRG','customers/8.jpg','1981-08-09','+13414983640',NULL,'2022-08-25 18:52:41','2022-08-25 18:53:31','2022-08-26 01:52:41',NULL,1,'2022-08-26 01:53:31','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,6,34.2,7,2),(2,10,267.81,11,5),(3,16,63.119,13,5),(4,11,64.26,19,1),(5,17,88.8,9,2),(6,1,128,6,1),(6,2,209.22,16,3),(6,3,106.76,17,5),(6,4,28.2,12,5),(6,5,35.6,10,1),(6,6,19.2,6,3),(6,7,38.4,7,4),(6,8,89.91,17,5),(6,9,64.13,7,3),(6,10,244.08,10,4),(6,11,61.74,10,3),(6,12,90.9846,19,2),(6,13,54.12,7,4),(6,14,44.28,11,2),(6,15,54.28,10,2),(6,16,42.672,10,4),(6,17,54,14,2),(6,18,89.27,20,5),(6,19,71.04,7,5),(6,20,60.534,19,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2022-10-08 00:00:00','published','2022-09-10 03:31:27','2022-09-10 03:31:27'),(2,'Flash sale 2','2022-09-30 00:00:00','published','2022-09-10 03:31:27','2022-09-10 03:31:27'),(3,'Flash sale 3','2022-10-27 00:00:00','published','2022-09-10 03:31:27','2022-09-10 03:31:27'),(4,'Flash sale 4','2022-10-14 00:00:00','published','2022-09-10 03:31:27','2022-09-10 03:31:27'),(5,'Flash sale 5','2022-10-08 00:00:00','published','2022-09-10 03:31:27','2022-09-10 03:31:27'),(6,'Daily Best Sales','2022-10-10 00:00:00','published','2022-09-10 03:31:28','2022-09-10 03:31:28');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',1,'39310','shipping_address'),(2,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',2,'39310','shipping_address'),(3,'Lily Borer','+15059673958','bert69@example.net','KZ','North Carolina','Port Dave','5445 Swift Trail Suite 988',3,'23803-4557','shipping_address'),(4,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',4,'50274-0994','shipping_address'),(5,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',5,'50274-0994','shipping_address'),(6,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',6,'50274-0994','shipping_address'),(7,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',7,'84658','shipping_address'),(8,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',8,'84658','shipping_address'),(9,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',9,'39310','shipping_address'),(10,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',10,'39310','shipping_address'),(11,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',11,'84658','shipping_address'),(12,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',12,'84658','shipping_address'),(13,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',13,'50274-0994','shipping_address'),(14,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',14,'50274-0994','shipping_address'),(15,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',15,'74620-2164','shipping_address'),(16,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',16,'74620-2164','shipping_address'),(17,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',17,'39310','shipping_address'),(18,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',18,'39310','shipping_address'),(19,'Dr. Adolphus Nicolas Jr.','+14793675402','customer@botble.com','EC','Michigan','New Gerhardbury','42197 Fabian Flats',19,'39310','shipping_address'),(20,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',20,'50274-0994','shipping_address'),(21,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',21,'50274-0994','shipping_address'),(22,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',22,'50274-0994','shipping_address'),(23,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',23,'84658','shipping_address'),(24,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',24,'84658','shipping_address'),(25,'Loren Wuckert','+14405501233','braun.zoie@example.com','GE','Massachusetts','East Ardith','628 Wisozk Groves Apt. 936',25,'00930','shipping_address'),(26,'Loren Wuckert','+14405501233','braun.zoie@example.com','GE','Massachusetts','East Ardith','628 Wisozk Groves Apt. 936',26,'00930','shipping_address'),(27,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',27,'50274-0994','shipping_address'),(28,'Vena Waelchi II','+16466510328','ukessler@example.com','MX','Louisiana','Priscillamouth','7716 Kayley Keys',28,'50274-0994','shipping_address'),(29,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',29,'74620-2164','shipping_address'),(30,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',30,'74620-2164','shipping_address'),(31,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',31,'84658','shipping_address'),(32,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',32,'74620-2164','shipping_address'),(33,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',33,'74620-2164','shipping_address'),(34,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',34,'74620-2164','shipping_address'),(35,'Neva Bernhard','+18316542984','dee98@example.net','GP','Rhode Island','Treutelmouth','25194 Julianne Parkways Suite 867',35,'74620-2164','shipping_address'),(36,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',36,'84658','shipping_address'),(37,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',37,'84658','shipping_address'),(38,'Mr. Floyd Kozey Sr.','+16406333229','margarita89@example.net','BS','Florida','Port Hailie','48894 Vernon Spurs Suite 716',38,'84658','shipping_address'),(39,'Loren Wuckert','+14405501233','braun.zoie@example.com','GE','Massachusetts','East Ardith','628 Wisozk Groves Apt. 936',39,'00930','shipping_address'),(40,'Loren Wuckert','+14405501233','braun.zoie@example.com','GE','Massachusetts','East Ardith','628 Wisozk Groves Apt. 936',40,'00930','shipping_address'),(41,'Keara Thompson','+16298706224','kozey.connie@example.com','EG','Tennessee','South Caitlyn','846 Odessa Throughway Suite 463',41,'87396','shipping_address'),(42,'Keara Thompson','+16298706224','kozey.connie@example.com','EG','Tennessee','South Caitlyn','846 Odessa Throughway Suite 463',42,'87396','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-09-06 19:31:29','2022-09-06 19:31:29'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-09-06 19:31:29','2022-09-06 19:31:29'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(4,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-08-24 11:31:29','2022-08-24 11:31:29'),(5,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-08-24 11:31:29','2022-08-24 11:31:29'),(6,'create_shipment','Created shipment for order',0,2,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(8,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-09-03 19:31:29','2022-09-03 19:31:29'),(9,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-09-03 19:31:29','2022-09-03 19:31:29'),(10,'create_shipment','Created shipment for order',0,3,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(12,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(13,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(14,'confirm_payment','Payment was confirmed (amount $440.00) by %user_name%',0,4,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(15,'create_shipment','Created shipment for order',0,4,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(16,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-08-27 15:31:29','2022-08-27 15:31:29'),(17,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-08-27 15:31:29','2022-08-27 15:31:29'),(18,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,5,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(19,'create_shipment','Created shipment for order',0,5,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-09-05 15:31:29','2022-09-05 15:31:29'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-09-05 15:31:29','2022-09-05 15:31:29'),(23,'confirm_payment','Payment was confirmed (amount $771.90) by %user_name%',0,6,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-08-28 09:31:29','2022-08-28 09:31:29'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-08-28 09:31:29','2022-08-28 09:31:29'),(28,'confirm_payment','Payment was confirmed (amount $88.00) by %user_name%',0,7,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-09-07 07:31:29','2022-09-07 07:31:29'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-09-07 07:31:29','2022-09-07 07:31:29'),(33,'confirm_payment','Payment was confirmed (amount $124.30) by %user_name%',0,8,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-08-29 03:31:29','2022-08-29 03:31:29'),(37,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-08-29 03:31:29','2022-08-29 03:31:29'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(41,'confirm_payment','Payment was confirmed (amount $205.70) by %user_name%',0,10,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(45,'confirm_payment','Payment was confirmed (amount $973.40) by %user_name%',0,11,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(49,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(50,'confirm_payment','Payment was confirmed (amount $133.10) by %user_name%',0,12,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(51,'create_shipment','Created shipment for order',0,12,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-09-05 11:31:29','2022-09-05 11:31:29'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-09-05 11:31:29','2022-09-05 11:31:29'),(54,'confirm_payment','Payment was confirmed (amount $445.50) by %user_name%',0,13,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-09-04 17:31:29','2022-09-04 17:31:29'),(61,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-09-04 17:31:29','2022-09-04 17:31:29'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-09-02 13:31:29','2022-09-02 13:31:29'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-09-02 13:31:29','2022-09-02 13:31:29'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(74,'confirm_payment','Payment was confirmed (amount $258.30) by %user_name%',0,18,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-09-01 03:31:29','2022-09-01 03:31:29'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-09-01 03:31:29','2022-09-01 03:31:29'),(78,'confirm_payment','Payment was confirmed (amount $237.30) by %user_name%',0,19,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(79,'create_shipment','Created shipment for order',0,19,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-09-07 09:31:29','2022-09-07 09:31:29'),(82,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-09-07 09:31:29','2022-09-07 09:31:29'),(83,'confirm_payment','Payment was confirmed (amount $440.00) by %user_name%',0,20,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(84,'create_shipment','Created shipment for order',0,20,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(86,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(87,'confirm_payment','Payment was confirmed (amount $233.10) by %user_name%',0,21,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(88,'create_shipment','Created shipment for order',0,21,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(90,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(91,'confirm_payment','Payment was confirmed (amount $366.20) by %user_name%',0,22,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(92,'create_shipment','Created shipment for order',0,22,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(93,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(94,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-09-01 19:31:29','2022-09-01 19:31:29'),(95,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-09-01 19:31:29','2022-09-01 19:31:29'),(96,'confirm_payment','Payment was confirmed (amount $656.80) by %user_name%',0,23,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(97,'create_shipment','Created shipment for order',0,23,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(98,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-09-02 15:31:29','2022-09-02 15:31:29'),(100,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-09-02 15:31:29','2022-09-02 15:31:29'),(101,'confirm_payment','Payment was confirmed (amount $135.30) by %user_name%',0,24,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(102,'create_shipment','Created shipment for order',0,24,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(104,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(105,'confirm_payment','Payment was confirmed (amount $208.30) by %user_name%',0,25,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(106,'create_shipment','Created shipment for order',0,25,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(107,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-09-03 09:31:29','2022-09-03 09:31:29'),(109,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-09-03 09:31:29','2022-09-03 09:31:29'),(110,'confirm_payment','Payment was confirmed (amount $133.10) by %user_name%',0,26,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(111,'create_shipment','Created shipment for order',0,26,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(112,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-09-03 11:31:29','2022-09-03 11:31:29'),(113,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-09-03 11:31:29','2022-09-03 11:31:29'),(114,'confirm_payment','Payment was confirmed (amount $168.00) by %user_name%',0,27,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(115,'create_shipment','Created shipment for order',0,27,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(116,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(117,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(118,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(119,'confirm_payment','Payment was confirmed (amount $186.00) by %user_name%',0,28,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(120,'create_shipment','Created shipment for order',0,28,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(122,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(123,'confirm_payment','Payment was confirmed (amount $1,712.40) by %user_name%',0,29,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(124,'create_shipment','Created shipment for order',0,29,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(125,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(127,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(128,'confirm_payment','Payment was confirmed (amount $381.30) by %user_name%',0,30,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(129,'create_shipment','Created shipment for order',0,30,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(130,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-09-08 15:31:29','2022-09-08 15:31:29'),(132,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-09-08 15:31:29','2022-09-08 15:31:29'),(133,'confirm_payment','Payment was confirmed (amount $795.90) by %user_name%',0,31,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(134,'create_shipment','Created shipment for order',0,31,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(136,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(137,'confirm_payment','Payment was confirmed (amount $840.00) by %user_name%',0,32,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(138,'create_shipment','Created shipment for order',0,32,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(141,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(142,'confirm_payment','Payment was confirmed (amount $642.60) by %user_name%',0,33,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(143,'create_shipment','Created shipment for order',0,33,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(145,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(146,'confirm_payment','Payment was confirmed (amount $484.00) by %user_name%',0,34,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(147,'create_shipment','Created shipment for order',0,34,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(149,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(150,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,35,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(151,'create_shipment','Created shipment for order',0,35,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(152,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-09-07 21:31:29','2022-09-07 21:31:29'),(153,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-09-07 21:31:29','2022-09-07 21:31:29'),(154,'confirm_payment','Payment was confirmed (amount $1,240.00) by %user_name%',0,36,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(155,'create_shipment','Created shipment for order',0,36,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(157,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(158,'confirm_payment','Payment was confirmed (amount $237.30) by %user_name%',0,37,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(159,'create_shipment','Created shipment for order',0,37,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-09-08 09:31:29','2022-09-08 09:31:29'),(161,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-09-08 09:31:29','2022-09-08 09:31:29'),(162,'confirm_payment','Payment was confirmed (amount $264.60) by %user_name%',0,38,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(163,'create_shipment','Created shipment for order',0,38,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(165,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(166,'confirm_payment','Payment was confirmed (amount $186.00) by %user_name%',0,39,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(167,'create_shipment','Created shipment for order',0,39,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(169,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(170,'confirm_payment','Payment was confirmed (amount $390.60) by %user_name%',0,40,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(171,'create_shipment','Created shipment for order',0,40,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(172,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(173,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(174,'create_shipment','Created shipment for order',0,41,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(175,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-09-09 23:31:29','2022-09-09 23:31:29'),(176,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-09-09 23:31:29','2022-09-09 23:31:29'),(177,'confirm_payment','Payment was confirmed (amount $258.30) by %user_name%',0,42,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(178,'create_shipment','Created shipment for order',0,42,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(179,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(180,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(181,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(182,'update_status','Order confirmed by %user_name%',0,7,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(183,'update_status','Order confirmed by %user_name%',0,8,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(184,'update_status','Order confirmed by %user_name%',0,11,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(185,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(186,'update_status','Order confirmed by %user_name%',0,22,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(187,'update_status','Order confirmed by %user_name%',0,23,NULL,'2022-09-10 03:31:30','2022-09-10 03:31:30'),(188,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31'),(189,'update_status','Order confirmed by %user_name%',0,27,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31'),(190,'update_status','Order confirmed by %user_name%',0,29,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31'),(191,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31'),(192,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31'),(193,'update_status','Order confirmed by %user_name%',0,42,NULL,'2022-09-10 03:31:31','2022-09-10 03:31:31');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,80.00,8.00,'[]',36,'Foster Farms Takeout Crispy Classic',1590.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(2,2,1,113.00,11.30,'[]',88,'Colorful Banana',900.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(3,3,3,121.00,12.10,'[]',48,'Gorton’s Beer Battered Fish Fillets',1833.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(4,3,3,123.00,12.30,'[]',84,'Organic Cage-Free Grade A Large Brown Eggs',1557.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(5,4,1,400.00,40.00,'[]',26,'Seeds of Change Organic Quinoe',803.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(6,5,2,120.00,12.00,'[]',43,'Canada Dry Ginger Ale – 2 L Bottle',1196.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(7,6,3,123.00,12.30,'[]',60,'Pepperidge Farm Farmhouse Hearty White Bread',2628.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(8,6,3,126.00,12.60,'[]',89,'Signature Wood-Fired Mushroom and Caramelized',1722.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(9,7,1,80.00,8.00,'[]',36,'Foster Farms Takeout Crispy Classic',530.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(10,8,1,113.00,11.30,'[]',88,'Colorful Banana',900.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(11,9,1,400.00,40.00,'[]',26,'Seeds of Change Organic Quinoe',803.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(12,10,1,60.00,6.00,'[]',42,'Chobani Complete Vanilla Greek',635.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(13,10,1,127.00,12.70,'[]',69,'Foster Farms Takeout Crispy Classic Buffalo Wings',697.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(14,11,3,314.00,31.40,'[]',31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',2016.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(15,12,1,121.00,12.10,'[]',47,'Gorton’s Beer Battered Fish Fillets',611.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(16,13,1,60.00,6.00,'[]',40,'Chobani Complete Vanilla Greek',635.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(17,13,2,121.00,12.10,'[]',48,'Gorton’s Beer Battered Fish Fillets',1222.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(18,13,1,114.00,11.40,'[]',77,'Perdue Simply Smart Organics Gluten Free',515.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(19,14,2,111.00,11.10,'[]',80,'Chen Watermelon',1420.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(20,15,2,400.00,40.00,'[]',28,'Seeds of Change Organic Quinoe',1606.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(21,15,3,339.00,33.90,'[]',50,'Haagen-Dazs Caramel Cone Ice Cream',1515.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(22,15,3,113.00,11.30,'[]',73,'All Natural Italian-Style Chicken Meatballs',2421.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(23,16,1,127.00,12.70,'[]',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',697.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(24,17,3,126.00,12.60,'[]',53,'Nestle Original Coffee-Mate Coffee Creamer',2412.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(25,17,1,114.00,11.40,'[]',77,'Perdue Simply Smart Organics Gluten Free',515.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(26,18,2,123.00,12.30,'[]',59,'Pepperidge Farm Farmhouse Hearty White Bread',1752.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(27,19,2,113.00,11.30,'[]',75,'All Natural Italian-Style Chicken Meatballs',1614.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(28,20,1,400.00,40.00,'[]',25,'Seeds of Change Organic Quinoe',803.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(29,21,2,111.00,11.10,'[]',45,'Encore Seafoods Stuffed Alaskan',1464.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(30,22,1,121.00,12.10,'[]',49,'Gorton’s Beer Battered Fish Fillets',611.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(31,22,2,111.00,11.10,'[]',76,'Simply Lemonade with Raspberry Juice',1220.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(32,23,1,121.00,12.10,'[]',46,'Gorton’s Beer Battered Fish Fillets',611.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(33,23,1,121.00,12.10,'[]',49,'Gorton’s Beer Battered Fish Fillets',611.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(34,23,3,126.00,12.60,'[]',54,'Nestle Original Coffee-Mate Coffee Creamer',2412.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(35,24,1,123.00,12.30,'[]',60,'Pepperidge Farm Farmhouse Hearty White Bread',876.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(36,25,2,40.00,4.00,'[]',38,'Blue Diamond Almonds Lightly',1568.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(37,25,1,113.00,11.30,'[]',74,'All Natural Italian-Style Chicken Meatballs',807.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(38,26,1,121.00,12.10,'[]',48,'Gorton’s Beer Battered Fish Fillets',611.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(39,27,2,80.00,8.00,'[]',35,'Foster Farms Takeout Crispy Classic',1060.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(40,28,3,60.00,6.00,'[]',39,'Chobani Complete Vanilla Greek',1905.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(41,29,3,400.00,40.00,'[]',27,'Seeds of Change Organic Quinoe',2409.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(42,29,3,113.00,11.30,'[]',74,'All Natural Italian-Style Chicken Meatballs',2421.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(43,29,1,111.00,11.10,'[]',80,'Chen Watermelon',710.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(44,30,3,123.00,12.30,'[]',59,'Pepperidge Farm Farmhouse Hearty White Bread',2628.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(45,31,2,40.00,4.00,'[]',37,'Blue Diamond Almonds Lightly',1568.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(46,31,2,339.00,33.90,'[]',50,'Haagen-Dazs Caramel Cone Ice Cream',1010.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(47,32,2,400.00,40.00,'[]',26,'Seeds of Change Organic Quinoe',1606.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(48,33,2,120.00,12.00,'[]',70,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1572.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(49,33,3,126.00,12.60,'[]',89,'Signature Wood-Fired Mushroom and Caramelized',1722.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(50,34,1,400.00,40.00,'[]',28,'Seeds of Change Organic Quinoe',803.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(51,34,1,40.00,4.00,'[]',37,'Blue Diamond Almonds Lightly',784.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(52,35,2,120.00,12.00,'[]',70,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1572.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(53,36,3,400.00,40.00,'[]',26,'Seeds of Change Organic Quinoe',2409.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(54,37,2,113.00,11.30,'[]',86,'Colorful Banana',1800.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(55,38,2,126.00,12.60,'[]',90,'Signature Wood-Fired Mushroom and Caramelized',1148.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(56,39,3,60.00,6.00,'[]',40,'Chobani Complete Vanilla Greek',1905.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(57,40,3,126.00,12.60,'[]',91,'Signature Wood-Fired Mushroom and Caramelized',1722.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(58,41,2,400.00,40.00,'[]',25,'Seeds of Change Organic Quinoe',1606.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(59,41,3,400.00,40.00,'[]',26,'Seeds of Change Organic Quinoe',2409.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(60,41,1,111.00,11.10,'[]',79,'Chen Watermelon',710.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(61,42,2,123.00,12.30,'[]',61,'Organic Frozen Triple Berry Blend',1672.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,1,'1','default','pending',248.00,8.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'IgQMdxh487bj0jOI38OdKl28i1ojo',1,'2022-09-06 19:31:29','2022-09-10 03:31:29',2),(2,1,'1','default','completed',124.30,11.30,0.00,NULL,NULL,0.00,113.00,1,NULL,1,'2022-09-10 03:31:29','AwWYNqh3uWoUw7duWco21IkRrc6qJ',2,'2022-08-24 11:31:29','2022-09-10 03:31:29',1),(3,5,'1','default','completed',756.40,24.40,0.00,NULL,NULL,0.00,732.00,1,NULL,1,'2022-09-10 03:31:29','Sh4tKlFAvng1h2Gq1BjZuZaTVtKrI',3,'2022-09-03 19:31:29','2022-09-10 03:31:29',1),(4,4,'1','default','pending',440.00,40.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,NULL,'3Fu8rJtVjWHhH5ufkUZvEZegy5tRB',4,'2022-09-04 03:31:29','2022-09-10 03:31:29',3),(5,4,'1','default','completed',252.00,12.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,'2022-09-10 03:31:29','iXXNwwnUok3EiyEC4W2uLZqg2rH3c',5,'2022-08-27 15:31:29','2022-09-10 03:31:29',1),(6,4,'1','default','completed',771.90,24.90,0.00,NULL,NULL,0.00,747.00,1,NULL,1,'2022-09-10 03:31:30','SI6i36N1XIV6WFlkEJosnyyrTtkMG',6,'2022-09-05 15:31:29','2022-09-10 03:31:30',2),(7,8,'1','default','completed',88.00,8.00,0.00,NULL,NULL,0.00,80.00,1,NULL,1,'2022-09-10 03:31:30','YTtPzP9qw8DCEeEDEDw7MJyaxr6GU',7,'2022-08-28 09:31:29','2022-09-10 03:31:30',2),(8,8,'1','default','completed',124.30,11.30,0.00,NULL,NULL,0.00,113.00,1,NULL,1,'2022-09-10 03:31:30','dP7xe3aHMKuG1vfst1x0d8LUsnJvl',8,'2022-09-07 07:31:29','2022-09-10 03:31:30',1),(9,1,'1','default','pending',440.00,40.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,NULL,'rV1QRLESgktfx53AxZmVaRTADBKfl',9,'2022-08-29 03:31:29','2022-09-10 03:31:29',3),(10,1,'1','default','pending',205.70,18.70,0.00,NULL,NULL,0.00,187.00,1,NULL,1,NULL,'tE27no9VwXu6utuy31pGgOnxg9DGQ',10,'2022-09-04 19:31:29','2022-09-10 03:31:29',1),(11,8,'1','default','completed',973.40,31.40,0.00,NULL,NULL,0.00,942.00,1,NULL,1,'2022-09-10 03:31:30','gmLGnn3sNFPyY6Q1kWfonoIxr16It',11,'2022-09-07 15:31:29','2022-09-10 03:31:30',2),(12,8,'1','default','pending',133.10,12.10,0.00,NULL,NULL,0.00,121.00,1,NULL,1,NULL,'fQDiNKcah6MzlGtevfNSNBnBPljvW',12,'2022-09-06 09:31:29','2022-09-10 03:31:29',1),(13,4,'1','default','pending',445.50,29.50,0.00,NULL,NULL,0.00,416.00,1,NULL,1,NULL,'cR467beA1L4naQBBuvEM8ZrpKNwa1',13,'2022-09-05 11:31:29','2022-09-10 03:31:29',1),(14,4,'1','default','completed',233.10,11.10,0.00,NULL,NULL,0.00,222.00,1,NULL,1,'2022-09-10 03:31:29','01kYFDAx8Xfbpvqs0sccc5YDGZmuZ',14,'2022-09-04 07:31:29','2022-09-10 03:31:29',3),(15,9,'1','default','completed',2241.20,85.20,0.00,NULL,NULL,0.00,2156.00,1,NULL,1,'2022-09-10 03:31:29','D38bRQqI9bWCkoEaw7dK6F9oek8p8',15,'2022-09-04 17:31:29','2022-09-10 03:31:29',3),(16,9,'1','default','completed',139.70,12.70,0.00,NULL,NULL,0.00,127.00,1,NULL,1,'2022-09-10 03:31:29','UM009C5BstaJcv28BOO2HDEoO8Ou0',16,'2022-09-02 13:31:29','2022-09-10 03:31:29',1),(17,1,'1','default','completed',516.00,24.00,0.00,NULL,NULL,0.00,492.00,1,NULL,1,'2022-09-10 03:31:29','iSsNo1UrPUjR29KxQCXbFww6ghA5k',17,'2022-09-09 03:31:29','2022-09-10 03:31:29',1),(18,1,'1','default','pending',258.30,12.30,0.00,NULL,NULL,0.00,246.00,1,NULL,1,NULL,'ju79P5KP86e6zOwYvRYExNd2ewK3F',18,'2022-09-04 03:31:29','2022-09-10 03:31:29',2),(19,1,'1','default','completed',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,'2022-09-10 03:31:30','doEDvV9LOWD5QjQwd3YJ6D382XCUt',19,'2022-09-01 03:31:29','2022-09-10 03:31:30',3),(20,4,'1','default','pending',440.00,40.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,NULL,'9fWBt86iZHWObNEnAaroraY0UgqEV',20,'2022-09-07 09:31:29','2022-09-10 03:31:29',3),(21,4,'1','default','pending',233.10,11.10,0.00,NULL,NULL,0.00,222.00,1,NULL,1,NULL,'DXQeAm3UvR0NJDBV6zycGtlyJpxr0',21,'2022-09-02 19:31:29','2022-09-10 03:31:29',2),(22,4,'1','default','completed',366.20,23.20,0.00,NULL,NULL,0.00,343.00,1,NULL,1,'2022-09-10 03:31:30','TIL9L8EIdVi56T6ersilL8gyqxbbM',22,'2022-09-02 19:31:29','2022-09-10 03:31:30',1),(23,8,'1','default','completed',656.80,36.80,0.00,NULL,NULL,0.00,620.00,1,NULL,1,'2022-09-10 03:31:30','DTRUxhhamOrAw0TmvPYPMctx7FshG',23,'2022-09-01 19:31:29','2022-09-10 03:31:30',1),(24,8,'1','default','pending',135.30,12.30,0.00,NULL,NULL,0.00,123.00,1,NULL,1,NULL,'L2VQMJFu2TwakGrD3OdbO1Sl9NPtg',24,'2022-09-02 15:31:29','2022-09-10 03:31:29',2),(25,3,'1','default','completed',208.30,15.30,0.00,NULL,NULL,0.00,193.00,1,NULL,1,'2022-09-10 03:31:31','nfzcGoGkxKzAN5RxrmeSeJrrOUtbS',25,'2022-09-06 09:31:29','2022-09-10 03:31:31',3),(26,3,'1','default','pending',133.10,12.10,0.00,NULL,NULL,0.00,121.00,1,NULL,1,NULL,'0wfNfnlCUfaSqqhunZIOTUQ4PZyI8',26,'2022-09-03 09:31:29','2022-09-10 03:31:29',1),(27,4,'1','default','completed',168.00,8.00,0.00,NULL,NULL,0.00,160.00,1,NULL,1,'2022-09-10 03:31:31','X5zn6JinNaEsIJAMOGg2KFY09iMuy',27,'2022-09-03 11:31:29','2022-09-10 03:31:31',2),(28,4,'1','default','pending',186.00,6.00,0.00,NULL,NULL,0.00,180.00,1,NULL,1,NULL,'sisfzKMZcTqmXId5QHa7SHrB9TB5b',28,'2022-09-04 19:31:29','2022-09-10 03:31:29',1),(29,9,'1','default','completed',1712.40,62.40,0.00,NULL,NULL,0.00,1650.00,1,NULL,1,'2022-09-10 03:31:31','Nk8fhTsLMzgcCwkmy3UJG5FbHT3sK',29,'2022-09-07 19:31:29','2022-09-10 03:31:31',3),(30,9,'1','default','completed',381.30,12.30,0.00,NULL,NULL,0.00,369.00,1,NULL,1,'2022-09-10 03:31:31','ON7ZBcLb5YqQvLWeipAgHxdK2j9pk',30,'2022-09-04 07:31:29','2022-09-10 03:31:31',2),(31,8,'1','default','pending',795.90,37.90,0.00,NULL,NULL,0.00,758.00,1,NULL,1,NULL,'A0jNsBHHwZtjgB03Y5AzeF7KEUs7Y',31,'2022-09-08 15:31:29','2022-09-10 03:31:29',3),(32,9,'1','default','completed',840.00,40.00,0.00,NULL,NULL,0.00,800.00,1,NULL,1,'2022-09-10 03:31:31','OyVCY3v6CRsyCrfYCkitsR4x5kcHG',32,'2022-09-07 15:31:29','2022-09-10 03:31:31',3),(33,9,'1','default','pending',642.60,24.60,0.00,NULL,NULL,0.00,618.00,1,NULL,1,NULL,'kivYy7AcrZMOuN9Z720Wn9gQ8o6B8',33,'2022-09-09 07:31:29','2022-09-10 03:31:29',2),(34,9,'1','default','pending',484.00,44.00,0.00,NULL,NULL,0.00,440.00,1,NULL,1,NULL,'8UywYLGxlfKIlSCcyEl1DUw06Jtyr',34,'2022-09-07 19:31:29','2022-09-10 03:31:29',3),(35,9,'1','default','pending',252.00,12.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'nfKLux3rCEQnMrYzBeM49Q3r48kx6',35,'2022-09-09 11:31:29','2022-09-10 03:31:29',2),(36,8,'1','default','pending',1240.00,40.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,NULL,'yI9MoMKRwe4HsdEdhW2mrCcCvxbsc',36,'2022-09-07 21:31:29','2022-09-10 03:31:29',3),(37,8,'1','default','pending',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,NULL,'FDZj7XbeCcgRBPjNkitUj3z1dpHoA',37,'2022-09-09 03:31:29','2022-09-10 03:31:29',1),(38,8,'1','default','pending',264.60,12.60,0.00,NULL,NULL,0.00,252.00,1,NULL,1,NULL,'pLzfubcJYQBEiOBAhxOmNdpJVoWWR',38,'2022-09-08 09:31:29','2022-09-10 03:31:29',2),(39,3,'1','default','pending',186.00,6.00,0.00,NULL,NULL,0.00,180.00,1,NULL,1,NULL,'ApicXhdp7k5KmWgBHLU2Ua4VNKq2g',39,'2022-09-09 07:31:29','2022-09-10 03:31:29',1),(40,3,'1','default','pending',390.60,12.60,0.00,NULL,NULL,0.00,378.00,1,NULL,1,NULL,'exwcjhTVSBJ7fY7tU8XvTmTLJikqq',40,'2022-09-09 11:31:29','2022-09-10 03:31:29',2),(41,6,'1','default','pending',2202.10,91.10,0.00,NULL,NULL,0.00,2111.00,1,NULL,1,NULL,'PgR6SlVPy40Xt6IJwBBHpZSXT4YXa',41,'2022-09-09 11:31:29','2022-09-10 03:31:29',3),(42,6,'1','default','completed',258.30,12.30,0.00,NULL,NULL,0.00,246.00,1,NULL,1,'2022-09-10 03:31:31','Psb9MvCKwUZHt8mapOgtVqyVfvCyL',42,'2022-09-09 23:31:29','2022-09-10 03:31:31',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2022-09-10 03:31:28','2022-09-10 03:31:28',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2022-09-10 03:31:28','2022-09-10 03:31:28',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2022-09-10 03:31:28','2022-09-10 03:31:28'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2022-09-10 03:31:28','2022-09-10 03:31:28');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2022-08-25 18:52:04','2022-08-25 18:52:04'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2022-08-25 18:52:05','2022-08-25 18:52:05'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2022-08-25 18:52:06','2022-08-25 18:52:06'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2022-08-25 18:52:06','2022-08-25 18:52:06'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2022-08-25 18:52:06','2022-08-25 18:52:06');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,9,1),(2,3,2),(3,5,3),(4,14,4),(5,12,5),(6,9,6),(7,13,7),(8,10,8),(9,7,9),(10,4,10),(11,13,11),(12,11,12),(13,11,13),(14,1,14),(15,14,15),(16,14,16),(17,1,17),(18,4,18),(19,10,19),(20,9,20),(21,8,21),(22,4,22),(23,14,23),(24,2,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,1,3),(4,3,4),(5,2,5),(6,1,6),(7,3,7),(8,3,8),(9,3,9),(10,2,10),(11,3,11),(12,2,12),(13,3,13),(14,3,14),(15,2,15),(16,2,16),(17,1,17),(18,3,18),(19,3,19),(20,3,20),(21,3,21),(22,1,22),(23,3,23),(24,2,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,4),(2,1,22),(3,1,20),(4,1,2),(5,2,9),(6,2,8),(7,2,21),(8,2,20),(9,3,1),(10,3,18),(11,3,20),(12,3,7),(13,4,12),(14,4,17),(15,4,7),(16,4,15),(17,5,16),(18,5,13),(19,5,21),(20,5,11),(21,6,8),(22,6,24),(23,7,19),(24,7,13),(25,7,18),(26,8,11),(27,8,17),(28,8,10),(29,8,15),(30,9,18),(31,9,7),(32,9,2),(33,10,11),(34,10,2),(35,10,23),(36,11,14),(37,11,21),(38,11,15),(39,12,17),(40,12,23),(41,12,2),(42,13,1),(43,13,7),(44,13,15),(45,14,9),(46,14,12),(47,14,20),(48,15,7),(49,15,13),(50,15,6),(51,15,12),(52,16,15),(53,16,24),(54,16,10),(55,16,9),(56,17,13),(57,17,21),(58,17,22),(59,17,3),(60,18,9),(61,18,21),(62,18,2),(63,18,19),(64,19,23),(65,19,22),(66,19,2),(67,20,10),(68,20,15),(69,20,13),(70,20,22),(71,21,9),(72,21,11),(73,21,18),(74,22,5),(75,22,13),(76,22,9),(77,22,2),(78,23,20),(79,23,18),(80,23,22),(81,23,19),(82,24,6),(83,24,21),(84,24,8),(85,24,12);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,21),(2,7),(2,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(2,'New','#00c9a7','published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(3,'Sale','#fe9931','published','2022-08-25 18:52:06','2022-08-25 18:52:06');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,6),(2,1),(2,3),(3,1),(3,4),(4,3),(4,4),(4,6),(5,1),(5,3),(5,5),(6,5),(6,6),(7,1),(7,3),(7,5),(8,4),(8,6),(9,5),(9,6),(10,1),(10,5),(11,4),(11,5),(11,6),(12,1),(12,5),(12,6),(13,2),(14,1),(14,2),(14,3),(15,2),(15,4),(15,6),(16,2),(16,3),(16,6),(17,2),(17,3),(17,5),(18,2),(18,3),(18,4),(19,1),(19,2),(20,1),(20,6),(21,3),(21,6),(22,2),(22,5),(22,6),(23,3),(23,5),(23,6),(24,1),(24,3),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(2,'Bags',NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(3,'Shoes',NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(4,'Clothes',NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06'),(5,'Hand bag',NULL,'published','2022-08-25 18:52:06','2022-08-25 18:52:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (3,1,2),(7,1,4),(11,1,6),(13,1,7),(15,1,8),(19,1,10),(31,1,16),(61,1,31),(65,1,33),(77,1,39),(91,1,46),(101,1,51),(119,1,60),(131,1,66),(21,2,11),(25,2,13),(37,2,19),(39,2,20),(45,2,23),(49,2,25),(67,2,34),(69,2,35),(81,2,41),(85,2,43),(95,2,48),(97,2,49),(127,2,64),(1,3,1),(27,3,14),(29,3,15),(35,3,18),(41,3,21),(43,3,22),(71,3,36),(73,3,37),(83,3,42),(87,3,44),(103,3,52),(111,3,56),(121,3,61),(125,3,63),(133,3,67),(9,4,5),(23,4,12),(75,4,38),(79,4,40),(89,4,45),(99,4,50),(107,4,54),(109,4,55),(129,4,65),(5,5,3),(17,5,9),(33,5,17),(47,5,24),(51,5,26),(53,5,27),(55,5,28),(57,5,29),(59,5,30),(63,5,32),(93,5,47),(105,5,53),(113,5,57),(115,5,58),(117,5,59),(123,5,62),(18,6,9),(24,6,12),(44,6,22),(46,6,23),(52,6,26),(56,6,28),(64,6,32),(82,6,41),(86,6,43),(88,6,44),(94,6,47),(96,6,48),(112,6,56),(118,6,59),(120,6,60),(122,6,61),(130,6,65),(14,7,7),(20,7,10),(32,7,16),(34,7,17),(54,7,27),(68,7,34),(70,7,35),(76,7,38),(78,7,39),(90,7,45),(100,7,50),(104,7,52),(106,7,53),(126,7,63),(132,7,66),(4,8,2),(6,8,3),(12,8,6),(16,8,8),(36,8,18),(60,8,30),(72,8,36),(80,8,40),(98,8,49),(134,8,67),(10,9,5),(38,9,19),(48,9,24),(50,9,25),(62,9,31),(66,9,33),(102,9,51),(108,9,54),(114,9,57),(2,10,1),(8,10,4),(22,10,11),(26,10,13),(28,10,14),(30,10,15),(40,10,20),(42,10,21),(58,10,29),(74,10,37),(84,10,42),(92,10,46),(110,10,55),(116,10,58),(124,10,62),(128,10,64);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,1,0),(5,29,2,1),(6,30,2,0),(7,31,3,1),(8,32,3,0),(9,33,4,1),(10,34,4,0),(11,35,4,0),(12,36,4,0),(13,37,5,1),(14,38,5,0),(15,39,6,1),(16,40,6,0),(17,41,6,0),(18,42,6,0),(19,43,7,1),(20,44,7,0),(21,45,8,1),(22,46,9,1),(23,47,9,0),(24,48,9,0),(25,49,9,0),(26,50,10,1),(27,51,10,0),(28,52,10,0),(29,53,11,1),(30,54,11,0),(31,55,12,1),(32,56,12,0),(33,57,12,0),(34,58,12,0),(35,59,13,1),(36,60,13,0),(37,61,14,1),(38,62,14,0),(39,63,15,1),(40,64,15,0),(41,65,16,1),(42,66,16,0),(43,67,16,0),(44,68,16,0),(45,69,16,0),(46,70,17,1),(47,71,17,0),(48,72,18,1),(49,73,18,0),(50,74,18,0),(51,75,18,0),(52,76,19,1),(53,77,20,1),(54,78,20,0),(55,79,21,1),(56,80,21,0),(57,81,22,1),(58,82,22,0),(59,83,22,0),(60,84,22,0),(61,85,22,0),(62,86,23,1),(63,87,23,0),(64,88,23,0),(65,89,24,1),(66,90,24,0),(67,91,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-109-A0',0,14,0,1,1,1,0,0,400,NULL,NULL,NULL,18.00,14.00,10.00,803.00,1,12872,'2022-08-25 18:52:32','2022-08-25 18:53:31','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-114-A0',0,16,0,1,1,7,0,0,317,NULL,NULL,NULL,15.00,10.00,14.00,638.00,1,59017,'2022-08-25 18:52:32','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-160-A0',0,20,0,1,1,7,0,0,314,NULL,NULL,NULL,18.00,13.00,18.00,672.00,1,110919,'2022-08-25 18:52:32','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-156-A0',0,10,0,1,1,2,0,0,80,60,NULL,NULL,14.00,20.00,11.00,530.00,1,39308,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-186-A0',0,11,0,1,1,4,0,0,40,NULL,NULL,NULL,20.00,13.00,14.00,784.00,1,195606,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-162-A0',0,16,0,1,1,4,0,0,60,NULL,NULL,NULL,15.00,18.00,18.00,635.00,1,87504,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-150-A0',0,18,0,1,1,4,0,0,120,NULL,NULL,NULL,13.00,14.00,15.00,598.00,1,88668,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-183-A0',0,13,0,1,1,6,0,0,111,99.9,NULL,NULL,13.00,18.00,15.00,732.00,1,106027,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-179-A0',0,16,0,1,1,5,0,0,121,NULL,NULL,NULL,10.00,20.00,18.00,611.00,1,158806,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-138-A0',0,11,0,1,1,6,0,0,339,NULL,NULL,NULL,20.00,18.00,14.00,505.00,1,102940,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-120-A0',0,10,0,1,1,6,0,0,126,NULL,NULL,NULL,14.00,14.00,12.00,804.00,1,8791,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-171-A0',0,16,0,1,1,5,0,0,126,104.58,NULL,NULL,20.00,15.00,11.00,635.00,1,92078,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-136-A0',0,11,0,1,1,4,0,0,123,NULL,NULL,NULL,15.00,18.00,16.00,876.00,1,32279,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-190-A0',0,13,0,1,1,3,0,0,123,NULL,NULL,NULL,18.00,20.00,17.00,836.00,1,102015,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-138-A0',0,16,0,1,1,2,0,0,118,NULL,NULL,NULL,13.00,13.00,15.00,865.00,1,90459,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-117-A0',0,16,0,1,1,2,0,0,127,88.9,NULL,NULL,10.00,13.00,11.00,697.00,1,130423,'2022-08-25 18:52:33','2022-08-25 18:53:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-106-A0',0,18,0,1,1,1,0,0,120,NULL,NULL,NULL,15.00,14.00,14.00,786.00,1,181379,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-161-A0',0,11,0,1,1,6,0,0,113,NULL,NULL,NULL,12.00,17.00,12.00,807.00,1,82119,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-100-A0',0,10,0,1,1,7,0,0,111,NULL,NULL,NULL,16.00,20.00,14.00,610.00,1,176969,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-149-A0',0,13,0,1,1,5,0,0,114,102.6,NULL,NULL,16.00,10.00,19.00,515.00,1,98908,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-109-A0',0,19,0,1,1,6,0,0,111,NULL,NULL,NULL,15.00,10.00,20.00,710.00,1,113871,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-145-A0',0,17,0,1,1,6,0,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,1,152056,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-175-A0',0,14,0,1,1,1,0,0,113,NULL,NULL,NULL,11.00,20.00,16.00,900.00,1,105088,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-189-A0',0,19,0,1,1,7,0,0,126,99.54,NULL,NULL,10.00,16.00,12.00,574.00,1,33101,'2022-08-25 18:52:33','2022-08-25 18:53:32','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-109-A0',0,14,0,1,0,1,1,0,400,NULL,NULL,NULL,18.00,14.00,10.00,803.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-109-A0-A1',0,14,0,1,0,1,1,0,400,NULL,NULL,NULL,18.00,14.00,10.00,803.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-109-A0-A2',0,14,0,1,0,1,1,0,400,NULL,NULL,NULL,18.00,14.00,10.00,803.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-109-A0-A3',0,14,0,1,0,1,1,0,400,NULL,NULL,NULL,18.00,14.00,10.00,803.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-114-A0',0,16,0,1,0,7,1,0,317,NULL,NULL,NULL,15.00,10.00,14.00,638.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-114-A0-A1',0,16,0,1,0,7,1,0,317,NULL,NULL,NULL,15.00,10.00,14.00,638.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-160-A0',0,20,0,1,0,7,1,0,314,NULL,NULL,NULL,18.00,13.00,18.00,672.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-160-A0-A1',0,20,0,1,0,7,1,0,314,NULL,NULL,NULL,18.00,13.00,18.00,672.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-156-A0',0,10,0,1,0,2,1,0,80,60,NULL,NULL,14.00,20.00,11.00,530.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-156-A0-A1',0,10,0,1,0,2,1,0,80,66.4,NULL,NULL,14.00,20.00,11.00,530.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-156-A0-A2',0,10,0,1,0,2,1,0,80,70.4,NULL,NULL,14.00,20.00,11.00,530.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-156-A0-A3',0,10,0,1,0,2,1,0,80,59.2,NULL,NULL,14.00,20.00,11.00,530.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-186-A0',0,11,0,1,0,4,1,0,40,NULL,NULL,NULL,20.00,13.00,14.00,784.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-186-A0-A1',0,11,0,1,0,4,1,0,40,NULL,NULL,NULL,20.00,13.00,14.00,784.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-162-A0',0,16,0,1,0,4,1,0,60,NULL,NULL,NULL,15.00,18.00,18.00,635.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-162-A0-A1',0,16,0,1,0,4,1,0,60,NULL,NULL,NULL,15.00,18.00,18.00,635.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-162-A0-A2',0,16,0,1,0,4,1,0,60,NULL,NULL,NULL,15.00,18.00,18.00,635.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-162-A0-A3',0,16,0,1,0,4,1,0,60,NULL,NULL,NULL,15.00,18.00,18.00,635.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-150-A0',0,18,0,1,0,4,1,0,120,NULL,NULL,NULL,13.00,14.00,15.00,598.00,NULL,0,'2022-08-25 18:52:34','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-150-A0-A1',0,18,0,1,0,4,1,0,120,NULL,NULL,NULL,13.00,14.00,15.00,598.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-183-A0',0,13,0,1,0,6,1,0,111,99.9,NULL,NULL,13.00,18.00,15.00,732.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-179-A0',0,16,0,1,0,5,1,0,121,NULL,NULL,NULL,10.00,20.00,18.00,611.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-179-A0-A1',0,16,0,1,0,5,1,0,121,NULL,NULL,NULL,10.00,20.00,18.00,611.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-179-A0-A2',0,16,0,1,0,5,1,0,121,NULL,NULL,NULL,10.00,20.00,18.00,611.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-179-A0-A3',0,16,0,1,0,5,1,0,121,NULL,NULL,NULL,10.00,20.00,18.00,611.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-138-A0',0,11,0,1,0,6,1,0,339,NULL,NULL,NULL,20.00,18.00,14.00,505.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-138-A0-A1',0,11,0,1,0,6,1,0,339,NULL,NULL,NULL,20.00,18.00,14.00,505.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-138-A0-A2',0,11,0,1,0,6,1,0,339,NULL,NULL,NULL,20.00,18.00,14.00,505.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-120-A0',0,10,0,1,0,6,1,0,126,NULL,NULL,NULL,14.00,14.00,12.00,804.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-120-A0-A1',0,10,0,1,0,6,1,0,126,NULL,NULL,NULL,14.00,14.00,12.00,804.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0',0,16,0,1,0,5,1,0,126,104.58,NULL,NULL,20.00,15.00,11.00,635.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-171-A0-A1',0,16,0,1,0,5,1,0,126,109.62,NULL,NULL,20.00,15.00,11.00,635.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0-A2',0,16,0,1,0,5,1,0,126,102.06,NULL,NULL,20.00,15.00,11.00,635.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0-A3',0,16,0,1,0,5,1,0,126,98.28,NULL,NULL,20.00,15.00,11.00,635.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-136-A0',0,11,0,1,0,4,1,0,123,NULL,NULL,NULL,15.00,18.00,16.00,876.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-136-A0-A1',0,11,0,1,0,4,1,0,123,NULL,NULL,NULL,15.00,18.00,16.00,876.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-190-A0',0,13,0,1,0,3,1,0,123,NULL,NULL,NULL,18.00,20.00,17.00,836.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-190-A0-A1',0,13,0,1,0,3,1,0,123,NULL,NULL,NULL,18.00,20.00,17.00,836.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-138-A0',0,16,0,1,0,2,1,0,118,NULL,NULL,NULL,13.00,13.00,15.00,865.00,NULL,0,'2022-08-25 18:52:35','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-138-A0-A1',0,16,0,1,0,2,1,0,118,NULL,NULL,NULL,13.00,13.00,15.00,865.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-117-A0',0,16,0,1,0,2,1,0,127,88.9,NULL,NULL,10.00,13.00,11.00,697.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-117-A0-A1',0,16,0,1,0,2,1,0,127,88.9,NULL,NULL,10.00,13.00,11.00,697.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-2.jpg\"]','HS-117-A0-A2',0,16,0,1,0,2,1,0,127,97.79,NULL,NULL,10.00,13.00,11.00,697.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-3.jpg\"]','HS-117-A0-A3',0,16,0,1,0,2,1,0,127,114.3,NULL,NULL,10.00,13.00,11.00,697.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-4.jpg\"]','HS-117-A0-A4',0,16,0,1,0,2,1,0,127,95.25,NULL,NULL,10.00,13.00,11.00,697.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-106-A0',0,18,0,1,0,1,1,0,120,NULL,NULL,NULL,15.00,14.00,14.00,786.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-106-A0-A1',0,18,0,1,0,1,1,0,120,NULL,NULL,NULL,15.00,14.00,14.00,786.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-161-A0',0,11,0,1,0,6,1,0,113,NULL,NULL,NULL,12.00,17.00,12.00,807.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-161-A0-A1',0,11,0,1,0,6,1,0,113,NULL,NULL,NULL,12.00,17.00,12.00,807.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-161-A0-A2',0,11,0,1,0,6,1,0,113,NULL,NULL,NULL,12.00,17.00,12.00,807.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-161-A0-A3',0,11,0,1,0,6,1,0,113,NULL,NULL,NULL,12.00,17.00,12.00,807.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-100-A0',0,10,0,1,0,7,1,0,111,NULL,NULL,NULL,16.00,20.00,14.00,610.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-149-A0',0,13,0,1,0,5,1,0,114,102.6,NULL,NULL,16.00,10.00,19.00,515.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-149-A0-A1',0,13,0,1,0,5,1,0,114,90.06,NULL,NULL,16.00,10.00,19.00,515.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-109-A0',0,19,0,1,0,6,1,0,111,NULL,NULL,NULL,15.00,10.00,20.00,710.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-109-A0-A1',0,19,0,1,0,6,1,0,111,NULL,NULL,NULL,15.00,10.00,20.00,710.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-145-A0',0,17,0,1,0,6,1,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(82,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-145-A0-A1',0,17,0,1,0,6,1,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(83,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-145-A0-A2',0,17,0,1,0,6,1,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(84,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-145-A0-A3',0,17,0,1,0,6,1,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(85,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-145-A0-A4',0,17,0,1,0,6,1,0,123,NULL,NULL,NULL,19.00,19.00,18.00,519.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(86,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-175-A0',0,14,0,1,0,1,1,0,113,NULL,NULL,NULL,11.00,20.00,16.00,900.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(87,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-175-A0-A1',0,14,0,1,0,1,1,0,113,NULL,NULL,NULL,11.00,20.00,16.00,900.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(88,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-175-A0-A2',0,14,0,1,0,1,1,0,113,NULL,NULL,NULL,11.00,20.00,16.00,900.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(89,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-189-A0',0,19,0,1,0,7,1,0,126,99.54,NULL,NULL,10.00,16.00,12.00,574.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(90,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-189-A0-A1',0,19,0,1,0,7,1,0,126,103.32,NULL,NULL,10.00,16.00,12.00,574.00,NULL,0,'2022-08-25 18:52:36','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(91,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-189-A0-A2',0,19,0,1,0,7,1,0,126,90.72,NULL,NULL,10.00,16.00,12.00,574.00,NULL,0,'2022-08-25 18:52:37','2022-08-25 18:53:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',28,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',31,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',32,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',33,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',34,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',35,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',36,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',37,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',38,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',39,'Chobani vani Hy Lạp',NULL,NULL),('vi',40,'Chobani vani Hy Lạp',NULL,NULL),('vi',41,'Chobani vani Hy Lạp',NULL,NULL),('vi',42,'Chobani vani Hy Lạp',NULL,NULL),('vi',43,'Gừng khô Canada',NULL,NULL),('vi',44,'Gừng khô Canada',NULL,NULL),('vi',45,'Hải sản Alaska',NULL,NULL),('vi',46,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',47,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',48,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',49,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',50,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',51,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',52,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',53,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',54,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',55,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',56,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',57,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',58,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',59,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',60,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',61,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',62,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',63,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',64,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',67,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',68,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',69,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',70,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',71,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',72,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',73,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',74,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',75,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',76,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',77,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',78,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',79,'Dưa hấu chen',NULL,NULL),('vi',80,'Dưa hấu chen',NULL,NULL),('vi',81,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',82,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',83,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',84,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',85,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',86,'Chuối đầy màu sắc',NULL,NULL),('vi',87,'Chuối đầy màu sắc',NULL,NULL),('vi',88,'Chuối đầy màu sắc',NULL,NULL),('vi',89,'Nấm đặc trưng và caramel',NULL,NULL),('vi',90,'Nấm đặc trưng và caramel',NULL,NULL),('vi',91,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,10,18,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(2,2,6,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-25 18:52:41','2022-08-25 18:52:41','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/21.jpg\"}'),(3,6,6,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/4.jpg\"]'),(4,9,21,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(5,2,9,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-25 18:52:41','2022-08-25 18:52:41','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/15.jpg\"}'),(6,2,13,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(7,9,18,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(8,7,17,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(9,3,11,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:41','2022-08-25 18:52:41','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(10,8,13,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(11,4,7,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(12,1,13,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(13,5,4,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\"]'),(14,5,7,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(15,10,23,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(16,9,2,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(17,2,23,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\"]'),(18,8,16,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(19,3,11,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(20,3,6,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(21,3,8,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/11.jpg\"}'),(22,4,13,5.00,'Best ecommerce CMS online store!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(23,10,8,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\"]'),(24,1,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(25,10,9,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(26,8,7,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(27,6,18,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(28,8,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\"]'),(29,8,22,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/21.jpg\"}'),(30,5,4,2.00,'Good app, good backup service and support. Good documentation.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\"]'),(31,2,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\"]'),(32,3,3,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(33,7,24,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(34,1,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(35,7,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(36,7,4,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(37,4,5,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(38,10,11,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(39,10,24,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(40,2,6,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/16.jpg\"}'),(41,5,3,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(42,9,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/17.jpg\"}'),(43,6,22,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(44,1,18,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(45,6,17,4.00,'Good app, good backup service and support. Good documentation.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(46,5,15,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(47,2,5,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(48,9,1,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(49,2,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(50,8,23,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(51,6,9,4.00,'Clean & perfect source code','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(52,2,13,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(53,9,4,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(54,1,24,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\"]'),(55,5,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(56,2,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(57,5,18,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(58,10,14,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-25 18:52:42','2022-08-25 18:52:42','[\"products\\/4.jpg\"]'),(59,10,6,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\"]'),(60,7,13,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(61,5,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(62,9,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(63,7,11,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(64,1,8,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(65,10,21,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\"]'),(66,1,4,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/19.jpg\"}'),(67,6,21,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/14.jpg\"}'),(68,10,8,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(69,7,8,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(70,8,5,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(71,7,16,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(72,5,9,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\"]'),(73,8,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(74,8,13,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/16.jpg\"}'),(75,5,10,5.00,'Best ecommerce CMS online store!','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\"]'),(76,5,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(77,8,20,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(78,9,18,3.00,'Clean & perfect source code','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(79,2,6,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(80,4,3,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(81,3,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/22.jpg\"}'),(82,10,23,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\"]'),(83,10,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(84,3,23,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(85,7,14,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\"]'),(86,10,14,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(87,5,23,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(88,5,8,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(89,10,12,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(90,8,13,4.00,'Clean & perfect source code','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\"]'),(91,10,10,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\"]'),(92,2,18,1.00,'Clean & perfect source code','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(93,3,5,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/3.jpg\"]'),(94,5,9,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\"]'),(95,9,7,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(96,9,18,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(97,4,2,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/24.jpg\"}'),(98,1,22,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(99,1,6,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-25 18:52:43','2022-08-25 18:52:43','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(100,9,5,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-25 18:52:43','2022-08-25 18:52:43','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/23.jpg\"}');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-09-06 19:31:29','2022-09-06 19:31:29'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-09-08 11:31:29','2022-09-10 03:31:29'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-08-24 11:31:29','2022-08-24 11:31:29'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-09-08 11:31:29','2022-09-10 03:31:29'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-09-03 19:31:29','2022-09-03 19:31:29'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-09-08 13:31:29','2022-09-10 03:31:29'),(8,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,3,3,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(10,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-09-08 15:31:29','2022-09-10 03:31:29'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-08-27 15:31:29','2022-08-27 15:31:29'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-09-08 15:31:29','2022-09-10 03:31:29'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-09-05 15:31:29','2022-09-05 15:31:29'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-09-08 15:31:29','2022-09-10 03:31:29'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-08-28 09:31:29','2022-08-28 09:31:29'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-09-08 17:31:29','2022-09-10 03:31:29'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-09-07 07:31:29','2022-09-07 07:31:29'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-09-08 17:31:29','2022-09-10 03:31:29'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(24,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-08-29 03:31:29','2022-08-29 03:31:29'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-09-08 19:31:29','2022-09-10 03:31:29'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-09-08 19:31:29','2022-09-10 03:31:29'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-09-08 21:31:29','2022-09-10 03:31:29'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-09-08 21:31:29','2022-09-10 03:31:29'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-09-05 11:31:29','2022-09-05 11:31:29'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-09-08 23:31:29','2022-09-10 03:31:29'),(35,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-09-08 23:31:29','2022-09-10 03:31:29'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(38,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-09-04 17:31:29','2022-09-04 17:31:29'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-09-09 01:31:29','2022-09-10 03:31:29'),(40,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(41,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-09-02 13:31:29','2022-09-02 13:31:29'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-09-09 01:31:29','2022-09-10 03:31:29'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-09-09 03:31:29','2022-09-10 03:31:29'),(46,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,17,17,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(48,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-09-04 03:31:29','2022-09-04 03:31:29'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-09-09 03:31:29','2022-09-10 03:31:29'),(50,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-09-01 03:31:29','2022-09-01 03:31:29'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-09-09 03:31:29','2022-09-10 03:31:29'),(52,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(53,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-09-07 09:31:29','2022-09-07 09:31:29'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-09-09 05:31:29','2022-09-10 03:31:29'),(55,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-09-09 05:31:29','2022-09-10 03:31:29'),(57,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-09-02 19:31:29','2022-09-02 19:31:29'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-09-09 05:31:29','2022-09-10 03:31:29'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(60,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-09-01 19:31:29','2022-09-01 19:31:29'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-09-09 07:31:29','2022-09-10 03:31:29'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(63,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-09-02 15:31:29','2022-09-02 15:31:29'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-09-09 07:31:29','2022-09-10 03:31:29'),(65,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-09-06 09:31:29','2022-09-06 09:31:29'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-09-09 09:31:29','2022-09-10 03:31:29'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(68,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-09-03 09:31:29','2022-09-03 09:31:29'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-09-09 09:31:29','2022-09-10 03:31:29'),(70,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-09-03 11:31:29','2022-09-03 11:31:29'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-09-09 11:31:29','2022-09-10 03:31:29'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,27,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(73,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-09-04 19:31:29','2022-09-04 19:31:29'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-09-09 11:31:29','2022-09-10 03:31:29'),(75,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-09-09 13:31:29','2022-09-10 03:31:29'),(77,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(78,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-09-04 07:31:29','2022-09-04 07:31:29'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-09-09 13:31:29','2022-09-10 03:31:29'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(81,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-09-08 15:31:29','2022-09-08 15:31:29'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-09-09 15:31:29','2022-09-10 03:31:29'),(83,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-09-07 15:31:29','2022-09-07 15:31:29'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-09-09 17:31:29','2022-09-10 03:31:29'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2022-09-10 03:31:29','2022-09-10 03:31:29'),(86,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-09-09 17:31:29','2022-09-10 03:31:29'),(88,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-09-07 19:31:29','2022-09-07 19:31:29'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-09-09 19:31:29','2022-09-10 03:31:29'),(90,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-09-09 19:31:29','2022-09-10 03:31:29'),(92,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-09-07 21:31:29','2022-09-07 21:31:29'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-09-09 21:31:29','2022-09-10 03:31:29'),(94,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-09-09 03:31:29','2022-09-09 03:31:29'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-09-09 21:31:29','2022-09-10 03:31:29'),(96,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-09-08 09:31:29','2022-09-08 09:31:29'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-09-09 21:31:29','2022-09-10 03:31:29'),(98,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-09-09 07:31:29','2022-09-09 07:31:29'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-09-09 23:31:29','2022-09-10 03:31:29'),(100,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-09-09 23:31:29','2022-09-10 03:31:29'),(102,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-09-09 11:31:29','2022-09-09 11:31:29'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-09-10 01:31:29','2022-09-10 03:31:29'),(104,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-09-09 23:31:29','2022-09-09 23:31:29'),(105,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-09-10 01:31:29','2022-09-10 03:31:29'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2022-09-10 03:31:29','2022-09-10 03:31:29');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1590.00,NULL,'','approved',248.00,'pending','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD005942082','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-16 10:31:29',NULL),(2,2,NULL,900.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0075303483','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-20 10:31:29','2022-09-10 10:31:29'),(3,3,NULL,3390.00,NULL,'','delivered',756.40,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0056716517','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29','2022-09-10 10:31:29'),(4,4,NULL,803.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0050679908','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29',NULL),(5,5,NULL,1196.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0012297927','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29','2022-09-10 10:31:29'),(6,6,NULL,4350.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0061803100','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-14 10:31:29','2022-09-10 10:31:29'),(7,7,NULL,530.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0074224782','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29','2022-09-10 10:31:29'),(8,8,NULL,900.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0086716314','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29','2022-09-10 10:31:29'),(9,9,NULL,803.00,NULL,'','approved',440.00,'pending','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0057523591','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-17 10:31:29',NULL),(10,10,NULL,1332.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0038007532','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-19 10:31:29',NULL),(11,11,NULL,2016.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0029979008','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-18 10:31:29','2022-09-10 10:31:29'),(12,12,NULL,611.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0065827903','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-11 10:31:29',NULL),(13,13,NULL,2372.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0016055337','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-20 10:31:29',NULL),(14,14,NULL,1420.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0045283137','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29','2022-09-10 10:31:29'),(15,15,NULL,5542.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0039439253','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-19 10:31:29','2022-09-10 10:31:29'),(16,16,NULL,697.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0070074825','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29','2022-09-10 10:31:29'),(17,17,NULL,2927.00,NULL,'','delivered',516.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0096491087','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29','2022-09-10 10:31:29'),(18,18,NULL,1752.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0090941649','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-16 10:31:29',NULL),(19,19,NULL,1614.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0019003875','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-17 10:31:29','2022-09-10 10:31:29'),(20,20,NULL,803.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0067807773','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-12 10:31:29',NULL),(21,21,NULL,1464.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0015976269','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29',NULL),(22,22,NULL,1831.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0011175297','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-11 10:31:29','2022-09-10 10:31:29'),(23,23,NULL,3634.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0036729449','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-14 10:31:29','2022-09-10 10:31:29'),(24,24,NULL,876.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0092935619','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-20 10:31:29',NULL),(25,25,NULL,2375.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0091956186','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-14 10:31:29','2022-09-10 10:31:29'),(26,26,NULL,611.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0015089475','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-18 10:31:29',NULL),(27,27,NULL,1060.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0058973854','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-19 10:31:29','2022-09-10 10:31:29'),(28,28,NULL,1905.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0022309383','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-12 10:31:29',NULL),(29,29,NULL,5540.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0076329900','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-18 10:31:29','2022-09-10 10:31:29'),(30,30,NULL,2628.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0018869149','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-18 10:31:29','2022-09-10 10:31:29'),(31,31,NULL,2578.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0054014750','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-17 10:31:29',NULL),(32,32,NULL,1606.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0093751473','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-18 10:31:29','2022-09-10 10:31:29'),(33,33,NULL,3294.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0039178597','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29',NULL),(34,34,NULL,1587.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0022831525','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-14 10:31:29',NULL),(35,35,NULL,1572.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD001265413','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29',NULL),(36,36,NULL,2409.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0037731626','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29',NULL),(37,37,NULL,1800.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0091344810','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-11 10:31:29',NULL),(38,38,NULL,1148.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0046814655','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-13 10:31:29',NULL),(39,39,NULL,1905.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0044827770','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-14 10:31:29',NULL),(40,40,NULL,1722.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0083929341','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-11 10:31:29',NULL),(41,41,NULL,4725.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0081409883','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-15 10:31:29',NULL),(42,42,NULL,1672.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-10 03:31:29','2022-09-10 03:31:29','JJD0081160214','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-12 10:31:29','2022-09-10 10:31:29');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-08-25 18:52:43','2022-08-25 18:52:43');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-08-25 18:52:43','2022-08-25 18:52:43'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-08-25 18:52:43','2022-08-25 18:52:43'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-08-25 18:52:43','2022-08-25 18:52:43');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-08-25 18:52:44','2022-08-25 18:52:44');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-08-25 18:52:37','2022-08-25 18:52:37'),(2,'None',0.000000,2,'published','2022-08-25 18:52:37','2022-08-25 18:52:37');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(2,'Payment',1,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(3,'Order & Returns',2,'published','2022-08-25 18:53:20','2022-08-25 18:53:20');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-08-25 18:53:20','2022-08-25 18:53:20');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','a71fd880f72bd489cab18847fff9e675',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','800d77ae8aeac05de43409dec37e31c1',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','0ceab5e283657ac5006d93e504a4a508',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','b49acfafbb19c362a2af7cfed790f0dc',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','dd29a6ede894f5996ff767b7f0b361c5',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','5cab450f8d5c340d06b55bbb7b2f9fa9',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','be2a23d4bbd8232fc57b9de976d85b36',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','a71fd880f72bd489cab18847fff9e675',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','800d77ae8aeac05de43409dec37e31c1',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','0ceab5e283657ac5006d93e504a4a508',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','b49acfafbb19c362a2af7cfed790f0dc',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','dd29a6ede894f5996ff767b7f0b361c5',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','5cab450f8d5c340d06b55bbb7b2f9fa9',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','be2a23d4bbd8232fc57b9de976d85b36',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','539db4d722de91337d18a57b7a2e1207',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','8f7e2f195d8688da32f523ced9e45de1',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','56070a5e5b3a3995bf1e32e798940cd6',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','56522ed4924c542c1d103422b88ca41f',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','cb8b51d16ddd2734f9bf8940bdc9e62e',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','5b257c53b3d3c396a6ec69f02d1420fb',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','a8c28e1f33bead415feeed00aa76d201',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','1dcf198600389b595026e9decb90e7f1',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','8f7e2f195d8688da32f523ced9e45de1',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','4c8bcba31c0018e55f98ff089765f399',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','56522ed4924c542c1d103422b88ca41f',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','cb8b51d16ddd2734f9bf8940bdc9e62e',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','5b257c53b3d3c396a6ec69f02d1420fb',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','a8c28e1f33bead415feeed00aa76d201',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1',1,'image/png',4323,'product-categories/icon-1.png','[]','2022-08-25 18:51:56','2022-08-25 18:51:56',NULL),(2,0,'icon-10',1,'image/png',4357,'product-categories/icon-10.png','[]','2022-08-25 18:51:56','2022-08-25 18:51:56',NULL),(3,0,'icon-11',1,'image/png',2024,'product-categories/icon-11.png','[]','2022-08-25 18:51:56','2022-08-25 18:51:56',NULL),(4,0,'icon-12',1,'image/png',3531,'product-categories/icon-12.png','[]','2022-08-25 18:51:57','2022-08-25 18:51:57',NULL),(5,0,'icon-13',1,'image/png',2344,'product-categories/icon-13.png','[]','2022-08-25 18:51:57','2022-08-25 18:51:57',NULL),(6,0,'icon-14',1,'image/png',2314,'product-categories/icon-14.png','[]','2022-08-25 18:51:57','2022-08-25 18:51:57',NULL),(7,0,'icon-2',1,'image/png',3204,'product-categories/icon-2.png','[]','2022-08-25 18:51:57','2022-08-25 18:51:57',NULL),(8,0,'icon-3',1,'image/png',4184,'product-categories/icon-3.png','[]','2022-08-25 18:51:58','2022-08-25 18:51:58',NULL),(9,0,'icon-4',1,'image/png',4648,'product-categories/icon-4.png','[]','2022-08-25 18:51:58','2022-08-25 18:51:58',NULL),(10,0,'icon-5',1,'image/png',4594,'product-categories/icon-5.png','[]','2022-08-25 18:51:58','2022-08-25 18:51:58',NULL),(11,0,'icon-6',1,'image/png',3518,'product-categories/icon-6.png','[]','2022-08-25 18:51:58','2022-08-25 18:51:58',NULL),(12,0,'icon-7',1,'image/png',3829,'product-categories/icon-7.png','[]','2022-08-25 18:51:59','2022-08-25 18:51:59',NULL),(13,0,'icon-8',1,'image/png',4815,'product-categories/icon-8.png','[]','2022-08-25 18:51:59','2022-08-25 18:51:59',NULL),(14,0,'icon-9',1,'image/png',3126,'product-categories/icon-9.png','[]','2022-08-25 18:51:59','2022-08-25 18:51:59',NULL),(15,0,'image-1',1,'image/png',25796,'product-categories/image-1.png','[]','2022-08-25 18:51:59','2022-08-25 18:51:59',NULL),(16,0,'image-10',1,'image/png',13714,'product-categories/image-10.png','[]','2022-08-25 18:52:00','2022-08-25 18:52:00',NULL),(17,0,'image-11',1,'image/png',18723,'product-categories/image-11.png','[]','2022-08-25 18:52:00','2022-08-25 18:52:00',NULL),(18,0,'image-12',1,'image/png',19482,'product-categories/image-12.png','[]','2022-08-25 18:52:00','2022-08-25 18:52:00',NULL),(19,0,'image-13',1,'image/png',19312,'product-categories/image-13.png','[]','2022-08-25 18:52:00','2022-08-25 18:52:00',NULL),(20,0,'image-14',1,'image/png',19593,'product-categories/image-14.png','[]','2022-08-25 18:52:01','2022-08-25 18:52:01',NULL),(21,0,'image-15',1,'image/png',17706,'product-categories/image-15.png','[]','2022-08-25 18:52:01','2022-08-25 18:52:01',NULL),(22,0,'image-2',1,'image/png',19956,'product-categories/image-2.png','[]','2022-08-25 18:52:01','2022-08-25 18:52:01',NULL),(23,0,'image-3',1,'image/png',20032,'product-categories/image-3.png','[]','2022-08-25 18:52:01','2022-08-25 18:52:01',NULL),(24,0,'image-4',1,'image/png',18475,'product-categories/image-4.png','[]','2022-08-25 18:52:02','2022-08-25 18:52:02',NULL),(25,0,'image-5',1,'image/png',16666,'product-categories/image-5.png','[]','2022-08-25 18:52:02','2022-08-25 18:52:02',NULL),(26,0,'image-6',1,'image/png',15381,'product-categories/image-6.png','[]','2022-08-25 18:52:02','2022-08-25 18:52:02',NULL),(27,0,'image-7',1,'image/png',13804,'product-categories/image-7.png','[]','2022-08-25 18:52:03','2022-08-25 18:52:03',NULL),(28,0,'image-8',1,'image/png',17392,'product-categories/image-8.png','[]','2022-08-25 18:52:03','2022-08-25 18:52:03',NULL),(29,0,'image-9',1,'image/png',17729,'product-categories/image-9.png','[]','2022-08-25 18:52:03','2022-08-25 18:52:03',NULL),(30,0,'1-1',2,'image/jpeg',77048,'products/1-1.jpg','[]','2022-08-25 18:52:07','2022-08-25 18:52:07',NULL),(31,0,'1',2,'image/jpeg',80718,'products/1.jpg','[]','2022-08-25 18:52:08','2022-08-25 18:52:08',NULL),(32,0,'10-1',2,'image/jpeg',105100,'products/10-1.jpg','[]','2022-08-25 18:52:08','2022-08-25 18:52:08',NULL),(33,0,'10',2,'image/jpeg',117642,'products/10.jpg','[]','2022-08-25 18:52:08','2022-08-25 18:52:08',NULL),(34,0,'11-1',2,'image/jpeg',45724,'products/11-1.jpg','[]','2022-08-25 18:52:09','2022-08-25 18:52:09',NULL),(35,0,'11',2,'image/jpeg',46272,'products/11.jpg','[]','2022-08-25 18:52:09','2022-08-25 18:52:09',NULL),(36,0,'12-1',2,'image/jpeg',72251,'products/12-1.jpg','[]','2022-08-25 18:52:10','2022-08-25 18:52:10',NULL),(37,0,'12',2,'image/jpeg',71309,'products/12.jpg','[]','2022-08-25 18:52:10','2022-08-25 18:52:10',NULL),(38,0,'13-1',2,'image/jpeg',32608,'products/13-1.jpg','[]','2022-08-25 18:52:11','2022-08-25 18:52:11',NULL),(39,0,'13',2,'image/jpeg',33526,'products/13.jpg','[]','2022-08-25 18:52:12','2022-08-25 18:52:12',NULL),(40,0,'14-1',2,'image/jpeg',64893,'products/14-1.jpg','[]','2022-08-25 18:52:12','2022-08-25 18:52:12',NULL),(41,0,'14',2,'image/jpeg',53642,'products/14.jpg','[]','2022-08-25 18:52:13','2022-08-25 18:52:13',NULL),(42,0,'15-1',2,'image/jpeg',93293,'products/15-1.jpg','[]','2022-08-25 18:52:13','2022-08-25 18:52:13',NULL),(43,0,'15',2,'image/jpeg',70399,'products/15.jpg','[]','2022-08-25 18:52:13','2022-08-25 18:52:13',NULL),(44,0,'16-1',2,'image/jpeg',59168,'products/16-1.jpg','[]','2022-08-25 18:52:14','2022-08-25 18:52:14',NULL),(45,0,'16-2',2,'image/jpeg',74882,'products/16-2.jpg','[]','2022-08-25 18:52:14','2022-08-25 18:52:14',NULL),(46,0,'16-3',2,'image/jpeg',71574,'products/16-3.jpg','[]','2022-08-25 18:52:15','2022-08-25 18:52:15',NULL),(47,0,'16-4',2,'image/jpeg',87131,'products/16-4.jpg','[]','2022-08-25 18:52:16','2022-08-25 18:52:16',NULL),(48,0,'16-5',2,'image/jpeg',59849,'products/16-5.jpg','[]','2022-08-25 18:52:16','2022-08-25 18:52:16',NULL),(49,0,'16-6',2,'image/jpeg',91691,'products/16-6.jpg','[]','2022-08-25 18:52:17','2022-08-25 18:52:17',NULL),(50,0,'16',2,'image/jpeg',100953,'products/16.jpg','[]','2022-08-25 18:52:17','2022-08-25 18:52:17',NULL),(51,0,'17-1',2,'image/jpeg',17816,'products/17-1.jpg','[]','2022-08-25 18:52:17','2022-08-25 18:52:17',NULL),(52,0,'17',2,'image/jpeg',17551,'products/17.jpg','[]','2022-08-25 18:52:18','2022-08-25 18:52:18',NULL),(53,0,'18-1',2,'image/jpeg',13352,'products/18-1.jpg','[]','2022-08-25 18:52:18','2022-08-25 18:52:18',NULL),(54,0,'18',2,'image/jpeg',20319,'products/18.jpg','[]','2022-08-25 18:52:18','2022-08-25 18:52:18',NULL),(55,0,'19-1',2,'image/jpeg',22960,'products/19-1.jpg','[]','2022-08-25 18:52:18','2022-08-25 18:52:18',NULL),(56,0,'19',2,'image/jpeg',15156,'products/19.jpg','[]','2022-08-25 18:52:19','2022-08-25 18:52:19',NULL),(57,0,'2-1',2,'image/jpeg',56143,'products/2-1.jpg','[]','2022-08-25 18:52:19','2022-08-25 18:52:19',NULL),(58,0,'2',2,'image/jpeg',64331,'products/2.jpg','[]','2022-08-25 18:52:19','2022-08-25 18:52:19',NULL),(59,0,'20-1',2,'image/jpeg',27985,'products/20-1.jpg','[]','2022-08-25 18:52:20','2022-08-25 18:52:20',NULL),(60,0,'20',2,'image/jpeg',18065,'products/20.jpg','[]','2022-08-25 18:52:20','2022-08-25 18:52:20',NULL),(61,0,'21-1',2,'image/jpeg',28003,'products/21-1.jpg','[]','2022-08-25 18:52:20','2022-08-25 18:52:20',NULL),(62,0,'21',2,'image/jpeg',18198,'products/21.jpg','[]','2022-08-25 18:52:20','2022-08-25 18:52:20',NULL),(63,0,'22-1',2,'image/jpeg',28621,'products/22-1.jpg','[]','2022-08-25 18:52:21','2022-08-25 18:52:21',NULL),(64,0,'22',2,'image/jpeg',19002,'products/22.jpg','[]','2022-08-25 18:52:21','2022-08-25 18:52:21',NULL),(65,0,'23-1',2,'image/jpeg',35525,'products/23-1.jpg','[]','2022-08-25 18:52:21','2022-08-25 18:52:21',NULL),(66,0,'23',2,'image/jpeg',19227,'products/23.jpg','[]','2022-08-25 18:52:21','2022-08-25 18:52:21',NULL),(67,0,'24-1',2,'image/jpeg',20531,'products/24-1.jpg','[]','2022-08-25 18:52:22','2022-08-25 18:52:22',NULL),(68,0,'24',2,'image/jpeg',10609,'products/24.jpg','[]','2022-08-25 18:52:22','2022-08-25 18:52:22',NULL),(69,0,'3-1',2,'image/jpeg',79350,'products/3-1.jpg','[]','2022-08-25 18:52:22','2022-08-25 18:52:22',NULL),(70,0,'3',2,'image/jpeg',89626,'products/3.jpg','[]','2022-08-25 18:52:23','2022-08-25 18:52:23',NULL),(71,0,'4-1',2,'image/jpeg',58354,'products/4-1.jpg','[]','2022-08-25 18:52:23','2022-08-25 18:52:23',NULL),(72,0,'4',2,'image/jpeg',76935,'products/4.jpg','[]','2022-08-25 18:52:24','2022-08-25 18:52:24',NULL),(73,0,'5-1',2,'image/jpeg',91691,'products/5-1.jpg','[]','2022-08-25 18:52:24','2022-08-25 18:52:24',NULL),(74,0,'5',2,'image/jpeg',100953,'products/5.jpg','[]','2022-08-25 18:52:25','2022-08-25 18:52:25',NULL),(75,0,'6-1',2,'image/jpeg',74851,'products/6-1.jpg','[]','2022-08-25 18:52:25','2022-08-25 18:52:25',NULL),(76,0,'6',2,'image/jpeg',89464,'products/6.jpg','[]','2022-08-25 18:52:26','2022-08-25 18:52:26',NULL),(77,0,'7-1',2,'image/jpeg',66135,'products/7-1.jpg','[]','2022-08-25 18:52:26','2022-08-25 18:52:26',NULL),(78,0,'7',2,'image/jpeg',71573,'products/7.jpg','[]','2022-08-25 18:52:27','2022-08-25 18:52:27',NULL),(79,0,'8-1',2,'image/jpeg',41283,'products/8-1.jpg','[]','2022-08-25 18:52:27','2022-08-25 18:52:27',NULL),(80,0,'8',2,'image/jpeg',33964,'products/8.jpg','[]','2022-08-25 18:52:28','2022-08-25 18:52:28',NULL),(81,0,'9-1',2,'image/jpeg',78790,'products/9-1.jpg','[]','2022-08-25 18:52:28','2022-08-25 18:52:28',NULL),(82,0,'9',2,'image/jpeg',84813,'products/9.jpg','[]','2022-08-25 18:52:29','2022-08-25 18:52:29',NULL),(83,0,'1',3,'image/jpeg',274660,'customers/1.jpg','[]','2022-08-25 18:52:37','2022-08-25 18:52:37',NULL),(84,0,'2',3,'image/jpeg',295031,'customers/2.jpg','[]','2022-08-25 18:52:38','2022-08-25 18:52:38',NULL),(85,0,'3',3,'image/jpeg',183576,'customers/3.jpg','[]','2022-08-25 18:52:38','2022-08-25 18:52:38',NULL),(86,0,'4',3,'image/jpeg',245360,'customers/4.jpg','[]','2022-08-25 18:52:38','2022-08-25 18:52:38',NULL),(87,0,'5',3,'image/jpeg',262908,'customers/5.jpg','[]','2022-08-25 18:52:38','2022-08-25 18:52:38',NULL),(88,0,'6',3,'image/jpeg',109600,'customers/6.jpg','[]','2022-08-25 18:52:39','2022-08-25 18:52:39',NULL),(89,0,'7',3,'image/jpeg',159280,'customers/7.jpg','[]','2022-08-25 18:52:39','2022-08-25 18:52:39',NULL),(90,0,'8',3,'image/jpeg',99998,'customers/8.jpg','[]','2022-08-25 18:52:39','2022-08-25 18:52:39',NULL),(96,0,'1-1',5,'image/png',519229,'sliders/1-1.png','[]','2022-08-25 18:52:49','2022-08-25 18:52:49',NULL),(97,0,'1-2',5,'image/png',468469,'sliders/1-2.png','[]','2022-08-25 18:52:50','2022-08-25 18:52:50',NULL),(98,0,'1-3',5,'image/png',2697,'sliders/1-3.png','[]','2022-08-25 18:52:51','2022-08-25 18:52:51',NULL),(99,0,'2-1',5,'image/png',159240,'sliders/2-1.png','[]','2022-08-25 18:52:51','2022-08-25 18:52:51',NULL),(100,0,'2-2',5,'image/png',113574,'sliders/2-2.png','[]','2022-08-25 18:52:52','2022-08-25 18:52:52',NULL),(101,0,'2-3',5,'image/png',2697,'sliders/2-3.png','[]','2022-08-25 18:52:53','2022-08-25 18:52:53',NULL),(102,0,'3-1',5,'image/png',519229,'sliders/3-1.png','[]','2022-08-25 18:52:53','2022-08-25 18:52:53',NULL),(103,0,'3-2',5,'image/png',468469,'sliders/3-2.png','[]','2022-08-25 18:52:54','2022-08-25 18:52:54',NULL),(104,0,'4-1',5,'image/png',618556,'sliders/4-1.png','[]','2022-08-25 18:52:55','2022-08-25 18:52:55',NULL),(105,0,'4-2',5,'image/png',949745,'sliders/4-2.png','[]','2022-08-25 18:52:56','2022-08-25 18:52:56',NULL),(106,0,'4-3',5,'image/png',2697,'sliders/4-3.png','[]','2022-08-25 18:52:57','2022-08-25 18:52:57',NULL),(107,0,'5-1',5,'image/png',1273599,'sliders/5-1.png','[]','2022-08-25 18:52:57','2022-08-25 18:52:57',NULL),(108,0,'5-2',5,'image/png',695846,'sliders/5-2.png','[]','2022-08-25 18:52:58','2022-08-25 18:52:58',NULL),(109,0,'banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2022-08-25 18:52:59','2022-08-25 18:52:59',NULL),(110,0,'thumbnail-1',5,'image/jpeg',28966,'sliders/thumbnail-1.jpg','[]','2022-08-25 18:53:00','2022-08-25 18:53:00',NULL),(111,0,'thumbnail-2',5,'image/jpeg',13975,'sliders/thumbnail-2.jpg','[]','2022-08-25 18:53:00','2022-08-25 18:53:00',NULL),(112,0,'thumbnail-3',5,'image/jpeg',15751,'sliders/thumbnail-3.jpg','[]','2022-08-25 18:53:00','2022-08-25 18:53:00',NULL),(113,0,'thumbnail-4',5,'image/jpeg',16846,'sliders/thumbnail-4.jpg','[]','2022-08-25 18:53:00','2022-08-25 18:53:00',NULL),(114,0,'thumbnail-5',5,'image/jpeg',24938,'sliders/thumbnail-5.jpg','[]','2022-08-25 18:53:00','2022-08-25 18:53:00',NULL),(115,0,'thumbnail-6',5,'image/jpeg',63412,'sliders/thumbnail-6.jpg','[]','2022-08-25 18:53:01','2022-08-25 18:53:01',NULL),(116,0,'1',6,'image/png',533812,'news/1.png','[]','2022-08-25 18:53:01','2022-08-25 18:53:01',NULL),(117,0,'10',6,'image/png',439491,'news/10.png','[]','2022-08-25 18:53:02','2022-08-25 18:53:02',NULL),(118,0,'11',6,'image/png',593219,'news/11.png','[]','2022-08-25 18:53:03','2022-08-25 18:53:03',NULL),(119,0,'2',6,'image/png',633277,'news/2.png','[]','2022-08-25 18:53:04','2022-08-25 18:53:04',NULL),(120,0,'3',6,'image/png',372986,'news/3.png','[]','2022-08-25 18:53:05','2022-08-25 18:53:05',NULL),(121,0,'4',6,'image/png',438363,'news/4.png','[]','2022-08-25 18:53:06','2022-08-25 18:53:06',NULL),(122,0,'5',6,'image/png',483356,'news/5.png','[]','2022-08-25 18:53:07','2022-08-25 18:53:07',NULL),(123,0,'6',6,'image/png',502720,'news/6.png','[]','2022-08-25 18:53:08','2022-08-25 18:53:08',NULL),(124,0,'7',6,'image/png',465225,'news/7.png','[]','2022-08-25 18:53:09','2022-08-25 18:53:09',NULL),(125,0,'8',6,'image/png',489034,'news/8.png','[]','2022-08-25 18:53:09','2022-08-25 18:53:09',NULL),(126,0,'9',6,'image/png',328817,'news/9.png','[]','2022-08-25 18:53:10','2022-08-25 18:53:10',NULL),(127,0,'1',7,'image/png',50119,'promotion/1.png','[]','2022-08-25 18:53:13','2022-08-25 18:53:13',NULL),(128,0,'10',7,'image/png',108470,'promotion/10.png','[]','2022-08-25 18:53:14','2022-08-25 18:53:14',NULL),(129,0,'11',7,'image/png',106453,'promotion/11.png','[]','2022-08-25 18:53:14','2022-08-25 18:53:14',NULL),(130,0,'12',7,'image/png',104430,'promotion/12.png','[]','2022-08-25 18:53:15','2022-08-25 18:53:15',NULL),(131,0,'2',7,'image/png',38339,'promotion/2.png','[]','2022-08-25 18:53:15','2022-08-25 18:53:15',NULL),(132,0,'3',7,'image/png',65066,'promotion/3.png','[]','2022-08-25 18:53:15','2022-08-25 18:53:15',NULL),(133,0,'4',7,'image/png',62462,'promotion/4.png','[]','2022-08-25 18:53:16','2022-08-25 18:53:16',NULL),(134,0,'5',7,'image/png',190175,'promotion/5.png','[]','2022-08-25 18:53:16','2022-08-25 18:53:16',NULL),(135,0,'6',7,'image/png',190175,'promotion/6.png','[]','2022-08-25 18:53:17','2022-08-25 18:53:17',NULL),(136,0,'7',7,'image/png',272480,'promotion/7.png','[]','2022-08-25 18:53:18','2022-08-25 18:53:18',NULL),(137,0,'8',7,'image/png',73547,'promotion/8.png','[]','2022-08-25 18:53:18','2022-08-25 18:53:18',NULL),(138,0,'9',7,'image/png',126894,'promotion/9.png','[]','2022-08-25 18:53:19','2022-08-25 18:53:19',NULL),(139,0,'app-store',8,'image/jpeg',29714,'general/app-store.jpg','[]','2022-08-25 18:53:20','2022-08-25 18:53:20',NULL),(140,0,'category-1',8,'image/png',4323,'general/category-1.png','[]','2022-08-25 18:53:20','2022-08-25 18:53:20',NULL),(141,0,'facebook',8,'image/png',646,'general/facebook.png','[]','2022-08-25 18:53:21','2022-08-25 18:53:21',NULL),(142,0,'favicon',8,'image/png',3890,'general/favicon.png','[]','2022-08-25 18:53:21','2022-08-25 18:53:21',NULL),(143,0,'google-play',8,'image/jpeg',29477,'general/google-play.jpg','[]','2022-08-25 18:53:21','2022-08-25 18:53:21',NULL),(144,0,'header-bg',8,'image/png',16995,'general/header-bg.png','[]','2022-08-25 18:53:21','2022-08-25 18:53:21',NULL),(145,0,'home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2022-08-25 18:53:22','2022-08-25 18:53:22',NULL),(146,0,'icon-1',8,'image/png',2024,'general/icon-1.png','[]','2022-08-25 18:53:22','2022-08-25 18:53:22',NULL),(147,0,'icon-2',8,'image/png',3531,'general/icon-2.png','[]','2022-08-25 18:53:22','2022-08-25 18:53:22',NULL),(148,0,'icon-3',8,'image/png',2344,'general/icon-3.png','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(149,0,'icon-4',8,'image/png',2314,'general/icon-4.png','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(150,0,'icon-5',8,'image/png',2853,'general/icon-5.png','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(151,0,'instagram',8,'image/png',2586,'general/instagram.png','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(152,0,'loading',8,'image/gif',25062,'general/loading.gif','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(153,0,'login-1',8,'image/png',270812,'general/login-1.png','[]','2022-08-25 18:53:23','2022-08-25 18:53:23',NULL),(154,0,'logo',8,'image/png',7698,'general/logo.png','[]','2022-08-25 18:53:24','2022-08-25 18:53:24',NULL),(155,0,'newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2022-08-25 18:53:24','2022-08-25 18:53:24',NULL),(156,0,'newsletter-image',8,'image/png',116235,'general/newsletter-image.png','[]','2022-08-25 18:53:25','2022-08-25 18:53:25',NULL),(157,0,'open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2022-08-25 18:53:26','2022-08-25 18:53:26',NULL),(158,0,'payment-methods',8,'image/png',10634,'general/payment-methods.png','[]','2022-08-25 18:53:26','2022-08-25 18:53:26',NULL),(159,0,'pinterest',8,'image/png',2128,'general/pinterest.png','[]','2022-08-25 18:53:26','2022-08-25 18:53:26',NULL),(160,0,'twitter',8,'image/png',1759,'general/twitter.png','[]','2022-08-25 18:53:27','2022-08-25 18:53:27',NULL),(161,0,'youtube',8,'image/png',1083,'general/youtube.png','[]','2022-08-25 18:53:27','2022-08-25 18:53:27',NULL),(162,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-08-25 18:53:27','2022-08-25 18:53:27',NULL),(163,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-08-25 18:53:28','2022-08-25 18:53:28',NULL),(164,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-08-25 18:53:28','2022-08-25 18:53:28',NULL),(165,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-08-25 18:53:28','2022-08-25 18:53:28',NULL),(166,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-08-25 18:53:28','2022-08-25 18:53:28',NULL),(167,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-08-25 18:53:29','2022-08-25 18:53:29',NULL),(168,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-08-25 18:53:29','2022-08-25 18:53:29',NULL),(169,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-08-25 18:53:29','2022-08-25 18:53:29',NULL),(170,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-08-25 18:53:29','2022-08-25 18:53:29',NULL),(171,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-08-25 18:53:29','2022-08-25 18:53:29',NULL),(172,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-08-25 18:53:30','2022-08-25 18:53:30',NULL),(173,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-08-25 18:53:30','2022-08-25 18:53:30',NULL),(174,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-08-25 18:53:30','2022-08-25 18:53:30',NULL),(175,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-08-25 18:53:30','2022-08-25 18:53:30',NULL),(176,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-08-25 18:53:30','2022-08-25 18:53:30',NULL),(177,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-08-25 18:53:31','2022-08-25 18:53:31',NULL),(178,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-08-25 18:53:31','2022-08-25 18:53:31',NULL),(179,0,'1',10,'image/png',431894,'flash-sales/1.png','[]','2022-09-10 03:31:24','2022-09-10 03:31:24',NULL),(180,0,'2',10,'image/png',118543,'flash-sales/2.png','[]','2022-09-10 03:31:25','2022-09-10 03:31:25',NULL),(181,0,'3',10,'image/png',163085,'flash-sales/3.png','[]','2022-09-10 03:31:25','2022-09-10 03:31:25',NULL),(182,0,'4',10,'image/png',195017,'flash-sales/4.png','[]','2022-09-10 03:31:26','2022-09-10 03:31:26',NULL),(183,0,'5',10,'image/png',153833,'flash-sales/5.png','[]','2022-09-10 03:31:27','2022-09-10 03:31:27',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2022-08-25 18:51:56','2022-08-25 18:51:56',NULL),(2,0,'products','products',0,'2022-08-25 18:52:07','2022-08-25 18:52:07',NULL),(3,0,'customers','customers',0,'2022-08-25 18:52:37','2022-08-25 18:52:37',NULL),(5,0,'sliders','sliders',0,'2022-08-25 18:52:49','2022-08-25 18:52:49',NULL),(6,0,'news','news',0,'2022-08-25 18:53:01','2022-08-25 18:53:01',NULL),(7,0,'promotion','promotion',0,'2022-08-25 18:53:13','2022-08-25 18:53:13',NULL),(8,0,'general','general',0,'2022-08-25 18:53:20','2022-08-25 18:53:20',NULL),(9,0,'stores','stores',0,'2022-08-25 18:53:27','2022-08-25 18:53:27',NULL),(10,0,'flash-sales','flash-sales',0,'2022-09-10 03:31:24','2022-09-10 03:31:24',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-08-25 18:53:32','2022-08-25 18:53:32'),(2,2,'header-navigation','2022-08-25 18:53:32','2022-08-25 18:53:32'),(3,6,'main-menu','2022-08-25 18:53:32','2022-08-25 18:53:32'),(4,7,'header-navigation','2022-08-25 18:53:32','2022-08-25 18:53:32');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(2,1,1,1,'Botble\\Page\\Models\\Page','',NULL,0,'Home 1',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(53,6,52,1,'Botble\\Page\\Models\\Page','',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-08-25 18:53:32','2022-08-25 18:53:32');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(2,'Header menu','header-menu','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(3,'Product categories','product-categories','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(4,'Information','information','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(5,'Company','company','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(6,'Menu chính','menu-chinh','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(7,'Menu trên cùng','menu-tren-cung','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(8,'Product categories','danh-muc-san-pham','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(9,'Information','thong-tin','published','2022-08-25 18:53:32','2022-08-25 18:53:32'),(10,'Công ty','cong-ty','published','2022-08-25 18:53:32','2022-08-25 18:53:32');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:04','2022-08-25 18:52:04'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:05','2022-08-25 18:52:05'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-25 18:52:06','2022-08-25 18:52:06'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:32','2022-08-25 18:52:32'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:33','2022-08-25 18:52:33'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:34','2022-08-25 18:52:34'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-08-25 18:52:34','2022-08-25 18:52:34'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-08-25 18:53:01','2022-08-25 18:53:01'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-08-25 18:53:12','2022-08-25 18:53:12'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-08-25 18:53:12','2022-08-25 18:53:12'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-08-25 18:53:12','2022-08-25 18:53:12'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-08-25 18:53:12','2022-08-25 18:53:12'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2022-08-25 18:53:13','2022-08-25 18:53:13'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2022-08-25 18:53:13','2022-08-25 18:53:13'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2022-08-25 18:53:20','2022-08-25 18:53:20'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2022-08-25 18:53:31','2022-08-25 18:53:31'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2022-08-25 18:53:31','2022-08-25 18:53:31'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2022-08-25 18:53:31','2022-08-25 18:53:31'),(149,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(150,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(151,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(152,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(153,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(154,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(155,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(156,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(157,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:27','2022-09-10 03:31:27'),(158,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-10 03:31:28','2022-09-10 03:31:28');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_03_05_041139_create_ecommerce_tables',1),(27,'2020_11_18_150916_ads_create_ads_table',1),(28,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(29,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(30,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(31,'2021_02_16_092633_remove_default_value_for_author_type',1),(32,'2021_02_18_073505_update_table_ec_reviews',1),(33,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(34,'2021_03_10_025153_change_column_tax_amount',1),(35,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(36,'2021_03_27_144913_add_customer_type_into_table_payments',1),(37,'2021_04_28_074008_ecommerce_create_product_label_table',1),(38,'2021_05_24_034720_make_column_currency_nullable',1),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(40,'2021_06_28_153141_correct_slugs_data',1),(41,'2021_07_06_030002_create_marketplace_table',1),(42,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(43,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(44,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(45,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(46,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(47,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(48,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(49,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(50,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(51,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(52,'2021_10_19_020859_update_metadata_field',1),(53,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(54,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(55,'2021_11_23_071403_correct_languages_for_product_variations',1),(56,'2021_11_28_031808_add_product_tags_translations',1),(57,'2021_12_01_031123_add_featured_image_to_ec_products',1),(58,'2021_12_02_035301_add_ads_translations_table',1),(59,'2021_12_03_030600_create_blog_translations',1),(60,'2021_12_03_075608_create_page_translations',1),(61,'2021_12_03_082134_create_faq_translations',1),(62,'2021_12_03_084118_create_location_translations',1),(63,'2021_12_03_094518_migrate_old_location_data',1),(64,'2021_12_06_031304_update_table_mp_customer_revenues',1),(65,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(66,'2022_01_01_033107_update_table_ec_shipments',1),(67,'2022_01_16_085908_improve_plugin_location',1),(68,'2022_02_16_042457_improve_product_attribute_sets',1),(69,'2022_03_22_075758_correct_product_name',1),(70,'2022_04_19_113334_add_index_to_ec_products',1),(71,'2022_04_19_113923_add_index_to_table_posts',1),(72,'2022_04_20_100851_add_index_to_media_table',1),(73,'2022_04_20_101046_add_index_to_menu_table',1),(74,'2022_04_28_144405_remove_unused_table',1),(75,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(76,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(77,'2022_06_16_095633_add_index_to_some_tables',1),(78,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(79,'2022_06_30_035148_create_order_referrals_table',1),(80,'2022_07_07_153354_update_charge_id_in_table_payments',1),(81,'2022_07_10_034813_move_lang_folder_to_root',1),(82,'2022_08_04_051940_add_missing_column_expires_at',1),(83,'2022_08_04_052122_delete_location_backup_tables',1),(84,'2022_08_15_040324_add_billing_address',1),(85,'2022_07_24_153815_add_completed_at_to_ec_orders_table',2),(86,'2022_08_14_032836_create_ec_order_returns_table',2),(87,'2022_08_14_033554_create_ec_order_return_items_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,2,5,252.00,0.00,252.00,2389.50,'USD',NULL,'2022-09-06 03:31:29','2022-09-06 03:31:29',0,NULL),(2,7,6,771.90,0.00,771.90,1938.30,'USD',NULL,'2022-09-06 01:31:30','2022-09-06 01:31:30',0,NULL),(3,7,7,88.00,0.00,88.00,2710.20,'USD',NULL,'2022-09-06 03:31:30','2022-09-06 03:31:30',0,NULL),(4,2,8,124.30,0.00,124.30,2641.50,'USD',NULL,'2022-09-04 03:31:30','2022-09-04 03:31:30',0,NULL),(5,7,11,973.40,0.00,973.40,2798.20,'USD',NULL,'2022-08-31 03:31:30','2022-08-31 03:31:30',0,NULL),(6,10,19,237.30,0.00,237.30,1542.70,'USD',NULL,'2022-08-26 03:31:30','2022-08-26 03:31:30',0,NULL),(7,2,22,366.20,0.00,366.20,2765.80,'USD',NULL,'2022-09-02 11:31:30','2022-09-02 11:31:30',0,NULL),(8,2,23,656.80,0.00,656.80,3132.00,'USD',NULL,'2022-08-23 03:31:30','2022-08-23 03:31:30',0,NULL),(9,10,25,208.30,0.00,208.30,1780.00,'USD',NULL,'2022-08-30 07:31:31','2022-08-30 07:31:31',0,NULL),(10,7,27,168.00,0.00,168.00,3771.60,'USD',NULL,'2022-08-29 11:31:31','2022-08-29 11:31:31',0,NULL),(11,10,29,1712.40,0.00,1712.40,1988.30,'USD',NULL,'2022-09-02 15:31:31','2022-09-02 15:31:31',0,NULL),(12,7,30,381.30,0.00,381.30,3939.60,'USD',NULL,'2022-09-04 23:31:31','2022-09-04 23:31:31',0,NULL),(13,10,32,840.00,0.00,840.00,3700.70,'USD',NULL,'2022-08-16 09:31:31','2022-08-16 09:31:31',0,NULL),(14,7,42,258.30,0.00,258.30,4320.90,'USD',NULL,'2022-08-12 11:31:31','2022-08-12 11:31:31',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,809.00,3788.80,'USD','','{\"name\":\"Ms. Bettie Johnson\",\"number\":\"+19403450633\",\"full_name\":\"Dr. Pierce Prosacco\",\"description\":\"Maye Lehner Jr.\"}',NULL,0,'completed',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(2,2,0.00,16.00,2979.80,'USD','','{\"name\":\"Ms. Bettie Johnson\",\"number\":\"+19403450633\",\"full_name\":\"Dr. Pierce Prosacco\",\"description\":\"Maye Lehner Jr.\"}',NULL,0,'processing',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(3,7,0.00,782.00,4579.20,'USD','','{\"name\":\"Myra Jacobson IV\",\"number\":\"+15856948481\",\"full_name\":\"Ocie Christiansen\",\"description\":\"Sage Rice\"}',NULL,0,'processing',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(4,7,0.00,464.00,3797.20,'USD','','{\"name\":\"Myra Jacobson IV\",\"number\":\"+15856948481\",\"full_name\":\"Ocie Christiansen\",\"description\":\"Sage Rice\"}',NULL,0,'completed',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(5,7,0.00,978.00,3333.20,'USD','','{\"name\":\"Myra Jacobson IV\",\"number\":\"+15856948481\",\"full_name\":\"Ocie Christiansen\",\"description\":\"Sage Rice\"}',NULL,0,'completed',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(6,10,0.00,150.00,4540.70,'USD','','{\"name\":\"Tia Bednar\",\"number\":\"+12606129843\",\"full_name\":\"Mr. Brent Hermiston\",\"description\":\"Rosendo Kiehn\"}',NULL,0,'processing',NULL,'2022-09-10 03:31:32','2022-09-10 03:31:32',NULL),(7,10,0.00,436.00,4390.70,'USD','','{\"name\":\"Tia Bednar\",\"number\":\"+12606129843\",\"full_name\":\"Mr. Brent Hermiston\",\"description\":\"Rosendo Kiehn\"}',NULL,0,'processing',NULL,'2022-09-10 03:31:33','2022-09-10 03:31:33',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','vframi@example.com','+14429795400','6346 Walker Parks','FM','District of Columbia','Port Terrillville',2,'stores/1.png','Fugit qui voluptates neque vero.','Facilis deleniti dolores est est nulla. Sint aut quae officiis quos. Provident et officiis odio voluptatem quo magnam ab.','published',NULL,'2022-08-25 18:53:31','2022-08-25 18:53:31'),(2,'Global Office','friedrich58@example.org','+19105097179','883 Boyle Lodge Suite 359','AE','Arizona','Blaisefurt',7,'stores/2.png','Aut numquam temporibus nesciunt tempora aut.','Enim voluptatibus esse consequuntur veritatis. Est facere assumenda occaecati.','published',NULL,'2022-08-25 18:53:31','2022-08-25 18:53:31'),(3,'Young Shop','bsporer@example.net','+12569320333','5641 Dorcas Unions','CG','Alabama','Bergechester',10,'stores/3.png','Corporis ut voluptatem dolor sapiente neque.','Itaque et dolorem architecto. Atque voluptas dolor repudiandae incidunt velit. Et quae sit tempora porro.','published',NULL,'2022-08-25 18:53:31','2022-08-25 18:53:31');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,2963.80,0.00,4309.80,'$2y$10$7ifZMz1aflkE6Oz9TLt36ue4y0A40JwtIEzMeZo0BbJGQDc6noe2i','{\"name\":\"Ms. Bettie Johnson\",\"number\":\"+19403450633\",\"full_name\":\"Dr. Pierce Prosacco\",\"description\":\"Maye Lehner Jr.\"}','2022-08-25 18:53:31','2022-09-10 03:31:32'),(2,7,2355.20,0.00,4955.20,'$2y$10$MNxIvjT.XY.5maoUEsGHzughyJ.sQrNaNYdE5AmXVV9iQZqUfb34.','{\"name\":\"Myra Jacobson IV\",\"number\":\"+15856948481\",\"full_name\":\"Ocie Christiansen\",\"description\":\"Sage Rice\"}','2022-08-25 18:53:31','2022-09-10 03:31:32'),(3,10,3954.70,0.00,6053.70,'$2y$10$.MbJkQSvQcYGqozhk/qeXemxKyvE41SaFEhfr8OlbHnwz.c9wIiSq','{\"name\":\"Tia Bednar\",\"number\":\"+12606129843\",\"full_name\":\"Mr. Brent Hermiston\",\"description\":\"Rosendo Kiehn\"}','2022-08-25 18:53:31','2022-09-10 03:31:33');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(7,'About us','<p>White Rabbit as he could go. Alice took up the fan and two or three times over to the company generally, \'You are old,\' said the Footman. \'That\'s the judge,\' she said to live. \'I\'ve seen a cat without a great thistle, to keep back the wandering hair that WOULD always get into her eyes; and once again the tiny hands were clasped upon her knee, and looking at Alice as he fumbled over the fire, licking her paws and washing her face--and she is such a wretched height to be.\' \'It is wrong from.</p><p>That\'s all.\' \'Thank you,\' said Alice, (she had kept a piece of evidence we\'ve heard yet,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the birds hurried off to trouble myself about you: you must manage the best cat in the distance, and she had forgotten the little passage: and THEN--she found herself safe in a loud, indignant voice, but she felt that there was not quite sure whether it would be like, but it is.\' \'I quite agree with you,\' said Alice.</p><p>I used--and I don\'t put my arm round your waist,\' the Duchess said after a few minutes, and began to tremble. Alice looked all round the neck of the trees upon her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and very neatly and simply arranged; the only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you know about it, even if I fell off the fire, and.</p><p>Puss,\' she began, rather timidly, saying to herself \'This is Bill,\' she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the other. \'I beg your pardon!\' cried Alice (she was so full of tears, until there was room for YOU, and no more of it appeared. \'I don\'t believe you do lessons?\' said Alice, \'a great girl like you,\' (she might well say that \"I see what this bottle was NOT marked \'poison,\' it is to France-- Then turn not pale, beloved snail, but come and join the.</p>',1,NULL,'right-sidebar',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(9,'Terms & Conditions','<p>Queen had never left off writing on his slate with one elbow against the roof was thatched with fur. It was so much about a whiting before.\' \'I can tell you more than that, if you like,\' said the Dormouse, who seemed to be found: all she could not taste theirs, and the soldiers did. After these came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the end of the game, feeling very glad to get through was more than three.\' \'Your hair wants.</p><p>Oh dear! I wish I could shut up like a steam-engine when she had accidentally upset the week before. \'Oh, I beg your acceptance of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at it again: but he could go. Alice took up the fan she was quite a long argument with the birds and beasts, as well to say it over) \'--yes, that\'s about the same size for going through the little golden key, and.</p><p>Alice\'s head. \'Is that all?\' said the Dormouse, not choosing to notice this question, but hurriedly went on, very much pleased at having found out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice to herself. \'Shy, they seem to see the Queen. \'Can you play croquet with the Queen, pointing to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Duchess, \'chop off her head!\' Alice glanced rather anxiously at the White Rabbit.</p><p>Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, rather alarmed at the cook and the choking of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who was trembling down to the table for it, while the rest of it at last, they must needs come wriggling down from the Gryphon, half to herself, \'Why, they\'re only a mouse that had slipped in like herself. \'Would it be of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often.</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(10,'Returns & Exchanges','<p>What made you so awfully clever?\' \'I have answered three questions, and that he had come back with the other end of the cattle in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with a growl, And concluded the banquet--] \'What IS a long time together.\' \'Which is just the case with my wife; And the moral of that is--\"Be what you would have appeared to them she heard it before,\' said Alice,) and round Alice, every now and then another confusion of.</p><p>Footman, \'and that for the moment they saw the White Rabbit, trotting slowly back again, and she very soon finished it off. * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, in a thick wood. \'The first thing she heard something splashing about in all my life!\' Just as she listened, or seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her waiting!\' Alice.</p><p>I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we were. My notion was that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, who felt very glad to find that the Mouse with an air of great surprise. \'Of course not,\' Alice replied eagerly, for she felt unhappy. \'It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall see it again, but it said nothing. \'This here young lady,\' said the Cat. \'I.</p><p>Shakespeare, in the sky. Twinkle, twinkle--\"\' Here the Dormouse again, so she felt sure she would keep, through all her life. Indeed, she had never been so much about a whiting to a day-school, too,\' said Alice; \'living at the jury-box, and saw that, in her own ears for having cheated herself in the night? Let me see--how IS it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that Alice had been of late much accustomed to usurpation and conquest. Edwin.</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(11,'Shipping & Delivery','<p>I wonder if I\'ve been changed in the pool of tears which she had been broken to pieces. \'Please, then,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak with. Alice waited till she too began dreaming after a few minutes that she still held the pieces of mushroom in her head, and she tried the little door about fifteen inches high: she tried to speak, and no more of it at last, and they sat down with her head! Off--\' \'Nonsense!\' said Alice, swallowing down her.</p><p>But they HAVE their tails in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Of course it is,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that there was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall ever see you again, you dear old thing!\' said the Lory. Alice replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you.</p><p>Alice did not wish to offend the Dormouse followed him: the March Hare said in an offended tone, \'so I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Gryphon, sighing in his turn; and both the hedgehogs were out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject of conversation. While she was not quite like the look of the busy farm-yard--while the lowing of the bread-and-butter. Just at this moment Five, who had.</p><p>Alice like the look of the court, \'Bring me the truth: did you ever see you again, you dear old thing!\' said the King. On this the White Rabbit, trotting slowly back to the game. CHAPTER IX. The Mock Turtle repeated thoughtfully. \'I should have liked teaching it tricks very much, if--if I\'d only been the right words,\' said poor Alice, \'to pretend to be told so. \'It\'s really dreadful,\' she muttered to herself, as well look and see after some executions I have done that?\' she thought. \'But.</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(12,'Privacy Policy','<p>I must have been a holiday?\' \'Of course it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the second thing is to France-- Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, and he hurried off. Alice thought she might find another key.</p><p>Hatter trembled so, that he shook both his shoes on. \'--and just take his head mournfully. \'Not I!\' said the King said to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King replied. Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'They can\'t have anything to put it to be lost, as she swam lazily about in all directions, \'just like a wild beast, screamed \'Off with her head!\' Those whom she sentenced were taken into.</p><p>So they couldn\'t see it?\' So she sat on, with closed eyes, and half believed herself in a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess was sitting on a bough of a muchness?\' \'Really, now you ask me,\' said Alice, rather doubtfully, as she could, for her to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then her head pressing against the door, she walked down the.</p><p>The Dormouse shook itself, and began an account of the way of expressing yourself.\' The baby grunted again, so violently, that she had quite a commotion in the other. In the very tones of her sharp little chin into Alice\'s shoulder as he shook his head mournfully. \'Not I!\' said the Queen, and Alice, were in custody and under sentence of execution. Then the Queen furiously, throwing an inkstand at the Duchess asked, with another dig of her hedgehog. The hedgehog was engaged in a ring, and.</p>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-08-25 18:53:13','2022-08-25 18:53:13');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>Alice was not a moment to be almost out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the other: the Duchess sneezed occasionally; and as he spoke, \'we were trying--\' \'I see!\' said the Dormouse: \'not in that poky little house, on the top of the soldiers did. After these came the royal children; there were ten of them, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last the Mouse, who seemed too much frightened to say \'I once tasted--\' but.</p><p>Hatter. \'It isn\'t directed at all,\' said Alice: \'allow me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle. \'No, no! The adventures first,\' said the Hatter. \'Does YOUR watch tell you his history,\' As they walked off together, Alice heard the Rabbit just under the hedge. In another moment down went Alice like the name: however, it only grinned a little ledge of rock, and, as the other.\' As soon as look at it!\' This speech caused a remarkable sensation among the trees had a door.</p><p>Alice thought she might as well say,\' added the Gryphon; and then the Rabbit\'s voice; and Alice thought this a very respectful tone, but frowning and making quite a crowd of little Alice herself, and once again the tiny hands were clasped upon her knee, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a bright idea came into her eyes--and still as she could. \'The game\'s going on between the executioner, the King, the.</p><p>Hatter. \'It isn\'t a bird,\' Alice remarked. \'Oh, you can\'t think! And oh, I wish you would seem to come down the chimney close above her: then, saying to herself \'It\'s the oldest rule in the sea, \'and in that ridiculous fashion.\' And he got up in her French lesson-book. The Mouse gave a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of this, so she bore it as you go on? It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad--at least not.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Dormouse, not choosing to notice this last word with such sudden violence that Alice said; but was dreadfully puzzled by the prisoner to--to somebody.\' \'It must have been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she thought to herself, \'the way all the arches are gone from this side of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the Lobster Quadrille, that she had found her head impatiently; and, turning to Alice with one eye; but to open her mouth.</p><p>Alice to herself, \'if one only knew the meaning of half an hour or so, and giving it a minute or two, they began moving about again, and she jumped up and beg for its dinner, and all would change (she knew) to the Dormouse, and repeated her question. \'Why did you manage on the door of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, and I\'m sure I don\'t like them raw.\' \'Well, be off, and she went on, \'if you only kept on puzzling about it in large letters. It.</p><p>She hastily put down the chimney as she spoke. (The unfortunate little Bill had left off writing on his slate with one eye; but to open her mouth; but she did not quite like the right height to be.\' \'It is a very curious thing, and longed to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a sudden burst of tears, but said nothing. \'When we were little,\' the Mock Turtle at last, and managed to swallow a morsel of the Gryphon, before Alice could not.</p><p>How the Owl had the best plan.\' It sounded an excellent plan, no doubt, and very soon had to kneel down on one of the Rabbit\'s little white kid gloves, and she felt a very respectful tone, but frowning and making faces at him as he could go. Alice took up the other, trying every door, she found to be ashamed of yourself,\' said Alice, in a minute or two, which gave the Pigeon in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that they couldn\'t see it?\' So.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Alice to herself, as well wait, as she could not remember ever having seen such a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there were three gardeners at it, and then nodded. \'It\'s no use going back to the whiting,\' said Alice, (she had grown up,\' she said to herself, as usual. \'Come, there\'s no name signed at the Hatter, it woke up again with a sudden burst of tears, but said nothing. \'This here young lady,\' said the Caterpillar. \'Not QUITE right, I\'m.</p><p>I believe.\' \'Boots and shoes under the hedge. In another minute there was enough of me left to make SOME change in my size; and as it spoke (it was Bill, the Lizard) could not make out what it was: at first she would keep, through all her fancy, that: they never executes nobody, you know. Which shall sing?\' \'Oh, YOU sing,\' said the last time she went hunting about, and shouting \'Off with his whiskers!\' For some minutes the whole pack of cards, after all. I needn\'t be afraid of interrupting.</p><p>Queen, and in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it gloomily: then he dipped it into one of the sea.\' \'I couldn\'t afford to learn it.\' said the last concert!\' on which the words all coming different, and then Alice dodged behind a great deal of thought, and looked along the passage into the garden with one foot. \'Get up!\' said the Duchess. \'Everything\'s got a moral, if.</p><p>Duchess; \'I never was so ordered about by mice and rabbits. I almost wish I hadn\'t drunk quite so much!\' Alas! it was a bright brass plate with the time,\' she said to herself; \'his eyes are so VERY tired of this. I vote the young lady tells us a story!\' said the Queen, the royal children; there were a Duck and a large flower-pot that stood near. The three soldiers wandered about for some while in silence. At last the Mouse, in a twinkling! Half-past one, time for dinner!\' (\'I only wish they.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Alice replied thoughtfully. \'They have their tails in their mouths; and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one of its mouth open, gazing up into the garden. Then she went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s angry, and wags its tail about in the pool, \'and she sits purring so nicely by the English, who wanted leaders, and had come back again, and put it in a melancholy tone. \'Nobody seems to grin, How.</p><p>King say in a hoarse growl, \'the world would go through,\' thought poor Alice, that she was not an encouraging opening for a conversation. \'You don\'t know what a delightful thing a bit!\' said the Queen, \'Really, my dear, I think?\' he said in a day is very confusing.\' \'It isn\'t,\' said the King, the Queen, and Alice, were in custody and under sentence of execution. Then the Queen in front of the table, but there was not going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter.</p><p>ME, and told me he was speaking, and this time with the end of every line: \'Speak roughly to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Owl and the executioner myself,\' said the Gryphon: and Alice guessed who it was, and, as she could, for her neck would bend about easily in any direction, like a serpent. She had quite a long tail, certainly,\' said Alice, in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Duchess.</p><p>Dodo said, \'EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was losing her temper. \'Are you content now?\' said the Duchess: \'and the moral of that is--\"Be what you would seem to see if she was walking hand in hand, in couples: they were all talking at once, and ran the faster, while more and more faintly came, carried on the second thing is to do next, when suddenly a White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>I tell you!\' said Alice. The poor little thing grunted in reply (it had left off writing on his spectacles and looked anxiously round, to make personal remarks,\' Alice said very politely, \'for I can\'t put it more clearly,\' Alice replied eagerly, for she was now the right word) \'--but I shall have to ask the question?\' said the Queen, tossing her head made her next remark. \'Then the Dormouse crossed the court, by the end of half those long words, and, what\'s more, I don\'t put my arm round your.</p><p>The Queen turned crimson with fury, and, after waiting till she shook the house, quite forgetting in the air, mixed up with the game,\' the Queen left off, quite out of sight before the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to cry again. \'You ought to be a queer thing, to be seen: she found to be done, I wonder?\' And here Alice began to say it any longer than that,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both creatures hid.</p><p>COULD NOT SWIM--\" you can\'t think! And oh, I wish you wouldn\'t mind,\' said Alice: \'allow me to him: She gave me a good deal frightened by this time). \'Don\'t grunt,\' said Alice; not that she was a dead silence. Alice was just possible it had struck her foot! She was looking about for a rabbit! I suppose I ought to be seen--everything seemed to be seen: she found to be beheaded!\' \'What for?\' said Alice. \'I wonder how many hours a day did you call him Tortoise, if he were trying to box her own.</p><p>Turtle to the Duchess: \'what a clear way you have to whisper a hint to Time, and round the refreshments!\' But there seemed to be done, I wonder?\' Alice guessed who it was, and, as the White Rabbit, with a kind of rule, \'and vinegar that makes people hot-tempered,\' she went back to the rose-tree, she went on saying to her full size by this time?\' she said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the Dormouse fell asleep instantly, and Alice called after it; and while.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'LRWJ8HIXBF','cod',NULL,248.00,1,'pending','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'SITXQR3RG9','bank_transfer',NULL,124.30,2,'pending','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'MWN3CJZTQJ','cod',NULL,756.40,3,'pending','confirm',5,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'3PNGQ7WNFD','paypal',NULL,440.00,4,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'FAU4JEGPWI','mollie',NULL,252.00,5,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'YAZOOCZSJD','stripe',NULL,771.90,6,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'U4GSZJTGKY','sslcommerz',NULL,88.00,7,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'JY4JKSJCWA','paypal',NULL,124.30,8,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'NXLNIKSCMC','cod',NULL,440.00,9,'pending','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'WU55FCWA68','sslcommerz',NULL,205.70,10,'completed','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ACE52201AQ','mollie',NULL,973.40,11,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'2HEUUEBJO8','paypal',NULL,133.10,12,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'SKQQM48I3Z','paypal',NULL,445.50,13,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'IEI7PKVA03','bank_transfer',NULL,233.10,14,'pending','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'H6OENZIXTO','bank_transfer',NULL,2241.20,15,'pending','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'MD5E0KYD7G','bank_transfer',NULL,139.70,16,'pending','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'RUILZBXAUP','cod',NULL,516.00,17,'pending','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'MIPEW5SNAN','paystack',NULL,258.30,18,'completed','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'IKU8TZKZHQ','paypal',NULL,237.30,19,'completed','confirm',1,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'S0RF2VLXOC','mollie',NULL,440.00,20,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'QSUREUYR15','mollie',NULL,233.10,21,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'NFHZD2AIKU','stripe',NULL,366.20,22,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'H5FR4I7AJD','stripe',NULL,656.80,23,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'VQ4XDU8UU1','mollie',NULL,135.30,24,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'LJY6RXVQEE','razorpay',NULL,208.30,25,'completed','confirm',3,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'SVAG4ERNBR','stripe',NULL,133.10,26,'completed','confirm',3,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'4OJJD6OP6I','sslcommerz',NULL,168.00,27,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'DPDG68S3GU','sslcommerz',NULL,186.00,28,'completed','confirm',4,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'DETUJE6P1G','paypal',NULL,1712.40,29,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'O2XRZKER8P','stripe',NULL,381.30,30,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'6DBJKEMVIP','paypal',NULL,795.90,31,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'ST9PKW5BTJ','mollie',NULL,840.00,32,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'3ZFX4NNMMJ','mollie',NULL,642.60,33,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'0KQTE179RY','stripe',NULL,484.00,34,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'RBGKIPZPHJ','razorpay',NULL,252.00,35,'completed','confirm',9,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'R3QXY3MN6M','paypal',NULL,1240.00,36,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'FUVHUASPAA','paystack',NULL,237.30,37,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'7CUBO8HVXD','paypal',NULL,264.60,38,'completed','confirm',8,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'NF6JRZ9WLY','razorpay',NULL,186.00,39,'completed','confirm',3,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'DYMOW4QL0N','stripe',NULL,390.60,40,'completed','confirm',3,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'YOXCAMTYGD','bank_transfer',NULL,2202.10,41,'pending','confirm',6,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'MOW9J5BA4F','stripe',NULL,258.30,42,'completed','confirm',6,NULL,NULL,'2022-09-10 03:31:29','2022-09-10 03:31:29','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,3,1),(3,2,2),(4,4,2),(5,1,3),(6,4,3),(7,2,4),(8,4,4),(9,2,5),(10,3,5),(11,1,6),(12,3,6),(13,1,7),(14,3,7),(15,2,8),(16,3,8),(17,2,9),(18,3,9),(19,2,10),(20,3,10),(21,1,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',900,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',990,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',2075,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1899,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',2398,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',1178,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',1673,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1364,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',1765,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',1549,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',604,NULL,'2022-08-25 18:53:12','2022-08-25 18:53:12');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,NULL),(2,'permalink-botble-blog-models-tag','tag',NULL,NULL),(61,'language_hide_default','1',NULL,NULL),(62,'language_switcher_display','dropdown',NULL,NULL),(63,'language_display','all',NULL,NULL),(64,'language_hide_languages','[]',NULL,NULL),(65,'ecommerce_store_name','Nest',NULL,NULL),(66,'ecommerce_store_phone','18006268',NULL,NULL),(67,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(68,'ecommerce_store_state','Singapore',NULL,NULL),(69,'ecommerce_store_city','Singapore',NULL,NULL),(70,'ecommerce_store_country','SG',NULL,NULL),(71,'media_random_hash','c54f856b56eaea0abf12f60dc9b10697',NULL,NULL),(72,'permalink-botble-blog-models-post','blog',NULL,NULL),(73,'permalink-botble-blog-models-category','blog',NULL,NULL),(74,'payment_cod_status','1',NULL,NULL),(75,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(76,'payment_bank_transfer_status','1',NULL,NULL),(77,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(78,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(79,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(80,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(81,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(82,'simple_slider_using_assets','0',NULL,NULL),(83,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(84,'theme','nest',NULL,NULL),(85,'admin_favicon','general/favicon.png',NULL,NULL),(86,'admin_logo','general/logo.png',NULL,NULL),(87,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(88,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(89,'theme-nest-favicon','general/favicon.png',NULL,NULL),(90,'theme-nest-logo','general/logo.png',NULL,NULL),(91,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(92,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(93,'theme-nest-hotline','1900 - 888',NULL,NULL),(94,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(95,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(96,'theme-nest-homepage_id','1',NULL,NULL),(97,'theme-nest-blog_page_id','5',NULL,NULL),(98,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(99,'theme-nest-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(100,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(101,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(102,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(103,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(104,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(105,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(106,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(107,'theme-nest-number_of_products_per_page','12',NULL,NULL),(108,'theme-nest-preloader_enabled','yes',NULL,NULL),(109,'theme-nest-preloader_version','v2',NULL,NULL),(110,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(111,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(112,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(113,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(114,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(115,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(116,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(117,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(118,'theme-nest-vi-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(119,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(120,'theme-nest-vi-homepage_id','1',NULL,NULL),(121,'theme-nest-vi-blog_page_id','5',NULL,NULL),(122,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(123,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-08-25 18:53:01','2022-08-25 18:53:01'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-08-25 18:53:01','2022-08-25 18:53:01');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(5,'Home slider 5','home-slider-5',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(6,'Home slider 6','home-slider-6',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2022-08-25 18:53:01','2022-08-25 18:53:01');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-25 18:51:55','2022-08-25 18:51:55'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:04','2022-08-25 18:52:04'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:05','2022-08-25 18:52:05'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:06','2022-08-25 18:52:06'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:06','2022-08-25 18:52:06'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:06','2022-08-25 18:52:06'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-25 18:52:06','2022-08-25 18:52:06'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-25 18:52:06','2022-08-25 18:52:06'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-25 18:52:06','2022-08-25 18:52:06'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-25 18:52:06','2022-08-25 18:52:06'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-25 18:52:06','2022-08-25 18:52:06'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-25 18:52:06','2022-08-25 18:52:06'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:32','2022-08-25 18:52:32'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:32','2022-08-25 18:52:32'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:32','2022-08-25 18:52:32'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2022-08-25 18:52:33','2022-08-25 18:52:33'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-08-25 18:53:12','2022-08-25 18:53:12'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-08-25 18:53:12','2022-08-25 18:53:12'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-08-25 18:53:12','2022-08-25 18:53:12'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-08-25 18:53:12','2022-08-25 18:53:12'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-08-25 18:53:12','2022-08-25 18:53:12'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-08-25 18:53:12','2022-08-25 18:53:13'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2022-08-25 18:53:13','2022-08-25 18:53:13'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-08-25 18:53:31','2022-08-25 18:53:31'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-08-25 18:53:31','2022-08-25 18:53:31'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-08-25 18:53:31','2022-08-25 18:53:31');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-08-25 18:53:12','2022-08-25 18:53:12'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-08-25 18:53:12','2022-08-25 18:53:12'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-08-25 18:53:12','2022-08-25 18:53:12'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-08-25 18:53:12','2022-08-25 18:53:12'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-08-25 18:53:12','2022-08-25 18:53:12');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4880 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$1SuHLPX9m6hYvgKi0ESdnu.1n4YNjm9xNKF5101PZggfmr52hh4N6',NULL,'2022-08-25 18:53:13','2022-08-25 18:53:13','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-08-25 18:53:20','2022-08-25 18:53:20'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2022-08-25 18:53:20','2022-08-25 18:53:20');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-10 17:31:34