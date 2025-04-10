-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: crud
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `idade` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (5,'phillips','2220','069.092.909-92','123132','sim'),(15,'Jerrell','57697','71956','902 Tremblay Stream','Transexual man'),(16,'Immanuel','59230','02137-2721','62305 Price Harbors','Intersex'),(17,'Marques','21833','54009','9549 Lockman Expressway','MTF'),(18,'Samir','34558','14652-5903','80856 Terry Extension','Trans woman'),(19,'Kenna','28062','75900','27570 Elisa Extension','Cis woman'),(20,'Nicole','58418','05875','14386 Javier Underpass','Trans'),(21,'Brendon','29751','89961','354 Mya Spring','Other'),(22,'Elmo','46870','56515','737 Neal Port','Intersex woman'),(23,'Madonna','74721','03922','4651 Sterling Pines','Hermaphrodite'),(24,'Muhammad','99251','44571','199 Tomas Loaf','Gender neutral'),(25,'Jaron','38505','91985-9061','819 Larue Bridge','Agender'),(26,'Kristopher','7479','60147','47586 Brooke Garden','Androgyne'),(27,'Emmy','1511','87070-5117','41529 Main Road','Female to male transgender man'),(28,'Kaylie','58068','44581-5971','9378 Hazel Grove','Trans person'),(29,'Jamison','91736','65161-2028','88187 Antonetta Haven','Cis man'),(30,'Leilani','65231','19445','23979 Ankunding Ways','Cisgender woman'),(31,'Alivia','76807','32483-5758','916 Church Avenue','Multigender'),(32,'Timmothy','25517','03994','7715 Aufderhar Greens','Intersex person'),(33,'Brandon','82554','28501-8572','899 Okuneva Trafficway','Transgender person'),(34,'Nannie','47404','08278-9568','386 Hansen Falls','Cisgender woman'),(35,'Willard','26994','74025-6576','6137 Adelle Points','Trans female'),(36,'Laurie','51593','54301','4023 Metz Shores','Gender neutral'),(37,'Jensen','36633','83005','2884 Church Avenue','Neither'),(38,'Kaleb','4725','98200','30544 Third Street','M2F'),(39,'Dino','66454','80954-3592','488 Tyrique Keys','F2M'),(40,'Isabell','49587','53449','689 Botsford Trail','Neither'),(41,'Phoebe','62286','31404','386 University Avenue','Trans man'),(42,'Victor','54869','91774','184 Cliff Road','Other'),(43,'Leonora','59026','17333-7802','292 Harris Brook','Male to female transgender woman'),(44,'Tatum','15496','25580','320 Thurman Camp','Trigender'),(45,'Lilyan','82774','94540','384 Block Center','Trigender'),(46,'Jarred','50545','79396-3233','691 Ryleigh Brook','F2M'),(47,'Morton','99829','56701','4648 Senger Shore','Trans female'),(48,'Malachi','50031','55464','166 Schultz Valleys','Transexual female'),(49,'Kirstin','57453','45262-6991','9443 Darren Valley','Transgender female'),(50,'Lempi','22187','89567','626 Clarendon Road','Woman'),(559,'ayumin','123','123','123','132'),(560,'Felipe','22','616.210.809-00','123132','masc');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 14:38:12
