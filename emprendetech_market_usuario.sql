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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombreusuario` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contrasena` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idrol` int DEFAULT NULL,
  `idperfil` int DEFAULT NULL,
  `idpersona` int NOT NULL,
  `fechacreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `creadoridusuario` int DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `idrol` (`idrol`),
  KEY `idperfil` (`idperfil`),
  KEY `usuario_ibfk_2_idx` (`idpersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `roles` (`idrol`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idperfil`) REFERENCES `perfiles` (`idperfil`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idpersona`) REFERENCES `personas` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (202,'David Domi','Correo@gmail.com','1234',1,NULL,1,'2024-05-14 21:13:14','2024-05-14 21:13:14',1),(252,'David 2 Tov 2','Correo2@gmail.com','contrasena2',3,NULL,2,'2024-05-15 19:51:21','2024-05-15 19:51:21',1),(302,'David 2 Tov 2','Correo2@gmail.com','contrasena2',3,NULL,52,'2024-05-15 19:54:53','2024-05-15 19:54:53',1),(303,'David 3 Tov 3','Correo3@gmail.com','contrasena3',3,NULL,53,'2024-05-15 19:57:58','2024-05-15 19:57:58',1),(304,'David 4 Tov 4','Correo4@gmail.com','contrasena4',1,NULL,54,'2024-05-15 19:58:32','2024-05-15 19:58:32',1),(352,'David 4 Tov 4','Correo5@gmail.com','contrasena5',1,NULL,102,'2024-05-15 22:35:16','2024-05-15 22:35:16',1),(402,'David 6 Tov 6','Correo6@gmail.com','contrasena6',1,3,152,'2024-05-15 22:37:01','2024-05-15 22:37:01',1),(452,'David 7 Tov 7','Correo7@gmail.com','contrasena7',1,1,202,'2024-05-16 00:33:49','2024-05-16 00:33:49',1),(453,'David 8 Tov 8','Correo8@gmail.com','contrasena8',1,3,203,'2024-05-16 00:35:21','2024-05-16 00:35:21',1),(502,'David 9 Tov 9','Correo9@gmail.com','contrasena9',1,3,252,'2024-05-16 00:38:51','2024-05-16 00:38:51',1),(552,'David 10 Tov 10','Correo10@gmail.com','contrasena10',1,NULL,302,'2024-05-16 02:33:23','2024-05-16 02:33:23',1),(602,'David 11 Tov 11','Correo11@gmail.com','contrasena11',1,NULL,352,'2024-05-16 02:39:46','2024-05-16 02:39:46',1),(652,'David 12 Tov 12','Correo12@gmail.com','contrasena12',1,NULL,402,'2024-05-16 02:43:32','2024-05-16 02:43:32',1),(702,'David 13 Tov 13','Correo13@gmail.com','contrasena13',1,NULL,452,'2024-05-16 02:49:38','2024-05-16 02:49:38',1),(752,'David 14 Tov 14','Correo14@gmail.com','contrasena14',1,3,502,'2024-05-16 02:56:20','2024-05-16 02:56:20',1),(802,'David 15 Tov 15','Correo15@gmail.com','contrasena15',1,3,552,'2024-05-16 20:25:03','2024-05-16 20:25:03',1),(852,'David 16 Tov 16','Correo16@gmail.com','contrasena16',1,3,602,'2024-05-16 20:26:51','2024-05-16 20:26:51',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 15:45:38
