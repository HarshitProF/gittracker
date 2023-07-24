CREATE DATABASE  IF NOT EXISTS `freedb_Tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `freedb_Tracker`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: freedb_Tracker
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `channel_name` varchar(200) DEFAULT NULL,
  `channel_id` bigint DEFAULT NULL,
  `channel_status` varchar(50) DEFAULT NULL,
  `owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'crytpohub',-1934897423,'allowed',NULL),(3,'crytpohuhj',-19784897423,'allowed',NULL),(4,NULL,-1001984680552,'allowed',741728025);
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siganls`
--

DROP TABLE IF EXISTS `siganls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siganls` (
  `signal_id` int NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `channel` int DEFAULT NULL,
  `perpetual` varchar(200) DEFAULT NULL,
  `entry_price` float DEFAULT NULL,
  `leverage` int DEFAULT NULL,
  `place` int DEFAULT NULL,
  `type_trade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`signal_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `channel` (`channel`),
  CONSTRAINT `siganls_ibfk_1` FOREIGN KEY (`channel`) REFERENCES `channels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siganls`
--

LOCK TABLES `siganls` WRITE;
/*!40000 ALTER TABLE `siganls` DISABLE KEYS */;
INSERT INTO `siganls` VALUES (49,488,4,'BNBUSDT',0.8739,25,3,'Long'),(50,496,4,'BNBUSDT',0.8739,25,3,'Long'),(51,508,4,'BNBUSDT',0.8739,25,3,'Long');
/*!40000 ALTER TABLE `siganls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `target_id` int NOT NULL AUTO_INCREMENT,
  `post` int DEFAULT NULL,
  `target` float DEFAULT NULL,
  `target_status` varchar(90) DEFAULT NULL,
  `target_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`target_id`),
  KEY `post` (`post`),
  CONSTRAINT `targets_ibfk_1` FOREIGN KEY (`post`) REFERENCES `siganls` (`signal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (245,49,309.88,NULL,'Target1'),(246,49,308.888,'done','Target2'),(247,49,305.898,'done','Target3'),(248,49,304.013,'done','Target4'),(249,49,303.026,'done','Target5'),(250,49,303.03,'done','Target6'),(251,50,309.88,NULL,'Target1'),(252,50,308.888,'done','Target2'),(253,50,305.898,'done','Target3'),(254,50,304.013,'done','Target4'),(255,50,303.026,'done','Target5'),(256,50,303.03,'done','Target6'),(257,51,309.88,NULL,'Target1'),(258,51,308.888,NULL,'Target2'),(259,51,305.898,'done','Target3'),(260,51,304.013,'done','Target4'),(261,51,303.026,'done','Target5'),(262,51,303.03,'done','Target6');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13 20:19:05
