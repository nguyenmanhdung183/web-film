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

--
-- Table structure for table `app_country`
--

DROP TABLE IF EXISTS `app_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_country`
--

LOCK TABLES `app_country` WRITE;
/*!40000 ALTER TABLE `app_country` DISABLE KEYS */;
INSERT INTO `app_country` VALUES (1,'Nhat'),(2,'My'),(3,'Han'),(4,'Viet'),(5,'Trung');
/*!40000 ALTER TABLE `app_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_favorite`
--

DROP TABLE IF EXISTS `app_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_favorite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `movie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_favorite_movie_id_7b8aaf64_fk_app_movie_id` (`movie_id`),
  KEY `app_favorite_user_id_bd10a641` (`user_id`),
  CONSTRAINT `app_favorite_movie_id_7b8aaf64_fk_app_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `app_movie` (`id`),
  CONSTRAINT `app_favorite_user_id_bd10a641_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_favorite`
--

LOCK TABLES `app_favorite` WRITE;
/*!40000 ALTER TABLE `app_favorite` DISABLE KEYS */;
INSERT INTO `app_favorite` VALUES (1,1,12),(35,1,5);
/*!40000 ALTER TABLE `app_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_genre`
--

DROP TABLE IF EXISTS `app_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_genre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_genre`
--

LOCK TABLES `app_genre` WRITE;
/*!40000 ALTER TABLE `app_genre` DISABLE KEYS */;
INSERT INTO `app_genre` VALUES (1,'Hanh Dong'),(2,'Tinh Cam'),(3,'Kinh Di'),(4,'Phim Hai'),(5,'Chien Tranh'),(6,'Lang Man');
/*!40000 ALTER TABLE `app_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_movie`
--

DROP TABLE IF EXISTS `app_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_movie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint DEFAULT NULL,
  `genre_id` bigint DEFAULT NULL,
  `rating` double NOT NULL,
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_file` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_movie_country_id_e0a7cd5f_fk_app_country_id` (`country_id`),
  KEY `app_movie_genre_id_8d05639f_fk_app_genre_id` (`genre_id`),
  CONSTRAINT `app_movie_country_id_e0a7cd5f_fk_app_country_id` FOREIGN KEY (`country_id`) REFERENCES `app_country` (`id`),
  CONSTRAINT `app_movie_genre_id_8d05639f_fk_app_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `app_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_movie`
--

LOCK TABLES `app_movie` WRITE;
/*!40000 ALTER TABLE `app_movie` DISABLE KEYS */;
INSERT INTO `app_movie` VALUES (1,'Iron man','Iron Man (tên thật là Tony Stark) là một siêu anh hùng hư cấu xuất hiện trong truyện tranh của Mỹ được xuất bản bởi Marvel Comics, cũng như các phương tiện truyền thông liên quan. Nhân vật này đã được sáng tác bởi nhà văn - nhà biên tập Stan Lee, được phát triển bởi Larry Lieber, và được thiết kế bởi họa sĩ Don Heck và Jack Kirby. Nhân vật xuất hiện lần đầu tiên trong truyện tranh Tales of Suspense # 39 (tháng 3 năm 1963).\r\n\r\nAnh được miêu tả là một tỉ phú người Mỹ, một ông trùm ngành công nghiệp, một kĩ sư thiên tài, Tony bị chấn thương ngực nặng trong một vụ bắt cóc, bị những kẻ bắt cóc ép buộc chế tạo cho chúng một loại vũ khí hủy diệt hàng loạt. Nhưng thay vào đó, anh tự tay tạo ra một bộ áo giáp để cứu sống bản thân và thoát khỏi sự giam cầm. Lấy cảm hứng từ đó, anh nâng cấp bộ giáp mình đến một mức tối tân và phi thường hơn thông qua công ty của mình, Stark Industries. Anh sử dụng bộ giáp của mình để bảo vệ thế giới với tên gọi là Iron Man.',2,1,9.5,'images/IronManRobert_Downey_Jr1.jpg.webp','Marvel','Robert Downey Jr.','https://www.youtube.com/watch?v=8ugaeA-nMTc','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=ea2b47a1-68b9-4b83-a201-67fe45c55c87&embed=%7B%22af%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"All Tony Stark Scenes (4K ULTRA HD).mp4\"></iframe>'),(2,'Captain America','Captain America là một siêu anh hùng hư cấu xuất hiện trong truyện tranh của Hoa Kỳ được xuất bản bởi Marvel Comics. Được tạo bởi họa sĩ truyện tranh Joe Simon và Jack Kirby, nhân vật lần đầu tiên xuất hiện trong Captain America Comics # 1 từ Timely Comics, tiền thân của Marvel Comics',2,1,9,'images/Captainamerica.jpeg','Jack Kirby','Chris Evans','https://www.youtube.com/watch?v=JerVrbLldXw','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=11067415-f5d3-45c4-9651-d3dd33b14b67&embed=%7B%22ust%22%3Atrue%2C%22hv%22%3A%22CopyEmbedCode%22%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Captain America- Kẻ Báo Thù Đầu Tiên - Tập Full.mp4\"></iframe>'),(3,'Kỵ sĩ bóng đêm','Kỵ sĩ bóng đêm là một bộ phim điện ảnh siêu anh hùng năm 2008 do Christopher Nolan làm đạo diễn, sản xuất và đồng biên kịch. Dựa trên nhân vật truyện tranh Người Dơi của DC Comics, tác phẩm là phần thứ hai trong loạt phim điện ảnh bộ ba The Dark Knight của Nolan cũng như phần tiếp nối của Huyền thoại Người Dơi',2,1,9.5,'images/bale-batman-0-0-2678-1553853512.jpg','Christopher Nolan','Christian Charles Philip Bale','https://www.youtube.com/watch?v=nRdD0o1UGMg','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=f6b030cc-cb78-4409-b595-60fc1335fc2e&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Kỵ Sĩ Bóng Đêm Trỗi Dậy Vietsub - HD.mp4\"></iframe>'),(4,'Tầng lớp Itaewon','Itaewon Class là một loạt phim truyền hình Hàn Quốc ra mắt năm 2020 với sự tham gia diễn xuất của dàn diễn viên gồm Park Seo-joon, Kim Da-mi, Yoo Jae-myung và Kwon Nara, với Kim Sung-yoon đảm nhiệm vai trò đạo diễn.',3,2,9,'images/TheheItaewon.jpg','Kim Sung-yoon','Park Seo-joon','https://www.youtube.com/watch?v=NeaHNQJ1kCo','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=638e7399-11c7-499d-b4d7-14dae2096427&embed=%7B%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Tầng lớp Itaewon Tập 1 Vietsub - HD.mp4\"></iframe>'),(5,'5 Centimet trên giây','5 Centimet trên giây (Nhật: 秒速5センチメートル, Hepburn: Byōsoku Go Senchimētoru?) là một phim anime do Shinkai Makoto đạo diễn và hãng CoMix Wave thực hiện. Bộ phim được công chiếu lần đầu vào ngày 03 tháng 3 năm 2007 tại rạp ở Shibuya, Tokyo[1]. Cốt truyện xoay quanh mối quan hệ của một cậu bé tên Tōno Takaki với một cô gái là bạn từ khi còn đi học vào khoảng những năm 1990 cho đến thời hiện đại, nhưng giữa họ luôn có một khoảng cách và thường chỉ liên lạc với nhau từ xa qua thư hay điện thoại. Bộ phim giành được giải Phim hoạt hình xuất sắc nhất tại lễ trao giải điện ảnh châu Á Thái Bình Dương năm 2007.',1,2,9.5,'images/2.jpg','Shinkai Makoto','nhân vật hoạt hình','https://www.youtube.com/watch?v=wdM7athAem0','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=1ac3f0ab-ec09-4c28-ad68-65ae8c5d5314&embed=%7B%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Tập Full_BD 5 Centimeters Per Second - 5cm-s (Byousoku 5 Centimeter, Five Centimeters Per Second, Byousoku 5 Centimeter - a chain of short stories about their distance, 5 Centimetres Per Second, 5 cm per.mp4\"></iframe>'),(6,'Đại Phá Vạn Tiên Trận','kể về Vũ Vương phạt Trụ, Khương Tử Nha dẫn binh xông phá Đồng Quan, Thân Công Báo cùng Thông Thiên giáo đã thông đồng với nhau, cùng dựng nên Vạn Tiên sát trận, với chủ đích quét sạch quân đội nhà Chu, cùng những thần tiên phản đối sự thống trị của Thương Trụ. Một nhóm các thần gồm Dương Tiễn, Na Tra liều chết chống trả quyết liệt, cuối cùng đã đánh bại bè lũ của Thân Công Báo và Thôn Thiên giáo chủ, giúp thiên đình và nhân gian tránh được kiếp hoạ khó lường, bình ổn thiên giới, an dân thiên hạ.',5,1,8,'images/hqdefault.jpg','Boxun Li','Trần Kiện Phong','https://www.youtube.com/watch?v=oxqi0UjaW2M','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=65159d23-35b7-41c4-95e9-0d76bac21a29&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"【Lồng Tiếng】Phong Thần Bảng_ Đại Phá Vạn Tiên Trận _ Viễn Tưởng _ iQIYI Movie Vietnam.mp4\"></iframe>'),(8,'Chiến hạm thủ lĩnh','Chiến hạm thủ lĩnh là phim điện ảnh chiến tranh của Mỹ năm 2020 do Aaron Schneider đạo diễn, với sự tham gia diễn xuất của nam diễn viên Tom Hanks. Hanks cũng là người thực hiện phần kịch bản cho tác phẩm. Bộ phim dựa trên nguyên tác tiểu thuyết The Good Shepherd do C. S. Forester sáng tác.',2,5,9,'images/Chiến_hạm_thủ_lĩnh_poster.jpg','Aaron Schneider','Tom Hanks','https://www.youtube.com/watch?v=IdF8Vga1oq0','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=38dbe234-50df-4c4e-9188-8d78c2ec829a&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Tập Full-Chiến Hạm Thủ Lĩnh - Greyhound (2020) [Full HD-Vietsub].mp4\"></iframe>'),(9,'Cá mực hầm mật','Go Go Squid! (Chinese: 亲爱的，热爱的; pinyin: Qīn Ài De, Rè Ài De) is a Chinese e-sport romance comedy television series directed by Li Qingrong and Xiang Xujing.[3] The series was first aired in 2019, starring Yang Zi and Li Xian.[4] It was an adaptation of Mo Bao Fei Bao\'s novel \"Honey Stewed Squid.\"[5] The series aired on Dragon TV and Zhejiang TV and was broadcast simultaneously on iQiyi and Tencent Video from July 9 to July 31, 2019.[citation needed]\r\n\r\nThe series is about Tong Nian, a talented computer science major and popular online singer, and Han Shangyan, a cybersecurity professional, who fall in love, support each other, and compete in international cybersecurity competitions.[1] The series was the most-streamed series in 2019,[6] and according to statistics from Yien Broadcasting Index TV series list, Go Go Squid! was the best domestic Chinese TV series in 2019.[7]\r\n\r\nThere will be a sequel starring Hu Yitian and Li Yitong.[8]',5,6,8.5,'images/10-bo-phim-truyen-hinh-hai-lang-man-trung-quoc-giet-thoi-gian-trong-mua-dich-2021_1yAq1D6.jpg','UnknownLi Jingrong, Xiang Xujing','Lý Hiện','https://www.youtube.com/watch?v=Wp1M-xm_Pds','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=dfa91b87-89bf-463f-9cbd-053f21664ed0&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"CÁ MỰC HẦM MẬT TRỌN BỘ FULL 20 TIẾNG _ DƯƠNG TỬ _ Phim Bộ Ngôn Tình Trung Quốc 2022 _ Phần 7.mp4\"></iframe>'),(10,'The Last 10 Years','Twenty-year-old Matsuri Takabayashi learns that she only has ten years to live due to an incurable disease. She decides to not dwell on her life and not to fall in love, but she meets Kazuto Manabe at a school reunion.',1,2,10,'images/c7f8744027a111edb911dbb687eed567.jpeg','Michihito Fujii','Nana Komatsu','https://www.youtube.com/watch?v=GyMXxOdHF7o','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=3ac591c3-cae4-4fc8-b30f-81133b9f2600&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"10 Năm Cuối - Tập Full.mp4\"></iframe>'),(11,'Giai điệu tình yêu','Tune in for Love (Korean: 유열의 음악앨범; RR: Yooyeolui Eumakaelbum; lit. Yoo Yeol\'s Music Album), is a 2019 South Korean romantic drama film directed by Jung Ji-woo and starring Kim Go-eun and Jung Hae-in.[4][5] It was released in South Korea on August 28, 2019, and globally via Netflix on November 5, 2019.[6]',3,6,9.75,'images/Tune-in-for-love-1.jpg','Jung Ji-woo','Jung Hae In','https://www.youtube.com/watch?v=O2x8gaL5Omw','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=9ca7b5f2-e5aa-4d72-9da5-afee14c218e3&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Giai Điệu Tình Yêu - Tập Full HD.mp4\"></iframe>'),(12,'Tân Vua Hài Kịch (2019)','Đây là một trong những bộ phim hài Trung Quốc hay nhất kể về nhân vật Tiểu Mộng với ước mơ trở thành một diễn viên nổi tiếng được nhiều người biết đến. Để vươn đến mong ước của mình, cô không ngừng cố gắng từng ngày nhưng vận may vẫn chưa tìm đến Tiểu Mộng khi cô chỉ được vào các vai quần chúng. Thấy thế, mọi người xung quanh luôn ra sức ngăn cản, thậm chí đến cả đạo diễn cũng khuyên nhủ cô nên dừng lại mong ước đóng phim. Những tưởng cô gái sẽ nản mà rút lui nhưng Tiểu Mộng vẫn nhất mực theo đuổi bộ môn nghệ thuật thứ bảy. Trớ trêu thay, vận xui vẫn không ngừng bám theo khi cô phát hiện đã bị bạn trai lừa mất số tiền dành dụm bấy lâu. Liệu rằng Tiểu Mộng có tiếp tục theo đuổi ước mơ diễn xuất bao năm của mình hay sẽ vì những khó khăn mà chùn bước?',5,4,10,'images/Tan-Vua-Hai-Kich-voi-nhung-cau-chuyen-do-khoc-do-cuoi-vo-cung-hap-dan.jpg','Châu Tinh Trì','Châu Tinh Trì','https://www.youtube.com/watch?v=xc1VYqpjOmc&t=1s','<iframe src=\"https://husteduvn-my.sharepoint.com/personal/dung_nm213838_sis_hust_edu_vn/_layouts/15/embed.aspx?UniqueId=58438542-d2ac-4ef3-98e5-c0aa4ba98fbf&embed=%7B%22af%22%3Atrue%2C%22hvm%22%3Atrue%2C%22ust%22%3Atrue%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create\" width=\"640\" height=\"360\" frameborder=\"0\" scrolling=\"no\" allowfullscreen title=\"Tân Vua Hài Kịch 2019  New King Of Comedy FULL HD   Vietsub   Thuyết Minh.mp4\"></iframe>');
/*!40000 ALTER TABLE `app_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_review`
--

DROP TABLE IF EXISTS `app_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `movie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_review_movie_id_efc274f2_fk_app_movie_id` (`movie_id`),
  KEY `app_review_user_id_54c922e0` (`user_id`),
  CONSTRAINT `app_review_movie_id_efc274f2_fk_app_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `app_movie` (`id`),
  CONSTRAINT `app_review_user_id_54c922e0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_review`
--

LOCK TABLES `app_review` WRITE;
/*!40000 ALTER TABLE `app_review` DISABLE KEYS */;
INSERT INTO `app_review` VALUES (1,1,10,3),(2,1,9,1),(3,3,10,1),(4,4,10,12),(5,3,9,3),(6,1,9,2);
/*!40000 ALTER TABLE `app_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add country',7,'add_country'),(26,'Can change country',7,'change_country'),(27,'Can delete country',7,'delete_country'),(28,'Can view country',7,'view_country'),(29,'Can add genre',8,'add_genre'),(30,'Can change genre',8,'change_genre'),(31,'Can delete genre',8,'delete_genre'),(32,'Can view genre',8,'view_genre'),(33,'Can add movie',9,'add_movie'),(34,'Can change movie',9,'change_movie'),(35,'Can delete movie',9,'delete_movie'),(36,'Can view movie',9,'view_movie'),(37,'Can add review',10,'add_review'),(38,'Can change review',10,'change_review'),(39,'Can delete review',10,'delete_review'),(40,'Can view review',10,'view_review'),(41,'Can add favorite',11,'add_favorite'),(42,'Can change favorite',11,'change_favorite'),(43,'Can delete favorite',11,'delete_favorite'),(44,'Can view favorite',11,'view_favorite'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$E1tPL5XUxqkfleVZ8Q30Xg$OM7guPqZsQziTR+GqDYbmId4zD/2FCqnYWV4usms8FY=','2024-04-10 15:28:31.839215',1,'admin','','','',1,1,'2024-03-15 08:20:14.415324'),(2,'pbkdf2_sha256$600000$u5zGNpijf3C942HiCrZkyO$0sJoZ2HdSXS2iWglAnAbMKAU1RlhrVkypj775zp4XEE=',NULL,0,'adminafasdfads','','','',0,1,'2024-03-22 13:56:54.639802'),(3,'pbkdf2_sha256$600000$N8xaAK6VX6NFKHnwFSFl5A$NbDrVnAjYz3+2HptOqY1OZUATYt3mGiocxAmnezSVT4=','2024-04-10 19:03:01.015226',0,'adminfake','','','',0,1,'2024-03-22 14:05:50.925116'),(4,'pbkdf2_sha256$600000$GJBlk0S2MfJCu5Dx3piLGq$dvOmtjFixzXsfj5opIznvcZDkxolFfTk8TmnPZuJYnI=','2024-04-10 06:57:54.867164',0,'abc','','','',0,1,'2024-03-26 19:58:41.386804');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-15 11:55:22.004059','1','Hanh Dong',1,'[{\"added\": {}}]',8,1),(2,'2024-03-15 11:55:30.658001','2','Tinh Cam',1,'[{\"added\": {}}]',8,1),(3,'2024-03-15 11:55:34.696121','3','Kinh Di',1,'[{\"added\": {}}]',8,1),(4,'2024-03-15 11:55:40.612411','4','Phim Hai',1,'[{\"added\": {}}]',8,1),(5,'2024-03-15 11:55:45.084016','5','Chien Tranh',1,'[{\"added\": {}}]',8,1),(6,'2024-03-15 11:55:51.237688','6','Lang Man',1,'[{\"added\": {}}]',8,1),(7,'2024-03-15 11:58:26.363526','1','Nhat',1,'[{\"added\": {}}]',7,1),(8,'2024-03-15 11:58:29.454652','2','My',1,'[{\"added\": {}}]',7,1),(9,'2024-03-15 11:58:32.063736','3','Han',1,'[{\"added\": {}}]',7,1),(10,'2024-03-15 11:58:34.995774','4','Viet',1,'[{\"added\": {}}]',7,1),(11,'2024-03-15 11:58:40.231461','5','Trung',1,'[{\"added\": {}}]',7,1),(12,'2024-04-10 13:16:15.385337','1','Iron man',2,'[{\"changed\": {\"fields\": [\"Video file\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'app','comment'),(7,'app','country'),(11,'app','favorite'),(8,'app','genre'),(9,'app','movie'),(10,'app','review'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2024-04-11  2:18:22
