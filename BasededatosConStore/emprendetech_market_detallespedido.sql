-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: emprendetech_market
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `detallespedido`
--

DROP TABLE IF EXISTS `detallespedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallespedido` (
  `iddetallespedido` int NOT NULL AUTO_INCREMENT,
  `idventa` int DEFAULT NULL,
  `idproductounidad` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `creadoridusuario` int DEFAULT NULL,
  `fechacreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iddetallespedido`),
  KEY `idventa` (`idventa`),
  KEY `idproductounidad` (`idproductounidad`),
  CONSTRAINT `detallespedido_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`),
  CONSTRAINT `detallespedido_ibfk_2` FOREIGN KEY (`idproductounidad`) REFERENCES `productosunidad` (`idproductounidad`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallespedido`
--

LOCK TABLES `detallespedido` WRITE;
/*!40000 ALTER TABLE `detallespedido` DISABLE KEYS */;
INSERT INTO `detallespedido` VALUES (802,202,3,1,30.5,1,'2024-06-14 22:25:54','2024-06-14 22:25:54'),(803,202,4,1,20.5,1,'2024-06-14 22:25:59','2024-06-14 22:25:59'),(804,202,1,1,20.5,1,'2024-06-14 22:26:06','2024-06-14 22:26:06'),(805,202,4,1,20.5,1,'2024-06-14 22:31:11','2024-06-14 22:31:11'),(806,202,5,1,45.5,1,'2024-06-14 22:31:17','2024-06-14 22:31:17'),(852,202,5,3,136.5,1,'2024-06-15 03:24:33','2024-06-15 03:24:33'),(902,252,5,3,136.5,1,'2024-06-17 19:40:39','2024-06-17 19:40:39'),(903,252,1,3,61.5,1,'2024-06-17 19:40:51','2024-06-17 19:40:51'),(904,252,4,3,61.5,1,'2024-06-17 19:41:02','2024-06-17 19:41:02'),(905,253,4,3,61.5,1,'2024-06-17 19:44:07','2024-06-17 19:44:07'),(906,253,5,3,136.5,1,'2024-06-17 19:44:12','2024-06-17 19:44:12'),(907,253,2,3,121.5,1,'2024-06-17 19:44:18','2024-06-17 19:44:18'),(908,253,1,3,61.5,1,'2024-06-17 19:44:23','2024-06-17 19:44:23'),(909,254,1,10,205,1,'2024-06-17 19:48:11','2024-06-17 19:48:11');
/*!40000 ALTER TABLE `detallespedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 21:27:56
