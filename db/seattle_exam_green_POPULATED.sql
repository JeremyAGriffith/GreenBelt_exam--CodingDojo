CREATE DATABASE  IF NOT EXISTS `seattle_exam_green` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seattle_exam_green`;
-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: 127.0.0.1    Database: seattle_exam_green
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exams_students_idx` (`student_id`),
  CONSTRAINT `fk_exams_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,1,'Math',100,'Passed','Great Job!!!','2013-10-01 16:34:20','2013-10-01 16:34:20'),(2,1,'Physics',65,'Failed','Hmmmm','2013-10-01 17:06:43','2013-10-01 17:06:43'),(3,1,'English',100,'Passed','keep going!!!!!','2013-10-01 17:08:00','2013-10-01 17:08:00'),(4,2,'Astronomy',50,'Failed','Oh noes!?!?!','2013-10-01 17:20:48','2013-10-01 17:20:48'),(5,2,'Japanese',100,'Passed','Of Course','2013-10-01 17:21:43','2013-10-01 17:21:43'),(6,2,'Jumping Rope',0,'Failed','hmmm too pudgy','2013-10-01 17:22:02','2013-10-01 17:22:02'),(7,3,'linguistics',35,'Failed','do better','2013-10-01 17:22:26','2013-10-01 17:22:26'),(8,3,'Engligh',5,'Failed','I percieve he doesn\'t know how to spell','2013-10-01 17:23:05','2013-10-01 17:23:05'),(9,3,'basket weaving',100,'Passed','I\'m pretty sure that I misspelled percieve up above','2013-10-01 17:23:44','2013-10-01 17:23:44'),(10,4,'food',80,'Passed','makes pretty good sammies','2013-10-01 17:24:07','2013-10-01 17:24:07'),(11,4,'running',85,'Passed','not ot shabby','2013-10-01 17:24:20','2013-10-01 17:24:20'),(12,4,'programming',100,'Passed','he might be better than me','2013-10-01 17:24:41','2013-10-01 17:24:41'),(13,5,'Scottish',100,'Passed','With a name like that','2013-10-01 17:25:01','2013-10-01 17:25:01'),(14,5,'Irish',100,'Passed','I\'m not sure which nationality he is anyway','2013-10-01 17:25:20','2013-10-01 17:25:20'),(15,5,'beer',65,'Failed','hmm that\'s odd!?!?!?!','2013-10-01 17:25:37','2013-10-01 17:25:37'),(16,6,'Tlly hoe',100,'Passed','I don\'t recall teaching this','2013-10-01 17:26:05','2013-10-01 17:26:05'),(17,6,'bally who',95,'Passed','again don\'t recall it???','2013-10-01 17:26:21','2013-10-01 17:26:21'),(18,6,'scum scraping',95,'Passed','yea you go girl','2013-10-01 17:26:42','2013-10-01 17:26:42'),(19,7,'cutting in line',40,'Failed','not good enough!!!!!!','2013-10-01 17:27:04','2013-10-01 17:27:04'),(20,7,'mustache',100,'Passed','don\'t call me mustache','2013-10-01 17:27:31','2013-10-01 17:27:31'),(21,7,'dropping dimes',100,'Passed','','2013-10-01 17:27:53','2013-10-01 17:27:53'),(22,8,'revenge',85,'Passed','she had it coming','2013-10-01 17:28:16','2013-10-01 17:28:16'),(23,8,'CDS',100,'Passed','more like see deez nuts','2013-10-01 17:28:42','2013-10-01 17:28:42'),(24,8,'identity theft',90,'Passed','cling clang','2013-10-01 17:28:59','2013-10-01 17:28:59'),(25,9,'height',0,'Failed','world\'s smallest man','2013-10-01 17:29:17','2013-10-01 17:29:17'),(26,9,'smoking',100,'Passed','the cigarette are bigger than his head','2013-10-01 17:29:34','2013-10-01 17:29:34'),(27,9,'living',0,'Failed','his smoking prevented a long life','2013-10-01 17:29:56','2013-10-01 17:29:56'),(28,10,'Cool',100,'Passed','Oh Yea!!!','2013-10-01 17:30:07','2013-10-01 17:30:07'),(29,10,'shear awesomeness',100,'Passed','Well played sir','2013-10-01 17:30:27','2013-10-01 17:30:27'),(30,10,'Too cool for school',100,'Passed','so true!!!!!!!!!!','2013-10-01 17:30:42','2013-10-01 17:30:42'),(31,1,'Korean',100,'Passed','Heera did a great job!!!!!!','2013-10-01 17:39:36','2013-10-01 17:39:36');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Tom Ato','2013-10-01 15:00:20','2013-10-01 15:00:20'),(2,'Bobby Bob','2013-10-01 15:00:52','2013-10-01 15:00:52'),(3,'Susy Who','2013-10-01 15:01:06','2013-10-01 15:01:06'),(4,'Jim John','2013-10-01 15:01:20','2013-10-01 15:01:20'),(5,'Timmy McManus','2013-10-01 15:01:33','2013-10-01 15:01:33'),(6,'McLovin','2013-10-01 15:01:49','2013-10-01 15:01:49'),(7,'Larry','2013-10-01 15:02:02','2013-10-01 15:02:02'),(8,'Donna Dawna','2013-10-01 15:02:20','2013-10-01 15:02:20'),(9,'Pi Pi','2013-10-01 15:02:26','2013-10-01 15:02:26'),(10,'John Jon','2013-10-01 15:02:40','2013-10-01 15:02:40');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-01 18:04:10
