-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_identities`
--

DROP TABLE IF EXISTS `user_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_type_id` int(11) NOT NULL COMMENT 'links to identity_types.id',
  `number` varchar(50) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `issue_location` varchar(100) DEFAULT NULL,
  `comments` text,
  `security_user_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identity_type_id` (`identity_type_id`),
  KEY `security_user_id` (`security_user_id`),
  KEY `number` (`number`),
  KEY `number_2` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_identities`
--

LOCK TABLES `user_identities` WRITE;
/*!40000 ALTER TABLE `user_identities` DISABLE KEYS */;
INSERT INTO `user_identities` VALUES (6,1,'12121231337',NULL,NULL,NULL,NULL,45,NULL,NULL,1,'2019-01-29 07:52:31'),(7,1,'12125131337',NULL,NULL,NULL,NULL,46,NULL,NULL,1,'2019-01-29 08:01:23'),(8,1,'12451231337',NULL,NULL,NULL,NULL,47,NULL,NULL,1,'2019-01-29 08:18:19'),(9,1,'45214531337',NULL,NULL,NULL,NULL,48,NULL,NULL,1,'2019-01-29 08:23:40'),(10,1,'1457531337',NULL,NULL,NULL,NULL,49,NULL,NULL,1,'2019-01-29 08:27:05'),(11,1,'12121212',NULL,NULL,NULL,NULL,51,NULL,NULL,1,'2019-01-29 11:09:38'),(12,1,'012121131337',NULL,NULL,NULL,NULL,53,NULL,NULL,38,'2019-01-30 09:28:31'),(13,1,'4512454531337',NULL,NULL,NULL,NULL,54,NULL,NULL,1,'2019-01-30 10:27:08'),(14,1,'454578831337',NULL,NULL,NULL,NULL,55,NULL,NULL,1,'2019-01-30 10:52:32'),(15,1,'457854531337',NULL,NULL,NULL,NULL,56,NULL,NULL,1,'2019-01-30 10:56:17'),(16,1,'124578731337',NULL,NULL,NULL,NULL,57,NULL,NULL,1,'2019-01-30 10:58:23'),(17,1,'78451231337',NULL,NULL,NULL,NULL,58,NULL,NULL,1,'2019-01-30 11:19:21'),(18,1,'45784531337',NULL,NULL,NULL,NULL,59,NULL,NULL,1,'2019-01-30 11:23:03'),(19,1,'4578731337',NULL,NULL,NULL,NULL,60,NULL,NULL,1,'2019-01-30 11:30:22'),(20,1,'457874531337',NULL,NULL,NULL,NULL,61,NULL,NULL,1,'2019-01-30 11:32:22'),(21,1,'7854631337',NULL,NULL,NULL,NULL,62,NULL,NULL,1,'2019-01-30 11:34:14'),(22,1,'456798831337',NULL,NULL,NULL,NULL,63,NULL,NULL,1,'2019-01-30 11:40:16'),(23,1,'454841531337',NULL,NULL,NULL,NULL,64,NULL,NULL,1,'2019-01-30 11:43:32'),(24,1,'456784531337',NULL,NULL,NULL,NULL,65,NULL,NULL,1,'2019-01-30 11:45:20'),(25,1,'45454531337',NULL,NULL,NULL,NULL,66,NULL,NULL,1,'2019-01-30 11:50:43'),(26,1,'4546431337',NULL,NULL,NULL,NULL,67,NULL,NULL,1,'2019-01-30 11:55:15'),(27,1,'78754831337',NULL,NULL,NULL,NULL,68,NULL,NULL,1,'2019-01-30 18:40:16'),(28,1,'454454531337',NULL,NULL,NULL,NULL,69,NULL,NULL,1,'2019-01-30 19:03:42'),(29,1,'1212121231337',NULL,NULL,NULL,NULL,70,NULL,NULL,38,'2019-01-31 05:54:09'),(30,2,'1245454531337',NULL,NULL,NULL,NULL,71,NULL,NULL,1,'2019-01-31 08:25:31'),(31,1,'445787831337',NULL,NULL,NULL,NULL,72,NULL,NULL,38,'2019-01-31 10:48:48'),(32,2,'901245454V',NULL,NULL,NULL,NULL,73,NULL,NULL,38,'2019-01-31 11:04:12'),(33,2,'4545454544',NULL,NULL,NULL,NULL,74,NULL,NULL,1,'2019-02-01 01:59:32'),(34,2,'121454545',NULL,NULL,NULL,NULL,78,NULL,NULL,77,'2019-02-02 14:09:21'),(35,1,'909090396477',NULL,NULL,NULL,NULL,79,NULL,NULL,77,'2019-02-02 14:18:37'),(36,1,'999993964undefined',NULL,NULL,NULL,NULL,81,NULL,NULL,1,'2019-02-05 06:33:26'),(37,1,'12123964undefined',NULL,NULL,NULL,NULL,82,NULL,NULL,1,'2019-02-05 06:48:23'),(38,1,'45553964undefined',NULL,NULL,NULL,NULL,83,NULL,NULL,1,'2019-02-05 06:51:42'),(39,1,'7745451406',NULL,NULL,NULL,NULL,84,NULL,NULL,1,'2019-02-05 07:08:02'),(40,1,'7712121406',NULL,NULL,NULL,NULL,85,NULL,NULL,1,'2019-02-05 10:13:34'),(41,1,'7745121406',NULL,NULL,NULL,NULL,86,NULL,NULL,1,'2019-02-05 10:30:32');
/*!40000 ALTER TABLE `user_identities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:36
