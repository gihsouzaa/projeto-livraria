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
-- Table structure for table `autor`
--
DROP TABLE IF EXISTS `autor`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE = InnoDB AUTO_INCREMENT = 46 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `autor`
--
LOCK TABLES `autor` WRITE;

/*!40000 ALTER TABLE `autor` DISABLE KEYS */
;

INSERT INTO
  `autor`
VALUES
  (1, 'Machado de Assis', 'M', 'Brasil', '1839-06-21'),
(2, 'Clarice Lispector', 'F', 'Brasil', '1920-12-10'),
(3, 'Jorge Amado', 'M', 'Brasil', '1912-08-10'),
(4, 'Monteiro Lobato', 'M', 'Brasil', '1882-04-18'),
(5, 'Paulo Coelho', 'M', 'Brasil', '1947-08-24'),
(6, 'George Orwell', 'M', 'Reino Unido', '1903-06-25'),
(7, 'J.K. Rowling', 'F', 'Reino Unido', '1965-07-31'),
(
    8,
    'J.R.R. Tolkien',
    'M',
    'Reino Unido',
    '1892-01-03'
  ),
(9, 'Stephen King', 'M', 'EUA', '1947-09-21'),
(
    10,
    'Agatha Christie',
    'F',
    'Reino Unido',
    '1890-09-15'
  ),
(11, 'Dan Brown', 'M', 'EUA', '1964-06-22'),
(12, 'Yuval Noah Harari', 'M', 'Israel', '1976-02-24'),
(13, 'Jane Austen', 'F', 'Reino Unido', '1775-12-16'),
(14, 'Mark Twain', 'M', 'EUA', '1835-11-30'),
(15, 'C.S. Lewis', 'M', 'Reino Unido', '1898-11-29');

/*!40000 ALTER TABLE `autor` ENABLE KEYS */
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

-- Dump completed on 2026-06-14 21:55:24