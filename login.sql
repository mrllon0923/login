-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: loginregPylot
-- ------------------------------------------------------
-- Server version	5.6.28

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Marllon','Cantiga','marllon@dojo.com','password','2016-09-21 21:16:54','2016-09-21 21:16:54'),(2,'Potato','Chip','Potato@dojo.com','$2b$12$mUTxDyTssJHBtz2ezZP6xuJNGJDOqAmPvOfkrLw81TvUo6lwds9da','2016-09-21 22:51:24','2016-09-21 22:51:24'),(3,'Harvey','Chui','harvey@dojo.com','$2b$12$vQi3dwO3MMEI0NkigFqNbOQEhwJJZeoG4hm6O4HBPYK7Or6Xj8lAm','2016-09-22 11:32:15','2016-09-22 11:32:15'),(4,'Brendan','Brendan','Brendan@dojo.com','$2b$12$/wOv7pU6jW3RcBGY0lqGz.DC..iXxNDBZ.RQl53p5VLbmyGMVsGDG','2016-09-22 11:35:05','2016-09-22 11:35:05'),(5,'Jill','Jill','Jill@dojo.com','$2b$12$M0ter41Xgq86bUghRDNnOuCDBtR0VjFnmuU1Fw4IE276ru0z0dbua','2016-09-22 15:06:00','2016-09-22 15:06:00'),(6,'Dad','d','dad@dad.com','$2b$12$A5.WOmnASb0ChbV0VFWNMu/pza9OI7HaGelKQrYDWISKZtV9n55vW','2016-09-24 09:07:59','2016-09-24 09:07:59'),(7,'Cat','Tran','cat@gmail.com','$2b$12$0Kt/k6zGNugPXm8d58/Ep.i7QQjPxwXgkq6jNfE1yBaU5nLjL0mMW','2016-09-24 09:09:17','2016-09-24 09:09:17');
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

-- Dump completed on 2016-09-25 14:41:56
