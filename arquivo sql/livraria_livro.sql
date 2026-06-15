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
-- Table structure for table `livro`
--
DROP TABLE IF EXISTS `livro`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `ano_publicacao` int DEFAULT NULL,
  `paginas` int DEFAULT NULL,
  `valor` decimal(10, 2) DEFAULT NULL,
  `estoque` int DEFAULT NULL,
  `id_editora` int DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `id_editora` (`id_editora`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `livro_chk_1` CHECK ((`paginas` > 0)),
  CONSTRAINT `livro_chk_2` CHECK ((`valor` > 0)),
  CONSTRAINT `livro_chk_3` CHECK ((`estoque` >= 0))
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `livro`
--
LOCK TABLES `livro` WRITE;

/*!40000 ALTER TABLE `livro` DISABLE KEYS */
;

INSERT INTO
  `livro`
VALUES
  (
    1,
    'Dom Casmurro',
    '9788535902771',
    1899,
    256,
    39.90,
    10,
    1,
    1
  ),
(
    2,
    'Memórias Póstumas de Brás Cubas',
    '9788535902788',
    1881,
    208,
    34.90,
    8,
    1,
    1
  ),
(
    3,
    'A Hora da Estrela',
    '9788535921024',
    1977,
    96,
    29.90,
    12,
    2,
    1
  ),
(
    4,
    'Capitães da Areia',
    '9788535914842',
    1937,
    256,
    42.90,
    9,
    2,
    1
  ),
(
    5,
    'Sítio do Picapau Amarelo',
    '9788525056606',
    1920,
    150,
    25.90,
    15,
    3,
    6
  ),
(
    6,
    'O Alquimista',
    '9788576653721',
    1988,
    208,
    39.90,
    20,
    3,
    7
  ),
(7, '1984', '9780451524935', 1949, 328, 49.90, 7, 4, 2),
(
    8,
    'Harry Potter e a Pedra Filosofal',
    '9788532511010',
    1997,
    264,
    59.90,
    10,
    4,
    10
  ),
(
    9,
    'O Senhor dos Anéis',
    '9780618640157',
    1954,
    1178,
    99.90,
    5,
    5,
    10
  ),
(
    10,
    'It: A Coisa',
    '9781501142970',
    1986,
    1138,
    79.90,
    6,
    5,
    3
  ),
(
    11,
    'Assassinato no Expresso do Oriente',
    '9780062693662',
    1934,
    256,
    39.90,
    11,
    6,
    3
  ),
(
    12,
    'O Código Da Vinci',
    '9780307474278',
    2003,
    489,
    54.90,
    13,
    6,
    2
  ),
(
    13,
    'Sapiens',
    '9780062316097',
    2011,
    498,
    69.90,
    10,
    7,
    8
  ),
(
    14,
    'Orgulho e Preconceito',
    '9780141439518',
    1813,
    279,
    35.90,
    9,
    7,
    1
  ),
(
    15,
    'As Aventuras de Tom Sawyer',
    '9780486400778',
    1876,
    274,
    29.90,
    8,
    8,
    4
  ),
(
    16,
    'As Crônicas de Nárnia',
    '9780066238500',
    1956,
    767,
    89.90,
    6,
    8,
    10
  ),
(
    17,
    'Revolução dos Bichos',
    '9780451526342',
    1945,
    112,
    29.90,
    12,
    1,
    2
  ),
(
    18,
    'Animais Fantásticos',
    '9781338132311',
    2001,
    128,
    39.90,
    10,
    2,
    10
  ),
(
    19,
    'O Hobbit',
    '9780547928227',
    1937,
    310,
    49.90,
    14,
    3,
    10
  ),
(20, 'Carrie', '9780307743664', 1974, 199, 34.90, 9, 4, 3),
(
    21,
    'E Não Sobrou Nenhum',
    '9780062073488',
    1939,
    272,
    39.90,
    10,
    5,
    3
  ),
(
    22,
    'Inferno',
    '9780804172264',
    2013,
    480,
    55.90,
    7,
    6,
    2
  ),
(
    23,
    'Homo Deus',
    '9780062464316',
    2015,
    450,
    69.90,
    8,
    7,
    8
  ),
(24, 'Emma', '9780141439587', 1815, 300, 36.90, 6, 8, 1),
(
    25,
    'O Príncipe e o Mendigo',
    '9780486411095',
    1881,
    192,
    28.90,
    10,
    1,
    4
  ),
(
    26,
    'Cartas de um Diabo a seu Aprendiz',
    '9780060652937',
    1942,
    209,
    34.90,
    5,
    2,
    7
  ),
(
    27,
    'Brás Cubas',
    '9788535902795',
    1881,
    200,
    30.90,
    7,
    3,
    1
  ),
(
    28,
    'A Paixão Segundo G.H.',
    '9788535912343',
    1964,
    176,
    33.90,
    6,
    4,
    1
  ),
(
    29,
    'Gabriela, Cravo e Canela',
    '9788535914859',
    1958,
    400,
    49.90,
    9,
    5,
    1
  ),
(
    30,
    'Reinações de Narizinho',
    '9788525056613',
    1931,
    180,
    26.90,
    10,
    6,
    6
  ),
(
    31,
    'O Diário de um Mago',
    '9788576653738',
    1987,
    224,
    39.90,
    8,
    7,
    7
  ),
(
    32,
    'A Revolução dos Bichos',
    '9780451526343',
    1945,
    120,
    29.90,
    11,
    8,
    2
  ),
(
    33,
    'Harry Potter e a Câmara Secreta',
    '9788532511027',
    1998,
    288,
    59.90,
    10,
    1,
    10
  ),
(
    34,
    'O Silmarillion',
    '9780618391110',
    1977,
    365,
    59.90,
    6,
    2,
    10
  ),
(
    35,
    'O Iluminado',
    '9780307743657',
    1977,
    447,
    49.90,
    7,
    3,
    3
  ),
(
    36,
    'Morte no Nilo',
    '9780062073556',
    1937,
    288,
    39.90,
    8,
    4,
    3
  ),
(
    37,
    'Anjos e Demônios',
    '9781416524793',
    2000,
    616,
    54.90,
    9,
    5,
    2
  ),
(
    38,
    '21 Lições para o Século 21',
    '9780525512172',
    2018,
    372,
    64.90,
    6,
    6,
    8
  ),
(
    39,
    'Razão e Sensibilidade',
    '9780141439662',
    1811,
    250,
    35.90,
    7,
    7,
    1
  ),
(
    40,
    'Huckleberry Finn',
    '9780486280615',
    1884,
    366,
    29.90,
    10,
    8,
    4
  );

/*!40000 ALTER TABLE `livro` ENABLE KEYS */
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

-- Dump completed on 2026-06-14 21:55:25