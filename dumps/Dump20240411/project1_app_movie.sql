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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11  2:19:17