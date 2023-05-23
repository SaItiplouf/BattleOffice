-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: tpbattleoffice
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Polo','Gani','Jean paul de la rue','',3232,'Suisse','323232','a@a.com','CityTown'),(2,'Barclay','Dodson','Sed eum incididunt s','Sed eum incididunt s',6001,'France','5995353','Quo velit temporibus','Delectus est vel lo'),(3,'Naida','Barr','Ut illum fugiat qu','Ut illum fugiat qu',8815,'France','+1 (339) 751-2928','Est et ipsam quae do','Consequuntur velit t'),(4,'Ignatius','Noel','Esse natus minus ha','Esse natus minus ha',4833,'France','+1 (365) 146-3384','kaqyryf@mailinator.com','Neque elit omnis es'),(5,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(6,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(7,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(8,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(9,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(10,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(11,'Wendy','Ramsey','Magna facilis qui fu','Magna facilis qui fu',7204,'France','+1 (698) 832-5746','sesa@mailinator.com','Libero proident ape'),(12,'Bryar','Norman','Est ad ad mollitia ','Est ad ad mollitia ',8635,'France','+1 (121) 131-6439','dige@mailinator.com','Eveniet ut sint iru'),(13,'Drake','Ferguson','Quibusdam suscipit a','Quibusdam suscipit a',1277,'France','+1 (174) 377-5673','cegoz@mailinator.com','Consequuntur ipsum '),(14,'Christian','Waller','Dolorem pariatur Fu','Dolorem pariatur Fu',3367,'France','+1 (185) 688-4728','xivodudo@mailinator.com','Iste id pariatur Ac'),(15,'Christian','Waller','Dolorem pariatur Fu','Dolorem pariatur Fu',3367,'France','+1 (185) 688-4728','xivodudo@mailinator.com','Iste id pariatur Ac'),(16,'Mia','Coffey','Ut et deserunt odit ','Ut et deserunt odit ',4295,'France','+1 (214) 822-4938','wuvequ@mailinator.com','Do non et aliquid ad'),(17,'Eric','Estrada','Reprehenderit labori','Reprehenderit labori',660,'France','+1 (233) 898-7991','xaxebiza@mailinator.com','Quis sint nihil ut c'),(18,'Ethan','Rocha','Molestiae hic corpor','Molestiae hic corpor',396,'France','+1 (357) 113-1007','surozal@mailinator.com','Labore consectetur '),(19,'Ethan','Rocha','Molestiae hic corpor','Molestiae hic corpor',396,'France','+1 (357) 113-1007','surozal@mailinator.com','Labore consectetur '),(20,'Ethan','Rocha','Molestiae hic corpor','Molestiae hic corpor',396,'France','+1 (357) 113-1007','surozal@mailinator.com','Labore consectetur '),(21,'Ethan','Rocha','Molestiae hic corpor','Molestiae hic corpor',396,'France','+1 (357) 113-1007','surozal@mailinator.com','Labore consectetur '),(22,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(23,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(24,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(25,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(26,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(27,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(28,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(29,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(30,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(31,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(32,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(33,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(34,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(35,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(36,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(37,'Raymond','Mathis','Iure tempore sunt e','Iure tempore sunt e',1010,'France','+1 (281) 913-7706','kafoqenari@mailinator.com','Odit cum non facere '),(38,'Kirsten','Anthony','Et illo quae occaeca','Et illo quae occaeca',5930,'France','+1 (254) 581-4476','qonajaj@mailinator.com','Est voluptas vel ex'),(39,'Kirsten','Anthony','Et illo quae occaeca','Et illo quae occaeca',5930,'France','+1 (254) 581-4476','qonajaj@mailinator.com','Est voluptas vel ex'),(40,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(41,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(42,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(43,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(44,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(45,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(46,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(47,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(48,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(49,'Ashton','Foster','Quod exercitation as','Quod exercitation as',3655,'France','+1 (319) 234-3181','ramywi@mailinator.com','Eos voluptatibus vel'),(50,'Kenneth','Steele','Saepe corrupti volu','Saepe corrupti volu',5853,'France','+1 (129) 793-9962','piwepanapo@mailinator.com','Iusto saepe nisi sed'),(51,'Kenneth','Steele','Saepe corrupti volu','Saepe corrupti volu',5853,'France','+1 (129) 793-9962','piwepanapo@mailinator.com','Iusto saepe nisi sed'),(52,'Kenneth','Steele','Saepe corrupti volu','Saepe corrupti volu',5853,'France','+1 (129) 793-9962','piwepanapo@mailinator.com','Iusto saepe nisi sed'),(53,'Pascale','Knapp','Asperiores et quia e','Asperiores et quia e',5048,'France','+1 (856) 837-8036','kodadusapu@mailinator.com','Deserunt ex aspernat'),(54,'Pascale','Knapp','Asperiores et quia e','Asperiores et quia e',5048,'France','+1 (856) 837-8036','kodadusapu@mailinator.com','Deserunt ex aspernat'),(55,'Griffith','Gamble','Aliquam libero sed d','Aliquam libero sed d',2015,'France','+1 (109) 166-3093','sibax@mailinator.com','Expedita rem eos sin'),(56,'Michelle','Barton','Ab similique do enim','Ab similique do enim',7500,'France','+1 (562) 952-6044','wifumoroku@mailinator.com','Ab possimus corpori'),(57,'Sybill','Gomez','Repudiandae recusand','Repudiandae recusand',9190,'France','+1 (134) 651-1839','bizu@mailinator.com','Perferendis sed qui '),(58,'Hayes','Morrison','Nulla dolor fugiat e','Nulla dolor fugiat e',2138,'France','+1 (329) 685-9469','qutoqicys@mailinator.com','Harum dolor qui comm'),(59,'Jamalia','Hines','Commodo similique ac','Commodo similique ac',6235,'France','+1 (924) 968-5643','fada@mailinator.com','Rerum mollit obcaeca'),(60,'Elijah','Downs','Fuga Pariatur Impe','Fuga Pariatur Impe',2837,'France','+1 (354) 553-1042','qegucoji@mailinator.com','Eu qui ipsum nostrum'),(61,'Idola','Ballard','Consequatur Dolor i','Consequatur Dolor i',3007,'France','+1 (509) 397-7335','xaciw@mailinator.com','Quae aut minim eaque'),(62,'Idola','Ballard','Consequatur Dolor i','Consequatur Dolor i',3007,'France','+1 (509) 397-7335','xaciw@mailinator.com','Quae aut minim eaque'),(63,'Rana','Garza','Non magna eos aperia','Non magna eos aperia',5595,'France','+1 (551) 578-6316','negyxysu@mailinator.com','Incididunt totam cum'),(64,'Rana','Garza','Non magna eos aperia','Non magna eos aperia',5595,'France','+1 (551) 578-6316','negyxysu@mailinator.com','Incididunt totam cum'),(65,'Beverly','Knight','Voluptatem reprehend','Voluptatem reprehend',1828,'France','+1 (541) 458-3086','xesosixuf@mailinator.com','Aut do duis expedita'),(66,'Zachary','Fowler','Aperiam nihil quis d','Aperiam nihil quis d',5529,'France','+1 (572) 482-9427','tehyl@mailinator.com','Quasi placeat error'),(67,'Zachary','Fowler','Aperiam nihil quis d','Aperiam nihil quis d',5529,'France','+1 (572) 482-9427','tehyl@mailinator.com','Quasi placeat error'),(68,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(69,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(70,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(71,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(72,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(73,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(74,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(75,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(76,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(77,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(78,'Finn','Justice','Est excepteur itaqu','Est excepteur itaqu',8840,'France','+1 (286) 541-4458','nemofuxog@mailinator.com','Magna ullam sed ex u'),(79,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(80,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(81,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(82,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(83,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(84,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(85,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(86,'Amery','Durham','Enim mollitia proide','Enim mollitia proide',8830,'France','+1 (701) 135-1523','lykugolaby@mailinator.com','Et dolor labore sint'),(87,'Rudyard','Noble','Ut laborum Sunt con','Ut laborum Sunt con',7755,'France','+1 (181) 208-4659','zakuty@mailinator.com','Suscipit ipsa aut r'),(88,'Iliana','Nieves','Reiciendis et quidem','Reiciendis et quidem',5444,'France','+1 (119) 727-8694','zihe@mailinator.com','Magnam sint voluptas'),(89,'Ramona','Leon','Velit est asperiore','Velit est asperiore',8410,'France','+1 (855) 544-2433','cenixaw@mailinator.com','Anim blanditiis null'),(90,'Ramona','Leon','Velit est asperiore','Velit est asperiore',8410,'France','+1 (855) 544-2433','cenixaw@mailinator.com','Anim blanditiis null'),(91,'Ciaran','Weeks','Accusantium ab saepe','Accusantium ab saepe',113,'France','+1 (336) 312-1941','tozice@mailinator.com','Ea et totam eaque am'),(92,'Adrienne','Delaney','Sunt molestiae quibu','Sunt molestiae quibu',9214,'France','+1 (859) 161-7559','zuzufupaf@mailinator.com','Aut nemo eu obcaecat'),(93,'Adrienne','Delaney','Sunt molestiae quibu','Sunt molestiae quibu',9214,'France','+1 (859) 161-7559','zuzufupaf@mailinator.com','Aut nemo eu obcaecat'),(94,'Ezra','Curry','Cumque at unde et de','Cumque at unde et de',5260,'France','+1 (613) 747-6289','qyjihicy@mailinator.com','Fugit aliquam quia '),(95,'Brennan','Schmidt','Omnis aperiam dolore','Omnis aperiam dolore',8599,'France','+1 (457) 586-2465','rakymyfuje@mailinator.com','Sit quia quibusdam n'),(96,'Levi','Key','Ea suscipit blanditi','Ea suscipit blanditi',5660,'France','+1 (444) 644-4918','qinuqe@mailinator.com','Deleniti laboris cor'),(97,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(98,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(99,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(100,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(101,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(102,'Mara','David','Nisi perferendis dol','Nisi perferendis dol',8646,'France','+1 (141) 115-9868','bosez@mailinator.com','Anim quidem eu velit'),(103,'Aristotle','Schwartz','Commodi ea possimus','Commodi ea possimus',2035,'France','+1 (323) 905-5197','vawi@mailinator.com','Qui voluptas debitis');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230522084421','2023-05-22 08:44:41',78),('DoctrineMigrations\\Version20230522092701','2023-05-22 09:27:07',206),('DoctrineMigrations\\Version20230522094655','2023-05-22 09:47:01',26),('DoctrineMigrations\\Version20230522103708','2023-05-22 10:37:12',31),('DoctrineMigrations\\Version20230522111409','2023-05-22 11:14:12',60),('DoctrineMigrations\\Version20230523081834','2023-05-23 08:18:43',193),('DoctrineMigrations\\Version20230523085222','2023-05-23 08:52:31',45);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_amount` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F52993984584665A` (`product_id`),
  CONSTRAINT `FK_F52993984584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,3,'lpmonetico','WAITING',0),(2,2,'lppaypal','WAITING',0),(3,3,'lpmonetico','WAITING',0),(4,3,'lpmonetico','WAITING',0),(5,3,'lpmonetico','WAITING',0),(6,3,'lpmonetico','WAITING',0),(7,3,'lpmonetico','WAITING',0),(8,3,'lpmonetico','WAITING',0),(9,3,'lpmonetico','WAITING',0),(10,3,'lpmonetico','WAITING',0),(11,3,'lpmonetico','WAITING',0),(12,3,'lpmonetico','WAITING',0),(13,3,'lpmonetico','WAITING',0),(14,3,'lpmonetico','WAITING',0),(15,3,'lpmonetico','WAITING',0),(16,3,'lpmonetico','WAITING',0),(17,3,'lpmonetico','WAITING',0),(18,3,'lpmonetico','WAITING',0),(19,3,'lpmonetico','WAITING',0),(20,3,'lpmonetico','WAITING',0),(21,3,'lpmonetico','WAITING',0),(22,3,'lpmonetico','WAITING',0),(23,3,'lpmonetico','WAITING',0),(24,3,'lpmonetico','WAITING',0),(25,3,'lpmonetico','WAITING',0),(26,3,'lpmonetico','WAITING',0),(27,3,'lpmonetico','WAITING',0),(28,3,'lpmonetico','WAITING',0),(29,1,'lpmonetico','WAITING',0),(30,1,'lpmonetico','WAITING',0),(31,1,'lpmonetico','WAITING',0),(32,1,'lpmonetico','WAITING',0),(33,1,'lpmonetico','WAITING',0),(34,1,'lpmonetico','WAITING',0),(35,1,'lpmonetico','WAITING',0),(36,1,'lpmonetico','WAITING',0),(37,1,'lpmonetico','WAITING',0),(38,1,'lpmonetico','WAITING',0),(39,3,'lpmonetico','WAITING',0),(40,3,'lpmonetico','WAITING',0),(41,3,'lpmonetico','WAITING',0),(42,1,'lpmonetico','WAITING',0),(43,1,'lpmonetico','WAITING',0),(44,3,'lpmonetico','WAITING',0),(45,2,'lpmonetico','WAITING',0),(46,2,'lpmonetico','WAITING',0),(47,3,'lpmonetico','WAITING',0),(48,3,'lpmonetico','WAITING',0),(49,2,'lpmonetico','WAITING',0),(50,3,'lpmonetico','WAITING',0),(51,3,'lpmonetico','WAITING',0),(52,1,'lpmonetico','WAITING',0),(53,1,'lpmonetico','WAITING',0),(54,1,'lpmonetico','WAITING',0),(55,2,'lpmonetico','WAITING',0),(56,2,'lpmonetico','WAITING',0),(57,2,'lpmonetico','WAITING',0),(58,2,'lpmonetico','WAITING',0),(59,2,'lpmonetico','WAITING',0),(60,2,'lpmonetico','WAITING',0),(61,2,'lpmonetico','WAITING',0),(62,2,'lpmonetico','WAITING',0),(63,2,'lpmonetico','WAITING',0),(64,2,'lpmonetico','WAITING',0),(65,2,'lpmonetico','WAITING',0),(66,2,'lpmonetico','WAITING',0),(67,2,'lpmonetico','WAITING',0),(68,2,'lpmonetico','WAITING',0),(69,2,'lpmonetico','WAITING',0),(70,2,'lpmonetico','WAITING',0),(71,2,'lpmonetico','WAITING',0),(72,2,'lpmonetico','WAITING',0),(73,2,'lpmonetico','WAITING',0),(74,2,'lpmonetico','WAITING',0),(75,2,'lpmonetico','WAITING',0),(76,3,'lpmonetico','WAITING',0),(77,3,'lpmonetico','WAITING',0),(78,1,'lpmonetico','WAITING',0),(79,2,'lpmonetico','WAITING',0),(80,1,'lpmonetico','WAITING',0),(81,1,'lpmonetico','WAITING',0),(82,1,'lpmonetico','WAITING',0),(83,1,'lpmonetico','WAITING',0),(84,1,'lpmonetico','WAITING',0),(85,1,'lpmonetico','WAITING',96),(86,1,'lpmonetico','WAITING',96),(87,1,'lpmonetico','WAITING',96),(88,1,'lpmonetico','WAITING',96),(89,1,'lpmonetico','WAITING',96),(90,1,'lpmonetico','WAITING',96),(91,3,'lpmonetico','WAITING',18);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_price` int DEFAULT NULL,
  `offer` int DEFAULT NULL,
  `popular` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Pistolet de fou',120,2,'nerf1.jpg',20,NULL,1),(2,'Shotgun de malade',255,1,'nerf2.jpg',45,12,NULL),(3,'Lance-grenade nul',20,5,'nerf3.jpg',10,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tpbattleoffice'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-23 11:11:31
