-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: platzi
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `action_type` enum('venta','prestamo','devolucion') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,3,2,'venta','2021-10-16 07:58:30'),(2,6,1,'prestamo','2021-10-16 07:58:30'),(3,7,7,'prestamo','2021-10-16 07:58:30'),(4,7,7,'devolucion','2021-10-16 07:58:30'),(5,2,5,'venta','2021-10-16 07:58:30'),(6,10,9,'venta','2021-10-16 07:58:30'),(7,18,8,'prestamo','2021-10-16 07:58:30'),(8,12,4,'venta','2021-10-16 07:58:30'),(9,1,3,'venta','2021-10-16 07:58:30'),(10,4,5,'prestamo','2021-10-16 07:58:30'),(11,5,2,'venta','2021-10-16 07:58:30');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher_id` int(10) unsigned NOT NULL DEFAULT 0,
  `author` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `copies` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'John Goodman','Mastering MySQL','Clases de bases de datos usando MySQL',10.50,4),(2,2,'Pi Tagoras','Trigonometria avanzada','Trigonometria desde sus origenes',7.30,2),(3,3,'Carl Gauss','Advanced Statistics','De curvas y otras graficas',23.60,1),(4,4,'Tim Berners-Lee','Redes Avanzadas','Lo que viene siendo el internet',13.50,4),(5,2,'Napoleon TNT','Curvas Parabolicas','Historia de la parabola',6.99,10),(6,1,'A Miner','Ruby On (the) Road','Un nuevo acercamiento a la programacion',18.75,4),(7,1,'John Goodman','Estudios basicos de estudios','Clases de bases de datos usando MySQL',10.50,4),(8,4,'John Goodman','Donde esta Y?','Clases de bases de datos usando MySQL',10.50,4),(9,3,'John White','Quimica avanzada','Profitable studies on chemistry',45.35,1),(10,4,'Rene Descartes','Graficas Matematicas','De donde viene el plano',13.99,7),(11,4,'Leonhard Euler','Numeros Importantes','De numeros que a veces nos sirven',10.00,3),(12,3,'Jack Friedman','Modelado de conocimiento','Una vez adquirido, como se guarda el conocimiento',29.99,2),(13,3,'John Nash','Teoria de juegos','A o B?',12.55,3),(14,1,'Brian Kernhigan','Calculo de variables','Programacion mega basica',9.50,3),(15,5,'Juan Pablo Rojas','Produccion de streaming','De la oficina a la pantalla',23.49,9),(16,5,'JFD & CvdH','ELearning','Diseno y ejecucion de educacion online',23.55,4),(17,5,'KC','Pet Caring for Geeks','Que tu perro aprenda a programar',18.79,3),(18,1,'Al Juarismi','Algebra basica','Eso de encontrar X o Y, dependiendo',13.50,8);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `publisher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'OReilly','USA'),(2,'Santillana','Mexico'),(3,'MIT Edu','USA'),(4,'UTPC','Colombia'),(5,'Platzi','USA');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ricardo','ricardo@hola.com'),(2,'Laura','laura@hola.com'),(3,'Jose','jose@hola.com'),(4,'Sofia','sofia@hola.com'),(5,'Fernanda','fernanda@hola.com'),(6,'Jose Guillermo','memo@hola.com'),(7,'Maria','Maria@hola.com'),(8,'Susana','susana@hola.com'),(9,'Jorge','jorge@hola.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-16  4:54:08
