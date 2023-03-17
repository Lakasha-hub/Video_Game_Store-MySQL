-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	8.0.31

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

/*Tablas a las que realizo backup*/
-- bitacora_juegos
-- bitacora_productos
-- dim_categorias
-- dim_consolas
-- dim_contacto
-- dim_juegos
-- dim_metodospagos
-- dim_productos
-- dim_tipos
-- dim_usuarios
-- hecho_ventas

--
-- Dumping data for table `bitacora_juegos`
--

LOCK TABLES `bitacora_juegos` WRITE;
/*!40000 ALTER TABLE `bitacora_juegos` DISABLE KEYS */;
INSERT INTO `bitacora_juegos` VALUES (1,'root@localhost','insert','2023-02-18','14:18:42');
/*!40000 ALTER TABLE `bitacora_juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bitacora_productos`
--

LOCK TABLES `bitacora_productos` WRITE;
/*!40000 ALTER TABLE `bitacora_productos` DISABLE KEYS */;
INSERT INTO `bitacora_productos` VALUES (1,'root@localhost','insert','2023-02-17','15:24:23'),(2,'root@localhost','insert','2023-02-17','15:37:27'),(3,'root@localhost','insert','2023-02-18','14:41:42'),(4,'root@localhost','insert','2023-02-18','14:41:48'),(5,'root@localhost','insert','2023-02-18','14:41:53'),(6,'root@localhost','insert','2023-02-18','14:43:37'),(7,'root@localhost','insert','2023-02-20','22:14:45');
/*!40000 ALTER TABLE `bitacora_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_categorias`
--

LOCK TABLES `dim_categorias` WRITE;
/*!40000 ALTER TABLE `dim_categorias` DISABLE KEYS */;
INSERT INTO `dim_categorias` VALUES (1,'Terror'),(2,'RPG'),(3,'Deporte'),(4,'Aventura'),(5,'Shooter'),(6,'Plataforma'),(7,'Peleas'),(8,'Acción'),(9,'Sigilo');
/*!40000 ALTER TABLE `dim_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_consolas`
--

LOCK TABLES `dim_consolas` WRITE;
/*!40000 ALTER TABLE `dim_consolas` DISABLE KEYS */;
INSERT INTO `dim_consolas` VALUES (1,'PlayStation 5'),(2,'PlayStation 4'),(3,'PlayStation 3'),(4,'Xbox 360'),(5,'Xbox One'),(6,'Xbox Series S'),(7,'Xbox Series X'),(8,'Nintendo Switch');
/*!40000 ALTER TABLE `dim_consolas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_contacto`
--

LOCK TABLES `dim_contacto` WRITE;
/*!40000 ALTER TABLE `dim_contacto` DISABLE KEYS */;
INSERT INTO `dim_contacto` VALUES (1,'usser123@gmail.com',1324353254),(2,'osdfnser112@gmail.com',2389472302),(3,'lololadfs@live.com.ar',9024337667),(4,'adfsodfnz@hotmail.com',2224299378),(5,'o23nsdfs@hotmail.com',24231235),(6,'plapassa2@gmail.com',1022335005),(7,'sudialpa@outlook.com',1122233345),(8,'laosfdj@hotmail.com',2392834203),(9,'jfhdhfsij@outlook.com',3103280832),(10,'oaoaoaoa1@live.com.ar',238423842);
/*!40000 ALTER TABLE `dim_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_juegos`
--

LOCK TABLES `dim_juegos` WRITE;
/*!40000 ALTER TABLE `dim_juegos` DISABLE KEYS */;
INSERT INTO `dim_juegos` VALUES (1,'Mortal Kombat 11',7),(2,'Resident Evil Village',1),(3,'Call of Duty MW2',5),(4,'Street Fighter 5',7),(5,'Mortal Kombat XL',7),(6,'Outlast Trinity',1),(7,'Elden Ring',2),(8,'God of War',4),(9,'God of War Ragnarok',4),(10,'Uncharted Trilogy',4),(11,'Dragon Ball Fighterz',7),(12,'Battlefield 5',5),(13,'Bonderlands 3',5),(14,'Resident Evil 4 Remake',1),(15,'Hitman',9),(16,'Cuphead',6),(17,'Mario Bros',6),(18,'Detroit Become Human',4),(19,'Dragon Ball Xenoverse',1);
/*!40000 ALTER TABLE `dim_juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_metodospagos`
--

LOCK TABLES `dim_metodospagos` WRITE;
/*!40000 ALTER TABLE `dim_metodospagos` DISABLE KEYS */;
INSERT INTO `dim_metodospagos` VALUES (1,1245908088003434,234),(2,5645060118807724,111),(3,8675943643029976,345),(4,9745208230923480,900),(5,7536537458374299,980),(6,1865498651286516,124),(7,1698487165374956,337),(8,7843658029394658,963),(9,3476721382873482,133),(10,6547816548416898,645);
/*!40000 ALTER TABLE `dim_metodospagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_productos`
--

LOCK TABLES `dim_productos` WRITE;
/*!40000 ALTER TABLE `dim_productos` DISABLE KEYS */;
INSERT INTO `dim_productos` VALUES (1,1,1,2,3500),(2,1,1,1,2500),(3,2,3,2,5500),(4,2,5,1,6000),(5,3,8,1,7500),(6,4,5,2,9000),(7,5,8,2,1200),(8,6,4,1,2300),(9,8,8,1,5000),(10,11,7,2,7700),(11,13,6,1,8000),(12,7,7,2,6700),(13,16,2,1,5000),(14,15,2,2,2200),(15,12,7,1,5600),(16,12,5,2,4500),(17,17,4,1,4000),(18,18,2,1,3000),(19,18,3,1,6000),(21,18,3,1,1000),(22,18,3,1,1000),(23,18,3,1,1000),(24,9,3,2,1000),(25,1,1,2,3300);
/*!40000 ALTER TABLE `dim_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_tipos`
--

LOCK TABLES `dim_tipos` WRITE;
/*!40000 ALTER TABLE `dim_tipos` DISABLE KEYS */;
INSERT INTO `dim_tipos` VALUES (1,'F'),(2,'D');
/*!40000 ALTER TABLE `dim_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dim_usuarios`
--

LOCK TABLES `dim_usuarios` WRITE;
/*!40000 ALTER TABLE `dim_usuarios` DISABLE KEYS */;
INSERT INTO `dim_usuarios` VALUES (1,'Laura',23,'F',1,1),(2,'Lautaro',19,'M',2,2),(3,'Juan',39,'M',3,3),(4,'Nicolas',21,'M',4,4),(5,'Sofia',20,'F',5,5),(6,'Mateo',34,'M',6,6),(7,'Cecilia',30,'F',7,7),(8,'Gimena',23,'F',8,8),(9,'Cristian',25,'M',9,9),(10,'Selene',19,'F',10,10);
/*!40000 ALTER TABLE `dim_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hecho_ventas`
--

LOCK TABLES `hecho_ventas` WRITE;
/*!40000 ALTER TABLE `hecho_ventas` DISABLE KEYS */;
INSERT INTO `hecho_ventas` VALUES (1,10,18),(2,1,12),(3,9,8),(4,4,1),(5,1,7),(6,7,6),(7,2,17),(8,10,12),(9,2,2),(10,5,3),(11,4,3),(12,5,6),(13,10,15);
/*!40000 ALTER TABLE `hecho_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06 10:42:41
