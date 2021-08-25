CREATE DATABASE  IF NOT EXISTS `dailynews` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dailynews`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dailynews
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `baseurl` varchar(100) DEFAULT NULL,
  `xml` varchar(100) DEFAULT NULL,
  `slogopath` varchar(100) DEFAULT NULL,
  `blogopath` varchar(100) DEFAULT NULL,
  `delf` int DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'zeenews','https://zeenews.india.com/rss/','india-national-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'nation'),(2,'zeenews','https://zeenews.india.com/rss/','world-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'world'),(3,'zeenews','https://zeenews.india.com/rss/','india-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'states'),(4,'zeenews','https://zeenews.india.com/rss/','asia-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'asia'),(5,'zeenews','https://zeenews.india.com/rss/','business.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'business'),(6,'zeenews','https://zeenews.india.com/rss/','sports-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'sports'),(7,'zeenews','https://zeenews.india.com/rss/','science-environment-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'science & environment'),(8,'zeenews','https://zeenews.india.com/rss/','entertainment-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'entertainment'),(9,'zeenews','https://zeenews.india.com/rss/','health-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'health'),(10,'zeenews','https://zeenews.india.com/rss/','blog-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'blogs'),(11,'zeenews','https://zeenews.india.com/rss/','technology-news.xml','images/channel_logo/zn_s.png','images/channel_logo/zn.png',NULL,'technology'),(12,'espn cricinfo','https://www.espncricinfo.com/rss/','content/story/feeds/6.xml','images/channel_logo/espn_s.png','images/channel_logo/espn_b.png',NULL,'india'),(13,'espn cricinfo','https://www.espncricinfo.com/rss/','content/story/feeds/0.xml','images/channel_logo/espn_s.png','images/channel_logo/espn_b.png',NULL,'cricket'),(14,'india tv news','https://www.indiatvnews.com/','rssnews/topstory-lifestyle.xml','images/channel_logo/india_tv_s.png','images/channel_logo/india_tv.png',NULL,'top story lifestyle'),(15,'india tv news','https://www.indiatvnews.com/','rssnews/topstory-entertainment.xml','images/channel_logo/india_tv_s.png','images/channel_logo/india_tv.png',NULL,'top story entertainment'),(16,'times Of india','https://timesofindia.indiatimes.com/','rssfeeds/-2128936835.cms','images/channel_logo/toi_s.png','images/channel_logo/toi.png',NULL,'india'),(17,'times Of india','https://timesofindia.indiatimes.com/','rssfeeds/296589292.cms','images/channel_logo/toi_s.png','images/channel_logo/toi.png',NULL,'world'),(18,'times Of india','https://timesofindia.indiatimes.com/','rssfeeds/1898055.cms','images/channel_logo/toi_s.png','images/channel_logo/toi.png',NULL,'business'),(19,'india today','https://www.indiatoday.in/rss','1206514','images/channel_logo/it_s.png','images/channel_logo/it.png',NULL,'nation'),(20,'india today','https://www.indiatoday.in/rss','1206550','images/channel_logo/it_s.png','images/channel_logo/it.png',NULL,'sports'),(21,'india today','https://www.indiatoday.in/rss','1206513','images/channel_logo/it_s.png','images/channel_logo/it.png',NULL,'economy');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-29 16:36:59
