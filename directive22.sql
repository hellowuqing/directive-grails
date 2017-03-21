-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: handdirective
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` varchar(200) NOT NULL,
  `version` int(11) NOT NULL,
  `comment_content` varchar(2000) NOT NULL,
  `directive_id` varchar(200) NOT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('4028f08156bc7a390156bca2a80a000b',0,'66666','4028f08156bb66c80156bb67da4b0000','hand.directive.User : 1','2016-08-24 20:59:52','hand.directive.User : 1','2016-08-24 20:59:52'),('4028f08156bf50e10156bf935dec0000',0,'快点完成呀','4028f08156bb66c80156bb67da4b0000',NULL,'2016-08-25 10:42:01',NULL,'2016-08-25 10:42:01'),('8a53e17257665fe501576678f8370000',0,'啦啦啦啦啦啦啦啦','8a53e172571d9e2201571da47c020001','1','2016-09-26 20:29:46','1','2016-09-26 20:29:46');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directive`
--

DROP TABLE IF EXISTS `directive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directive` (
  `id` varchar(200) NOT NULL,
  `version` int(11) NOT NULL,
  `directive_loc` varchar(200) NOT NULL,
  `directive_explain` varchar(2000) NOT NULL,
  `directive_version` varchar(200) NOT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `like_num` int(11) NOT NULL,
  `author` varchar(45) NOT NULL,
  `is_directive_flag` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directive`
--

LOCK TABLES `directive` WRITE;
/*!40000 ALTER TABLE `directive` DISABLE KEYS */;
INSERT INTO `directive` VALUES ('4028f08156bb66c80156bb67da4b0000',12,'gob8xwhw','45555555555555555555555','1.0.0','hand.directive.User : 1','2016-08-24 15:16:01','hand.directive.User : 1','2016-09-25 21:31:51',8,'222','Y'),('8a53e17256b4efc10156b63e4ffc0023',3,'cb7un3lh','非常好的333333333333333','2.0.9','hand.directive.User : 1','2016-08-23 15:12:32','hand.directive.User : 1','2016-09-12 17:00:00',2,'张飞','N'),('8a53e17256b4efc10156b7644548003c',1,'cb7un3lh','cb7un3lh是是是是是是是是是是','1.1.0','hand.directive.User : 1','2016-08-23 20:33:37','hand.directive.User : 1','2016-08-23 21:05:28',0,'曹操','Y'),('8a53e17256b4efc10156b7646c6e003d',13,'cb7un3lh','ss','555','hand.directive.User : 1','2016-08-23 20:33:47','hand.directive.User : 1','2016-09-26 19:54:20',11,'尼玛','Y'),('8a53e17256d64a630156d66d576d0000',0,'pmqqdanp','额外企鹅完全','1.0.0','hand.directive.User : 1','2016-08-29 21:11:45','hand.directive.User : 1','2016-08-29 21:11:45',0,'去去去','N'),('8a53e172571d9e2201571da47c020001',1,'pmqqdanp','完美不','1.1.1','hand.directive.User : 1','2016-09-12 17:05:01','hand.directive.User : 1','2016-09-12 17:05:34',0,'尼古拉斯.赵四','N');
/*!40000 ALTER TABLE `directive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(200) NOT NULL,
  `version` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1',0,'admin','handhand',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-24 19:40:53
