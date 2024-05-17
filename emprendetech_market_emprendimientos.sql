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
-- Table structure for table `emprendimientos`
--

DROP TABLE IF EXISTS `emprendimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprendimientos` (
  `idemprendimiento` int NOT NULL AUTO_INCREMENT,
  `idpersona` int DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `industria` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creadoridusuario` int DEFAULT NULL,
  `fechacreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idemprendimiento`),
  KEY `idpropietario` (`idpersona`),
  CONSTRAINT `emprendimientos_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `personas` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprendimientos`
--

LOCK TABLES `emprendimientos` WRITE;
/*!40000 ALTER TABLE `emprendimientos` DISABLE KEYS */;
INSERT INTO `emprendimientos` VALUES (1,52,'Emprendimiento 2','descripcion 2','industria 2',1,'2024-05-15 19:54:53','2024-05-15 19:54:53'),(2,53,'Emprendimiento 3','descripcion 3','industria 3',1,'2024-05-15 19:57:58','2024-05-15 19:57:58'),(52,152,'Emprendimiento 5','descripcion 5','industria 5',1,'2024-05-15 22:37:01','2024-05-15 22:37:01'),(102,203,'Emprendimiento 8','descripcion 8','industria 8',1,'2024-05-16 00:35:21','2024-05-16 00:35:21'),(152,252,'Emprendimiento 9','descripcion 9','industria 9',1,'2024-05-16 00:38:51','2024-05-16 00:38:51'),(202,452,'Emprendimiento 13','descripcion 13','industria 13',1,'2024-05-16 02:49:38','2024-05-16 02:49:38'),(252,502,'Emprendimiento 14','descripcion 14','industria 14',1,'2024-05-16 02:56:20','2024-05-16 02:56:20'),(302,602,'Emprendimiento 16','descripcion 16','industria 16',1,'2024-05-16 20:26:51','2024-05-16 20:26:51'),(303,602,'Emprendimiento 17','descripcion 17','industria 17',1,'2024-05-17 21:34:17','2024-05-17 21:34:17');
/*!40000 ALTER TABLE `emprendimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 15:45:39
