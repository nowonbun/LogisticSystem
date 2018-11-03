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
-- Table structure for table `tbl_userinfo`
--

DROP TABLE IF EXISTS `tbl_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_userinfo` (
  `idx` bigint(20) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` char(1) NOT NULL,
  `permission` char(1) NOT NULL,
  `userNumber` varchar(30) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `userIncidentDay` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyCode` varchar(10) NOT NULL,
  `userName_en` varchar(255) DEFAULT NULL,
  `userNumberType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idx`,`userId`,`password`,`userName`),
  KEY `companyCode` (`companyCode`),
  CONSTRAINT `tbl_userinfo_ibfk_1` FOREIGN KEY (`companyCode`) REFERENCES `tbl_companyinfo` (`companycode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_userinfo`
--

LOCK TABLES `tbl_userinfo` WRITE;
/*!40000 ALTER TABLE `tbl_userinfo` DISABLE KEYS */;
INSERT INTO `tbl_userinfo` VALUES (1,'MyStone','mystone','Daniel Seog','0','1','0001','daniel_s@gmail.com','2018-01-01 00:00:00','2018-01-01 00:00:00','Nowonbun','00001','Daniel Seog','0');
/*!40000 ALTER TABLE `tbl_userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-03 16:35:13
