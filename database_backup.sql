-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `accessible_locations`
--

DROP TABLE IF EXISTS `accessible_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessible_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `features` text,
  `address` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `opening_hours` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessible_locations`
--

LOCK TABLES `accessible_locations` WRITE;
/*!40000 ALTER TABLE `accessible_locations` DISABLE KEYS */;
INSERT INTO `accessible_locations` VALUES (1,'المركز الوطني للصحة النفسية – الفحيص','mental health','دعم نفسي, وصول كرسي متحرك','الفحيص, الأردن',32.0027,35.7829,'+962-6-1234567','9:00 AM - 5:00 PM'),(2,'مركز إرادة – مركز تأهيل وتشغيل الأشخاص ذوي الإعاقة','rehabilitation, employment training','تدريب مهني, لغة إشارة, دعم حركي','عمّان, الأردن',31.9741,35.9023,'+962-6-2345678','8:00 AM - 4:00 PM'),(3,'مركز زها الثقافي – عمّان','cultural, disability activities','أنشطة ترفيهية, مساحات آمنة, وصول حركي','عمّان, الأردن',31.9802,35.8577,'+962-6-3456789','10:00 AM - 6:00 PM'),(4,'جمعية الشلل الدماغي الأردنية – عمّان','rehabilitation','تأهيل, دعم تعليمي, مدخل خاص','عمّان, الأردن',31.971,35.9042,'+962-6-4567890','9:00 AM - 5:00 PM'),(5,'مركز الأمل للتربية الخاصة – إربد','special education','تعليم فردي, برامج تعديل سلوك','إربد, الأردن',32.5569,35.8469,'+962-2-5678901','8:30 AM - 3:30 PM'),(6,'مركز الحياة الأفضل – الزرقاء','rehabilitation','تدريب, دمج مجتمعي','الزرقاء, الأردن',32.0613,36.088,'+962-5-6789012','9:00 AM - 5:00 PM'),(7,'أكاديمية المكفوفين – طبربور','education, visual impairment','تعليم برايل, مواد صوتية, ممرات مرشدة','طبربور, الأردن',32.0145,35.9393,'+962-6-7890123','8:00 AM - 4:00 PM'),(8,'مستشفى الجامعة الأردنية – عمّان','medical, visual and mobility support','خدمات طبية شاملة, دعم حركي وبصري','عمّان, الأردن',32.0015,35.8709,'+962-6-8901234','24 ساعة');
/*!40000 ALTER TABLE `accessible_locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 19:40:06
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `accessible_locations`
--

DROP TABLE IF EXISTS `accessible_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessible_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `features` text,
  `address` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `opening_hours` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessible_locations`
--

LOCK TABLES `accessible_locations` WRITE;
/*!40000 ALTER TABLE `accessible_locations` DISABLE KEYS */;
INSERT INTO `accessible_locations` VALUES 
(1,'المركز الوطني للصحة النفسية – الفحيص','mental health','دعم نفسي, وصول كرسي متحرك','الفحيص, الأردن',32.0027,35.7829,'+962-6-1234567','9:00 AM - 5:00 PM'),
(2,'مركز إرادة – مركز تأهيل وتشغيل الأشخاص ذوي الإعاقة','rehabilitation, employment training','تدريب مهني, لغة إشارة, دعم حركي','عمّان, الأردن',31.9741,35.9023,'+962-6-2345678','8:00 AM - 4:00 PM'),
(3,'مركز زها الثقافي – عمّان','cultural, disability activities','أنشطة ترفيهية, مساحات آمنة, وصول حركي','عمّان, الأردن',31.9802,35.8577,'+962-6-3456789','10:00 AM - 6:00 PM'),
(4,'جمعية الشلل الدماغي الأردنية – عمّان','rehabilitation','تأهيل, دعم تعليمي, مدخل خاص','عمّان, الأردن',31.971,35.9042,'+962-6-4567890','9:00 AM - 5:00 PM'),
(5,'مركز الأمل للتربية الخاصة – إربد','special education','تعليم فردي, برامج تعديل سلوك','إربد, الأردن',32.5569,35.8469,'+962-2-5678901','8:30 AM - 3:30 PM'),
(6,'مركز الحياة الأفضل – الزرقاء','rehabilitation','تدريب, دمج مجتمعي','الزرقاء, الأردن',32.0613,36.088,'+962-5-6789012','9:00 AM - 5:00 PM'),
(7,'أكاديمية المكفوفين – طبربور','education, visual impairment','تعليم برايل, مواد صوتية, ممرات مرشدة','طبربور, الأردن',32.0145,35.9393,'+962-6-7890123','8:00 AM - 4:00 PM'),
(8,'مستشفى الجامعة الأردنية – عمّان','medical, visual and mobility support','خدمات طبية شاملة, دعم حركي وبصري','عمّان, الأردن',32.0015,35.8709,'+962-6-8901234','24 ساعة');
/*!40000 ALTER TABLE `accessible_locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:04
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `applyto`
--

DROP TABLE IF EXISTS `applyto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applyto` (
  `applytoDate` date NOT NULL,
  `seekerid` int NOT NULL,
  `jobid` int NOT NULL,
  KEY `fk_applyto_seeker_idx` (`seekerid`),
  KEY `fk_applyto_job` (`jobid`),
  CONSTRAINT `fk_applyto_job` FOREIGN KEY (`jobid`) REFERENCES `job` (`JobID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_applyto_seeker` FOREIGN KEY (`seekerid`) REFERENCES `jobseeker` (`seekerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyto`
--

LOCK TABLES `applyto` WRITE;
/*!40000 ALTER TABLE `applyto` DISABLE KEYS */;
INSERT INTO `applyto` VALUES ('2025-05-20',1,20),('2025-05-20',1,21),('2025-05-20',1,29),('2025-05-20',5,20),('2025-05-20',5,21),('2025-05-20',5,33),('2025-05-20',3,20),('2025-05-20',3,21),('2025-05-20',3,29),('2025-05-20',1,35),('2025-05-20',1,33),('2025-05-20',1,44),('2025-05-31',8,20),('2025-06-01',5,29),('2025-06-01',22,20),('2025-06-01',22,21),('2025-06-01',22,30),('2025-06-01',23,20),('2025-06-01',23,21),('2025-06-02',21,52),('2025-06-02',21,53),('2025-06-02',21,34),('2025-06-02',21,21),('2025-06-02',21,20),('2025-06-02',21,30),('2025-06-02',21,35),('2025-06-02',21,54),('2025-06-02',21,59),('2025-06-02',25,52),('2025-06-02',25,20),('2025-06-02',26,21),('2025-06-02',23,52),('2025-06-02',23,53),('2025-06-02',23,61),('2025-06-02',27,54),('2025-06-02',27,56),('2025-06-02',28,52),('2025-06-02',29,52),('2025-06-02',29,53),('2025-06-02',23,50),('2025-06-02',23,58),('2025-06-03',5,52),('2025-06-03',5,34),('2025-06-03',30,59),('2025-06-03',5,50),('2025-06-03',21,67),('2025-06-04',31,20),('2025-06-04',31,67),('2025-06-04',3,32),('2025-06-04',3,58),('2025-06-20',23,69),('2025-06-20',23,65),('2025-06-20',27,69),('2025-06-20',21,69),('2025-06-20',23,57),('2025-06-20',23,34),('2025-06-20',21,51),('2025-06-20',21,61),('2025-06-20',1,69),('2025-06-20',1,57),('2025-06-20',22,38),('2025-06-21',22,57),('2025-06-21',32,69),('2025-07-16',31,53);
/*!40000 ALTER TABLE `applyto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:03
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `job_id` int NOT NULL,
  `role` enum('seeker','publisher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_favorite` (`user_id`,`job_id`,`role`),
  KEY `fk_job` (`job_id`),
  CONSTRAINT `fk_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`JobID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (2,21,51,'seeker','2025-06-21 09:06:19'),(4,21,61,'seeker','2025-06-21 09:07:46'),(5,21,67,'seeker','2025-06-21 09:08:02'),(8,21,34,'seeker','2025-06-21 09:28:54'),(15,23,52,'seeker','2025-06-21 10:04:01'),(16,23,53,'seeker','2025-06-21 10:08:46'),(17,23,69,'seeker','2025-06-21 10:13:39'),(18,32,69,'publisher','2025-06-21 10:44:05'),(26,22,69,'seeker','2025-06-21 13:32:43'),(33,32,68,'publisher','2025-06-21 17:03:11'),(34,33,65,'publisher','2025-06-21 17:17:33'),(40,31,53,'seeker','2025-07-16 11:23:57');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:04
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `jobpublisher`
--

DROP TABLE IF EXISTS `jobpublisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobpublisher` (
  `PublisherID` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `City` varchar(255) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `disability_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PublisherID`),
  UNIQUE KEY `PublisherID_UNIQUE` (`PublisherID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `PhoneNumber_UNIQUE` (`PhoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobpublisher`
--

LOCK TABLES `jobpublisher` WRITE;
/*!40000 ALTER TABLE `jobpublisher` DISABLE KEYS */;
INSERT INTO `jobpublisher` VALUES (1,'rasheed','alomari','rasheedalomari2002@gmail.com','Rasheed1@','0770289119','irbid','jordan','irbid','Male',NULL),(5,'rsaleem','ahmad','rasheedalomari10@gmail.com','Rasheed1@','078955420','NEW YORK','jordan','ium-qais','Male','Chronic illness'),(6,'Rasheed','al omary','2020902042@yu.edu.jo','Rasheed1@','0789654222','Amman','jordan','um qais','Male','Mobility impairment'),(7,'asd','qwe','qweewrt@asd.com','Qweqwe1@','235','fgjh','dfg','dsfgd','Male',NULL),(8,'ty','ty','ty@gmail.com','t','909090','ty','ty','ty','Male',NULL),(9,'gh','gh','gh@gmail.com','g','679546735','gh','gh','gh','Female',NULL),(10,'nm','nm','nm@gmail.com','n','325546745','nm','nm','nm','Female',NULL),(11,'Ahmed','Al-Mansoori','ahmed.mansoori@example.com','securePass123','+971501234567','Dubai','UAE','Al Khail Road 15','Male',NULL),(12,'Fatima','Al-Haddad','fatima.haddad@mail.ae','Fh@2023!','+971552345678','Abu Dhabi','UAE','Khalifa City A, Villa 27','Female',NULL),(13,'Mohammed','Al-Saud','m.alsaud@ksa.com','Ksa@7890','+966550112233','Riyadh','Saudi Arabia','Olaya Street 45','Male',NULL),(14,'Layla','Abdullah','layla.abd@madaen.sa','Layla_2023','+966544445555','Jeddah','Saudi Arabia','Al Hamra District','Female',NULL),(15,'Youssef','El-Masry','y.elmasry@egyptmail.com','NileRiver1','+201002345678','Cairo','Egypt','Maadi Street 9','Male',NULL),(16,'Noura','Al-Khalifa','noura.khalifa@qatar.qa','Q@tar1234','+97433112233','Doha','Qatar','West Bay Area','Female',NULL),(17,'Khalid','Al-Bahar','k.bahar@batelco.com','BahrainSea#1','+97334001122','Manama','Bahrain','Seef District','Male',NULL),(18,'Amira','Al-Zahra','amira.zahra@omanpost.om','ZahraMount@2','+96891234567','Muscat','Oman','Al Khuwair','Female',NULL),(19,'Tariq','Hamdi','tariq.hamdi@jordanmail.jo','Petra1234','+962790123456','Amman','Jordan','Abdoun Circle','Male',NULL),(20,'Samira','Al-Farsi','samira.farsi@kwt.net','Kuwait@456','+96590011222','Kuwait City','Kuwait','Salmiya Block 4','Female',NULL),(21,'Hassan','Al-Maghrabi','h.maghrabi@casablanca.ma','Atlas2023!','+212612345678','Casablanca','Morocco','Ain Diab','Male',NULL),(22,'Leila','Ben Ali','leila.benali@tunis.tn','Carthage#7','+21650123456','Tunis','Tunisia','Lac 2','Female',NULL),(23,'Omar','Al-Hashemi','omar.hashemi@iraqpost.iq','Tigris123','+964770123456','Baghdad','Iraq','Al Mansour','Male',NULL),(24,'Rana','Al-Amir','rana.amir@lebanon.lb','CedarTree#5','+96170123456','Beirut','Lebanon','Hamra Street','Female',NULL),(25,'Yasin','Al-Mutawa','y.mutawa@yemenpost.ye','Sanaa2023','+967712345678','Sana\'a','Yemen','Hadda Street','Male',NULL),(26,'Aisha','Al-Nuaimi','a.nuaimi@sharjah.ae','Sharjah#8','+971565432109','Sharjah','UAE','Al Khan Area','Female',NULL),(27,'Faisal','Al-Rashid','f.rashid@ksa.com','NajdDesert1','+966544332211','Dammam','Saudi Arabia','King Fahd Road','Male',NULL),(28,'Mariam','El-Shenawy','m.shenawy@alexmail.eg','AlexSea2023','+201003334444','Alexandria','Egypt','San Stefano','Female',NULL),(29,'Ziad','Al-Khatib','z.khatib@syria.sy','Damascus7','+963931234567','Damascus','Syria','Malki Street','Male',NULL),(30,'Hala','Al-Marzouq','h.marzouq@kuwaitpost.kw','Marzouq_2023','+96597778888','Al Ahmadi','Kuwait','Fahaheel','Female',NULL),(31,'cvb','cvb','cvb@gmail.com','c','34562342','cvb','cvb','cvb','Male',NULL),(32,'sura','keelani','sura2@gmail.com','Sura@2002','0789564230','amman','jordan','st 30','Female','Amputation'),(33,'eyad','harb','eyadh@gamil.com','Eyad@2001h','0796231683','','jordan','','Male',''),(34,'hussam','harb','hus@gmail.com','Hussam@2005','0866547577','irbid','jordan','st30','Male',NULL),(35,'samer','harb','samer@gamil.com','Samer@2000','0799865420','irbid','jordan','st30-st','Male',NULL),(36,'sadden','abu hana','sadeen@gmail.com','Sadeen@2004','0779865432','Amman','Jordan','Abu-nusir','Female',NULL),(37,'heba','mahafzha','heba@gmail.com','Heba@2004','079875454','irbid','Jordan','kofor jaize','Female','Spinal cord injury'),(38,'Yousef','Harb','yousef@gmail.com','Yousef@1998','079658334','irbid','Jordan','AL-Huda mosuq','Male',NULL),(39,'Ameer','Hazem','ameer@gamil.com','Ameer@2001','0789556425','Abu_nusir','jordan','amaan','Male','viusal'),(40,'mohammed','hashem','sameer@gmail.com','Sameer@01','078899662','irbid','jordan','AL-barha','Male',NULL),(41,'ahmad','samer','ahamad5@gmail.com','Ahmad@2001','05555555','bd hnd','xbhhj','sgvgbc','Male',NULL),(42,'samer','hssan','samer@gmail.com','Samer@1999','0789456231','Amman','jordan','60 st','Male',NULL);
/*!40000 ALTER TABLE `jobpublisher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:03
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `JobID` int NOT NULL AUTO_INCREMENT,
  `PostingDate` date NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Status` enum('Open','Closed','In Progress') NOT NULL DEFAULT 'Open',
  `jobtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jobdescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PublisherID` int NOT NULL,
  `disability_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  UNIQUE KEY `JobID_UNIQUE` (`JobID`),
  KEY `fk_job_publisher` (`PublisherID`),
  FULLTEXT KEY `JobTitle` (`jobtitle`),
  FULLTEXT KEY `ft_jobtitle_jobdescription` (`jobtitle`,`jobdescription`),
  CONSTRAINT `fk_job_publisher` FOREIGN KEY (`PublisherID`) REFERENCES `jobpublisher` (`PublisherID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (20,'2023-11-05',42000.00,'Dubai','Open','Inclusive Education Coordinator','Develop accessible learning programs. Workplace has wheelchair ramps and sensory-friendly spaces. Sign language skills preferred.',17,NULL),(21,'2023-10-25',38000.00,'Riyadh','Open','Captioning Specialist','Create Arabic/English closed captions for media. Remote work available. Accommodations for hearing impairments provided.',23,NULL),(29,'2023-11-10',55000.00,'Abu Dhabi','Open','Disability Employment Consultant','Advise companies on inclusive hiring practices. Flexible schedule with hybrid work options. Chronic illness-friendly environment.',14,NULL),(30,'2023-11-02',32000.00,'Remote','Open','Virtual Assistant','Administrative support role with adjustable workload. Suitable for neurodiverse candidates or those with mobility challenges.',28,NULL),(31,'2023-10-28',65000.00,'Doha','In Progress','Accessible UX Designer','Design WCAG-compliant digital interfaces. Office has screen reader stations & ergonomic workstations. Autism-friendly workplace.',11,NULL),(32,'2023-11-07',45000.00,'Kuwait City','Open','Sign Language Interpreter','Provide interpretation services. Training available. Workplace offers mental health support and flexible breaks.',25,NULL),(33,'2023-11-03',40000.00,'Remote','Open','Content Writer (Disability Focus)','Create inclusive content about accessibility. Chronic pain-friendly schedule with adjustable deadlines. Voice-to-text accommodation available.',19,NULL),(34,'2023-10-30',52000.00,'Jeddah','Open','Inclusion Program Manager','Develop workplace accessibility initiatives. Office has wheelchair access and quiet rooms. PTSD-aware environment.',30,NULL),(35,'2023-11-08',36000.00,'Remote','Open','Online Therapy Coordinator','Match clients with disability specialists. Work-from-home with equipment provided. Accommodations for various disabilities available.',16,NULL),(38,'2025-05-17',123.00,'qwe','Open','qwe','qwe',20,NULL),(42,'2025-05-17',321.00,'asd','Open','asd','asd',20,NULL),(43,'2025-05-17',456.00,'fgh','Closed','fgh','fgh',6,NULL),(44,'2025-05-20',70000.00,'tyu','Open','tyu','tyu',6,NULL),(47,'2025-06-01',25000.00,'dubai','Open','Screen Reader','screen reader',6,NULL),(48,'2025-06-01',250000.00,'kjbnjk','Open','bnm','mjb',6,NULL),(50,'2025-06-01',25400.00,'Dubai','Open','screen Reader','A screen reader is a software application that converts digital text and other content displayed on a computer or mobile screen into synthesized speech or braille output. It allows users with visual impairments or blindness to navigate websites, read documents, and interact with digital devices independently by vocalizing on-screen information and providing keyboard-based navigation',5,'Epilepsy'),(51,'2025-06-01',5205.00,'yafa','Open','web devlopment','Remote',6,'Speech disability'),(52,'2025-06-02',250000.00,'irbid','Open','REMOTE CUSTOMER SUPPORT REPRESENTATIVE','We are committed to creating an inclusive and accessible work environment. We are seeking Customer Support Representatives who are passionate about helping others and can provide exceptional service via email, chat, or phone — all from the comfort of home.\r\n\r\nThis position is particularly suitable for individuals with physical, sensory, or mild cognitive disabilities, as it offers full remote work, reasonable accommodations, and assistive technologies as needed.',6,'Autism spectrum disorder'),(53,'2025-06-02',550.00,'irbid','Open','Customer Support Agent (Voice or Chat)','Join our inclusive customer service team as a Support Agent, helping customers resolve issues via chat or phone. Ideal for individuals with hearing or mobility impairments. Chat-based positions are available for those who prefer text communication.',11,'Muscular dystrophy'),(54,'2025-06-02',9500.00,'Amman','Open',' Content Writer / Blogger','We’re hiring Content Writers to create engaging articles, blog posts, or product descriptions. This job is perfect for people with disabilities who love writing and working independently from home.',11,'Multiple sclerosis'),(55,'2025-06-02',650000.00,'Texas','Open',' Graphic Designer','A creative and inclusive environment awaits a Graphic Designer to work on logos, social media visuals, and marketing materials. Ideal for candidates with physical disabilities who enjoy creative tools and visual storytelling.',38,'Autism spectrum disorder'),(56,'2025-06-02',95520.00,'Qater','Closed','QA Tester / Accessibility Tester','Join our tech team as a Quality Assurance (QA) Tester, especially testing the accessibility of web and mobile apps. This job is ideal for individuals with disabilities, as your insights help us improve digital inclusion.',32,'Hearing impairment'),(57,'2025-06-02',25800.00,'Dubai','Open',' Social Media Manager','Join our marketing team as a Social Media Manager, planning and posting engaging content for platforms like Instagram, LinkedIn, and Facebook. This role is perfect for individuals with disabilities who enjoy creativity, communication, and working from home.',6,'Speech disability'),(58,'2025-06-02',25564.00,'Qater','Open','Social Media Manager','Join our marketing team as a Social Media Manager, planning and posting engaging content for platforms like Instagram, LinkedIn, and Facebook. This role is perfect for individuals with disabilities who enjoy creativity, communication, and working from home.',37,'Epilepsy'),(59,'2025-06-02',65600.00,'Dubai','Open',' Document Scanning & Digitization Assistant','We are seeking a Scanning and Digitization Assistant to convert physical files into digital formats. This on-site role is suitable for people with mild physical disabilities and offers a calm, organized working environment.',37,'Amputation'),(60,'2025-06-02',65400.00,'Amman','Open','AUDIO CONTENT CREATOR / PODCAST EDITOR','We are looking for someone with a passion for sound and storytelling to join our team as an Audio Content Creator. If you are comfortable with sound editing and vocal recording, this role is a great fit — no screen use is required.\r\n\r\nKey Tools: Screen reader-compatible audio software (e.g., Audacity, Reaper)\r\nAccessibility: Keyboard navigation support, audio-only workflow',37,'Learning disability'),(61,'2025-06-02',45025.00,'tisas','Open','EMAIL SUPPORT REPRESENTATIVE (TEXT-ONLY)','Provide excellent customer service through written communication only. No voice or phone tasks are required. You’ll handle email tickets and live chat support.\r\n\r\nKey Tools: Helpdesk systems (e.g., Zendesk), Gmail, Intercom\r\nAccessibility: All communication is written, no verbal interactions needed',33,'Deafblindness'),(62,'2025-06-02',65056.00,'Amman','Open','Online Tutor / E-Learning Assistant','Passionate about teaching? Become an Online Tutor in subjects like math, English, or science. This flexible position is suitable for individuals with hearing or mobility impairments who want to support student learning from home.\r\n\r\nResponsibilities:\r\n\r\nConduct virtual lessons using Zoom or Google Meet\r\n\r\nProvide personalized help and feedback\r\n\r\nTrack student progress',33,'Spinal cord injury'),(63,'2025-06-02',65484.00,'Amman','Open','Virtual Bookkeeper / Accounting Assistant','We are hiring a detail-focused Virtual Bookkeeper to help with managing financial records, invoices, and basic accounting. This job suits individuals with physical disabilities or chronic illnesses who prefer working remotely.',33,'Mobility impairment'),(64,'2025-06-02',6580.00,'Amman','Open','WEB ACCESSIBILITY TESTER','Test websites for accessibility compliance using screen readers or keyboard navigation. Especially suitable for users who use these tools themselves.',33,'Amputation'),(65,'2025-06-02',65446.00,'Aqaba','Open','TRANSCRIPTIONIST','TRANSCRIPTIONIST',33,'Deafblindness'),(66,'2025-06-02',65450.00,'Amman','Open','Web Dvloper','remote',32,'Muscular dystrophy'),(67,'2025-06-03',65464.00,'Amman','Open','UI','Make a ui interface',32,'Mental health condition'),(68,'2025-06-04',65420.00,'Amman','Open','web devlobment','ui/ux design',32,'Speech disability'),(69,'2025-06-20',6540.00,'Amman','Open','Virtual Assistant','Manage emails, appointments, schedules, and online tasks.\r\n\r\nCan be done entirely from home.\r\n\r\nIdeal for individuals with mobility issues or anxiety disorders.',32,'Visual impairment'),(77,'2025-07-16',352220.00,'Amman','Open','Full stack','remotly - full stack ',32,'Cerebral palsy');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:03
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `job_id` int NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notifications_sender` (`sender_id`),
  KEY `fk_notifications_receiver` (`receiver_id`),
  KEY `fk_notifications_job` (`job_id`),
  CONSTRAINT `fk_notifications_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`JobID`) ON DELETE CASCADE,
  CONSTRAINT `fk_notifications_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `jobpublisher` (`PublisherID`) ON DELETE CASCADE,
  CONSTRAINT `fk_notifications_sender` FOREIGN KEY (`sender_id`) REFERENCES `jobseeker` (`seekerID`) ON DELETE CASCADE,
  CONSTRAINT `notifications_chk_1` CHECK ((`status` in (_utf8mb4'read',_utf8mb4'unread')))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,23,32,69,'New application received for your job: Virtual Assistant','read','2025-06-20 15:51:22','apply'),(2,23,33,65,'Khaled applied to your job: TRANSCRIPTIONIST','read','2025-06-20 15:57:36','apply'),(3,27,32,69,'Maya applied to your job: Virtual Assistant','read','2025-06-20 15:59:52','apply'),(4,21,32,69,'سرى applied to your job posted by sura: Virtual Assistant','read','2025-06-20 16:04:10','apply'),(5,23,6,57,'Khaled applied to your job posted by Rasheed:  Social Media Manager','unread','2025-06-20 16:08:34','apply'),(6,23,30,34,'Khaled applied to your job posted by Hala: Inclusion Program Manager','unread','2025-06-20 16:11:27','apply'),(7,21,6,51,'سرى applied to your job posted by Rasheed: web devlopment','unread','2025-06-20 16:22:35','apply'),(8,21,33,61,'سرى applied to your job posted by eyad: EMAIL SUPPORT REPRESENTATIVE (TEXT-ONLY)','read','2025-06-20 16:26:05','apply');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:02
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abilityhire
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `seeker_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `font_size` varchar(10) NOT NULL DEFAULT '16px',
  `notifications` tinyint(1) NOT NULL DEFAULT '1',
  `dark_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `idx_seeker_settings` (`seeker_id`),
  UNIQUE KEY `idx_publisher_settings` (`publisher_id`),
  CONSTRAINT `user_settings_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `jobseeker` (`seekerID`) ON DELETE CASCADE,
  CONSTRAINT `user_settings_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `jobpublisher` (`PublisherID`) ON DELETE CASCADE,
  CONSTRAINT `chk_user_type` CHECK ((((`seeker_id` is not null) and (`publisher_id` is null)) or ((`seeker_id` is null) and (`publisher_id` is not null))))
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,1,NULL,'16px',1,0),(2,NULL,6,'16px',0,0),(7,NULL,32,'20px',1,0),(9,NULL,36,'20px',1,0),(16,NULL,37,'16px',1,0),(18,NULL,5,'18px',1,0),(19,29,NULL,'16px',1,0),(21,23,NULL,'16px',1,0),(24,21,NULL,'16px',1,0),(30,NULL,41,'16px',0,0),(33,NULL,33,'16px',1,0);
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 18:56:03
