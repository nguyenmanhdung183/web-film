-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-15 08:01:39.102101'),(2,'auth','0001_initial','2024-03-15 08:01:39.406135'),(3,'admin','0001_initial','2024-03-15 08:01:39.482717'),(4,'admin','0002_logentry_remove_auto_add','2024-03-15 08:01:39.488969'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-15 08:01:39.494889'),(6,'app','0001_initial','2024-03-15 08:01:39.599502'),(7,'app','0002_actor_director_remove_movie_release_date_and_more','2024-03-15 08:01:39.972246'),(8,'app','0003_remove_movie_actors_alter_movie_director_and_more','2024-03-15 08:01:40.148857'),(9,'app','0004_movie_trailer_link','2024-03-15 08:01:40.169910'),(10,'app','0005_remove_review_comment_alter_movie_trailer_link','2024-03-15 08:01:40.183226'),(11,'app','0006_alter_review_rating_alter_review_user','2024-03-15 08:01:40.252811'),(12,'app','0007_favorite','2024-03-15 08:01:40.294150'),(13,'app','0008_alter_favorite_user','2024-03-15 08:01:40.392949'),(14,'app','0009_movie_video_file','2024-03-15 08:01:40.415273'),(15,'app','0010_alter_movie_video_file','2024-03-15 08:01:40.430311'),(16,'app','0011_alter_movie_video_file','2024-03-15 08:01:40.445387'),(17,'contenttypes','0002_remove_content_type_name','2024-03-15 08:01:40.495160'),(18,'auth','0002_alter_permission_name_max_length','2024-03-15 08:01:40.532097'),(19,'auth','0003_alter_user_email_max_length','2024-03-15 08:01:40.553825'),(20,'auth','0004_alter_user_username_opts','2024-03-15 08:01:40.562880'),(21,'auth','0005_alter_user_last_login_null','2024-03-15 08:01:40.598174'),(22,'auth','0006_require_contenttypes_0002','2024-03-15 08:01:40.600599'),(23,'auth','0007_alter_validators_add_error_messages','2024-03-15 08:01:40.607711'),(24,'auth','0008_alter_user_username_max_length','2024-03-15 08:01:40.663092'),(25,'auth','0009_alter_user_last_name_max_length','2024-03-15 08:01:40.703551'),(26,'auth','0010_alter_group_name_max_length','2024-03-15 08:01:40.719046'),(27,'auth','0011_update_proxy_permissions','2024-03-15 08:01:40.727317'),(28,'auth','0012_alter_user_first_name_max_length','2024-03-15 08:01:40.770999'),(29,'sessions','0001_initial','2024-03-15 08:01:40.793628'),(30,'app','0002_comment','2024-03-26 18:57:43.215810');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11  2:19:17
