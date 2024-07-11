-- 先运行下面这两句
create database luckincoffee default character set utf8 collate utf8_general_ci;
use luckincoffee;

-- 之后再运行后面的代码


-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: luckincoffee
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `luckin_goods`
--

DROP TABLE IF EXISTS `luckin_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckin_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ResourceStr` varchar(255) DEFAULT NULL,
  `ResourceStr2` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `title3` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `price1` int DEFAULT NULL,
  `discountprice` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckin_goods`
--

LOCK TABLES `luckin_goods` WRITE;
/*!40000 ALTER TABLE `luckin_goods` DISABLE KEYS */;
INSERT INTO `luckin_goods` VALUES (1,'/images/goods/coffee_1.png','/images/details/coffee_detail_1.png','生椰拿铁','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1),(2,'/images/goods/coffee_2.png','/images/details/coffee_detail_2.png','葡萄柠檬茶(超大杯)','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1),(3,'/images/goods/coffee_3.png','/images/details/coffee_detail_3.png','葡萄冰萃美式','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1),(4,'/images/goods/coffee_4.png','/images/details/coffee_detail_4.png','冰镇杨梅瑞纳冰','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1),(5,'/images/goods/coffee_5.png','/images/details/coffee_detail_5.png','柠C美式','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1),(6,'/images/goods/coffee_6.png','/images/details/coffee_detail_6.png','柚C美式','3年突破7亿杯，原创YYDS!','3年突破7亿杯 | 清爽椰香 | 0乳糖',13.00,21,30,1);
/*!40000 ALTER TABLE `luckin_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckin_order`
--

DROP TABLE IF EXISTS `luckin_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckin_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ResourceStr` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sum` int DEFAULT NULL,
  `brix` varchar(255) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `cupshaped` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2105561091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckin_order`
--

LOCK TABLES `luckin_order` WRITE;
/*!40000 ALTER TABLE `luckin_order` DISABLE KEYS */;
INSERT INTO `luckin_order` VALUES (-314552318,'/images/goods/coffee_3.png','葡萄冰萃美式','17328253147',13.00,1,'标准糖','冰','大杯','13','北京金融街购物中心店','2024-07-11 05:06'),(-197111806,'/images/goods/coffee_3.png','葡萄冰萃美式','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 04:54'),(-134197246,'/images/goods/coffee_2.png','葡萄柠檬茶(超大杯)','17328253147',13.00,1,'标准糖','冰','大杯','13','北京金融街购物中心店','2024-07-11 05:06'),(41963521,'/images/goods/coffee_5.png','柠C美式','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 05:01'),(268455937,'/images/goods/coffee_2.png','葡萄柠檬茶(超大杯)','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 04:55'),(1203781634,'/images/goods/coffee_1.png','生椰拿铁','17328253147',13.00,1,'标准糖','冰','大杯','13','北京中央广场店','2024-07-11 01:46'),(1522552834,'/images/goods/coffee_1.png','生椰拿铁','17328253147',13.00,1,'标准糖','冰','大杯','13','北京中央广场店','2024-07-11 05:16'),(1782599681,'/images/goods/coffee_3.png','葡萄冰萃美式','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 05:01'),(1832931329,'/images/goods/coffee_3.png','葡萄冰萃美式','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 05:01'),(2105561090,'/images/goods/coffee_1.png','生椰拿铁','17328253147',13.00,1,'标准糖','冰','大杯','13','北京西单大悦城店','2024-07-11 05:01');
/*!40000 ALTER TABLE `luckin_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckin_shopcar`
--

DROP TABLE IF EXISTS `luckin_shopcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckin_shopcar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ResourceStr` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `sum` int DEFAULT NULL,
  `cupshaped` varchar(255) DEFAULT NULL,
  `brix` varchar(255) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `price2` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2038452227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckin_shopcar`
--

LOCK TABLES `luckin_shopcar` WRITE;
/*!40000 ALTER TABLE `luckin_shopcar` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckin_shopcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckin_user`
--

DROP TABLE IF EXISTS `luckin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckin_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo` varchar(255)  NULL DEFAULT ,
  `gender` varchar(255) NULL DEFAULT ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckin_user`
--

LOCK TABLES `luckin_user` WRITE;
/*!40000 ALTER TABLE `luckin_user` DISABLE KEYS */;
INSERT INTO `luckin_user` VALUES (1,'周杰伦','17328253147','abc123456','2024-07-10 10:53:50','2024-07-10 11:30:25','/images/touxiang/avt.jpg','男');
/*!40000 ALTER TABLE `luckin_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  5:23:15
