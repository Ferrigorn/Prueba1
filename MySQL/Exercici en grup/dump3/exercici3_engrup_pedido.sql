-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exercici3_engrup
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(10,2) DEFAULT NULL,
  `fecha_entrega` datetime NOT NULL,
  `estado_pedido_procesando` datetime NOT NULL,
  `estado_pedido_enviado` datetime DEFAULT NULL,
  `estado_pedido_recibido` datetime DEFAULT NULL,
  `estado_pedido_cancelado` datetime DEFAULT NULL,
  `id_tarjeta` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_tarjeta` (`id_tarjeta`,`id_usuario`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_tarjeta`, `id_usuario`) REFERENCES `tarjeta` (`id_tarjeta`, `id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2024-05-01 08:00:00',3,150.00,'2024-05-10 10:00:00','2024-05-01 08:00:00',NULL,NULL,NULL,1,1),(2,'2024-06-15 10:30:00',1,50.00,'2024-06-25 12:00:00','2024-06-15 10:30:00','2024-06-17 09:00:00',NULL,NULL,2,2),(3,'2024-07-20 09:45:00',2,80.00,'2024-07-30 15:30:00','2024-07-20 09:45:00','2024-07-21 11:20:00',NULL,NULL,3,3),(4,'2024-08-05 11:15:00',4,200.00,'2024-08-15 14:45:00','2024-08-05 11:15:00','2024-08-07 10:00:00',NULL,NULL,4,4),(5,'2024-09-10 14:00:00',1,30.00,'2024-09-20 16:00:00','2024-09-10 14:00:00','2024-09-12 08:30:00',NULL,NULL,5,5),(6,'2024-10-25 12:30:00',3,120.00,'2024-11-05 11:00:00','2024-10-25 12:30:00','2024-10-27 13:45:00',NULL,NULL,6,6),(7,'2024-11-12 09:00:00',2,90.00,'2024-11-22 10:30:00','2024-11-12 09:00:00','2024-11-13 08:15:00',NULL,NULL,7,7),(8,'2024-12-20 15:45:00',1,40.00,'2024-12-30 09:00:00','2024-12-20 15:45:00','2024-12-21 16:20:00',NULL,NULL,13,2),(9,'2025-01-05 10:00:00',5,250.00,'2025-01-15 12:00:00','2025-01-05 10:00:00','2025-01-07 11:30:00',NULL,NULL,9,9),(10,'2025-01-05 10:00:00',5,20.00,'2025-01-15 12:00:00','2025-01-05 10:00:00','2025-01-07 11:30:00',NULL,NULL,14,9),(11,'2025-02-15 08:30:00',2,80.00,'2025-02-25 14:45:00','2025-02-15 08:30:00','2025-02-17 09:45:00',NULL,NULL,10,10);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 10:40:29
