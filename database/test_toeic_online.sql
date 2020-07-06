-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.3    Database: test-toeic
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avatar` (
  `id_avatar` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_avatar`),
  KEY `FKi1m9wew0l3fyd137rbco4jchp` (`id_user`),
  CONSTRAINT `FKi1m9wew0l3fyd137rbco4jchp` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (1,'2020-06-02','2020-06-03','Vinh Phuc','blog_1.png','Thinh Luffy',10);
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `count` int DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_category`),
  KEY `FK54bo0si6ly4a07kc7sosdv6vx` (`id_user`),
  CONSTRAINT `FK54bo0si6ly4a07kc7sosdv6vx` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2020-05-31','2020-05-31',0,'category - author.png','Ahihi',9),(2,'2020-06-01','2020-06-01',0,'category - blog_1.png','Ahihi1',9);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `like_comment` bit(1) DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `sumLikeComment` int DEFAULT NULL,
  `id_avatar` int DEFAULT NULL,
  `id_post` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `FKhn06dfb0k814hew8ls4qhtbj4` (`id_avatar`),
  KEY `FK5d3jnie61rlb5an9r4hm9wq9n` (`id_post`),
  KEY `FKiuf9gwufew9y31h0rql66f9w9` (`id_user`),
  CONSTRAINT `FK5d3jnie61rlb5an9r4hm9wq9n` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `FKhn06dfb0k814hew8ls4qhtbj4` FOREIGN KEY (`id_avatar`) REFERENCES `avatar` (`id_avatar`),
  CONSTRAINT `FKiuf9gwufew9y31h0rql66f9w9` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id_exam` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nameExam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sumPoint` int DEFAULT NULL,
  `id_level` int DEFAULT NULL,
  PRIMARY KEY (`id_exam`),
  KEY `FK258q4dtlpkwsvxwoptequxh3a` (`id_level`),
  CONSTRAINT `FK258q4dtlpkwsvxwoptequxh3a` FOREIGN KEY (`id_level`) REFERENCES `level_toeic` (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_toeic`
--

DROP TABLE IF EXISTS `level_toeic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level_toeic` (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_level`),
  KEY `FK77qbhs67nqevdf1gunnq20akr` (`id_user`),
  CONSTRAINT `FK77qbhs67nqevdf1gunnq20akr` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_toeic`
--

LOCK TABLES `level_toeic` WRITE;
/*!40000 ALTER TABLE `level_toeic` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_toeic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id_token` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `expiryDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id_token`),
  KEY `FKcpwsa6cqrnxctqb118l0nyca1` (`id_user`),
  CONSTRAINT `FKcpwsa6cqrnxctqb118l0nyca1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (12,'c14d71dc-c130-47c7-8a0a-55303e58806d',10,'2020-05-31 05:55:46.100000','2020-05-31 05:56:46.100000'),(23,'bf72b782-d804-461a-8f82-bde0a2960a99',10,'2020-06-01 06:39:07.155000','2020-06-01 06:40:07.155000');
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `FKc90g2hw8haphps63gtfyetj31` (`id_category`),
  CONSTRAINT `FKc90g2hw8haphps63gtfyetj31` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'2020-06-01','2020-06-01','Học Lập Trình','author.png','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Dù phải làm khách nhưng Dortmund hoàn toàn tự tin khi chỉ phải chạm trán đối thủ đang đứng cuối bảng xếp hạng&nbsp;Paderborn. Sức ép nhanh chóng được đội khách tạo ra, thế nhưng lần lượt những cơ hội ngon ăn đều bị bỏ lỡ một cách đáng tiếc.&nbsp;</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center;\"><img class=\"news-image initial loading\" alt=\"Video highlight trận Paderborn - Dortmund: Hiệp 2 vỡ trận, hãi hùng set tennis - 1\" src=\"https://cdn.24h.com.vn/upload/2-2020/images/2020-06-01/Video-highlight-tran-Paderborn---Dortmund-d1--4--1590948327-553-width660height371.jpg\" data-was-processed=\"true\" style=\"border: 0px; line-height: normal; max-width: 660px;\"></p><p align=\"center\" class=\"img_chu_thich_0407\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;\">Dortmund thắng đậm 6-1</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trái ngược với&nbsp;hiệp một không có bàn thắng được ghi, 45 phút còn lại bất ngờ&nbsp;chứng kiến màn hủy diệt của đội khách. Khi trận&nbsp;cuồng phong bắt đầu nổi lên, Paderborn chống đỡ kiên cường trước khi bị Hazard chọc thủng&nbsp;lưới ở phút 54.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Sau đó, Jadon Sancho biến thành nhân vật chính với 3 pha lập công mãn nhãn, xen kẽ vào đó là 2 pha làm bàn của Hakimi và&nbsp;Schmelzer. Về phần đội chủ nhà chỉ có được một bàn thắng trên chấm 11m của&nbsp;Hunemeier. Thắng đậm chung cuộc 6-1, Dortmund tạm rút ngắn khoảng cách với đội đầu bảng Bayern xuống còn 7 điểm.</p>','Ahihi1',1),(2,'2020-06-01','2020-06-01','Quan Tri He Thong','post - blog_4.png','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Phòng CSGT Đường bộ - đường sắt (PC08) Công an TP.HCM thống kê sau 15 ngày tổng kiểm soát các loại xe trên địa bàn (từ 15 đến 29-5), các đơn vị đã xử lý 14.435 trường hợp, tạm giữ 2.501 phương tiện và xử phạt vi phạm hành chính hơn 8,2 tỉ đồng.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">So với 15 ngày liền kề, PC08 Công an TP.HCM cho biết tăng 757 trường hợp bị xử lý và 1.248 phương tiện bị tạm giữ. Còn so sánh với cùng kỳ năm ngoái, các vi phạm bị xử lý tăng đến 2.730 trường hợp cùng 1.357 phương tiện bị tạm giữ.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Các lỗi vi phạm phổ biến trong 15 ngày vừa qua được PC08 Công an TP.HCM thống kê phổ biến là vi phạm về nồng độ cồn (1.365 trường hợp); lưu thông không đúng phần đường, làn đường (1.853 trường hợp); vi phạm về lỗi dừng, đỗ (1.496 trường hợp)...</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center;\"><img class=\"news-image initial loading\" alt=\"Mỗi ngày ở TP.HCM gần 1.000 người vi phạm khi CSGT được dừng xe không cần lý do - 1\" src=\"https://cdn.24h.com.vn/upload/2-2020/images/2020-06-01//1591001490-92e945fd534e39dec9a89118a7117f94.jpg\" width=\"660\" data-was-processed=\"true\" style=\"border: 0px; line-height: normal; max-width: 660px;\"></p><p class=\"img_chu_thich_0407\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;\">Gần 15.000 trường hợp bị xử lý, hàng ngàn xe bị tạm giữ trong 15 ngày CSGT tại TP.HCM tổng kiểm soát</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đáng chú ý, quá trình tuần tra, kiểm soát, lực lượng chức năng phát hiện và xử lý nhiều trường hợp các đối tượng phạm tội như trộm cắp xe, nghi vận chuyển ma tuý. Những vụ việc này CSGT đã bàn giao các cơ quan chức năng xử lý theo thẩm quyền.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">PC08 Công an TP.HCM đánh giá trong 15 ngày thực hiện tổng kiểm soát, tình hình trật tự an toàn giao thông trên địa bàn TP được duy trì ổn định, y thức tham gia giao thông của nhiều người cũng được nâng lên đáng kể trong việc tự giác chấp hành các quy định khi đi đường.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">\"Lực lượng CSGT đang tiếp tục duy trì các nội dung và kế hoạch tổng kiểm soát trên địa bàn TP. Đồng thời tăng cường công tác tuần tra kiểm soát, điều hòa giao thông trên đường và sẽ tập trung vào việc kéo giảm tai nạn, phòng ngừa, giải tỏa ùn tắc...\" - đại diện PC08 Công an TP.HCM cho biết.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Đợt tổng kiểm soát các loại xe được CSGT tại TP.HCM triển khai chung theo kế hoạch ở cả nước, bắt đầu thực hiện từ hôm 15-5 và sẽ kéo dài đến hết 14-6.</p>','Ahihi3',1),(3,'2020-06-01','2020-06-01','Việc Bundesliga trở lại đã vô tình tiếp tay cho một trong những \"họng pháo\" hay nhất châu Âu làm lu mờ bộ đôi Ronaldo - Messi. Tiền đạo đang thăng hoa đó là ai? Chi tiết sẽ có trong Clip 1 phút Bóng đá 24H ngày 1/6.','post - blog_1.png','<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Trong bối cảnh các giải VĐQG chưa thể trở lại vì ảnh hưởng của dịch bệnh Covid-19, giải VĐQG Đức chính là giải đấu lớn nhất châu Âu thi đấu thời điểm này. Việc Bundesliga trở lại đã vô tình tiếp tay cho một trong những \"họng pháo\" hay nhất châu Âu là Lewandowski làm lu mờ bộ đôi&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/cristiano-ronaldo-c48e4384.html\" title=\"Ronaldo\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">Ronaldo</a>&nbsp;-&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/lionel-messi-c48e4386.html\" title=\"Messi\" style=\"line-height: 1.6; color: rgb(0, 0, 255);\">Messi</a>.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Mục tiêu giành Chiếc giày Vàng châu Âu đang được tiền đạo Bayern Munich đặt lên hàng đầu và anh đã tận dụng rất tốt với 7 bàn thắng sau 4 trận gần nhất tại Bundesliga.&nbsp;Với tổng cộng 29 pha lập công tại giải VĐQG Đức lúc này, ngôi sao người Ba Lan đã vượt qua Ciro Immobile với 2 bàn nhiều hơn, để dẫn đầu cuộc đua&nbsp; danh hiệu Chiếc giày Vàng châu Âu.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Có thể nói, với số bàn thắng hiện tại, bộ đôi siêu sao Ronaldo và Messi gần như không thể đuổi kịp chân sút 32 tuổi. Tất cả những thông tin này sẽ đều có trong Clip 1 phút Bóng đá 24H ngày 1/6/2020. Mời các bạn chú ý đón xem!</p>','Siêu tiền đạo làm lu mờ Ronaldo - Messi, thăng hoa số 1 châu Âu (Clip 1 phút Bóng đá 24H)',2);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_user`
--

DROP TABLE IF EXISTS `profile_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_user` (
  `id_profile` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `rank_profile` int DEFAULT NULL,
  `total_point` int DEFAULT NULL,
  `id_exam` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_profile`),
  KEY `FK79s1df2jgxawbltyx3ys1g1c3` (`id_user`),
  KEY `FKnixi5gbrrx29miv28mk3mplae` (`id_exam`),
  CONSTRAINT `FK79s1df2jgxawbltyx3ys1g1c3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  CONSTRAINT `FKnixi5gbrrx29miv28mk3mplae` FOREIGN KEY (`id_exam`) REFERENCES `exam` (`id_exam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,'ROLE_ADMIN'),(2,NULL,'ROLE_MEMBER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'2020-05-30','2020-05-30',_binary '',0,'thinhle27081995@gmail.com','$2a$10$0skHDv2rezFcm1nKKGjb2OzTiR8o9Q5/i3ml5e0TNM66Ws7IE0Rty','0964238591',_binary '','thinhluffy'),(10,'2020-05-31','2020-05-31',_binary '\0',0,'lesinhthinh.it@gmail.com','$2a$10$AxOxX2rPAR1LvfPK3VrhWOdOADZMSqjazhBv9pSQt5jL/E2bFCxlu',NULL,_binary '','SinhThinhIT');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `id_user` int NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_user`,`id_role`),
  KEY `FK3jjx0t0dfqqkg4032k480n5lk` (`id_role`),
  CONSTRAINT `FK3jjx0t0dfqqkg4032k480n5lk` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  CONSTRAINT `FK6ywr92flw5416dup8uc2egb83` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (9,1),(9,2),(10,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03  2:58:50
