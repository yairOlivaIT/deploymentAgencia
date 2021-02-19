-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: agenciaviajes
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `testimonios`
--

DROP TABLE IF EXISTS `testimonios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mensaje` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonios`
--

LOCK TABLES `testimonios` WRITE;
/*!40000 ALTER TABLE `testimonios` DISABLE KEYS */;
INSERT INTO `testimonios` VALUES (1,'Yair Gonzalo Oliva','yairolivait@gmail.com','Excelente pagina de viajes'),(2,'Yair Gonzalo Oliva','yairolivait@gmail.com','Las mejores vacaciones'),(5,'Matias','matias.oliva.23@gmail.com','La mejor pagina para realizar tus viajes.'),(6,'Rosa','rosa@gmail.com','Gracias por todo. Los recomiendo , excelente trabajo');
/*!40000 ALTER TABLE `testimonios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `id` bigint NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `precio` varchar(10) DEFAULT NULL,
  `fecha_ida` date DEFAULT NULL,
  `fecha_vuelta` date DEFAULT NULL,
  `imagen` varchar(15) DEFAULT NULL,
  `descripcion` text,
  `disponibles` int DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,'Italia','50000','2021-06-24','2021-06-30','roma','Con una larga e interesante historia a sus espaldas, Roma es una ciudad que atrae visitantes de todo el mundo gracias a sus impresionantes monumentos y restos arqueológicos procedentes de la Antigüedad. Existen infinidad de razones para visitar Roma, enamorarse de la ciudad y desear volver a ella. La gastronomía y su animado ambiente son algunas de ellas. Pasear por Roma no es solo recorrer una antigua ciudad repleta de restos arqueológicos; Roma es el recuerdo de los Gladiadores luchando a vida o muerte en el Coliseo, las cuadrigas emprendiendo veloces carreras en el Circo Máximo, y también la visión de los sabios romanos paseando por el foro mientras conversaban sobre la democracia. Con más de 16 millones de turistas anuales, Roma es la tercera ciudad europea que más visitantes atrae, por detrás de Londres y París, con la que mantiene una intensa lucha por el puesto de la ciudad más romántica de Europa.',32,'viaje-italia'),(2,'Canada','60000','2021-07-19','2021-07-19','canada','Canadá es más que la belleza de sus montañas y costas: también ofrece una gastronomía extraordinaria, una cultura interesante y viajes por carretera entre naturaleza salvaje y alces.Naturaleza\nEl segundo país más grande del mundo posee montañas inmensas, glaciares refulgentes, bosques espectrales y playas aisladas que se extienden a lo largo de seis husos horarios. Tales escenarios ofrecen muchos momentos impresionantes, así como un elenco de grandes seres autóctonos: osos polares, grizzlies, ballenas y el favorito de todos, el alce.\nEstos parajes también son un fantástico patio de recreo donde abundan las aventuras: snowboard en las montañas de Whistler, surf en las olas de Nueva Escocia, kayak en el río South Nahanni (Territorios del Noroeste)… Y otras opciones como pasear por el Stanley Park de Vancouver o bañarse en las playas de arena rosada de la Isla del Principe Eduardo.',25,'viaje-canada'),(3,'Grecia','40000','2021-08-29','2021-09-15','grecia','Grecia, un país con una historia que es la nuestra. Un país donde el viajero es acogido como un viejo amigo que ha vuelto y como si nunca se hubiese marchado. Su bandera representa el azul intenso y transparente de sus aguas. Grecia y las islas griegas, cada una de ellas un mundo con sus paisajes y personalidad propia que nos hará sentir como los dioses del Olimpo. Grecia, significa un paraíso para el viajero que desea vivir la esencia de la civilización occidental. Grecia es vacaciones, cultura, arte, costumbres, mar, costas que se entremezclan con un paisaje inolvidable de aguas cristalinas y azules infinitos que perduran en la memoria de quien se acerca a conocerla. Con su peculiar arquitectura, su mitología, sus aguas increíbles y su amable hospitalidad. Cada isla un sueño, o mejor, un deseo hecho realidad.',18,'viaje-grecia'),(4,'Inglaterra','8000','2021-09-22','2021-10-03','londres','Inglaterra es uno de los países más reconocidos a nivel mundial, es el territorio más extenso y poblado entre los países que forman parte del Reino Unido, bordeada al norte por Escocia y al oeste por Gales, el mar del Norte, mar de Irlanda, océano Atlántico y el canal de la Mancha. Inglaterra posee como capital la ciudad de Londres, ésta es reconocida mundialmente por poseer el Palacio Bukingham, hogar de la Familia Real Británica. Entre mucho detalles que la hacen importante en el mundo, este país guarda una diversidad de lugares y atractivos turìsticos que reflejan en general los detalles históricos de su pueblo y su nación.',22,'viaje-inglaterra'),(5,'Rio de Janeiro','50000','2021-04-16','2021-04-25','rio','Río de Janeiro es considerado uno de los lugares mas bellos del planeta. Cuenta con más de 7 millones de habitantes a quienes se los conoce como «cariocas». En Río no solo se encuentra la gente que a diario disfruta de las playas, el sol y el mar, gran parte de su población habita las llamadas «favelas», especie de barrios situados en las laderas de la colinas que rodean la ciudad. La ciudad se divide en dos partes: una zona norte y una zona sur, por la Sierra da Carioca. En el Parque Nacional da Tijuca se encuentra emplazado el símbolo de la ciudad de Río: El Cristo Redentor, ubicado en la cima del Cerro Corcovado, a 750 mts. de altura y desde donde se logra una vista maravillosa de toda la ciudad.',23,'viaje-rio-de-janeiro'),(6,'Francia','75000','2021-04-03','2021-04-10','paris','Francia es un país de Europa que goza de gran popularidad como destino turístico, tiene entre sus ciudades grandes atracciones, siendo París, además de su ciudad capital, uno de los lugares más visitados. Francia se caracteriza por la oferta turística que presenta, la cual se enfoca en el arte, la historia y la gastronomía que mezclado con las distintas manifestaciones forman un conjunto de experiencias interesantes e inolvidables para el turista.',14,'viaje-francia');
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19  0:33:17
