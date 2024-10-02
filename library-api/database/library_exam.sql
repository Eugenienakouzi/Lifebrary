CREATE DATABASE  IF NOT EXISTS `library_exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library_exam`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: library_exam
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NOT NULL,
  `page_count` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (1,'Harry Potter and the Philosopher\'s Stone','J. K. Rowling',1997,223,'It is a story about Harry Potter, an orphan brought up by his aunt and uncle because his parents were killed when he was a baby. Harry is unloved by his uncle and aunt but everything changes when he is invited to join Hogwarts School of Witchcraft and Wizardry and he finds out he\'s a wizard.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (2,'Harry Potter and the Chamber of Secrets','J. K. Rowling',1998,251,'The second instalment of boy wizard Harry Potter\'s adventures at Hogwarts School of Witchcraft and Wizardry, based on the novel by JK Rowling. A mysterious elf tells Harry to expect trouble during his second year at Hogwarts, but nothing can prepare him for trees that fight back, flying cars, spiders that talk and deadly warnings written in blood on the walls of the school.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (3,'Harry Potter and the Prisoner of Azkaban','J. K. Rowling',1999,317,'Harry Potter\'s third year at Hogwarts starts off badly when he learns deranged killer Sirius Black has escaped from Azkaban prison and is bent on murdering the teenage wizard. While Hermione\'s cat torments Ron\'s sickly rat, causing a rift among the trio, a swarm of nasty Dementors is sent to protect the school from Black. A mysterious new teacher helps Harry learn to defend himself, but what is his secret tie to Sirius Black?');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (4,'Harry Potter and the Goblet of Fire','J. K. Rowling',2000,636,'The fourth movie in the Harry Potter franchise sees Harry returning for his fourth year at Hogwarts School of Witchcraft and Wizardry, along with his friends, Ron (Rupert Grint) and Hermione. There is an upcoming tournament between the three major schools of magic, with one participant selected from each school by the Goblet of Fire. When Harry\'s name is drawn, even though he is not eligible and is a fourth player, he must compete in the dangerous contest.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (5,'Harry Potter and the Order of the Phoenix','J. K. Rowling',2003,766,'Harry Potter and the Order of the Phoenix is a thrilling tale of friends banding together to fight against evil. As the danger grows stronger, Harry and his friends form a secret organization called the Order of the Phoenix to defend the wizarding world.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (6,'Harry Potter and the Half-Blood Prince','J. K. Rowling',2005,607,'In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (7,'Harry Potter and Deathly Hallows','J. K. Rowling',2007,607,'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (8,'The Hunger Games','Suzanne Collins',2008,374,'Twelve boys and twelve girls are forced to appear in a live event called The Hunger Games. There is only one rule: kill or be killed. The series follows sixteen-year-old Katniss Everdeen\'s quest for survival, as she battles in the Games, fighting for her life, her family, her friends and her people.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (9,'Catching Fire','Suzanne Collins',2009,391,'Despite leaving the arena, Katniss and her loved ones are in more danger than ever as the threat of punishment looms. In Catching Fire, Collings explores the effects of trauma and classism and how fascism oppresses society. The novel also investigates how strong emotions like guilt, fear, and anger can spark rebellion.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (10,'Mockingjay','Suzanne Collins',2010,390,'The book follows Katniss and her team as they travel through the districts and fight against the Capitol. Along the way, Katniss discovers the true nature of the rebellion and is forced to make some difficult decisions. Important themes in Mockingjay include war, loyalty, and the human spirit.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (11,'The Fault in Our Stars','John Green',2012,313,'The Fault in Our Stars by John Green is a young adult fiction novel that narrates the story of a 16-year-old girl who is diagnosed with cancer. She joins a support group where she meets Augustus, and there is a rollercoaster of emotions throughout this novel as the relationship between Hazel and Augustus develops.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (12,'Murder on the Orient Express','Agatha Christie',1934,256,'An American tycoon lies dead in his compartment, stabbed a dozen times, his door locked from the inside. Isolated and with a killer in their midst, detective Hercule Poirot must identify the murderer – in case he or she decides to strike again.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (13,'The Perks of Being a Walflower','Stephen Chbasky',1999,256,'It follows Charlie during his freshman year of high school as he makes and loses friends, experiments with drugs and his sexuality, and comes to grips with his past. Charlie is the main character and first-person narrator of The Perks of Being a Wallflower, which is told through Charlie\'s letters.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (14,'Looking for Alaska','John Green',2005,297,'“Looking for Alaska” follows the story of Miles “Pudge” Halter, a teenager who leaves his mundane life in Florida to attend Culver Creek Preparatory School in Alabama. At Culver Creek, Pudge makes new friends and becomes infatuated with the enigmatic Alaska Young.');
INSERT INTO `books` (`id`,`title`,`author`,`year`,`page_count`,`description`) VALUES (15,'It','Stephen King',1986,1138,'The story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey. \"It\" primarily appears in the form of Pennywise the Dancing Clown to attract its preferred prey of young children.');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `extended_time` datetime(6) DEFAULT NULL,
  `expiry_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sessions_username_idx` (`username`),
  CONSTRAINT `fk_sessions_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` binary(60) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anna',0x243262243130244439463376685466424652374A745056344358756165334D4D6B4651752F504C4B6D4B776A586E73445431594F4D49543768722E65,'librarian','Anna Brown'),('catherine',0x243262243130247334696D3047426E67734A4E4F6A326739334D4F57654B614670456A444E4F4E487A2F4E6A6A6D79545853537439664753482F7232,'customer','Catherine Dubois'),('emma',0x24326224313024617953464133543851575A6967656437396F3248386531785A4543534254696E74616E6C52796B6844667A422F2E47433472764965,'customer','Emma Page');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `reservation` (
  `idreservation` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `idbook` int NOT NULL,
  PRIMARY KEY (`idreservation`),
  KEY `idbook_idx` (`idbook`),
  CONSTRAINT `idbook` FOREIGN KEY (`idbook`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
UNLOCK TABLES;

CREATE TABLE `wishlist` (
  `idwishlist` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `idbook` int NOT NULL,
  PRIMARY KEY (`idwishlist`),
  KEY `id_idx` (`idbook`),
  CONSTRAINT `id` FOREIGN KEY (`idbook`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
