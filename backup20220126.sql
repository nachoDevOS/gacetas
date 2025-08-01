-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gaceta
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,1,1,0,0,0,'{}',1),(23,4,'key','text','Clave',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\"}}',2),(24,4,'table_name','text','Tabla',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\"}}',3),(25,4,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,5,'id','text','Id',1,1,1,0,0,0,'{}',1),(28,5,'title','text','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',2),(29,5,'image','image','Banner',0,1,1,1,1,1,'{}',5),(30,5,'description','text_area','Descripción',0,0,1,1,1,1,'{}',6),(31,5,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',7),(32,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(33,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',9),(34,6,'id','text','Id',1,1,1,0,0,0,'{}',1),(35,6,'publications_type_id','text','Publications Type Id',0,1,1,1,1,1,'{}',2),(36,6,'user_id','hidden','User Id',0,0,0,1,1,1,'{}',3),(37,6,'title','text','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"}}',5),(38,6,'description','text_area','Descripción',0,0,1,1,1,1,'{}',6),(39,6,'publish_date','date','Fecha de publicación',0,1,1,1,1,1,'{\"display\":{\"width\":6}}',10),(40,6,'enact_date','date','Fecha de promulgación',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"},\"display\":{\"width\":6}}',9),(41,6,'file','file','Archivo',0,0,1,1,1,1,'{\"display\":{\"width\":6}}',8),(42,6,'highlight','checkbox','Destacado',0,1,1,1,1,1,'{\"on\":\"Si\",\"off\":\"No\",\"checked\":false,\"display\":{\"width\":6}}',11),(43,6,'view','text','Visualizaciones',0,0,1,0,0,0,'{\"display\":{\"width\":6}}',12),(44,6,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',13),(45,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(46,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',15),(47,6,'publication_belongsto_publications_type_relationship','relationship','Tipo',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\PublicationsType\",\"table\":\"publications_types\",\"type\":\"belongsTo\",\"column\":\"publications_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(48,5,'icon','text','Icono',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',4),(49,5,'slug','hidden','Slug',0,0,0,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),(50,7,'id','text','Id',1,1,1,0,0,0,'{}',1),(51,7,'full_name','text','Nombre completo',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"}}',2),(52,7,'job','text','Cargo',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',3),(53,7,'image','image','Fotografía',0,1,1,1,1,1,'{\"display\":{\"width\":6}}',4),(54,7,'description','text_area','Descripción',0,1,1,1,1,1,'{}',5),(55,7,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',6),(56,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(57,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(58,8,'id','text','Id',1,1,1,0,0,0,'{}',1),(59,8,'title','text_area','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',2),(60,8,'description','rich_text_box','Descripción',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',3),(61,8,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',4),(62,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(63,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),(64,6,'tags','text','Tags',0,0,1,1,1,1,'{\"display\":{\"width\":6}}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-06-02 17:55:31','2021-06-02 17:55:31'),(4,'permissions','permissions','Permiso','Permisos','voyager-list','App\\Models\\Permission',NULL,NULL,NULL,1,0,'{\"order_column\":\"table_name\",\"order_display_column\":\"table_name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-05 10:10:30','2021-10-05 10:10:30'),(5,'publications_types','publications-types','Tipo de publicación','Tipos de publicación','voyager-list','App\\Models\\PublicationsType',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 12:29:38','2021-10-06 14:36:48'),(6,'publications','publications','Publicación','Publicaciones','voyager-certificate','App\\Models\\Publication',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 12:40:05','2021-10-11 21:01:49'),(7,'officials','officials','Funcionario','Funcionarios','voyager-people','App\\Models\\Official',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-11 11:31:09','2021-10-11 11:31:09'),(8,'frequent_questions','frequent-questions','Pregunta frecuente','Preguntas frecuentes','voyager-question','App\\Models\\FrequentQuestion',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-11 11:38:31','2021-10-11 11:46:13');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `frequent_questions`
--

DROP TABLE IF EXISTS `frequent_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequent_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequent_questions`
--

LOCK TABLES `frequent_questions` WRITE;
/*!40000 ALTER TABLE `frequent_questions` DISABLE KEYS */;
INSERT INTO `frequent_questions` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>','2021-10-11 15:14:02','2021-10-11 15:14:02',NULL),(2,'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',NULL,'<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</span></p>','2021-10-11 15:14:28','2021-10-11 15:14:28',NULL);
/*!40000 ALTER TABLE `frequent_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Inicio','','_self','voyager-home','#000000',NULL,1,'2021-06-02 17:55:32','2021-06-02 14:51:15','voyager.profile','null'),(2,1,'Media','','_self','voyager-images',NULL,5,3,'2021-06-02 17:55:32','2021-06-02 14:07:22','voyager.media.index',NULL),(3,1,'Usuarios','','_self','voyager-person','#000000',11,1,'2021-06-02 17:55:32','2021-10-05 10:06:56','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,11,2,'2021-06-02 17:55:32','2021-06-02 14:08:05','voyager.roles.index',NULL),(5,1,'Herramientas','','_self','voyager-tools','#000000',NULL,7,'2021-06-02 17:55:32','2021-10-11 11:40:06',NULL,''),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,5,'2021-06-02 17:55:33','2021-06-02 14:07:23','voyager.bread.index',NULL),(10,1,'Configuración','','_self','voyager-settings','#000000',NULL,6,'2021-06-02 17:55:33','2021-10-11 11:40:06','voyager.settings.index','null'),(11,1,'Seguridad','','_self','voyager-lock','#000000',NULL,4,'2021-06-02 14:07:53','2021-10-06 12:41:53',NULL,''),(12,1,'Limpiar cache','','_self','voyager-refresh','#000000',5,6,'2021-06-25 18:03:59','2021-10-05 10:06:40','clear.cache',NULL),(13,1,'Permisos','','_self','voyager-list',NULL,11,3,'2021-10-05 10:10:30','2021-10-05 10:10:43','voyager.permissions.index',NULL),(14,1,'Tipos de publicación','','_self','voyager-list',NULL,NULL,2,'2021-10-06 12:29:39','2021-10-06 12:41:50','voyager.publications-types.index',NULL),(15,1,'Publicaciones','','_self','voyager-certificate',NULL,NULL,3,'2021-10-06 12:40:05','2021-10-06 12:41:53','voyager.publications.index',NULL),(16,1,'Funcionarios','','_self','voyager-people',NULL,18,1,'2021-10-11 11:31:09','2021-10-11 11:39:54','voyager.officials.index',NULL),(17,1,'Preguntas frecuentes','','_self','voyager-question',NULL,18,2,'2021-10-11 11:38:31','2021-10-11 11:39:59','voyager.frequent-questions.index',NULL),(18,1,'Página web','','_self','voyager-browser','#000000',NULL,5,'2021-10-11 11:39:20','2021-10-11 11:40:06',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-10-11 21:39:43','2021-10-11 21:39:43');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2021_10_05_140728_create_publications_types_table',1),(25,'2021_10_05_142255_create_publications_table',1),(26,'2021_10_11_102254_create_officials_table',1),(27,'2021_10_11_103952_create_frequent_questions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officials`
--

DROP TABLE IF EXISTS `officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `officials_job_unique` (`job`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officials`
--

LOCK TABLES `officials` WRITE;
/*!40000 ALTER TABLE `officials` DISABLE KEYS */;
INSERT INTO `officials` VALUES (1,'John Doe','Developer','officials/October2021/vteiTXZn9uTm4e0zKllS.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','2021-10-11 15:09:48','2021-10-11 21:45:55',NULL),(2,'Erick Smith','CEO','officials/October2021/KT8wwHpukwZMp3v8FqDw.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','2021-10-11 15:13:18','2021-10-11 21:45:04',NULL);
/*!40000 ALTER TABLE `officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(31,3),(32,1),(32,3),(33,1),(33,3),(34,1),(34,3),(35,1),(35,3),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-10-11 21:39:43','2021-10-11 21:39:43'),(2,'browse_bread',NULL,'2021-10-11 21:39:43','2021-10-11 21:39:43'),(3,'browse_database',NULL,'2021-10-11 21:39:43','2021-10-11 21:39:43'),(4,'browse_media',NULL,'2021-10-11 21:39:43','2021-10-11 21:39:43'),(5,'browse_compass',NULL,'2021-10-11 21:39:43','2021-10-11 21:39:43'),(6,'browse_menus','menus','2021-10-11 21:39:43','2021-10-11 21:39:43'),(7,'read_menus','menus','2021-10-11 21:39:43','2021-10-11 21:39:43'),(8,'edit_menus','menus','2021-10-11 21:39:43','2021-10-11 21:39:43'),(9,'add_menus','menus','2021-10-11 21:39:43','2021-10-11 21:39:43'),(10,'delete_menus','menus','2021-10-11 21:39:43','2021-10-11 21:39:43'),(11,'browse_roles','roles','2021-10-11 21:39:43','2021-10-11 21:39:43'),(12,'read_roles','roles','2021-10-11 21:39:43','2021-10-11 21:39:43'),(13,'edit_roles','roles','2021-10-11 21:39:43','2021-10-11 21:39:43'),(14,'add_roles','roles','2021-10-11 21:39:43','2021-10-11 21:39:43'),(15,'delete_roles','roles','2021-10-11 21:39:43','2021-10-11 21:39:43'),(16,'browse_users','users','2021-10-11 21:39:43','2021-10-11 21:39:43'),(17,'read_users','users','2021-10-11 21:39:43','2021-10-11 21:39:43'),(18,'edit_users','users','2021-10-11 21:39:43','2021-10-11 21:39:43'),(19,'add_users','users','2021-10-11 21:39:43','2021-10-11 21:39:43'),(20,'delete_users','users','2021-10-11 21:39:43','2021-10-11 21:39:43'),(21,'browse_settings','settings','2021-10-11 21:39:43','2021-10-11 21:39:43'),(22,'read_settings','settings','2021-10-11 21:39:43','2021-10-11 21:39:43'),(23,'edit_settings','settings','2021-10-11 21:39:43','2021-10-11 21:39:43'),(24,'add_settings','settings','2021-10-11 21:39:43','2021-10-11 21:39:43'),(25,'delete_settings','settings','2021-10-11 21:39:43','2021-10-11 21:39:43'),(26,'browse_publications_types','publications_types','2021-10-11 21:39:43','2021-10-11 21:39:43'),(27,'read_publications_types','publications_types','2021-10-11 21:39:43','2021-10-11 21:39:43'),(28,'edit_publications_types','publications_types','2021-10-11 21:39:43','2021-10-11 21:39:43'),(29,'add_publications_types','publications_types','2021-10-11 21:39:43','2021-10-11 21:39:43'),(30,'delete_publications_types','publications_types','2021-10-11 21:39:43','2021-10-11 21:39:43'),(31,'browse_publications','publications','2021-10-11 21:39:43','2021-10-11 21:39:43'),(32,'read_publications','publications','2021-10-11 21:39:43','2021-10-11 21:39:43'),(33,'edit_publications','publications','2021-10-11 21:39:43','2021-10-11 21:39:43'),(34,'add_publications','publications','2021-10-11 21:39:43','2021-10-11 21:39:43'),(35,'delete_publications','publications','2021-10-11 21:39:43','2021-10-11 21:39:43'),(36,'browse_officials','officials','2021-10-11 21:39:43','2021-10-11 21:39:43'),(37,'read_officials','officials','2021-10-11 21:39:43','2021-10-11 21:39:43'),(38,'edit_officials','officials','2021-10-11 21:39:43','2021-10-11 21:39:43'),(39,'add_officials','officials','2021-10-11 21:39:43','2021-10-11 21:39:43'),(40,'delete_officials','officials','2021-10-11 21:39:43','2021-10-11 21:39:43'),(41,'browse_frequent_questions','frequent_questions','2021-10-11 21:39:43','2021-10-11 21:39:43'),(42,'read_frequent_questions','frequent_questions','2021-10-11 21:39:43','2021-10-11 21:39:43'),(43,'edit_frequent_questions','frequent_questions','2021-10-11 21:39:43','2021-10-11 21:39:43'),(44,'add_frequent_questions','frequent_questions','2021-10-11 21:39:43','2021-10-11 21:39:43'),(45,'delete_frequent_questions','frequent_questions','2021-10-11 21:39:43','2021-10-11 21:39:43');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `publications_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `enact_date` date DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` int(11) DEFAULT 1,
  `view` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publications_publications_type_id_foreign` (`publications_type_id`),
  KEY `publications_user_id_foreign` (`user_id`),
  CONSTRAINT `publications_publications_type_id_foreign` FOREIGN KEY (`publications_type_id`) REFERENCES `publications_types` (`id`),
  CONSTRAINT `publications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (3,1,NULL,'LEY 95 LEY DEL ARCHIVO HISTORICO DEPARTAMENTAL DEL BENI',NULL,'Ley que tiene por objeto crear el archivo histórico del departamento del Beni',NULL,'2020-01-30','[{\"download_link\":\"publications\\/October2021\\/ySqw1KiTDMqOtb87BzJh.pdf\",\"original_name\":\"01-30-2020_LD_95_LEY_DEL_ARCHIVO_HISTORICO_DEPARTAMENTAL_DEL_BENI.pdf\"}]',0,0,'2021-10-14 11:43:55','2021-10-14 11:43:55',NULL),(4,1,NULL,'LEY 96 LEY DEPARTAMENTAL DEL SININI',NULL,'La presente Ley tiene por objeto la promoción integral del Sinini silvestre cultivado en el Departamento del Beni',NULL,'2020-02-18','[{\"download_link\":\"publications\\/October2021\\/aXtUh50oirTRyt5fm3pM.pdf\",\"original_name\":\"02-18-2020_LD_96_LEY_DEPARTAMENTAL_DEL_SININI.pdf\"}]',0,0,'2021-10-14 11:49:31','2021-10-14 11:49:31',NULL),(5,1,NULL,'LEY 97 LEY DEL HIMNO OFICIAL A PEDRO IGNACIO MUIBA',NULL,'Se declara como Himno Oficial al Héroe Nacional Pedro Ignacio Muiba Teco la composición creada por los autores benianos Selva Libertad Velarde Hurtado (letra) y Reynaldo Revollo Hurtado (música) para enaltecer la figura legendaria y valerosa del cacique Indígena Mojeño Trinitario en su lucha independentista y anticolonial.',NULL,'2020-02-18','[{\"download_link\":\"publications\\/October2021\\/vfwh8CLX6X1NI0L3RVOz.pdf\",\"original_name\":\"02-18-2020_LD_97_LEY_HIMNO_OFICIAL_A_PEDRO_IGNACIO_MUIBA_TECO.pdf\"}]',0,0,'2021-10-14 11:52:39','2021-10-14 11:52:39',NULL),(6,1,NULL,'LEY 78 LEY DEPARTAMENTAL DE GESTIÓN DE RIESGOS Y ATENCIÓN DE DESASTRES',NULL,'La presente ley tiene por objeto regular el marco institucional y operativo, así como el financiamiento para la Gestión de Riesgos del Gobierno Autónomo Departamental del Beni, que incluye la reducción del riesgo a través de la prevención, mitigación y recuperación; y la atención de desastres y/o emergencias a través de la preparación, alerta, respuesta y rehabilitación ante riesgos de desastres ocasionados por amenazas naturales, socio-naturales, tecnológicas y/o antrópicas, así como vulnerabilidades sociales, económicas, físicas y ambientales.',NULL,'2018-03-08','[{\"download_link\":\"publications\\/October2021\\/wYaHJ3bGIZ0NTKxen05M.pdf\",\"original_name\":\"LEY DEPARTAMENTAL 78.pdf\"}]',0,0,'2021-10-14 12:44:07','2021-10-14 12:44:07',NULL),(7,1,NULL,'LEY 79 LEY DEPARTAMENTAL DEL TURISMO',NULL,'La presente ley tiene por objeto regular la actividad turística en el Departamento del Beni, estableciendo las políticas públicas departamentales y el régimen del turismo, a fin de desarrollar, fortalecer, difundir, promover, incentivar, fomentar y promocionar la actividad turística en los sectores público, privado y comunitario, como factor de desarrollo económico y social sustentable, mediante el establecimiento de normas que garanticen y faciliten el fomento, la coordinación y el control de la actividad, en el marco de las competencias exclusivas asignadas a los gobiernos autónomo departamentales.',NULL,'2018-03-16','[{\"download_link\":\"publications\\/October2021\\/Y1zntnnlqWiV4HrFOA6I.pdf\",\"original_name\":\"03-16-2018_LD_79_LEY_DEPARTAMENTAL_DE_TURISMO.pdf\"}]',0,0,'2021-10-14 14:23:22','2021-10-14 14:23:22',NULL),(8,1,NULL,'LEY 98 LEY DE PREVENCIÓN, CONTROL Y ATENCIÓN DE LA EMERGENCIA NACIONAL POR EL CORONAVIRUS (COVID - 19) EN EL DEPARTAMENTO DEL BENI',NULL,'La presente Ley tiene por objeto establecer las acciones y los mecanismos operativos para la prevención, control y atención del Coronavirus (COVID – 19), así como el apoyo para la población de escasos recursos económicos durante la cuarentena en el territorio del departamento, además de garantizar la coordinación intergubernamental para enfrentar la pandemia.',NULL,'2020-03-27','[{\"download_link\":\"publications\\/October2021\\/FQ4C7g9BsP1w1YtFBl6E.pdf\",\"original_name\":\"03-27-2020_LD_98_LEY_DE_PREVENCI\\u00d3N_CONTROL_Y_ATENCI\\u00d3N_DE_LA_EMERGENCIA_NACIONAL_POR_EL_CORONA_VIRUS_COVID-19_EN_EL_DEPARTAMENTO_DEL_BENI_1.pdf\"}]',0,0,'2021-10-14 14:26:58','2021-10-14 14:26:58',NULL),(9,1,NULL,'LEY 87 LEY MODIFICATORIA A LA LEY DEPARTAMENTAL N° 030 DE 29 DE OCTUBRE DE 2012, DE TRANSPORTE DEPARTAMENTAL',NULL,'La presente ley tiene por objeto modificar la Ley Departamental N° 030 de 29 de octubre de 2012, de Transporte Departamental, para incorporar disposiciones generales y especificas del transporte terrestre, y permitir la adecuada reglamentación de esta modalidad.',NULL,'2019-04-23','[{\"download_link\":\"publications\\/October2021\\/hxneyMH1oKeA3ZktHWNL.pdf\",\"original_name\":\"04-23-2019-ld-87-ley-modificatoria-a-la-ley-030-de-29-octubre-de-2012-de-trasporte-dptal.pdf\"}]',0,0,'2021-10-14 14:30:50','2021-10-14 14:30:50',NULL),(10,1,NULL,'LEY 88 LEY DEPARTAMENTAL DEL CACAO NATIVO AMAZONICO DEL BENI',NULL,'La presente ley tiene por objeto el fomento a la producción sostenible y la protección del cacao (Theobroma cacao) nativo amazónico, silvestre y cultivado, en el Departamento del Beni.',NULL,'2019-04-29','[{\"download_link\":\"publications\\/October2021\\/TlaYKxAgLfJBMwBlND9G.pdf\",\"original_name\":\"04-28-2019_LD_88_LEY_DEPARTAMENTAL_DEL_CACAO_NATIVO_AMAZONICO_DEL_BENI.pdf\"}]',0,0,'2021-10-14 14:38:51','2021-10-14 14:38:51',NULL),(11,1,NULL,'LEY 80 LEY DE LA ASAMBLEA LEGISLATIVA DEPARTAMENTAL INFANTIL DEL BENI',NULL,'Se constituye la Asamblea Legislativa Departamental Infantil del Beni como mecanismo de educación ciudadana y participación de niñas y niños comprendidos en las edades de 6 a 12 años, quienes adquirirán desde su posesión la calidad de Asambleístas Departamentales Infantiles del Beni.',NULL,'2018-05-02','[{\"download_link\":\"publications\\/October2021\\/DSTyYnReQ0Sr9MlcahbK.pdf\",\"original_name\":\"05-02-2018_LD_80_LEY_DE_LA_ASAMBLEA_INFANTIL.pdf\"}]',0,0,'2021-10-14 14:42:53','2021-10-14 14:42:53',NULL),(12,1,NULL,'LEY 81 LEY DE EMPRESAS PÚBLICAS DEPARTAMENTALES',NULL,'La presente Ley tiene por objeto establecer el Régimen de las Empresas Públicas Departamentales, que comprende a las Empresas Departamentales, Empresas Mixtas Departamentales, Empresas de Economía Mixta y las Empresas Departamentales Intergubernamentales, del Gobierno Autónomo Departamental del Beni.',NULL,'2018-05-16','[{\"download_link\":\"publications\\/October2021\\/s1sMpEirTYT14o77gz9t.pdf\",\"original_name\":\"05-16-2018_LD_81_LEY_DEPARTAMENTAL_EMPRESA_PU.pdf\"}]',0,0,'2021-10-14 14:46:42','2021-10-14 14:46:42',NULL),(13,1,NULL,'LEY 82 LEY DEPARTAMENTAL SEMANA DE LA PERSONA SORDA',NULL,'Se declara la última semana del mes de septiembre de cada año \"Semana de la Persona Sorda\" en todo el Departamento del Beni.',NULL,'2018-05-18','[{\"download_link\":\"publications\\/October2021\\/Ps7xH59UdFY2Jxq57zrm.pdf\",\"original_name\":\"05-18-2018_LD_82_LEY_SEMANA_DE_LA_PERSONA_SORDA.pdf\"}]',0,0,'2021-10-14 14:48:52','2021-10-14 14:48:52',NULL),(14,1,NULL,'LEY 89 LEY DE PREMIACION Y APOYO A DEPORTISTAS DESTACADOS DEL BENI',NULL,'La presente ley tiene por objeto establecer y normar la otorgación de premios a deportistas destacados del Departamento del Beni y el apoyo para su participación en eventos de carácter internacional.',NULL,'2019-06-07','[{\"download_link\":\"publications\\/October2021\\/ybHeMH34AtdIOmGqgJdk.pdf\",\"original_name\":\"06-07-2019_LD_89_LEY_DE_PREMIACION_Y_APOYO_A_DEPORTISTAS_DESTACADOS_DEL_BENI.pdf\"}]',0,0,'2021-10-14 14:51:35','2021-10-14 14:51:35',NULL),(15,1,NULL,'LEY 91 LEY DEL PRESUPUESTO PLURIANUAL, PLAN OPERATIVO ANUAL (POA) Y PRESUPUESTO INSTITUCIONAL DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI GESTIÓN 2020',NULL,'La presente Ley Departamental tiene por objeto aprobar el Presupuesto Plurianual 2020 - 2024, el Plan Operativo Anual (POA) y el Presupuesto Institucional Gestión - 2020 del Gobierno Autónomo Departamental del Beni, así como establecer otras disposiciones específicas para su aplicación.',NULL,'2019-09-17','[{\"download_link\":\"publications\\/October2021\\/FFFb77CskuB3fAWnyx85.pdf\",\"original_name\":\"09-16-2019_LD_91_LEY_DEL_PRESUPUESTO_PLURIANUAL_PLAN_OPERATIVO_ANUAL.pdf\"}]',0,0,'2021-10-14 14:54:02','2021-10-14 14:54:02',NULL),(16,1,NULL,'LEY 90 LEY DE DECLARATORIA DE PRIORIDAD Y NECESIDAD DEPARTAMENTAL LA IMPLEMENTACIÓN DE LA HIDROVÍA ICHILO - MAMORÉ',NULL,'Se declara de prioridad y necesidad departamental la implementación de la Hidrovía Ichilo - Mamoré, con la finalidad de mejorar sus condiciones de navegabilidad, permitiendo el desarrollo e integración económica y la vinculación fluvial del Departamento del Beni a nivel nacional e internacional.',NULL,'2019-06-27','[{\"download_link\":\"publications\\/October2021\\/vwFDvWzkssdZ7jSLn439.pdf\",\"original_name\":\"06-27-2019_LD_90_LEY_DE_DECLARATORIA_DE_PRIORIDAD_Y_NECESIDAD_DPTAL._LA_IMPLEMENTACION_DE_LA_HIDR.pdf\"}]',0,0,'2021-10-14 14:55:55','2021-10-14 14:55:55',NULL),(17,1,NULL,'LEY 84 LEY DEPARTAMENTAL DE DESARROLLO PRODUCTIVO',NULL,'La presente ley tiene por objeto establecer políticas y mecanismos para potenciar el Desarrollo Productivo Sostenible del Departamento del Beni, promoviendo y apoyando la industrialización de los recursos naturales, la competitividad y las iniciativas productivas, en el marco de la economía plural y la soberanía alimentaria.',NULL,'2018-09-21','[{\"download_link\":\"publications\\/October2021\\/AZl6Wqs0JJm3OaiFhjgp.pdf\",\"original_name\":\"09-21-2018_LD_84_LEY_DEPARTAMENTAL_DESARROLLO-PRODUCTIVO.pdf\"}]',0,0,'2021-10-14 14:58:22','2021-10-14 14:58:22',NULL),(18,1,NULL,'LEY 92 LEY DE CONSTRUCCIÓN DEL EDIFICIO DE LA ASAMBLEA LEGISLATIVA DEPARTAMENTAL DEL BENI',NULL,'Se declara de prioridad departamental la construcción del Edificio de la Asamblea Legislativa Departamental del Beni, con el propósito de dotarle de mejores condiciones para el adecuado desenvolvimiento de sus funciones y fortalecer la institucionalidad en el Departamento del Beni.',NULL,'2019-11-22','[{\"download_link\":\"publications\\/October2021\\/w3fRbtl2gZKQzFpYofpG.pdf\",\"original_name\":\"11-22-2019_LD_92_LEY_DE_CONSTRUCCION_DEL_EDIFICIO_DE_LA_ASAMBLEA_DPTAL_DEL_BENI.pdf\"}]',0,0,'2021-10-14 15:02:38','2021-10-14 15:02:38',NULL),(19,1,NULL,'LEY 93 PLAN DEPARTAMENTAL DE USO DEL SUELO DEL BENI',NULL,'La presente ley tiene por objeto aprobar el Plan Departamental de Uso del Suelo del Beni (PLUS – BENI), así como establecer otras disposiciones para su implementación y ejecución.',NULL,'2019-11-26','[{\"download_link\":\"publications\\/October2021\\/XaqLHUzyfhXB5fxT6T3d.pdf\",\"original_name\":\"11-26-2019_LD_93_LEY_PLAN_DEPARTAMENTAL_DE_USO_DEL_SUELO_DEL_BENI.pdf\"}]',0,0,'2021-10-14 15:06:13','2021-10-14 15:06:13',NULL),(20,1,NULL,'LEY 86 LEY DEPARTAMENTAL DE PERSONALIDADES JURÍDICAS',NULL,'La presente Ley tiene por objeto establecer el marco normativo para la otorgación, reconocimiento, modificación, extinción, revocación o anulación de personalidad jurídica a organizaciones sociales, organizaciones no gubernamentales, fundaciones y otras entidades civiles sin fines de lucro, que desarrollen actividades en la jurisdicción del Departamento del Beni.',NULL,'2018-11-27','[{\"download_link\":\"publications\\/October2021\\/o15UcgCCAjLijcIETZ3R.pdf\",\"original_name\":\"11-27-2018_LD_86_LEY_DEPARATAMENTAL_DE_PERSONALIDADES_JURIDICAS.pdf\"}]',0,0,'2021-10-14 15:17:25','2021-10-14 15:17:25',NULL),(21,1,NULL,'LEY 103 LEY DE TRANSICION INTEGRAL Y TRANSPARENTE DEL GAD DEL BENI',NULL,'La presente ley tiene por objeto establecer el alcance y procedimiento para desarrollar el proceso de transición integral y transparente del Gobierno Autónomo Departamental del Beni',NULL,'2021-04-26','[{\"download_link\":\"publications\\/October2021\\/ilLr5yXb4k3T9jXXTRqk.pdf\",\"original_name\":\"ley_103.pdf\"}]',0,0,'2021-10-14 15:22:48','2021-10-14 15:22:48',NULL),(22,1,NULL,'LEY 94 LEY DE APROBACIÓN DE FINANCIAMIENTO PARA LA GESTIÓN DEL CRÉDITO ANTE EL FONDO NACIONAL DE DESARROLLO REGIONAL (FNDR) PARA EL PROGRAMA “PROYECTO DE INVERSIÓN PUBLICA”',NULL,'La presente Ley tiene por objeto aprobar la gestión del crédito del Gobierno Autónomo Departamental del Beni ante el Fondo Nacional de Desarrollo Regional (FNDR), en el marco del programa “Proyecto de Inversión Pública”, así como declarar de prioridad departamental la ejecución de proyectos de inversión pública y establecer otras disposiciones relacionadas a la gestión del crédito.',NULL,'2019-12-27','[{\"download_link\":\"publications\\/October2021\\/bBIN1WElL6ENpgGalzdq.pdf\",\"original_name\":\"Ley_Departamental_N_94_1.pdf\"}]',0,0,'2021-10-14 15:34:04','2021-10-14 15:34:04',NULL),(23,1,NULL,'LEY 99 LEY DE LA ORGANIZACIÓN BÁSICA DEL ÓRGANO EJECUTIVO DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI',NULL,'La presente ley tiene por objeto aprobar la estructura básica del Órgano Ejecutivo del Gobierno Autónomo Departamental del Beni, atribuciones y funciones, así como establecer la jerarquía normativa.',NULL,'2020-05-08','[{\"download_link\":\"publications\\/October2021\\/lKLmYbwAtpE3BMcTOm6v.pdf\",\"original_name\":\"LEY_N_99_protegida.pdf\"}]',0,0,'2021-10-14 15:37:05','2021-10-14 15:37:05',NULL),(24,1,NULL,'LEY 100 LEY DEPARTAMENTAL DE FORTALECIMIENTO DE MEDIDAS CONTRA EL CONTAGIO Y PROPAGACION DEL CORONAVIRUS EN EL DEPARTAMENTO DEL BENI',NULL,'La presente ley tiene por objeto fortalecer las medidas del Gobierno Autónomo Departamental del Beni para evitar el contagio y la propagación del Coronavirus COVID 19, en la jurisdicción departamental.',NULL,'2020-05-16','[{\"download_link\":\"publications\\/October2021\\/6kHkgVVVb17iMW0p5XBK.pdf\",\"original_name\":\"LEY_N_100_p.pdf\"}]',0,0,'2021-10-14 15:40:50','2021-10-14 15:40:50',NULL),(25,1,NULL,'LEY 101 LEY DEPARTAMENTAL QUE ELEVA A RANGO DE LEY EL DECRETO DEPARTAMENTAL N° 16/2020 DE DECLARATORIA DE DESASTRE SANITARIO DEPARTAMENTAL',NULL,'Se eleva a rango de Ley, el Decreto Departamental N° 16/2020 de fecha 21 de mayo de 2020, de Declaratoria de Desastre Sanitario Departamental por la propagación del Coronavirus COVID -19, en la jurisdicción del Departamento del Beni.',NULL,'2020-05-25','[{\"download_link\":\"publications\\/October2021\\/V5QhJW9AmIql0nsRbGM7.pdf\",\"original_name\":\"LEY_N_101.pdf\"}]',0,0,'2021-10-14 15:42:31','2021-10-14 15:42:31',NULL),(26,1,NULL,'LEY 102 LEY DEL PRESUPUESTO PLURIANUAL AJUSTADO, PLAN OPERATIVO ANUAL (POA) Y PRESUPUESTO INSTITUCIONAL DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI GESTIÓN 2021',NULL,'La presente Ley Departamental tiene por objeto aprobar el Presupuesto Plurianual ajustado, el Plan Operativo Anual (POA) y el Presupuesto Institucional Gestión - 2021 del Gobierno Autónomo Departamental del Beni, así como establecer otras disposiciones específicas para su aplicación.',NULL,'2020-09-25','[{\"download_link\":\"publications\\/October2021\\/yVIsG1q7J2fxDifN9KvV.pdf\",\"original_name\":\"LEY_PRESUPUESTO_N102_POA_1.pdf\"}]',0,0,'2021-10-14 15:51:08','2021-10-14 15:51:08',NULL),(27,1,NULL,'LEY 104 LEY DEL PRESUPUESTO PLURIANUAL AJUSTADO (PPA), PLAN OPERATIVO ANUAL (POA) Y PRESUPUESTO INSTITUCIONAL DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI - GESTIÓN 2022',NULL,'La presente ley Departamental tiene por objeto aprobar el Presupuesto Plurianual Ajustado (PPA), el Plan Operativo Anual (POA) y el Presupuesto Institucional del Gobierno Autónomo Departamental del Beni - Gestión 2022, así como establecer otras disposiciones específicas para su aplicación.','2021-09-17','2021-09-17','[{\"download_link\":\"publications\\/October2021\\/0C6Tuc0qCmb0AOoReXFT.pdf\",\"original_name\":\"Ley Presupuesto 2022 GAD Beni.pdf\"}]',1,0,'2021-10-14 15:55:04','2021-10-14 15:57:38',NULL),(28,1,NULL,'LEY 85 LEY DE RATIFICACION DE LA DECLARACION DE HERMANDAD ENTRE EL GAD DEL BENI-BOLIVIA Y EL GOBIERNO DEL ESTADO DE RONDONIA – BRASIL',NULL,'LEY DE RATIFICACIÓN DE LA DECLARACIÓN DE HERMANDAD ENTRE EL GOBIERNO AUTONOMO DEPARTAMENTAL DEL BENI  BOLIVIA Y EL GOBIERNO DEL ESTADO DE RONDONIA - BRASIL',NULL,'2018-11-14','[{\"download_link\":\"publications\\/October2021\\/RTKniB8WL2sDsbC8k4H9.pdf\",\"original_name\":\"11-14-2018 LD 85 LEY DE RATIFICACI\\u00d3N DE LA DECLARACI\\u00d3N DE HERMANDAD.pdf\"}]',0,0,'2021-10-15 08:56:56','2021-10-15 08:56:56',NULL),(29,1,NULL,'LEY 01 LEY TRANSITORIA PARA LA POSESIÓN DE SUBGOBERNADORES Y SUBGOBERNADORAS Y CORREGIDORAS Y CORREGIDORES ELECTAS(OS) DEL DEPARTAMENTO DEL BENI',NULL,'La presente ley tiene por objeto Regular y establecer los mecanismos para el Juramento y Toma de Posesión de Subgobernadoras y Subgobernadores Corregidoras y Corregidores electos(as) el 04 de abril de 2010, en el Departamento del Beni y Establecer y definir atribuciones transitorias a Subgobernadoras y Subgobernadores y Corregidoras y Corregidores electos.',NULL,'2010-07-08','[]',0,0,'2021-10-15 09:33:28','2021-10-15 09:33:28',NULL),(30,1,NULL,'LEY 02 LEY DEPARTAMENTAL DEL PRESUPUESTO 2011 DEL GOBIERNO DEPARTAMENTAL AUTÓNOMO DEL BENI',NULL,'Aprobar el presupuesto del Gobierno Departamental Autónomo del Beni correspondiente a la gestión fiscal del año 2011, con un monto de Bs. 295.065.524,00 (DOSCIENTOS NOVENTA Y CINCO MILLONES SESENTA Y CINCO MIL QUINIENTOS VEINTICUATRO 00/100 BOLIVIANOS),',NULL,'2010-10-16','[{\"download_link\":\"publications\\/October2021\\/r5yoNEGaWMwzl1oCuIoU.pdf\",\"original_name\":\"10-16-2010 LD 002.pdf\"}]',0,0,'2021-10-15 09:36:28','2021-10-15 09:36:28',NULL),(31,1,NULL,'LEY 03 LEY DE RECONOCIMIENTO A LA GESTA LIBERTARIA INDÍGENA DE MOJOS, EN EL AÑO DEL BICENTENARIO',NULL,'El objeto de la presente Ley Departamental es hacer un justo reconocimiento a la gran gesta libertaria de Mojos de 1810, a sus líderes indígenas Pedro Ignacio Muiba, José Bopi, Gregorio Gonzales y todos los próceres que hicieron posible este movimiento independentista, y mantener vivo el espíritu de libertad y autodeterminación del pueblo beniano por el que lucharon nuestros valerosos antepasados.',NULL,'2010-11-09','[{\"download_link\":\"publications\\/October2021\\/yjsiyIoRU0eqlYI5Hd31.pdf\",\"original_name\":\"11-09-2010 LD 003.pdf\"}]',0,0,'2021-10-15 10:55:12','2021-10-15 10:55:12',NULL),(32,1,NULL,'LEY 04 LEY DEPARTAMENTAL QUE APRUEBA LA TERCERA MODIFICACIÓN PRESUPUESTARIA DE LA GESTIÓN 2010',NULL,'Aprobar la Tercera Modificación Presupuestaria del Gobierno Departamental Autónomo del Beni correspondiente a la Gestión Fiscal del año 2010, con un monto de Bs. 40.196.750,00 (CUARENTA MILLONES CIENTO NOVENTA Y SEIS MIL SETECIENTOS CINCUENTA 00/100 BOLIVIANOS)',NULL,'2010-12-22','[{\"download_link\":\"publications\\/October2021\\/Ug3XvpGDR320gpxAP2rQ.pdf\",\"original_name\":\"12-22-2010 LD 004.pdf\"}]',0,0,'2021-10-15 10:56:35','2021-10-15 10:56:35',NULL),(33,2,NULL,'DECRETO DEPARTAMENTAL 01/2010',NULL,'El presente Decreto tiene por objeto aprobar la Estructura Transitoria de la Gobernación del Departamento Autónomo del Beni, así como establecer el número y atribuciones de los Secretarías Departamentales, las Direcciones, Unidades Concentradas, las Unidades Desconcentradas y los Niveles Desconcentrados, así como, el procedimiento para las iniciativas legislativas institucionales y otras normas relacionadas con la organización de la Gobernación del Departamento.',NULL,'2010-06-28','[{\"download_link\":\"publications\\/October2021\\/JLa9AjXzOj7DIco0UEo7.pdf\",\"original_name\":\"06-28-2017 DD 01.pdf\"}]',0,0,'2021-10-15 11:29:25','2021-10-15 13:55:42',NULL),(34,2,NULL,'DECRETO DEPARTAMENTAL 02/2010',NULL,'El objeto del presente Decreto es reglamentar la liquidación del Servicio Prefectural de Caminos SEPCAM, que en adelante se denominará \"Servicio Prefectural de Caminos: SEPCAM BENI en Liquidación\".',NULL,'2010-06-30','[{\"download_link\":\"publications\\/October2021\\/4UdTYEj4GI7Vdr8uKxuD.pdf\",\"original_name\":\"06-30 2010 DD 02 SEPCAM.pdf\"}]',0,0,'2021-10-15 11:37:49','2021-10-15 13:55:53',NULL),(35,2,NULL,'DECRETO DEPARTAMENTAL 03/2010',NULL,'El presente Decreto Departamental tiene por objeto Declarar Situación de Emergencia de Carácter Departamental.',NULL,'2010-08-24','[{\"download_link\":\"publications\\/October2021\\/PmwWxFzMLgSwh3stQXIf.pdf\",\"original_name\":\"08-24-2010 DD 03.pdf\"}]',0,0,'2021-10-15 11:43:02','2021-10-15 13:56:57',NULL),(36,2,NULL,'DECRETO DEPARTAMENTAL 04/2010',NULL,'Declarase tres días de duelo Departamental por la irreparable pérdida de quien en vida fue Dr. Javier Chávez Velasco, Secretario Departamental de Medio Ambiente, Cambio Climático y de Desarrollo Agropecuario de la Gobernación del Departamento Autónomo del Beni, destacado ciudadano, meritorio profesional y eficiente servidor público.',NULL,'2010-08-30','[{\"download_link\":\"publications\\/October2021\\/cHS17JRkhYTInUWe0hVD.pdf\",\"original_name\":\"08-30-2010 DD 04.pdf\"}]',0,0,'2021-10-15 11:47:10','2021-10-15 13:56:46',NULL),(37,2,NULL,'DECRETO DEPARTAMENTAL 05/2010',NULL,'El presente Decreto Departamental crea de manera transitoria las Unidades Ejecutoras Provinciales Desconcentradas (U.E.P.D) como órganos operativos de ámbito provincial dependientes operativa y funcionalmente de la Subgobernación de cada Provincia y así atender de manera desconcentrada las necesidades de desarrollo vial en el Departamento del Beni.',NULL,'2010-10-18','[{\"download_link\":\"publications\\/October2021\\/ebAWagbbf2cKbuIbR8lw.pdf\",\"original_name\":\"10-18-2010 DD 05.pdf\"}]',0,0,'2021-10-15 11:50:31','2021-10-15 13:56:35',NULL),(38,2,NULL,'DECRETO DEPARTAMENTAL 06/2010',NULL,'Se declara situación de EMERGENCIA SANITARIA DEPARTAMENTAL, en toda la jurisdicción del departamento del Beni.',NULL,'2010-12-27','[{\"download_link\":\"publications\\/October2021\\/KktyT1g2uxKBgmvgwn1I.pdf\",\"original_name\":\"12-27-2010 DD 06.pdf\"}]',0,0,'2021-10-15 13:44:16','2021-10-15 13:56:25',NULL),(39,2,NULL,'DECRETO DEPARTAMENTAL 07/2010',NULL,'El presente Decreto tiene por objeto aprobar la modificación del Artículo 2°, del Decreto Departamental N° 01/2010, en lo relativo al Nivel Superior, modificando el estatus de la Comisión de Límites.',NULL,'2010-12-31','[{\"download_link\":\"publications\\/October2021\\/QlnuCFfKPfjMTNgiZvd6.pdf\",\"original_name\":\"12-31-2010 DD 07.pdf\"}]',0,0,'2021-10-15 13:47:57','2021-10-15 13:56:15',NULL),(40,2,NULL,'DECRETO DEPARTAMENTAL 02/2011',NULL,'Se implementa la Gaceta Oficial del Departamento Autónomo del Beni, como Entidad encargada de registrar y publicar las Leyes, Decretos, Resoluciones, normativas, manuales, informes, valorados y otro tipo de documentación oficial de interés y conocimiento Departamental, que promulgue el Gobierno Departamental.',NULL,'2011-01-10','[{\"download_link\":\"publications\\/October2021\\/6Lwx8I8IZqgFwbxwbkHV.pdf\",\"original_name\":\"01-10-2011 DD 02.pdf\"}]',0,0,'2021-10-15 13:55:02','2021-10-15 13:56:04',NULL),(41,4,NULL,'DECRETO DE GOBERNACION 01/2010',NULL,'Se HOMOLOGA  la  Estructura  Orgánica  Interna,  aprobada  por la    Resolución  del Consejo   Departamental    Nº   23/201O    y  Resolución   Prefectura!   Nº  78/201O,    como  la   Estructura   de\r\nOrganización Administrativa  Institucional de la Gobernación del Departamento Autónomo  del Beni.',NULL,'2010-06-01','[{\"download_link\":\"publications\\/October2021\\/7OJ7aSczqbk9thAcO7VI.pdf\",\"original_name\":\"01-06-2010 DG 01.pdf\"}]',0,0,'2021-10-18 10:45:03','2021-10-18 10:45:03',NULL),(42,4,NULL,'DECRETO DE GOBERNACION 02/2010',NULL,'Designar Secretarias y Secretarios Departamentales',NULL,'2010-06-01','[{\"download_link\":\"publications\\/October2021\\/Suldqj1FMcII9ncbA6Nu.pdf\",\"original_name\":\"06-01-2010 DG 02.pdf\"}]',0,0,'2021-10-18 10:46:54','2021-10-18 10:46:54',NULL),(43,2,NULL,'DECRETO DE GOBERNACION 03/2010',NULL,'El objeto del presente Decreto de Gobernación es declarar la liquidación del Servicio Prefectura! de Caminos del Beni a los efectos de realizar eI cierre administrativo definitivo del mencionado servicio.',NULL,'2010-06-03','[{\"download_link\":\"publications\\/October2021\\/puoLjIsr5FeUJaLxDvWG.pdf\",\"original_name\":\"06-03-2010 DG 03.pdf\"}]',0,0,'2021-10-18 10:52:15','2021-10-18 10:52:15',NULL),(44,2,NULL,'DECRETO DE GOBERNACION 04/2010',NULL,'La sede de funciones de los sub gobernadores y gobernadoras es la capital de la provincia y la sede de funciones de los corregidores y corregidoras, la capital de la Sección Municipal.',NULL,'2010-06-14','[{\"download_link\":\"publications\\/October2021\\/4RBtdyQEf9XMwzn3IwmA.pdf\",\"original_name\":\"06-14-2010 DG 04.pdf\"}]',0,0,'2021-10-18 11:23:38','2021-10-18 11:23:38',NULL),(45,4,NULL,'DECRETO DE GOBERNACION 05/2010',NULL,'DESIGNACION DE SECRETARIO DEPARTAMENTAL DE MEDIO AMBIENTE, CAMBIO CLIMÁTICO Y DESARROLLO AGROPECUARIO',NULL,'2010-06-28','[{\"download_link\":\"publications\\/October2021\\/EgHiimcpp7TYwSDpRmTP.pdf\",\"original_name\":\"06-28-2010 DG 05.pdf\"}]',0,0,'2021-10-18 11:25:48','2021-10-18 11:25:48',NULL),(46,4,NULL,'DECRETO DE GOBERNACION 06/2010',NULL,'DESIGNACION DE SECRETARIA DEPARTAMENTAL DE DESARROLLO INTEGRAL MULTIETNICO CAMPESINO',NULL,'2010-07-07','[{\"download_link\":\"publications\\/October2021\\/aFtYPOXisSKtdUFT2zKR.pdf\",\"original_name\":\"07-07-2010 DG 06.pdf\"}]',0,0,'2021-10-18 11:27:02','2021-10-18 11:27:02',NULL),(47,4,NULL,'DECRETO DE GOBERNACION 08/2010',NULL,'DESIGNACIÓN DE SECRETARIO DEPARTAMENTAL MEDIO AMBIENTE, CAMBIO CLIMÁTICO Y DESARROLLO AGROPECUARIO',NULL,'2010-11-30','[{\"download_link\":\"publications\\/October2021\\/PaYKOdSNTg4PfM4i0j1Y.pdf\",\"original_name\":\"11-30-2010 DG 08.pdf\"}]',0,0,'2021-10-18 11:29:01','2021-10-18 11:29:01',NULL),(48,4,NULL,'RESOLUCION DE GOBERNACION 49/2021',NULL,'DESIGNACIÓN DEL DIRECTOR  DE LA DIRECCIÓN  DE GESTION  DE RIESGOS- COE - DESCONCENTRADA',NULL,'2021-05-04','[{\"download_link\":\"publications\\/October2021\\/pcLiV0AE3doJ8F8iOftC.pdf\",\"original_name\":\"04-05-2021-RG-N\\u00b049 DESIGNAR DERECTOR WILSON AVILA TOBORGA20210625_16260048.pdf\"}]',0,0,'2021-10-19 08:41:56','2021-10-19 08:41:56',NULL),(49,3,NULL,'RESOLUCION DE GOBERNACION  013/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica.',NULL,'2021-07-01','[{\"download_link\":\"publications\\/October2021\\/JXZs3oeUI90Dy75hpqxQ.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION  013.pdf\"}]',0,0,'2021-10-20 10:49:17','2021-10-20 10:49:17',NULL),(50,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 015/2021',NULL,'Otorgar y Reconocer  la Personalidad  Jurídica con validez en la Jurisdicción  Territorial  del  Departamento  del  Beni',NULL,'2021-07-01','[{\"download_link\":\"publications\\/October2021\\/sBpV5hOwLcwbYGZ6eoF3.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N 015.pdf\"}]',0,0,'2021-10-20 12:29:34','2021-10-20 12:29:34',NULL),(51,3,NULL,'RESOLUCION DE GOBERNACION 056/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica',NULL,'2021-09-01','[{\"download_link\":\"publications\\/October2021\\/zd61ULI7RO2ICu2P5oFW.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION 056.pdf\"}]',0,0,'2021-10-20 15:50:42','2021-10-20 15:50:42',NULL),(52,4,NULL,'RESOLUCIÓN   DE GOBERNACIÓN 017/2021',NULL,'Designar Director de Banco de Sangre',NULL,'2021-07-02','[{\"download_link\":\"publications\\/October2021\\/4ZgONT4fVxQ41QVYjfnJ.pdf\",\"original_name\":\"RESOLUCI\\u00d3N   DE GOBERNACI\\u00d3N   N\\u00ba 017.pdf\"}]',0,0,'2021-10-21 10:12:40','2021-10-21 10:12:40',NULL),(53,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 028/2021',NULL,':  Disponer el embanderarniento general con la iza de la Bandera Nacional, Bandera Departamental y la Bandera con la Flor de Patujú en los edificios públicos y privados, durante  el mes de agosto,  en homenaje  a nuestra  fiesta  patria.',NULL,'2021-08-02','[{\"download_link\":\"publications\\/October2021\\/yY7jPAlLojVRL8JFlZoi.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 028.pdf\"}]',0,0,'2021-10-21 10:29:15','2021-10-21 10:29:15',NULL),(54,3,NULL,'RESOLUCION DE GOBERNACION 059/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica',NULL,'2021-09-02','[{\"download_link\":\"publications\\/October2021\\/7vTG48qAeYu7eVdzVCVr.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION N 59.pdf\"}]',0,0,'2021-10-21 11:07:39','2021-10-21 11:07:39',NULL),(55,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 02/2021',NULL,'Designar DIRECTOR  DEL  HOSPITAL  \"Pdte.  GERMAN  BUSCH\"',NULL,'2021-05-04','[{\"download_link\":\"publications\\/October2021\\/nOEnJ85PqK58w5UGEssC.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba02.pdf\"}]',0,0,'2021-10-21 12:47:33','2021-10-21 12:47:33',NULL),(56,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 047/2021',NULL,'DESIGNAR DIRECTOR  DEL  SERVICIO DEPARTAMENTAL  DEL SEDES-BENI',NULL,'2021-05-04','[{\"download_link\":\"publications\\/October2021\\/MzLAjQG6s7FhDhv0XKyk.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION 047.pdf\"}]',0,0,'2021-10-22 09:22:13','2021-10-22 09:22:13',NULL),(57,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 049/2021',NULL,'DESIGNAR DIRECTOR DE LA DIRECCIÓN DE GESTION DE RIESGOS- COE - DESCONCENTRADA',NULL,'2021-05-04','[{\"download_link\":\"publications\\/October2021\\/hMsUFVQO1O7x4qTl1aGE.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 49.pdf\"}]',0,0,'2021-10-22 09:38:37','2021-10-22 09:38:37',NULL),(58,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 48/2021',NULL,'DESIGNAR DIRECTOR  DEL SERVICIO  DEPARTAMENTAL DE DEPORTES - SEDEDE BENI',NULL,'2021-05-04','[{\"download_link\":\"publications\\/October2021\\/D5SQZAfxJMLcAliutCio.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N 48.pdf\"}]',0,0,'2021-10-22 11:03:33','2021-10-22 11:03:33',NULL),(59,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 033/2021',NULL,'Otorgar  y Reconocer  la Personalidad  Jurídica',NULL,'2021-08-04','[{\"download_link\":\"publications\\/October2021\\/rpIEeamcG4HKna7dZ6gb.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N 33.pdf\"}]',0,0,'2021-10-22 16:01:57','2021-10-22 16:01:57',NULL),(60,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 50/2021',NULL,'DESIGNAR NOTARIO  DE  GOBIERNO',NULL,'2021-05-05','[{\"download_link\":\"publications\\/October2021\\/XHptfAaVRQrNTjXsFtAn.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N 50.pdf\"}]',0,0,'2021-10-25 10:57:52','2021-10-25 10:57:52',NULL),(61,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 51/2021',NULL,'DESIGNACIÓN DIRECTORA  DEL  SERVICIO DEPARTAMENTAL DE GESTIÓN  SOCIAL  - SEDEGES',NULL,'2021-05-05','[{\"download_link\":\"publications\\/October2021\\/MVDNI1nhoFHpkvpdyHY8.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 51.pdf\"}]',0,0,'2021-10-25 11:15:51','2021-10-25 11:15:51',NULL),(62,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 52/2021',NULL,'DESIGNAR A DIRECTOR DE COORDINACIÓN MUNICIPAL',NULL,'2021-05-05','[{\"download_link\":\"publications\\/October2021\\/XELQNUWSwDfUNyc4VIHC.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 52.pdf\"}]',0,0,'2021-10-25 11:51:42','2021-10-25 11:51:42',NULL),(63,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 018/2021',NULL,'Otorgar y Reconocer  la Personalidad  Jurídica',NULL,'2021-07-05','[{\"download_link\":\"publications\\/October2021\\/64o1AQ34e4Z7qDM5Ntn5.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N 018.pdf\"}]',0,0,'2021-10-25 14:47:29','2021-10-25 14:47:29',NULL),(64,3,NULL,'RESOLUCION DE GOBERNACION 016/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica',NULL,'2021-07-06','[{\"download_link\":\"publications\\/October2021\\/stMicvKoGNk30lMVyqbX.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION 016.pdf\"}]',0,0,'2021-10-26 15:33:17','2021-10-26 15:33:17',NULL),(65,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 01/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica',NULL,'2021-01-07','[{\"download_link\":\"publications\\/October2021\\/Ly6jF7kYWL4nGfoxIwuB.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 01.pdf\"}]',0,0,'2021-10-27 10:09:39','2021-10-27 10:09:39',NULL),(66,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 02/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica',NULL,'2021-01-07','[{\"download_link\":\"publications\\/October2021\\/gwE9gDuOdBD4MMYFOALB.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 02.pdf\"}]',0,0,'2021-10-27 10:53:51','2021-10-27 10:53:51',NULL),(67,3,NULL,'RESOLUCION DE GOBERNACION 43/2021',NULL,'Aprobar el Reglamento Interno Para Casas de Acogida  y Refugio Temporal del Gobierno Autónomo  Departamental  del Beni en sus Siete (7) Capítulos, Cuarenta y Cinco (45) Artículos y Dos (2) Disposiciones   Finales  así  como  las fichas  de  Usuarias o  Usuarios  que  en Anexos  forman  parte  del Reglamento aprobado mediante la presente Resolución de Gobernación.',NULL,'2021-04-07','[{\"download_link\":\"publications\\/October2021\\/WKDBbuq21dOeJI5jJ1K8.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION N\\u00ba 43.pdf\"}]',0,0,'2021-10-27 14:05:44','2021-10-27 14:05:44',NULL),(68,3,NULL,'RESOLUCIÓN  DE GOBERNACION  019/2021',NULL,'DELEGAR  a la servidora pública XIMENA ZAMBRANO CAMPOS - DIRECTORA  DEL  SERVICIO  DEPARTAMENTAL DE GESTIÓN  SOCIAL  (SEDEGES) ATRIBUCIONES',NULL,'2021-07-07','[{\"download_link\":\"publications\\/October2021\\/b3L9fljrpHMNsRSqrwRj.pdf\",\"original_name\":\"RESOLUCI\\u00d3N  DE GOBERNACION  N\\u00ba 019.pdf\"}]',0,0,'2021-10-27 15:59:39','2021-10-27 15:59:39',NULL),(69,4,NULL,'RESOLUCIÓN DE GOBERNACIÓN 060/2021',NULL,'DESIGNAR DIRECTOR DEL  HOSPITAL \"Pdte. GERMAN  BUSCH\"',NULL,'2021-09-07','[{\"download_link\":\"publications\\/October2021\\/Ngiwm2eGTRVGuOce4r87.pdf\",\"original_name\":\"RESOLUCI\\u00d3N DE GOBERNACI\\u00d3N N\\u00ba 060.pdf\"}]',0,0,'2021-10-28 11:31:27','2021-10-28 11:31:27',NULL),(70,3,NULL,'RESOLUCION DE GOBERNACION 03/2021',NULL,'OTORGAR Y RECONOCER PERSONERÍA JURÍDICA',NULL,'2021-01-08','[{\"download_link\":\"publications\\/November2021\\/4whtl4hukY0bQgqF2vGa.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION N 03.pdf\"}]',0,0,'2021-11-01 10:27:24','2021-11-01 10:27:24',NULL),(71,4,NULL,'RESOLUCION DE GOBERNACIÓN 4/2021',NULL,'DESIGNAR DIRECTORA DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL - SEDEGES',NULL,'2021-01-08','[{\"download_link\":\"publications\\/November2021\\/fkGdHT7YwdGxYKicmPPd.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACI\\u00d3N N 4.pdf\"}]',0,0,'2021-11-01 11:22:25','2021-11-01 11:22:25',NULL),(72,4,NULL,'RESOLUCION  DE GOBERNACIÓN  06/2021',NULL,'DESIGNAR DIRECTORA DE COORDINACIÓN  MUNICIPAL',NULL,'2021-01-08','[{\"download_link\":\"publications\\/November2021\\/Gf0P6JegAalgSGy98R13.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACI\\u00d3N  N\\u00ba 06.pdf\"}]',0,0,'2021-11-05 09:06:52','2021-11-05 09:06:52',NULL),(73,4,NULL,'RESOLUCION DE GOBERNACIÓN 07/2021',NULL,'DESIGNAR DIRECTORA  DEPARTAMENTAL  JUVENTUDES',NULL,'2021-01-08','[{\"download_link\":\"publications\\/November2021\\/yzqSf5Go88D9tR8IUDyq.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACI\\u00d3N N 07.pdf\"}]',0,0,'2021-11-05 09:09:00','2021-11-05 09:09:00',NULL),(74,4,NULL,'RESOLUCION DE GOBERNACIÓN 05/2021',NULL,'DESIGNAR DIRECTOR DEL SERVICIO  DEPARTAMENTAL DEL SEDES-BENI',NULL,'2021-01-08','[{\"download_link\":\"publications\\/November2021\\/7rhfyprV5NjMMdeW09S4.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACI\\u00d3N N\\u00ba 05.pdf\"}]',0,0,'2021-11-05 09:14:37','2021-11-05 09:14:37',NULL),(75,4,NULL,'RESOLUCION DE GOBERNACIÓN 8/2021',NULL,'DESIGNAR DIRECTOR DE LA DIRECCIÓN DE GESTIÓN DE RIESGOS- DESCONCENTRADA.',NULL,'2021-01-19','[{\"download_link\":\"publications\\/November2021\\/ZmLmt9Ezh4FjjrhEYL1S.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACI\\u00d3N N\\u00ba 8.pdf\"}]',0,0,'2021-11-05 11:41:52','2021-11-05 11:41:52',NULL),(76,3,NULL,'RESOLUCION DE GOBERNACION 021/2021',NULL,'Actualizar, Registrar y Protocolizar la Personalidad Jurídica',NULL,'2021-07-08','[{\"download_link\":\"publications\\/November2021\\/BBEClmn26mn9sQYr12dT.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION 021.pdf\"}]',0,0,'2021-11-05 12:11:45','2021-11-05 12:11:45',NULL),(77,3,NULL,'RESOLUCION DE GOBERNACION  061/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica',NULL,'2021-09-08','[{\"download_link\":\"publications\\/November2021\\/eYQMHF7tvfhmKGpK1WqK.pdf\",\"original_name\":\"RESOLUCION DE GOBERNACION  061.pdf\"}]',0,0,'2021-11-08 15:08:15','2021-11-08 15:08:15',NULL),(78,2,NULL,'DECRETO DEPARTAMENTAL 014/2021',NULL,'El presente Decreto Departamental, tiene por objeto dar cumplimiento a las disposiciones contenidas en la Ley Departamental N° 003/2010 de fecha 09 de Noviembre de 2010  que dispone hacer un justo reconocimiento a la  Gran Gesta libertaria de Mojos de 1810.','2021-11-05','2021-11-05','[{\"download_link\":\"publications\\/November2021\\/xv93KINXbrG0XHP4YY0v.pdf\",\"original_name\":\"DECRETO DEPARTAMENTAL N 014.pdf\"}]',0,0,'2021-11-09 10:45:18','2021-11-09 10:45:18',NULL),(79,2,NULL,'DECRETO DEPARTAMENTAL 011/2021',NULL,'El presente Decreto Departamental, tiene por objeto el cumplimiento de la Ley Departamental N° 012/2011 de fecha 04 de octubre de 2011, en consecuencia, se decreta feriado departamental el jueves 07 de octubre de 2021, disponiéndose la suspensión de actividades públicas y privadas.',NULL,'2021-10-01','[{\"download_link\":\"publications\\/November2021\\/Ya8sMructIr4u7SGIjBd.pdf\",\"original_name\":\"DECRETO DEPARTAMENTAL N\\u00ba 011.pdf\"}]',0,0,'2021-11-09 11:14:20','2021-11-09 11:14:20',NULL),(80,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 014/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica',NULL,'2021-06-30','[{\"download_link\":\"publications\\/November2021\\/hjLrzMKig72FRkl7I3ML.pdf\",\"original_name\":\"RES DE GOB 014.pdf\"}]',0,0,'2021-11-12 10:18:05','2021-11-12 10:18:05',NULL),(81,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 015/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica',NULL,'2021-07-01','[{\"download_link\":\"publications\\/November2021\\/GmUfqamm61WYFNn4fdrY.pdf\",\"original_name\":\"RES DE GOB 015-2021.pdf\"}]',0,0,'2021-11-12 10:22:30','2021-11-12 10:22:30',NULL),(82,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 022/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica con validez en la Jurisdicción Territorial del Departamento del Beni a la “ASOCIACION DE NO VIDENTES SAN BORJA”, ubicada en el Municipio de San Borja, Provincia Cercado del Departamento de Beni.',NULL,'2021-07-23','[{\"download_link\":\"publications\\/November2021\\/tr4d9G5Pj7Kz8ODLfBmC.pdf\",\"original_name\":\"RES DE GOB 022.pdf\"}]',0,0,'2021-11-12 10:34:28','2021-11-12 10:34:28',NULL),(83,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 026/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica con validez en la Jurisdicción Territorial del Departamento del Beni a la Organización No Gubernamental “GRAN PAITITI”, ubicada en el Municipio de Trinidad, Provincia Cercado del Departamento de Beni.',NULL,'2021-07-23','[{\"download_link\":\"publications\\/November2021\\/VN3aEuElerIqdYizQvyv.pdf\",\"original_name\":\"RES DE GOB 026-2021.pdf\"}]',0,0,'2021-11-12 10:38:49','2021-11-12 10:38:49',NULL),(84,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 027/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica con validez en la Jurisdicción Territorial del Departamento del Beni a la “ASOCIACIÓN AGROPECUARIA PAITITI AAP”, ubicada en el Municipio de Trinidad, Provincia Cercado del Departamento de Beni.',NULL,'2021-07-29','[{\"download_link\":\"publications\\/November2021\\/c7sS152835TUdz5z8s8u.pdf\",\"original_name\":\"RES DE GOB 027.pdf\"}]',0,0,'2021-11-12 10:43:47','2021-11-12 10:43:47',NULL),(85,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 029/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica a la ASOCIACION AGROPECUARIA JIMENEZ “ASOJIMENEZ” con validez en la Jurisdicción Territorial del Departamento del Beni a la, ubicada en el Municipio de San Andrés, Provincia Marbán del Departamento de Beni.',NULL,'2021-07-30','[{\"download_link\":\"publications\\/November2021\\/LRrg3T1ndDDlIZj89eFG.pdf\",\"original_name\":\"RES DE GOB 029.pdf\"}]',0,0,'2021-11-12 12:41:16','2021-11-12 12:41:16',NULL),(86,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 042/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica a la ASOCIACION DE PRODUCTORES AGROPECUARIOS DE NUEVA ESPERANZA “A.PRO. A. EL PROGRESO” con validez en la Jurisdicción Territorial del Departamento del Beni a la, ubicada en el Municipio de Rurrenabaque, Provincia Gral. José Ballivián del Departamento de Beni.',NULL,'2021-08-13','[{\"download_link\":\"publications\\/November2021\\/sHu4zNOOl2oTetzF2sQD.pdf\",\"original_name\":\"RES DE GOB 042.pdf\"}]',0,0,'2021-11-12 13:08:37','2021-11-12 13:08:37',NULL),(87,3,NULL,'RESOLUCION DE GOBERNACIÓN 125/2021',NULL,'En el marco de las disposiciones legales vigentes, se dispone la suspensión de actividades públicas y privadas en toda la jurisdicción del Departamento del Beni, el día jueves 18 de noviembre del presente año, toda vez que esta fecha se constituye en feriado departamental en conmemoración a los 179 Aniversario de Creación del Departamento del Beni.','2021-11-15','2021-11-15','[{\"download_link\":\"publications\\/November2021\\/o45xjGyAJKS1Y0mhRCcG.pdf\",\"original_name\":\"RG 125 PARA PAGINA.pdf\"}]',0,0,'2021-11-17 14:04:54','2021-11-17 14:04:54',NULL),(88,2,NULL,'DECRETO DEPARTAMENTAL 015/2021',NULL,'“REGLAMENTACIÓN A LA LEY DEPARTAMENTAL No. 88 DEL CACAO NATIVO AMAZÓNICO DEL BENI”','2021-11-19','2021-11-19','[{\"download_link\":\"publications\\/December2021\\/ukcpRoRgax9VKCJrInkp.pdf\",\"original_name\":\"DECRETO DEPARTAMENTAL 15 REGLAMENTO LEY DEPARTAMENTAL DEL CACAO.pdf\"}]',0,0,'2021-12-02 15:49:57','2021-12-02 15:49:57',NULL),(89,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 042/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica a la ASOCIACION DE PRODUCTORES AGROPECUARIOS DE NUEVA ESPERANZA “A.PRO. A. EL PROGRESO” con validez en la Jurisdicción Territorial del Departamento del Beni a la, ubicada en el Municipio de Rurrenabaque, Provincia Gral. José Ballivián del Departamento de Beni.',NULL,'2021-08-13','[{\"download_link\":\"publications\\/December2021\\/nLFQpldTXPEAeeZJzLJL.pdf\",\"original_name\":\"RES DE GOB 042.pdf\"}]',0,0,'2021-12-03 09:23:27','2021-12-03 09:23:27',NULL),(90,3,NULL,'RESOLUCIÓN DE GOBERNACIÓN 072/2021',NULL,'Otorgar y Reconocer la Personalidad Jurídica a favor de la ASOCIACION “FONDO DE APOYO SOLIDARIO DEL ITENEZ”,  con validez en la Jurisdicción Territorial del Departamento del Beni, ubicada en el Municipio de Magdalena, Provincia Itenez del Departamento de Beni.',NULL,'2021-09-09','[{\"download_link\":\"publications\\/December2021\\/IH2SC0pPABF64SpSjuoV.pdf\",\"original_name\":\"RES DE GOB 072.pdf\"}]',0,0,'2021-12-07 10:42:22','2021-12-07 10:42:22',NULL),(91,3,NULL,'RESOLUCION  DE GOBERNACION  057/2021',NULL,'Otorgar y Protocolizar la Personalidad Jurídica de la COMUNIDAD GANADERA  \"MONTE  VERDE\"  del  Municipio   de  Baures  - Provincia lténez.',NULL,'2021-09-02','[{\"download_link\":\"publications\\/December2021\\/bDSc8mZOcJqpugkCdEK3.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACION  057.pdf\"}]',0,0,'2021-12-10 11:45:29','2021-12-10 11:45:29',NULL),(92,3,NULL,'RESOLUCION  DE GOBERNACION  083/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica de La   COMUNIDAD    CAMPESINA    AGRICOLA   GANADERA    ECOLOGICA    \"LA SANTÍSIMA  CRUZ\"  del Municipio de Trinidad - Provincia Cercado.',NULL,'2021-10-01','[{\"download_link\":\"publications\\/December2021\\/3nAc6LiCj1pKI7sd9FBo.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACION  083.pdf\"}]',0,0,'2021-12-27 14:28:11','2021-12-27 14:28:11',NULL),(93,4,NULL,'DECRETO DE GOBERNACIÓN 37/2021',NULL,'DESIGNAR SECRETARIO  DEPARTAMENTAL DE ADMINISTRACIÓN Y FINANZAS INTERINO',NULL,'2021-06-09','[{\"download_link\":\"publications\\/December2021\\/zL0c8SELFkbwXZERUwHj.pdf\",\"original_name\":\"DECRETO DE GOBERNACI\\u00d3N N\\u00ba 37.pdf\"}]',0,0,'2021-12-28 10:24:18','2021-12-28 10:24:18',NULL),(94,3,NULL,'RESOLUCION  DE GOBERNACION  035/2021',NULL,'Actualizar y Protocolizar la Personalidad Jurídica de la \"CENTRAL  SINDICAL ÚNICA TRABAJADORES  CAMPESINOS YACUMA\" del Municipio de Santa Ana-Provincia Yacuma.',NULL,'2021-08-11','[{\"download_link\":\"publications\\/December2021\\/ZJVDMQFIEok5vhOr3vqg.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACION  035.pdf\"}]',0,0,'2021-12-28 10:26:39','2021-12-28 10:26:39',NULL),(95,3,NULL,'RESOLUCION  DE GOBERNACION  064/2021',NULL,'Actualizar, Registrar Protocolizar la Personalidad Jurídica de la COMUNIDAD  CAMPESINA  \"LAGUNITA\" del Municipio de RURRENABAQUE - Provincia JOSÉ BALLIVIÁN.',NULL,'2021-09-08','[{\"download_link\":\"publications\\/December2021\\/Ai312ZZFt2G8Pbda1tz3.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACION  064.pdf\"}]',0,0,'2021-12-28 10:28:15','2021-12-28 10:28:15',NULL),(96,3,NULL,'RESOLUCION  DE GOBERNACION  071/2021',NULL,'Otorgar, Registrar y Protocolizar la Personalidad Jurídica de la  COMUNIDAD   CAMPESINA   \"GOSEN\"  del  Municipio  de  San  Andrés  - Provincia Marbán.',NULL,'2021-09-08','[{\"download_link\":\"publications\\/December2021\\/6XyJdc7Ne6YsYWnpVmwx.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACION  071.pdf\"}]',0,0,'2021-12-28 10:31:18','2021-12-28 10:31:18',NULL),(97,4,NULL,'RESOLUCION  DE GOBERNACIÓN  Nº 4/2021',NULL,'DESIGNACIÓN DE DIRECTORA  DEL SERVICIO  DEPARTAMENTAL DE GESTION SOCIAL - SEDEGES',NULL,'2021-01-08','[{\"download_link\":\"publications\\/December2021\\/NaG2IWzRvLcfhOVUAPHO.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACI\\u00d3N  N\\u00ba 4.pdf\"}]',0,0,'2021-12-28 10:33:23','2021-12-28 10:33:23',NULL),(98,4,NULL,'RESOLUCION  DE GOBERNACIÓN  Nº 05/2021',NULL,'DESIGNAR AL DIRECTOR DEL SERVICIO DEPARTAMENTAL DEL SEDES-BENI DR. ERICK CIRILO VALLEJOS  SANDOVAL',NULL,'2021-01-08','[{\"download_link\":\"publications\\/December2021\\/1hEpFN0jh6oV6dqDzSd6.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACI\\u00d3N  N\\u00ba 05.pdf\"}]',0,0,'2021-12-28 10:44:47','2021-12-28 10:44:47',NULL),(99,4,NULL,'RESOLUCION  DE GOBERNACIÓN  06/2021',NULL,'Designar la ciudadana ALMA  ROSARIO  RODRIGUEZ  PALACHAY  DIRECTORA  DE  COORDINACIÓN   MUNICIPAL',NULL,'2021-01-08','[{\"download_link\":\"publications\\/December2021\\/kaot8ghFZRK2KUbicdur.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACI\\u00d3N  N\\u00ba 06.pdf\"}]',0,0,'2021-12-28 10:46:32','2021-12-28 10:46:32',NULL),(100,4,NULL,'RESOLUCION DE GOBERNACIÓN 8/2021',NULL,'Designar a JULIO GALARZA AVILA DIRECTOR  DE LA DIRECCIÓN  DE GESTIÓN DE RIESGOS- DESCONCENTRADA.',NULL,'2021-01-19','[{\"download_link\":\"publications\\/December2021\\/JqyDSUGGbqSrFbIYEyv3.pdf\",\"original_name\":\"RESOLUCION  DE GOBERNACI\\u00d3N  N\\u00ba 8.pdf\"}]',0,0,'2021-12-28 10:51:40','2021-12-28 10:51:40',NULL),(101,3,NULL,'RESOLUCIÓN  DE GOBERNACIÓN 073/2021',NULL,'Otorgar  y  Reconocer  la Personalidad  Jurídica  a  favor  de  la ASOCIACIÓN MIXTO  10 DE SEPTIEMBRE DE PANADEROS  Y VIVANDERAS DEL MERCADO MUNICIPAL DE REYES \"A.M 10 SEPT.P.V.M.R.\"',NULL,'2021-09-09','[{\"download_link\":\"publications\\/December2021\\/n7sj5kWHQOnjUgXA9sOW.pdf\",\"original_name\":\"RESOLUCI\\u00d3N  DE GOBERNACI\\u00d3N No 73.pdf\"}]',0,0,'2021-12-28 11:00:13','2021-12-28 11:00:13',NULL);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_types`
--

DROP TABLE IF EXISTS `publications_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publications_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_types`
--

LOCK TABLES `publications_types` WRITE;
/*!40000 ALTER TABLE `publications_types` DISABLE KEYS */;
INSERT INTO `publications_types` VALUES (1,'Leyes','leyes','journal-bookmark',NULL,'Son normas jurídicas de carácter general y de cumplimiento obligatorio en la jurisdicción del Departamento del Beni, que son sancionadas por la Asamblea Legislativa Departamental y promulgadas por la Gobernadora o Gobernador del Departamento.','2021-10-06 12:49:29','2021-10-11 21:20:43',NULL),(2,'Decretos','decretos','book',NULL,'Serán firmados por la Gobernadora o el Gobernador o conjuntamente con las Secretarias o Secretarios cuando emerjan de decisiones adoptadas en Gabinete y para aprobación de reglamentación a leyes departamentales.','2021-10-06 14:53:00','2021-10-11 21:22:15',NULL),(3,'Resolución','resolucion','newspaper',NULL,'Otorgación de reconocimientos a personas naturales o jurídicas, aprobación de reglamentos específicos, reglamentos internos y manuales, designación de Directoras o Directores de Servicios Desconcentrados o Direcciones Desconcentradas, personerías jurídicas y otros.','2021-10-06 14:54:42','2021-10-11 21:23:38',NULL),(4,'Designación','designacion','chat-left-text',NULL,'Firmadas por el Secretario o Secretaria Departamental sobre asuntos sometidos a sus funciones y atribuciones.','2021-10-06 14:56:06','2021-10-11 21:23:03',NULL);
/*!40000 ALTER TABLE `publications_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrador','2021-10-11 21:39:43','2021-10-11 21:39:43'),(2,'user','Usuario Normal','2021-10-11 21:39:43','2021-10-11 21:39:43'),(3,'publicador','Publicador','2021-10-12 09:21:23','2021-10-12 09:21:23');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Gaceta','','text',1,'Site'),(2,'site.description','Site Description','Publicación de Leyes, Decretos y Resoluciones','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',11,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',4,'Admin'),(6,'admin.title','Admin Title','Gaceta','','text',1,'Admin'),(7,'admin.description','Admin Description','Sistema para administración de publicaciones de leyes, decretos y resoluciones.','','text',1,'Admin'),(8,'admin.loader','Admin Loader','','','image',2,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',3,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',5,'Admin'),(11,'site.banner','Site Banner','',NULL,'image',4,'Site'),(13,'site.background','Site Background','',NULL,'image',7,'Site'),(14,'site.phone','Site Phone','+591 73961213',NULL,'text',8,'Site'),(15,'site.address','Site Address','Plaza Principal acera sur',NULL,'text',9,'Site'),(16,'site.email','Site Email','despacho@beni.gob.bo',NULL,'text',10,'Site'),(17,'social.facebook','Facebook','https://www.facebook.com/gobernacionbeni2021',NULL,'text',12,'Social'),(18,'social.twitter','Twitter','https://twitter.com/GobernacionDel?t=1JVtJO8ZGzxwYM9IHCTi_g&s=09',NULL,'text',13,'Social'),(19,'social.youtube','Youtube','https://www.youtube.com/channel/UCe4xeIRrVmlWQwzP2ZmbbmQ',NULL,'text',14,'Social'),(20,'social.instagram','Instagram','#',NULL,'text',15,'Social');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$nUDpezjI0SUAoDCjQ9rHYeURKCSX2AJ6/TApLc2uKdiRSmWrOYKrm',NULL,'{\"locale\":\"es\"}','2021-06-01 21:05:11','2021-10-13 12:17:18'),(2,3,'wilson villarroel justiniano','wilson.justiniano@beni.gob.bo','users/default.png',NULL,'$2y$10$0L.kRxwH4su9BNx8f00mteFBLpitLFAhBa3oZTEqcel55AjaJj3eC','3vSl3MFTPmfXM4ECRdGR9ewNPyccYE2NoSvEK3wUdXC3thPei3eFgWOi6BXv','{\"locale\":\"es\"}','2021-10-13 12:23:20','2021-10-13 12:23:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-26 17:48:55
