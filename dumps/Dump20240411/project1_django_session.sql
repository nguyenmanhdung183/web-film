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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1gt53vjawcpyo5vahyde1r1tqftmt821','.eJxVjEEKwyAQAP_iuUjiiqs99t43yKprTVsUYnIK_XsRcmivM8McwtO-Fb93Xv2SxFWAuPyyQPHFdYj0pPpoMra6rUuQI5Gn7fLeEr9vZ_s3KNTL2CrOkGfUEDVYRIM5WT2DshZVcIZ1xKQcUQaaDDI45KwAXcCESk_i8wXDqzcH:1rudDp:YxJxiIvF0TvgGCyV_DdnWlCk_FKaR39furJzhYKs81Q','2024-04-24 19:03:01.017225'),('bem0prohu4lt3k45yez96r8sa8qx1j5z','.eJxVjEEKwyAQAP_iuUjiiqs99t43yKprTVsUYnIK_XsRcmivM8McwtO-Fb93Xv2SxFWAuPyyQPHFdYj0pPpoMra6rUuQI5Gn7fLeEr9vZ_s3KNTL2CrOkGfUEDVYRIM5WT2DshZVcIZ1xKQcUQaaDDI45KwAXcCESk_i8wXDqzcH:1ruZzl:Nc35REtXRmh239hCOmGjD6AZLh5xH7yXyAPxKkZmBJw','2024-04-24 15:36:17.567296'),('tt1gbfwafnhota9v3p2ytes6j2k9b1kk','.eJxVjDEOgzAQBP_iOrLskwGTMn3eYN367JgkAglDhfL3gESRFNvszO6mAq9LCWtNcxhEXZVVl98OHF9pPIA8eXxMOk7jMg_Qh6JPWvV9kvS-ne7fQeFa9nVvO0KGNYhO4Cn6LH1qWSg5JGcyZWr2-BYGHo30BsahI7LRMFh9vgKWOKA:1rl2nc:oxCyWSIHD6tfyUouKw4ojYq2kztJiE9fF287oC3TN3A','2024-03-29 08:20:20.596819'),('uvm4ah8a6cdat7dultssveqlyvx0cood','.eJxVjDEOgzAQBP_iOrLskwGTMn3eYN367JgkAglDhfL3gESRFNvszO6mAq9LCWtNcxhEXZVVl98OHF9pPIA8eXxMOk7jMg_Qh6JPWvV9kvS-ne7fQeFa9nVvO0KGNYhO4Cn6LH1qWSg5JGcyZWr2-BYGHo30BsahI7LRMFh9vgKWOKA:1rqozr:d4D5jtC8lH4mDGoLRvjg2QSEucz7nqUbUnyNziB2s8U','2024-04-14 06:48:51.301868');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11  2:19:16
