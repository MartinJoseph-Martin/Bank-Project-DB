CREATE DATABASE  IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bank`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `account_details`
--

DROP TABLE IF EXISTS `account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_details` (
  `acc_no` int NOT NULL AUTO_INCREMENT,
  `cust_id` int NOT NULL,
  `acc_typeid` int DEFAULT '1',
  `acc_balance` int DEFAULT '0',
  `b_id` int NOT NULL,
  `acc_status` int DEFAULT '1',
  PRIMARY KEY (`acc_no`),
  KEY `cust_id_idx` (`cust_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer_details` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1043 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_details`
--

LOCK TABLES `account_details` WRITE;
/*!40000 ALTER TABLE `account_details` DISABLE KEYS */;
INSERT INTO `account_details` VALUES (1008,8,1,1200,1,1),(1009,9,2,1000,2,1),(1010,8,2,1000,2,1),(1028,9,1,10400,7,1),(1030,39,1,10000,8,1),(1031,40,1,9500,8,1);
/*!40000 ALTER TABLE `account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type` (
  `account_typeid` int NOT NULL AUTO_INCREMENT,
  `account_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (1,'savings'),(2,'salary'),(3,'fixed deposit'),(4,'current');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_details` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `ifsc_code` varchar(45) NOT NULL,
  `bank_nameid` int DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,'sbi123',1,'pathanamthitta'),(2,'hdfc111',2,'pathanamthitta'),(4,'sbi444',NULL,'kollam'),(5,'sbi444',1,'kollam'),(6,'hdfc1234',2,'tvm'),(7,'fedrl2233',3,'kannur'),(8,'sbi999',1,'kochi'),(9,'',1,''),(10,'kollam',5,'axis'),(11,'axiss13',5,'kochi');
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_name`
--

DROP TABLE IF EXISTS `bank_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_name` (
  `bank_nameid` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bank_nameid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_name`
--

LOCK TABLES `bank_name` WRITE;
/*!40000 ALTER TABLE `bank_name` DISABLE KEYS */;
INSERT INTO `bank_name` VALUES (1,'sbi'),(3,'federal bank'),(4,'haha'),(5,'axis');
/*!40000 ALTER TABLE `bank_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_details` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(45) NOT NULL,
  `place` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_details`
--

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;
INSERT INTO `customer_details` VALUES (8,'king','abc',123,'abc','123'),(9,'don','abc',123,'abc','123'),(39,'jithin','abc',123,'hai','123'),(40,'martin','aaaa',222,'hhah','123');
/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_details` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `t_type` varchar(45) NOT NULL,
  `acc_no` int NOT NULL,
  `amount` int NOT NULL,
  `t_date` date DEFAULT NULL,
  `benef_acc_no` int DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `acc_no_idx` (`acc_no`),
  KEY `benf_acc_no_idx` (`benef_acc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1035 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_details`
--

LOCK TABLES `transaction_details` WRITE;
/*!40000 ALTER TABLE `transaction_details` DISABLE KEYS */;
INSERT INTO `transaction_details` VALUES (1014,'w',1008,100,'2021-03-03',NULL),(1015,'w',1008,100,'2021-03-03',NULL),(1016,'w',1008,100,'2021-03-03',NULL),(1017,'d',1008,100,'2021-03-03',NULL),(1018,'d',1008,100,'2021-09-22',NULL),(1019,'w',1008,1000,'2021-09-28',NULL),(1020,'d',1008,1000,'2021-09-28',NULL),(1021,'',1008,200,'2021-09-28',NULL),(1023,'d',1028,1000,'2021-09-30',NULL),(1024,'t',1028,500,'2021-09-30',NULL),(1025,'t',1028,100,'2021-09-30',NULL),(1026,'d',1028,10000,'2021-09-30',NULL),(1027,'t',1028,1000,'2021-09-30',1029),(1028,'d',1028,1000,'2021-09-30',NULL),(1029,'d',1030,10000,'2021-09-30',NULL),(1030,'d',1030,500,'2021-09-30',NULL),(1031,'d',1031,10000,'2021-09-30',NULL),(1032,'t',1030,500,'2021-09-30',1031),(1033,'w',1031,1000,'2021-10-02',NULL),(1034,'d',1008,100,'2021-10-03',NULL);
/*!40000 ALTER TABLE `transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_type` (
  `t_type` varchar(10) NOT NULL,
  `t_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`t_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES ('d','deposit'),('t','transfer'),('w','withdraw');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 14:18:02
