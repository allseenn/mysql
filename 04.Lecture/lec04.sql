-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 192.168.1.7    Database: lec04
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `AccountSum` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'John','Doe',1000.50),(2,'Jane','Smith',500.25),(3,'Mike','Johnson',1500.75),(4,'Anna','Miller',2000.00),(5,'David','Brown',1200.30),(6,'Karen','Davis',800.20),(7,'Steven','Wilson',1900.10),(8,'Emily','Taylor',950.70),(9,'Brian','Clark',1750.00),(10,'Michelle','Anderson',1350.60),(11,'Daniel','Moore',1800.90),(12,'Emma','Thomas',700.40),(13,'Robert','White',1100.80),(14,'Sarah','Walker',2100.95),(15,'Kevin','Harris',650.15),(16,'Olivia','Lee',1600.25),(17,'William','Young',1400.50),(18,'Jessica','Green',900.70),(19,'Jason','Evans',1150.90),(20,'Linda','Hall',1750.80);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `EmpId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'John Smith','123 Main St, City','123-456-7890',5000.00),(2,'Jane Doe','456 Elm St, City','987-654-3210',4000.50),(3,'Mike Johnson','789 Oak St, City','456-123-7890',4500.75),(4,'Anna Miller','321 Pine St, City','321-654-9870',5500.00),(5,'David Brown','654 Cedar St, City','789-123-4560',4800.30),(6,'Karen Davis','987 Maple St, City','654-321-9870',4200.20),(7,'Steven Wilson','654 Oak St, City','123-789-4560',4700.10),(8,'Emily Taylor','789 Elm St, City','456-789-3210',5200.70),(9,'Brian Clark','321 Pine St, City','789-456-1230',4000.00),(10,'Michelle Anderson','987 Maple St, City','321-987-6540',4200.60),(11,'Daniel Moore','123 Main St, City','654-123-9870',4800.90),(12,'Emma Thomas','123 Elm St, City','987-789-3210',4600.40),(13,'Robert White','654 Pine St, City','789-456-1230',4400.80),(14,'Sarah Walker','987 Maple St, City','123-789-4560',5200.95),(15,'Kevin Harris','321 Cedar St, City','654-321-9870',4300.15),(16,'Olivia Lee','987 Oak St, City','789-123-4560',4800.25),(17,'William Young','123 Elm St, City','123-456-7890',4100.50),(18,'Jessica Green','456 Pine St, City','321-987-6540',4000.70),(19,'Jason Evans','789 Cedar St, City','654-123-9870',4300.90),(20,'Linda Hall','321 Oak St, City','789-456-1230',5000.80);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 21:36:33
