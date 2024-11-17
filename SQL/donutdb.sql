-- MySQL dump 10.13  Distrib 9.0.1, for macos14.7 (arm64)
--
-- Host: localhost    Database: donutdb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `doughnut_menu`
--

DROP TABLE IF EXISTS `doughnut_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doughnut_menu` (
  `ProductKey` int NOT NULL,
  `Doughnut` text,
  `Type` text,
  `Price` double DEFAULT NULL,
  `pageinfo` text,
  `AvailableQuantity` int DEFAULT '20',
  PRIMARY KEY (`ProductKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doughnut_menu`
--

LOCK TABLES `doughnut_menu` WRITE;
/*!40000 ALTER TABLE `doughnut_menu` DISABLE KEYS */;
INSERT INTO `doughnut_menu` VALUES (1,'Raised','Glazed',5,'it\'s basic but it still tastes good',18),(2,'Raised','Sugar',6,'good luck getting the sugar of your hands',19),(3,'Raised','Chocolate',5,'perfect for eating with your morning coffee',20),(4,'Cake','Plain',7,'Our Plain Cake Donut (It\'s quite good)',19),(5,'Cake','Chocolate',7,'Our Chocolate Cake Donut - For the chocolate cake lovers',20),(6,'Cake','Sugar',7,'Our Cake Donut covered in sugar - what\'s not to love?',20),(7,'Filled','Lemon',8,'Lemon filled doughnut - a perfect tart blend.',20),(8,'Filled','Grape',8,'If you love grapes, you\'ll love our amazing jelly grape filled donut.',20),(9,'Filled','Custard',8,'Enjoy a tasty doughnut with our homemade custard. So good it\'s been a family recipe for centuries.',20);
/*!40000 ALTER TABLE `doughnut_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doughnut_orders`
--

DROP TABLE IF EXISTS `doughnut_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doughnut_orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CardNumber` varchar(255) DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Timestamp` date DEFAULT NULL,
  `Status` enum('open','closed') DEFAULT NULL,
  `TransactionLog` text,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doughnut_orders`
--

LOCK TABLES `doughnut_orders` WRITE;
/*!40000 ALTER TABLE `doughnut_orders` DISABLE KEYS */;
INSERT INTO `doughnut_orders` VALUES (12,'Billy Joel','13131414',10,'2025-03-14','closed',NULL),(23,'Billy Joel','14141414',5,'2024-11-23','closed',NULL),(24,'Arthur Morgan','114141314',10,'2024-11-15','closed',NULL),(25,'Billy Joel','1414141414',17,'2024-11-15','open',NULL);
/*!40000 ALTER TABLE `doughnut_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 14:01:00
