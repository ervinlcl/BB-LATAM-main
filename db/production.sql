-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` text,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2018-06-27 00:00:00','2018-11-29 00:00:00');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Tecnología','2018-06-27 00:00:00','2018-06-27 00:00:00'),(3,'Gastronomia','2018-06-28 00:00:00','2018-06-28 00:00:00'),(4,'Global','2018-07-05 00:00:00','2018-07-05 00:00:00'),(5,'General','2018-11-19 00:00:00','2018-11-19 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnists`
--

DROP TABLE IF EXISTS `columnists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnists` (
  `id` int(11) DEFAULT NULL,
  `full_name` text,
  `socials` text,
  `semblanza` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `picture_file_name` text,
  `picture_content_type` text,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `facebook` text,
  `twitter` text,
  `linkedin` text,
  `instagram` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnists`
--

LOCK TABLES `columnists` WRITE;
/*!40000 ALTER TABLE `columnists` DISABLE KEYS */;
INSERT INTO `columnists` VALUES (2,'Francisco Javier Belgodere Hernández','https://www.facebook.com/Pacobh','                                        Mi objetivo es construir un mundo mejor, en el que todos tengamos acceso a oportunidades y contemos con las capacidades para aprovecharlas. Creo que la iniciativa privada debe asumir un papel relevante en el desarrollo de nuestras comunidades y que cada empresa debe contribuir brindando servicios que agreguen valor. Trabajo en Fintech porque considero que es indispensable para el crecimiento de las pequeñas y medianas empresas, así como para la democratización de los servicios financieros.                   \r\n                    \r\n                    ','2018-11-20 00:00:00','2018-11-30 00:00:00','0.jpg','image/jpeg',6926,'2018-11-20 00:00:00','https://www.facebook.com/Pacobh','','','');
/*!40000 ALTER TABLE `columnists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `descripcion` text,
  `address` text,
  `website` text,
  `facebook` text,
  `instagram` text,
  `twitter` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logo_file_name` text,
  `logo_content_type` text,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `linkedin` text,
  `telefono` text,
  `giro` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (4,'Bridge','Nos especializamos en empresas sociales y startups de los sectores: educación, Fintech, tecnología e internet, servicios, comercio electrónico e inmobiliario, a quienes les brindamos soluciones en materia de Gobierno Corporativo, Propiedad Intelectual y Asesoría Legal.','Paseo de la Reforma 300, piso 9, Col. Juárez, Del. Cuauhtemoc','www.bridgeconnet.com.mx','@bRIDGE','-','-','2018-10-24 00:00:00','2018-12-17 00:00:00','Bridge-logo-01.png','image/png',16594,'2018-11-21 00:00:00','','5584784466','Consultoría'),(6,'Leescúbrelo','Promovemos la lectura para mejorar la educación en México y América Latina ','Paseo de la Reforma 300, piso 9, Col. Juárez, Del. Cuauhtemoc','leescubrelo.com ','https://www.facebook.com/Leescubrelo/','','','2018-11-21 00:00:00','2018-12-05 00:00:00','squarelees.png','image/png',20841,'2018-12-05 00:00:00','','12097323','Organización'),(7,'MyVoga','Desarrollo de estrategias digitales, sitios web, aplicaciones, compra de medios, redes sociales y más.','Lope de Vega 108, Polanco, Ciudad de México ','http://myvoga.com/','','','','2018-12-05 00:00:00','2018-12-05 00:00:00','Logo_My_voga-01.png','image/png',20507,'2018-12-05 00:00:00','','0445543571631','Marketing Digital'),(8,'Tienditapp','Aplicación por la cual puedes pedir productos de la tiendita a domicilio.','Polanco, CDMX.','http://tienditapp.com/','','','','2018-12-05 00:00:00','2018-12-05 00:00:00','squarelogo.png','image/png',216793,'2018-12-05 00:00:00','','0445543571631','E-commerce');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletterusers`
--

DROP TABLE IF EXISTS `newsletterusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletterusers` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `email` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletterusers`
--

LOCK TABLES `newsletterusers` WRITE;
/*!40000 ALTER TABLE `newsletterusers` DISABLE KEYS */;
INSERT INTO `newsletterusers` VALUES (1,'Riyad Anabtawi','riyad.faek@gmail.com','2018-11-28 00:00:00','2018-11-28 00:00:00'),(2,'Glori stephani','gloristephani@gmail.com','2018-12-05 00:00:00','2018-12-05 00:00:00'),(3,'Riyad Anabtawi','riyad@myvoga.com','2018-12-05 00:00:00','2018-12-05 00:00:00'),(4,'ximena correu','ximena@tienditapp.com','2018-12-05 00:00:00','2018-12-05 00:00:00');
/*!40000 ALTER TABLE `newsletterusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) DEFAULT NULL,
  `company_name` text,
  `company_description` text,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logo_file_name` text,
  `logo_content_type` text,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `columnist_id` int(11) DEFAULT NULL,
  `picture_file_name` text,
  `picture_content_type` text,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (5,'5 lecturas que te recomiendo leer al iniciar tu camino como Emprendedor','En varias ocasiones he visto publicaciones similares a esta, en las que se mencionan los libros que “todo emprendedor debe leer”. Lo que busco en este breve artículo es recomendarte 5 libros que me hubiera gustado leer antes de iniciar mi camino como emprendedor, ya que estoy convencido que su impacto en ese momento me pudo evitar muchos dolores de cabeza. Cuando inicias tu camino como emprendedor sueles tener la sensación de que los días deberían de tener 30 horas o las semanas 9 días, que estás muy ocupado con planes de negocio, presentaciones, visitando posibles inversionistas y dirigiendo una nueva empresa, como para además tener que dedicar tiempo a leer. Ser emprendedor no es un trabajo, es un estilo de vida, y uno muy demandante, en el cual el conocimiento del entorno, del mercado y el estudio son piedra angular. La primera de mis recomendaciones es “El emprendedor solitario” de Michael Dremer, en este libro podrás conocer el tipo de problemas que acompañan día a día a los emprendedores, así como recibirás consejos muy prácticos de parte del autor, quien lo vivió en carne propia. Brinda un panorama muy realista de lo que implica ser emprendedor, de aquello que logra frustrarnos al iniciar un proyecto y de algunos errores comunes que cometemos al enfrentarnos a momentos de mucha presión. En lo personal me identifiqué con muchas situaciones que relata el autor y lo considero una gran herramienta para tener una visión muy general del camino que emprendes. Como segunda recomendación te propongo “Las 7 claves del éxito de Disney” de Tom Connellan, te será de mucha utilidad conocer algunos de los pilares de la cultura organizacional de Disney, que han sido fundamentales en el éxito de la empresa. Habrá muchos que piensen que es una distracción pensar en cultura organizacional cuando apenas han contratado a uno o dos colaboradores, te podría decir que ya vas tarde, la cultura debe construirse desde el primer día, debes vivirla tú, como emprendedor desde el inicio, para que logre permear en tu equipo de trabajo y construyas una empresa con visión ganadora. Cambiar una cultura organizacional cuando sacar adelante un negocio es sumamente desgastante, siempre será mejor empujar la cultura desde el inicio. El tercer libro que te quiero recomendar es “Creatividad S.A.” de Ed Catmull, será de gran inspiración ya que narra la historia de PIXAR desde su fundación. Además de inspirar, este libro también te ayudará a tener fe en el proceso y una gran orientación a la excelencia. Fue realmente estimulante conocer la forma en que se formó una de las empresas más exitosas que se han visto en la industria del entretenimiento y que cada una de sus películas han sido exitosas. Como cuarta recomendación te propongo “Mercedes-Benz, driven to delight” de Joseph A. Michelli, en él se cuenta la historia de como la empresa que por muchos años había tenido una orientación al producto, decidió tener un cambio radical y buscar ser la empresa número 1 en satisfacción del cliente. Este libro me parece excelente para iniciar un proyecto como emprendedor, ya que solemos enfocarnos mucho en el producto que lanzaremos al mercado, pero en ocasiones olvidamos al cliente en el proceso. La forma en la que se desenvuelve el libro resulta gran introducción para el tema de Experiencia del Cliente, que te será muy útil para contar con una solución, ya sea un producto o servicio, que satisfaga al cliente completamente. Mi última recomendación es muy especial, al iniciar proyectos nos preocupamos mucho por la planeación y en ocasiones elaboramos planes demasiados complejos, que difícilmente seguimos, por ello te invito a conocer “Las 4 Disciplinas de la Ejecución” de Sean Covey, que propone una metodología muy especial que bien podría formar parte esencial del sistema operativo de tu empresa. En lo personal he utilizado esta metodología en varias ocasiones para sacar a buen flote proyectos, de una forma simple, orientada en pequeños triunfos de cada miembro del equipo y la rendición de cuentas constantes.  Como podrás darte cuenta al concluir las 5 lecturas que te propongo, el enfoque que doy a mis recomendaciones está muy centrado en la satisfacción del cliente y tiene toda la lógica, ya que él es la razón de ser de toda empresa. Los productos o servicios que tienen éxito en el mercado son aquellos que realmente satisfacen una necesidad del cliente, para lograrlo es importante un enfoque obsesivo al cliente desde el diseño de nuestra solución, de lo contrario nos arriesgamos a contar con un producto hermoso, con excelentes acabados y los mejores materiales, pero que no resuelve ningún problema al cliente. Recuerda, si tu producto o servicio realmente resuelven un problema importante al cliente y le agregan valor a su vida, los problemas de tu empresa se limitarán a aspectos como precio, costo y volumen. Espero que al terminar cada una de mis recomendaciones, tengas la sensación de que fue tiempo bien invertido y que agrega valor a tu camino como emprendedor.',5,5,'2018-11-19 00:00:00','2018-11-20 00:00:00','','',0,'0000-00-00 00:00:00',4,2,'reading.jpg','image/jpeg',1458760,'2018-11-20 00:00:00'),(6,'Crea un sistema operativo para tu empresa','Todos nos sentimos familiarizados al concepto de sistema operativo y lo relacionamos de manera ágil con nuestras computadoras y Windows. Un sistema operativo es definido como un conjunto de órdenes y programas que controlan los procesos básicos de una computadora y permiten el funcionamiento de otros programas.  Las empresas al igual que las computadoras deben contar con una serie de programas o instrucciones básicas, que permitan o faciliten el desarrollo de las diversas tareas de manera eficiente, con un cierto orden y un lenguaje común, que haga posible la interacción de los distintos programas o unidades.  ¿A qué me refiere con programa operativo de la empresa? Justo a esas directrices básicas que permitirán que las funciones o tareas de las diversas áreas de la empresa se logren de la mejor manera posible al menor costo. El sistema operativo de la empresa debe estar integrado por cuatro puntos: (1) el lenguaje común, (2) el sistema de planeación, (3) la gestión de las personas y (4) la gestión de proyectos.  El contar con un lenguaje común es uno de los pilares, ya que contribuye a la claridad y evitar confusiones. Este punto no se refiere exclusivamente a crear una serie de definiciones comunes para determinados conceptos, sino debe considerar los canales y proceso de comunicación que deben ser utilizados por los miembros del equipo en distintas situaciones.  El segundo aspecto es el sistema de planeación, en el cual deben quedar claros los momentos, mecanismos y requisitos para la determinación de objetivos, así como el método que se utilizará para controlarlos. Uno de los puntos más relevantes en torno a la planeación es que las áreas deben alinear sus objetivos específicos a los objetivos de la organización. La forma en la que gestionamos a las personas dentro de la empresa, desde su programación, selección, reclutamiento, incorporación, desarrollo y promoción o separación, es uno de los pilares del éxito de toda organización, ya que las personas son quienes contribuyen o no al éxito de una empresa.  El último aspecto que debemos considerar al diseñar el sistema operativo de una empresa es la gestión de proyectos, que considera las herramientas y metodologías que la empresa pone a disposición de las personas para fomentar el éxito de sus iniciativas. Integrando un sistema operativo formal y conocido por los miembros de la organización fomentamos la certidumbre y reducimos el estrés de las personas, generando con ello un entorno propicio para el éxito individual y grupal. ',5,2,'2018-11-27 00:00:00','2018-11-27 00:00:00','','',0,'0000-00-00 00:00:00',4,2,'gestion-empresarial-erp-crm-bi-870x435.jpg','image/jpeg',77315,'2018-11-27 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180627205922'),('20180627210013'),('20180627210028'),('20180627210035'),('20180627210116'),('20180627210441'),('20180628163222'),('20180628163313'),('20180628163430'),('20180628163716'),('20181025194827'),('20181119181831'),('20181119185638'),('20181119185741'),('20181119185911'),('20181120211803'),('20181121223101'),('20181128175611'),('20181130164546');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` blob,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('users','1'),('categories','5'),('subcategories','5'),('companies','8'),('columnists','3'),('newsletterusers','4');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (2,'Desarrollo de Software','2018-06-27 00:00:00','2018-06-27 00:00:00'),(3,'Comida','2018-06-28 00:00:00','2018-06-28 00:00:00'),(4,'Paqueteria','2018-07-05 00:00:00','2018-07-05 00:00:00'),(5,'Lectura','2018-11-19 00:00:00','2018-11-19 00:00:00');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `email` text,
  `password_digest` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'faguilera@fundacioncaltia.org','$2a$10$.wlEZjZLgiaITl5bVMrsh.4Rkdm0H9lnFElj3..3soRfB19vhvaOK','2018-06-27 00:00:00','2018-07-06 00:00:00','F. Aguilera');
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

-- Dump completed on 2018-09-08 22:53:51
