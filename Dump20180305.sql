CREATE DATABASE  IF NOT EXISTS `pc_hardware` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pc_hardware`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pc_hardware
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chars`
--

DROP TABLE IF EXISTS `chars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chars` (
  `product_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  `description_key` varchar(45) NOT NULL,
  `description_value` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`,`char_id`,`locale_id`),
  KEY `chars_locales_idx` (`locale_id`),
  CONSTRAINT `chars_LOCALE_ID_locales` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`locale_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chars_PRODUCT_ID_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chars`
--

LOCK TABLES `chars` WRITE;
/*!40000 ALTER TABLE `chars` DISABLE KEYS */;
INSERT INTO `chars` VALUES (1,1,1,'Vendor','Intel'),(1,1,2,'Производитель','Intel'),(1,2,1,'Socket','LGA-1151v2'),(1,2,2,'Сокет','LGA-1151v2'),(1,3,1,'Clock speed','3.7 GHz'),(1,3,2,'Тактовая частота','3.7 ГГц'),(1,4,1,'Cores/Threads','6/12'),(1,4,2,'Ядра/Потоки','6/12'),(1,5,1,'Package','OEM'),(1,5,2,'Упаковка','OEM'),(1,6,1,'Core architecture','Coffee lake'),(1,6,2,'Архитектура ядра','Coffee lake'),(1,7,1,'L1 cache','6 х 32 kB'),(1,7,2,'Кэш L1','6 х 32 Кб'),(1,8,1,'L2 cache','6 х 256 kB'),(1,8,2,'Кэш L2','6 х 256 Кб'),(1,9,1,'L3 cache','12 MB'),(1,9,2,'Кэш L3','12 Мб'),(1,10,1,'Integrated graphics','Intel UHD Graphics 630'),(1,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(2,1,1,'Vendor','Intel'),(2,1,2,'Производитель','Intel'),(2,2,1,'Socket','LGA-1151v2'),(2,2,2,'Сокет','LGA-1151v2'),(2,3,1,'Clock speed','4 GHz'),(2,3,2,'Тактовая частота','4 ГГц'),(2,4,1,'Cores/Threads','4/4'),(2,4,2,'Ядра/Потоки','4/4'),(2,5,1,'Package','OEM'),(2,5,2,'Упаковка','OEM'),(2,6,1,'Core architecture','Coffee lake'),(2,6,2,'Архитектура ядра','Coffee lake'),(2,7,1,'L1 cache','4 х 32 kB'),(2,7,2,'Кэш L1','4 х 32 Кб'),(2,8,1,'L2 cache','4 х 256 kB'),(2,8,2,'Кэш L2','4 х 256 Кб'),(2,9,1,'L3 cache','8 MB'),(2,9,2,'Кэш L3','8 Мб'),(2,10,1,'Integrated graphics','Intel UHD Graphics 630'),(2,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(3,1,1,'Vendor','Intel'),(3,1,2,'Производитель','Intel'),(3,2,1,'Socket','LGA-1151v2'),(3,2,2,'Сокет','LGA-1151v2'),(3,3,1,'Clock speed','3.6 GHz'),(3,3,2,'Тактовая частота','3.6 ГГц'),(3,4,1,'Cores/Threads','4/4'),(3,4,2,'Ядра/Потоки','4/4'),(3,5,1,'Package','OEM'),(3,5,2,'Упаковка','OEM'),(3,6,1,'Core architecture','Coffee lake'),(3,6,2,'Архитектура ядра','Coffee lake'),(3,7,1,'L1 cache','4 х 32 kB'),(3,7,2,'Кэш L1','4 х 32 Кб'),(3,8,1,'L2 cache','4 х 256 kB'),(3,8,2,'Кэш L2','4 х 256 Кб'),(3,9,1,'L3 cache','6 MB'),(3,9,2,'Кэш L3','6 Мб'),(3,10,1,'Integrated graphics','Intel UHD Graphics 630'),(3,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(4,1,1,'Vendor','Intel'),(4,1,2,'Производитель','Intel'),(4,2,1,'Socket','LGA-1151'),(4,2,2,'Сокет','LGA-1151'),(4,3,1,'Clock speed','4.2 GHz'),(4,3,2,'Тактовая частота','4.2 ГГц'),(4,4,1,'Cores/Threads','4/8'),(4,4,2,'Ядра/Потоки','4/8'),(4,5,1,'Package','OEM'),(4,5,2,'Упаковка','OEM'),(4,6,1,'Core architecture','Kaby Lake'),(4,6,2,'Архитектура ядра','Kaby Lake'),(4,7,1,'L1 cache','4 х 32 kB'),(4,7,2,'Кэш L1','4 х 32 Кб'),(4,8,1,'L2 cache','4 х 256 kB'),(4,8,2,'Кэш L2','4 х 256 Кб'),(4,9,1,'L3 cache','8 MB'),(4,9,2,'Кэш L3','8 Мб'),(4,10,1,'Integrated graphics','Intel UHD Graphics 630'),(4,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(5,1,1,'Vendor','Intel'),(5,1,2,'Производитель','Intel'),(5,2,1,'Socket','LGA-1151'),(5,2,2,'Сокет','LGA-1151'),(5,3,1,'Clock speed','3.6 GHz'),(5,3,2,'Тактовая частота','3.6 ГГц'),(5,4,1,'Cores/Threads','4/8'),(5,4,2,'Ядра/Потоки','4/8'),(5,5,1,'Package','OEM'),(5,5,2,'Упаковка','OEM'),(5,6,1,'Core architecture','Kaby Lake'),(5,6,2,'Архитектура ядра','Kaby Lake'),(5,7,1,'L1 cache','4 х 32 kB'),(5,7,2,'Кэш L1','4 х 32 Кб'),(5,8,1,'L2 cache','4 х 256 kB'),(5,8,2,'Кэш L2','4 х 256 Кб'),(5,9,1,'L3 cache','8 MB'),(5,9,2,'Кэш L3','8 Мб'),(5,10,1,'Integrated graphics','Intel UHD Graphics 630'),(5,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(6,1,1,'Vendor','Intel'),(6,1,2,'Производитель','Intel'),(6,2,1,'Socket','LGA-1151'),(6,2,2,'Сокет','LGA-1151'),(6,3,1,'Clock speed','3.8 GHz'),(6,3,2,'Тактовая частота','3.8 ГГц'),(6,4,1,'Cores/Threads','4/4'),(6,4,2,'Ядра/Потоки','4/4'),(6,5,1,'Package','OEM'),(6,5,2,'Упаковка','OEM'),(6,6,1,'Core architecture','Kaby Lake'),(6,6,2,'Архитектура ядра','Kaby Lake'),(6,7,1,'L1 cache','4 х 32 kB'),(6,7,2,'Кэш L1','4 х 32 Кб'),(6,8,1,'L2 cache','4 х 256 kB'),(6,8,2,'Кэш L2','4 х 256 Кб'),(6,9,1,'L3 cache','6 MB'),(6,9,2,'Кэш L3','6 Мб'),(6,10,1,'Integrated graphics','Intel UHD Graphics 630'),(6,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(7,1,1,'Vendor','Intel'),(7,1,2,'Производитель','Intel'),(7,2,1,'Socket','LGA-1151'),(7,2,2,'Сокет','LGA-1151'),(7,3,1,'Clock speed','3.5 GHz'),(7,3,2,'Тактовая частота','3.5 ГГц'),(7,4,1,'Cores/Threads','4/4'),(7,4,2,'Ядра/Потоки','4/4'),(7,5,1,'Package','OEM'),(7,5,2,'Упаковка','OEM'),(7,6,1,'Core architecture','Kaby Lake'),(7,6,2,'Архитектура ядра','Kaby Lake'),(7,7,1,'L1 cache','4 х 32 kB'),(7,7,2,'Кэш L1','4 х 32 Кб'),(7,8,1,'L2 cache','4 х 256 kB'),(7,8,2,'Кэш L2','4 х 256 Кб'),(7,9,1,'L3 cache','6 MB'),(7,9,2,'Кэш L3','6 Мб'),(7,10,1,'Integrated graphics','Intel UHD Graphics 630'),(7,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(8,1,1,'Vendor','Intel'),(8,1,2,'Производитель','Intel'),(8,2,1,'Socket','LGA-1151'),(8,2,2,'Сокет','LGA-1151'),(8,3,1,'Clock speed','3.4 GHz'),(8,3,2,'Тактовая частота','3.4 ГГц'),(8,4,1,'Cores/Threads','4/4'),(8,4,2,'Ядра/Потоки','4/4'),(8,5,1,'Package','OEM'),(8,5,2,'Упаковка','OEM'),(8,6,1,'Core architecture','Kaby Lake'),(8,6,2,'Архитектура ядра','Kaby Lake'),(8,7,1,'L1 cache','4 х 32 kB'),(8,7,2,'Кэш L1','4 х 32 Кб'),(8,8,1,'L2 cache','4 х 256 kB'),(8,8,2,'Кэш L2','4 х 256 Кб'),(8,9,1,'L3 cache','6 MB'),(8,9,2,'Кэш L3','6 Мб'),(8,10,1,'Integrated graphics','Intel UHD Graphics 630'),(8,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(9,1,1,'Vendor','Intel'),(9,1,2,'Производитель','Intel'),(9,2,1,'Socket','LGA-1151'),(9,2,2,'Сокет','LGA-1151'),(9,3,1,'Clock speed','3 GHz'),(9,3,2,'Тактовая частота','3 ГГц'),(9,4,1,'Cores/Threads','4/4'),(9,4,2,'Ядра/Потоки','4/4'),(9,5,1,'Package','OEM'),(9,5,2,'Упаковка','OEM'),(9,6,1,'Core architecture','Kaby Lake'),(9,6,2,'Архитектура ядра','Kaby Lake'),(9,7,1,'L1 cache','4 х 32 kB'),(9,7,2,'Кэш L1','4 х 32 Кб'),(9,8,1,'L2 cache','4 х 256 kB'),(9,8,2,'Кэш L2','4 х 256 Кб'),(9,9,1,'L3 cache','6 MB'),(9,9,2,'Кэш L3','6 Мб'),(9,10,1,'Integrated graphics','Intel UHD Graphics 630'),(9,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(10,1,1,'Vendor','Intel'),(10,1,2,'Производитель','Intel'),(10,2,1,'Socket','LGA-1151'),(10,2,2,'Сокет','LGA-1151'),(10,3,1,'Clock speed','3.9 GHz'),(10,3,2,'Тактовая частота','3.9 ГГц'),(10,4,1,'Cores/Threads','2/4'),(10,4,2,'Ядра/Потоки','2/4'),(10,5,1,'Package','OEM'),(10,5,2,'Упаковка','OEM'),(10,6,1,'Core architecture','Kaby Lake'),(10,6,2,'Архитектура ядра','Kaby Lake'),(10,7,1,'L1 cache','2 х 32 kB'),(10,7,2,'Кэш L1','2 х 32 Кб'),(10,8,1,'L2 cache','2 х 256 kB'),(10,8,2,'Кэш L2','2 х 256 Кб'),(10,9,1,'L3 cache','3 MB'),(10,9,2,'Кэш L3','3 Мб'),(10,10,1,'Integrated graphics','Intel UHD Graphics 630'),(10,10,2,'Интегрированная графика','Intel UHD Graphics 630'),(11,1,1,'Vendor','Kingston'),(11,1,2,'Производитель','Kingston'),(11,2,1,'Type','DDR3'),(11,2,2,'Тип','DDR3'),(11,3,1,'Capacity','4 GB'),(11,3,2,'Ёмкость','4 ГБ'),(11,4,1,'Speed','1333 MHz'),(11,4,2,'Частота','1333 МГц'),(11,5,1,'Voltage','1.5 V'),(11,5,2,'Вольтаж','1.5 В'),(11,6,1,'Form factor','240-pin'),(11,6,2,'Форм-фактор','240-pin'),(11,7,1,'Latency timings','CL9'),(11,7,2,'Тайминги задержки','CL9'),(11,8,1,'Lead plating','Gold'),(11,8,2,'Покрытие контактов','Позолота'),(12,1,1,'Vendor','Corsair'),(12,1,2,'Производитель','Corsair'),(12,2,1,'Type','DDR4'),(12,2,2,'Тип','DDR4'),(12,3,1,'Capacity','8 GB'),(12,3,2,'Ёмкость','8 ГБ'),(12,4,1,'Speed','2133 MHz'),(12,4,2,'Частота','2133 МГц'),(12,5,1,'Voltage','1.2 V'),(12,5,2,'Вольтаж','1.2 В'),(12,6,1,'Form factor','288-pin'),(12,6,2,'Форм-фактор','288-pin'),(12,7,1,'Latency timings','CL15'),(12,7,2,'Тайминги задержки','CL15'),(12,8,1,'Lead plating','Gold'),(12,8,2,'Покрытие контактов','Позолота'),(13,1,1,'Vendor','Corsair'),(13,1,2,'Производитель','Corsair'),(13,2,1,'Type','DDR4'),(13,2,2,'Тип','DDR4'),(13,3,1,'Capacity','16 GB'),(13,3,2,'Ёмкость','16 ГБ'),(13,4,1,'Speed','3000 MHz'),(13,4,2,'Частота','3000 МГц'),(13,5,1,'Voltage','1.35 V'),(13,5,2,'Вольтаж','1.35 В'),(13,6,1,'Form factor','288-pin'),(13,6,2,'Форм-фактор','288-pin'),(13,7,1,'Latency timings','CL15'),(13,7,2,'Тайминги задержки','CL15'),(13,8,1,'Lead plating','Gold'),(13,8,2,'Покрытие контактов','Позолота'),(14,1,1,'Vendor','Kingston'),(14,1,2,'Производитель','Kingston'),(14,2,1,'Type','DDR4'),(14,2,2,'Тип','DDR4'),(14,3,1,'Capacity','16 GB'),(14,3,2,'Ёмкость','16 ГБ'),(14,4,1,'Speed','2133 MHz'),(14,4,2,'Частота','2133 МГц'),(14,5,1,'Voltage','1.2 V'),(14,5,2,'Вольтаж','1.2 В'),(14,6,1,'Form factor','288-pin'),(14,6,2,'Форм-фактор','288-pin'),(14,7,1,'Latency timings','CL14'),(14,7,2,'Тайминги задержки','CL14'),(14,8,1,'Lead plating','Gold'),(14,8,2,'Покрытие контактов','Позолота'),(15,1,1,'Vendor','Corsair'),(15,1,2,'Производитель','Corsair'),(15,2,1,'Type','DDR4'),(15,2,2,'Тип','DDR4'),(15,3,1,'Capacity','16 GB'),(15,3,2,'Ёмкость','16 ГБ'),(15,4,1,'Speed','3000 MHz'),(15,4,2,'Частота','3000 МГц'),(15,5,1,'Voltage','1.35 V'),(15,5,2,'Вольтаж','1.35 В'),(15,6,1,'Form factor','288-pin'),(15,6,2,'Форм-фактор','288-pin'),(15,7,1,'Latency timings','CL15'),(15,7,2,'Тайминги задержки','CL15'),(15,8,1,'Lead plating','Gold'),(15,8,2,'Покрытие контактов','Позолота'),(16,1,1,'Vendor','ASUS'),(16,1,2,'Производитель','ASUS'),(16,2,1,'Bus standard','PCI Express 3.0'),(16,2,2,'Шина','PCI Express 3.0'),(16,3,1,'GPU clock','1607 MHz'),(16,3,2,'Частота GPU','1607 МГц'),(16,4,1,'VRAM clock','8 GHz'),(16,4,2,'Частота памяти','8 ГГц'),(16,5,1,'VRAM Type','GDDR5'),(16,5,2,'Тип памяти','GDDR5'),(16,6,1,'VRAM','8 GB'),(16,6,2,'Объем памяти','8 Гб'),(16,7,1,'Bus width','256 bit'),(16,7,2,'Разрядность шины','256 бит'),(16,8,1,'Power supply','1 x 8-pin'),(16,8,2,'Разъемы питания','1 x 8-pin'),(16,9,1,'Interface','HDMIx2, DPx2, DVIx1'),(16,9,2,'Интерфейс','HDMIx2, DPx2, DVIx1'),(16,10,1,'API','DirectX 12, OpenGL 4.5'),(16,10,2,'API','DirectX 12, OpenGL 4.5'),(17,1,1,'Vendor','MSI'),(17,1,2,'Производитель','MSI'),(17,2,1,'Bus standard','PCI Express 3.0'),(17,2,2,'Шина','PCI Express 3.0'),(17,3,1,'GPU clock','1797 MHz'),(17,3,2,'Частота GPU','1797 МГц'),(17,4,1,'VRAM clock','8 GHz'),(17,4,2,'Частота памяти','8 ГГц'),(17,5,1,'VRAM Type','GDDR5'),(17,5,2,'Тип памяти','GDDR5'),(17,6,1,'VRAM','8 GB'),(17,6,2,'Объем памяти','8 Гб'),(17,7,1,'Bus width','256 bit'),(17,7,2,'Разрядность шины','256 бит'),(17,8,1,'Power supply','1 x 8-pin'),(17,8,2,'Разъемы питания','1 x 8-pin'),(17,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(17,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(17,10,1,'API','DirectX 12, OpenGL 4.5'),(17,10,2,'API','DirectX 12, OpenGL 4.5'),(18,1,1,'Vendor','Inno3D'),(18,1,2,'Производитель','Inno3D'),(18,2,1,'Bus standard','PCI Express 3.0'),(18,2,2,'Шина','PCI Express 3.0'),(18,3,1,'GPU clock','1620 MHz'),(18,3,2,'Частота GPU','1620 МГц'),(18,4,1,'VRAM clock','8 GHz'),(18,4,2,'Частота памяти','8 ГГц'),(18,5,1,'VRAM Type','GDDR5'),(18,5,2,'Тип памяти','GDDR5'),(18,6,1,'VRAM','8 GB'),(18,6,2,'Объем памяти','8 Гб'),(18,7,1,'Bus width','256 bit'),(18,7,2,'Разрядность шины','256 бит'),(18,8,1,'Power supply','1 x 8-pin'),(18,8,2,'Разъемы питания','1 x 8-pin'),(18,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(18,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(18,10,1,'API','DirectX 12, OpenGL 4.5'),(18,10,2,'API','DirectX 12, OpenGL 4.5'),(19,1,1,'Vendor','GIGABYTE'),(19,1,2,'Производитель','GIGABYTE'),(19,2,1,'Bus standard','PCI Express 3.0'),(19,2,2,'Шина','PCI Express 3.0'),(19,3,1,'GPU clock','1620 MHz'),(19,3,2,'Частота GPU','1620 МГц'),(19,4,1,'VRAM clock','8 GHz'),(19,4,2,'Частота памяти','8 ГГц'),(19,5,1,'VRAM Type','GDDR5X'),(19,5,2,'Тип памяти','GDDR5X'),(19,6,1,'VRAM','8 GB'),(19,6,2,'Объем памяти','8 Гб'),(19,7,1,'Bus width','256 bit'),(19,7,2,'Разрядность шины','256 бит'),(19,8,1,'Power supply','1 x 8-pin'),(19,8,2,'Разъемы питания','1 x 8-pin'),(19,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(19,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(19,10,1,'API','DirectX 12, OpenGL 4.5'),(19,10,2,'API','DirectX 12, OpenGL 4.5'),(20,1,1,'Vendor','MSI'),(20,1,2,'Производитель','MSI'),(20,2,1,'Bus standard','PCI Express 3.0'),(20,2,2,'Шина','PCI Express 3.0'),(20,3,1,'GPU clock','1809 MHz'),(20,3,2,'Частота GPU','1809 МГц'),(20,4,1,'VRAM clock','8 GHz'),(20,4,2,'Частота памяти','8 ГГц'),(20,5,1,'VRAM Type','GDDR5'),(20,5,2,'Тип памяти','GDDR5'),(20,6,1,'VRAM','6 GB'),(20,6,2,'Объем памяти','6 Гб'),(20,7,1,'Bus width','192 bit'),(20,7,2,'Разрядность шины','192 бит'),(20,8,1,'Power supply','1 x 8-pin'),(20,8,2,'Разъемы питания','1 x 8-pin'),(20,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(20,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(20,10,1,'API','DirectX 12, OpenGL 4.5'),(20,10,2,'API','DirectX 12, OpenGL 4.5'),(21,1,1,'Vendor','Palit'),(21,1,2,'Производитель','Palit'),(21,2,1,'Bus standard','PCI Express 3.0'),(21,2,2,'Шина','PCI Express 3.0'),(21,3,1,'GPU clock','1809 MHz'),(21,3,2,'Частота GPU','1809 МГц'),(21,4,1,'VRAM clock','8 GHz'),(21,4,2,'Частота памяти','8 ГГц'),(21,5,1,'VRAM Type','GDDR5'),(21,5,2,'Тип памяти','GDDR5'),(21,6,1,'VRAM','3 GB'),(21,6,2,'Объем памяти','3 Гб'),(21,7,1,'Bus width','192 bit'),(21,7,2,'Разрядность шины','192 бит'),(21,8,1,'Power supply','1 x 6-pin'),(21,8,2,'Разъемы питания','1 x 6-pin'),(21,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(21,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(21,10,1,'API','DirectX 12, OpenGL 4.5'),(21,10,2,'API','DirectX 12, OpenGL 4.5'),(22,1,1,'Vendor','MSI'),(22,1,2,'Производитель','MSI'),(22,2,1,'Bus standard','PCI Express 3.0'),(22,2,2,'Шина','PCI Express 3.0'),(22,3,1,'GPU clock','1493 MHz'),(22,3,2,'Частота GPU','1493 МГц'),(22,4,1,'VRAM clock','7 GHz'),(22,4,2,'Частота памяти','7 ГГц'),(22,5,1,'VRAM Type','GDDR5'),(22,5,2,'Тип памяти','GDDR5'),(22,6,1,'VRAM','4 GB'),(22,6,2,'Объем памяти','4 Гб'),(22,7,1,'Bus width','128 bit'),(22,7,2,'Разрядность шины','128 бит'),(22,8,1,'Power supply','1 x 6-pin'),(22,8,2,'Разъемы питания','1 x 6-pin'),(22,9,1,'Interface','HDMIx1, DPx1'),(22,9,2,'Интерфейс','HDMIx1, DPx1'),(22,10,1,'API','DirectX 12, OpenGL 4.5'),(22,10,2,'API','DirectX 12, OpenGL 4.5'),(23,1,1,'Vendor','Palit'),(23,1,2,'Производитель','Palit'),(23,2,1,'Bus standard','PCI Express 3.0'),(23,2,2,'Шина','PCI Express 3.0'),(23,3,1,'GPU clock','1290 MHz'),(23,3,2,'Частота GPU','1290 МГц'),(23,4,1,'VRAM clock','7 GHz'),(23,4,2,'Частота памяти','7 ГГц'),(23,5,1,'VRAM Type','GDDR5'),(23,5,2,'Тип памяти','GDDR5'),(23,6,1,'VRAM','4 GB'),(23,6,2,'Объем памяти','4 Гб'),(23,7,1,'Bus width','128 bit'),(23,7,2,'Разрядность шины','128 бит'),(23,8,1,'Power supply','1 x 6-pin'),(23,8,2,'Разъемы питания','1 x 6-pin'),(23,9,1,'Interface','HDMIx1, DPx1'),(23,9,2,'Интерфейс','HDMIx1, DPx1'),(23,10,1,'API','DirectX 12, OpenGL 4.5'),(23,10,2,'API','DirectX 12, OpenGL 4.5'),(24,1,1,'Vendor','ASUS'),(24,1,2,'Производитель','ASUS'),(24,2,1,'Bus standard','PCI Express 3.0'),(24,2,2,'Шина','PCI Express 3.0'),(24,3,1,'GPU clock','1455 MHz'),(24,3,2,'Частота GPU','1455 МГц'),(24,4,1,'VRAM clock','7 GHz'),(24,4,2,'Частота памяти','7 ГГц'),(24,5,1,'VRAM Type','GDDR5'),(24,5,2,'Тип памяти','GDDR5'),(24,6,1,'VRAM','2 GB'),(24,6,2,'Объем памяти','2 Гб'),(24,7,1,'Bus width','128 bit'),(24,7,2,'Разрядность шины','128 бит'),(24,8,1,'Power supply','1 x 6-pin'),(24,8,2,'Разъемы питания','1 x 6-pin'),(24,9,1,'Interface','HDMIx1, DPx1'),(24,9,2,'Интерфейс','HDMIx1, DPx1'),(24,10,1,'API','DirectX 12, OpenGL 4.5'),(24,10,2,'API','DirectX 12, OpenGL 4.5'),(25,1,1,'Vendor','MSI'),(25,1,2,'Производитель','MSI'),(25,2,1,'Bus standard','PCI Express 3.0'),(25,2,2,'Шина','PCI Express 3.0'),(25,3,1,'GPU clock','1265 MHz'),(25,3,2,'Частота GPU','1265 МГц'),(25,4,1,'VRAM clock','6 GHz'),(25,4,2,'Частота памяти','6 ГГц'),(25,5,1,'VRAM Type','GDDR5'),(25,5,2,'Тип памяти','GDDR5'),(25,6,1,'VRAM','2 GB'),(25,6,2,'Объем памяти','2 Гб'),(25,7,1,'Bus width','64 bit'),(25,7,2,'Разрядность шины','64 бит'),(25,8,1,'Power supply','1 x 6-pin'),(25,8,2,'Разъемы питания','1 x 6-pin'),(25,9,1,'Interface','HDMIx1, DPx1'),(25,9,2,'Интерфейс','HDMIx1, DPx1'),(25,10,1,'API','DirectX 12, OpenGL 4.5'),(25,10,2,'API','DirectX 12, OpenGL 4.5'),(26,1,1,'Vendor','ASUS'),(26,1,2,'Производитель','ASUS'),(26,2,1,'Socket','LGA-2011'),(26,2,2,'Сокет','LGA-2011'),(26,3,1,'Form factor','E-ATX'),(26,3,2,'Форм-фактор','E-ATX'),(26,4,1,'Chipset type','Intel C602-A'),(26,4,2,'Набор чипов','Intel C602-A'),(26,5,1,'RAM supported','16xDDR3'),(26,5,2,'Слотов RAM','16xDDR3'),(26,6,1,'Max RAM size','512 GB'),(26,6,2,'Максимум RAM','512 GB'),(26,7,1,'LAN','4xGigabit Ethernet'),(26,7,2,'LAN','4xGigabit Ethernet'),(26,8,1,'Compatible Processors','Intel Xeon E5-2600 series'),(26,8,2,'Совместимые процессоры','Intel Xeon E5-2600 series'),(26,9,1,'Storage ports','2xSATA-600, 8xSATA-300'),(26,9,2,'Порты SATA','2xSATA-600, 8xSATA-300'),(26,10,1,'PCIe x16 slots','6'),(26,10,2,'Слоты PCIe x16','6'),(27,1,1,'Vendor','ASRock'),(27,1,2,'Производитель','ASRock'),(27,2,1,'Socket','LGA-1150'),(27,2,2,'Сокет','LGA-1150'),(27,3,1,'Form factor','ATX'),(27,3,2,'Форм-фактор','ATX'),(27,4,1,'Chipset type','Intel H81'),(27,4,2,'Набор чипов','Intel H81'),(27,5,1,'RAM supported','2xDDR3'),(27,5,2,'Слотов RAM','2xDDR3'),(27,6,1,'Max RAM size','16 GB'),(27,6,2,'Максимум RAM','16 ГБ'),(27,7,1,'LAN','1 x Gigabit Ethernet'),(27,7,2,'LAN','1 x Gigabit Ethernet'),(27,8,1,'Compatible processors','Celeron, Xeon, Core i3, i5, i7'),(27,8,2,'Совместимые процессоры','Celeron, Xeon, Core i3, i5, i7'),(27,9,1,'Storage ports','2xSATA-600'),(27,9,2,'Порты SATA','2xSATA-600'),(27,10,1,'PCIe x16 slots','1'),(27,10,2,'Слоты PCIe x16','1'),(28,1,1,'Vendor','GIGABYTE'),(28,1,2,'Производитель','GIGABYTE'),(28,2,1,'Socket','LGA-1151'),(28,2,2,'Сокет','LGA-1151'),(28,3,1,'Form factor','ATX'),(28,3,2,'Форм-фактор','ATX'),(28,4,1,'Chipset type','Intel H110'),(28,4,2,'Набор чипов','Intel H110'),(28,5,1,'RAM supported','2xDDR4'),(28,5,2,'Слотов RAM','2xDDR4'),(28,6,1,'Max RAM size','32 GB'),(28,6,2,'Максимум RAM','32 GB'),(28,7,1,'LAN','1 x Gigabit Ethernet'),(28,7,2,'LAN','1 x Gigabit Ethernet'),(28,8,1,'Compatible processors','Celeron, Xeon, Core i3, i5, i7'),(28,8,2,'Совместимые процессоры','Celeron, Xeon, Core i3, i5, i7'),(28,9,1,'Storage ports','3xSATA-600'),(28,9,2,'Порты SATA','3xSATA-600'),(28,10,1,'PCIe x16 slots','1'),(28,10,2,'Слоты PCIe x16','1'),(29,1,1,'Vendor','GIGABYTE'),(29,1,2,'Производитель','GIGABYTE'),(29,2,1,'Input','AC 100-240 V'),(29,2,2,'Вход','AC 100-240 В'),(29,3,1,'Output','+3.3, +5, ±12 V'),(29,3,2,'Выход','+3.3, +5, ±12 В'),(29,4,1,'Frequency Required','47-63 Hz'),(29,4,2,'Необходимая частота','47-63 Гц'),(29,5,1,'Efficiency','85%'),(29,5,2,'Эффективность','85%'),(29,6,1,'Power Capacity','700W'),(29,6,2,'Мощность','700Вт'),(29,7,1,'Specifications','ATX12V 2.31'),(29,7,2,'Спецификации','ATX12V 2.31'),(29,8,1,'Cooling System','120 mm fan'),(29,8,2,'Охлаждение','120 mm кулер'),(29,9,1,'Power Connectors','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(29,9,2,'Коннекторы','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(30,1,1,'Vendor','EVGA'),(30,1,2,'Производитель','EVGA'),(30,2,1,'Input','AC 100-240 V'),(30,2,2,'Вход','AC 100-240 В'),(30,3,1,'Output','+3.3, +5, ±12 V'),(30,3,2,'Выход','+3.3, +5, ±12 В'),(30,4,1,'Frequency Required','47-63 Hz'),(30,4,2,'Необходимая частота','47-63 Гц'),(30,5,1,'Efficiency','85%'),(30,5,2,'Эффективность','85%'),(30,6,1,'Power Capacity','700W'),(30,6,2,'Мощность','700Вт'),(30,7,1,'Specifications','ATX12V 2.31'),(30,7,2,'Спецификации','ATX12V 2.31'),(30,8,1,'Cooling System','120 mm fan'),(30,8,2,'Охлаждение','120 mm кулер'),(30,9,1,'Power Connectors','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(30,9,2,'Коннекторы','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(31,1,1,'Vendor','GIGABYTE'),(31,1,2,'Производитель','GIGABYTE'),(31,2,1,'Input','AC 100-240 V'),(31,2,2,'Вход','AC 100-240 В'),(31,3,1,'Output','+3.3, +5, ±12 V'),(31,3,2,'Выход','+3.3, +5, ±12 В'),(31,4,1,'Frequency Required','47-63 Hz'),(31,4,2,'Необходимая частота','47-63 Гц'),(31,5,1,'Efficiency','85%'),(31,5,2,'Эффективность','85%'),(31,6,1,'Power Capacity','700W'),(31,6,2,'Мощность','700Вт'),(31,7,1,'Specifications','ATX12V 2.31'),(31,7,2,'Спецификации','ATX12V 2.31'),(31,8,1,'Cooling System','120 mm fan'),(31,8,2,'Охлаждение','120 mm кулер'),(31,9,1,'Power Connectors','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(31,9,2,'Коннекторы','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(32,1,1,'Vendor','Corsair'),(32,1,2,'Производитель','Corsair'),(32,2,1,'Input','AC 100-240 V'),(32,2,2,'Вход','AC 100-240 В'),(32,3,1,'Output','+3.3, +5, ±12 V'),(32,3,2,'Выход','+3.3, +5, ±12 В'),(32,4,1,'Frequency Required','47-63 Hz'),(32,4,2,'Необходимая частота','47-63 Гц'),(32,5,1,'Efficiency','85%'),(32,5,2,'Эффективность','85%'),(32,6,1,'Power Capacity','700W'),(32,6,2,'Мощность','700Вт'),(32,7,1,'Specification Compliance','ATX12V 2.31'),(32,7,2,'Спецификации','ATX12V 2.31'),(32,8,1,'Cooling System','120 mm fan'),(32,8,2,'Охлаждение','120 mm кулер'),(32,9,1,'Power Connectors','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(32,9,2,'Коннекторы','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(33,1,1,'Vendor','Corsair'),(33,1,2,'Производитель','Corsair'),(33,2,1,'Input','AC 100-240 V'),(33,2,2,'Вход','AC 100-240 В'),(33,3,1,'Output','+3.3, +5, ±12 V'),(33,3,2,'Выход','+3.3, +5, ±12 В'),(33,4,1,'Frequency Required','47-63 Hz'),(33,4,2,'Необходимая частота','47-63 Гц'),(33,5,1,'Efficiency','85%'),(33,5,2,'Эффективность','85%'),(33,6,1,'Power Capacity','700W'),(33,6,2,'Мощность','700Вт'),(33,7,1,'Specification Compliance','ATX12V 2.31'),(33,7,2,'Спецификации','ATX12V 2.31'),(33,8,1,'Cooling System','120 mm fan'),(33,8,2,'Охлаждение','120 mm кулер'),(33,9,1,'Power Connectors','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(33,9,2,'Коннекторы','1x24pin, 1x8pin, 7x15pin, 3x4pin'),(34,1,1,'Vendor','AMD'),(34,1,2,'Производитель','AMD'),(34,2,1,'Socket','AM4'),(34,2,2,'Сокет','AM4'),(34,3,1,'Clock speed','3.2 GHz'),(34,3,2,'Тактовая частота','3.2 ГГц'),(34,4,1,'Cores/Threads','6/12'),(34,4,2,'Ядра/Потоки','6/12'),(34,5,1,'Package','OEM'),(34,5,2,'Упаковка','OEM'),(34,6,1,'Core architecture','Zen'),(34,6,2,'Архитектура ядра','Zen'),(34,7,1,'L1 cache','6 x 96 kB'),(34,7,2,'Кэш L1','6 х 96 Кб'),(34,8,1,'L2 cache','6 х 512 kB'),(34,8,2,'Кэш L2','6 х 512 Кб'),(34,9,1,'L3 cache','16 MB'),(34,9,2,'Кэш L3','16 Мб'),(34,10,1,'Integrated graphics','AMD Vega'),(34,10,2,'Интегрированная графика','AMD Vega'),(35,1,1,'Vendor','AMD'),(35,1,2,'Производитель','AMD'),(35,2,1,'Socket','AM4'),(35,2,2,'Сокет','AM4'),(35,3,1,'Clock speed','3.6 GHz'),(35,3,2,'Тактовая частота','3.6 ГГц'),(35,4,1,'Cores/Threads','6/12'),(35,4,2,'Ядра/Потоки','6/12'),(35,5,1,'Package','OEM'),(35,5,2,'Упаковка','OEM'),(35,6,1,'Core architecture','Zen'),(35,6,2,'Архитектура ядра','Zen'),(35,7,1,'L1 cache','6 x 96 kB'),(35,7,2,'Кэш L1','6 х 96 Кб'),(35,8,1,'L2 cache','6 х 512 kB'),(35,8,2,'Кэш L2','6 х 512 Кб'),(35,9,1,'L3 cache','16 MB'),(35,9,2,'Кэш L3','16 Мб'),(35,10,1,'Integrated graphics','AMD Vega'),(35,10,2,'Интегрированная графика','AMD Vega'),(36,1,1,'Vendor','AMD'),(36,1,2,'Производитель','AMD'),(36,2,1,'Socket','AM4'),(36,2,2,'Сокет','AM4'),(36,3,1,'Clock speed','3.0 GHz'),(36,3,2,'Тактовая частота','3.0 ГГц'),(36,4,1,'Cores/Threads','8/12'),(36,4,2,'Ядра/Потоки','8/12'),(36,5,1,'Package','OEM'),(36,5,2,'Упаковка','OEM'),(36,6,1,'Core architecture','Zen'),(36,6,2,'Архитектура ядра','Zen'),(36,7,1,'L1 cache','8 x 96 kB'),(36,7,2,'Кэш L1','8 х 96 Кб'),(36,8,1,'L2 cache','8 х 512 kB'),(36,8,2,'Кэш L2','8 х 512 Кб'),(36,9,1,'L3 cache','16 MB'),(36,9,2,'Кэш L3','16 Мб'),(36,10,1,'Integrated graphics','AMD Vega'),(36,10,2,'Интегрированная графика','AMD Vega'),(37,1,1,'Vendor','ASUS'),(37,1,2,'Производитель','ASUS'),(37,2,1,'Bus standard','PCI Express 3.0'),(37,2,2,'Шина','PCI Express 3.0'),(37,3,1,'GPU clock','1506 MHz'),(37,3,2,'Частота GPU','1506 МГц'),(37,4,1,'VRAM clock','11.1 GHz'),(37,4,2,'Частота памяти','11.1 ГГц'),(37,5,1,'VRAM Type','GDDR5X'),(37,5,2,'Тип памяти','GDDR5X'),(37,6,1,'VRAM','11 GB'),(37,6,2,'Объем памяти','11 Гб'),(37,7,1,'Bus width','352 bit'),(37,7,2,'Разрядность шины','352 бит'),(37,8,1,'Power supply','2 x 8-pin'),(37,8,2,'Разъемы питания','2 x 8-pin'),(37,9,1,'Interface','HDMIx1, DPx2, DVIx1'),(37,9,2,'Интерфейс','HDMIx1, DPx2, DVIx1'),(37,10,1,'API','DirectX 12.1, OpenGL 4.5'),(37,10,2,'API','DirectX 12.1, OpenGL 4.5'),(38,1,1,'Vendor','EVGA'),(38,1,2,'Производитель','EVGA'),(38,2,1,'Bus standard','PCI Express 3.0'),(38,2,2,'Шина','PCI Express 3.0'),(38,3,1,'GPU clock','1480 MHz'),(38,3,2,'Частота GPU','1480 МГц'),(38,4,1,'VRAM clock','11.1 GHz'),(38,4,2,'Частота памяти','11.1 ГГц'),(38,5,1,'VRAM Type','GDDR5X'),(38,5,2,'Тип памяти','GDDR5X'),(38,6,1,'VRAM','11 GB'),(38,6,2,'Объем памяти','11 Гб'),(38,7,1,'Bus width','352 bit'),(38,7,2,'Разрядность шины','352 бит'),(38,8,1,'Power supply','2 x 8-pin'),(38,8,2,'Разъемы питания','2 x 8-pin'),(38,9,1,'Interface','HDMIx1, DPx3'),(38,9,2,'Интерфейс','HDMIx1, DPx3'),(38,10,1,'API','DirectX 12, OpenGL 4.5'),(38,10,2,'API','DirectX 12, OpenGL 4.5'),(39,1,1,'Vendor','GIGABYTE'),(39,1,2,'Производитель','GIGABYTE'),(39,2,1,'Bus standard','PCI Express 3.0'),(39,2,2,'Шина','PCI Express 3.0'),(39,3,1,'GPU clock','1657 MHz'),(39,3,2,'Частота GPU','1657 МГц'),(39,4,1,'VRAM clock','11.1 GHz'),(39,4,2,'Частота памяти','11.1 ГГц'),(39,5,1,'VRAM Type','GDDR5X'),(39,5,2,'Тип памяти','GDDR5X'),(39,6,1,'VRAM','8 GB'),(39,6,2,'Объем памяти','8 Гб'),(39,7,1,'Bus width','256 bit'),(39,7,2,'Разрядность шины','256 бит'),(39,8,1,'Power supply','1 x 8-pin'),(39,8,2,'Разъемы питания','1 x 8-pin'),(39,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(39,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(39,10,1,'API','DirectX 12.1, OpenGL 4.5'),(39,10,2,'API','DirectX 12.1, OpenGL 4.5'),(40,1,1,'Vendor','MSI'),(40,1,2,'Производитель','MSI'),(40,2,1,'Bus standard','PCI Express 3.0'),(40,2,2,'Шина','PCI Express 3.0'),(40,3,1,'GPU clock','1708 MHz'),(40,3,2,'Частота GPU','1708 МГц'),(40,4,1,'VRAM clock','10.01 GHz'),(40,4,2,'Частота памяти','10.01 ГГц'),(40,5,1,'VRAM Type','GDDR5X'),(40,5,2,'Тип памяти','GDDR5X'),(40,6,1,'VRAM','8 GB'),(40,6,2,'Объем памяти','8 Гб'),(40,7,1,'Bus width','256 bit'),(40,7,2,'Разрядность шины','256 бит'),(40,8,1,'Power supply','1 x 8-pin'),(40,8,2,'Разъемы питания','1 x 8-pin'),(40,9,1,'Interface','HDMIx1, DPx3, DVIx1'),(40,9,2,'Интерфейс','HDMIx1, DPx3, DVIx1'),(40,10,1,'API','DirectX 12, OpenGL 4.5'),(40,10,2,'API','DirectX 12, OpenGL 4.5'),(41,1,1,'Vendor','ASUS'),(41,1,2,'Производитель','ASUS'),(41,2,1,'Bus standard','PCI Express 3.0'),(41,2,2,'Шина','PCI Express 3.0'),(41,3,1,'GPU clock','1607 MHz'),(41,3,2,'Частота GPU','1607 МГц'),(41,4,1,'VRAM clock','8 GHz'),(41,4,2,'Частота памяти','8 ГГц'),(41,5,1,'VRAM Type','GDDR5'),(41,5,2,'Тип памяти','GDDR5'),(41,6,1,'VRAM','8 GB'),(41,6,2,'Объем памяти','8 Гб'),(41,7,1,'Bus width','256 bit'),(41,7,2,'Разрядность шины','256 бит'),(41,8,1,'Power supply','1 x 8-pin'),(41,8,2,'Разъемы питания','1 x 8-pin'),(41,9,1,'Interface','HDMIx2, DPx2, DVIx1'),(41,9,2,'Интерфейс','HDMIx2, DPx2, DVIx1'),(41,10,1,'API','DirectX 12, OpenGL 4.5'),(41,10,2,'API','DirectX 12, OpenGL 4.5'),(42,1,1,'Vendor','ASUS'),(42,1,2,'Производитель','ASUS'),(42,2,1,'Socket','LGA-1151'),(42,2,2,'Сокет','LGA-1151'),(42,3,1,'Form factor','E-ATX'),(42,3,2,'Форм-фактор','E-ATX'),(42,4,1,'Chipset type','Intel Z270'),(42,4,2,'Набор чипов','Intel Z270'),(42,5,1,'RAM supported','4xDDR4'),(42,5,2,'Слотов RAM','4xDDR4'),(42,6,1,'Max RAM size','64 GB'),(42,6,2,'Максимум RAM','64 GB'),(42,7,1,'LAN','1 x Gigabit Ethernet'),(42,7,2,'LAN','1 x Gigabit Ethernet'),(42,8,1,'Compatible Processors','Pentium, Celeron, Core i3, i5, i7'),(42,8,2,'Совместимые процессоры','Pentium, Celeron, Core i3, i5, i7'),(42,9,1,'Storage ports','8xSATA-600'),(42,9,2,'Порты SATA','8xSATA-600'),(42,10,1,'PCIe x16 slots','2'),(42,10,2,'Слоты PCIe x16','2'),(43,1,1,'Vendor','ASUS'),(43,1,2,'Производитель','ASUS'),(43,2,1,'Socket','LGA-2066'),(43,2,2,'Сокет','LGA-2066'),(43,3,1,'Form factor','E-ATX'),(43,3,2,'Форм-фактор','E-ATX'),(43,4,1,'Chipset type','Intel X299'),(43,4,2,'Набор чипов','Intel X299'),(43,5,1,'RAM supported','8xDDR4'),(43,5,2,'Слотов RAM','8xDDR4'),(43,6,1,'Max RAM size','128 GB'),(43,6,2,'Максимум RAM','128 GB'),(43,7,1,'LAN','10 x Gigabit Ethernet'),(43,7,2,'LAN','10 x Gigabit Ethernet'),(43,8,1,'Compatible processors','Core i9'),(43,8,2,'Совместимые процессоры','Core i9'),(43,9,1,'Storage ports','6xSATA-600'),(43,9,2,'Порты SATA','6xSATA-600'),(43,10,1,'PCIe x16 slots','4'),(43,10,2,'Слоты PCIe x16','4'),(44,1,1,'Vendor','MSI'),(44,1,2,'Производитель','MSI'),(44,2,1,'Socket','LGA-2011'),(44,2,2,'Сокет','LGA-2011'),(44,3,1,'Form factor','E-ATX'),(44,3,2,'Форм-фактор','E-ATX'),(44,4,1,'Chipset type','Intel X99'),(44,4,2,'Набор чипов','Intel X99'),(44,5,1,'RAM supported','8xDDR4'),(44,5,2,'Слотов RAM','8xDDR4'),(44,6,1,'Max RAM size','128 GB'),(44,6,2,'Максимум RAM','128 GB'),(44,7,1,'LAN','2 x Gigabit Ethernet'),(44,7,2,'LAN','2 x Gigabit Ethernet'),(44,8,1,'Compatible Processors','Core i7 Extreme Edition'),(44,8,2,'Совместимые процессоры','Core i7 Extreme Edition'),(44,9,1,'Storage ports','6xSATA-600'),(44,9,2,'Порты SATA','6xSATA-600'),(44,10,1,'PCIe x16 slots','5'),(44,10,2,'Слоты PCIe x16','5');
/*!40000 ALTER TABLE `chars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales` (
  `locale_id` int(11) NOT NULL,
  `locale_name` varchar(45) NOT NULL,
  PRIMARY KEY (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES (1,'en_US'),(2,'ru_KZ');
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_products`
--

DROP TABLE IF EXISTS `ordered_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordered_products` (
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `ordered_products_PRODUCT_ID_products_idx` (`product_id`),
  CONSTRAINT `ordered_products_ORDER_ID_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordered_products_PRODUCT_ID_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_products`
--

LOCK TABLES `ordered_products` WRITE;
/*!40000 ALTER TABLE `ordered_products` DISABLE KEYS */;
INSERT INTO `ordered_products` VALUES (11,38,1),(11,40,1),(12,26,1),(13,11,1),(13,27,1),(13,28,1);
/*!40000 ALTER TABLE `ordered_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `total_sum` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `username_idx` (`username`),
  CONSTRAINT `orders_USERNAME_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,'admin','611 800,00 ₸','Completed',1519945480163),(12,'admin','210 000,00 ₸','Pending',1520086141399),(13,'admin','87 600,00 ₸','Pending',1520169969987);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `img` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Intel Core i7-8700K',167900,'CPU','8700K.jpg'),(2,'Intel Core i3-8350K',74500,'CPU','8350K.jpg'),(3,'Intel Core i3-8100',51900,'CPU','8100.jpg'),(4,'Intel Core i7-7700K',139900,'CPU','7700K.jpg'),(5,'Intel Core i7-7700',125900,'CPU','7700.jpg'),(6,'Intel Core i5-7600K',99900,'CPU','7600K.jpg'),(7,'Intel Core i5-7600',87900,'CPU','7600.jpg'),(8,'Intel Core i5-7500',76900,'CPU','7500.jpg'),(9,'Intel Core i5-7400',69900,'CPU','7400.jpg'),(10,'Intel Core i3-7100',44900,'CPU','7100.jpg'),(11,'Kingston ValueRAM KVR13N9S8/4',12300,'Memory','9047604438089C989499477396F32724.jpg'),(12,'Corsair Value Select 8GB ',31000,'Memory','90584793BA42C8F48C444A799E38214F.jpg'),(13,'Corsair Vengeance LPX Schwarz 16GB',64500,'Memory','9061399636487531884E4DF0B17555B0.jpg'),(14,'Kingston HyperX Fury Black Kit',60000,'Memory','9064388283C1E18C0B7B4DD5B893D3BD.jpg'),(15,'Corsair Vengeance LPX 16GB',65000,'Memory','90620329C75E72F6FD4A48208D3B4BE3.jpg'),(16,'ASUS ROG Strix GTX1070Ti',235900,'GPU','1070ti_ASUS_ROG.jpg'),(17,'MSI GeForce GTX1070',230900,'GPU','1070_MSI.jpg'),(18,'Inno3D GeForce GTX1070',184900,'GPU','1070_inno3d.jpg'),(19,'GIGABYTE GeForce GTX1070',214900,'GPU','1070_GIGABYTE.jpg'),(20,'MSI GeForce GTX1060',98900,'GPU','1060_MSI.jpg'),(21,'Palit GeForce GTX1060',104900,'GPU','1060_PALIT.jpg'),(22,'MSI GeForce GTX1050 Ti',74500,'GPU','1050ti_MSI.jpg'),(23,'Palit GeForce GTX1050 Ti',60900,'GPU','1050ti_PALIT.jpg'),(24,'ASUS GeForce GTX1050',46900,'GPU','1050_ASUS.jpg'),(25,'MSI GeForce GT1030',27500,'GPU','1030_MSI.jpg'),(26,'ASUS Z9PE-D16',210000,'Motherboard','905064557760DF1CA06C44E3AB16B52C.jpg'),(27,'ASRock H81 PRO BTC R2.0 ',35300,'Motherboard','906768302DB5DDF72E4040F59F321982.jpg'),(28,'GIGABYTE H110-D3A Bitcoin Edition',40000,'Motherboard','90696999956819CD1B4A4A65BEB6BF72.jpg'),(29,'GIGABYTE B700H Netzteil 80',26000,'Power','9068980550EF301EBABB47B7BD8A17B0.jpg'),(30,'EVGA B3 V2 80 Plus Bronze',22000,'Power','907039336F26EC1ACBD64F0FBBB59B9D.jpg'),(31,'Gigabyte G750H 80+ Gold',35000,'Power','906563070F07F406B5F8489885D86C02.jpg'),(32,'Corsair RM650x 650 Watt',35000,'Power','90620322CD48D7C15E9B4BFBA9EADB4D.jpg'),(33,'Corsair CX750 v2 80+ Bronze ',30000,'Power','906853926D83D83AD2C748FC91D1465A.jpg'),(34,'AMD Ryzen 5 1600',61000,'CPU','1900.jpg'),(35,'AMD Ryzen 5 1600X',70000,'CPU','299960_2245_draft_large.jpg'),(36,'AMD Ryzen 7 1700',96000,'CPU','0c4cfb358e.jpg'),(37,'ASUS GeForce GTX1080Ti',381900,'GPU','1080ti_ASUS.jpg'),(38,'EVGA GeForce GTX1080Ti',355900,'GPU','1080ti_EVGA.jpg'),(39,'GIGABYTE GeForce GTX1080',230900,'GPU','1080_GIGABYTE.jpg'),(40,'MSI GeForce GTX1080',255900,'GPU','1080_MSI.jpg'),(41,'ASUS GeForce GTX1070Ti',190900,'GPU','1070ti_ASUS.jpg'),(42,'ASUS MAXIMUS IX EXTREME',160000,'Motherboard','90687878F7A0F451BCB24842A6164AC9.jpg'),(43,'ASUS ROG Rampage VI EXTREME X299',197000,'Motherboard','90707790B1A6C9CA558A4A09B3181DC0.jpg'),(44,'MSI X99A GODLIKE GAMING CARBON',165000,'Motherboard','9064871862DA7A338A0541868A8EC1B2.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` varchar(1400) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `username_review_idx` (`username`),
  KEY `reviews_PRODUCT_ID_products_idx` (`product_id`),
  CONSTRAINT `reviews_PRODUCT_ID_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_username_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`username`,`role`),
  CONSTRAINT `user_roles_username_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('admin','Admin'),('admin','User'),('TestUser','User'),('vasya','User');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','k580@ya.ru','bdef8c55e5b8dc25bfedf6744b0296ba','Кристиан','Кошалиев','+77476401830','Металлистов 26'),('TestUser','test@gmail.com','bdef8c55e5b8dc25bfedf6744b0296ba','Test','User','+77443543440','12345'),('vasya','vasily@ya.ru','827ccb0eea8a706c4c34a16891f84e7b','Василий','Иванов','+77771002345','Строителей 12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05  2:30:26
