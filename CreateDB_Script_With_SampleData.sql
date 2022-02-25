-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: runninghill
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `sentence`
--

DROP TABLE IF EXISTS `sentence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sentence` (
  `sentenceID` int NOT NULL AUTO_INCREMENT,
  `sentence` varchar(500) DEFAULT NULL,
  `EntryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sentenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentence`
--

LOCK TABLES `sentence` WRITE;
/*!40000 ALTER TABLE `sentence` DISABLE KEYS */;
INSERT INTO `sentence` VALUES (1,'I am working on assessments','2022-02-24 15:34:43'),(2,'Hard working pays off eventually','2022-02-24 15:35:10'),(3,'Never give up on what you do','2022-02-24 15:35:35'),(4,'This is a testing sentence for the post method','2022-02-24 17:04:41'),(5,'This is the second testing sentence for the post method','2022-02-24 17:05:38'),(6,'dfgfg','2022-02-24 21:20:41'),(7,'dfgfg','2022-02-24 21:21:19'),(8,'sdfsdf','2022-02-24 21:21:28'),(9,'A new sentence has been formed','2022-02-24 21:24:53'),(10,'lets add a new sentence to see','2022-02-24 21:56:54'),(11,'Testing auto refresh of the sentence list','2022-02-24 21:58:37'),(12,'Clear textbox after a post to API','2022-02-24 22:00:41'),(13,'Test again, clearing textbox after a post to API','2022-02-24 22:01:13'),(14,' undefined undefined undefined','2022-02-24 22:22:54'),(15,' [object DOMStringMap] undefined undefined','2022-02-24 22:48:34'),(16,'  and   also   additinally   Do   Eat   Run ','2022-02-24 23:34:48'),(17,'  Do   Eat   and   Run ','2022-02-24 23:38:54'),(18,'  He   Run   quickly   and   Eat   beautifully ','2022-02-25 00:28:22'),(19,'  Run   To   Michael   quickly ','2022-02-25 13:05:56'),(20,'  beautifully   quickly   Fanta   Fantastic ','2022-02-25 13:08:11'),(21,'  Wow!   He   beautifully   Run ','2022-02-25 13:13:34'),(22,'  additinally   You   quickly   Run ','2022-02-25 13:32:45'),(23,'  She   Eat   beautifully   Wow! ','2022-02-25 13:48:12'),(24,'  beautifully   quickly   Fanta   Fantastic ','2022-02-25 13:49:30');
/*!40000 ALTER TABLE `sentence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `wordID` int NOT NULL AUTO_INCREMENT,
  `word` varchar(250) NOT NULL,
  `Wordtype` varchar(50) NOT NULL,
  PRIMARY KEY (`wordID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'Do','verb'),(2,'Eat','verb'),(3,'Run','verb'),(4,'and','conjunction'),(5,'also','conjunction'),(6,'additinally','conjunction'),(7,'beautifully','Adverb'),(8,'quickly','Adverb'),(9,'Fanta','Adverb'),(10,'Fantastic','Adverb'),(11,'House','Noun'),(12,'Michael','Noun'),(13,'Food','Noun'),(14,'Wow!','Exclamation'),(15,'Woooh!','Noun'),(16,'Hoh!','Noun'),(17,'Woooh!','Exclamation'),(18,'Hoh!','Exclamation'),(19,'Awsome','Adjective'),(20,'Wide','Adjective'),(21,'Big','Adjective'),(22,'On','Preposition'),(23,'In','Preposition'),(24,'To','Preposition'),(25,'He','Pronoun'),(26,'You','Pronoun'),(27,'She','Pronoun');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-25 16:13:18
