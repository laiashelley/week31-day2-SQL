-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: plantilla-sql
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
-- Table structure for table `conductores`
--

DROP TABLE IF EXISTS `conductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductores` (
  `idconductores` int(11) NOT NULL AUTO_INCREMENT,
  `nombreConductor` varchar(45) NOT NULL,
  `apellidoConductor` varchar(45) NOT NULL,
  `telefonoConductor` int(11) NOT NULL,
  `localidadConductor` varchar(45) NOT NULL,
  PRIMARY KEY (`idconductores`),
  UNIQUE KEY `telefonoConductor_UNIQUE` (`telefonoConductor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductores`
--

LOCK TABLES `conductores` WRITE;
/*!40000 ALTER TABLE `conductores` DISABLE KEYS */;
INSERT INTO `conductores` VALUES (1,'Albert','Vandellos',654658659,'Gelida'),(2,'Laia','Galvez',692496057,'Manresa'),(3,'Rifi','Rifi',625253658,'Tarragona'),(4,'Walid','Rifi',658368386,'Tarragona'),(5,'Francisco','Fernando',659586968,'Barcelona'),(6,'David','Álvarez',653975845,'Barcelona'),(7,'Victor','Juárez',685985645,'Barcelona'),(8,'Sergio','No se',698583365,'Barcelona'),(9,'Ferdinando','Ferdi',625285355,'Barcelona'),(10,'Juan Carlos','Pineda',659825682,'Barcelona');
/*!40000 ALTER TABLE `conductores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `idvehiculos` int(11) NOT NULL AUTO_INCREMENT,
  `tipoVehiculo` varchar(45) NOT NULL,
  `marcaVehiculo` varchar(45) NOT NULL,
  `modeloVehiculo` varchar(45) NOT NULL,
  `anyoVehiculo` int(11) NOT NULL,
  `conductores_idconductores` int(11) NOT NULL,
  PRIMARY KEY (`idvehiculos`,`conductores_idconductores`),
  UNIQUE KEY `marcaVehiculo_UNIQUE` (`marcaVehiculo`),
  UNIQUE KEY `modeloVehiculo_UNIQUE` (`modeloVehiculo`),
  KEY `fk_vehiculos_conductores_idx` (`conductores_idconductores`),
  CONSTRAINT `fk_vehiculos_conductores` FOREIGN KEY (`conductores_idconductores`) REFERENCES `conductores` (`idconductores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'Coche','Toyota','Camry',2020,1),(2,'Bicicleta','Trek','Domane',2021,3),(3,'Moto','Honda','CBR600RR',2019,6),(4,'Camión','Volvo','FH16',2022,5),(5,'Scooter','Vespa','Primavera',2023,5),(6,'Autobús','Mercedez-Benz','Citaro',2018,8),(7,'Quad','Polaris','Sportsman',2020,2),(8,'Furgoneta','Ford','Transit',2021,2),(9,'Motocicleta','Ducati','Panigale V4',2022,2),(10,'Triciclo','Piaggio','Ape',2023,4);
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 20:01:31
