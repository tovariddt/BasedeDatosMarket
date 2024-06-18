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
-- Dumping events for database 'emprendetech_market'
--

--
-- Dumping routines for database 'emprendetech_market'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetDetalleVentaPorEmprendimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDetalleVentaPorEmprendimiento`(IN idEmprendimiento INT, IN fechacreacionMIN TIMESTAMP, IN fechacreacionMax TIMESTAMP)
BEGIN
  SET @query = CONCAT('SELECT
  emprendetech_market.detallespedido.idventa,
  emprendetech_market.detallespedido.fechacreacion,
  emprendetech_market.detallespedido.cantidad,
  emprendetech_market.productosunidad.nombre AS nombreUnidad,
  emprendetech_market.productosunidad.idmedida,
  emprendetech_market.productosunidad.precio,
  emprendetech_market.productos.idproducto,
  emprendetech_market.productos.sku,
  emprendetech_market.productos.nombre AS nombreProducto,
  emprendetech_market.productos.descripcion,
  emprendetech_market.productos.idcategoria,
  emprendetech_market.detallespedido.subtotal
FROM
  emprendetech_market.detallespedido
INNER JOIN emprendetech_market.productosunidad
  ON emprendetech_market.detallespedido.idproductounidad = emprendetech_market.productosunidad.idproductounidad
INNER JOIN emprendetech_market.productos
  ON emprendetech_market.productosunidad.idproducto = emprendetech_market.productos.idproducto where emprendetech_market.productos.idemprendimiento=', idEmprendimiento, ' AND detallespedido.fechacreacion BETWEEN \'', fechacreacionMIN, '\' AND \'', fechacreacionMax, '\';');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventario`()
BEGIN
  SET @query = CONCAT('SELECT
    emprendetech_market.productos.idproducto,
    emprendetech_market.productos.nombre,
    emprendetech_market.productos.sku,
    emprendetech_market.productos.descripcion,
    emprendetech_market.productos.idcategoria,
	emprendetech_market.emprendimientos.nombre as nombreEmprendimiento,
    emprendetech_market.productosunidad.nombre AS nombreUnidad,
    emprendetech_market.productosunidad.idmedida,
    emprendetech_market.productosunidad.precio,
    emprendetech_market.productosunidad.cantidad AS CantidadRestante
FROM
    emprendetech_market.productos
INNER JOIN emprendetech_market.productosunidad
    ON emprendetech_market.productos.idproducto = emprendetech_market.productosunidad.idproducto
    INNER JOIN emprendetech_market.emprendimientos ON emprendetech_market.productos.idemprendimiento = emprendetech_market.emprendimientos.idemprendimiento;');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInventarioEmprendimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInventarioEmprendimiento`(IN idEmprendimiento INT)
BEGIN
  SET @query = CONCAT('SELECT
    emprendetech_market.productos.idproducto,
    emprendetech_market.productos.nombre,
    emprendetech_market.productos.sku,
    emprendetech_market.productos.descripcion,
    emprendetech_market.productos.idcategoria,
    emprendetech_market.productosunidad.nombre AS nombreUnidad,
    emprendetech_market.productosunidad.idmedida,
    emprendetech_market.productosunidad.precio,
    emprendetech_market.productosunidad.cantidad AS CantidadRestante
FROM
    emprendetech_market.productos
INNER JOIN emprendetech_market.productosunidad
    ON emprendetech_market.productos.idproducto = emprendetech_market.productosunidad.idproducto
WHERE emprendetech_market.productos.idemprendimiento = ', idEmprendimiento, ';');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPaises` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPaises`()
BEGIN
    SELECT * FROM pais;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPedidosFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPedidosFecha`(IN fechacreacionMIN TIMESTAMP, IN fechacreacionMax TIMESTAMP)
BEGIN
  SET @query = CONCAT('SELECT 
    emprendetech_market.ventas.idventa, 
    emprendetech_market.pedidos.fechapedido, 
    emprendetech_market.ventas.estatus AS ventas_estatus,
    emprendetech_market.ventas.tipo,
    emprendetech_market.ventas.total,
    emprendetech_market.pedidos.estatus AS pedidos_estatus,
    emprendetech_market.clientes.nombre , 
    emprendetech_market.clientes.apellido_materno, 
    emprendetech_market.clientes.apellido_paterno,
    emprendetech_market.clientes.direccion, 
    emprendetech_market.clientes.referencia, 
    emprendetech_market.clientes.telefono,
     emprendetech_market.ventas.creadoridusuario
FROM 
    emprendetech_market.pedidos 
INNER JOIN 
    emprendetech_market.ventas
ON  
    emprendetech_market.pedidos.idventa = emprendetech_market.ventas.idventa
INNER JOIN 
    emprendetech_market.clientes
ON  
    emprendetech_market.clientes.idcliente = emprendetech_market.pedidos.idcliente
WHERE 
    ventas.tipo =''Pedido'' AND ventas.fechaventa BETWEEN \'', fechacreacionMin, '\' AND \'', fechacreacionMax, '\'  ORDER BY ventas.estatus COLLATE utf8_spanish2_ci;');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUnidadFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUnidadFecha`(IN fechacreacionMIN TIMESTAMP, IN fechacreacionMax TIMESTAMP)
BEGIN
  SET @query = CONCAT('SELECT
  emprendetech_market.detallespedido.idventa,
  emprendetech_market.detallespedido.fechacreacion,
  emprendetech_market.detallespedido.cantidad,
  emprendetech_market.productosunidad.nombre AS nombreUnidad,
  emprendetech_market.productosunidad.idmedida,
  emprendetech_market.productosunidad.precio,
  emprendetech_market.productos.idproducto,
  emprendetech_market.productos.sku,
  emprendetech_market.productos.nombre AS nombreProducto,
  emprendetech_market.productos.descripcion,
  emprendetech_market.productos.idcategoria,
  emprendetech_market.detallespedido.subtotal,
  emprendetech_market.ventas.estatus,
  emprendetech_market.ventas.tipo
FROM
  emprendetech_market.detallespedido
INNER JOIN emprendetech_market.productosunidad
  ON emprendetech_market.detallespedido.idproductounidad = emprendetech_market.productosunidad.idproductounidad
INNER JOIN emprendetech_market.productos
  ON emprendetech_market.productosunidad.idproducto = emprendetech_market.productos.idproducto 
  INNER JOIN emprendetech_market.ventas
  ON emprendetech_market.detallespedido.idventa = emprendetech_market.ventas.idventa
  where 
  detallespedido.fechacreacion BETWEEN \'', fechacreacionMin, '\' AND \'', fechacreacionMax, '\'  ORDER BY ventas.estatus COLLATE utf8_spanish2_ci;');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVentasFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetVentasFecha`(IN fechacreacionMIN TIMESTAMP, IN fechacreacionMax TIMESTAMP)
BEGIN
  SET @query = CONCAT('SELECT emprendetech_market.ventas.idventa, emprendetech_market.ventas.fechaventa, emprendetech_market.ventas.estatus, emprendetech_market.ventas.tipo, emprendetech_market.ventas.total, emprendetech_market.ventas.creadoridusuario
FROM emprendetech_market.ventas where ventas.tipo =''Venta'' AND ventas.fechaventa BETWEEN \'', fechacreacionMin, '\' AND \'', fechacreacionMax, '\'  ORDER BY ventas.estatus COLLATE utf8_spanish2_ci;');
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 21:27:59
