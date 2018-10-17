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
-- Table structure for table `tbl_productinfo`
--

DROP TABLE IF EXISTS `tbl_productinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_productinfo` (
  `idx` int(11) DEFAULT NULL,
  `productcode` varchar(200) DEFAULT NULL,
  `productname` varchar(200) DEFAULT NULL,
  `producttype` varchar(200) DEFAULT NULL,
  `productspec` varchar(200) DEFAULT NULL,
  `producttax` int(11) DEFAULT NULL,
  `productacquirer` varchar(200) DEFAULT NULL,
  `productmanufacturer` varchar(200) DEFAULT NULL,
  `productcost` decimal(65,0) DEFAULT NULL,
  `productcostnottax` decimal(65,0) DEFAULT NULL,
  `productcosttax` decimal(65,0) DEFAULT NULL,
  `productfactoryprice` decimal(65,0) DEFAULT NULL,
  `productfactorypricenottax` decimal(65,0) DEFAULT NULL,
  `productfactorypricetax` decimal(65,0) DEFAULT NULL,
  `productretailprice` decimal(65,0) DEFAULT NULL,
  `productretailpricenottax` decimal(65,0) DEFAULT NULL,
  `productretailpricetax` decimal(65,0) DEFAULT NULL,
  `productprice` decimal(65,0) DEFAULT NULL,
  `productpricenottax` decimal(65,0) DEFAULT NULL,
  `productpricetax` decimal(65,0) DEFAULT NULL,
  `barcode` varchar(200) DEFAULT NULL,
  `qrcode` varchar(200) DEFAULT NULL,
  `other` varchar(200) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `creater` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `companycode` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productinfo`
--

LOCK TABLES `tbl_productinfo` WRITE;
/*!40000 ALTER TABLE `tbl_productinfo` DISABLE KEYS */;
INSERT INTO `tbl_productinfo` VALUES (NULL,'GC-1000','DORIS',NULL,'L',0,'Persis','HSY.corp',1100,1000,100,0,0,0,1400,1200,200,0,0,0,'913452132','qecode135246','No Comment.','2018-10-05 02:23:04','MyStone','0','00001');
/*!40000 ALTER TABLE `tbl_productinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-17  0:06:01
