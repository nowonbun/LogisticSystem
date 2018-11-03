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
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(100) NOT NULL,
  `productName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productType` int(11) DEFAULT '0',
  `productSpec` int(11) DEFAULT '0',
  `productTax` int(11) DEFAULT '0',
  `productAcquirer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productManufacturer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productCost` decimal(15,0) DEFAULT NULL,
  `productCostNotTax` decimal(15,0) DEFAULT NULL,
  `productCostTax` decimal(15,0) DEFAULT NULL,
  `productFactoryPrice` decimal(15,0) DEFAULT NULL,
  `productFactoryPriceNotTax` decimal(15,0) DEFAULT NULL,
  `productFactoryPriceTax` decimal(15,0) DEFAULT NULL,
  `productRetailPrice` decimal(15,0) DEFAULT NULL,
  `productRetailPriceNotTax` decimal(15,0) DEFAULT NULL,
  `productRetailPriceTax` decimal(15,0) DEFAULT NULL,
  `productPrice` decimal(15,0) DEFAULT NULL,
  `productPriceNotTax` decimal(15,0) DEFAULT NULL,
  `productPriceTax` decimal(15,0) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `QRcode` varchar(255) DEFAULT NULL,
  `other` text,
  `createdate` datetime DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `companyCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productinfo`
--

LOCK TABLES `tbl_productinfo` WRITE;
/*!40000 ALTER TABLE `tbl_productinfo` DISABLE KEYS */;
INSERT INTO `tbl_productinfo` VALUES (1,'GC-1000','a',0,10,10,'a','a',20,10,10,0,0,0,20,10,10,0,0,0,'10','10','10','2018-10-26 01:29:52','MyStone','0','00001');
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

-- Dump completed on 2018-11-01  0:29:37
