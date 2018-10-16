-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: logisticsystem
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store` (
  `C00010` varchar(200) DEFAULT NULL,
  `C00020` varchar(200) DEFAULT NULL,
  `C00030` varchar(200) DEFAULT NULL,
  `C00040` varchar(200) DEFAULT NULL,
  `C00050` varchar(200) DEFAULT NULL,
  `C00060` varchar(200) DEFAULT NULL,
  `C00070` varchar(200) DEFAULT NULL,
  `C00080` varchar(200) DEFAULT NULL,
  `C00090` varchar(200) DEFAULT NULL,
  `C00100` varchar(200) DEFAULT NULL,
  `K00010` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('1','1','1','1','01','1','1','1','1','1','1'),('1','1','1','1','02','1','1','1','1','1','1'),('1','1','1','1','03','1','1','1','1','1','1'),('1','1','1','1','04','1','1','1','1','1','1'),('1','1','1','1','06','1','1','1','1','1','1'),('1','1','1','1','12','1','1','1','1','1','1'),('1','1','1','1','13','1','1','1','1','1','1'),('1','1','1','1','16','1','1','1','1','1','1'),('1','1','1','1','17','1','1','1','1','1','1'),('1','1','1','1','18','1','1','1','1','1','1'),('1','1','1','1','22','1','1','1','1','1','1'),('1','1','1','1','23','1','1','1','1','1','1'),('1','1','1','1','24','1','1','1','1','1','1'),('1','1','1','1','07','1','1','1','1','1','1'),('1','1','1','1','08','1','1','1','1','1','1'),('1','1','1','1','09','1','1','1','1','1','1');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-17  0:06:02
