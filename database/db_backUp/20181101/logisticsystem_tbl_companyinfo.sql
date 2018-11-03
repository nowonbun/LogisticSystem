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
-- Table structure for table `tbl_companyinfo`
--

DROP TABLE IF EXISTS `tbl_companyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_companyinfo` (
  `idx` bigint(20) NOT NULL,
  `companyCode` varchar(10) NOT NULL,
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyPostNumber` varchar(10) DEFAULT NULL,
  `companySecurityNumber` varchar(100) DEFAULT NULL,
  `representative` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `representativeNumber` varchar(100) DEFAULT NULL,
  `companyNumber` varchar(30) DEFAULT NULL,
  `companyFax` varchar(30) DEFAULT NULL,
  `companyEmail` varchar(100) DEFAULT NULL,
  `representativeEmail` varchar(100) DEFAULT NULL,
  `companyAccountNumber` varchar(100) DEFAULT NULL,
  `companyAccountBank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyAccountBankCode` varchar(10) DEFAULT NULL,
  `companyAccountBankCodeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyAccountOwnerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyEstablishmentDate` datetime DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` char(1) NOT NULL,
  `orderAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyName_en` varchar(255) DEFAULT NULL,
  `companyAddress_en` varchar(255) DEFAULT NULL,
  `representative_en` varchar(100) DEFAULT NULL,
  `orderAddress_en` varchar(255) DEFAULT NULL,
  `companyNumberType` varchar(30) DEFAULT NULL,
  `companyFaxType` varchar(30) DEFAULT NULL,
  `companyRepresentativeNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idx`,`companyCode`,`companyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_companyinfo`
--

LOCK TABLES `tbl_companyinfo` WRITE;
/*!40000 ALTER TABLE `tbl_companyinfo` DISABLE KEYS */;
INSERT INTO `tbl_companyinfo` VALUES (1,'00001','NB Logistics','Nerima-Ku, Tokyo, Japan','011-0011','240918','Mr.Hwang','0002','00001','0101-1111','NB_Logis@NBLS.com','nwb@NLBS.com','0001000100010001','NLB Banks','0001','HawkEye','NLB corp','1900-01-01 00:00:00','1900-01-01 00:00:00','Ancestor','0','Wakou-si, Saitama-ken, Japan','NB Logistics','Nerima-Ku, Tokyo, Japan','Mr.Hwang','Wakou-si, Saitama-ken, Japan','1','1','08010101001');
/*!40000 ALTER TABLE `tbl_companyinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-01  0:29:35
