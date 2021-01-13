CREATE DATABASE  IF NOT EXISTS `OC_pizza_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `OC_pizza_system`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: OC_pizza_system
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street_number` varchar(10) DEFAULT NULL,
  `street_name` varchar(200) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'6','rue du général De Gaulle','75001','PARIS'),(2,'35 bis','rue de France','75001','PARIS'),(3,'91','rue Raymond Poincaré','75001','PARIS'),(4,'98','rue des bateliers','75002','PARIS'),(5,'76','avenue Voltaire','75002','PARIS'),(6,'54','boulevard Amiral Courbet','75002','PARIS'),(7,'18','rue du Maréchal Leclerc','75003','PARIS'),(8,'36','rue du Général Ailleret','62300','LENS'),(9,'99','rue des dunes','62300','LENS'),(10,'28','rue des embruns','62300','LENS'),(11,'67','rue du Nord','62300','LENS'),(12,'9','rue de la mer','62300','LENS'),(13,'1','rue Lenotre ','62300','LENS'),(14,'33','place Anastasie Brunet','62300','LENS'),(15,'94','rue Suzanne Rey','44000','NANTES'),(16,'98','rue Delattre','44000','NANTES'),(17,'5','rue Isabelle Descamps','44000','NANTES'),(18,'80','rue dulièvre','44000','NANTES'),(19,'64','chemin Schneider','44000','NANTES'),(20,'26','rue de Brunel','44000','NANTES'),(21,'82','rue Josette Hubert','44000','NANTES');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `newsletter` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Du Trieux','Maryse','m.dt@gmail.com','0675321987',1),(2,'Giguère','Patrice','p.giguere@hotmail.fr','0632186045',1),(3,'Beaujolie','Pancy','p.beaujolie@msn.com','0643785934',1),(4,'Lamoureux','Raoul','raoullecool@yahoo.fr','0673680920',1),(5,'Daoust','Audrey','audy62@gmail.com','0644876990',1),(6,'de la Bertin','Céline','cecebeber@gmail.com','0678904463',1),(7,'Latetia','Julien','j.latetia@hotmail.fr','0689334500',1),(8,'Seguin','Océane','o.seguin@gmail.com','0673357958',1),(9,'Guibert','Stéphane','stefou@msn.com','0674366478',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'sauce tomate',0.24),(2,'edam',0.87),(3,'champignon',0.09),(4,'fromage râpé',0.26),(5,'farine',0.60),(6,'mozzarella',0.67),(7,'jambon',1.06),(8,'gorgonzola',0.98);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_quantity`
--

DROP TABLE IF EXISTS `ingredient_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_quantity` (
  `ingredient_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`ingredient_id`,`recipe_id`),
  KEY `ingredient_id_idx` (`ingredient_id`),
  KEY `recipe_id_iq_idx` (`recipe_id`),
  CONSTRAINT `ingredient_id_quantity` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `recipe_id_quantity` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_quantity`
--

LOCK TABLES `ingredient_quantity` WRITE;
/*!40000 ALTER TABLE `ingredient_quantity` DISABLE KEYS */;
INSERT INTO `ingredient_quantity` VALUES (1,1,1),(1,2,1),(1,3,1),(2,1,3),(3,3,10),(4,3,3),(5,1,1),(5,2,1),(5,3,1),(6,1,5),(6,2,7),(7,3,3),(8,1,3);
/*!40000 ALTER TABLE `ingredient_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_stock`
--

DROP TABLE IF EXISTS `ingredient_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_stock` (
  `ingredient_id` int NOT NULL,
  `pizzeria_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`ingredient_id`,`pizzeria_id`),
  KEY `ingredient_id_idx` (`ingredient_id`),
  KEY `pizzeria_id_stock_idx` (`pizzeria_id`),
  CONSTRAINT `ingredient_id_stock` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `pizzeria_id_stock` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_stock`
--

LOCK TABLES `ingredient_stock` WRITE;
/*!40000 ALTER TABLE `ingredient_stock` DISABLE KEYS */;
INSERT INTO `ingredient_stock` VALUES (1,1,234),(1,2,342),(1,3,111),(2,1,156),(2,2,145),(2,3,344),(3,1,98),(3,2,100),(3,3,128),(4,1,222),(4,2,167),(4,3,256),(5,1,167),(5,2,268),(5,3,109),(6,1,345),(6,2,333),(6,3,200),(7,1,213),(7,2,189),(7,3,194),(8,1,199),(8,2,321),(8,3,90);
/*!40000 ALTER TABLE `ingredient_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '1',
  `customer_id` int NOT NULL,
  `pizzeria_id` int NOT NULL,
  `delivery_address_id` int NOT NULL,
  `billing_address_id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `payed` tinyint NOT NULL DEFAULT '0',
  `comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id_order_idx` (`customer_id`),
  KEY `pizzeria_id_order_idx` (`pizzeria_id`),
  KEY `delivery_address_id_idx` (`delivery_address_id`),
  KEY `billing_address_id_idx` (`billing_address_id`),
  CONSTRAINT `billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `customer_id_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `delivery_address_id` FOREIGN KEY (`delivery_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `pizzeria_id_order` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,2,1,1,5,5,'2020-12-11 17:30:01','2020-12-11 20:30:00',1,'Le code d\'entrée est 8897'),(2,4,2,1,1,6,'2020-12-11 18:45:02','2020-12-11 20:00:00',0,NULL),(3,4,3,1,7,7,'2020-12-11 16:28:03','2020-12-11 20:00:00',1,NULL),(4,2,4,2,12,12,'2020-12-11 20:08:04','2020-12-11 20:30:00',0,NULL),(5,4,5,2,8,13,'2020-12-11 18:10:05','2020-12-11 20:00:00',0,NULL),(6,4,6,2,14,14,'2020-12-11 19:30:06','2020-12-11 20:00:00',1,'Le code est 55435'),(7,2,7,3,19,19,'2020-12-11 17:40:07','2020-12-11 20:30:00',1,NULL),(8,4,8,3,15,20,'2020-12-11 10:24:08','2020-12-11 20:00:00',1,NULL),(9,4,9,3,21,21,'2020-12-11 18:34:09','2020-12-11 20:00:00',0,NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line` (
  `order_id` int NOT NULL,
  `pizza_id` int NOT NULL,
  `quantity` int NOT NULL,
  `comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`pizza_id`),
  KEY `order_id_line_idx` (`order_id`),
  KEY `pizza_id_line_idx` (`pizza_id`),
  CONSTRAINT `order_id_line` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `pizza_id_line` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (1,1,1,NULL),(1,3,1,'sans champignons'),(2,1,3,NULL),(3,2,1,NULL),(3,3,2,NULL),(4,1,1,NULL),(5,2,2,NULL),(6,3,3,'sur les trois pizzas, il nous en faudrait 2 sans champignons svp'),(7,1,1,NULL),(7,2,1,NULL),(7,3,1,NULL),(8,3,4,NULL),(9,1,2,NULL),(9,2,2,NULL);
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `promotion` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`,`recipe_id`),
  KEY `recipe_id_pizza_idx` (`recipe_id`),
  CONSTRAINT `recipe_id_pizza` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,1,'pizza trois fromages','Une merveilleuse pizza gorgonzola, edam et mozzarella, sur une base sauce tomate.','3fromages.png',12.50,0.00),(2,2,'pizza maragarita','Une pizza simple, mais délicieuse : sauce tomate et mozzarella.','maragarita.png',9.00,0.00),(3,3,'pizza royale','Faites place à sa majesté : champignons, jambon et sauce tomate se marient parfaitement avec un délicieux fromage râpé.','royale.png',14.20,0.00);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzeria`
--

DROP TABLE IF EXISTS `pizzeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzeria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int NOT NULL,
  `phone` varchar(10) NOT NULL,
  `isOpen` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `address_id_pizzeria_idx` (`address_id`),
  CONSTRAINT `address_id_pizzeria` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzeria`
--

LOCK TABLES `pizzeria` WRITE;
/*!40000 ALTER TABLE `pizzeria` DISABLE KEYS */;
INSERT INTO `pizzeria` VALUES (1,1,'0156784323',1),(2,8,'0378543567',1),(3,15,'0279246906',1);
/*!40000 ALTER TABLE `pizzeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzeria_member`
--

DROP TABLE IF EXISTS `pizzeria_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzeria_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pizzeria_id` int NOT NULL,
  `role_id` int NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address_id` int NOT NULL,
  `contract_infos` varchar(500) NOT NULL,
  `order_id_to_do` int DEFAULT NULL,
  PRIMARY KEY (`id`,`pizzeria_id`,`role_id`),
  KEY `pizzeria_id_member_idx` (`pizzeria_id`),
  KEY `role_id_member_idx` (`role_id`),
  KEY `orders_id_member_idx` (`order_id_to_do`),
  KEY `address_id_member_idx` (`address_id`),
  CONSTRAINT `address_id_member` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `orders_id_member` FOREIGN KEY (`order_id_to_do`) REFERENCES `order` (`id`),
  CONSTRAINT `pizzeria_id_member` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`),
  CONSTRAINT `role_id_member` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzeria_member`
--

LOCK TABLES `pizzeria_member` WRITE;
/*!40000 ALTER TABLE `pizzeria_member` DISABLE KEYS */;
INSERT INTO `pizzeria_member` VALUES (1,1,1,'Riel','Solaine','s.riel@gmail.com','0675432123',2,'conclu le 5 décembre 2014',1),(2,1,2,'Peltier','Alphonse','a.peltier@yahoo.fr','0685358757',3,'conclu le 8 novembre 2017',2),(3,1,3,'Texier','Thomas','t.tex33@hotmail.fr','0656789944',4,'conclu le 14 juin 2010',3),(4,2,1,'Remy','Gilbert','g.remy@gmail.com','0674573589',9,'conclu le 10 avril 2013',4),(5,2,2,'du Germain','Monique','mdg78@msn.com','0698855779',10,'conclu le 5 mai 2016',5),(6,2,3,'Grondin','Luc','lgrondin@gmail.com','0688537893',11,'conclu le 23 janvier 2015',6),(7,3,1,'Meyer','Sophie','smeyer@msn.com','0633567896',16,'conclu le 11 février 2018',7),(8,3,2,'Voitin','Roland','rolandvoitin@hotmail.fr','0634589427',17,'conclu le 10 novembre 2019',8),(9,3,3,'Delorme','Anaïs','a.delorme@gmail.com','0642246886',18,'conclu le 22 septembre 2019',9);
/*!40000 ALTER TABLE `pizzeria_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'pizza trois fromages','répartir les fromages de la recette sur la pâte'),(2,'margarita','répartir la sauce tomate et ajouter des rondelles de mozzarella'),(3,'pizza royale','répartir la sauce tomate, y ajouter le jambon, les champignons et le fromage');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `rights_level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Pizzaiolo','Personne qui prépare les pizzas',1),(2,'Serveur','Personne qui prend les commandes et les sert.',1),(3,'Livreur','Personne qui livre les pizzas.',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_day`
--

DROP TABLE IF EXISTS `working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `date` date NOT NULL,
  `beginning_hour` time NOT NULL,
  `ending_hour` time NOT NULL,
  PRIMARY KEY (`id`,`member_id`),
  KEY `member_id_working_day_idx` (`member_id`),
  CONSTRAINT `member_id_working_day` FOREIGN KEY (`member_id`) REFERENCES `pizzeria_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_day`
--

LOCK TABLES `working_day` WRITE;
/*!40000 ALTER TABLE `working_day` DISABLE KEYS */;
INSERT INTO `working_day` VALUES (18,1,'2020-12-11','11:00:00','15:00:00'),(19,1,'2020-12-11','18:00:00','22:00:00'),(20,2,'2020-12-11','11:00:00','15:00:00'),(21,2,'2020-12-11','18:00:00','22:00:00'),(22,3,'2020-12-11','11:00:00','15:00:00'),(23,3,'2020-12-11','18:00:00','22:00:00'),(24,4,'2020-12-11','11:00:00','15:00:00'),(25,4,'2020-12-11','18:00:00','22:00:00'),(26,5,'2020-12-11','11:00:00','15:00:00'),(27,5,'2020-12-11','18:00:00','22:00:00'),(28,6,'2020-12-11','11:00:00','15:00:00'),(29,6,'2020-12-11','18:00:00','22:00:00'),(30,7,'2020-12-11','11:00:00','15:00:00'),(31,7,'2020-12-11','18:00:00','22:00:00'),(32,8,'2020-12-11','11:00:00','15:00:00'),(33,8,'2020-12-11','18:00:00','22:00:00'),(34,9,'2020-12-11','11:00:00','15:00:00'),(35,9,'2020-12-11','18:00:00','22:00:00');
/*!40000 ALTER TABLE `working_day` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 15:25:15
