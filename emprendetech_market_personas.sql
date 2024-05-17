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
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_materno` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_paterno` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creadoridusuario` int DEFAULT NULL,
  `fechacreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_codigo_postal` bigint unsigned NOT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `id_codigo_postal_idx` (`id_codigo_postal`),
  CONSTRAINT `id_codigo_postal` FOREIGN KEY (`id_codigo_postal`) REFERENCES `codigo_postal` (`id_codigo_postal`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'David','Tov','Domi','Calle 2','1',NULL,1,'2024-05-14 21:13:14','2024-05-14 21:13:14',1),(2,'David 2','Dom 2','Tov 2','Calle 2','1',NULL,1,'2024-05-15 19:51:20','2024-05-15 19:51:20',4),(52,'David 2','Dom 2','Tov 2','Calle 2','1',NULL,1,'2024-05-15 19:54:52','2024-05-15 19:54:52',4),(53,'David 3','Dom 3','Tov 3','Calle 3','1',NULL,1,'2024-05-15 19:57:58','2024-05-15 19:57:58',4),(54,'David 4','Dom 4','Tov 4','Calle 4','1',NULL,1,'2024-05-15 19:58:32','2024-05-15 19:58:32',4),(102,'David 4','Dom 4','Tov 4','Calle 4','1','9221762952',1,'2024-05-15 22:35:15','2024-05-15 22:35:15',6),(152,'David 6','Dom 6','Tov 6','Calle 6','1','9221762952',1,'2024-05-15 22:37:01','2024-05-15 22:37:01',6),(202,'David 7','Dom 7','Tov 7','Calle 7','1','9221762957',1,'2024-05-16 00:33:48','2024-05-16 00:33:48',6),(203,'David 8','Dom 8','Tov 8','Calle 8','1','9221762957',1,'2024-05-16 00:35:21','2024-05-16 00:35:21',6),(252,'David 9','Dom 9','Tov 9','Calle 9','1','9221762957',1,'2024-05-16 00:38:51','2024-05-16 00:38:51',6),(302,'David 10','Dom 10','Tov 10','Calle 10','1',NULL,1,'2024-05-16 02:33:22','2024-05-16 02:33:22',10),(352,'David 11','Dom 11','Tov 11','Calle 11','1',NULL,1,'2024-05-16 02:39:45','2024-05-16 02:39:45',11),(402,'David 12','Dom 12','Tov 12','Calle 11','1',NULL,1,'2024-05-16 02:43:31','2024-05-16 02:43:31',11),(452,'David 13','Dom 13','Tov 13','Calle 11','1',NULL,1,'2024-05-16 02:49:37','2024-05-16 02:49:37',11),(502,'David 14','Dom 14','Tov 14','Calle 14','1','9221744447',1,'2024-05-16 02:56:20','2024-05-16 02:56:20',11),(552,'David 15','Dom 15','Tov 15','Calle 15','1','9221755557',1,'2024-05-16 20:25:02','2024-05-16 20:25:02',15),(602,'David 16','Dom 16','Tov 16','Calle 16','1','9221755557',1,'2024-05-16 20:26:50','2024-05-16 20:26:50',15);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
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
