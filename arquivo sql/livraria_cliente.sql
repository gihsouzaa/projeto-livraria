-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: livraria
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Souza','ana.souza@email.com','Vitória','ES','27999990001'),(2,'Bruno Oliveira','bruno.oliveira@email.com','Serra','ES','27999990002'),(3,'Carla Mendes','carla.mendes@email.com','Vila Velha','ES','27999990003'),(4,'Diego Santos','diego.santos@email.com','Cariacica','ES','27999990004'),(5,'Eduarda Lima','eduarda.lima@email.com','São Paulo','SP','11999990005'),(6,'Felipe Rocha','felipe.rocha@email.com','Rio de Janeiro','RJ','21999990006'),(7,'Gabriela Alves','gabriela.alves@email.com','Belo Horizonte','MG','31999990007'),(8,'Henrique Costa','henrique.costa@email.com','Curitiba','PR','41999990008'),(9,'Isabela Ribeiro','isabela.ribeiro@email.com','Porto Alegre','RS','51999990009'),(10,'João Pereira','joao.pereira@email.com','Salvador','BA','71999990010'),(11,'Karen Martins','karen.martins@email.com','Recife','PE','81999990011'),(12,'Lucas Barbosa','lucas.barbosa@email.com','Fortaleza','CE','85999990012'),(13,'Mariana Freitas','mariana.freitas@email.com','Manaus','AM','92999990013'),(14,'Nathan Gomes','nathan.gomes@email.com','Brasília','DF','61999990014'),(15,'Olívia Teixeira','olivia.teixeira@email.com','Goiânia','GO','62999990015'),(16,'Pedro Fernandes','pedro.fernandes@email.com','Natal','RN','84999990016'),(17,'Renata Carvalho','renata.carvalho@email.com','Maceió','AL','82999990017'),(18,'Samuel Duarte','samuel.duarte@email.com','João Pessoa','PB','83999990018'),(19,'Tatiane Azevedo','tatiane.azevedo@email.com','Aracaju','SE','79999990019'),(20,'Victor Nogueira','victor.nogueira@email.com','Teresina','PI','86999990020');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:55:26
