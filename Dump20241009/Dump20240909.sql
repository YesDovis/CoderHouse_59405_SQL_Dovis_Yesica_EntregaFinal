CREATE DATABASE  IF NOT EXISTS `cerveceria_la_birra_es_bella` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cerveceria_la_birra_es_bella`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cerveceria_la_birra_es_bella
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `acciones`
--

DROP TABLE IF EXISTS `acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accion` varchar(200) DEFAULT NULL,
  `tipo_accion` varchar(100) DEFAULT NULL,
  `tabla_afectada` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones`
--

LOCK TABLES `acciones` WRITE;
/*!40000 ALTER TABLE `acciones` DISABLE KEYS */;
INSERT INTO `acciones` VALUES (1,'Se eliminó un usuario de nombre: Tri con el id: 22','Eliminación de Usuario','usuarios','2024-09-08 22:45:36'),(2,'Se eliminó un usuario de nombre: Trigger con el id: 20','Eliminación de Usuario','usuarios','2024-09-08 22:46:35'),(3,'Se eliminó un usuario de nombre: Pepa con el id: 21','Eliminación de Usuario','usuarios','2024-09-08 22:46:50'),(4,'Se creó un usuario nuevo de nombre: Leandra y con el id: 23','Creación de Usuario','usuarios','2024-09-08 22:56:42'),(5,'Se creó un usuario nuevo de nombre: Cesar y con el id: 24','Creación de Usuario','usuarios','2024-09-08 22:59:47'),(6,'Se creó un usuario nuevo de nombre: Pedro y con el id: 25','Creación de Usuario','usuarios','2024-09-08 23:02:57'),(7,'Se creó un usuario nuevo de nombre: Hikary y con el id: 26','Creación de Usuario','usuarios','2024-09-08 23:04:52'),(8,'Se editó el usuario con el id: 25. Nombre anterior: Pedro, Nombre nuevo: Pedro','Edición de Usuario','usuarios','2024-09-08 23:05:57'),(9,'Se editó el usuario con el id: 26. Nombre anterior: Hikary, Nombre nuevo: Hikary','Edición de Usuario','usuarios','2024-09-08 23:05:58'),(10,'Se eliminó un usuario de nombre: Hikary con el id: 26','Eliminación de Usuario','usuarios','2024-09-08 23:07:23'),(11,'Se eliminó un usuario de nombre: Cesar con el id: 24','Eliminación de Usuario','usuarios','2024-09-08 23:07:24'),(12,'Se eliminó un usuario de nombre: Pedro con el id: 25','Eliminación de Usuario','usuarios','2024-09-08 23:07:24'),(13,'Se agregó un nuevo producto: Mur Fruit con el id: 293','Creación de Producto','productos','2024-09-08 23:12:32');
/*!40000 ALTER TABLE `acciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_postal` varchar(5) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` varchar(5) DEFAULT NULL,
  `letra` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'1515','Palermo','Cordoba',111,'1r',NULL),(2,'1111','Palermo','Corrientes',123,'3r','1a'),(3,'1515','Palermo','Arevalo',100,'2o','B'),(4,'1616','Palermo','Ravignani',500,'4o','D'),(5,'1717','Belgrano','Arribeños',1123,'1o','A'),(6,'1818','Belgrano','Juramento',5025,'5o','C'),(7,'1919','Belgrano','Cabildo',1865,'2o','A'),(8,'2020','Belgrano','Barrio chino',1145,'1o','C'),(9,'2121','Almagro','Independencia',2412,'3o','B'),(10,'5050','Almagro','Boedo',1823,'1o','D'),(11,'1919','Almagro','Belgrano',1438,'2o','A'),(12,'2020','Almagro','Medrano',1777,'1o','C'),(13,'2121','Almagro','Rivadavia',2437,'3o','B'),(14,'5050','Almagro','Colombres',1828,'1o','D'),(15,'5050','Retiro','Santa fe',1827,'1o','D');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_direccion` int(11) DEFAULT NULL,
  `id_tarjeta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_direccion` (`id_direccion`),
  KEY `id_tarjeta` (`id_tarjeta`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjetas` (`id_tarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2023-01-01 10:20:16',1,1,15),(2,'2023-01-02 11:05:46',2,2,16),(3,'2023-01-03 12:20:01',3,3,17),(4,'2023-01-04 13:45:00',4,4,18),(5,'2023-01-05 14:27:09',5,5,19),(6,'2023-01-10 15:27:09',6,6,20),(7,'2023-01-10 16:27:09',7,7,21),(8,'2023-01-11 17:27:09',8,8,22),(9,'2023-01-11 18:27:09',9,9,23),(10,'2023-01-12 19:27:09',10,10,24),(11,'2023-01-12 19:27:09',11,11,25),(12,'2023-01-12 19:27:09',12,12,26),(13,'2023-01-12 19:27:09',13,13,27),(14,'2023-01-12 19:27:09',14,15,28);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_productos`
--

DROP TABLE IF EXISTS `pedidos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_productos` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `unidades` int(11) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_producto`),
  KEY `fk_pedidos_productos_productos` (`id_producto`),
  CONSTRAINT `fk_pedidos_productos_pedidos` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `fk_pedidos_productos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `pedidos_productos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `pedidos_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_productos`
--

LOCK TABLES `pedidos_productos` WRITE;
/*!40000 ALTER TABLE `pedidos_productos` DISABLE KEYS */;
INSERT INTO `pedidos_productos` VALUES (1,100,2,4999.99),(2,110,6,5999.99),(3,120,1,6999.99),(4,130,2,6999.99),(5,140,1,6999.99),(6,150,12,5999.99),(7,160,1,5999.99),(8,170,5,4999.99),(9,180,6,4999.99),(10,190,1,5000.00),(11,200,12,5999.99),(12,210,1,5999.99),(13,220,12,6000.00),(14,230,1,5999.99);
/*!40000 ALTER TABLE `pedidos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (100,'Ipa kraken','Una Cerveza con mucho lupulo',4999.99,15),(110,'Ipa Stranger','Una Cerveza con mucho lupulo',5999.99,12),(120,'Ipa Juguetes Perdidos','Una Cerveza con mucho lupulo',6999.99,17),(130,'Ipa Sanfer','Una Cerveza con mucho lupulo',6999.99,17),(140,'Unthemhumtem','Una Cerveza con mucho lupulo',6999.99,17),(150,'Red ipa Stranger','Una Cerveza con mucho lupulo',5999.99,12),(160,'Hawkins Beer','Una cerveza ficticia que representa la localidad de Hawkins',5999.99,12),(170,'Asics Gel-Kayano 27','De cuerpo medio y amargor equilibrado, con doble dryhop de lúpulos ekuanot, sincoe, amarillo y mosaic.',4999.99,15),(180,'Under Armour HOVR Phantom','Una IPA viajera, para tomar en cualquier momento y en cualquier lugar. Tiene un aroma intenso, con notas a mango, pomelo y ananá, que nos transportan a un mundo mejor.',4999.99,15),(190,'Dungeons & Dragons Ale ',' Sus 7° de alcohol y elevado, aunque placentero, amargor de 65 IBU son la base ideal para que se transforme en la cerveza de culto de los cerveceros alrededor del mundo.',4999.99,15),(200,'Strange Brewing Mapachamama Neipa','Una Cerveza con mucho lupulo',5999.99,12),(210,'Strange Brewing Forma Fantasma Imperial Stout','Una Cerveza con mucho lupulo',5999.99,12),(220,'Strange Brewing Salto De Fé Neipa',' La intensidad del aroma, la cremosidad de la textura y la explosión del perfil tropical se hacen presentes en esta delicia inabarcable.',5999.99,12),(230,'Bieckert BAPA','BAPA Buenos Aires Pale Ale es una verdadera representación de la vibrante ciudad de Buenos Aires.',5999.99,12),(240,'Blest Apa','Me gusta la birra',5999.99,12),(250,'Strange Catacumbia','La hermana mayor de Cortado, por favor. Bizcocho, caramelo y café (mucho café)',5999.99,12),(260,'Mur Solo Pils Czech Pilsner',' Un perfecto ejemplo de equilibrio entre malta y lúpulo. En aroma y sabor se perciben notas a frutas de carozo, pasas, cítricos y florales.',5999.99,12),(270,'Mur  Atolondrada','Una pausa reflexiva en esta permanente y desquiciada rutina. Una cerveza color rubí, de amargor suave y cuerpo ligero.',5999.99,12),(280,'Baum Honey','Nuestra Maldita Honey es una cerveza color dorado, de cuerpo pleno con un intenso aroma y sabor a miel pura',4999.99,10),(290,'Nonstop American IPA','Resinas, frutas cítricas, frutas tropicales, como ananá, naranja, durazno, mango, limón, maracuyá, pino son algunos de los aromas y sabores que se pueden percibir en la American IPA.',4999.99,156),(291,'Cerveza Trigger','Nueva y complicada ',5555.99,10),(292,'Mur alcala','cerveza artesanal',4999.99,5),(293,'Mur Fruit','Cerveza Color Rubi',4999.99,7);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'rol_usuario'),(2,'rol_admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `num_tarjeta` varchar(16) NOT NULL,
  `nombre_titular` varchar(100) NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `CVV` int(11) NOT NULL,
  PRIMARY KEY (`id_tarjeta`),
  UNIQUE KEY `num_tarjeta` (`num_tarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (15,'1111222233334444','Matias Perez','2024-05-01',123),(16,'2222333344445555','Pedro Rodriguez','2023-11-01',456),(17,'3333444455556666','Eugenia Martinez','2024-02-01',789),(18,'4444555566667777','Carlos Gomez','2025-08-01',234),(19,'5555666677778888','Anabel Garcia','2022-10-01',567),(20,'6666777788889999','David Fernandez','2023-12-01',890),(21,'7777888899990000','Luis Paredez','2026-01-01',345),(22,'8888999900001111','Javier Gomez','2022-06-01',678),(23,'9999000011112222','Nicolas Sanchez','2025-03-01',901),(24,'0000111122223333','Esteban Lalala','2024-09-01',234),(25,'9999000011112372','Jimena Gomez','2025-03-01',901),(26,'9999000011112352','Juan Sanchez','2025-04-01',921),(27,'9999000014442382','Jose Sam','2025-08-08',927),(28,'9999000055512372','Maria Sam','2025-09-07',981);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Yesica','Gonzalez','1986-05-13','yesicagonzalez.perez@mail.com','Yesica'),(2,'Matias','Perez','1988-03-12','matias.perez@mail.com','Matias'),(3,'Pedro','Rodriguez','1995-07-01','pedro.rodriguez@mail.com','Pedro'),(4,'Eugenia','Martinez Perez','1992-09-05','eugenia.martinez@mail.com','Eugenia'),(5,'Carlos','Gomez','1997-02-14','carlos.sanchez@mail.com','Carlos'),(6,'Anabel','Garcia','1991-11-23','ana.garcia@mail.com','Anabel'),(7,'David','Fernandez','1993-06-09','david.fernandez@mail.com','David'),(8,'Luis','Paredez','1989-12-30','luis.paredez@mail.com','Luis'),(9,'Javier','Gomez','1996-08-18','javier.gomez@mail.com','Javier'),(10,'Nicolas','Sanchez','1994-04-07','nicolaz.sanchez@mail.com','Nicolas'),(11,'Esteban','Lalala','1989-12-30','esteban.lalala@mail.com','Esteban'),(12,'Jimena','Gomez','1984-08-18','jimena.gomez@mail.com','Jimena'),(13,'Juan','Sanchez','1982-08-07','juan.sanchez@mail.com','Juan'),(14,'Jose','Sam','1998-05-12','jose.sam@mail.com','Jose'),(15,'Maria','Sam','1995-12-19','maria.sam@mail.com','Maria'),(16,'Lorena','Davis','1986-05-13','lore.davis@mail.com','Lorena'),(23,'Leandra','Trigger','1980-07-14','lean.trigger@mail.com','Leandra');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_direcciones`
--

DROP TABLE IF EXISTS `usuarios_direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_direcciones` (
  `id_usuario` int(11) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_direccion`),
  KEY `id_direccion` (`id_direccion`),
  CONSTRAINT `usuarios_direcciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `usuarios_direcciones_ibfk_2` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_direcciones`
--

LOCK TABLES `usuarios_direcciones` WRITE;
/*!40000 ALTER TABLE `usuarios_direcciones` DISABLE KEYS */;
INSERT INTO `usuarios_direcciones` VALUES (1,2),(2,4),(3,10),(4,6),(5,8),(6,1),(7,3),(8,5),(9,7),(10,9);
/*!40000 ALTER TABLE `usuarios_direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_roles` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_rol`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuarios_roles_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `usuarios_roles_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_roles`
--

LOCK TABLES `usuarios_roles` WRITE;
/*!40000 ALTER TABLE `usuarios_roles` DISABLE KEYS */;
INSERT INTO `usuarios_roles` VALUES (1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(16,1);
/*!40000 ALTER TABLE `usuarios_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_tarjetas`
--

DROP TABLE IF EXISTS `usuarios_tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_tarjetas` (
  `id_usuario` int(11) NOT NULL,
  `id_tarjeta` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_tarjeta`),
  KEY `id_tarjeta` (`id_tarjeta`),
  CONSTRAINT `usuarios_tarjetas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `usuarios_tarjetas_ibfk_2` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjetas` (`id_tarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_tarjetas`
--

LOCK TABLES `usuarios_tarjetas` WRITE;
/*!40000 ALTER TABLE `usuarios_tarjetas` DISABLE KEYS */;
INSERT INTO `usuarios_tarjetas` VALUES (2,15),(3,16),(4,17),(5,18),(6,19),(7,20),(8,21),(9,22),(10,23),(11,24),(12,25),(13,26),(14,27),(15,28);
/*!40000 ALTER TABLE `usuarios_tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_detalle_pedidos`
--

DROP TABLE IF EXISTS `vista_detalle_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vista_detalle_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_detalle_pedidos` AS SELECT 
 1 AS `pedido_id`,
 1 AS `fecha_pedido`,
 1 AS `nombre_usuario`,
 1 AS `apellidos_usuario`,
 1 AS `email_usuario`,
 1 AS `rol_usuario`,
 1 AS `localidad_direccion`,
 1 AS `calle_direccion`,
 1 AS `numero_direccion`,
 1 AS `piso_direccion`,
 1 AS `letra_direccion`,
 1 AS `nombre_producto`,
 1 AS `descripcion_producto`,
 1 AS `unidades_vendidas`,
 1 AS `precio_unitario`,
 1 AS `total_producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_suma_productos_vendidos`
--

DROP TABLE IF EXISTS `vista_suma_productos_vendidos`;
/*!50001 DROP VIEW IF EXISTS `vista_suma_productos_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_suma_productos_vendidos` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `descripcion_producto`,
 1 AS `total_unidades_vendidas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_administradores`
--

DROP TABLE IF EXISTS `vista_usuarios_administradores`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_administradores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_administradores` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `apellidos`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_con_compra_ipa`
--

DROP TABLE IF EXISTS `vista_usuarios_con_compra_ipa`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_con_compra_ipa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_con_compra_ipa` AS SELECT 
 1 AS `id_usuario`,
 1 AS `usuario_nombre`,
 1 AS `usuario_apellidos`,
 1 AS `usuario_email`,
 1 AS `producto_nombre`,
 1 AS `producto_descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_nombre_j`
--

DROP TABLE IF EXISTS `vista_usuarios_nombre_j`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_nombre_j`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_nombre_j` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `apellidos`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_detalle_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_detalle_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_detalle_pedidos` AS select `p`.`id_pedido` AS `pedido_id`,`p`.`fecha` AS `fecha_pedido`,`u`.`nombre` AS `nombre_usuario`,`u`.`apellidos` AS `apellidos_usuario`,`u`.`email` AS `email_usuario`,`r`.`nombre` AS `rol_usuario`,`d`.`localidad` AS `localidad_direccion`,`d`.`calle` AS `calle_direccion`,`d`.`numero` AS `numero_direccion`,`d`.`piso` AS `piso_direccion`,`d`.`letra` AS `letra_direccion`,`pr`.`nombre` AS `nombre_producto`,`pr`.`descripcion` AS `descripcion_producto`,`pp`.`unidades` AS `unidades_vendidas`,`pp`.`precio_venta` AS `precio_unitario`,`pp`.`unidades` * `pp`.`precio_venta` AS `total_producto` from ((((((`pedidos` `p` join `usuarios` `u` on(`p`.`id_usuario` = `u`.`id_usuario`)) join `direcciones` `d` on(`p`.`id_direccion` = `d`.`id_direccion`)) join `pedidos_productos` `pp` on(`p`.`id_pedido` = `pp`.`id_pedido`)) join `productos` `pr` on(`pp`.`id_producto` = `pr`.`id_producto`)) join `usuarios_roles` `ur` on(`u`.`id_usuario` = `ur`.`id_usuario`)) join `roles` `r` on(`ur`.`id_rol` = `r`.`id_rol`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_suma_productos_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_suma_productos_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_suma_productos_vendidos` AS select `p`.`id_producto` AS `id_producto`,`p`.`nombre` AS `nombre_producto`,`p`.`descripcion` AS `descripcion_producto`,sum(`pp`.`unidades`) AS `total_unidades_vendidas` from (`productos` `p` join `pedidos_productos` `pp` on(`p`.`id_producto` = `pp`.`id_producto`)) group by `p`.`id_producto`,`p`.`nombre`,`p`.`descripcion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_administradores`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_administradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_administradores` AS select `u`.`id_usuario` AS `id_usuario`,`u`.`nombre` AS `nombre`,`u`.`apellidos` AS `apellidos`,`u`.`email` AS `email` from ((`usuarios` `u` join `usuarios_roles` `ur` on(`u`.`id_usuario` = `ur`.`id_usuario`)) join `roles` `r` on(`ur`.`id_rol` = `r`.`id_rol`)) where `r`.`nombre` = 'rol_admin' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_con_compra_ipa`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_con_compra_ipa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_con_compra_ipa` AS select distinct `u`.`id_usuario` AS `id_usuario`,`u`.`nombre` AS `usuario_nombre`,`u`.`apellidos` AS `usuario_apellidos`,`u`.`email` AS `usuario_email`,`prod`.`nombre` AS `producto_nombre`,`prod`.`descripcion` AS `producto_descripcion` from (((`usuarios` `u` join `pedidos` `p` on(`u`.`id_usuario` = `p`.`id_usuario`)) join `pedidos_productos` `pp` on(`p`.`id_pedido` = `pp`.`id_pedido`)) join `productos` `prod` on(`pp`.`id_producto` = `prod`.`id_producto`)) where `prod`.`nombre` like '%IPA%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_nombre_j`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_nombre_j`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_nombre_j` AS select `usuarios`.`id_usuario` AS `id_usuario`,`usuarios`.`nombre` AS `nombre`,`usuarios`.`apellidos` AS `apellidos`,`usuarios`.`email` AS `email` from `usuarios` where `usuarios`.`nombre` like 'J%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 21:37:56
