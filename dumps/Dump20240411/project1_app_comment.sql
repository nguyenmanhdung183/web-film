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
-- Table structure for table `app_comment`
--

DROP TABLE IF EXISTS `app_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `movie_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_comment_movie_id_5558717c_fk_app_movie_id` (`movie_id`),
  KEY `app_comment_user_id_693f46cc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_comment_movie_id_5558717c_fk_app_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `app_movie` (`id`),
  CONSTRAINT `app_comment_user_id_693f46cc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_comment`
--

LOCK TABLES `app_comment` WRITE;
/*!40000 ALTER TABLE `app_comment` DISABLE KEYS */;
INSERT INTO `app_comment` VALUES (1,'hihi',1,3),(2,'hehe',1,3),(3,'hehe',1,3),(4,'hihi',5,3),(5,'hihi',5,3),(6,'lewlew',5,3),(7,'lewlew',5,3),(8,'haha',5,3),(9,'haha',5,3),(10,'hih',5,3),(11,'hih',5,3),(12,'a',5,3),(13,'a',5,3),(14,'a',5,3),(15,'b',5,3),(16,'lew',1,3),(17,'fg',1,3),(18,'a',1,3),(19,'chào',1,3),(20,'chào bạn',1,3),(21,'chào bạn hhihihi',1,3),(22,'lewelw',1,4),(23,'alo',1,4),(24,'phim hay quá hehe',1,4),(25,'chào',1,4),(26,'hihi',4,1),(27,'a',1,1),(28,'a',1,1),(29,'a',1,1),(30,'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500,',1,1),(31,'xin chào',2,1),(32,'heheheheheheheheheheheheheheheheheheheheheheheheh',2,1),(33,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,1),(34,'An HTML form with three input fields; two text fields and one submit button:',1,1),(35,'a',3,3),(36,'phim hay qua',1,3),(37,'heheheheh',1,3),(38,'Please sign in to view this file.',3,3);
/*!40000 ALTER TABLE `app_comment` ENABLE KEYS */;
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
