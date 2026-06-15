-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: livraria
-- ------------------------------------------------------
-- Server version	8.0.45
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!50503 SET NAMES utf8 */
;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;

/*!40103 SET TIME_ZONE='+00:00' */
;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `item_venda`
--
DROP TABLE IF EXISTS `item_venda`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `item_venda` (
  `id_item_venda` int NOT NULL AUTO_INCREMENT,
  `id_venda` int DEFAULT NULL,
  `id_livro` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `valor_unitario` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`id_item_venda`),
  KEY `id_venda` (`id_venda`),
  KEY `id_livro` (`id_livro`),
  CONSTRAINT `item_venda_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_venda_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `item_venda_chk_1` CHECK ((`quantidade` > 0)),
  CONSTRAINT `item_venda_chk_2` CHECK ((`valor_unitario` > 0))
) ENGINE = InnoDB AUTO_INCREMENT = 136 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `item_venda`
--
LOCK TABLES `item_venda` WRITE;

/*!40000 ALTER TABLE `item_venda` DISABLE KEYS */
;

INSERT INTO
  `item_venda`
VALUES
  (1, 1, 1, 2, 50.00),
(2, 1, 2, 1, 40.00),
(3, 2, 3, 2, 60.00),
(4, 2, 4, 1, 70.00),
(5, 3, 5, 3, 35.00),
(6, 3, 6, 1, 55.00),
(7, 4, 7, 2, 45.00),
(8, 4, 8, 1, 65.00),
(9, 5, 9, 2, 38.00),
(10, 5, 10, 2, 52.00),
(11, 6, 11, 1, 50.00),
(12, 6, 12, 2, 40.00),
(13, 7, 13, 1, 60.00),
(14, 7, 14, 2, 70.00),
(15, 8, 15, 3, 35.00),
(16, 8, 16, 1, 55.00),
(17, 9, 17, 2, 45.00),
(18, 9, 18, 1, 65.00),
(19, 10, 19, 2, 38.00),
(20, 10, 20, 2, 52.00),
(21, 11, 21, 1, 50.00),
(22, 11, 22, 2, 40.00),
(23, 12, 23, 1, 60.00),
(24, 12, 24, 2, 70.00),
(25, 13, 25, 3, 35.00),
(26, 13, 26, 1, 55.00),
(27, 14, 27, 2, 45.00),
(28, 14, 28, 1, 65.00),
(29, 15, 29, 2, 38.00),
(30, 15, 30, 2, 52.00),
(31, 16, 31, 1, 50.00),
(32, 16, 32, 2, 40.00),
(33, 17, 33, 1, 60.00),
(34, 17, 34, 2, 70.00),
(35, 18, 35, 3, 35.00),
(36, 18, 36, 1, 55.00),
(37, 19, 37, 2, 45.00),
(38, 19, 38, 1, 65.00),
(39, 20, 39, 2, 38.00),
(40, 20, 40, 2, 52.00),
(41, 21, 1, 1, 50.00),
(42, 22, 2, 1, 40.00),
(43, 23, 3, 1, 60.00),
(44, 24, 4, 1, 70.00),
(45, 25, 5, 1, 35.00);

/*!40000 ALTER TABLE `item_venda` ENABLE KEYS */
;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2026-06-14 21:55:27