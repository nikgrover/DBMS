-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `col_id` int NOT NULL AUTO_INCREMENT,
  `col_name` varchar(10) DEFAULT NULL,
  `col_est_date` date DEFAULT NULL,
  `col_located_at` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1000,'cegep',NULL,'Montreal'),(1001,'cegep','2020-02-29','Montreal');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `LecId` int DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `subject` varchar(10) NOT NULL,
  KEY `LecId` (`LecId`),
  CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`LecId`) REFERENCES `staff` (`Staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES (103,'Veronica','Parique','Math');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `Subject` varchar(20) DEFAULT NULL,
  `StudentId` int DEFAULT NULL,
  `LecturerID` int DEFAULT NULL,
  KEY `StudentId` (`StudentId`),
  KEY `LecturerID` (`LecturerID`),
  CONSTRAINT `lectures_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`student_id`),
  CONSTRAINT `lectures_ibfk_2` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staffid` int NOT NULL AUTO_INCREMENT,
  `Staff_firstName` varchar(10) DEFAULT NULL,
  `Staff_lastName` varchar(10) DEFAULT NULL,
  `hiringDate` date DEFAULT NULL,
  `ExitDate` date DEFAULT NULL,
  PRIMARY KEY (`Staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (101,'Raghav','Aggarwal','1997-05-02','2017-12-05'),(102,'Manik','Saini','1984-05-02','2021-01-01'),(103,'Vernoica','Parique','1994-10-12','2007-09-01'),(104,'yun','li','2000-02-12','2005-09-01'),(105,'Ramiz','Malik','2009-02-01','2020-02-01');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdfinancedept`
--

DROP TABLE IF EXISTS `stdfinancedept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdfinancedept` (
  `PayeeID` int DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `Course_name` varchar(10) DEFAULT NULL,
  `Total_Fees` int NOT NULL,
  KEY `PayeeID` (`PayeeID`),
  CONSTRAINT `stdfinancedept_ibfk_1` FOREIGN KEY (`PayeeID`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdfinancedept`
--

LOCK TABLES `stdfinancedept` WRITE;
/*!40000 ALTER TABLE `stdfinancedept` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdfinancedept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stffinancedept`
--

DROP TABLE IF EXISTS `stffinancedept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stffinancedept` (
  `StaffID` int DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `salary` int NOT NULL,
  `Department` varchar(10) DEFAULT NULL,
  `WorkingYears` int DEFAULT NULL,
  KEY `StaffID` (`StaffID`),
  CONSTRAINT `stffinancedept_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`Staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stffinancedept`
--

LOCK TABLES `stffinancedept` WRITE;
/*!40000 ALTER TABLE `stffinancedept` DISABLE KEYS */;
/*!40000 ALTER TABLE `stffinancedept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_firstName` varchar(10) DEFAULT NULL,
  `student_lastName` varchar(10) DEFAULT NULL,
  `student_enrollment_date` date DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `student_course_name` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'raman','kumaar','2019-01-10','1997-09-11','MAD prog.','Montreal'),(2,'Surya','Teja','2019-01-12','1997-04-21','MAD prog.','Montreal'),(3,'Simran','kaur','2019-01-02','1996-02-11','MAD prog.','Ottawa'),(4,'Akshit','Singh','2019-01-22','1998-12-12','MAD prog.','Sherbooke'),(5,'Raman','shah','2019-02-01','1995-12-29','MAD prog.','Montreal'),(6,'vinkal','malhotra','2019-01-30','1997-01-30','MAD prog.','Montreal');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01 23:16:20
