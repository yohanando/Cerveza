-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cerveza
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblinventory`
--

DROP TABLE IF EXISTS `tblinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinventory` (
  `intProdId` int(11) NOT NULL AUTO_INCREMENT,
  `strProdName` varchar(100) DEFAULT NULL,
  `strUnit` varchar(45) DEFAULT NULL,
  `intBarQty` int(11) DEFAULT NULL,
  `intStorageQty` int(11) DEFAULT NULL,
  `fltRetailPrc` float DEFAULT NULL,
  `intStat` int(11) DEFAULT NULL,
  PRIMARY KEY (`intProdId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinventory`
--

INSERT INTO `tblinventory` VALUES (8,'Red Horse','Bottle',30,30,150,1),(9,'Tanduay Ice','Bucket',12,25,50,1),(10,'Emperador ','Bottle',30,30,150,1),(11,'Red Wine','Bottle',12,35,500,1),(12,'asdsad','Bucket',41,12,1231,1),(13,'231','Bucket',12312,131,123123,1);

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaff` (
  `intStaffId` int(11) NOT NULL AUTO_INCREMENT,
  `strLname` varchar(100) DEFAULT NULL,
  `strFname` varchar(45) DEFAULT NULL,
  `strUsername` varchar(45) DEFAULT NULL,
  `strPassword` varchar(45) DEFAULT NULL,
  `strStatus` varchar(45) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  `strType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`intStaffId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` VALUES (0,'Samson','Jethro Jhay','admin','admin','Available',1,'admin'),(8,'Cadena','Homer','homie','123','Unavailable',0,'user'),(9,'Balmaceda','Jon','jon','123','Available',1,'user');

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `strUserName` varchar(50) NOT NULL,
  `strType` varchar(45) DEFAULT NULL,
  `strPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`strUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` VALUES ('admin','admin','admin'),('staff','user','12345678');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
