CREATE DATABASE  IF NOT EXISTS `v2019` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `v2019`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: v2019
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `codigo` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'¿Qué es una Red Neuronal? Parte 1 : La Neurona | DotCSV','MRIv2IwFTPg'),(2,'¿Por qué hay que temer DE VERDAD a la Inteligencia Artificial? | DATA COFFEE #2','W9jrzZ6pia0'),(3,'Mi hija quiere entender el sistema financiero | Hernan Casciari | TEDxMontevideo','HLIJkmy3vy8'),(4,'Creando caras artificiales con GANs mejoradas | DATA COFFEE #4','bMDpMRB7CEs'),(5,'Versión Completa. Matemáticas para la vida real. Adrián Paenza, matemático','V33U1OsFVnQ'),(6,'La IA que dio VIDA a la Mona Lisa - Living Portraits','GKBF3MepwdU'),(7,'No seas un estudiante eterno','ZsYnNYOH8WU'),(8,'Is this the BEST BOOK on Machine Learning? Hands On Machine Learning Review','1RiFIYwuwHM'),(9,'What\'s a Tensor?','f5liqUk0ZTw'),(10,'Mathematics of Machine Learning','8onB7rPG4Pk'),(11,'Predicting Stock Prices - Learn Python for Data Science #4','SSu00IRRraY'),(12,'Deep Learning with Python, TensorFlow, and Keras tutorial','wQ8BIBpya2k'),(13,'Cómo funcionan las redes neuronales profundas','ILsA4nyG7I0'),(14,'Todos podemos aprender Machine learning','7ClLKBUvmRk'),(15,'Neural Network Learns to Play Snake','zIkBYwdkuTk'),(16,'Neural Network 3D Simulation','3JQ3hYko51Y'),(17,'A.I. Experiments: Visualizing High-Dimensional Space','wvsE8jm1GzE'),(18,'La paradoja del Hotel Infinito - Jeff Dekofsky','Uj3_KqkI9Zo'),(19,'Deep Learning Cars','Aut32pR5PQA'),(20,'Linux para Desarrollo Web, Instalando Programas en Linux Lite 4','526NfikEVCM'),(21,'Web Design and Development in 2019 ... How Fast Is It Growing?','QSxHOgGNfYc'),(22,'Top 10 Linux Job Interview Questions','l0QGLMwR-lY'),(23,'Los Algoritmos Tras la Primera Imagen de un Agujero Negro | Feat. QuantumFracture','pTXCs3A6NEM'),(24,'La función Zeta de Riemann | La Hipótesis de Riemann - Parte 1','HbDZj0eX9C0'),(25,'Por qué el LHC No Puede Destruir el Mundo','nf3_4YZfDLk'),(26,'Las Leyes de la Termodinámica en 5 Minutos','Bvfn6eUhUAc'),(27,'React.js | Curso Práctico Completo Desde Cero, Para Principiantes. Parte 1, Creación de Proyecto','iHqa6ojKnHI'),(28,'Coding Challenge #93: Double Pendulum','uWzPe_S-RVE'),(29,'Las Redes Neuronales... ¿Aprenden o Memorizan? - Overfitting y Underfitting - Parte 1','7-6X3DTt3R8'),(30,'La Inteligencia Artificial de Google crea IA mejores que sus ingenieros: NASNet | DATA COFFEE #5','Z3F9DHpuPS8'),(31,'15 Python Projects in Under 15 Minutes (Code Included)','OXi4T58PwdM'),(32,'Qué necesitas para hacer Inteligencia Artificial','YfRy9j1E0Qk'),(33,'Creating a Snake game with Python in under 5 minutes','rbasThWVb-c'),(34,'Qué es una Serie de Fourier ? (Explicado dibujando círculos) - Smarter Every Day 205','ds0cmAV-Yek'),(35,'¿Qué es el Descenso del Gradiente? Algoritmo de Inteligencia Artificial | DotCSV','A6FiCDoz8_4'),(36,'MarI/O - Machine Learning for Video Games','qv6UVOQ0F44'),(37,'10 In-Demand Technology Jobs In 2019','rQI1GWgCZew'),(38,'10 Best Python Projects of 2018','G0rQ7AEl5LA'),(39,'Data Structures and Algorithms in JavaScript - Full Course for Beginners','t2CEgPsws3U'),(40,'Python Tutorial for Beginners [Full Course] 2019','_uQrJ0TkZlc'),(41,'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh','k5E2AVpwsko'),(42,'Desarrollo Web en el 2018','5zNO0lGKUXs'),(45,'Matemáticas, el cubo de Rubik y el número de Dios','NOQilqu76XU'),(50,'Así fue el viaje a la Luna - con Martí de @cdeciencia','h-Z1bTGi5Qs'),(52,'La estúpida moda de visitar Chernobyl','EQ0cbIZ0udU'),(53,'¿Cómo funciona una CENTRAL NUCLEAR?','_qgVKmOsqV8'),(54,'#1 Biografías científicas - Nikola Tesla, el mago de la electricidad','oESNo52Z-vo'),(56,'¿Qué hay de cierto en la película The Martian?','2bhRTWYHCno'),(57,'¿Qué hay de cierto e¿Qué tiene el cerebro de Einstein que no tenga el tuyo?n la película The Martian?','BbeXmIYpY3A'),(58,'The Matrix - ¿Cómo sabemos si vivimos en una simulación?','1rpK0iScpls'),(59,'DIEZ LLIBROS para introducirse en el mundo de las matemáticas','teqFwLG2-6s'),(60,'La ecuación más bella de la física','Lga-oupKJx4'),(63,'The Art Of Making Noodles By Hand','f2kesmAO8VU');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'v2019'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-29 13:40:45
