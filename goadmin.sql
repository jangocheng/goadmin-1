-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: goadmin
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `go_user`
--

DROP TABLE IF EXISTS `go_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `go_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(256) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(16) NOT NULL DEFAULT '' COMMENT '加密盐',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色，1 - 超级管理员；2 - 高级管理员；3 - 普通管理员',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最近登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近登录时间',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `go_user`
--

LOCK TABLES `go_user` WRITE;
/*!40000 ALTER TABLE `go_user` DISABLE KEYS */;
INSERT INTO `go_user` (`id`, `name`, `email`, `password`, `salt`, `role`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`) VALUES (1,'admin','admin@qq.com','e03dcdf34a257041b36bd77132130fdc','LCV8xdTcqmkhA$ze',1,'127.0.0.1',1522049284,1509156160,1522049299),(2,'goadmin','goadmin@qq.com','076f1b2ec2ebfce609805381f2b278b0','oTQKR^BwPgRGM8Zj',2,'::1',0,1509156160,1509156160),(3,'test','test@qq.com','9a71c5d96f767e173dfe064ae3120084','n@EdcITV#fQ1d&a@',3,'::1',0,1509156160,1509156160);
/*!40000 ALTER TABLE `go_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-21 21:15:02
