CREATE DATABASE  IF NOT EXISTS `netflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflix`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Frederich','Leffek'),(2,'Mirabelle','Woodcroft'),(3,'Rosana','Lordon'),(4,'Katrina','Daout'),(5,'Kamilah','Speare'),(6,'Gustave','Chad'),(7,'Jamil','Willison'),(8,'Tracy','Kelso'),(9,'Adorne','Jerrard'),(10,'Dianemarie','Raiker');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `surface` float DEFAULT NULL,
  `poblation` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `show_id` int NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `show_id` (`show_id`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `film` (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,7.17652,15072,'Carolina','Brazil',1),(2,48.8901,11209,'Paris La Défense','France',1),(3,47.4937,14705,'Szeged','Hungary',2),(4,7.63773,27276,'Ploso Wetan','Indonesia',3),(5,32.8747,54920,'Fengyang','China',5),(6,41.8374,37660,'Vinhais','Portugal',4),(7,57.4669,67904,'Poddor’ye','Russia',5),(8,41.8633,90411,'Dobri Dol','Macedonia',3);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `country_title`
--

DROP TABLE IF EXISTS `country_title`;
/*!50001 DROP VIEW IF EXISTS `country_title`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `country_title` AS SELECT 
 1 AS `title`,
 1 AS `country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Wrennie','Keary'),(2,'Hastie','Welman'),(3,'Xavier','Dishman'),(4,'Dukey','Concannon'),(5,'Melloney','Pickless'),(6,'Artemas','Pioch'),(7,'Cyrillus','Heigho'),(8,'Ladonna','Lars'),(9,'Berenice','Symcoxe'),(10,'Phillipe','Rentelll'),(11,'Lisandro','Alonso');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `directors_film`
--

DROP TABLE IF EXISTS `directors_film`;
/*!50001 DROP VIEW IF EXISTS `directors_film`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `directors_film` AS SELECT 
 1 AS `title`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `duplicate_actors_per_film`
--

DROP TABLE IF EXISTS `duplicate_actors_per_film`;
/*!50001 DROP VIEW IF EXISTS `duplicate_actors_per_film`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `duplicate_actors_per_film` AS SELECT 
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `title`,
 1 AS `last_name_number`,
 1 AS `first_name_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `show_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `release_year` datetime DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `duration` time NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`show_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Dick Johnson Is Dead','2022-06-06 07:17:04','2022-06-06 01:37:00',1,'02:53:00',2),(2,'Blood & Water','2022-01-10 20:11:00','2021-01-03 20:11:00',2,'04:00:00',2),(3,'Ganglands','2022-01-09 10:14:00','2020-01-05 20:05:10',2,'01:39:00',2),(4,'Jailbirds New Orlean','2020-03-05 06:00:46','2010-10-03 03:47:20',2,'04:20:00',2),(5,'Taxi','2022-04-24 21:12:05','2022-01-21 18:59:42',1,'10:20:00',1),(6,'Hanna Montana','2022-04-24 21:12:05','2022-01-21 18:59:42',1,'05:20:00',1);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_film_id` AFTER INSERT ON `film` FOR EACH ROW INSERT INTO log_film_id VALUES
 (DEFAULT, new.show_id, new.title, new.date_added, new.release_year, new.rating,
 new.duration, new.language_id,  
 user(), now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_actor` (
  `show_id` int NOT NULL,
  `actor_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `film_actor_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `film` (`show_id`),
  CONSTRAINT `film_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1),(1,1),(2,3),(2,4),(2,5),(1,10),(1,6),(3,3),(3,4),(4,5),(4,6),(4,2),(5,9),(5,8),(5,6),(5,2),(4,9),(3,8);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_director`
--

DROP TABLE IF EXISTS `film_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_director` (
  `show_id` int NOT NULL,
  `director_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `film_director_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `film` (`show_id`),
  CONSTRAINT `film_director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_director`
--

LOCK TABLES `film_director` WRITE;
/*!40000 ALTER TABLE `film_director` DISABLE KEYS */;
INSERT INTO `film_director` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `film_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_type`
--

DROP TABLE IF EXISTS `film_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_type` (
  `show_id` int NOT NULL,
  `type_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `film_type_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `film` (`show_id`),
  CONSTRAINT `film_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_type`
--

LOCK TABLES `film_type` WRITE;
/*!40000 ALTER TABLE `film_type` DISABLE KEYS */;
INSERT INTO `film_type` VALUES (1,1),(2,2),(3,1),(4,2),(5,2);
/*!40000 ALTER TABLE `film_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `film_type_duration_lenguage`
--

DROP TABLE IF EXISTS `film_type_duration_lenguage`;
/*!50001 DROP VIEW IF EXISTS `film_type_duration_lenguage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `film_type_duration_lenguage` AS SELECT 
 1 AS `title`,
 1 AS `type`,
 1 AS `duration`,
 1 AS `language_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int NOT NULL,
  `language_name` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'Spanish'),(3,'Italian'),(4,'Portuguese');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_film`
--

DROP TABLE IF EXISTS `languages_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages_film` (
  `show_id` int NOT NULL,
  `language_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `languages_film_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `film` (`show_id`),
  CONSTRAINT `languages_film_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_film`
--

LOCK TABLES `languages_film` WRITE;
/*!40000 ALTER TABLE `languages_film` DISABLE KEYS */;
INSERT INTO `languages_film` VALUES (1,2),(2,2),(3,2),(4,2),(5,1);
/*!40000 ALTER TABLE `languages_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_film_id`
--

DROP TABLE IF EXISTS `log_film_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_film_id` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `show_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `release_year` datetime DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `duration` time NOT NULL,
  `language_id` int NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_film_id`
--

LOCK TABLES `log_film_id` WRITE;
/*!40000 ALTER TABLE `log_film_id` DISABLE KEYS */;
INSERT INTO `log_film_id` VALUES (1,6,'Hanna Montana','2022-04-24 21:12:05','2022-01-21 18:59:42',1,'05:20:00',1,'root@localhost','2022-06-26 23:37:02');
/*!40000 ALTER TABLE `log_film_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_modificacion_film`
--

DROP TABLE IF EXISTS `log_modificacion_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_modificacion_film` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `show_id` int NOT NULL,
  `old_show` varchar(10) DEFAULT NULL,
  `new_show` varchar(10) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_modificacion_film`
--

LOCK TABLES `log_modificacion_film` WRITE;
/*!40000 ALTER TABLE `log_modificacion_film` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_modificacion_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `max_duration`
--

DROP TABLE IF EXISTS `max_duration`;
/*!50001 DROP VIEW IF EXISTS `max_duration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `max_duration` AS SELECT 
 1 AS `title`,
 1 AS `duration`,
 1 AS `language_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `type_id` int NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'film'),(2,'tv show');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'netflix'
--

--
-- Final view structure for view `country_title`
--

/*!50001 DROP VIEW IF EXISTS `country_title`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `country_title` AS select `f`.`title` AS `title`,`c`.`country` AS `country` from (`country` `c` join `film` `f` on((`c`.`show_id` = `f`.`show_id`))) group by `c`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `directors_film`
--

/*!50001 DROP VIEW IF EXISTS `directors_film`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `directors_film` AS select `f`.`title` AS `title`,`d`.`first_name` AS `first_name`,`d`.`last_name` AS `last_name` from ((`film` `f` join `film_director` `fd` on((`f`.`show_id` = `fd`.`show_id`))) join `director` `d` on((`fd`.`director_id` = `d`.`director_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `duplicate_actors_per_film`
--

/*!50001 DROP VIEW IF EXISTS `duplicate_actors_per_film`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `duplicate_actors_per_film` AS select `a`.`last_name` AS `last_name`,`a`.`first_name` AS `first_name`,`f`.`title` AS `title`,count(`a`.`last_name`) AS `last_name_number`,count(`a`.`first_name`) AS `first_name_number` from ((`film` `f` join `film_actor` `fa` on((`f`.`show_id` = `fa`.`show_id`))) join `actors` `a` on((`fa`.`actor_id` = `a`.`actor_id`))) group by `f`.`title` having ((count(`a`.`last_name`) > 1) and (count(`a`.`first_name`) > 1)) order by `last_name_number` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `film_type_duration_lenguage`
--

/*!50001 DROP VIEW IF EXISTS `film_type_duration_lenguage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `film_type_duration_lenguage` AS select `f`.`title` AS `title`,`t`.`type` AS `type`,`f`.`duration` AS `duration`,`l`.`language_name` AS `language_name` from ((((`film` `f` join `film_type` `ft` on((`f`.`show_id` = `ft`.`show_id`))) join `type` `t` on((`ft`.`type_id` = `t`.`type_id`))) join `languages_film` `lf` on((`f`.`show_id` = `lf`.`show_id`))) join `languages` `l` on((`lf`.`language_id` = `l`.`language_id`))) order by `f`.`duration` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `max_duration`
--

/*!50001 DROP VIEW IF EXISTS `max_duration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `max_duration` AS select `film_type_duration_lenguage`.`title` AS `title`,`film_type_duration_lenguage`.`duration` AS `duration`,`film_type_duration_lenguage`.`language_name` AS `language_name` from `film_type_duration_lenguage` order by `film_type_duration_lenguage`.`duration` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 14:52:06
