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
  `idx` int(11) NOT NULL,
  `companycode` varchar(200) DEFAULT NULL,
  `companyname` varchar(200) DEFAULT NULL,
  `companyaddress` varchar(200) DEFAULT NULL,
  `companypostnumber` varchar(200) DEFAULT NULL,
  `companysecuritynumber` varchar(200) DEFAULT NULL,
  `representative` varchar(200) DEFAULT NULL,
  `representativenumber` varchar(200) DEFAULT NULL,
  `companynumber` varchar(200) DEFAULT NULL,
  `companyfax` varchar(200) DEFAULT NULL,
  `companyemail` varchar(200) DEFAULT NULL,
  `representativeemail` varchar(200) DEFAULT NULL,
  `companyaccountnumber` varchar(200) DEFAULT NULL,
  `companyaccountbank` varchar(200) DEFAULT NULL,
  `companyaccountbankcode` varchar(200) DEFAULT NULL,
  `companyaccountbankcodename` varchar(200) DEFAULT NULL,
  `companyaccountownername` varchar(200) DEFAULT NULL,
  `companyestablishmentdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `creator` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `orderaddress` varchar(200) DEFAULT NULL,
  `companyname_en` varchar(200) DEFAULT NULL,
  `companyaddress_en` varchar(200) DEFAULT NULL,
  `representative_en` varchar(200) DEFAULT NULL,
  `orderaddress_en` varchar(200) DEFAULT NULL,
  `companynumbertype` varchar(200) DEFAULT NULL,
  `companyfaxtype` varchar(200) DEFAULT NULL,
  `companyrepresentativenumber` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idx`)
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

-- Dump completed on 2018-10-17  0:06:00
