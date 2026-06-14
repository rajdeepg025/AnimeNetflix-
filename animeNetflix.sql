-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: animenetflix
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `anime`
--

DROP TABLE IF EXISTS `anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `latest_episode` int DEFAULT NULL,
  `season` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `anime` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `anime` VALUES (1,'Attack on Titan','aot_s1.jpg',9,2013,2,25,'S1'),(2,'DanDaDan','dandadan-s1.jpg',8.8,2025,2,12,'S1'),(3,'Solo leveling','solo_leveling.jpeg',9.5,2024,2,12,'S1'),(4,'Mushoko Tensei','mushoko_tensei.jpeg',8.5,2021,2,25,'S1'),(5,'Jujutsu Kaisen','jjk.jpeg',8.3,2020,3,24,'S1'),(6,'Dr stone','Drstone.jpeg',8.5,2024,1,25,'S1'),(7,'Chainsaw Man','chainsaw-man-1.jpg',8.7,2022,1,12,'S1'),(8,'The Fragrant Flower Blooms with Dignity','My friend and bond over this anime.jpeg',9.5,2025,2,13,'S1'),(9,'Chainsaw Man Reze ','chainsaw man _movie_ reze_arc.jpeg',8.5,2025,4,1,'Movie'),(10,'Black Clover','black clover.jpeg',9.8,2017,2,51,'s1'),(11,'Bleach','bleach.jpeg',9.8,2009,2,366,'s1'),(12,'Wind Breaker','wind breaker.jpeg',8.2,2018,3,24,'s1'),(13,'Death Note','death note.jpeg',8.9,2012,3,24,'s1'),(14,'Sakamoto Days','sakamotodays.jpeg',8.5,2015,3,24,'s1'),(15,'Your Name','your name.jpeg',8.5,2015,4,1,'Movie'),(16,'Spy x Family','spyxfamily.jpeg',7.5,2015,1,24,'s1'),(17,'RE:Zero','re_zero.jpeg',8.5,2015,1,12,'s1'),(18,'Alya Sometimes Hides Her Feelings in Russian','Alya Sometimes Hides Her Feelings in Russian.jpeg',7.5,2019,1,12,'s1');
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'The Apocalypse is Here','The Apocalypse is Here.jpeg',9.2,8,'Ongoing'),(2,'Solo Leveling','Read Solo Leveling __ Episode 1 _ Tapas Comics.jpeg',9.5,8,'Ongoing'),(3,'The Shepherd Wizard','the shepherd wizard.webp',8.2,8,'Ongoing'),(4,'DanDaDan','dandadan.jpg',9.2,7,'Ongoing'),(5,'Attack On Titan','Shingeki_no_Kyojin_manga_volume_1.jpg',9.5,7,'Completed'),(6,'Musuko Tensei','musuko_Volume_1_JP.webp',9.2,7,'Ongoing'),(7,'The Tutorial Tower Of The Advanced Player','The Tutorial Tower Of The Advanced Player _(2020_Webtoon).jpeg',7.2,8,'Ongoing'),(8,'Bleach','bleach.webp',8.5,7,'Ongoing'),(9,'Dr Stone','dr stone.jpg',8.5,7,'Ongoing'),(10,'Black Clover','black clover.jpg',8.5,7,'Completed'),(11,'My Dad Is Too Strong','my_dad_is_too_strong.webp',7.5,8,'Ongoing'),(12,'Demonic Emperor','Demonic Emperor.jpg',7.5,8,'Ongoing'),(13,'Daytime in Bunker','daytime in a bunker.jpg',7.5,8,'Ongoing');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Latest'),(2,'Popular'),(3,'Trending'),(4,'Movies'),(7,'Manga'),(8,'Manhwa'),(9,'novel');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `chapter_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `chapter_number` int DEFAULT NULL,
  `chapter_title` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`chapter_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `chapters_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodes` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `anime_id` int DEFAULT NULL,
  `episode_number` int DEFAULT NULL,
  `video_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`episode_id`),
  KEY `anime_id` (`anime_id`),
  CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
INSERT INTO `episodes` VALUES (1,1,1,'https://animesuge.cz/anime/attack-on-titan-bgaoa/ep-1'),(2,1,2,'https://animesuge.cz/anime/attack-on-titan-bgaoa/ep-2'),(3,1,3,'https://animesuge.cz/anime/attack-on-titan-bgaoa/ep-3');
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `music_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `singer` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `song` varchar(500) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'Bling-Bang-Bang-Born','Creepy Nuts','CD _ Creepy Nuts LEGION Standard Edition.jpeg','bling-bang-bang-born.mp3',2),(2,'Otonoke','Creepy Nuts','Otonoke.jpeg','dandadan-otonoke.mp3',2),(3,'IRIS OUT','Kenshi Yonezu','iris.jpeg','iris out music.mp3',2),(4,'Number one-Bankai','Shiro SAGISU','Number-One-Bankaijpg.jpg','Number-One-Bankai.mp3',2),(5,'Nyanpasu Yabure Kabure','Kotori Koiwai','Nyanpasu.jpeg','Nyanpasu-Yabure-Kabure.mp3',2),(6,'Waku Waku(Anya Song)','Anya','wah-wah-anta.jpeg','SpyxFamily-Waku-Waku-Song.mp3',2),(7,'Just A Boy','DrINsaNE','just-a-boy.jpeg','DrINsaNE-JUST-A-BOY.mp3',2),(8,'Kamado Tanjirou no Uta','LisA','Kamado Tanjirou no Uta (From _Demon Slayer_ Kimetsu no Yaiba_).jpeg','Kamado-Tanjiro-no-Uta.mp3',2),(9,'Shinzou Wo Sasageyo','Linked Horizon','sagayo.jpeg','Shingeki no Kyojin (Shinzou Wo Sasageyo opening) HD - Daniel Campoverde.mp3',1),(10,'Song of Dead','KANA-BOON','song of dead.jpg','OPENING #2   Song of the Dead by KANA-BOON  Zom 100 Bucket List of the Dead  VIZ - vizmedia.mp3',1),(11,'Black Catcher','Vickeblanka','black clover opening 10.jpeg','Black Clover Opening 10  Black Catcher - Crunchyroll.mp3',1),(12,'BEAUTIFUL','TREASURE','beautiful.jpeg','TREASURE - BEAUTIFUL (Anime M_V) - TREASURE.mp3',1),(13,'Kawaikute Gomen (I am Sorry for Being Cute)','Capi','Kawaikute Gomen (I am Sorry for Being Cute).jpg','HoneyWorks - HoneyWorks OFFICIAL.mp3',3),(14,'Kaikai Kitan','Eve','jjk.jpeg','Kaikai Kitan.mp3',3);
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 12:44:12
