-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: glb_blog
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `img` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Elif BENGÜ, Assistant Professor','elif.bengu@agu.edu.tr','https://yocad.org.tr/wp-content/uploads/2022/11/elif-bengu.jpg'),(2,'Kevser KAHRAMAN, Associate Professor, GLB 2xx Coordinator','kevser.kahraman@agu.edu.tr','http://www.agu.edu.tr/userfiles//Kevser_Kahraman/Kevser_Kahraman.png'),(3,'Çağlar KURÇ, Assistant Professor, GLB AGU Ways Coordinator','caglar.kurc@agu.edu.tr','https://avesis.agu.edu.tr/user/image/100985'),(4,'Sinan AKYÜZ, Lecturer, GLB 2xx Coordinator','sinan.akyuz@agu.edu.tr','http://www.agu.edu.tr/userfiles//Fuarlar/GSES/Dr.%20sinan%20akyu%CC%88z-o%CC%88g%CC%86retim%20-go%CC%88revlisi-.jpg'),(5,'Şebnem SOYLU, Research Assistant','sebnem.soylu@agu.edu.tr','http://www.agu.edu.tr/userfiles//CELT/s%CC%A7ebnem_resim.jpeg');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(1200) NOT NULL,
  `img` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `userid` int NOT NULL,
  `cat` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `posts_index` (`cat`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (24,'Lorem İpsum - 1','<p>Lorem İpsum - 1</p>','1683711698990agu.png','2023-05-10 12:41:39',22,'goal-13,goal-11,goal-6'),(25,'Lorem İpsum - 2','<p>Lorem İpsum - 2</p>','1683711736329logo.png','2023-05-10 12:42:16',22,'goal-7,goal-16,goal-1'),(26,'Teacher-1','<p>Teacher-1</p>','1683711974722sdglogo.png','2023-05-10 12:46:14',21,'goal-1,goal-2,goal-3,goal-4,goal-5,goal-6,goal-7,goal-8,goal-9,goal-10,goal-11,goal-12,goal-13,goal-14,goal-15,goal-16,goal-17'),(27,'Teacher-2','<h2><strong><em><u>Teacher-2</u></em></strong></h2><h3>Teacher-2</h3><p>Teacher-2</p>','1683712033168sdg2.png','2023-05-10 12:47:13',21,'goal-10,goal-3,goal-6,goal-17'),(28,'Lorem','<h2>İpsum</h2><p>Lorem</p><h3>İpsum</h3><p>Lorem</p>','1683712097834sdg4.png','2023-05-10 12:48:17',23,'goal-1,goal-2,goal-3,goal-4,goal-5,goal-6,goal-7,goal-8,goal-9,goal-10,goal-11,goal-12,goal-13,goal-14,goal-15,goal-16,goal-17');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdg`
--

DROP TABLE IF EXISTS `sdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(1500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdg`
--

LOCK TABLES `sdg` WRITE;
/*!40000 ALTER TABLE `sdg` DISABLE KEYS */;
INSERT INTO `sdg` VALUES (1,'https://www.un.org/sustainabledevelopment/wp-content/uploads/2019/08/E-Inverted-Icons_WEB-01-1024x1024.png','No Poverty','Bu öğenin açıklaması'),(2,'https://picsum.photos/400/300','Zero Hunger','Bu öğenin açıklaması'),(3,'https://picsum.photos/400/300','Good Health and Well-Being','Bu öğenin açıklaması'),(4,'https://picsum.photos/400/300','Quality Education','Bu öğenin açıklaması'),(5,'https://picsum.photos/400/300','Gender Equality','Bu öğenin açıklaması'),(6,'https://picsum.photos/400/300','Clean Water and Sanitation','Bu öğenin açıklaması'),(7,'https://picsum.photos/400/300','Affordable and Clean Energy','Bu öğenin açıklaması'),(8,'https://picsum.photos/400/300','Decent Work and Economic Growth','Bu öğenin açıklaması'),(9,'https://picsum.photos/400/300','Industry, Innovation and Infrastructure','Bu öğenin açıklaması'),(10,'https://picsum.photos/400/300','Reduced Inequalities','Bu öğenin açıklaması'),(11,'https://picsum.photos/400/300','Sustainable Cities and Communities','Bu öğenin açıklaması'),(12,'https://picsum.photos/400/300','Responsible Consumption and Production','Bu öğenin açıklaması'),(13,'https://picsum.photos/400/300','Climate Action','Bu öğenin açıklaması'),(14,'https://picsum.photos/400/300','Life Below Water','Bu öğenin açıklaması'),(15,'https://picsum.photos/400/300','Life On Land','Bu öğenin açıklaması'),(16,'https://picsum.photos/400/300','Peace,Justice and Strong Institutions','Bu öğenin açıklaması'),(17,'https://picsum.photos/400/300','Partnerships for the Goals','Bu öğenin açıklaması');
/*!40000 ALTER TABLE `sdg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teachers_userid` (`userid`),
  CONSTRAINT `teachers_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,21),(2,22),(3,23);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_index` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'Teacher-1','Teacher-1','$2a$10$pWYtnVebxzcs.tB2Q7rnuOU2Cv.m2PE5W0AiTHEXsTwO0Tnvi07.G',NULL),(22,'Yaga','Yaga','$2a$10$oEDLb1xLdL6FiL.ZiIdSKeZnfd3SOsqZVUdNhNu9NI1pTBym5yh0C',NULL),(23,'Yaga987','Yaga987','$2a$10$mNxsh9d7zenbgWYndI5rtes6AS3WoUy7HPEphBSNvw5ZGn7Z5rstK',NULL),(24,'Student-1','Student-1','$2a$10$HGTzv7jX5BH6QtH/0ipijuI/tJc6s5EbEKhuqv1Z492RJfkZx1TKe',NULL);
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

-- Dump completed on 2023-05-10 20:33:24
